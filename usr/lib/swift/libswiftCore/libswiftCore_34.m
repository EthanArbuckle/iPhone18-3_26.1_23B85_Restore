uint64_t BinaryFloatingPoint<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  static BinaryFloatingPoint<>._convert<A>(from:)(a7, a1, a2, a3, a4, a5, a6);
  v9 = *(*(a3 - 1) + 8);

  return v9(a1, a3);
}

uint64_t BinaryFloatingPoint<>.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static BinaryFloatingPoint<>._convert<A>(from:)(v10, a1, a2, a3, v11, v12, v13);
  (*(*(a3 - 1) + 8))(a1, a3);
  if (v14)
  {
    (*(v8 + 32))(a4, v10, a2);
    v15 = 0;
  }

  else
  {
    (*(v8 + 8))(v10, a2);
    v15 = 1;
  }

  return (*(v8 + 56))(a4, v15, 1, a2);
}

uint64_t _swift_stdlib_Hashable_isEqual_indirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(v7 + 16);
  v13(&v16 - v11);
  (v13)(v10, a2, a3);
  LOBYTE(a4) = (*(*(a4 + 8) + 8))(v12, v10, a3);
  v14 = *(v7 + 8);
  v14(v10, a3);
  v14(v12, a3);
  return a4 & 1;
}

uint64_t _swift_stdlib_Hashable_hashValue_indirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _ConcreteHashableBox._unbox<A>()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for _ConcreteHashableBox(255, v11, v12, v13);
  v17 = type metadata accessor for Optional(0, v14, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v27 - v19);
  (*(v8 + 16))(v10, v4, a1);
  v21 = swift_dynamicCast(v20, v10, a1, v14, 6uLL);
  v22 = *(*(v14 - 1) + 7);
  if (v21)
  {
    v23 = *(v14 - 1);
    v22(v20, 0, 1, v14);
    v24 = *(a2 - 8);
    (*(v24 + 16))(a3, v20, a2);
    (*(v23 + 8))(v20, v14);
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v22(v20, 1, 1, v14);
    (*(v18 + 8))(v20, v17);
    v24 = *(a2 - 8);
  }

  return (*(v24 + 56))(a3, v25, 1, a2);
}

uint64_t _ConcreteHashableBox._isEqual(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional(0, v6, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  v17 = *(a2 + 24);
  (*(v16 + 56))(v6, v17, v15, v16);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 2;
  }

  else
  {
    (*(v12 + 32))(v14, v11, v6);
    v19 = (*(*(v17 + 8) + 8))(v20[1], v14, v6);
    (*(v12 + 8))(v14, v6);
    return v19 & 1;
  }
}

uint64_t AnyHashable.init<A>(_:)@<X0>(uint64_t a1@<X0>, swift *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 1);
  result = MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == &type metadata for String)
  {
    v19 = *a1;
    v20 = *(a1 + 8);
    *(a4 + 24) = &unk_1EEEBDC08;
    *(a4 + 32) = &protocol witness table for _ConcreteHashableBox<A>;
    *a4 = v19;
    *(a4 + 8) = v20;
    return result;
  }

  (*(v8 + 16))(v11, a1, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
  if ((swift_dynamicCast(&v25, v11, a2, v13, 6) & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    outlined destroy of _HasContiguousBytes?(&v25, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_7;
  }

  v14 = *(&v26 + 1);
  v15 = v27;
  v16 = __swift_project_boxed_opaque_existential_0Tm(&v25, *(&v26 + 1));
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 16))(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v15[1])(&v22, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  if (!*(&v23 + 1))
  {
LABEL_7:
    outlined destroy of AnyHashable?(&v22);
    *(&v26 + 1) = &unk_1EEEBDCA0;
    v27 = &protocol witness table for _ConcreteHashableBox<A>;
    LOBYTE(v25) = 0;
    _swift_makeAnyHashableUpcastingToHashableBaseType(a1, &v25, a2, a3);
    goto LABEL_8;
  }

  v25 = v22;
  v26 = v23;
  v27 = v24;
LABEL_8:
  v21 = v26;
  *a4 = v25;
  *(a4 + 16) = v21;
  *(a4 + 32) = v27;
  return (*(v8 + 8))(a1, a2);
}

uint64_t AnyHashable.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t AnyHashable.hashValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 8))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0Tm(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t AnyHashable.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0Tm(v8, v9);
  (*(v6 + 32))(a1, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

Swift::Int __swiftcall AnyHashable._rawHashValue(seed:)(Swift::Int seed)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_0Tm(v9, v10);
  v7 = (*(v6 + 40))(seed, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 8))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0Tm(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyHashable(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0Tm(v8, v9);
  (*(v6 + 32))(a1, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashable(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_0Tm(v9, v10);
  v7 = (*(v6 + 40))(a1, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

uint64_t AnyHashable.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v5, v1, v2);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)(v5, v4, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v4[0];
}

uint64_t _sSS10describingSSx_tclufCypXp_Tt0g5(uint64_t a1)
{
  v28 = 0;
  v29 = 0xE000000000000000;
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
  v22 = v2;
  v21[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_0Tm(v21, v2);
  DynamicType = swift_getDynamicType(v3, v2, 1);
  isOptionalType = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (isOptionalType)
  {
    *&v24 = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(v21, &v24, v2, v6, 7uLL);
  }

  else
  {
    v27 = a1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v24, &v27, v2, v11, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v24, v21);
      v12 = v22;
      v13 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      (*(v13 + 8))(&v28, &type metadata for String, &protocol witness table for String, v12, v13);
      goto LABEL_7;
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    outlined destroy of _HasContiguousBytes?(&v24, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v27 = a1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v24, &v27, v2, v15, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v24, v21);
      v16 = v22;
      v17 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      v9 = (*(v17 + 8))(v16, v17);
      goto LABEL_4;
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    outlined destroy of _HasContiguousBytes?(&v24, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v27 = a1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    if (!swift_dynamicCast(&v24, &v27, v2, v18, 6uLL))
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      outlined destroy of _HasContiguousBytes?(&v24, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v25 + 1) = v2;
      *&v24 = a1;
      Mirror.init(reflecting:)(&v24, v21);
      v19 = v21[1];
      v20 = v23;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(&v30, v21, &v28, 0, v2, &type metadata for String, &protocol witness table for String);
      v20;
      v19;
      return v28;
    }

    _ss9CodingKey_pWOb_0(&v24, v21);
  }

  v7 = v22;
  v8 = v23;
  __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  v9 = (*(v8 + 8))(v7, v8);
LABEL_4:
  v28 = v9;
  v29 = v10;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v28;
}

unint64_t _sSS10describingSSx_tclufCSv_Tt0g5Tm(Swift::UInt64 a1, swift::SwiftError *a2, uint64_t a3)
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  v24 = a2;
  v23[0] = a1;
  v6 = __swift_project_boxed_opaque_existential_0Tm(v23, a2);
  DynamicType = swift_getDynamicType(v6, a2, 1);
  isOptionalType = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (isOptionalType)
  {
    return specialized _Pointer.debugDescription.getter(a1);
  }

  v22 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v19, &v22, a2, v10, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v19, v23);
    v11 = v24;
    v12 = v25;
    __swift_project_boxed_opaque_existential_0Tm(v23, v24);
    (*(v12 + 8))(v26, &type metadata for String, &protocol witness table for String, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return v26[0];
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    outlined destroy of _HasContiguousBytes?(&v19, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v22 = a1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v19, &v22, a2, v13, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v19, v23);
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_0Tm(v23, v24);
      v16 = (*(v15 + 8))(v14, v15);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      outlined destroy of _HasContiguousBytes?(&v19, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v24 = a2;
      v25 = a3;
      v23[0] = a1;
      v17 = __swift_project_boxed_opaque_existential_0Tm(v23, a2);
      v16 = specialized _Pointer.debugDescription.getter(*v17);
    }

    v18 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return v18;
  }
}

uint64_t String.init<A>(describing:)(uint64_t a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v42 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v41 - v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v41 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v41 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v41 - v16);
  v50 = 0;
  v51 = 0xE000000000000000;
  v45 = v18;
  v19 = __swift_allocate_boxed_opaque_existential_0Tm(&v43);
  v20 = *(v4 + 16);
  v20(v19, a1, a2);
  v21 = v45;
  v22 = __swift_project_boxed_opaque_existential_0Tm(&v43, v45);
  DynamicType = swift_getDynamicType(v22, v21, 1);
  LODWORD(v21) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  if (v21)
  {
    (*(v4 + 32))(v17, a1, a2);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v43, v17, a2, v24, 7uLL);
  }

  else
  {
    v20(v15, a1, a2);
    if (swift_dynamicCast(&v43, v15, a2, &type metadata for String, 6uLL))
    {
      (*(v4 + 8))(a1, a2);
      v50 = v43;
      v51 = v44;
      return v50;
    }

    v20(v12, a1, a2);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v47, v12, a2, v30, 6uLL))
    {
      (*(v4 + 8))(a1, a2);
      _ss9CodingKey_pWOb_0(&v47, &v43);
      v31 = v45;
      v32 = v46;
      __swift_project_boxed_opaque_existential_0Tm(&v43, v45);
      (*(v32 + 8))(&v50, &type metadata for String, &protocol witness table for String, v31, v32);
      goto LABEL_5;
    }

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    outlined destroy of _HasContiguousBytes?(&v47, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v20(v9, a1, a2);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v47, v9, a2, v33, 6uLL))
    {
      (*(v4 + 8))(a1, a2);
      _ss9CodingKey_pWOb_0(&v47, &v43);
      v34 = v45;
      v35 = v46;
      __swift_project_boxed_opaque_existential_0Tm(&v43, v45);
      v27 = (*(v35 + 8))(v34, v35);
      goto LABEL_4;
    }

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    outlined destroy of _HasContiguousBytes?(&v47, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v36 = v42;
    v20(v42, a1, a2);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    if (!swift_dynamicCast(&v47, v36, a2, v37, 6uLL))
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      outlined destroy of _HasContiguousBytes?(&v47, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v48 + 1) = a2;
      v38 = __swift_allocate_boxed_opaque_existential_0Tm(&v47);
      v20(v38, a1, a2);
      Mirror.init(reflecting:)(&v47, &v43);
      v39 = v44;
      v40 = v46;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v43, &v50, 0, a2, &type metadata for String, &protocol witness table for String);
      (*(v4 + 8))(a1, a2);
      v40;
      v39;
      return v50;
    }

    (*(v4 + 8))(a1, a2);
    _ss9CodingKey_pWOb_0(&v47, &v43);
  }

  v25 = v45;
  v26 = v46;
  __swift_project_boxed_opaque_existential_0Tm(&v43, v45);
  v27 = (*(v26 + 8))(v25, v26);
LABEL_4:
  v50 = v27;
  v51 = v28;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  return v50;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v5, v1, v2);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)(v5, v4, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v4[0];
}

unint64_t AnyHashable.debugDescription.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v11, v1, v2);
  v9 = 0;
  v10 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v11, &v9, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v3 = v10;
  v4 = specialized static String.+ infix(_:_:)(0x6168736148796E41uLL, 0xEC00000028656C62, v9, v10);
  v6 = v5;
  v3;
  v7 = specialized static String.+ infix(_:_:)(v4, v6, 0x29uLL, 0xE100000000000000);
  v6;
  return v7;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v11, v1, v2);
  v9 = 0;
  v10 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v11, &v9, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v3 = v10;
  v4 = specialized static String.+ infix(_:_:)(0x6168736148796E41uLL, 0xEC00000028656C62, v9, v10);
  v6 = v5;
  v3;
  v7 = specialized static String.+ infix(_:_:)(v4, v6, 0x29uLL, 0xE100000000000000);
  v6;
  return v7;
}

uint64_t AnyHashable.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AnyHashable(v1, v22);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v4 = swift_allocObject(v3, 0x50, 7uLL);
  *(v4 + 1) = xmmword_18071DB30;
  v4[4] = 0x65756C6176;
  v4[5] = 0xE500000000000000;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v5);
  (*(v6 + 48))(v5, v6);
  v20[0] = 0uLL;
  v7 = static Mirror._superclassIterator<A>(_:_:)(v22, v20, &type metadata for AnyHashable);
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v11 = swift_allocObject(v10, 0x48, 7uLL);
  v11[6] = v4;
  v11[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v11[8] = 0;
  v12 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v13 = swift_allocObject(v12, 0x18, 7uLL);
  v13[2] = 0;
  v14 = v4[2];
  v15 = swift_allocObject(v12, 0x18, 7uLL);
  v15[2] = v14;
  v11[2] = v13;
  v11[3] = &protocol witness table for _IndexBox<A>;
  v11[4] = v15;
  v11[5] = &protocol witness table for _IndexBox<A>;
  v20[0] = v22[0];
  v20[1] = v22[1];
  v21 = v23;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, v20, &type metadata for AnyHashable, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a1 = &type metadata for AnyHashable;
  *(a1 + 8) = v11;
  *(a1 + 16) = 9;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v18;
  return result;
}

__n128 protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AnyHashable@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

uint64_t _swift_makeAnyHashableUsingDefaultRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for _ConcreteHashableBox(0, a3, a4, a4);
  v11 = &protocol witness table for _ConcreteHashableBox<A>;
  v7 = __swift_allocate_boxed_opaque_existential_0Tm(&v9);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  return outlined assign with take of AnyHashable(&v9, a2);
}

double _swift_convertToAnyHashableIndirect(uint64_t a1, uint64_t a2, swift *a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyHashable.init<A>(_:)(v8, a3, a4, v13);
  result = *v13;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  *(a2 + 32) = v14;
  return result;
}

uint64_t _swift_anyHashableDownCastConditionalIndirect(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25[-1] - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyHashable(a1, v26);
  v15 = v27;
  v16 = v28;
  __swift_project_boxed_opaque_existential_0Tm(v26, v27);
  if ((*(v16 + 64))(a2, a3, v15, v16))
  {
    v17 = 1;
  }

  else
  {
    v18 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_0Tm(v26, v27);
    (*(v19 + 48))(v25, v18, v19);
    v25[0] = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v25, byte_1EEEAC6F8);
    v20 = swift_dynamicCast(v11, v25, &unk_1EEEAC710, a3, 6);
    v21 = *(v12 + 56);
    if (v20)
    {
      v17 = 1;
      v21(v11, 0, 1, a3);
      v22 = *(v12 + 32);
      v22(v14, v11, a3);
      v22(a2, v14, a3);
    }

    else
    {
      v21(v11, 1, 1, a3);
      (*(v8 + 8))(v11, v7);
      v17 = 0;
    }
  }

  outlined destroy of AnyHashable(v26);
  return v17;
}

uint64_t _sSV4load14fromByteOffset2asxSi_xmtlFs13KeyPathBufferV6HeaderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (((a2 + a1) & 3) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a2 + a1);
}

uint64_t _sSV4load14fromByteOffset2asxSi_xmtlFSVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (((a2 + a1) & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a2 + a1);
}

uint64_t UnsafeRawPointer.load<A>(fromByteOffset:as:)@<X0>(char a1@<W0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  return UnsafeRawPointer.load<A>(fromByteOffset:as:)(a1, a2, a3, a4);
}

{
  v5 = *(a3 - 8);
  if ((*(v5 + 80) & (a2 + a1)) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(v5 + 16);

  return v6(a4);
}

uint64_t UnsafeRawBufferPointer.count.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a2 - a1;
  }

  else
  {
    return 0;
  }
}

unint64_t static UInt.- infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t FixedWidthInteger.init(littleEndian:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

{
  return FixedWidthInteger.init(littleEndian:)(a1, a2, a3);
}

double Hasher.init(_rawSeed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1 ^ 0x736F6D6570736575;
  *(a3 + 16) = a2 ^ 0x646F72616E646F6DLL;
  *(a3 + 24) = a1 ^ 0x6C7967656E657261;
  *(a3 + 32) = a2 ^ 0x7465646279746573;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  return result;
}

unint64_t Hasher._combine(_:)(unint64_t result)
{
  v2 = HIBYTE(*v1) & 7;
  v3 = *v1 + 0x800000000000000;
  if (v2)
  {
    v3 = (result >> ((-8 * v2) & 0x38)) | ((*v1 & 0xFF00000000000000) + 0x800000000000000);
    v4 = (result << (8 * v2)) | *v1 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = result;
  }

  v5 = v1[4] ^ v4;
  v6 = v1[2];
  v7 = v6 + v1[1];
  v8 = v7 ^ __ROR8__(v6, 51);
  v9 = v1[3] + v5;
  v10 = __ROR8__(v5, 48);
  v11 = (v9 ^ v10) + __ROR8__(v7, 32);
  v1[4] = v11 ^ __ROR8__(v9 ^ v10, 43);
  v1[2] = (v9 + v8) ^ __ROR8__(v8, 47);
  v1[3] = __ROR8__(v9 + v8, 32);
  *v1 = v3;
  v1[1] = v11 ^ v4;
  return result;
}

Swift::Void __swiftcall Hasher._combine(_:)(Swift::UInt32 a1)
{
  v2 = *v1;
  v3 = HIBYTE(*v1) & 7;
  v4 = 8 * v3;
  if (v3 > 3)
  {
    v5 = (a1 << v4) | v2 & 0xFFFFFFFFFFFFFFLL;
    v6 = v2 & 0xFF00000000000000;
    v7 = a1 >> ((-8 * v3) & 0x38);
    if (v3 == 4)
    {
      v7 = 0;
    }

    v8 = (v6 | v7) + 0x400000000000000;
    v9 = v1[4] ^ v5;
    v10 = v1[2];
    v11 = v10 + v1[1];
    v12 = v11 ^ __ROR8__(v10, 51);
    v13 = v1[3] + v9;
    v14 = v13 ^ __ROR8__(v9, 48);
    v15 = v14 + __ROR8__(v11, 32);
    v16 = v13 + v12;
    v1[3] = __ROR8__(v16, 32);
    v1[4] = v15 ^ __ROR8__(v14, 43);
    v1[1] = v15 ^ v5;
    v1[2] = v16 ^ __ROR8__(v12, 47);
    *v1 = v8;
  }

  else
  {
    *v1 = ((a1 << v4) | v2) + 0x400000000000000;
  }
}

Swift::Void __swiftcall Hasher._combine(_:)(Swift::UInt16 a1)
{
  v2 = *v1;
  v3 = HIBYTE(*v1) & 7;
  v4 = 8 * v3;
  if (v3 > 5)
  {
    v5 = (a1 << v4) | v2 & 0xFFFFFFFFFFFFFFLL;
    v6 = v2 & 0xFF00000000000000;
    v7 = a1 >> ((-8 * v3) & 0x38);
    if (v3 == 6)
    {
      v7 = 0;
    }

    v8 = (v6 | v7) + 0x200000000000000;
    v9 = v1[4] ^ v5;
    v10 = v1[2];
    v11 = v10 + v1[1];
    v12 = v11 ^ __ROR8__(v10, 51);
    v13 = v1[3] + v9;
    v14 = v13 ^ __ROR8__(v9, 48);
    v15 = v14 + __ROR8__(v11, 32);
    v16 = v13 + v12;
    v1[3] = __ROR8__(v16, 32);
    v1[4] = v15 ^ __ROR8__(v14, 43);
    v1[1] = v15 ^ v5;
    v1[2] = v16 ^ __ROR8__(v12, 47);
    *v1 = v8;
  }

  else
  {
    *v1 = ((a1 << v4) | v2) + 0x200000000000000;
  }
}

Swift::Void __swiftcall Hasher._combine(_:)(Swift::UInt8 a1)
{
  v2 = *v1;
  if ((~*v1 & 0x700000000000000) != 0)
  {
    v3 = (a1 << ((v2 >> 53) & 0x38)) | v2;
  }

  else
  {
    v3 = v2 & 0xFF00000000000000;
    v4 = v2 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    v5 = v1[4] ^ v4;
    v6 = v1[2];
    v7 = v6 + v1[1];
    v8 = v7 ^ __ROR8__(v6, 51);
    v9 = v1[3] + v5;
    v10 = v9 ^ __ROR8__(v5, 48);
    v11 = v10 + __ROR8__(v7, 32);
    v12 = v9 + v8;
    v1[3] = __ROR8__(v12, 32);
    v1[4] = v11 ^ __ROR8__(v10, 43);
    v1[1] = v11 ^ v4;
    v1[2] = v12 ^ __ROR8__(v8, 47);
  }

  *v1 = v3 + 0x100000000000000;
}

Swift::Void __swiftcall Hasher._combine(bytes:count:)(Swift::UInt64 bytes, Swift::Int count)
{
  v3 = *v2;
  v4 = HIBYTE(*v2) & 7;
  v5 = v4 + count;
  if (__CFADD__(v4, count))
  {
    __break(1u);
  }

  else
  {
    v6 = 8 * v4;
    if (v5 > 7)
    {
      v7 = HIBYTE(v3);
      v8 = (bytes << v6) | v3 & 0xFFFFFFFFFFFFFFLL;
      v9 = (v7 + count);
      v10 = bytes >> (-v6 & 0x38);
      if (v5 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v12 = v11 | (v9 << 56);
      v13 = v2[4] ^ v8;
      v14 = v2[2];
      v15 = v14 + v2[1];
      v16 = v15 ^ __ROR8__(v14, 51);
      v17 = v2[3] + v13;
      v18 = __ROR8__(v13, 48);
      v19 = (v17 ^ v18) + __ROR8__(v15, 32);
      v20 = v19 ^ __ROR8__(v17 ^ v18, 43);
      v21 = v17 + v16;
      v2[3] = __ROR8__(v21, 32);
      v2[4] = v20;
      v2[1] = v19 ^ v8;
      v2[2] = v21 ^ __ROR8__(v16, 47);
      *v2 = v12;
    }

    else
    {
      *v2 = ((bytes << v6) | v3) + (count << 56);
    }
  }
}

Swift::Void __swiftcall Hasher.combine(bytes:)(Swift::UnsafeRawBufferPointer bytes)
{
  if (!bytes._position.value._rawValue)
  {
    return;
  }

  v2 = bytes._end.value._rawValue - bytes._position.value._rawValue;
  if (bytes._end.value._rawValue - bytes._position.value._rawValue < 1)
  {
    return;
  }

  if (bytes._position.value._rawValue >= 0xFFFFFFFFFFFFFFF8)
  {
    __break(1u);
    goto LABEL_61;
  }

  v3 = ((bytes._position.value._rawValue + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 - bytes._position.value._rawValue;
  if (v3 < bytes._position.value._rawValue)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (v4 >= v2)
  {
    v5 = bytes._end.value._rawValue - bytes._position.value._rawValue;
  }

  else
  {
    v5 = v3 - bytes._position.value._rawValue;
  }

  if (!v4)
  {
    goto LABEL_30;
  }

  v6 = 0;
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 != 6)
      {
        v6 = *(bytes._position.value._rawValue + 6) << 48;
      }

      v6 |= *(bytes._position.value._rawValue + 5) << 40;
    }

    else if (v5 == 4)
    {
      goto LABEL_21;
    }

    v6 |= *(bytes._position.value._rawValue + 4) << 32;
LABEL_21:
    v6 |= *(bytes._position.value._rawValue + 3) << 24;
LABEL_22:
    v6 |= *(bytes._position.value._rawValue + 2) << 16;
LABEL_23:
    v6 |= *(bytes._position.value._rawValue + 1) << 8;
    goto LABEL_24;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  v7 = v6 | *bytes._position.value._rawValue;
  v8 = *v1;
  v9 = HIBYTE(*v1) & 7;
  v10 = 8 * v9;
  v11 = v9 + v5;
  if (v11 > 7)
  {
    v13 = HIBYTE(v8);
    v14 = (v7 << v10) | v8 & 0xFFFFFFFFFFFFFFLL;
    v15 = (v13 + v5);
    v16 = v7 >> (-v10 & 0x38);
    if (v11 == 8)
    {
      v16 = 0;
    }

    v12 = v16 | (v15 << 56);
    v17 = v1[4] ^ v14;
    v18 = v1[2];
    v19 = v18 + v1[1];
    v20 = v19 ^ __ROR8__(v18, 51);
    v21 = v1[3] + v17;
    v22 = v21 ^ __ROR8__(v17, 48);
    v23 = v22 + __ROR8__(v19, 32);
    v24 = v21 + v20;
    v1[3] = __ROR8__(v24, 32);
    v1[4] = v23 ^ __ROR8__(v22, 43);
    v1[1] = v23 ^ v14;
    v1[2] = v24 ^ __ROR8__(v20, 47);
  }

  else
  {
    v12 = ((v7 << v10) | v8) + (v5 << 56);
  }

  *v1 = v12;
  bytes._position.value._rawValue = bytes._position.value._rawValue + v5;
  v2 -= v5;
LABEL_30:
  if (v2 < 8)
  {
    v25 = v2;
    if (v2 < 1)
    {
      return;
    }

LABEL_39:
    v44 = 0;
    if (v25 <= 3)
    {
      if (v25 == 1)
      {
        goto LABEL_53;
      }

      if (v25 == 2)
      {
LABEL_52:
        v44 |= *(bytes._position.value._rawValue + 1) << 8;
LABEL_53:
        v45 = v44 | *bytes._position.value._rawValue;
        v46 = *v1;
        v47 = HIBYTE(*v1) & 7;
        v48 = 8 * v47;
        v49 = v47 + v25;
        if (v49 > 7)
        {
          v50 = HIBYTE(v46);
          v51 = (v45 << v48) | v46 & 0xFFFFFFFFFFFFFFLL;
          v52 = (v50 + v25);
          v53 = v45 >> (-v48 & 0x38);
          if (v49 == 8)
          {
            v53 = 0;
          }

          v54 = v53 | (v52 << 56);
          v55 = v1[4] ^ v51;
          v56 = v1[2];
          v57 = v56 + v1[1];
          v58 = v57 ^ __ROR8__(v56, 51);
          v59 = v1[3] + v55;
          v60 = __ROR8__(v55, 48);
          v61 = (v59 ^ v60) + __ROR8__(v57, 32);
          v1[4] = v61 ^ __ROR8__(v59 ^ v60, 43);
          v1[2] = (v59 + v58) ^ __ROR8__(v58, 47);
          v1[3] = __ROR8__(v59 + v58, 32);
          *v1 = v54;
          v1[1] = v61 ^ v51;
        }

        else
        {
          *v1 = ((v45 << v48) | v46) + (v25 << 56);
        }

        return;
      }

LABEL_51:
      v44 |= *(bytes._position.value._rawValue + 2) << 16;
      goto LABEL_52;
    }

    if (v25 > 5)
    {
      if (v25 != 6)
      {
        v44 = *(bytes._position.value._rawValue + 6) << 48;
      }

      v44 |= *(bytes._position.value._rawValue + 5) << 40;
    }

    else if (v25 == 4)
    {
      goto LABEL_50;
    }

    v44 |= *(bytes._position.value._rawValue + 4) << 32;
LABEL_50:
    v44 |= *(bytes._position.value._rawValue + 3) << 24;
    goto LABEL_51;
  }

  v27 = v1[3];
  v26 = v1[4];
  v28 = *v1;
  v29 = v1[1];
  v30 = bytes._position.value._rawValue & 7;
  v31 = v1[2];
  do
  {
    if (v30)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v33 = *bytes._position.value._rawValue;
    bytes._position.value._rawValue = bytes._position.value._rawValue + 8;
    rawValue = v33;
    v34 = HIBYTE(v28) & 7;
    bytes._end.value._rawValue = ((v33 << (8 * v34)) | v28 & 0xFFFFFFFFFFFFFFLL);
    v35 = (v33 >> ((-8 * v34) & 0x38)) | ((v28 & 0xFF00000000000000) + 0x800000000000000);
    v28 += 0x800000000000000;
    if (v34)
    {
      rawValue = bytes._end.value._rawValue;
      v28 = v35;
    }

    v36 = rawValue ^ v26;
    v37 = v31 + v29;
    v38 = v37 ^ __ROR8__(v31, 51);
    v39 = v36 + v27;
    v40 = __ROR8__(v36, 48);
    v41 = (v39 ^ v40) + __ROR8__(v37, 32);
    v26 = v41 ^ __ROR8__(v39 ^ v40, 43);
    v42 = v39 + v38;
    v27 = __ROR8__(v39 + v38, 32);
    v31 = v42 ^ __ROR8__(v38, 47);
    v29 = v41 ^ rawValue;
    v25 = v2 - 8;
    v43 = v2 > 0xF;
    v2 -= 8;
  }

  while (v43);
  v1[2] = v31;
  v1[3] = v27;
  v1[4] = v26;
  *v1 = v28;
  v1[1] = v29;
  if (v25 >= 1)
  {
    goto LABEL_39;
  }
}

uint64_t static Hasher._hash(seed:bytes:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  v4 = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x6C7967656E657261;
  v5 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v6 = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575;
  if (!a2 || (v7 = a3 - a2, (a3 - a2) < 1))
  {
    v13 = 0;
    goto LABEL_16;
  }

  if (a2 >= 0xFFFFFFFFFFFFFFF8)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 >= a2;
  v10 = v8 - a2;
  if (!v9)
  {
    goto LABEL_63;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (v10 >= v7)
  {
    v11 = a3 - a2;
  }

  else
  {
    v11 = v10;
  }

  if (v10)
  {
    v12 = 0;
    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        goto LABEL_33;
      }

      if (v11 == 2)
      {
LABEL_32:
        v12 |= *(a2 + 1) << 8;
LABEL_33:
        v13 = v12 | *a2 | (v11 << 56);
        v7 -= v11;
        a2 += v11;
        if (v7 < 8)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }

LABEL_31:
      v12 |= *(a2 + 2) << 16;
      goto LABEL_32;
    }

    if (v11 > 5)
    {
      if (v11 != 6)
      {
        v12 = *(a2 + 6) << 48;
      }

      v12 |= *(a2 + 5) << 40;
    }

    else if (v11 == 4)
    {
      goto LABEL_30;
    }

    v12 |= *(a2 + 4) << 32;
LABEL_30:
    v12 |= *(a2 + 3) << 24;
    goto LABEL_31;
  }

  if (v7 >= 8)
  {
    v13 = 0;
LABEL_34:
    v43 = a2 & 7;
    do
    {
      if (v43)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v45 = *a2;
      a2 += 8;
      v44 = v45;
      v46 = HIBYTE(v13) & 7;
      v47 = (v45 << (8 * v46)) | v13 & 0xFFFFFFFFFFFFFFLL;
      v48 = (v45 >> ((-8 * v46) & 0x38)) | ((v13 & 0xFF00000000000000) + 0x800000000000000);
      v13 += 0x800000000000000;
      if (v46)
      {
        v44 = v47;
        v13 = v48;
      }

      v7 -= 8;
      v49 = v5 + v6;
      v50 = v44 ^ v3;
      v51 = v50 + v4;
      v52 = v49 ^ __ROR8__(v5, 51);
      v53 = v50 + v4 + v52;
      v4 = __ROR8__(v53, 32);
      v54 = v51 ^ __ROR8__(v50, 48);
      v55 = v54 + __ROR8__(v49, 32);
      v6 = v55 ^ v44;
      v5 = v53 ^ __ROR8__(v52, 47);
      v3 = v55 ^ __ROR8__(v54, 43);
    }

    while (v7 >= 8);
LABEL_39:
    if (v7 < 1)
    {
      goto LABEL_16;
    }

    v42 = 0;
    if (v7 > 3)
    {
      if (v7 <= 5)
      {
LABEL_42:
        if (v7 == 4)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (v7 != 6)
      {
        v42 = v13;
LABEL_49:
        v13 = v42;
        v42 = *(a2 + 6) << 48;
        v7 = 7;
      }

LABEL_50:
      v42 |= *(a2 + 5) << 40;
LABEL_51:
      v42 |= *(a2 + 4) << 32;
LABEL_52:
      v42 |= *(a2 + 3) << 24;
LABEL_53:
      v42 |= *(a2 + 2) << 16;
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  v42 = 0;
  v13 = 0;
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      goto LABEL_42;
    }

    if (v7 != 6)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_44:
  if (v7 == 1)
  {
    goto LABEL_55;
  }

  if (v7 != 2)
  {
    goto LABEL_53;
  }

LABEL_54:
  v42 |= *(a2 + 1) << 8;
LABEL_55:
  v56 = v42 | *a2;
  v57 = HIBYTE(v13) & 7;
  v58 = 8 * v57;
  v59 = v57 + v7;
  if (v59 > 7)
  {
    v60 = v56 << v58;
    v61 = v56 >> (-v58 & 0x38);
    v62 = v60 | v13 & 0xFFFFFFFFFFFFFFLL;
    v63 = HIBYTE(v13) + v7;
    if (v59 == 8)
    {
      v64 = 0;
    }

    else
    {
      v64 = v61;
    }

    v13 = v64 | (v63 << 56);
    v65 = v62 ^ v3;
    v66 = v6 + v5;
    v67 = v66 ^ __ROR8__(v5, 51);
    v68 = v65 + v4;
    v69 = __ROR8__(v65, 48);
    v70 = (v68 ^ v69) + __ROR8__(v66, 32);
    v3 = v70 ^ __ROR8__(v68 ^ v69, 43);
    v71 = v68 + v67;
    v5 = v71 ^ __ROR8__(v67, 47);
    v6 = v70 ^ v62;
    v4 = __ROR8__(v71, 32);
  }

  else
  {
    v13 = ((v56 << v58) | v13) + (v7 << 56);
  }

LABEL_16:
  v14 = v13 ^ v3;
  v15 = v6 + v5;
  v16 = v15 ^ __ROR8__(v5, 51);
  v17 = v14 + v4;
  v18 = __ROR8__(v14, 48);
  v19 = (v17 ^ v18) + __ROR8__(v15, 32);
  v20 = v19 ^ __ROR8__(v17 ^ v18, 43);
  v21 = v17 + v16;
  v22 = v21 ^ __ROR8__(v16, 47);
  v23 = (v19 ^ v13) + v22;
  v24 = v23 ^ __ROR8__(v22, 51);
  v25 = (__ROR8__(v21, 32) ^ 0xFFLL) + v20;
  v26 = __ROR8__(v20, 48);
  v27 = __ROR8__(v23, 32) + (v25 ^ v26);
  v28 = v27 ^ __ROR8__(v25 ^ v26, 43);
  v29 = v24 + v25;
  v30 = v29 ^ __ROR8__(v24, 47);
  v31 = v30 + v27;
  v32 = v31 ^ __ROR8__(v30, 51);
  v33 = __ROR8__(v29, 32) + v28;
  v34 = __ROR8__(v28, 48);
  v35 = __ROR8__(v31, 32) + (v33 ^ v34);
  v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
  v37 = v32 + v33;
  v38 = v37 ^ __ROR8__(v32, 47);
  v39 = (v38 + v35) ^ __ROR8__(v38, 51);
  v40 = __ROR8__(v37, 32) + v36;
  return __ROR8__(v40 ^ __ROR8__(v36, 48), 43) ^ __ROR8__(v39, 47) ^ __ROR8__(v39 + v40, 32) ^ (v39 + v40);
}

char *static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)(uint64_t a1, void (*a2)(void))
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject(v2, (((*(*(*(v2 + 88) - 8) + 80) + *(v2 + 48)) & ~*(*(*(v2 + 88) - 8) + 80)) + *(*(*(v2 + 88) - 8) + 72) * v7), *(*(*(v2 + 88) - 8) + 80) | *(v2 + 52));
  a2();
  if (v3)
  {
    v10;
  }

  else
  {
    (*(v6 + 32))(&v10[*(*v10 + 96)], v9, v5);
  }

  return v10;
}

void __BridgingHashBuffer.deinit()
{
  v1 = 0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *v3;
  if (v2 + 1 < 64)
  {
    v5 = ~(-1 << (v2 + 1));
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v4;
  v7 = (v2 + 64) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_11:
      swift_unknownObjectRelease(*(v0 + 40 + 8 * (v8 | (v1 << 6))));
    }

    while (v6);
  }

  v9 = v1;
  while (1)
  {
    v1 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v1 >= v7)
    {
      swift_unknownObjectRelease(*(v0 + 16));
      return;
    }

    v10 = v3[v1];
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void __BridgingHashBuffer.__deallocating_deinit()
{
  __BridgingHashBuffer.deinit();

  swift_deallocClassInstance(v0);
}

void __BridgingHashBuffer.__allocating_init(_doNotCallMe:)()
{
  inited = swift_initStackObject(v0, v2);
  inited;
  __break(1u);
}

Swift::Int __swiftcall Int.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -9.22337204e18 || a1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t specialized FixedWidthInteger._binaryLogarithm()(int a1)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 16 - (__clz(a1 << 16) + 1);
}

{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 8 - (__clz(a1 << 24) + 1);
}

{
  if (a1 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 16 - (__clz(a1 << 16) + 1);
}

{
  if (a1 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 8 - (__clz(a1 << 24) + 1);
}

uint64_t specialized FixedWidthInteger._binaryLogarithm()(unsigned int a1)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 32 - (__clz(a1) + 1);
}

unint64_t specialized FixedWidthInteger._binaryLogarithm()(unint64_t a1, unint64_t a2)
{
  if (!(a2 | a1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = __clz(a2);
  v3 = __clz(a1) + 64;
  if (!a2)
  {
    v2 = v3;
  }

  return 127 - v2;
}

{
  if (!(a1 | a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = __clz(a2);
  v3 = __clz(a1) + 64;
  if (!a2)
  {
    v2 = v3;
  }

  return 127 - v2;
}

{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = __clz(a2);
  v3 = __clz(a1) + 64;
  if (!a2)
  {
    v2 = v3;
  }

  return 127 - v2;
}

unint64_t specialized FixedWidthInteger._binaryLogarithm()(unint64_t a1, int64_t a2)
{
  v2 = a1 != 0;
  if (a2)
  {
    v2 = a2 > 0;
  }

  if (!v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = __clz(a2);
  v4 = __clz(a1) + 64;
  if (!a2)
  {
    v3 = v4;
  }

  return 127 - v3;
}

uint64_t specialized FixedWidthInteger._binaryLogarithm()(signed int a1)
{
  if (a1 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 32 - (__clz(a1) + 1);
}

Swift::Int __swiftcall FixedWidthInteger._binaryLogarithm()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 1);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 8);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v4, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v14, v4, v10);
  v16 = (*(*(*(v9 + 32) + 8) + 40))(v2, v7, v4);
  (*(v5 + 8))(v7, v4);
  if ((v16 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = (*(v3 + 56))(v4, v3);
  return v17 + ~(*(v3 + 152))(v4, v3);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _HashTable.Index(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1 == *a2;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _HashTable.Index(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1 < *a2;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _HashTable.Index(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a2 >= *a1;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _HashTable.Index(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1 >= *a2;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _HashTable.Index(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a2 < *a1;
}

void protocol witness for IteratorProtocol.next() in conformance _HashTable.Iterator(uint64_t a1@<X8>)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = 0;
    v4 = __clz(__rbit64(v2));
    v1[3] = (v2 - 1) & v2;
    v5 = v1[2];
LABEL_8:
    v9 = v4 | (v5 << 6);
LABEL_9:
    *a1 = v9;
    *(a1 + 8) = v3;
  }

  else
  {
    v6 = v1[2];
    v7 = (v1[1] + 64) >> 6;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v5 >= v7)
      {
        v9 = 0;
        v3 = 1;
        goto LABEL_9;
      }

      v1[2] = v5;
      v8 = *(*v1 + 8 * v5);
      v1[3] = v8;
      ++v6;
      if (v8)
      {
        v3 = 0;
        v4 = __clz(__rbit64(v8));
        v1[3] = (v8 - 1) & v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void protocol witness for Sequence.makeIterator() in conformance _HashTable(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 + 1 < 64)
  {
    v3 = ~(-1 << (v2 + 1));
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & **v1;
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v4;
}

Swift::Void __swiftcall _HashTable.checkOccupied(_:)(Swift::_HashTable::Bucket a1)
{
  if (a1.offset < 0 || v2 + 1 <= a1.offset || ((*(v1 + ((a1.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(a1.offset)) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::_HashTable::Bucket __swiftcall _HashTable._firstOccupiedBucket(fromWord:)(Swift::Int fromWord)
{
  result.offset = v2 + 1;
  v5 = (v2 + 64) >> 6;
  v6 = v5 <= fromWord;
  v7 = v5 - fromWord;
  if (!v6)
  {
    v8 = -64 * fromWord;
    v9 = (v1 + 8 * fromWord);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        break;
      }

      v8 -= 64;
      if (!--v7)
      {
        return result;
      }
    }

    return (__clz(__rbit64(v10)) - v8);
  }

  return result;
}

Swift::_HashTable::Bucket __swiftcall _HashTable.previousHole(before:)(Swift::_HashTable::Bucket before)
{
  v3 = before.offset >> 6;
  v4 = *(v1 + 8 * (before.offset >> 6)) | (-1 << SLOBYTE(before.offset));
  if (v4 != -1)
  {
    return ((before.offset & 0xFFFFFFFFFFFFFFC0) - __clz(~v4) + 63);
  }

  v6 = 0;
  do
  {
    if (--v3 < 0 && (v6 & 1) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 |= v3 < 0;
    if (v3 < 0)
    {
      v3 = ((v2 + 64) >> 6) - 1;
    }

    v7 = *(v1 + 8 * v3);
  }

  while (v7 == -1);
  return ((v3 << 6) - __clz(~v7) + 63);
}

Swift::_HashTable::Bucket __swiftcall _HashTable.nextHole(atOrAfter:)(Swift::_HashTable::Bucket atOrAfter)
{
  v3 = atOrAfter.offset >> 6;
  v4 = (-1 << SLOBYTE(atOrAfter.offset)) & ~*(v1 + 8 * (atOrAfter.offset >> 6));
  if (v4)
  {
    return (__clz(__rbit64(v4)) | atOrAfter.offset & 0xFFFFFFFFFFFFFFC0);
  }

  v6 = (v2 + 64) >> 6;
  do
  {
    if (++v3 == v6 && (v4 & 1) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = v3 == v6;
    if (v3 == v6)
    {
      v3 = 0;
    }

    LOBYTE(v4) = v7 | v4;
    v8 = *(v1 + 8 * v3);
  }

  while (v8 == -1);
  return (__clz(__rbit64(~v8)) + (v3 << 6));
}

uint64_t static FixedWidthInteger.&+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 80))(a1, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

char *_HashTable.copyContents(of:)(char *__src, int a2, char *__dst, uint64_t a4)
{
  v4 = (a4 + 64) >> 6;
  if (__dst != __src || &__src[8 * v4] <= __dst)
  {
    return memmove(__dst, __src, 8 * v4);
  }

  return __src;
}

char *UnsafeMutablePointer.assign(from:count:)(char *__src, uint64_t a2, char *__dst, unint64_t *a4)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst < __src || &__src[*(*(a4 - 1) + 72) * a2] <= __dst)
  {

    return swift_arrayAssignWithCopyFrontToBack(__dst, __src, a2, a4);
  }

  else if (__dst != __src)
  {

    return swift_arrayAssignWithCopyBackToFront(__dst, __src, a2, a4);
  }

  return __src;
}

Swift::Int _HashTable.delete<A>(at:with:)(Swift::_HashTable::Bucket before, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  offset = before.offset;
  v8 = (before.offset + 1) & a4;
  if ((*(a3 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
  {
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(a3 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v12 = (before.offset + 1) & a4;
      v13 = *(a6 + 8);
      for (before.offset = v13(v8, a5, a6); ; before.offset = v13(v8, a5, a6))
      {
        v14 = before.offset & a4;
        if (offset >= v12)
        {
          if (v14 >= v12 && offset >= v14)
          {
LABEL_4:
            before.offset = (*(a6 + 16))(v8, offset, a5, a6);
            offset = v8;
          }
        }

        else if (v14 >= v12 || offset >= v14)
        {
          goto LABEL_4;
        }

        v8 = (v8 + 1) & a4;
        if (((*(a3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          break;
        }
      }
    }

    v17 = (offset >> 3) & 0x1FFFFFFFFFFFFFF8;
    v18 = ((-1 << offset) - 1) & *(a3 + v17);
  }

  else
  {
    v17 = (before.offset >> 3) & 0x1FFFFFFFFFFFFFF8;
    v18 = *(a3 + v17) & ((-1 << SLOBYTE(before.offset)) - 1);
  }

  *(a3 + v17) = v18;
  return before.offset;
}

uint64_t DefaultIndices._endIndex.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DefaultIndices.init(_elements:startIndex:endIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for DefaultIndices(0, a4, a5, v11);
  v13 = *(v12 + 36);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v18 = *(*(v14 - 8) + 32);
  (v18)((v14 - 8), a6 + v13, a2, v14);
  v16 = a6 + *(v12 + 40);

  return v18(v16, a3, v15);
}

uint64_t DefaultIndices.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

{
  v4 = v3;
  v8 = *(a2 + 16);
  (*(*(v8 - 1) + 16))(a3, v4, v8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v10, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v18 = *(*(v11 - 8) + 16);
  (v18)((v11 - 8), a3 + v9, a1, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = *(type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14) + 36);
  v16 = a3 + *(a2 + 40);

  return v18(v16, a1 + v15, v12);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance DefaultIndices<A>(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc(0x28, 0x2337uLL);
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DefaultIndices.subscript.read();
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DefaultIndices<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DefaultIndices<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t UnsafeMutableBufferPointer.initialize(repeating:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return UnsafeMutablePointer.initialize(repeating:count:)(result, a3, a2, a4);
  }

  return result;
}

Swift::String_optional __swiftcall readLine(strippingNewline:)(Swift::Bool strippingNewline)
{
  __linep[1] = *MEMORY[0x1E69E9840];
  __linep[0] = 0;
  Line_stdin = swift_stdlib_readLine_stdin(__linep);
  v3 = __linep[0];
  if (Line_stdin >= 1)
  {
    if (!__linep[0])
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = Line_stdin;
    v5 = validateUTF8(_:)(__linep[0], Line_stdin);
    if (v5 < 0)
    {
      v9 = repairUTF8(_:firstKnownBrokenRange:)(v3, v4, v6, v7);
      v28 = v9;
      v29 = v10;
      if (!strippingNewline)
      {
LABEL_24:
        v11 = v28;
        v12 = v29;
        _swift_stdlib_free(__linep[0]);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v3, v4, v5 & 1, v8);
      v28 = v9;
      v29 = v10;
      if (!strippingNewline)
      {
        goto LABEL_24;
      }
    }

    v13 = v9;
    v14 = v10;
    v15 = specialized BidirectionalCollection.last.getter(v9, v10);
    if (v16)
    {
      if (v15 == 10 && v16 == 0xE100000000000000)
      {
        goto LABEL_18;
      }

      if ((~v16 & 0x6000000000000000) != 0)
      {
        v17 = v16;
        v18 = _stringCompareInternal(_:_:expecting:)(v15, v16, 0xAuLL, 0xE100000000000000, 0);
        v17;
        if (v18)
        {
LABEL_19:
          specialized RangeReplaceableCollection<>.removeLast()();
          v22 = v21;
LABEL_23:
          v22;
          goto LABEL_24;
        }
      }

      else
      {
        v16;
      }
    }

    v19 = specialized BidirectionalCollection.last.getter(v13, v14);
    if (v20)
    {
      if (v19 == 2573 && v20 == 0xE200000000000000)
      {
        0xE200000000000000;
        v16 = 0xE200000000000000;
LABEL_18:
        v16;
        goto LABEL_19;
      }

      if ((~v20 & 0x6000000000000000) != 0)
      {
        v25 = v20;
        v26 = _stringCompareInternal(_:_:expecting:)(v19, v20, 0xA0DuLL, 0xE200000000000000, 0);
        v25;
        0xE200000000000000;
        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      v20;
    }

    v22 = 0xE200000000000000;
    goto LABEL_23;
  }

  _swift_stdlib_free(__linep[0]);
  v11 = 0;
  v12 = 0;
LABEL_25:
  v23 = v11;
  v24 = v12;
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 7;
  if (((v1 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v4 | (v3 << 16)))._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v5)._rawBits;
  }

  else
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      v16[0] = v2;
      v16[1] = v1 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v16 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v11 = v16 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v12 = *v11--;
        }

        while ((v12 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v6 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v15 = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(v2, v1);
        v5._rawBits = v15;
      }

      v7 = 0;
      v8 = v6 + (v5._rawBits >> 16) - 1;
      do
      {
        v9 = *(v8 + v7--) & 0xC0;
      }

      while (v9 == 128);
      v10 = -v7;
    }

    rawBits = (v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  return specialized RangeReplaceableCollection.remove(at:)(rawBits);
}

{
  if (!*(*v0 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v1 = specialized Array._customRemoveLast()();
  if ((v1 & 0x1000000000000) != 0)
  {
    v1 = specialized Array.remove(at:)(*(*v0 + 16) - 1);
  }

  return v1 & 0xFFFFFFFFFFFFLL;
}

{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = 7;
  if (((v1 >> 60) & ((*v0 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  v4._rawBits = String.index(before:)((v3 | (v2 << 16)))._rawBits;

  return String.remove(at:)(v4)._countAndFlagsBits;
}

{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  else
  {
    v6 = (v1 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v6 count])
  {
    goto LABEL_13;
  }

LABEL_3:
  result = specialized Array._customRemoveLast()();
  if (result)
  {
    return result;
  }

  v3 = *v0;
  if (*v0 >> 62)
  {
    if (v3 < 0)
    {
      v7 = *v0;
    }

    else
    {
      v7 = (v3 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v7 count];
    v5 = __OFSUB__(v8, 1);
    result = v8 - 1;
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    goto LABEL_19;
  }

LABEL_6:

  return specialized Array.remove(at:)(result);
}

uint64_t RangeReplaceableCollection<>.removeLast()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return RangeReplaceableCollection<>.removeLast()(a1, a2, a3, 867, a4);
}

{
  return RangeReplaceableCollection<>.removeLast()(a1, a2, a3, 942, a4);
}

uint64_t _parseIntegerDigits<A>(ascii:radix:isNegative:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  v86 = a7;
  swift_getTupleTypeMetadata2(0, a5, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v70 - v13;
  v82 = a6;
  v15 = *(a6 + 8);
  v84 = *(*(v15 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v84, a5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v70 - v19;
  v88 = *(a5 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v80 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v85 = v70 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v70 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v32 = v70 - v31;
  if (!a2)
  {
    v68 = *(v88 + 56);
    v69 = v86;

    return v68(v69, 1, 1, a5);
  }

  v77 = v14;
  v33 = a3 + 48;
  v34 = a3 + 55;
  v35 = a3 + 87;
  if (a3 <= 10)
  {
    v35 = 97;
  }

  v71 = v35;
  if (a3 <= 10)
  {
    v34 = 65;
  }

  v72 = v34;
  v92 = a3;
  if (a3 > 10)
  {
    v33 = 58;
  }

  v76 = v33;
  v87 = a1;
  v36 = a2;
  v37 = *(v15 + 96);
  v38 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
  v83 = v15;
  v78 = v37;
  v79 = v15 + 96;
  v37(&v92, &type metadata for Int, v38, a5, v15);
  v39 = v36;
  v40 = v84;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v84, a5, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v17, AssociatedConformanceWitness);
  (v40[3])(v20, a5, v40);
  v45 = v86;
  v44 = v87;
  v46 = v82;
  v47 = v27;
  if (!v87)
  {
LABEL_25:
    (*(v88 + 8))(v32, a5);
    (*(v88 + 32))(v45, v47, a5);
    return (*(v88 + 56))(v45, 0, 1, a5);
  }

  v74 = v82 + 12;
  v75 = v32;
  v48 = v88;
  v49 = (v88 + 8);
  v84 = (v88 + 32);
  v70[0] = v82 + 11;
  v70[1] = v82 + 10;
  while (1)
  {
    v50 = *v44;
    if (v50 >= 0x30 && v50 < v76)
    {
      v87 = v44;
      v73 = v39;
      v89 = v50 - 48;
      v51 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v48, v42, v43);
      v52 = &v89;
      v53 = a5;
      v54 = v83;
      goto LABEL_20;
    }

    v55 = v83;
    if (v50 < 0x41 || v50 >= v72)
    {
      break;
    }

    v87 = v44;
    v73 = v39;
    v90 = v50 - 55;
    v51 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v48, v42, v43);
    v52 = &v90;
LABEL_19:
    v53 = a5;
    v54 = v55;
LABEL_20:
    v78(v52, &type metadata for UInt8, v51, v53, v54);
    v56 = v80;
    v57 = (v46)[12](v80, v32, a5, v46);
    v58 = *v49;
    (*v49)(v47, a5);
    v59 = *v84;
    (*v84)(v47, v56, a5);
    v60 = v77;
    v61 = v85;
    if (v81)
    {
      v62 = (v46)[11](v77, v85, a5, v46);
    }

    else
    {
      v62 = (v46)[10](v77, v85, a5, v46);
    }

    v63 = v62;
    v58(v61, a5);
    v58(v47, a5);
    v48 = (v59)(v47, v60, a5);
    if ((v57 | v63))
    {
      v58(v47, a5);
      v58(v75, a5);
      v65 = *(v88 + 56);
      v66 = v86;
      return v65(v66, 1, 1, a5);
    }

    v45 = v86;
    v44 = v87 + 1;
    v39 = v73 - 1;
    v32 = v75;
    if (v73 == 1)
    {
      goto LABEL_25;
    }
  }

  if (v50 >= 0x61 && v50 < v71)
  {
    v87 = v44;
    v73 = v39;
    v91 = v50 - 87;
    v51 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v48, v42, v43);
    v52 = &v91;
    goto LABEL_19;
  }

  v67 = *(v88 + 8);
  v67(v47, a5);
  v67(v32, a5);
  v65 = *(v88 + 56);
  v66 = v45;
  return v65(v66, 1, 1, a5);
}

uint64_t UnsafeBufferPointer.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (*v2 && v3 != v2[1])
  {
    v7 = *(*(a1 + 16) - 8);
    v10 = v7;
    *v2 = v3 + *(v7 + 72);
    (*(v7 + 16))(a2);
    v4 = *(v10 + 56);
    v5 = a2;
    v6 = 0;
  }

  else
  {
    v4 = *(*(*(a1 + 16) - 8) + 56);
    v5 = a2;
    v6 = 1;
  }

  return v4(v5, v6, 1);
}

uint64_t _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || a4 < a2)
  {
    goto LABEL_9;
  }

  v4 = a3 + a1;
  if (!a3)
  {
    v4 = 0;
  }

  v5 = a2 - a1;
  if (v5 < 0 || v5 && !v4)
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v4;
}

uint64_t UnsafeBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v10 = type metadata accessor for UnsafeBufferPointer(255, a5, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v10, v11);
  v14 = type metadata accessor for Slice(0, v10, WitnessTable, v13);
  v15 = *(v14 + 16);
  swift_getAssociatedTypeWitness(0, *(v14 + 24), v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = v16;
  v18 = *(*(v16 - 8) + 16);
  v18(v24, &v26, v16);
  if ((v24[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v18(&v25, (&v26 + *(v14 + 36)), v17);
  v19 = v25;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  (*(*(v15 - 8) + 16))(v22, v24 + *(v14 + 40), v15);
  if (v23 < v19)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    result = a3 + *(*(a5 - 8) + 72) * a1;
    v21 = a2 == a1;
    if (a2 - a1 < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    v21 = a2 == a1;
    if (a2 - a1 < 0)
    {
      goto LABEL_9;
    }
  }

  if (!v21 && !result)
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (a3)
  {
    result = a3 + *(*(a5 - 8) + 72) * a1;
    v8 = a2 - a1;
    v7 = v8 == 0;
    if (v8 < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = 0;
    v9 = a2 - a1;
    v7 = v9 == 0;
    if (v9 < 0)
    {
      goto LABEL_7;
    }
  }

  if (!v7 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_135:
    v84 = HIBYTE(v4) & 0xF;
    v158[0] = a1;
    v158[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v84)
    {
      if (a1 == 43)
      {
        v110 = specialized Collection.subscript.getter(1, v158, v84);
        v114 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v110, v111, v112, v113);
        if (v115)
        {
          v117 = a3 + 48;
          v118 = a3 + 55;
          v119 = a3 + 87;
          if (a3 > 10)
          {
            v117 = 58;
          }

          else
          {
            v119 = 97;
            v118 = 65;
          }

          if (v114)
          {
            v21 = 0;
            v120 = 0;
            v121 = a3 >> 63;
            v122 = -a3;
            v123 = -__PAIR128__(v116, a3) >> 64;
            if (a3 >> 63 != -1)
            {
              v123 = a3 >> 63;
              v122 = a3;
            }

            while (1)
            {
              v124 = *v114;
              if (v124 < 0x30 || v124 >= v117)
              {
                if (v124 < 0x41 || v124 >= v118)
                {
                  v28 = 0;
                  if (v124 < 0x61 || v124 >= v119)
                  {
                    goto LABEL_269;
                  }

                  v125 = -87;
                }

                else
                {
                  v125 = -55;
                }
              }

              else
              {
                v125 = -48;
              }

              v126 = __PAIR128__(v120 ^ (v120 >> 63), v21 ^ (v120 >> 63)) - __PAIR128__(v120 >> 63, v120 >> 63);
              if ((__PAIR128__(v120 ^ (v120 >> 63), v21 ^ (v120 >> 63)) - __PAIR128__(v120 >> 63, v120 >> 63)) >> 64)
              {
                v127 = v123 == 0;
              }

              else
              {
                v127 = 1;
              }

              v130 = !v127 || (*(&v126 + 1) * v122) >> 64 != 0 || (v123 * v126) >> 64 != 0;
              v131 = (__PAIR128__(v123, v122) * v126) >> 64;
              if (__CFADD__((v126 * v122) >> 64, v123 * v126 + *(&v126 + 1) * v122))
              {
                v130 = 1;
              }

              v132 = v126 * v122;
              if ((v120 ^ v121) < 0)
              {
                if (v130)
                {
LABEL_268:
                  v28 = 0;
                  goto LABEL_269;
                }

                v37 = v132 == 0;
                v132 = -v132;
                v131 = -(v131 + !v37);
                LOBYTE(v133) = v132 != 0;
              }

              else
              {
                if (v130)
                {
                  goto LABEL_268;
                }

                v133 = v131 >> 63;
              }

              v28 = 0;
              v37 = __CFADD__(v132, (v124 + v125));
              v120 = (__PAIR128__(v131, v132) + (v124 + v125)) >> 64;
              v21 = v132 + (v124 + v125);
              v134 = __OFADD__(v37, v131);
              if ((v133 & 1) != 0 || v134)
              {
                goto LABEL_269;
              }

              ++v114;
              if (!--v115)
              {
LABEL_223:
                v28 = v21;
                goto LABEL_269;
              }
            }
          }

          goto LABEL_224;
        }
      }

      else
      {
        if (a1 != 45)
        {
          v135 = 0;
          v136 = 0;
          v137 = a3 + 48;
          v138 = a3 + 55;
          v139 = a3 + 87;
          if (a3 > 10)
          {
            v137 = 58;
          }

          else
          {
            v139 = 97;
            v138 = 65;
          }

          v140 = a3 >> 63;
          v141 = -a3;
          v142 = -__PAIR128__(v6, a3) >> 64;
          if (a3 >> 63 != -1)
          {
            v142 = a3 >> 63;
            v141 = a3;
          }

          v143 = v158;
          while (1)
          {
            v144 = *v143;
            if (v144 < 0x30 || v144 >= v137)
            {
              if (v144 < 0x41 || v144 >= v138)
              {
                v28 = 0;
                if (v144 < 0x61 || v144 >= v139)
                {
                  goto LABEL_269;
                }

                v145 = -87;
              }

              else
              {
                v145 = -55;
              }
            }

            else
            {
              v145 = -48;
            }

            v146 = __PAIR128__(v136 ^ (v136 >> 63), v135 ^ (v136 >> 63)) - __PAIR128__(v136 >> 63, v136 >> 63);
            if ((__PAIR128__(v136 ^ (v136 >> 63), v135 ^ (v136 >> 63)) - __PAIR128__(v136 >> 63, v136 >> 63)) >> 64)
            {
              v147 = v142 == 0;
            }

            else
            {
              v147 = 1;
            }

            v150 = !v147 || (*(&v146 + 1) * v141) >> 64 != 0 || (v142 * v146) >> 64 != 0;
            v151 = (__PAIR128__(v142, v141) * v146) >> 64;
            if (__CFADD__((v146 * v141) >> 64, v142 * v146 + *(&v146 + 1) * v141))
            {
              v150 = 1;
            }

            v152 = v146 * v141;
            if ((v136 ^ v140) < 0)
            {
              if (v150)
              {
                goto LABEL_268;
              }

              v37 = v152 == 0;
              v152 = -v152;
              v151 = -(v151 + !v37);
              LOBYTE(v153) = v152 != 0;
            }

            else
            {
              if (v150)
              {
                goto LABEL_268;
              }

              v153 = v151 >> 63;
            }

            v28 = 0;
            v37 = __CFADD__(v152, (v144 + v145));
            v136 = (__PAIR128__(v151, v152) + (v144 + v145)) >> 64;
            v135 = v152 + (v144 + v145);
            v154 = __OFADD__(v37, v151);
            if ((v153 & 1) != 0 || v154)
            {
              goto LABEL_269;
            }

            ++v143;
            if (!--v84)
            {
              v28 = v135;
              goto LABEL_269;
            }
          }
        }

        v85 = specialized Collection.subscript.getter(1, v158, v84);
        v89 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v85, v86, v87, v88);
        if (v90)
        {
          v92 = a3 + 48;
          v93 = a3 + 55;
          v94 = a3 + 87;
          if (a3 > 10)
          {
            v92 = 58;
          }

          else
          {
            v94 = 97;
            v93 = 65;
          }

          if (!v89)
          {
            goto LABEL_224;
          }

          v21 = 0;
          v95 = 0;
          v96 = a3 >> 63;
          v97 = -a3;
          v98 = -__PAIR128__(v91, a3) >> 64;
          if (a3 >> 63 != -1)
          {
            v98 = a3 >> 63;
            v97 = a3;
          }

          while (1)
          {
            v99 = *v89;
            if (v99 < 0x30 || v99 >= v92)
            {
              if (v99 < 0x41 || v99 >= v93)
              {
                v28 = 0;
                if (v99 < 0x61 || v99 >= v94)
                {
                  goto LABEL_269;
                }

                v100 = -87;
              }

              else
              {
                v100 = -55;
              }
            }

            else
            {
              v100 = -48;
            }

            v101 = __PAIR128__(v95 ^ (v95 >> 63), v21 ^ (v95 >> 63)) - __PAIR128__(v95 >> 63, v95 >> 63);
            if ((__PAIR128__(v95 ^ (v95 >> 63), v21 ^ (v95 >> 63)) - __PAIR128__(v95 >> 63, v95 >> 63)) >> 64)
            {
              v102 = v98 == 0;
            }

            else
            {
              v102 = 1;
            }

            v105 = !v102 || (*(&v101 + 1) * v97) >> 64 != 0 || (v98 * v101) >> 64 != 0;
            v106 = (__PAIR128__(v98, v97) * v101) >> 64;
            if (__CFADD__((v101 * v97) >> 64, v98 * v101 + *(&v101 + 1) * v97))
            {
              v105 = 1;
            }

            v107 = v101 * v97;
            if ((v95 ^ v96) < 0)
            {
              if (v105)
              {
                goto LABEL_268;
              }

              v37 = v107 == 0;
              v107 = -v107;
              v106 = -(v106 + !v37);
              LOBYTE(v108) = v107 != 0;
            }

            else
            {
              if (v105)
              {
                goto LABEL_268;
              }

              v108 = v106 >> 63;
            }

            v28 = 0;
            v37 = v107 >= (v99 + v100);
            v95 = (__PAIR128__(v106, v107) - (v99 + v100)) >> 64;
            v21 = v107 - (v99 + v100);
            v109 = __OFSUB__(v106, !v37);
            if ((v108 & 1) != 0 || v109)
            {
              goto LABEL_269;
            }

            ++v89;
            if (!--v90)
            {
              goto LABEL_223;
            }
          }
        }
      }

      goto LABEL_272;
    }

    goto LABEL_271;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v83 = v82;
  v4;
  v4 = v83;
  if ((v83 & 0x2000000000000000) != 0)
  {
    goto LABEL_135;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_271:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v156 = _StringObject.sharedUTF8.getter(a1, v4);
  v9 = v157;
  v8 = v156;
  if (v9 <= 0)
  {
    goto LABEL_271;
  }

LABEL_5:
  v10 = *v8;
  if (v10 == 43)
  {
    v39 = specialized Collection.subscript.getter(1, v8, v9);
    v43 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v39, v40, v41, v42);
    if (v44)
    {
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      if (!v43)
      {
        goto LABEL_224;
      }

      v21 = 0;
      v49 = 0;
      v50 = a3 >> 63;
      v51 = -a3;
      v52 = -__PAIR128__(v45, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v52 = a3 >> 63;
        v51 = a3;
      }

      while (1)
      {
        v53 = *v43;
        if (v53 < 0x30 || v53 >= v46)
        {
          if (v53 < 0x41 || v53 >= v47)
          {
            v28 = 0;
            if (v53 < 0x61 || v53 >= v48)
            {
              goto LABEL_269;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = __PAIR128__(v49 ^ (v49 >> 63), v21 ^ (v49 >> 63)) - __PAIR128__(v49 >> 63, v49 >> 63);
        if ((__PAIR128__(v49 ^ (v49 >> 63), v21 ^ (v49 >> 63)) - __PAIR128__(v49 >> 63, v49 >> 63)) >> 64)
        {
          v56 = v52 == 0;
        }

        else
        {
          v56 = 1;
        }

        v59 = !v56 || (*(&v55 + 1) * v51) >> 64 != 0 || (v52 * v55) >> 64 != 0;
        v60 = (__PAIR128__(v52, v51) * v55) >> 64;
        if (__CFADD__((v55 * v51) >> 64, v52 * v55 + *(&v55 + 1) * v51))
        {
          v59 = 1;
        }

        v61 = v55 * v51;
        if ((v49 ^ v50) < 0)
        {
          if (v59)
          {
            goto LABEL_268;
          }

          v37 = v61 == 0;
          v61 = -v61;
          v60 = -(v60 + !v37);
          LOBYTE(v62) = v61 != 0;
        }

        else
        {
          if (v59)
          {
            goto LABEL_268;
          }

          v62 = v60 >> 63;
        }

        v28 = 0;
        v37 = __CFADD__(v61, (v53 + v54));
        v49 = (__PAIR128__(v60, v61) + (v53 + v54)) >> 64;
        v21 = v61 + (v53 + v54);
        v63 = __OFADD__(v37, v60);
        if ((v62 & 1) != 0 || v63)
        {
          goto LABEL_269;
        }

        ++v43;
        if (!--v44)
        {
          goto LABEL_223;
        }
      }
    }

LABEL_272:
    v28 = 0;
    goto LABEL_269;
  }

  if (v10 == 45)
  {
    v11 = specialized Collection.subscript.getter(1, v8, v9);
    v15 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v11, v12, v13, v14);
    if (!v16)
    {
      v28 = 0;
      goto LABEL_269;
    }

    v18 = a3 + 48;
    v19 = a3 + 55;
    v20 = a3 + 87;
    if (a3 > 10)
    {
      v18 = 58;
    }

    else
    {
      v20 = 97;
      v19 = 65;
    }

    if (v15)
    {
      v21 = 0;
      v22 = 0;
      v23 = a3 >> 63;
      v24 = -a3;
      v25 = -__PAIR128__(v17, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v25 = a3 >> 63;
        v24 = a3;
      }

      while (1)
      {
        v26 = *v15;
        if (v26 < 0x30 || v26 >= v18)
        {
          if (v26 < 0x41 || v26 >= v19)
          {
            v28 = 0;
            if (v26 < 0x61 || v26 >= v20)
            {
              goto LABEL_269;
            }

            v27 = -87;
          }

          else
          {
            v27 = -55;
          }
        }

        else
        {
          v27 = -48;
        }

        v29 = __PAIR128__(v22 ^ (v22 >> 63), v21 ^ (v22 >> 63)) - __PAIR128__(v22 >> 63, v22 >> 63);
        if ((__PAIR128__(v22 ^ (v22 >> 63), v21 ^ (v22 >> 63)) - __PAIR128__(v22 >> 63, v22 >> 63)) >> 64)
        {
          v30 = v25 == 0;
        }

        else
        {
          v30 = 1;
        }

        v33 = !v30 || (*(&v29 + 1) * v24) >> 64 != 0 || (v25 * v29) >> 64 != 0;
        v34 = (__PAIR128__(v25, v24) * v29) >> 64;
        if (__CFADD__((v29 * v24) >> 64, v25 * v29 + *(&v29 + 1) * v24))
        {
          v33 = 1;
        }

        v35 = v29 * v24;
        if ((v22 ^ v23) < 0)
        {
          if (v33)
          {
            goto LABEL_268;
          }

          v37 = v35 == 0;
          v35 = -v35;
          v34 = -(v34 + !v37);
          LOBYTE(v36) = v35 != 0;
        }

        else
        {
          if (v33)
          {
            goto LABEL_268;
          }

          v36 = v34 >> 63;
        }

        v28 = 0;
        v37 = v35 >= (v26 + v27);
        v22 = (__PAIR128__(v34, v35) - (v26 + v27)) >> 64;
        v21 = v35 - (v26 + v27);
        v38 = __OFSUB__(v34, !v37);
        if ((v36 & 1) != 0 || v38)
        {
          goto LABEL_269;
        }

        ++v15;
        if (!--v16)
        {
          goto LABEL_223;
        }
      }
    }

LABEL_224:
    v28 = 0;
    goto LABEL_269;
  }

  v21 = 0;
  v64 = 0;
  v65 = a3 + 48;
  v66 = a3 + 55;
  v67 = a3 + 87;
  if (a3 > 10)
  {
    v65 = 58;
  }

  else
  {
    v67 = 97;
    v66 = 65;
  }

  v68 = a3 >> 63;
  v69 = -a3;
  v70 = -__PAIR128__(v7, a3) >> 64;
  if (a3 >> 63 != -1)
  {
    v69 = a3;
    v70 = a3 >> 63;
  }

  while (1)
  {
    v71 = *v8;
    if (v71 < 0x30 || v71 >= v65)
    {
      if (v71 < 0x41 || v71 >= v66)
      {
        v28 = 0;
        if (v71 < 0x61 || v71 >= v67)
        {
          break;
        }

        v72 = -87;
      }

      else
      {
        v72 = -55;
      }
    }

    else
    {
      v72 = -48;
    }

    v73 = __PAIR128__(v64 ^ (v64 >> 63), v21 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63);
    if ((__PAIR128__(v64 ^ (v64 >> 63), v21 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63)) >> 64)
    {
      v74 = v70 == 0;
    }

    else
    {
      v74 = 1;
    }

    v77 = !v74 || (*(&v73 + 1) * v69) >> 64 != 0 || (v70 * v73) >> 64 != 0;
    v78 = (__PAIR128__(v70, v69) * v73) >> 64;
    if (__CFADD__((v73 * v69) >> 64, v70 * v73 + *(&v73 + 1) * v69))
    {
      v77 = 1;
    }

    v79 = v73 * v69;
    if ((v64 ^ v68) < 0)
    {
      if (v77)
      {
        goto LABEL_268;
      }

      v37 = v79 == 0;
      v79 = -v79;
      v78 = -(v78 + !v37);
      LOBYTE(v80) = v79 != 0;
    }

    else
    {
      if (v77)
      {
        goto LABEL_268;
      }

      v80 = v78 >> 63;
    }

    v28 = 0;
    v37 = __CFADD__(v79, (v71 + v72));
    v64 = (__PAIR128__(v78, v79) + (v71 + v72)) >> 64;
    v21 = v79 + (v71 + v72);
    v81 = __OFADD__(v37, v78);
    if ((v80 & 1) != 0 || v81)
    {
      break;
    }

    ++v8;
    if (!--v9)
    {
      goto LABEL_223;
    }
  }

LABEL_269:
  v4;
  return v28;
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_117:
    v81 = HIBYTE(v4) & 0xF;
    v152[0] = a1;
    v152[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v81)
    {
      if (a1 == 43)
      {
        v106 = specialized Collection.subscript.getter(1, v152, v81);
        v110 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v106, v107, v108, v109);
        if (v111)
        {
          v112 = a3 + 55;
          v113 = a3 + 87;
          if (a3 > 10)
          {
            v114 = 58;
          }

          else
          {
            v113 = 97;
            v112 = 65;
            v114 = a3 + 48;
          }

          if (!v110)
          {
            goto LABEL_194;
          }

          v18 = 0;
          v115 = 0;
          v116 = a3 >> 63;
          while (1)
          {
            v117 = *v110;
            if (v117 < 0x30 || v117 >= v114)
            {
              if (v117 < 0x41 || v117 >= v112)
              {
                v23 = 0;
                if (v117 < 0x61 || v117 >= v113)
                {
                  goto LABEL_230;
                }

                v118 = -87;
              }

              else
              {
                v118 = -55;
              }
            }

            else
            {
              v118 = -48;
            }

            v23 = 0;
            v119 = v117 + v118;
            if (v115)
            {
              v120 = a3 >= 0;
            }

            else
            {
              v120 = 1;
            }

            v123 = !v120 || (v115 * a3) >> 64 != 0 || (v116 * v18) >> 64 != 0;
            v124 = v116 * v18 + v115 * a3;
            v125 = (v18 * a3) >> 64;
            v31 = __CFADD__(v125, v124);
            v126 = v125 + v124;
            if (v31)
            {
              v123 = 1;
            }

            v127 = v18 * a3;
            v31 = __CFADD__(v127, v119);
            v18 = v127 + v119;
            v128 = v31;
            v31 = __CFADD__(v31, v126);
            v115 = v128 + v126;
            v129 = v31;
            if ((v123 & 1) != 0 || v129)
            {
              goto LABEL_230;
            }

            ++v110;
            if (!--v111)
            {
LABEL_193:
              v23 = v18;
              goto LABEL_230;
            }
          }
        }
      }

      else
      {
        if (a1 != 45)
        {
          v60 = 0;
          v130 = 0;
          v131 = a3 + 48;
          v132 = a3 + 55;
          v133 = a3 + 87;
          if (a3 > 10)
          {
            v131 = 58;
          }

          else
          {
            v133 = 97;
            v132 = 65;
          }

          v134 = a3 >> 63;
          v135 = v152;
          while (1)
          {
            v136 = *v135;
            if (v136 < 0x30 || v136 >= v131)
            {
              if (v136 < 0x41 || v136 >= v132)
              {
                v23 = 0;
                if (v136 < 0x61 || v136 >= v133)
                {
                  goto LABEL_230;
                }

                v137 = -87;
              }

              else
              {
                v137 = -55;
              }
            }

            else
            {
              v137 = -48;
            }

            v23 = 0;
            v138 = v136 + v137;
            if (v130)
            {
              v139 = a3 >= 0;
            }

            else
            {
              v139 = 1;
            }

            v142 = !v139 || (v130 * a3) >> 64 != 0 || (v134 * v60) >> 64 != 0;
            v143 = v134 * v60 + v130 * a3;
            v144 = (v60 * a3) >> 64;
            v31 = __CFADD__(v144, v143);
            v145 = v144 + v143;
            if (v31)
            {
              v142 = 1;
            }

            v146 = v60 * a3;
            v31 = __CFADD__(v146, v138);
            v60 = v146 + v138;
            v147 = v31;
            v31 = __CFADD__(v31, v145);
            v130 = v147 + v145;
            v148 = v31;
            if ((v142 & 1) != 0 || v148)
            {
              goto LABEL_230;
            }

            ++v135;
            if (!--v81)
            {
LABEL_229:
              v23 = v60;
              goto LABEL_230;
            }
          }
        }

        v82 = specialized Collection.subscript.getter(1, v152, v81);
        v86 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v82, v83, v84, v85);
        if (v87)
        {
          v88 = a3 + 55;
          v89 = a3 + 87;
          if (a3 > 10)
          {
            v90 = 58;
          }

          else
          {
            v89 = 97;
            v88 = 65;
            v90 = a3 + 48;
          }

          if (!v86)
          {
            goto LABEL_194;
          }

          v18 = 0;
          v91 = 0;
          v92 = a3 >> 63;
          while (1)
          {
            v93 = *v86;
            if (v93 < 0x30 || v93 >= v90)
            {
              if (v93 < 0x41 || v93 >= v88)
              {
                v23 = 0;
                if (v93 < 0x61 || v93 >= v89)
                {
                  goto LABEL_230;
                }

                v94 = -87;
              }

              else
              {
                v94 = -55;
              }
            }

            else
            {
              v94 = -48;
            }

            v23 = 0;
            v95 = v93 + v94;
            if (v91)
            {
              v96 = a3 >= 0;
            }

            else
            {
              v96 = 1;
            }

            v99 = !v96 || (v91 * a3) >> 64 != 0 || (v92 * v18) >> 64 != 0;
            v100 = v92 * v18 + v91 * a3;
            v101 = (v18 * a3) >> 64;
            v31 = __CFADD__(v101, v100);
            v102 = v101 + v100;
            if (v31)
            {
              v99 = 1;
            }

            v103 = v18 * a3;
            v31 = v103 >= v95;
            v18 = v103 - v95;
            v104 = v31;
            v31 = v102 >= !v31;
            v91 = v102 - !v104;
            v105 = !v31;
            if ((v99 & 1) != 0 || v105)
            {
              goto LABEL_230;
            }

            ++v86;
            if (!--v87)
            {
              goto LABEL_193;
            }
          }
        }
      }

      goto LABEL_233;
    }

    goto LABEL_232;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v80 = v79;
  v4;
  v4 = v80;
  if ((v80 & 0x2000000000000000) != 0)
  {
    goto LABEL_117;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_232:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v150 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v151;
  v6 = v150;
  if (v7 <= 0)
  {
    goto LABEL_232;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v36 = specialized Collection.subscript.getter(1, v6, v7);
    v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v36, v37, v38, v39);
    if (v41)
    {
      v42 = a3 + 55;
      v43 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v43 = 97;
        v42 = 65;
        v44 = a3 + 48;
      }

      if (!v40)
      {
        goto LABEL_194;
      }

      v18 = 0;
      v45 = 0;
      v46 = a3 >> 63;
      while (1)
      {
        v47 = *v40;
        if (v47 < 0x30 || v47 >= v44)
        {
          if (v47 < 0x41 || v47 >= v42)
          {
            v23 = 0;
            if (v47 < 0x61 || v47 >= v43)
            {
              goto LABEL_230;
            }

            v48 = -87;
          }

          else
          {
            v48 = -55;
          }
        }

        else
        {
          v48 = -48;
        }

        v23 = 0;
        v49 = v47 + v48;
        if (v45)
        {
          v50 = a3 >= 0;
        }

        else
        {
          v50 = 1;
        }

        v53 = !v50 || (v45 * a3) >> 64 != 0 || (v46 * v18) >> 64 != 0;
        v54 = v46 * v18 + v45 * a3;
        v55 = (v18 * a3) >> 64;
        v31 = __CFADD__(v55, v54);
        v56 = v55 + v54;
        if (v31)
        {
          v53 = 1;
        }

        v57 = v18 * a3;
        v31 = __CFADD__(v57, v49);
        v18 = v57 + v49;
        v58 = v31;
        v31 = __CFADD__(v31, v56);
        v45 = v58 + v56;
        v59 = v31;
        if ((v53 & 1) != 0 || v59)
        {
          goto LABEL_230;
        }

        ++v40;
        if (!--v41)
        {
          goto LABEL_193;
        }
      }
    }

LABEL_233:
    v23 = 0;
    goto LABEL_230;
  }

  if (v8 == 45)
  {
    v9 = specialized Collection.subscript.getter(1, v6, v7);
    v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
    if (!v14)
    {
      v23 = 0;
      goto LABEL_230;
    }

    v15 = a3 + 55;
    v16 = a3 + 87;
    if (a3 > 10)
    {
      v17 = 58;
    }

    else
    {
      v16 = 97;
      v15 = 65;
      v17 = a3 + 48;
    }

    if (v13)
    {
      v18 = 0;
      v19 = 0;
      v20 = a3 >> 63;
      while (1)
      {
        v21 = *v13;
        if (v21 < 0x30 || v21 >= v17)
        {
          if (v21 < 0x41 || v21 >= v15)
          {
            v23 = 0;
            if (v21 < 0x61 || v21 >= v16)
            {
              goto LABEL_230;
            }

            v22 = -87;
          }

          else
          {
            v22 = -55;
          }
        }

        else
        {
          v22 = -48;
        }

        v23 = 0;
        v24 = v21 + v22;
        if (v19)
        {
          v25 = a3 >= 0;
        }

        else
        {
          v25 = 1;
        }

        v28 = !v25 || (v19 * a3) >> 64 != 0 || (v20 * v18) >> 64 != 0;
        v29 = v20 * v18 + v19 * a3;
        v30 = (v18 * a3) >> 64;
        v31 = __CFADD__(v30, v29);
        v32 = v30 + v29;
        if (v31)
        {
          v28 = 1;
        }

        v33 = v18 * a3;
        v31 = v33 >= v24;
        v18 = v33 - v24;
        v34 = v31;
        v31 = v32 >= !v31;
        v19 = v32 - !v34;
        v35 = !v31;
        if ((v28 & 1) != 0 || v35)
        {
          goto LABEL_230;
        }

        ++v13;
        if (!--v14)
        {
          goto LABEL_193;
        }
      }
    }

LABEL_194:
    v23 = 0;
    goto LABEL_230;
  }

  v60 = 0;
  v61 = 0;
  v62 = a3 + 48;
  v63 = a3 + 55;
  v64 = a3 + 87;
  if (a3 > 10)
  {
    v62 = 58;
  }

  else
  {
    v64 = 97;
    v63 = 65;
  }

  v65 = a3 >> 63;
  while (1)
  {
    v66 = *v6;
    if (v66 < 0x30 || v66 >= v62)
    {
      if (v66 < 0x41 || v66 >= v63)
      {
        v23 = 0;
        if (v66 < 0x61 || v66 >= v64)
        {
          break;
        }

        v67 = -87;
      }

      else
      {
        v67 = -55;
      }
    }

    else
    {
      v67 = -48;
    }

    v23 = 0;
    v68 = v66 + v67;
    if (v61)
    {
      v69 = a3 >= 0;
    }

    else
    {
      v69 = 1;
    }

    v72 = !v69 || (v61 * a3) >> 64 != 0 || (v65 * v60) >> 64 != 0;
    v73 = v65 * v60 + v61 * a3;
    v74 = (v60 * a3) >> 64;
    v31 = __CFADD__(v74, v73);
    v75 = v74 + v73;
    if (v31)
    {
      v72 = 1;
    }

    v76 = v60 * a3;
    v31 = __CFADD__(v76, v68);
    v60 = v76 + v68;
    v77 = v31;
    v31 = __CFADD__(v31, v75);
    v61 = v77 + v75;
    v78 = v31;
    if ((v72 & 1) != 0 || v78)
    {
      break;
    }

    ++v6;
    if (!--v7)
    {
      goto LABEL_229;
    }
  }

LABEL_230:
  v4;
  return v23;
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_71:
    v56 = HIBYTE(v4) & 0xF;
    v103[0] = a1;
    v103[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v56)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v73 = specialized Collection.subscript.getter(1, v103, v56);
        v77 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v73, v74, v75, v76);
        if (v78)
        {
          v79 = a3 + 48;
          v80 = a3 + 55;
          v81 = a3 + 87;
          if (a3 > 10)
          {
            v79 = 58;
          }

          else
          {
            v81 = 97;
            v80 = 65;
          }

          if (!v77)
          {
            goto LABEL_118;
          }

          v82 = 0;
          do
          {
            v83 = *v77;
            if (v83 < 0x30 || v83 >= v79)
            {
              if (v83 < 0x41 || v83 >= v80)
              {
                v22 = 0;
                v9 = 1;
                if (v83 < 0x61 || v83 >= v81)
                {
                  goto LABEL_119;
                }

                v84 = -87;
              }

              else
              {
                v84 = -55;
              }
            }

            else
            {
              v84 = -48;
            }

            v22 = 0;
            v85 = v83 + v84;
            v86 = v82 * a3;
            v87 = (v86 & 0xFFFFFFFF00000000) != 0;
            v26 = __CFADD__(v86, v85);
            v82 = v86 + v85;
            v88 = v26;
            v9 = 1;
            if (v87)
            {
              break;
            }

            if (v88)
            {
              break;
            }

            v9 = 0;
            ++v77;
            v22 = v82;
            --v78;
          }

          while (v78);
          goto LABEL_119;
        }
      }

      else
      {
        if (a1 != 45)
        {
          v90 = 0;
          v91 = a3 + 48;
          v92 = a3 + 55;
          v93 = a3 + 87;
          if (a3 > 10)
          {
            v91 = 58;
          }

          else
          {
            v93 = 97;
            v92 = 65;
          }

          v94 = v103;
          do
          {
            v95 = *v94;
            if (v95 < 0x30 || v95 >= v91)
            {
              if (v95 < 0x41 || v95 >= v92)
              {
                v22 = 0;
                v9 = 1;
                if (v95 < 0x61 || v95 >= v93)
                {
                  goto LABEL_119;
                }

                v96 = -87;
              }

              else
              {
                v96 = -55;
              }
            }

            else
            {
              v96 = -48;
            }

            v22 = 0;
            v97 = v95 + v96;
            v98 = v90 * a3;
            v99 = (v98 & 0xFFFFFFFF00000000) != 0;
            v26 = __CFADD__(v98, v97);
            v90 = v98 + v97;
            v100 = v26;
            v9 = 1;
            if (v99)
            {
              break;
            }

            if (v100)
            {
              break;
            }

            v9 = 0;
            ++v94;
            v22 = v90;
            --v56;
          }

          while (v56);
          goto LABEL_119;
        }

        v9 = 1;
        v57 = specialized Collection.subscript.getter(1, v103, v56);
        v61 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v57, v58, v59, v60);
        if (v62)
        {
          v63 = a3 + 48;
          v64 = a3 + 55;
          v65 = a3 + 87;
          if (a3 > 10)
          {
            v63 = 58;
          }

          else
          {
            v65 = 97;
            v64 = 65;
          }

          if (!v61)
          {
            goto LABEL_118;
          }

          v66 = 0;
          do
          {
            v67 = *v61;
            if (v67 < 0x30 || v67 >= v63)
            {
              if (v67 < 0x41 || v67 >= v64)
              {
                v22 = 0;
                v9 = 1;
                if (v67 < 0x61 || v67 >= v65)
                {
                  goto LABEL_119;
                }

                v68 = -87;
              }

              else
              {
                v68 = -55;
              }
            }

            else
            {
              v68 = -48;
            }

            v22 = 0;
            v69 = v67 + v68;
            v70 = v66 * a3;
            v71 = (v70 & 0xFFFFFFFF00000000) != 0;
            v26 = v70 >= v69;
            v66 = v70 - v69;
            v72 = !v26;
            v9 = 1;
            if (v71)
            {
              break;
            }

            if (v72)
            {
              break;
            }

            v9 = 0;
            ++v61;
            v22 = v66;
            --v62;
          }

          while (v62);
          goto LABEL_119;
        }
      }

      goto LABEL_142;
    }

    goto LABEL_141;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v55 = v54;
  v4;
  v4 = v55;
  if ((v55 & 0x2000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_141:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v101 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v102;
  v6 = v101;
  if (v7 <= 0)
  {
    goto LABEL_141;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v9 = 1;
    v28 = specialized Collection.subscript.getter(1, v6, v7);
    v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v29, v30, v31);
    if (v33)
    {
      v34 = a3 + 48;
      v35 = a3 + 55;
      v36 = a3 + 87;
      if (a3 > 10)
      {
        v34 = 58;
      }

      else
      {
        v36 = 97;
        v35 = 65;
      }

      if (!v32)
      {
        goto LABEL_118;
      }

      v37 = 0;
      do
      {
        v38 = *v32;
        if (v38 < 0x30 || v38 >= v34)
        {
          if (v38 < 0x41 || v38 >= v35)
          {
            v22 = 0;
            v9 = 1;
            if (v38 < 0x61 || v38 >= v36)
            {
              goto LABEL_119;
            }

            v39 = -87;
          }

          else
          {
            v39 = -55;
          }
        }

        else
        {
          v39 = -48;
        }

        v22 = 0;
        v40 = v38 + v39;
        v41 = v37 * a3;
        v42 = (v41 & 0xFFFFFFFF00000000) != 0;
        v26 = __CFADD__(v41, v40);
        v37 = v41 + v40;
        v43 = v26;
        v9 = 1;
        if (v42)
        {
          break;
        }

        if (v43)
        {
          break;
        }

        v9 = 0;
        ++v32;
        v22 = v37;
        --v33;
      }

      while (v33);
      goto LABEL_119;
    }

LABEL_142:
    v22 = 0;
    goto LABEL_119;
  }

  if (v8 == 45)
  {
    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v22 = 0;
      goto LABEL_119;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      v19 = 0;
      do
      {
        v20 = *v14;
        if (v20 < 0x30 || v20 >= v16)
        {
          if (v20 < 0x41 || v20 >= v17)
          {
            v22 = 0;
            v9 = 1;
            if (v20 < 0x61 || v20 >= v18)
            {
              goto LABEL_119;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        v22 = 0;
        v23 = v20 + v21;
        v24 = v19 * a3;
        v25 = (v24 & 0xFFFFFFFF00000000) != 0;
        v26 = v24 >= v23;
        v19 = v24 - v23;
        v27 = !v26;
        v9 = 1;
        if (v25)
        {
          break;
        }

        if (v27)
        {
          break;
        }

        v9 = 0;
        ++v14;
        v22 = v19;
        --v15;
      }

      while (v15);
      goto LABEL_119;
    }

LABEL_118:
    v22 = 0;
    v9 = 0;
    goto LABEL_119;
  }

  v44 = 0;
  v45 = a3 + 48;
  v46 = a3 + 55;
  v47 = a3 + 87;
  if (a3 > 10)
  {
    v45 = 58;
  }

  else
  {
    v47 = 97;
    v46 = 65;
  }

  do
  {
    v48 = *v6;
    if (v48 < 0x30 || v48 >= v45)
    {
      if (v48 < 0x41 || v48 >= v46)
      {
        v22 = 0;
        v9 = 1;
        if (v48 < 0x61 || v48 >= v47)
        {
          break;
        }

        v49 = -87;
      }

      else
      {
        v49 = -55;
      }
    }

    else
    {
      v49 = -48;
    }

    v22 = 0;
    v50 = v48 + v49;
    v51 = v44 * a3;
    v52 = (v51 & 0xFFFFFFFF00000000) != 0;
    v26 = __CFADD__(v51, v50);
    v44 = v51 + v50;
    v53 = v26;
    v9 = 1;
    if (v52)
    {
      break;
    }

    if (v53)
    {
      break;
    }

    v9 = 0;
    ++v6;
    v22 = v44;
    --v7;
  }

  while (v7);
LABEL_119:
  v4;
  LOBYTE(v103[0]) = v9;
  return v22 | (v9 << 32);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_71:
    v56 = HIBYTE(v4) & 0xF;
    v103[0] = a1;
    v103[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v56)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v73 = specialized Collection.subscript.getter(1, v103, v56);
        v77 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v73, v74, v75, v76);
        if (v78)
        {
          v79 = a3 + 48;
          v80 = a3 + 55;
          v81 = a3 + 87;
          if (a3 > 10)
          {
            v79 = 58;
          }

          else
          {
            v81 = 97;
            v80 = 65;
          }

          if (!v77)
          {
            goto LABEL_118;
          }

          v82 = 0;
          do
          {
            v83 = *v77;
            if (v83 < 0x30 || v83 >= v79)
            {
              if (v83 < 0x41 || v83 >= v80)
              {
                v22 = 0;
                v9 = 1;
                if (v83 < 0x61 || v83 >= v81)
                {
                  goto LABEL_119;
                }

                v84 = -87;
              }

              else
              {
                v84 = -55;
              }
            }

            else
            {
              v84 = -48;
            }

            v22 = 0;
            v85 = v83 + v84;
            v86 = v82 * a3;
            v87 = v86 != v86;
            v26 = __OFADD__(v86, v85);
            v82 = v86 + v85;
            v88 = v26;
            v9 = 1;
            if (v87)
            {
              break;
            }

            if (v88)
            {
              break;
            }

            v9 = 0;
            ++v77;
            v22 = v82;
            --v78;
          }

          while (v78);
          goto LABEL_119;
        }
      }

      else
      {
        if (a1 != 45)
        {
          v90 = 0;
          v91 = a3 + 48;
          v92 = a3 + 55;
          v93 = a3 + 87;
          if (a3 > 10)
          {
            v91 = 58;
          }

          else
          {
            v93 = 97;
            v92 = 65;
          }

          v94 = v103;
          do
          {
            v95 = *v94;
            if (v95 < 0x30 || v95 >= v91)
            {
              if (v95 < 0x41 || v95 >= v92)
              {
                v22 = 0;
                v9 = 1;
                if (v95 < 0x61 || v95 >= v93)
                {
                  goto LABEL_119;
                }

                v96 = -87;
              }

              else
              {
                v96 = -55;
              }
            }

            else
            {
              v96 = -48;
            }

            v22 = 0;
            v97 = v95 + v96;
            v98 = v90 * a3;
            v99 = v98 != v98;
            v26 = __OFADD__(v98, v97);
            v90 = v98 + v97;
            v100 = v26;
            v9 = 1;
            if (v99)
            {
              break;
            }

            if (v100)
            {
              break;
            }

            v9 = 0;
            ++v94;
            v22 = v90;
            --v56;
          }

          while (v56);
          goto LABEL_119;
        }

        v9 = 1;
        v57 = specialized Collection.subscript.getter(1, v103, v56);
        v61 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v57, v58, v59, v60);
        if (v62)
        {
          v63 = a3 + 48;
          v64 = a3 + 55;
          v65 = a3 + 87;
          if (a3 > 10)
          {
            v63 = 58;
          }

          else
          {
            v65 = 97;
            v64 = 65;
          }

          if (!v61)
          {
            goto LABEL_118;
          }

          v66 = 0;
          do
          {
            v67 = *v61;
            if (v67 < 0x30 || v67 >= v63)
            {
              if (v67 < 0x41 || v67 >= v64)
              {
                v22 = 0;
                v9 = 1;
                if (v67 < 0x61 || v67 >= v65)
                {
                  goto LABEL_119;
                }

                v68 = -87;
              }

              else
              {
                v68 = -55;
              }
            }

            else
            {
              v68 = -48;
            }

            v22 = 0;
            v69 = v67 + v68;
            v70 = v66 * a3;
            v71 = v70 != v70;
            v26 = __OFSUB__(v70, v69);
            v66 = v70 - v69;
            v72 = v26;
            v9 = 1;
            if (v71)
            {
              break;
            }

            if (v72)
            {
              break;
            }

            v9 = 0;
            ++v61;
            v22 = v66;
            --v62;
          }

          while (v62);
          goto LABEL_119;
        }
      }

      goto LABEL_142;
    }

    goto LABEL_141;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v55 = v54;
  v4;
  v4 = v55;
  if ((v55 & 0x2000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_141:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v101 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v102;
  v6 = v101;
  if (v7 <= 0)
  {
    goto LABEL_141;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v9 = 1;
    v28 = specialized Collection.subscript.getter(1, v6, v7);
    v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v29, v30, v31);
    if (v33)
    {
      v34 = a3 + 48;
      v35 = a3 + 55;
      v36 = a3 + 87;
      if (a3 > 10)
      {
        v34 = 58;
      }

      else
      {
        v36 = 97;
        v35 = 65;
      }

      if (!v32)
      {
        goto LABEL_118;
      }

      v37 = 0;
      do
      {
        v38 = *v32;
        if (v38 < 0x30 || v38 >= v34)
        {
          if (v38 < 0x41 || v38 >= v35)
          {
            v22 = 0;
            v9 = 1;
            if (v38 < 0x61 || v38 >= v36)
            {
              goto LABEL_119;
            }

            v39 = -87;
          }

          else
          {
            v39 = -55;
          }
        }

        else
        {
          v39 = -48;
        }

        v22 = 0;
        v40 = v38 + v39;
        v41 = v37 * a3;
        v42 = v41 != v41;
        v26 = __OFADD__(v41, v40);
        v37 = v41 + v40;
        v43 = v26;
        v9 = 1;
        if (v42)
        {
          break;
        }

        if (v43)
        {
          break;
        }

        v9 = 0;
        ++v32;
        v22 = v37;
        --v33;
      }

      while (v33);
      goto LABEL_119;
    }

LABEL_142:
    v22 = 0;
    goto LABEL_119;
  }

  if (v8 == 45)
  {
    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v22 = 0;
      goto LABEL_119;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      v19 = 0;
      do
      {
        v20 = *v14;
        if (v20 < 0x30 || v20 >= v16)
        {
          if (v20 < 0x41 || v20 >= v17)
          {
            v22 = 0;
            v9 = 1;
            if (v20 < 0x61 || v20 >= v18)
            {
              goto LABEL_119;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        v22 = 0;
        v23 = v20 + v21;
        v24 = v19 * a3;
        v25 = v24 != v24;
        v26 = __OFSUB__(v24, v23);
        v19 = v24 - v23;
        v27 = v26;
        v9 = 1;
        if (v25)
        {
          break;
        }

        if (v27)
        {
          break;
        }

        v9 = 0;
        ++v14;
        v22 = v19;
        --v15;
      }

      while (v15);
      goto LABEL_119;
    }

LABEL_118:
    v22 = 0;
    v9 = 0;
    goto LABEL_119;
  }

  v44 = 0;
  v45 = a3 + 48;
  v46 = a3 + 55;
  v47 = a3 + 87;
  if (a3 > 10)
  {
    v45 = 58;
  }

  else
  {
    v47 = 97;
    v46 = 65;
  }

  do
  {
    v48 = *v6;
    if (v48 < 0x30 || v48 >= v45)
    {
      if (v48 < 0x41 || v48 >= v46)
      {
        v22 = 0;
        v9 = 1;
        if (v48 < 0x61 || v48 >= v47)
        {
          break;
        }

        v49 = -87;
      }

      else
      {
        v49 = -55;
      }
    }

    else
    {
      v49 = -48;
    }

    v22 = 0;
    v50 = v48 + v49;
    v51 = v44 * a3;
    v52 = v51 != v51;
    v26 = __OFADD__(v51, v50);
    v44 = v51 + v50;
    v53 = v26;
    v9 = 1;
    if (v52)
    {
      break;
    }

    if (v53)
    {
      break;
    }

    v9 = 0;
    ++v6;
    v22 = v44;
    --v7;
  }

  while (v7);
LABEL_119:
  v4;
  LOBYTE(v103[0]) = v9;
  return v22 | (v9 << 32);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_129;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v76 = v75;
  v4;
  v4 = v76;
  if ((v76 & 0x2000000000000000) != 0)
  {
LABEL_129:
    v77 = HIBYTE(v4) & 0xF;
    v146[0] = a1;
    v146[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (!v77)
    {
      goto LABEL_260;
    }

    if (a1 == 43)
    {
      v89 = specialized Collection.subscript.getter(1, v146, v77);
      v93 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v89, v90, v91, v92);
      if (v94)
      {
        if (a3 <= 10)
        {
          v99 = a3 + 48;
          if (a3 < 0)
          {
            a3 = ~a3;
            v97 = 65;
            v98 = 97;
            v96 = -1;
            v95 = 1;
            if (!v93)
            {
              goto LABEL_220;
            }
          }

          else
          {
            v95 = 0;
            v96 = 0;
            v97 = 65;
            v98 = 97;
            if (!v93)
            {
              goto LABEL_220;
            }
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = a3 + 55;
          v98 = a3 + 87;
          v99 = 58;
          if (!v93)
          {
            goto LABEL_220;
          }
        }

        v37 = 0;
        v131 = 0;
        v132 = v96 ^ a3;
        while (1)
        {
          v133 = *v93;
          if (v133 < 0x30 || v133 >= v99)
          {
            if (v133 < 0x41 || v133 >= v97)
            {
              v41 = 0;
              if (v133 < 0x61 || v133 >= v98)
              {
                goto LABEL_258;
              }

              v134 = -87;
            }

            else
            {
              v134 = -55;
            }
          }

          else
          {
            v134 = -48;
          }

          v41 = 0;
          v135 = !is_mul_ok(v131, v132);
          v136 = !is_mul_ok(v37, v96);
          v137 = __CFADD__(v131 * v132, v37 * v96);
          v138 = (__PAIR128__(v96, v132) * __PAIR128__(v131, v37)) >> 64;
          v139 = __CFADD__(v131 * v132 + v37 * v96, (v37 * v132) >> 64);
          v140 = v131 ? v95 : 0;
          if ((v140 & 1) != 0 || v135 || v136 || v137)
          {
            goto LABEL_258;
          }

          v141 = v37 * v132;
          v49 = __CFADD__(v141, (v133 + v134));
          v37 = v141 + (v133 + v134);
          v142 = v49;
          if (v138 == -1)
          {
            if ((v142 | v139))
            {
LABEL_255:
              v41 = 0;
              goto LABEL_258;
            }

            v131 = -1;
          }

          else if (v142)
          {
            if (v139)
            {
              goto LABEL_255;
            }

            v131 = v138 + 1;
          }

          else
          {
            v131 = v138;
            if (v139)
            {
              goto LABEL_255;
            }
          }

          ++v93;
          if (!--v94)
          {
LABEL_256:
            v41 = v37;
            goto LABEL_258;
          }
        }
      }

      goto LABEL_261;
    }

    if (a1 != 45)
    {
      if (a3 <= 10)
      {
        v104 = a3 + 48;
        if (a3 < 0)
        {
          a3 = ~a3;
          v102 = 65;
          v103 = 97;
          v101 = -1;
          v100 = 1;
        }

        else
        {
          v100 = 0;
          v101 = 0;
          v102 = 65;
          v103 = 97;
        }
      }

      else
      {
        v100 = 0;
        v101 = 0;
        v102 = a3 + 55;
        v103 = a3 + 87;
        v104 = 58;
      }

      v105 = 0;
      v106 = 0;
      v107 = v101 ^ a3;
      v108 = v146;
      while (1)
      {
        v109 = *v108;
        if (v109 < 0x30 || v109 >= v104)
        {
          if (v109 < 0x41 || v109 >= v102)
          {
            v41 = 0;
            if (v109 < 0x61 || v109 >= v103)
            {
              goto LABEL_258;
            }

            v110 = -87;
          }

          else
          {
            v110 = -55;
          }
        }

        else
        {
          v110 = -48;
        }

        v41 = 0;
        v111 = !is_mul_ok(v105, v107);
        v112 = !is_mul_ok(v106, v101);
        v113 = __CFADD__(v105 * v107, v106 * v101);
        v114 = (__PAIR128__(v101, v107) * __PAIR128__(v105, v106)) >> 64;
        v115 = __CFADD__(v105 * v107 + v106 * v101, (v106 * v107) >> 64);
        v116 = v105 ? v100 : 0;
        if ((v116 & 1) != 0 || v111 || v112 || v113)
        {
          goto LABEL_258;
        }

        v117 = v106 * v107;
        v49 = __CFADD__(v117, (v109 + v110));
        v106 = v117 + (v109 + v110);
        v118 = v49;
        if (v114 == -1)
        {
          if ((v118 | v115))
          {
            goto LABEL_255;
          }

          v105 = -1;
        }

        else if (v118)
        {
          if (v115)
          {
            goto LABEL_255;
          }

          v105 = v114 + 1;
        }

        else
        {
          v105 = v114;
          if (v115)
          {
            goto LABEL_255;
          }
        }

        ++v108;
        if (!--v77)
        {
          v41 = v106;
          goto LABEL_258;
        }
      }
    }

    v78 = specialized Collection.subscript.getter(1, v146, v77);
    v82 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v78, v79, v80, v81);
    if (!v83)
    {
      goto LABEL_261;
    }

    if (a3 <= 10)
    {
      v88 = a3 + 48;
      if (a3 < 0)
      {
        a3 = ~a3;
        v86 = 65;
        v87 = 97;
        v85 = -1;
        v84 = 1;
        if (!v82)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = 65;
        v87 = 97;
        if (!v82)
        {
          goto LABEL_220;
        }
      }
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v86 = a3 + 55;
      v87 = a3 + 87;
      v88 = 58;
      if (!v82)
      {
        goto LABEL_220;
      }
    }

    v119 = 0;
    v120 = 0;
    v121 = v85 ^ a3;
    while (1)
    {
      v122 = *v82;
      if (v122 < 0x30 || v122 >= v88)
      {
        if (v122 < 0x41 || v122 >= v86)
        {
          v41 = 0;
          if (v122 < 0x61 || v122 >= v87)
          {
            goto LABEL_258;
          }

          v123 = -87;
        }

        else
        {
          v123 = -55;
        }
      }

      else
      {
        v123 = -48;
      }

      v41 = 0;
      v124 = !is_mul_ok(v120, v121);
      v125 = !is_mul_ok(v119, v85);
      v126 = __CFADD__(v120 * v121, v119 * v85);
      v127 = (__PAIR128__(v85, v121) * __PAIR128__(v120, v119)) >> 64;
      v128 = __CFADD__(v120 * v121 + v119 * v85, (v119 * v121) >> 64);
      if (v120)
      {
        v129 = v84;
      }

      else
      {
        v129 = 0;
      }

      if ((v129 & 1) != 0 || v124 || v125 || v126)
      {
        goto LABEL_258;
      }

      v130 = v119 * v121;
      v41 = v130 - (v122 + v123);
      if (v130 < (v122 + v123))
      {
        break;
      }

      if (v127)
      {
        goto LABEL_213;
      }

      if (v128)
      {
LABEL_217:
        v41 = 0;
        goto LABEL_258;
      }

LABEL_214:
      ++v82;
      v119 = v130 - (v122 + v123);
      v120 = v127;
      if (!--v83)
      {
        goto LABEL_258;
      }
    }

    if (!v127)
    {
      goto LABEL_255;
    }

    --v127;
LABEL_213:
    if (v128)
    {
      goto LABEL_255;
    }

    goto LABEL_214;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_260:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v144 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v145;
  v6 = v144;
  if (v7 <= 0)
  {
    goto LABEL_260;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v20 = specialized Collection.subscript.getter(1, v6, v7);
    v24 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v20, v21, v22, v23);
    if (v25)
    {
      if (a3 <= 10)
      {
        v30 = a3 + 48;
        if (a3 < 0)
        {
          a3 = ~a3;
          v28 = 65;
          v29 = 97;
          v27 = -1;
          v26 = 1;
          if (!v24)
          {
            goto LABEL_220;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 65;
          v29 = 97;
          if (!v24)
          {
            goto LABEL_220;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = a3 + 55;
        v29 = a3 + 87;
        v30 = 58;
        if (!v24)
        {
          goto LABEL_220;
        }
      }

      v37 = 0;
      v63 = 0;
      v64 = v27 ^ a3;
      while (1)
      {
        v65 = *v24;
        if (v65 < 0x30 || v65 >= v30)
        {
          if (v65 < 0x41 || v65 >= v28)
          {
            v41 = 0;
            if (v65 < 0x61 || v65 >= v29)
            {
              goto LABEL_258;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v41 = 0;
        v67 = !is_mul_ok(v63, v64);
        v68 = !is_mul_ok(v37, v27);
        v69 = __CFADD__(v63 * v64, v37 * v27);
        v70 = (__PAIR128__(v27, v64) * __PAIR128__(v63, v37)) >> 64;
        v71 = __CFADD__(v63 * v64 + v37 * v27, (v37 * v64) >> 64);
        v72 = v63 ? v26 : 0;
        if ((v72 & 1) != 0 || v67 || v68 || v69)
        {
          goto LABEL_258;
        }

        v73 = v37 * v64;
        v49 = __CFADD__(v73, (v65 + v66));
        v37 = v73 + (v65 + v66);
        v74 = v49;
        if (v70 == -1)
        {
          if ((v74 | v71))
          {
            goto LABEL_255;
          }

          v63 = -1;
        }

        else if (v74)
        {
          if (v71)
          {
            goto LABEL_255;
          }

          v63 = v70 + 1;
        }

        else
        {
          v63 = v70;
          if (v71)
          {
            goto LABEL_255;
          }
        }

        ++v24;
        if (!--v25)
        {
          goto LABEL_256;
        }
      }
    }

LABEL_261:
    v41 = 0;
    goto LABEL_258;
  }

  if (v8 == 45)
  {
    v9 = specialized Collection.subscript.getter(1, v6, v7);
    v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
    if (!v14)
    {
      v41 = 0;
      goto LABEL_258;
    }

    if (a3 > 10)
    {
      v15 = 0;
      v16 = 0;
      v17 = a3 + 55;
      v18 = a3 + 87;
      v19 = 58;
      if (!v13)
      {
        goto LABEL_220;
      }

      goto LABEL_61;
    }

    v19 = a3 + 48;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 65;
      v18 = 97;
      if (!v13)
      {
        goto LABEL_220;
      }

      goto LABEL_61;
    }

    a3 = ~a3;
    v17 = 65;
    v18 = 97;
    v16 = -1;
    v15 = 1;
    if (v13)
    {
LABEL_61:
      v51 = 0;
      v52 = 0;
      v53 = v16 ^ a3;
      while (1)
      {
        v54 = *v13;
        if (v54 < 0x30 || v54 >= v19)
        {
          if (v54 < 0x41 || v54 >= v17)
          {
            v41 = 0;
            if (v54 < 0x61 || v54 >= v18)
            {
              goto LABEL_258;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v41 = 0;
        v56 = !is_mul_ok(v52, v53);
        v57 = !is_mul_ok(v51, v16);
        v58 = __CFADD__(v52 * v53, v51 * v16);
        v59 = (__PAIR128__(v16, v53) * __PAIR128__(v52, v51)) >> 64;
        v60 = __CFADD__(v52 * v53 + v51 * v16, (v51 * v53) >> 64);
        if (v52)
        {
          v61 = v15;
        }

        else
        {
          v61 = 0;
        }

        if ((v61 & 1) != 0 || v56 || v57 || v58)
        {
          goto LABEL_258;
        }

        v62 = v51 * v53;
        v41 = v62 - (v54 + v55);
        if (v62 < (v54 + v55))
        {
          break;
        }

        if (v59)
        {
          goto LABEL_88;
        }

        if (v60)
        {
          goto LABEL_217;
        }

LABEL_89:
        ++v13;
        v51 = v62 - (v54 + v55);
        v52 = v59;
        if (!--v14)
        {
          goto LABEL_258;
        }
      }

      if (!v59)
      {
        goto LABEL_255;
      }

      --v59;
LABEL_88:
      if (v60)
      {
        goto LABEL_255;
      }

      goto LABEL_89;
    }

LABEL_220:
    v41 = 0;
    goto LABEL_258;
  }

  if (a3 <= 10)
  {
    v35 = a3 + 48;
    if (a3 < 0)
    {
      a3 = ~a3;
      v33 = 65;
      v34 = 97;
      v32 = -1;
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = 65;
      v34 = 97;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = a3 + 55;
    v34 = a3 + 87;
    v35 = 58;
  }

  v36 = 0;
  v37 = 0;
  v38 = v32 ^ a3;
  while (1)
  {
    v39 = *v6;
    if (v39 < 0x30 || v39 >= v35)
    {
      if (v39 < 0x41 || v39 >= v33)
      {
        v41 = 0;
        if (v39 < 0x61 || v39 >= v34)
        {
          break;
        }

        v40 = -87;
      }

      else
      {
        v40 = -55;
      }
    }

    else
    {
      v40 = -48;
    }

    v41 = 0;
    v42 = !is_mul_ok(v36, v38);
    v43 = !is_mul_ok(v37, v32);
    v44 = __CFADD__(v36 * v38, v37 * v32);
    v45 = (__PAIR128__(v32, v38) * __PAIR128__(v36, v37)) >> 64;
    v46 = __CFADD__(v36 * v38 + v37 * v32, (v37 * v38) >> 64);
    v47 = v36 ? v31 : 0;
    if ((v47 & 1) != 0 || v42 || v43 || v44)
    {
      break;
    }

    v48 = v37 * v38;
    v49 = __CFADD__(v48, (v39 + v40));
    v37 = v48 + (v39 + v40);
    v50 = v49;
    if (v45 == -1)
    {
      if ((v50 | v46))
      {
        goto LABEL_255;
      }

      v36 = -1;
    }

    else if (v50)
    {
      if (v46)
      {
        goto LABEL_255;
      }

      v36 = v45 + 1;
    }

    else
    {
      v36 = v45;
      if (v46)
      {
        goto LABEL_255;
      }
    }

    ++v6;
    if (!--v7)
    {
      goto LABEL_256;
    }
  }

LABEL_258:
  v4;
  return v41;
}

uint64_t specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_62:
    v47 = HIBYTE(v4) & 0xF;
    v86[0] = a1;
    v86[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v47)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v62 = specialized Collection.subscript.getter(1, v86, v47);
        v66 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v62, v63, v64, v65);
        if (v67)
        {
          v68 = a3 + 48;
          v69 = a3 + 55;
          v70 = a3 + 87;
          if (a3 > 10)
          {
            v68 = 58;
          }

          else
          {
            v70 = 97;
            v69 = 65;
          }

          if (v66)
          {
            LOBYTE(v71) = 0;
            while (1)
            {
              v72 = *v66;
              if (v72 < 0x30 || v72 >= v68)
              {
                if (v72 < 0x41 || v72 >= v69)
                {
                  v22 = 0;
                  v9 = 1;
                  if (v72 < 0x61 || v72 >= v70)
                  {
                    goto LABEL_104;
                  }

                  v73 = -87;
                }

                else
                {
                  v73 = -55;
                }
              }

              else
              {
                v73 = -48;
              }

              v22 = 0;
              v74 = v71 * a3;
              v9 = 1;
              if ((v74 & 0xFF00) == 0)
              {
                v71 = v74 + (v72 + v73);
                if (((v71 >> 8) & 1) == 0)
                {
                  v9 = 0;
                  ++v66;
                  v22 = v71;
                  if (--v67)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_103;
        }
      }

      else
      {
        if (a1 != 45)
        {
          LOBYTE(v76) = 0;
          v77 = a3 + 48;
          v78 = a3 + 55;
          v79 = a3 + 87;
          if (a3 > 10)
          {
            v77 = 58;
          }

          else
          {
            v79 = 97;
            v78 = 65;
          }

          v80 = v86;
          while (1)
          {
            v81 = *v80;
            if (v81 < 0x30 || v81 >= v77)
            {
              if (v81 < 0x41 || v81 >= v78)
              {
                v22 = 0;
                v9 = 1;
                if (v81 < 0x61 || v81 >= v79)
                {
                  goto LABEL_104;
                }

                v82 = -87;
              }

              else
              {
                v82 = -55;
              }
            }

            else
            {
              v82 = -48;
            }

            v22 = 0;
            v83 = v76 * a3;
            v9 = 1;
            if ((v83 & 0xFF00) == 0)
            {
              v76 = v83 + (v81 + v82);
              if (((v76 >> 8) & 1) == 0)
              {
                v9 = 0;
                ++v80;
                v22 = v76;
                if (--v47)
                {
                  continue;
                }
              }
            }

            goto LABEL_104;
          }
        }

        v9 = 1;
        v48 = specialized Collection.subscript.getter(1, v86, v47);
        v52 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v48, v49, v50, v51);
        if (v53)
        {
          v54 = a3 + 48;
          v55 = a3 + 55;
          v56 = a3 + 87;
          if (a3 > 10)
          {
            v54 = 58;
          }

          else
          {
            v56 = 97;
            v55 = 65;
          }

          if (v52)
          {
            LOBYTE(v57) = 0;
            while (1)
            {
              v58 = *v52;
              if (v58 < 0x30 || v58 >= v54)
              {
                if (v58 < 0x41 || v58 >= v55)
                {
                  v22 = 0;
                  v9 = 1;
                  if (v58 < 0x61 || v58 >= v56)
                  {
                    goto LABEL_104;
                  }

                  v59 = -87;
                }

                else
                {
                  v59 = -55;
                }
              }

              else
              {
                v59 = -48;
              }

              v22 = 0;
              v60 = v58 + v59;
              v61 = v57 * a3;
              v57 = (v57 * a3) - v60;
              v9 = 1;
              if ((v61 & 0xFF00) == 0 && (v57 & 0xFFFFFF00) == 0)
              {
                v9 = 0;
                ++v52;
                v22 = v57;
                if (--v53)
                {
                  continue;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_103;
        }
      }

LABEL_124:
      v22 = 0;
      goto LABEL_104;
    }

    goto LABEL_123;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v46 = v45;
  v4;
  v4 = v46;
  if ((v46 & 0x2000000000000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_123:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v84 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v85;
  v6 = v84;
  if (v7 <= 0)
  {
    goto LABEL_123;
  }

LABEL_5:
  v8 = *v6;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      LOBYTE(v38) = 0;
      v39 = a3 + 48;
      v40 = a3 + 55;
      v41 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v41 = 97;
        v40 = 65;
      }

      while (1)
      {
        v42 = *v6;
        if (v42 < 0x30 || v42 >= v39)
        {
          if (v42 < 0x41 || v42 >= v40)
          {
            v22 = 0;
            v9 = 1;
            if (v42 < 0x61 || v42 >= v41)
            {
              goto LABEL_104;
            }

            v43 = -87;
          }

          else
          {
            v43 = -55;
          }
        }

        else
        {
          v43 = -48;
        }

        v22 = 0;
        v44 = v38 * a3;
        v9 = 1;
        if ((v44 & 0xFF00) == 0)
        {
          v38 = v44 + (v42 + v43);
          if (((v38 >> 8) & 1) == 0)
          {
            v9 = 0;
            ++v6;
            v22 = v38;
            if (--v7)
            {
              continue;
            }
          }
        }

        goto LABEL_104;
      }
    }

    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v22 = 0;
      goto LABEL_104;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      LOBYTE(v19) = 0;
      while (1)
      {
        v20 = *v14;
        if (v20 < 0x30 || v20 >= v16)
        {
          if (v20 < 0x41 || v20 >= v17)
          {
            v22 = 0;
            v9 = 1;
            if (v20 < 0x61 || v20 >= v18)
            {
              goto LABEL_104;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        v22 = 0;
        v23 = v20 + v21;
        v24 = v19 * a3;
        v19 = (v19 * a3) - v23;
        v9 = 1;
        if ((v24 & 0xFF00) == 0 && (v19 & 0xFFFFFF00) == 0)
        {
          v9 = 0;
          ++v14;
          v22 = v19;
          if (--v15)
          {
            continue;
          }
        }

        goto LABEL_104;
      }
    }

    goto LABEL_103;
  }

  v9 = 1;
  v25 = specialized Collection.subscript.getter(1, v6, v7);
  v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
  if (!v30)
  {
    goto LABEL_124;
  }

  v31 = a3 + 48;
  v32 = a3 + 55;
  v33 = a3 + 87;
  if (a3 > 10)
  {
    v31 = 58;
  }

  else
  {
    v33 = 97;
    v32 = 65;
  }

  if (v29)
  {
    LOBYTE(v34) = 0;
    while (1)
    {
      v35 = *v29;
      if (v35 < 0x30 || v35 >= v31)
      {
        if (v35 < 0x41 || v35 >= v32)
        {
          v22 = 0;
          v9 = 1;
          if (v35 < 0x61 || v35 >= v33)
          {
            goto LABEL_104;
          }

          v36 = -87;
        }

        else
        {
          v36 = -55;
        }
      }

      else
      {
        v36 = -48;
      }

      v22 = 0;
      v37 = v34 * a3;
      v9 = 1;
      if ((v37 & 0xFF00) == 0)
      {
        v34 = v37 + (v35 + v36);
        if (((v34 >> 8) & 1) == 0)
        {
          v9 = 0;
          ++v29;
          v22 = v34;
          if (--v30)
          {
            continue;
          }
        }
      }

      goto LABEL_104;
    }
  }

LABEL_103:
  v22 = 0;
  v9 = 0;
LABEL_104:
  v4;
  return v22 | (v9 << 8);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_63:
    v58 = HIBYTE(v4) & 0xF;
    v108[0] = a1;
    v108[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v58)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v76 = specialized Collection.subscript.getter(1, v108, v58);
        v80 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v76, v77, v78, v79);
        if (v81)
        {
          v82 = a3 + 48;
          v83 = a3 + 55;
          v84 = a3 + 87;
          if (a3 > 10)
          {
            v82 = 58;
          }

          else
          {
            v84 = 97;
            v83 = 65;
          }

          if (v80)
          {
            LOBYTE(v85) = 0;
            v86 = a3;
            while (1)
            {
              v87 = *v80;
              if (v87 < 0x30 || v87 >= v82)
              {
                if (v87 < 0x41 || v87 >= v83)
                {
                  v23 = 0;
                  v9 = 1;
                  if (v87 < 0x61 || v87 >= v84)
                  {
                    goto LABEL_105;
                  }

                  v88 = -87;
                }

                else
                {
                  v88 = -55;
                }
              }

              else
              {
                v88 = -48;
              }

              v23 = 0;
              v89 = v87 + v88;
              v90 = v85 * v86;
              v91 = (v85 * v86);
              v85 = v91 + v89;
              v92 = v85 != (v91 + v89);
              v9 = 1;
              if (v91 == v90 && !v92)
              {
                v9 = 0;
                ++v80;
                v23 = v85;
                if (--v81)
                {
                  continue;
                }
              }

              goto LABEL_105;
            }
          }

          goto LABEL_104;
        }
      }

      else
      {
        if (a1 != 45)
        {
          LOBYTE(v94) = 0;
          v95 = a3 + 48;
          v96 = a3 + 55;
          v97 = a3 + 87;
          if (a3 > 10)
          {
            v95 = 58;
          }

          else
          {
            v97 = 97;
            v96 = 65;
          }

          v98 = v108;
          v99 = a3;
          while (1)
          {
            v100 = *v98;
            if (v100 < 0x30 || v100 >= v95)
            {
              if (v100 < 0x41 || v100 >= v96)
              {
                v23 = 0;
                v9 = 1;
                if (v100 < 0x61 || v100 >= v97)
                {
                  goto LABEL_105;
                }

                v101 = -87;
              }

              else
              {
                v101 = -55;
              }
            }

            else
            {
              v101 = -48;
            }

            v23 = 0;
            v102 = v100 + v101;
            v103 = v94 * v99;
            v104 = (v94 * v99);
            v94 = v104 + v102;
            v105 = v94 != (v104 + v102);
            v9 = 1;
            if (v104 == v103 && !v105)
            {
              v9 = 0;
              ++v98;
              v23 = v94;
              if (--v58)
              {
                continue;
              }
            }

            goto LABEL_105;
          }
        }

        v9 = 1;
        v59 = specialized Collection.subscript.getter(1, v108, v58);
        v63 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v59, v60, v61, v62);
        if (v64)
        {
          v65 = a3 + 48;
          v66 = a3 + 55;
          v67 = a3 + 87;
          if (a3 > 10)
          {
            v65 = 58;
          }

          else
          {
            v67 = 97;
            v66 = 65;
          }

          if (v63)
          {
            LOBYTE(v68) = 0;
            v69 = a3;
            while (1)
            {
              v70 = *v63;
              if (v70 < 0x30 || v70 >= v65)
              {
                if (v70 < 0x41 || v70 >= v66)
                {
                  v23 = 0;
                  v9 = 1;
                  if (v70 < 0x61 || v70 >= v67)
                  {
                    goto LABEL_105;
                  }

                  v71 = -87;
                }

                else
                {
                  v71 = -55;
                }
              }

              else
              {
                v71 = -48;
              }

              v23 = 0;
              v72 = v70 + v71;
              v73 = v68 * v69;
              v74 = (v68 * v69);
              v68 = v74 - v72;
              v75 = v68 != (v74 - v72);
              v9 = 1;
              if (v74 == v73 && !v75)
              {
                v9 = 0;
                ++v63;
                v23 = v68;
                if (--v64)
                {
                  continue;
                }
              }

              goto LABEL_105;
            }
          }

          goto LABEL_104;
        }
      }

LABEL_125:
      v23 = 0;
      goto LABEL_105;
    }

    goto LABEL_124;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v57 = v56;
  v4;
  v4 = v57;
  if ((v57 & 0x2000000000000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_124:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v106 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v107;
  v6 = v106;
  if (v7 <= 0)
  {
    goto LABEL_124;
  }

LABEL_5:
  v8 = *v6;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      LOBYTE(v45) = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = a3;
      while (1)
      {
        v50 = *v6;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v23 = 0;
            v9 = 1;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_105;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v23 = 0;
        v52 = v50 + v51;
        v53 = v45 * v49;
        v54 = (v45 * v49);
        v45 = v54 + v52;
        v55 = v45 != (v54 + v52);
        v9 = 1;
        if (v54 == v53 && !v55)
        {
          v9 = 0;
          ++v6;
          v23 = v45;
          if (--v7)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v23 = 0;
      goto LABEL_105;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      LOBYTE(v19) = 0;
      v20 = a3;
      while (1)
      {
        v21 = *v14;
        if (v21 < 0x30 || v21 >= v16)
        {
          if (v21 < 0x41 || v21 >= v17)
          {
            v23 = 0;
            v9 = 1;
            if (v21 < 0x61 || v21 >= v18)
            {
              goto LABEL_105;
            }

            v22 = -87;
          }

          else
          {
            v22 = -55;
          }
        }

        else
        {
          v22 = -48;
        }

        v23 = 0;
        v24 = v21 + v22;
        v25 = v19 * v20;
        v26 = (v19 * v20);
        v19 = v26 - v24;
        v27 = v19 != (v26 - v24);
        v9 = 1;
        if (v26 == v25 && !v27)
        {
          v9 = 0;
          ++v14;
          v23 = v19;
          if (--v15)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    goto LABEL_104;
  }

  v9 = 1;
  v28 = specialized Collection.subscript.getter(1, v6, v7);
  v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v29, v30, v31);
  if (!v33)
  {
    goto LABEL_125;
  }

  v34 = a3 + 48;
  v35 = a3 + 55;
  v36 = a3 + 87;
  if (a3 > 10)
  {
    v34 = 58;
  }

  else
  {
    v36 = 97;
    v35 = 65;
  }

  if (v32)
  {
    LOBYTE(v37) = 0;
    v38 = a3;
    while (1)
    {
      v39 = *v32;
      if (v39 < 0x30 || v39 >= v34)
      {
        if (v39 < 0x41 || v39 >= v35)
        {
          v23 = 0;
          v9 = 1;
          if (v39 < 0x61 || v39 >= v36)
          {
            goto LABEL_105;
          }

          v40 = -87;
        }

        else
        {
          v40 = -55;
        }
      }

      else
      {
        v40 = -48;
      }

      v23 = 0;
      v41 = v39 + v40;
      v42 = v37 * v38;
      v43 = (v37 * v38);
      v37 = v43 + v41;
      v44 = v37 != (v43 + v41);
      v9 = 1;
      if (v43 == v42 && !v44)
      {
        v9 = 0;
        ++v32;
        v23 = v37;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_105;
    }
  }

LABEL_104:
  v23 = 0;
  v9 = 0;
LABEL_105:
  v4;
  return v23 | (v9 << 8);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_62:
    v47 = HIBYTE(v4) & 0xF;
    v86[0] = a1;
    v86[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v47)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v62 = specialized Collection.subscript.getter(1, v86, v47);
        v66 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v62, v63, v64, v65);
        if (v67)
        {
          v68 = a3 + 48;
          v69 = a3 + 55;
          v70 = a3 + 87;
          if (a3 > 10)
          {
            v68 = 58;
          }

          else
          {
            v70 = 97;
            v69 = 65;
          }

          if (v66)
          {
            LOWORD(v71) = 0;
            while (1)
            {
              v72 = *v66;
              if (v72 < 0x30 || v72 >= v68)
              {
                if (v72 < 0x41 || v72 >= v69)
                {
                  v22 = 0;
                  v9 = 1;
                  if (v72 < 0x61 || v72 >= v70)
                  {
                    goto LABEL_104;
                  }

                  v73 = -87;
                }

                else
                {
                  v73 = -55;
                }
              }

              else
              {
                v73 = -48;
              }

              v22 = 0;
              v74 = v71 * a3;
              v9 = 1;
              if ((v74 & 0xFFFF0000) == 0)
              {
                v71 = v74 + (v72 + v73);
                if ((v71 & 0x10000) == 0)
                {
                  v9 = 0;
                  ++v66;
                  v22 = v71;
                  if (--v67)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_103;
        }
      }

      else
      {
        if (a1 != 45)
        {
          LOWORD(v76) = 0;
          v77 = a3 + 48;
          v78 = a3 + 55;
          v79 = a3 + 87;
          if (a3 > 10)
          {
            v77 = 58;
          }

          else
          {
            v79 = 97;
            v78 = 65;
          }

          v80 = v86;
          while (1)
          {
            v81 = *v80;
            if (v81 < 0x30 || v81 >= v77)
            {
              if (v81 < 0x41 || v81 >= v78)
              {
                v22 = 0;
                v9 = 1;
                if (v81 < 0x61 || v81 >= v79)
                {
                  goto LABEL_104;
                }

                v82 = -87;
              }

              else
              {
                v82 = -55;
              }
            }

            else
            {
              v82 = -48;
            }

            v22 = 0;
            v83 = v76 * a3;
            v9 = 1;
            if ((v83 & 0xFFFF0000) == 0)
            {
              v76 = v83 + (v81 + v82);
              if ((v76 & 0x10000) == 0)
              {
                v9 = 0;
                ++v80;
                v22 = v76;
                if (--v47)
                {
                  continue;
                }
              }
            }

            goto LABEL_104;
          }
        }

        v9 = 1;
        v48 = specialized Collection.subscript.getter(1, v86, v47);
        v52 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v48, v49, v50, v51);
        if (v53)
        {
          v54 = a3 + 48;
          v55 = a3 + 55;
          v56 = a3 + 87;
          if (a3 > 10)
          {
            v54 = 58;
          }

          else
          {
            v56 = 97;
            v55 = 65;
          }

          if (v52)
          {
            LOWORD(v57) = 0;
            while (1)
            {
              v58 = *v52;
              if (v58 < 0x30 || v58 >= v54)
              {
                if (v58 < 0x41 || v58 >= v55)
                {
                  v22 = 0;
                  v9 = 1;
                  if (v58 < 0x61 || v58 >= v56)
                  {
                    goto LABEL_104;
                  }

                  v59 = -87;
                }

                else
                {
                  v59 = -55;
                }
              }

              else
              {
                v59 = -48;
              }

              v22 = 0;
              v60 = v58 + v59;
              v61 = v57 * a3;
              v57 = (v57 * a3) - v60;
              v9 = 1;
              if ((v61 & 0xFFFF0000) == 0 && (v57 & 0xFFFF0000) == 0)
              {
                v9 = 0;
                ++v52;
                v22 = v57;
                if (--v53)
                {
                  continue;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_103;
        }
      }

LABEL_124:
      v22 = 0;
      goto LABEL_104;
    }

    goto LABEL_123;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v46 = v45;
  v4;
  v4 = v46;
  if ((v46 & 0x2000000000000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_123:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v84 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v85;
  v6 = v84;
  if (v7 <= 0)
  {
    goto LABEL_123;
  }

LABEL_5:
  v8 = *v6;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      LOWORD(v38) = 0;
      v39 = a3 + 48;
      v40 = a3 + 55;
      v41 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v41 = 97;
        v40 = 65;
      }

      while (1)
      {
        v42 = *v6;
        if (v42 < 0x30 || v42 >= v39)
        {
          if (v42 < 0x41 || v42 >= v40)
          {
            v22 = 0;
            v9 = 1;
            if (v42 < 0x61 || v42 >= v41)
            {
              goto LABEL_104;
            }

            v43 = -87;
          }

          else
          {
            v43 = -55;
          }
        }

        else
        {
          v43 = -48;
        }

        v22 = 0;
        v44 = v38 * a3;
        v9 = 1;
        if ((v44 & 0xFFFF0000) == 0)
        {
          v38 = v44 + (v42 + v43);
          if ((v38 & 0x10000) == 0)
          {
            v9 = 0;
            ++v6;
            v22 = v38;
            if (--v7)
            {
              continue;
            }
          }
        }

        goto LABEL_104;
      }
    }

    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v22 = 0;
      goto LABEL_104;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      LOWORD(v19) = 0;
      while (1)
      {
        v20 = *v14;
        if (v20 < 0x30 || v20 >= v16)
        {
          if (v20 < 0x41 || v20 >= v17)
          {
            v22 = 0;
            v9 = 1;
            if (v20 < 0x61 || v20 >= v18)
            {
              goto LABEL_104;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        v22 = 0;
        v23 = v20 + v21;
        v24 = v19 * a3;
        v19 = (v19 * a3) - v23;
        v9 = 1;
        if ((v24 & 0xFFFF0000) == 0 && (v19 & 0xFFFF0000) == 0)
        {
          v9 = 0;
          ++v14;
          v22 = v19;
          if (--v15)
          {
            continue;
          }
        }

        goto LABEL_104;
      }
    }

    goto LABEL_103;
  }

  v9 = 1;
  v25 = specialized Collection.subscript.getter(1, v6, v7);
  v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
  if (!v30)
  {
    goto LABEL_124;
  }

  v31 = a3 + 48;
  v32 = a3 + 55;
  v33 = a3 + 87;
  if (a3 > 10)
  {
    v31 = 58;
  }

  else
  {
    v33 = 97;
    v32 = 65;
  }

  if (v29)
  {
    LOWORD(v34) = 0;
    while (1)
    {
      v35 = *v29;
      if (v35 < 0x30 || v35 >= v31)
      {
        if (v35 < 0x41 || v35 >= v32)
        {
          v22 = 0;
          v9 = 1;
          if (v35 < 0x61 || v35 >= v33)
          {
            goto LABEL_104;
          }

          v36 = -87;
        }

        else
        {
          v36 = -55;
        }
      }

      else
      {
        v36 = -48;
      }

      v22 = 0;
      v37 = v34 * a3;
      v9 = 1;
      if ((v37 & 0xFFFF0000) == 0)
      {
        v34 = v37 + (v35 + v36);
        if ((v34 & 0x10000) == 0)
        {
          v9 = 0;
          ++v29;
          v22 = v34;
          if (--v30)
          {
            continue;
          }
        }
      }

      goto LABEL_104;
    }
  }

LABEL_103:
  v22 = 0;
  v9 = 0;
LABEL_104:
  v4;
  return v22 | (v9 << 16);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_63:
    v58 = HIBYTE(v4) & 0xF;
    v108[0] = a1;
    v108[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v58)
    {
      if (a1 == 43)
      {
        v9 = 1;
        v76 = specialized Collection.subscript.getter(1, v108, v58);
        v80 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v76, v77, v78, v79);
        if (v81)
        {
          v82 = a3 + 48;
          v83 = a3 + 55;
          v84 = a3 + 87;
          if (a3 > 10)
          {
            v82 = 58;
          }

          else
          {
            v84 = 97;
            v83 = 65;
          }

          if (v80)
          {
            LOWORD(v85) = 0;
            v86 = a3;
            while (1)
            {
              v87 = *v80;
              if (v87 < 0x30 || v87 >= v82)
              {
                if (v87 < 0x41 || v87 >= v83)
                {
                  v23 = 0;
                  v9 = 1;
                  if (v87 < 0x61 || v87 >= v84)
                  {
                    goto LABEL_105;
                  }

                  v88 = -87;
                }

                else
                {
                  v88 = -55;
                }
              }

              else
              {
                v88 = -48;
              }

              v23 = 0;
              v89 = v87 + v88;
              v90 = v85 * v86;
              v91 = (v85 * v86);
              v85 = v91 + v89;
              v92 = v85 != (v91 + v89);
              v9 = 1;
              if (v91 == v90 && !v92)
              {
                v9 = 0;
                ++v80;
                v23 = v85;
                if (--v81)
                {
                  continue;
                }
              }

              goto LABEL_105;
            }
          }

          goto LABEL_104;
        }
      }

      else
      {
        if (a1 != 45)
        {
          LOWORD(v94) = 0;
          v95 = a3 + 48;
          v96 = a3 + 55;
          v97 = a3 + 87;
          if (a3 > 10)
          {
            v95 = 58;
          }

          else
          {
            v97 = 97;
            v96 = 65;
          }

          v98 = v108;
          v99 = a3;
          while (1)
          {
            v100 = *v98;
            if (v100 < 0x30 || v100 >= v95)
            {
              if (v100 < 0x41 || v100 >= v96)
              {
                v23 = 0;
                v9 = 1;
                if (v100 < 0x61 || v100 >= v97)
                {
                  goto LABEL_105;
                }

                v101 = -87;
              }

              else
              {
                v101 = -55;
              }
            }

            else
            {
              v101 = -48;
            }

            v23 = 0;
            v102 = v100 + v101;
            v103 = v94 * v99;
            v104 = (v94 * v99);
            v94 = v104 + v102;
            v105 = v94 != (v104 + v102);
            v9 = 1;
            if (v104 == v103 && !v105)
            {
              v9 = 0;
              ++v98;
              v23 = v94;
              if (--v58)
              {
                continue;
              }
            }

            goto LABEL_105;
          }
        }

        v9 = 1;
        v59 = specialized Collection.subscript.getter(1, v108, v58);
        v63 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v59, v60, v61, v62);
        if (v64)
        {
          v65 = a3 + 48;
          v66 = a3 + 55;
          v67 = a3 + 87;
          if (a3 > 10)
          {
            v65 = 58;
          }

          else
          {
            v67 = 97;
            v66 = 65;
          }

          if (v63)
          {
            LOWORD(v68) = 0;
            v69 = a3;
            while (1)
            {
              v70 = *v63;
              if (v70 < 0x30 || v70 >= v65)
              {
                if (v70 < 0x41 || v70 >= v66)
                {
                  v23 = 0;
                  v9 = 1;
                  if (v70 < 0x61 || v70 >= v67)
                  {
                    goto LABEL_105;
                  }

                  v71 = -87;
                }

                else
                {
                  v71 = -55;
                }
              }

              else
              {
                v71 = -48;
              }

              v23 = 0;
              v72 = v70 + v71;
              v73 = v68 * v69;
              v74 = (v68 * v69);
              v68 = v74 - v72;
              v75 = v68 != (v74 - v72);
              v9 = 1;
              if (v74 == v73 && !v75)
              {
                v9 = 0;
                ++v63;
                v23 = v68;
                if (--v64)
                {
                  continue;
                }
              }

              goto LABEL_105;
            }
          }

          goto LABEL_104;
        }
      }

LABEL_125:
      v23 = 0;
      goto LABEL_105;
    }

    goto LABEL_124;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v57 = v56;
  v4;
  v4 = v57;
  if ((v57 & 0x2000000000000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_124:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v106 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v107;
  v6 = v106;
  if (v7 <= 0)
  {
    goto LABEL_124;
  }

LABEL_5:
  v8 = *v6;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      LOWORD(v45) = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = a3;
      while (1)
      {
        v50 = *v6;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v23 = 0;
            v9 = 1;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_105;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v23 = 0;
        v52 = v50 + v51;
        v53 = v45 * v49;
        v54 = (v45 * v49);
        v45 = v54 + v52;
        v55 = v45 != (v54 + v52);
        v9 = 1;
        if (v54 == v53 && !v55)
        {
          v9 = 0;
          ++v6;
          v23 = v45;
          if (--v7)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    v9 = 1;
    v10 = specialized Collection.subscript.getter(1, v6, v7);
    v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
    if (!v15)
    {
      v23 = 0;
      goto LABEL_105;
    }

    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v14)
    {
      LOWORD(v19) = 0;
      v20 = a3;
      while (1)
      {
        v21 = *v14;
        if (v21 < 0x30 || v21 >= v16)
        {
          if (v21 < 0x41 || v21 >= v17)
          {
            v23 = 0;
            v9 = 1;
            if (v21 < 0x61 || v21 >= v18)
            {
              goto LABEL_105;
            }

            v22 = -87;
          }

          else
          {
            v22 = -55;
          }
        }

        else
        {
          v22 = -48;
        }

        v23 = 0;
        v24 = v21 + v22;
        v25 = v19 * v20;
        v26 = (v19 * v20);
        v19 = v26 - v24;
        v27 = v19 != (v26 - v24);
        v9 = 1;
        if (v26 == v25 && !v27)
        {
          v9 = 0;
          ++v14;
          v23 = v19;
          if (--v15)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    goto LABEL_104;
  }

  v9 = 1;
  v28 = specialized Collection.subscript.getter(1, v6, v7);
  v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v29, v30, v31);
  if (!v33)
  {
    goto LABEL_125;
  }

  v34 = a3 + 48;
  v35 = a3 + 55;
  v36 = a3 + 87;
  if (a3 > 10)
  {
    v34 = 58;
  }

  else
  {
    v36 = 97;
    v35 = 65;
  }

  if (v32)
  {
    LOWORD(v37) = 0;
    v38 = a3;
    while (1)
    {
      v39 = *v32;
      if (v39 < 0x30 || v39 >= v34)
      {
        if (v39 < 0x41 || v39 >= v35)
        {
          v23 = 0;
          v9 = 1;
          if (v39 < 0x61 || v39 >= v36)
          {
            goto LABEL_105;
          }

          v40 = -87;
        }

        else
        {
          v40 = -55;
        }
      }

      else
      {
        v40 = -48;
      }

      v23 = 0;
      v41 = v39 + v40;
      v42 = v37 * v38;
      v43 = (v37 * v38);
      v37 = v43 + v41;
      v44 = v37 != (v43 + v41);
      v9 = 1;
      if (v43 == v42 && !v44)
      {
        v9 = 0;
        ++v32;
        v23 = v37;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_105;
    }
  }

LABEL_104:
  v23 = 0;
  v9 = 0;
LABEL_105:
  v4;
  return v23 | (v9 << 16);
}

{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_71:
    v54 = HIBYTE(v4) & 0xF;
    v101[0] = a1;
    v101[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v54)
    {
      if (a1 == 43)
      {
        v71 = specialized Collection.subscript.getter(1, v101, v54);
        v75 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v71, v72, v73, v74);
        if (v76)
        {
          v77 = a3 + 48;
          v78 = a3 + 55;
          v79 = a3 + 87;
          if (a3 > 10)
          {
            v77 = 58;
          }

          else
          {
            v79 = 97;
            v78 = 65;
          }

          if (!v75)
          {
            goto LABEL_118;
          }

          v80 = 0;
          do
          {
            v81 = *v75;
            if (v81 < 0x30 || v81 >= v77)
            {
              if (v81 < 0x41 || v81 >= v78)
              {
                v21 = 0;
                if (v81 < 0x61 || v81 >= v79)
                {
                  goto LABEL_119;
                }

                v82 = -87;
              }

              else
              {
                v82 = -55;
              }
            }

            else
            {
              v82 = -48;
            }

            v21 = 0;
            v83 = v81 + v82;
            v84 = v80 * a3;
            v85 = (v80 * a3) >> 64 != (v80 * a3) >> 63;
            v80 = v80 * a3 + v83;
            v86 = __OFADD__(v84, v83);
            if (v85)
            {
              break;
            }

            if (v86)
            {
              break;
            }

            ++v75;
            v21 = v80;
            --v76;
          }

          while (v76);
          goto LABEL_119;
        }
      }

      else
      {
        if (a1 != 45)
        {
          v88 = 0;
          v89 = a3 + 48;
          v90 = a3 + 55;
          v91 = a3 + 87;
          if (a3 > 10)
          {
            v89 = 58;
          }

          else
          {
            v91 = 97;
            v90 = 65;
          }

          v92 = v101;
          do
          {
            v93 = *v92;
            if (v93 < 0x30 || v93 >= v89)
            {
              if (v93 < 0x41 || v93 >= v90)
              {
                v21 = 0;
                if (v93 < 0x61 || v93 >= v91)
                {
                  goto LABEL_119;
                }

                v94 = -87;
              }

              else
              {
                v94 = -55;
              }
            }

            else
            {
              v94 = -48;
            }

            v21 = 0;
            v95 = v93 + v94;
            v96 = v88 * a3;
            v97 = (v88 * a3) >> 64 != (v88 * a3) >> 63;
            v88 = v88 * a3 + v95;
            v98 = __OFADD__(v96, v95);
            if (v97)
            {
              break;
            }

            if (v98)
            {
              break;
            }

            ++v92;
            v21 = v88;
            --v54;
          }

          while (v54);
          goto LABEL_119;
        }

        v55 = specialized Collection.subscript.getter(1, v101, v54);
        v59 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v55, v56, v57, v58);
        if (v60)
        {
          v61 = a3 + 48;
          v62 = a3 + 55;
          v63 = a3 + 87;
          if (a3 > 10)
          {
            v61 = 58;
          }

          else
          {
            v63 = 97;
            v62 = 65;
          }

          if (!v59)
          {
            goto LABEL_118;
          }

          v64 = 0;
          do
          {
            v65 = *v59;
            if (v65 < 0x30 || v65 >= v61)
            {
              if (v65 < 0x41 || v65 >= v62)
              {
                v21 = 0;
                if (v65 < 0x61 || v65 >= v63)
                {
                  goto LABEL_119;
                }

                v66 = -87;
              }

              else
              {
                v66 = -55;
              }
            }

            else
            {
              v66 = -48;
            }

            v21 = 0;
            v67 = v65 + v66;
            v68 = v64 * a3;
            v69 = (v64 * a3) >> 64 != (v64 * a3) >> 63;
            v64 = v64 * a3 - v67;
            v70 = __OFSUB__(v68, v67);
            if (v69)
            {
              break;
            }

            if (v70)
            {
              break;
            }

            ++v59;
            v21 = v64;
            --v60;
          }

          while (v60);
          goto LABEL_119;
        }
      }

      goto LABEL_142;
    }

    goto LABEL_141;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v53 = v52;
  v4;
  v4 = v53;
  if ((v53 & 0x2000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_141:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v99 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v100;
  v6 = v99;
  if (v7 <= 0)
  {
    goto LABEL_141;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v26 = specialized Collection.subscript.getter(1, v6, v7);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (v31)
    {
      v32 = a3 + 48;
      v33 = a3 + 55;
      v34 = a3 + 87;
      if (a3 > 10)
      {
        v32 = 58;
      }

      else
      {
        v34 = 97;
        v33 = 65;
      }

      if (!v30)
      {
        goto LABEL_118;
      }

      v35 = 0;
      do
      {
        v36 = *v30;
        if (v36 < 0x30 || v36 >= v32)
        {
          if (v36 < 0x41 || v36 >= v33)
          {
            v21 = 0;
            if (v36 < 0x61 || v36 >= v34)
            {
              goto LABEL_119;
            }

            v37 = -87;
          }

          else
          {
            v37 = -55;
          }
        }

        else
        {
          v37 = -48;
        }

        v21 = 0;
        v38 = v36 + v37;
        v39 = v35 * a3;
        v40 = (v35 * a3) >> 64 != (v35 * a3) >> 63;
        v35 = v35 * a3 + v38;
        v41 = __OFADD__(v39, v38);
        if (v40)
        {
          break;
        }

        if (v41)
        {
          break;
        }

        ++v30;
        v21 = v35;
        --v31;
      }

      while (v31);
      goto LABEL_119;
    }

LABEL_142:
    v21 = 0;
    goto LABEL_119;
  }

  if (v8 == 45)
  {
    v9 = specialized Collection.subscript.getter(1, v6, v7);
    v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
    if (!v14)
    {
      v21 = 0;
      goto LABEL_119;
    }

    v15 = a3 + 48;
    v16 = a3 + 55;
    v17 = a3 + 87;
    if (a3 > 10)
    {
      v15 = 58;
    }

    else
    {
      v17 = 97;
      v16 = 65;
    }

    if (v13)
    {
      v18 = 0;
      do
      {
        v19 = *v13;
        if (v19 < 0x30 || v19 >= v15)
        {
          if (v19 < 0x41 || v19 >= v16)
          {
            v21 = 0;
            if (v19 < 0x61 || v19 >= v17)
            {
              goto LABEL_119;
            }

            v20 = -87;
          }

          else
          {
            v20 = -55;
          }
        }

        else
        {
          v20 = -48;
        }

        v21 = 0;
        v22 = v19 + v20;
        v23 = v18 * a3;
        v24 = (v18 * a3) >> 64 != (v18 * a3) >> 63;
        v18 = v18 * a3 - v22;
        v25 = __OFSUB__(v23, v22);
        if (v24)
        {
          break;
        }

        if (v25)
        {
          break;
        }

        ++v13;
        v21 = v18;
        --v14;
      }

      while (v14);
      goto LABEL_119;
    }

LABEL_118:
    v21 = 0;
    goto LABEL_119;
  }

  v42 = 0;
  v43 = a3 + 48;
  v44 = a3 + 55;
  v45 = a3 + 87;
  if (a3 > 10)
  {
    v43 = 58;
  }

  else
  {
    v45 = 97;
    v44 = 65;
  }

  do
  {
    v46 = *v6;
    if (v46 < 0x30 || v46 >= v43)
    {
      if (v46 < 0x41 || v46 >= v44)
      {
        v21 = 0;
        if (v46 < 0x61 || v46 >= v45)
        {
          break;
        }

        v47 = -87;
      }

      else
      {
        v47 = -55;
      }
    }

    else
    {
      v47 = -48;
    }

    v21 = 0;
    v48 = v46 + v47;
    v49 = v42 * a3;
    v50 = (v42 * a3) >> 64 != (v42 * a3) >> 63;
    v42 = v42 * a3 + v48;
    v51 = __OFADD__(v49, v48);
    if (v50)
    {
      break;
    }

    if (v51)
    {
      break;
    }

    ++v6;
    v21 = v42;
    --v7;
  }

  while (v7);
LABEL_119:
  v4;
  return v21;
}

unint64_t specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_71:
    v55 = HIBYTE(v4) & 0xF;
    v102[0] = a1;
    v102[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v55)
    {
      if (a1 == 43)
      {
        v72 = specialized Collection.subscript.getter(1, v102, v55);
        v76 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v72, v73, v74, v75);
        if (v77)
        {
          v78 = a3 + 48;
          v79 = a3 + 55;
          v80 = a3 + 87;
          if (a3 > 10)
          {
            v78 = 58;
          }

          else
          {
            v80 = 97;
            v79 = 65;
          }

          if (!v76)
          {
            goto LABEL_118;
          }

          v81 = 0;
          do
          {
            v82 = *v76;
            if (v82 < 0x30 || v82 >= v78)
            {
              if (v82 < 0x41 || v82 >= v79)
              {
                v21 = 0;
                if (v82 < 0x61 || v82 >= v80)
                {
                  goto LABEL_119;
                }

                v83 = -87;
              }

              else
              {
                v83 = -55;
              }
            }

            else
            {
              v83 = -48;
            }

            v21 = 0;
            v84 = v82 + v83;
            v85 = !is_mul_ok(v81, a3);
            v86 = v81 * a3;
            v25 = __CFADD__(v86, v84);
            v81 = v86 + v84;
            v87 = v25;
            if (v85)
            {
              break;
            }

            if (v87)
            {
              break;
            }

            ++v76;
            v21 = v81;
            --v77;
          }

          while (v77);
          goto LABEL_119;
        }
      }

      else
      {
        if (a1 != 45)
        {
          v89 = 0;
          v90 = a3 + 48;
          v91 = a3 + 55;
          v92 = a3 + 87;
          if (a3 > 10)
          {
            v90 = 58;
          }

          else
          {
            v92 = 97;
            v91 = 65;
          }

          v93 = v102;
          do
          {
            v94 = *v93;
            if (v94 < 0x30 || v94 >= v90)
            {
              if (v94 < 0x41 || v94 >= v91)
              {
                v21 = 0;
                if (v94 < 0x61 || v94 >= v92)
                {
                  goto LABEL_119;
                }

                v95 = -87;
              }

              else
              {
                v95 = -55;
              }
            }

            else
            {
              v95 = -48;
            }

            v21 = 0;
            v96 = v94 + v95;
            v97 = !is_mul_ok(v89, a3);
            v98 = v89 * a3;
            v25 = __CFADD__(v98, v96);
            v89 = v98 + v96;
            v99 = v25;
            if (v97)
            {
              break;
            }

            if (v99)
            {
              break;
            }

            ++v93;
            v21 = v89;
            --v55;
          }

          while (v55);
          goto LABEL_119;
        }

        v56 = specialized Collection.subscript.getter(1, v102, v55);
        v60 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v56, v57, v58, v59);
        if (v61)
        {
          v62 = a3 + 48;
          v63 = a3 + 55;
          v64 = a3 + 87;
          if (a3 > 10)
          {
            v62 = 58;
          }

          else
          {
            v64 = 97;
            v63 = 65;
          }

          if (!v60)
          {
            goto LABEL_118;
          }

          v65 = 0;
          do
          {
            v66 = *v60;
            if (v66 < 0x30 || v66 >= v62)
            {
              if (v66 < 0x41 || v66 >= v63)
              {
                v21 = 0;
                if (v66 < 0x61 || v66 >= v64)
                {
                  goto LABEL_119;
                }

                v67 = -87;
              }

              else
              {
                v67 = -55;
              }
            }

            else
            {
              v67 = -48;
            }

            v21 = 0;
            v68 = v66 + v67;
            v69 = !is_mul_ok(v65, a3);
            v70 = v65 * a3;
            v25 = v70 >= v68;
            v65 = v70 - v68;
            v71 = !v25;
            if (v69)
            {
              break;
            }

            if (v71)
            {
              break;
            }

            ++v60;
            v21 = v65;
            --v61;
          }

          while (v61);
          goto LABEL_119;
        }
      }

      goto LABEL_142;
    }

    goto LABEL_141;
  }

  a1 = specialized static String._copying(_:)(a1, v4);
  v54 = v53;
  v4;
  v4 = v54;
  if ((v54 & 0x2000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

LABEL_141:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v100 = _StringObject.sharedUTF8.getter(a1, v4);
  v7 = v101;
  v6 = v100;
  if (v7 <= 0)
  {
    goto LABEL_141;
  }

LABEL_5:
  v8 = *v6;
  if (v8 == 43)
  {
    v27 = specialized Collection.subscript.getter(1, v6, v7);
    v31 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v27, v28, v29, v30);
    if (v32)
    {
      v33 = a3 + 48;
      v34 = a3 + 55;
      v35 = a3 + 87;
      if (a3 > 10)
      {
        v33 = 58;
      }

      else
      {
        v35 = 97;
        v34 = 65;
      }

      if (!v31)
      {
        goto LABEL_118;
      }

      v36 = 0;
      do
      {
        v37 = *v31;
        if (v37 < 0x30 || v37 >= v33)
        {
          if (v37 < 0x41 || v37 >= v34)
          {
            v21 = 0;
            if (v37 < 0x61 || v37 >= v35)
            {
              goto LABEL_119;
            }

            v38 = -87;
          }

          else
          {
            v38 = -55;
          }
        }

        else
        {
          v38 = -48;
        }

        v21 = 0;
        v39 = v37 + v38;
        v40 = !is_mul_ok(v36, a3);
        v41 = v36 * a3;
        v25 = __CFADD__(v41, v39);
        v36 = v41 + v39;
        v42 = v25;
        if (v40)
        {
          break;
        }

        if (v42)
        {
          break;
        }

        ++v31;
        v21 = v36;
        --v32;
      }

      while (v32);
      goto LABEL_119;
    }

LABEL_142:
    v21 = 0;
    goto LABEL_119;
  }

  if (v8 == 45)
  {
    v9 = specialized Collection.subscript.getter(1, v6, v7);
    v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
    if (!v14)
    {
      v21 = 0;
      goto LABEL_119;
    }

    v15 = a3 + 48;
    v16 = a3 + 55;
    v17 = a3 + 87;
    if (a3 > 10)
    {
      v15 = 58;
    }

    else
    {
      v17 = 97;
      v16 = 65;
    }

    if (v13)
    {
      v18 = 0;
      do
      {
        v19 = *v13;
        if (v19 < 0x30 || v19 >= v15)
        {
          if (v19 < 0x41 || v19 >= v16)
          {
            v21 = 0;
            if (v19 < 0x61 || v19 >= v17)
            {
              goto LABEL_119;
            }

            v20 = -87;
          }

          else
          {
            v20 = -55;
          }
        }

        else
        {
          v20 = -48;
        }

        v21 = 0;
        v22 = v19 + v20;
        v23 = !is_mul_ok(v18, a3);
        v24 = v18 * a3;
        v25 = v24 >= v22;
        v18 = v24 - v22;
        v26 = !v25;
        if (v23)
        {
          break;
        }

        if (v26)
        {
          break;
        }

        ++v13;
        v21 = v18;
        --v14;
      }

      while (v14);
      goto LABEL_119;
    }

LABEL_118:
    v21 = 0;
    goto LABEL_119;
  }

  v43 = 0;
  v44 = a3 + 48;
  v45 = a3 + 55;
  v46 = a3 + 87;
  if (a3 > 10)
  {
    v44 = 58;
  }

  else
  {
    v46 = 97;
    v45 = 65;
  }

  do
  {
    v47 = *v6;
    if (v47 < 0x30 || v47 >= v44)
    {
      if (v47 < 0x41 || v47 >= v45)
      {
        v21 = 0;
        if (v47 < 0x61 || v47 >= v46)
        {
          break;
        }

        v48 = -87;
      }

      else
      {
        v48 = -55;
      }
    }

    else
    {
      v48 = -48;
    }

    v21 = 0;
    v49 = v47 + v48;
    v50 = !is_mul_ok(v43, a3);
    v51 = v43 * a3;
    v25 = __CFADD__(v51, v49);
    v43 = v51 + v49;
    v52 = v25;
    if (v50)
    {
      break;
    }

    if (v52)
    {
      break;
    }

    ++v6;
    v21 = v43;
    --v7;
  }

  while (v7);
LABEL_119:
  v4;
  return v21;
}

Swift::UInt64 specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  a2;
  if ((v4 & 0x1000000000000000) != 0)
  {
    a1 = specialized static String._copying(_:)(a1, v4);
    v58 = v57;
    v4;
    v4 = v58;
    if ((v58 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
        {
LABEL_5:
          v8 = *v6;
          if (v8 != 43)
          {
            if (v8 != 45)
            {
              if (a3 < 11)
              {
                v34 = a3 + 48;
                v32 = a3 >> 63;
                a3 ^= a3 >> 63;
                v33 = 65;
                v108 = 97;
              }

              else
              {
                v32 = 0;
                v33 = a3 + 55;
                v108 = a3 + 87;
                v34 = 58;
              }

              while (1)
              {
                v35 = *v6;
                if (v35 < 0x30 || v35 >= v34)
                {
                  if (v35 < 0x41 || v35 >= v33)
                  {
                    v37 = 0;
                    if (v35 < 0x61 || v35 >= v108)
                    {
                      goto LABEL_162;
                    }

                    v36 = -87;
                  }

                  else
                  {
                    v36 = -55;
                  }
                }

                else
                {
                  v36 = -48;
                }

                v38 = v35 + v36;
                v39.low = v32 ^ a3;
                v39.high = v32;
                v41 = _Int128.multipliedReportingOverflow(by:)(v39);
                v40 = *&v41.overflow;
                *&v41.overflow = v41.partialValue.low + v38;
                v43 = __CFADD__(v41.partialValue.low, v38);
                if (v41.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ((v43 | v40))
                  {
                    goto LABEL_160;
                  }
                }

                else if (v43)
                {
                  if (v40)
                  {
                    goto LABEL_160;
                  }
                }

                else if (v40)
                {
                  goto LABEL_160;
                }

                ++v6;
                if (!--v7)
                {
                  goto LABEL_161;
                }
              }
            }

            v9 = specialized Collection.subscript.getter(1, v6, v7);
            v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
            if (!v14)
            {
              v37 = 0;
              goto LABEL_162;
            }

            v15 = v13;
            v16 = v14;
            if (a3 > 10)
            {
              v17 = 0;
              v18 = a3 + 55;
              v19 = a3 + 87;
              v20 = 58;
              if (!v13)
              {
                goto LABEL_138;
              }

              goto LABEL_39;
            }

            v20 = a3 + 48;
            v17 = a3 >> 63;
            a3 ^= a3 >> 63;
            v18 = 65;
            v19 = 97;
            if (v13)
            {
LABEL_39:
              v109 = v19;
              do
              {
                v44 = *v15;
                if (v44 < 0x30 || v44 >= v20)
                {
                  if (v44 < 0x41 || v44 >= v18)
                  {
                    v37 = 0;
                    if (v44 < 0x61 || v44 >= v109)
                    {
                      goto LABEL_162;
                    }

                    v45 = -87;
                  }

                  else
                  {
                    v45 = -55;
                  }
                }

                else
                {
                  v45 = -48;
                }

                v46 = v44 + v45;
                v47.low = v17 ^ a3;
                v47.high = v17;
                v114 = _Int128.multipliedReportingOverflow(by:)(v47);
                v49 = v114.partialValue.low >= v46;
                v37 = v114.partialValue.low - v46;
                v50 = !v49;
                if (v114.partialValue.high == 0x8000000000000000)
                {
                  if ((*&v114.overflow | v50))
                  {
                    goto LABEL_160;
                  }
                }

                else if (v114.overflow)
                {
                  goto LABEL_160;
                }

                ++v15;
                --v16;
              }

              while (v16);
              goto LABEL_162;
            }

LABEL_138:
            v37 = 0;
            goto LABEL_162;
          }

          v21 = specialized Collection.subscript.getter(1, v6, v7);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            v27 = v25;
            v28 = v26;
            if (a3 < 11)
            {
              v31 = a3 + 48;
              v29 = a3 >> 63;
              a3 ^= a3 >> 63;
              v30 = 65;
              v107 = 97;
              if (v25)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v29 = 0;
              v30 = a3 + 55;
              v107 = a3 + 87;
              v31 = 58;
              if (v25)
              {
                while (1)
                {
LABEL_62:
                  v51 = *v27;
                  if (v51 < 0x30 || v51 >= v31)
                  {
                    if (v51 < 0x41 || v51 >= v30)
                    {
                      v37 = 0;
                      if (v51 < 0x61 || v51 >= v107)
                      {
                        goto LABEL_162;
                      }

                      v52 = -87;
                    }

                    else
                    {
                      v52 = -55;
                    }
                  }

                  else
                  {
                    v52 = -48;
                  }

                  v53 = v51 + v52;
                  v54.low = v29 ^ a3;
                  v54.high = v29;
                  v41 = _Int128.multipliedReportingOverflow(by:)(v54);
                  v55 = *&v41.overflow;
                  *&v41.overflow = v41.partialValue.low + v53;
                  v56 = __CFADD__(v41.partialValue.low, v53);
                  if (v41.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ((v56 | v55))
                    {
                      goto LABEL_160;
                    }
                  }

                  else if (v56)
                  {
                    if (v55)
                    {
                      goto LABEL_160;
                    }
                  }

                  else if (v55)
                  {
                    goto LABEL_160;
                  }

                  ++v27;
                  if (!--v28)
                  {
                    goto LABEL_161;
                  }
                }
              }
            }

            goto LABEL_138;
          }

LABEL_165:
          v37 = 0;
          goto LABEL_162;
        }
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter(a1, v4);
        v7 = v106;
        if (v106 > 0)
        {
          goto LABEL_5;
        }
      }

LABEL_164:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v59 = HIBYTE(v4) & 0xF;
  v113[0] = a1;
  v113[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (!v59)
  {
    goto LABEL_164;
  }

  if (a1 == 43)
  {
    v72 = specialized Collection.subscript.getter(1, v113, HIBYTE(v4) & 0xF);
    v76 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v72, v73, v74, v75);
    if (!v77)
    {
      goto LABEL_165;
    }

    v78 = v76;
    v79 = v77;
    if (a3 < 11)
    {
      v82 = a3 + 48;
      v80 = a3 >> 63;
      a3 ^= a3 >> 63;
      v81 = 65;
      v110 = 97;
      if (v76)
      {
        goto LABEL_141;
      }

      goto LABEL_138;
    }

    v80 = 0;
    v81 = a3 + 55;
    v110 = a3 + 87;
    v82 = 58;
    if (!v76)
    {
      goto LABEL_138;
    }

    do
    {
LABEL_141:
      v99 = *v78;
      if (v99 < 0x30 || v99 >= v82)
      {
        if (v99 < 0x41 || v99 >= v81)
        {
          v37 = 0;
          if (v99 < 0x61 || v99 >= v110)
          {
            goto LABEL_162;
          }

          v100 = -87;
        }

        else
        {
          v100 = -55;
        }
      }

      else
      {
        v100 = -48;
      }

      v101 = v99 + v100;
      v102.low = v80 ^ a3;
      v102.high = v80;
      v41 = _Int128.multipliedReportingOverflow(by:)(v102);
      v103 = *&v41.overflow;
      *&v41.overflow = v41.partialValue.low + v101;
      v104 = __CFADD__(v41.partialValue.low, v101);
      if (v41.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((v104 | v103))
        {
          goto LABEL_160;
        }
      }

      else if (v104)
      {
        if (v103)
        {
LABEL_160:
          v37 = 0;
          goto LABEL_162;
        }
      }

      else if (v103)
      {
        goto LABEL_160;
      }

      ++v78;
      --v79;
    }

    while (v79);
LABEL_161:
    v37 = *&v41.overflow;
  }

  else
  {
    if (a1 != 45)
    {
      if (a3 < 11)
      {
        v85 = a3 + 48;
        v83 = a3 >> 63;
        a3 ^= a3 >> 63;
        v84 = 65;
        v111 = 97;
      }

      else
      {
        v83 = 0;
        v84 = a3 + 55;
        v111 = a3 + 87;
        v85 = 58;
      }

      v86 = v113;
      while (1)
      {
        v87 = *v86;
        if (v87 < 0x30 || v87 >= v85)
        {
          if (v87 < 0x41 || v87 >= v84)
          {
            v37 = 0;
            if (v87 < 0x61 || v87 >= v111)
            {
              goto LABEL_162;
            }

            v88 = -87;
          }

          else
          {
            v88 = -55;
          }
        }

        else
        {
          v88 = -48;
        }

        v89 = v87 + v88;
        v90.low = v83 ^ a3;
        v90.high = v83;
        v41 = _Int128.multipliedReportingOverflow(by:)(v90);
        v91 = *&v41.overflow;
        *&v41.overflow = v41.partialValue.low + v89;
        v92 = __CFADD__(v41.partialValue.low, v89);
        if (v41.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v92 | v91))
          {
            goto LABEL_160;
          }
        }

        else if (v92)
        {
          if (v91)
          {
            goto LABEL_160;
          }
        }

        else if (v91)
        {
          goto LABEL_160;
        }

        ++v86;
        if (!--v59)
        {
          goto LABEL_161;
        }
      }
    }

    v60 = specialized Collection.subscript.getter(1, v113, HIBYTE(v4) & 0xF);
    v64 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v60, v61, v62, v63);
    if (!v65)
    {
      goto LABEL_165;
    }

    v66 = v64;
    v67 = v65;
    if (a3 <= 10)
    {
      v71 = a3 + 48;
      v68 = a3 >> 63;
      a3 ^= a3 >> 63;
      v69 = 65;
      v70 = 97;
      if (!v64)
      {
        goto LABEL_138;
      }
    }

    else
    {
      v68 = 0;
      v69 = a3 + 55;
      v70 = a3 + 87;
      v71 = 58;
      if (!v64)
      {
        goto LABEL_138;
      }
    }

    v112 = v70;
    do
    {
      v93 = *v66;
      if (v93 < 0x30 || v93 >= v71)
      {
        if (v93 < 0x41 || v93 >= v69)
        {
          v37 = 0;
          if (v93 < 0x61 || v93 >= v112)
          {
            break;
          }

          v94 = -87;
        }

        else
        {
          v94 = -55;
        }
      }

      else
      {
        v94 = -48;
      }

      v95 = v93 + v94;
      v96.low = v68 ^ a3;
      v96.high = v68;
      v115 = _Int128.multipliedReportingOverflow(by:)(v96);
      v49 = v115.partialValue.low >= v95;
      v37 = v115.partialValue.low - v95;
      v98 = !v49;
      if (v115.partialValue.high == 0x8000000000000000)
      {
        if ((*&v115.overflow | v98))
        {
          goto LABEL_160;
        }
      }

      else if (v115.overflow)
      {
        goto LABEL_160;
      }

      ++v66;
      --v67;
    }

    while (v67);
  }

LABEL_162:
  v4;
  return v37;
}