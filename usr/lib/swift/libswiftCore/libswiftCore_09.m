unint64_t anonymous namespace::DecodedMetadataBuilder::createObjCClassType@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  Class = objc_getClass(a1);
  result = swift_getObjCClassMetadata(Class);
  *(a2 + 16) = 0;
  *a2 = result;
  if (!result)
  {
    *a2 = "unknown error";
    *(a2 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a2 + 16) = 1;
  }

  return result;
}

swift::Demangle::__runtime::Demangler ***swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledTypeDecl@<X0>(swift::Demangle::__runtime::Node *a1@<X1>, swift::Demangle::__runtime::Demangler ***result@<X0>, unsigned int a3@<W2>, swift::Demangle::__runtime::Demangler ****a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 > 0x400)
  {
LABEL_2:
    *a6 = "Mangled type is too complex";
    *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a6 + 16) = 1;
    return result;
  }

  v6 = a3 + 1;
  while (1)
  {
    v7 = *(a1 + 8);
    if (v7 != 243)
    {
      break;
    }

    v8 = *(a1 + 18);
    if ((v8 - 1) >= 2)
    {
      if (v8 != 5 || !*(a1 + 2))
      {
        a1 = 0;
        goto LABEL_7;
      }

      a1 = *a1;
    }

    a1 = *a1;
LABEL_7:
    v6 = (v6 + 1);
    if (v6 == 1026)
    {
      goto LABEL_2;
    }
  }

  if (v7 == 244)
  {
    v9 = a4;
    v10 = a6;
    goto LABEL_14;
  }

  v11 = *(a1 + 18);
  v10 = a6;
  if (v11 > 2)
  {
    if (v11 != 5 || *(a1 + 2) <= 1u)
    {
LABEL_25:
      operator new();
    }

    v12 = *a1;
  }

  else
  {
    if (v11 == 1)
    {
      goto LABEL_25;
    }

    v12 = a1;
    if (v11 != 2)
    {
      goto LABEL_25;
    }
  }

  v14 = *v12;
  v15 = *(*v12 + 16);
  if (v15 == 163)
  {
    v9 = a4;
  }

  else
  {
    if (v15 == 73)
    {
      v16 = *(v14 + 18);
      if (v16 != 2)
      {
        if (v16 != 5 || *(v14 + 2) < 2u)
        {
          operator new();
        }

        v14 = *v14;
      }

      v17 = a5;
      v9 = a4;
      v18 = a1;
      v14 = v14[1];
    }

    else
    {
      v17 = a5;
      v9 = a4;
      v18 = a1;
    }

    v19 = result;
    v20 = v23;
    if (v23)
    {
      *v17 = 0;
      v21 = v18;
      if (v20 == 1)
      {
        (v22[1])(v22[0], 3, 0);
        goto LABEL_42;
      }
    }

    else
    {
      *v17 = v22[0];
LABEL_42:
      v21 = v18;
    }

    result = swift::Demangle::__runtime::getUnspecialized(v21, **v19, v22);
    if (LODWORD(v22[0]))
    {
      v13 = "Failed to unspecialize type";
LABEL_24:
      *v10 = v13;
      *(v10 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(v10 + 16) = 1;
      return result;
    }

    a1 = v24;
    result = v19;
  }

LABEL_14:
  result = _findContextDescriptor(a1, **result);
  *v9 = result;
  if (!result)
  {
    v13 = "Failed to create type decl";
    goto LABEL_24;
  }

  *v10 = 0;
  *(v10 + 16) = 0;
  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeGenericArgs@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2 + 2;
  if (*(a2 + 8) != 246)
  {
    operator new();
  }

  v9 = result;
  v10 = *(a2 + 18);
  v11 = a2;
  if ((v10 - 1) >= 2)
  {
    if (v10 == 5)
    {
      v12 = *a2;
      v11 = *a2;
      goto LABEL_11;
    }

    v11 = 0;
  }

  switch(v10)
  {
    case 1:
      v6 = a2 + 1;
      if (v11 == a2 + 1)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    case 2:
      goto LABEL_16;
    case 5:
      v12 = *a2;
LABEL_11:
      v6 = (v12 + 8 * *(a2 + 2));
      if (v11 == v6)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
  }

  v6 = 0;
  if (!v11)
  {
LABEL_29:
    *a5 = 0;
    *(a5 + 16) = 0;
    return result;
  }

LABEL_16:
  v13 = *(a5 + 16);
  while (1)
  {
    v14 = v21;
    if (v21 == 1)
    {
      v15 = v19;
      v16 = v20;
      *(a5 + 8) = v20;
      result = v16(v15, 2, 0);
      *a5 = result;
      v13 = 1;
    }

    else
    {
      if (v21)
      {
        v17 = 0;
      }

      else
      {
        v17 = v19;
      }

      v18 = *(a4 + 8);
      if (v18 >= *(a4 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v18 + 1, 8);
        v18 = *(a4 + 8);
      }

      *(*a4 + 8 * v18) = v17;
      ++*(a4 + 8);
    }

    if (v21 == 1)
    {
      result = v20(v19, 3, 0);
    }

    if (v14 == 1)
    {
      break;
    }

    if (++v11 == v6)
    {
      goto LABEL_29;
    }
  }

  *(a5 + 16) = v13;
  return result;
}

void anonymous namespace::DecodedMetadataBuilder::createBoundGenericType(uint64_t *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (a2 && (*a2 & 0x10) != 0)
  {
    if (a5)
    {
      operator new();
    }

    v23[0] = v24;
    v23[1] = 0x800000000;
    v20 = v22;
    v21 = 0x800000000;
    _gatherGenericParameters(a2, a3, a4, a5, v23, &v20, *a1, &v17);
    if (v19 == 1)
    {
      *(a6 + 16) = v19;
      v8 = v17;
      v9 = v18;
      *(a6 + 8) = v18;
      *a6 = v9(v8, 2, 0);
      v9(v8, 3, 0);
LABEL_24:
      if (v20 != v22)
      {
        free(v20);
      }

      if (v23[0] != v24)
      {
        free(v23[0]);
      }

      return;
    }

    v13 = a2[3];
    v12 = a2 + 3;
    v11 = v13;
    if (!v13 || !(v12 + v11))
    {
LABEL_23:
      *a6 = "unknown error";
      *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(a6 + 16) = 1;
      goto LABEL_24;
    }

    v14 = (v12 + v11);
    v15 = v20;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v16 = (v14)(255, *v20, *(v20 + 1));
LABEL_22:
        *(a6 + 16) = 0;
        *a6 = v16;
        if (v16)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v21 == 3)
      {
        v16 = (v14)(255, *v20, *(v20 + 1), *(v20 + 2));
        goto LABEL_22;
      }
    }

    else if (v21 == 1)
    {
      v15 = *v20;
    }

    v16 = (v14)(255, v15);
    goto LABEL_22;
  }

  if (!a2 || (*a2 & 0x1F) != 3 || (SimpleProtocolTypeMetadata = swift::_getSimpleProtocolTypeMetadata(a2), *(a6 + 16) = 0, (*a6 = SimpleProtocolTypeMetadata) == 0))
  {
    *a6 = "unknown error";
    *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a6 + 16) = 1;
  }
}

uint64_t anonymous namespace::DecodedMetadataBuilder::createBuiltinType@<X0>(size_t __n@<X1>, const char *a2@<X0>, uint64_t a3@<X8>)
{
  result = strncmp(a2, "Bi1_", __n);
  if (__n == 4 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int1;
LABEL_143:
    *a3 = v7 + 1;
    return result;
  }

  result = strncmp(a2, "Bi7_", __n);
  if (__n == 4 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int7;
    goto LABEL_143;
  }

  result = strncmp(a2, "Bi8_", __n);
  if (__n == 4 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int8;
    goto LABEL_143;
  }

  result = strncmp(a2, "Bi16_", __n);
  if (__n == 5 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int16;
    goto LABEL_143;
  }

  result = strncmp(a2, "Bi32_", __n);
  if (__n == 5 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int32;
    goto LABEL_143;
  }

  result = strncmp(a2, "Bi63_", __n);
  if (__n == 5 && !result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int63;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi128_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int128;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi256_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int256;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi512_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Int512;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bw");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Word;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.FPIEEE16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.FPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.FPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf80_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.FPIEEE80;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf128_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.FPIEEE128;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bo");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.NativeObject;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bb");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.BridgeObject;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bp");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.RawPointer;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "BB");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.UnsafeValueBuffer;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "BO");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.UnknownObject;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bc");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.RawUnsafeContinuation;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "BD");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.DefaultActorStorage;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bd");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.NonDefaultDistributedActorStorage;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Be");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Executor;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bj");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Job;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi8_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xInt8;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi16_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xInt16;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi32_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xInt32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bi64_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xInt64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf32_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xFPIEEE32;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv2_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec2xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv3_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec3xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv4_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec4xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv8_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec8xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv16_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec16xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv32_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec32xFPIEEE64;
    goto LABEL_143;
  }

  result = stringRefEqualsCString(a2, __n, "Bf64_Bv64_");
  if (result)
  {
    *(a3 + 16) = 0;
    v7 = &type metadata for Builtin.Vec64xFPIEEE64;
    goto LABEL_143;
  }

  *a3 = "unknown error";
  *(a3 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  *(a3 + 16) = 1;
  return result;
}

char *anonymous namespace::DecodedMetadataBuilder::createMetatypeType@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1 || (a1 & 1) != 0)
  {
    operator new();
  }

  result = swift_getMetatypeMetadata(a1);
  *(a2 + 16) = 0;
  *a2 = result;
  if (!result)
  {
    *a2 = "unknown error";
    *(a2 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a2 + 16) = 1;
  }

  return result;
}

unint64_t anonymous namespace::DecodedMetadataBuilder::createExistentialMetatypeType@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1 || (a1 & 1) != 0)
  {
    operator new();
  }

  v3 = *a1;
  if (*a1 > 0x7FFuLL)
  {
    LODWORD(v3) = 0;
  }

  if (v3 != 771 && v3 != 774)
  {
    operator new();
  }

  result = swift_getExistentialMetatypeMetadata(a1);
  *(a2 + 16) = 0;
  *a2 = result;
  if (!result)
  {
    *a2 = "unknown error";
    *(a2 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a2 + 16) = 1;
  }

  return result;
}

void anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35[8] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  if (v7 == 351)
  {
    ExtendedExistentialTypeShape = swift_getExtendedExistentialTypeShape(*a1);
    if (ExtendedExistentialTypeShape)
    {
LABEL_4:
      v9 = ExtendedExistentialTypeShape;
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != 350)
    {
      operator new();
    }

    ExtendedExistentialTypeShape = *a1;
    if (*a1)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_7:
  swift::TargetExtendedExistentialTypeShape<swift::InProcess>::getGeneralizationSignature(v9, v24);
  if (a3 != v24[0])
  {
    operator new();
  }

  v33 = v35;
  v34 = 0x800000000;
  if (a3)
  {
    v12 = 0;
    v13 = 8 * a3;
    v14 = a2;
    do
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = (*v14 & 1) == 0;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        swift::fatalError(0, "Expected metadata but got a metadata pack\n", v10, v11);
      }

      if (v12 >= HIDWORD(v34))
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v12 + 1, 8);
        v12 = v34;
      }

      v33[v12] = v15;
      v12 = v34 + 1;
      LODWORD(v34) = v34 + 1;
      ++v14;
      v13 -= 8;
    }

    while (v13);
    v17 = v24[0];
  }

  else
  {
    v17 = 0;
  }

  v31[0] = &unk_1EEEAD080;
  v31[1] = a2;
  v31[2] = a3;
  v32 = v31;
  v29[0] = &unk_1EEEAD0C8;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v29;
  v27[0] = &unk_1EEEAD110;
  v28 = v27;
  swift::_checkGenericRequirements(v25, v17, v26, v24[1], &v33, v31, v29, v27, &v21, 0);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))();
  }

  if (v32 == v31)
  {
    (*(*v32 + 32))(v32);
    if (v23)
    {
LABEL_34:
      *(a4 + 16) = 1;
      v18 = v21;
      v19 = v22;
      *(a4 + 8) = v22;
      *a4 = v19(v18, 2, 0);
      goto LABEL_38;
    }
  }

  else
  {
    if (v32)
    {
      (*(*v32 + 40))();
    }

    if (v23)
    {
      goto LABEL_34;
    }
  }

  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique(ExtendedExistentialTypeShape, v33);
  *(a4 + 16) = 0;
  *a4 = ExtendedExistentialTypeMetadata_unique;
  if (!ExtendedExistentialTypeMetadata_unique)
  {
    *a4 = "unknown error";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a4 + 16) = 1;
  }

LABEL_38:
  if (v23 == 1)
  {
    v22(v21, 3, 0);
  }

  if (v33 != v35)
  {
    free(v33);
  }
}

unint64_t swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledProtocolType(swift::Demangle::__runtime::Node ***a1, char *a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v131 = *MEMORY[0x1E69E9840];
  if (a3 > 0x400)
  {
    return 0;
  }

  v4 = a3 - 1025;
  while (1)
  {
    v6 = *(a2 + 8);
    v7 = a2[18];
    if (v6 != 243)
    {
      break;
    }

    if ((v7 - 1) < 2)
    {
      goto LABEL_7;
    }

    if (v7 == 5 && *(a2 + 2))
    {
      a2 = *a2;
LABEL_7:
      a2 = *a2;
      v5 = __CFADD__(v4++, 1);
      if (v5)
      {
        return 0;
      }
    }

    else
    {
      a2 = 0;
      v5 = __CFADD__(v4++, 1);
      if (v5)
      {
        return 0;
      }
    }
  }

  if (v7 == 2)
  {
    v10 = a2;
    if (v6 == 190)
    {
      goto LABEL_30;
    }

    if (v6 == 191)
    {
      goto LABEL_25;
    }

LABEL_24:
    if (v6 != 361)
    {
      return 0;
    }

LABEL_25:
    v11 = *a1;
    if (v6 == 361)
    {
      v12 = *(*a2 + **a2);
      if (v12)
      {
        return v12 | 1;
      }
    }

LABEL_49:
    v22 = *v11;
    if (qword_1ED426438 != -1)
    {
      v42 = a2;
      swift::addImageProtocolsBlockCallback(a1);
      a2 = v42;
    }

    v23 = a2;
    if (*(a2 + 8) != 243)
    {
      goto LABEL_58;
    }

    v24 = a2[18];
    v25 = a2;
    if ((v24 - 1) >= 2)
    {
      if (v24 != 5 || !*(a2 + 2))
      {
        v23 = 0;
        goto LABEL_58;
      }

      v25 = *a2;
    }

    v23 = *v25;
LABEL_58:
    if (*(v23 + 8) == 191)
    {
      if (*v23)
      {
        v26 = *v23;
        goto LABEL_66;
      }

      goto LABEL_68;
    }

    v27 = a2;
    v28 = descriptorFromStandardMangling(v23);
    if (v28)
    {
      v26 = v28;
      goto LABEL_65;
    }

    v128.__r_.__value_.__r.__words[0] = v22;
    swift::Demangle::__runtime::mangleNode(v27);
    if (LODWORD(__p[0]))
    {
      v26 = 0;
      goto LABEL_65;
    }

    if (name)
    {
      v30 = __len;
      if (__len > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_249;
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len;
      if (__len)
      {
        memmove(&__dst, name, __len);
      }

      a2 = v27;
      __dst.__r_.__value_.__s.__data_[v30] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      a2 = v27;
    }

    atomic_fetch_add_explicit(&dword_1ED4263C0, 1u, memory_order_acquire);
    do
    {
      explicit = atomic_load_explicit(&qword_1ED4263C8, memory_order_acquire);
      v32 = atomic_load_explicit(&qword_1ED4263D0, memory_order_acquire);
      v33 = atomic_load_explicit(&dword_1ED4263C4, memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(&qword_1ED4263C8, memory_order_acquire));
    if (explicit)
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (!v34 && v33 != 0)
    {
      a2 = v27;
      if (v36)
      {
        v26 = *(v36 + 16);
        atomic_fetch_add_explicit(&dword_1ED4263C0, 0xFFFFFFFF, memory_order_release);
        goto LABEL_247;
      }
    }

    atomic_fetch_add_explicit(&dword_1ED4263C0, 0xFFFFFFFF, memory_order_release);
    LibPrespecializedTypeDescriptor = swift::getLibPrespecializedTypeDescriptor(a2, a2);
    v39 = v38;
    if (swift::runtime::environment::initializeToken != -1)
    {
      v43 = LibPrespecializedTypeDescriptor;
      _findContextDescriptor();
      LibPrespecializedTypeDescriptor = v43;
    }

    a2 = v27;
    if (swift::runtime::environment::SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable == 1)
    {
      v44 = LibPrespecializedTypeDescriptor;
      LibPrespecializedTypeDescriptor = v44;
      a2 = v27;
      if (v44 != 2)
      {
LABEL_96:
        if (!LibPrespecializedTypeDescriptor)
        {
          if (v39)
          {
            goto LABEL_150;
          }

          goto LABEL_153;
        }

        goto LABEL_129;
      }
    }

    else if (LibPrespecializedTypeDescriptor != 2)
    {
      goto LABEL_96;
    }

    swift::runtime::trace::protocol_scan_begin(a2, v127);
    atomic_fetch_add_explicit(&qword_1ED426418, 1uLL, memory_order_acquire);
    v45 = qword_1ED426420;
    if (!qword_1ED426420 || (v46 = atomic_load_explicit(qword_1ED426420, memory_order_acquire)) == 0)
    {
      v39 = 0;
      goto LABEL_125;
    }

    v47 = (v45 + 8);
    v48 = v45 + 8 + 16 * v46;
    while (1)
    {
      v49 = *v47;
      v50 = v47[1];
      if (*v47 != v50)
      {
        break;
      }

LABEL_111:
      v47 += 2;
      if (v47 == v48)
      {
        v39 = 0;
LABEL_125:
        atomic_fetch_add_explicit(&qword_1ED426418, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
        v55 = v127[0];
        if ((v127[0] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v56 = swift::runtime::trace::ScanLog;
          if (os_signpost_enabled(swift::runtime::trace::ScanLog))
          {
            *buf = 134217984;
            v130 = v39;
            _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v56, OS_SIGNPOST_INTERVAL_END, v55, "section_scan", "result=%p", buf, 0xCu);
          }
        }

        a2 = v27;
        if (v39)
        {
          goto LABEL_151;
        }

LABEL_129:
        swift::runtime::trace::protocol_scan_begin(a2, v127);
        atomic_fetch_add_explicit(&qword_1ED4263F0, 1uLL, memory_order_acquire);
        v57 = qword_1ED4263F8;
        if (!qword_1ED4263F8)
        {
          v39 = 0;
          a2 = v27;
          goto LABEL_147;
        }

        v58 = atomic_load_explicit(qword_1ED4263F8, memory_order_acquire);
        a2 = v27;
        if (!v58)
        {
          v39 = 0;
          goto LABEL_147;
        }

        v59 = (v57 + 8);
        v60 = v57 + 8 + 16 * v58;
        while (1)
        {
          v61 = *v59;
          v62 = v59[1];
          if (*v59 != v62)
          {
            break;
          }

LABEL_132:
          v59 += 2;
          if (v59 == v60)
          {
            v39 = 0;
LABEL_147:
            atomic_fetch_add_explicit(&qword_1ED4263F0, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
            v68 = v127[0];
            if ((v127[0] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v69 = swift::runtime::trace::ScanLog;
              v70 = os_signpost_enabled(swift::runtime::trace::ScanLog);
              a2 = v27;
              if (v70)
              {
                *buf = 134217984;
                v130 = v39;
                _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v69, OS_SIGNPOST_INTERVAL_END, v68, "section_scan", "result=%p", buf, 0xCu);
                a2 = v27;
              }
            }

LABEL_150:
            if (v39)
            {
LABEL_151:
              v117 = v39;
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v121, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
              }

              else
              {
                v121 = __dst;
              }

              os_unfair_lock_lock(&unk_1ED4263D8);
              v71 = qword_1ED4263D0;
              v72 = (qword_1ED4263D0 & 3) == 0;
              if ((qword_1ED4263D0 & 0xFFFFFFFFFFFFFFFCLL) == 0)
              {
                v72 = 1;
              }

              v115 = qword_1ED4263D0 & 0xFFFFFFFFFFFFFFFCLL;
              v114 = v72;
              v119 = qword_1ED4263D0 & 3;
              if (v72)
              {
                v73 = 4;
              }

              else
              {
                v73 = *(qword_1ED4263D0 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v74 = dword_1ED4263C4;
              v75 = qword_1ED4263C8;
              if (qword_1ED4263C8)
              {
                v76 = qword_1ED4263C8 + 8;
              }

              else
              {
                v76 = 0;
              }

              {
                __dmb(0xBu);
                if (!dword_1ED4263C0)
                {
                  v78 = qword_1ED4263E0;
                  if (qword_1ED4263E0)
                  {
                    do
                    {
                      v79 = *v78;
                      free(v78[1]);
                      free(v78);
                      v78 = v79;
                    }

                    while (v79);
                  }

                  goto LABEL_244;
                }
              }

              else
              {
                v118 = v76;
                v116 = v71;
                v112 = (v74 + 1);
                v113 = v75;
                __src = v75 + 2;
                if ((1 << v73) / ((1 << v73) - v112) < 4)
                {
                  v84 = v71;
                }

                else
                {
                  v80 = (v73 + 1);
                  if (v80 >= 0x11)
                  {
                    v81 = 4;
                  }

                  else
                  {
                    v81 = 2;
                  }

                  if (v80 < 9)
                  {
                    v82 = 1;
                  }

                  else
                  {
                    v82 = v81;
                  }

                  v83 = malloc_type_calloc(2 << v73, v82, 0x48DDA4AEuLL);
                  if (!v83)
                  {
                    swift::hashable_support::findHashableBaseTypeOfHashableType();
                  }

                  v110 = v74;
                  if (v82 != 1)
                  {
                    if (v82 == 4)
                    {
                      v82 = 3;
                    }

                    else
                    {
                      v82 = 2;
                    }
                  }

                  v84 = v82 | v83;
                  *v83 = v73 + 1;
                  if (v73)
                  {
                    v85 = ~(-2 << v73);
                    v86 = v115;
                    if (!v119)
                    {
                      v86 = 0;
                    }

                    v120 = v86;
                    v87 = v84 & 3;
                    if ((v84 & 3) != 0)
                    {
                      v88 = v83 & 0xFFFFFFFFFFFFFFFCLL;
                    }

                    else
                    {
                      v88 = 0;
                    }

                    v89 = 1;
                    do
                    {
                      if ((v116 & 3) > 1)
                      {
                        if ((v116 & 3) == 2)
                        {
                          LODWORD(v90) = *(v120 + 2 * v89);
                        }

                        else
                        {
                          LODWORD(v90) = *(v120 + 4 * v89);
                        }
                      }

                      else if ((v116 & 3) != 0)
                      {
                        LODWORD(v90) = *(v120 + v89);
                      }

                      else
                      {
                        v90 = (v116 >> (4 * v89)) & 0xF;
                      }

                      if (v90)
                      {
                        for (i = __swift::__runtime::llvm::hash_value(*(v118 + 24 * (v90 - 1)), *(v118 + 24 * (v90 - 1) + 8)); ; i = v93 + 1)
                        {
                          v93 = i & v85;
                          if ((i & v85) != 0)
                          {
                            if ((v84 & 3) > 1)
                            {
                              LODWORD(v92) = v87 == 2 ? *(v88 + 2 * v93) : *(v88 + 4 * v93);
                            }

                            else if ((v84 & 3) != 0)
                            {
                              LODWORD(v92) = *(v88 + v93);
                            }

                            else
                            {
                              v92 = (v84 >> (4 * v93)) & 0xF;
                            }

                            if (!v92)
                            {
                              break;
                            }
                          }
                        }

                        if (v87 == 3)
                        {
                          *(v88 + 4 * v93) = v90;
                        }

                        else if (v87 == 2)
                        {
                          *(v88 + 2 * v93) = v90;
                        }

                        else
                        {
                          *(v88 + v93) = v90;
                        }
                      }

                      ++v89;
                    }

                    while (!(v89 >> v73));
                  }

                  atomic_store(v84, &qword_1ED4263D0);
                  if (!v114)
                  {
                    v94 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
                    *v94 = qword_1ED4263E0;
                    v94[1] = v115;
                    qword_1ED4263E0 = v94;
                  }

                  v74 = v110;
                }

                v95 = v77;
                if (!v113 || (v96 = v113, v74 >= *v113))
                {
                  v97 = v74 + (v74 >> 2);
                  v98 = v74;
                  if (v97 <= v74 + 1)
                  {
                    v97 = v74 + 1;
                  }

                  v74 = malloc_good_size(24 * v97 + 8);
                  v99 = malloc_type_malloc(v74, 0x1070040D224386BuLL);
                  if (!v99)
                  {
                    swift::hashable_support::findHashableBaseTypeOfHashableType();
                  }

                  v96 = v99;
                  *v99 = (v74 - 8) / 0x18;
                  LODWORD(v74) = v98;
                  if (v113)
                  {
                    memcpy(v99 + 2, __src, 24 * v98);
                    v100 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
                    *v100 = qword_1ED4263E0;
                    v100[1] = v113;
                    qword_1ED4263E0 = v100;
                  }

                  atomic_store(v96, &qword_1ED4263C8);
                }

                v101 = (v96 + 24 * v74);
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = __dst.__r_.__value_.__r.__words[0];
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __dst.__r_.__value_.__l.__size_;
                }

                v101[3] = v117;
                v104 = malloc_type_malloc(size, 0x100004077774924uLL);
                memcpy(v104, p_dst, size);
                v101[1] = v104;
                v101[2] = size;
                atomic_store(v112, &dword_1ED4263C4);
                if ((v84 & 3) > 1)
                {
                  if ((v84 & 3) == 2)
                  {
                    v105 = v84 & 0xFFFFFFFFFFFFFFFCLL;
                    if ((v84 & 3) == 0)
                    {
                      v105 = 0;
                    }

                    atomic_store(v112, (v105 + 2 * v95));
                  }

                  else
                  {
                    v106 = v84 & 0xFFFFFFFFFFFFFFFCLL;
                    if ((v84 & 3) == 0)
                    {
                      v106 = 0;
                    }

                    atomic_store(v112, (v106 + 4 * v95));
                  }
                }

                else if ((v84 & 3) != 0)
                {
                  atomic_store(v112, ((v84 & 0xFFFFFFFFFFFFFFFCLL) + v95));
                }

                else
                {
                  atomic_store((v112 << (4 * v95)) | v84, &qword_1ED4263D0);
                }

                __dmb(0xBu);
                if (!dword_1ED4263C0)
                {
                  v107 = qword_1ED4263E0;
                  if (qword_1ED4263E0)
                  {
                    do
                    {
                      v108 = *v107;
                      free(v107[1]);
                      free(v107);
                      v107 = v108;
                    }

                    while (v108);
                  }

LABEL_244:
                  qword_1ED4263E0 = 0;
                }
              }

              os_unfair_lock_unlock(&unk_1ED4263D8);
              a2 = v27;
              v26 = v117;
              if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v121.__r_.__value_.__l.__data_);
                v26 = v117;
                a2 = v27;
              }

LABEL_247:
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                v109 = v26;
                operator delete(__dst.__r_.__value_.__l.__data_);
                v26 = v109;
LABEL_65:
                a2 = v27;
              }

LABEL_66:
              if (v26)
              {
                return v26;
              }

LABEL_68:
              swift::Demangle::__runtime::mangleNodeAsObjcCString(a2, *v11, a3);
              if (!LODWORD(__p[0]))
              {
                Protocol = objc_getProtocol(name);
                if (Protocol)
                {
                  return Protocol | 1;
                }

                else
                {
                  return 0;
                }
              }

              return 0;
            }

LABEL_153:
            v26 = 0;
            goto LABEL_247;
          }
        }

        v63 = *v59;
        while (2)
        {
          v64 = *v63;
          if ((v64 & 0xFFFFFFFD) != 0)
          {
            v65 = (v61 + (v64 & 0xFFFFFFFFFFFFFFFCLL));
            if (v64)
            {
              v66 = *v65;
              if (*v65)
              {
LABEL_141:
                if (v66)
                {
                  v39 = v66;
                  v67 = swift::_contextDescriptorMatchesMangling(v66, v27);
                  a2 = v27;
                  if (v67)
                  {
                    goto LABEL_147;
                  }
                }
              }
            }

            else if (v65)
            {
              v66 = v61 + (v64 & 0xFFFFFFFFFFFFFFFCLL);
              goto LABEL_141;
            }
          }

          ++v63;
          ++v61;
          if (v63 == v62)
          {
            goto LABEL_132;
          }

          continue;
        }
      }
    }

    v51 = *v47;
    while (1)
    {
      v52 = *v51;
      if ((v52 & 0xFFFFFFFD) != 0)
      {
        v53 = (v49 + (v52 & 0xFFFFFFFFFFFFFFFCLL));
        if (v52)
        {
          v54 = *v53;
          if (!*v53)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (!v53)
          {
            goto LABEL_114;
          }

          v54 = v49 + (v52 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v54)
        {
          v39 = v54;
          if (swift::_contextDescriptorMatchesMangling(v54, v27))
          {
            goto LABEL_125;
          }
        }
      }

LABEL_114:
      ++v51;
      ++v49;
      if (v51 == v50)
      {
        goto LABEL_111;
      }
    }
  }

  if (v7 != 5 || ((v8 = *(a2 + 2), v6 == 190) ? (v9 = v8 > 1) : (v9 = 0), !v9))
  {
    if (v6 == 191)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8 != 2)
  {
    goto LABEL_48;
  }

  v10 = *a2;
LABEL_30:
  if ((v13 = *v10, *(v13 + 8) != 163) || v13[1] != 3 || ((v14 = *v13, v15 = *v14, v16 = *(v14 + 2), v15 == 24415) ? (v17 = v16 == 67) : (v17 = 0), !v17))
  {
LABEL_48:
    v11 = *a1;
    goto LABEL_49;
  }

  v18 = a2;
  if (v7 == 2)
  {
LABEL_40:
    v19 = *(v18 + 1);
  }

  else
  {
    if (*(a2 + 2) >= 2u)
    {
      v18 = *a2;
      goto LABEL_40;
    }

    v19 = 0;
  }

  if (*(v19 + 16) != 103)
  {
    goto LABEL_48;
  }

  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 8);
    if (v21 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v21 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v124) = *(v19 + 8);
      if (v21)
      {
        memmove(__p, v20, v21);
      }

      *(__p + v21) = 0;
      if (v124 >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      goto LABEL_105;
    }

LABEL_249:
    std::string::__throw_length_error[abi:nn200100]();
  }

  __p[0] = 0;
  __p[1] = 0;
  v40 = __p;
  v124 = 0;
LABEL_105:
  result = objc_getProtocol(v40) | 1;
  if (SHIBYTE(v124) < 0)
  {
    v41 = result;
    operator delete(__p[0]);
    return v41;
  }

  return result;
}

char *anonymous namespace::DecodedMetadataBuilder::createProtocolCompositionType@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = 0;
  if ((a4 & 1) != 0 || a3)
  {
LABEL_12:
    if (a3)
    {
      operator new();
    }
  }

  else if (a2)
  {
    v8 = 8 * a2;
    v9 = a1;
    while ((*v9 & 1) == 0)
    {
      v10 = *v9 ? *v9 : 0;
      if ((*(v10 + 2) & 1) == 0)
      {
        break;
      }

      ++v9;
      v8 -= 8;
      if (!v8)
      {
        v7 = 1;
        goto LABEL_12;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  result = swift_getExistentialTypeMetadata(v7, a3, a2, a1);
  *(a5 + 16) = 0;
  *a5 = result;
  if (!result)
  {
    *a5 = "unknown error";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a5 + 16) = 1;
  }

  return result;
}

uint64_t **swift::Demangle::__runtime::decodeRequirement<swift::MetadataPackOrValue,anonymous namespace::DecodedMetadataBuilder::BuiltRequirement,anonymous namespace::DecodedMetadataBuilder::BuiltInverseRequirement,anonymous namespace::DecodedMetadataBuilder::BuiltLayoutConstraint,anonymous namespace::DecodedMetadataBuilder>(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *(result + 18);
  v9 = result;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *result;
      v9 = *result;
      goto LABEL_9;
    }

    v9 = 0;
  }

  switch(v8)
  {
    case 1:
      v11 = result + 1;
      if (v9 != result + 1)
      {
        goto LABEL_21;
      }

      break;
    case 2:
      v11 = result + 2;
      if (v9 != result + 2)
      {
        goto LABEL_21;
      }

      break;
    case 5:
      v10 = *result;
LABEL_9:
      v11 = &v10[*(result + 2)];
      if (v9 == v11)
      {
        return result;
      }

      while (1)
      {
LABEL_21:
        v15 = *v9;
        v16 = *(*v9 + 8);
        if (v16 == 38 || v16 == 43 || v16 == 370)
        {
          goto LABEL_20;
        }

        v17 = *(v15 + 18);
        if (v17 != 2)
        {
          if (v17 != 5 || *(v15 + 2) != 2)
          {
            return result;
          }

          v15 = *v15;
        }

        v18 = *v15;
        v43 = a4;
        v19 = v46;
        if (v46)
        {
LABEL_86:
          if (v19 == 1)
          {
            return v45(v44, 3, 0);
          }

          return result;
        }

        v20 = v44;
        if (!v44)
        {
          return result;
        }

        v21 = *v9;
        v22 = *(*v9 + 8);
        if (v22 == 367)
        {
          v26 = *(v21 + 18);
          v27 = *v9;
          if ((v26 - 1) < 2)
          {
            goto LABEL_47;
          }

          if (v26 == 5 && *(v21 + 2))
          {
            v27 = *v21;
LABEL_47:
            v28 = *v27;
          }

          else
          {
            v28 = 0;
          }

          if (*(v28 + 16) != 243)
          {
            return result;
          }

          v41 = *(v28 + 18);
          if (v41 != 1 && (v41 != 5 || *(v28 + 8) != 1))
          {
            return result;
          }

          if (v26 == 5)
          {
            v21 = *v21;
          }

          v12 = *v21[1];
          v13 = *(a3 + 8);
          if (v13 >= *(a3 + 12))
          {
            result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v13 + 1, 16);
            v13 = *(a3 + 8);
          }

          v4 = v12 | v4 & 0xFFFFFFFFFFFFFF00;
          v14 = (*a3 + 16 * v13);
          *v14 = v20;
          v14[1] = v4;
          ++*(a3 + 8);
          goto LABEL_20;
        }

        if (v22 == 40)
        {
          break;
        }

        if (v22 == 37)
        {
          v23 = *(v21 + 18);
          if (v23 == 2)
          {
            goto LABEL_37;
          }

          if (v23 == 5 && *(v21 + 2) >= 2u)
          {
            v21 = *v21;
LABEL_37:
            v24 = v21[1];
          }

          else
          {
            v24 = 0;
          }

          v43 = a4;
          v30 = 1;
LABEL_53:
          v19 = v46;
          if (v46)
          {
            goto LABEL_86;
          }

          v29 = v44;
          if (!v44)
          {
            return result;
          }

          goto LABEL_55;
        }

        v29 = 0;
LABEL_55:
        v31 = *v9;
        v32 = *(*v9 + 8);
        switch(v32)
        {
          case '*':
            v33 = *(v31 + 18);
            if (v33 == 2)
            {
              goto LABEL_65;
            }

            if (v33 == 5 && *(v31 + 2) >= 2u)
            {
              v31 = *v31;
LABEL_65:
              v34 = v31[1];
            }

            else
            {
              v34 = 0;
            }

            if (*(v34 + 8) != 103)
            {
              return result;
            }

            if (v34[1] != 1)
            {
              return result;
            }

            v35 = **v34 - 66;
            if (v35 > 0x2B || ((1 << v35) & 0x808000F180FLL) == 0)
            {
              return result;
            }

            LODWORD(v44) = 3;
            v45 = v20;
            goto LABEL_72;
          case '(':
            LODWORD(v44) = 2;
LABEL_60:
            v45 = v20;
            v46 = v29;
LABEL_72:
            v36 = *(a2 + 8);
            v37 = *a2;
            if (v36 >= *(a2 + 12))
            {
              if (v37 > &v44 || v37 + 24 * v36 <= &v44)
              {
                result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v36 + 1, 24);
                v37 = *a2;
                goto LABEL_73;
              }

              v42 = &v44 - v37;
              result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v36 + 1, 24);
              v37 = *a2;
              v38 = &v42[*a2];
            }

            else
            {
LABEL_73:
              v38 = &v44;
            }

            v39 = v37 + 24 * *(a2 + 8);
            v40 = *v38;
            *(v39 + 16) = *(v38 + 2);
            *v39 = v40;
            ++*(a2 + 8);
            break;
          case '%':
            LODWORD(v44) = 0;
            goto LABEL_60;
        }

LABEL_20:
        if (++v9 == v11)
        {
          return result;
        }
      }

      v25 = *(v21 + 18);
      if (v25 != 2)
      {
        if (v25 != 5 || *(v21 + 2) < 2u)
        {
          v24 = 0;
          goto LABEL_50;
        }

        v21 = *v21;
      }

      v24 = v21[1];
LABEL_50:
      v43 = a4;
      v30 = 0;
      goto LABEL_53;
    default:
      v11 = 0;
      if (v9)
      {
        goto LABEL_21;
      }

      break;
  }

  return result;
}

uint64_t anonymous namespace::DecodedMetadataBuilder::createGenericTypeParameterType(_anonymous_namespace_::DecodedMetadataBuilder *this, int a2, int a3)
{
  result = *(this + 4);
  if (result)
  {
    LODWORD(v13) = a2;
    v14 = a3;
    result = (*(*result + 48))(result, &v13, &v14);
    v8 = *(this + 11);
    if (*(this + 10) != v8 && (result & 1) != 0)
    {
      v9 = *(v8 - 8);
      v13 = result;
      if (v9 >= *((result & 0xFFFFFFFFFFFFFFFELL) - 8))
      {
        NumElements = swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>::getNumElements(&v13, v5, v6, v7);
        swift::fatalError(0, "Pack index %zu exceeds pack length %zu\n", v11, v12, v9, NumElements, v13);
      }

      return *((result & 0xFFFFFFFFFFFFFFFELL) + 8 * v9);
    }
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledFunctionInputType@<X0>(void *result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  if (a3 > 0x400)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v8 = *(a2 + 16);
    if (v8 != 243 && v8 != 3)
    {
      break;
    }

    v10 = *(a2 + 18);
    if ((v10 - 1) >= 2)
    {
      if (v10 != 5 || !*(a2 + 8))
      {
        a2 = 0;
        goto LABEL_7;
      }

      a2 = *a2;
    }

    a2 = *a2;
LABEL_7:
    if (++a3 == 1025)
    {
      goto LABEL_2;
    }
  }

  v33 = a3;
  v32[0] = a5;
  v32[1] = &v33;
  v32[2] = a4;
  v32[3] = result;
  if (v8 == 234)
  {
    v11 = *(a2 + 18);
    v12 = a2;
    if ((v11 - 1) >= 2)
    {
      if (v11 == 5)
      {
        v13 = *a2;
        v12 = *a2;
        goto LABEL_29;
      }

      v12 = 0;
    }

    switch(v11)
    {
      case 1:
        v17 = (a2 + 8);
        break;
      case 2:
        v17 = (a2 + 16);
        break;
      case 5:
        v13 = *a2;
LABEL_29:
        v17 = (v13 + 8 * *(a2 + 8));
        break;
      default:
        v17 = 0;
        break;
    }

    if (v12 != v17)
    {
      while (2)
      {
        v18 = *v12;
        v19 = (*v12 + 16);
        if (*v19 != 235)
        {
          goto LABEL_35;
        }

        v36 = 0;
        v35 = 0;
        v34 = 0uLL;
        v20 = *(v18 + 18);
        v21 = v18;
        if ((v20 - 1) >= 2)
        {
          if (v20 == 5)
          {
            v22 = *v18;
            v21 = *v18;
LABEL_45:
            v19 = (v22 + 8 * *(v18 + 2));
            if (v21 != v19)
            {
              break;
            }

            goto LABEL_35;
          }

          v21 = 0;
        }

        switch(v20)
        {
          case 1:
            v19 = v18 + 1;
            if (v21 != v18 + 1)
            {
              goto LABEL_54;
            }

            goto LABEL_35;
          case 2:
            goto LABEL_53;
          case 5:
            v22 = *v18;
            goto LABEL_45;
        }

        v19 = 0;
        if (!v21)
        {
LABEL_35:
          if (++v12 == v17)
          {
            goto LABEL_2;
          }

          continue;
        }

        break;
      }

LABEL_54:
      while (2)
      {
        while (2)
        {
          v23 = *v21;
          v24 = *(*v21 + 16);
          switch(v24)
          {
            case 289:
              v36 |= 0x80u;
              *a5 = 1;
              break;
            case 243:
              v25 = *(v23 + 18);
              if ((v25 - 1) < 2)
              {
LABEL_63:
                v26 = *v23;
              }

              else
              {
                if (v25 == 5 && *(v23 + 2))
                {
                  v23 = *v23;
                  goto LABEL_63;
                }

                v26 = 0;
              }

              if (v31)
              {
                v27 = v29;
                v28 = v30;
                *(a6 + 8) = v30;
                *a6 = v28(v27, 2, 0);
                *(a6 + 16) = 1;
                return v28(v27, 3, 0);
              }

              break;
            case 236:
              v34 = *v23;
              if (++v21 == v19)
              {
                goto LABEL_35;
              }

              continue;
            default:
              operator new();
          }

          break;
        }

        ++v21;
LABEL_53:
        if (v21 == v19)
        {
          goto LABEL_35;
        }

        continue;
      }
    }

LABEL_2:
    *a6 = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v34 = 0uLL;
  v36 = 0;
  v35 = 0;
  if (v31)
  {
    v14 = v29;
    v15 = v30;
    *(a6 + 8) = v30;
    *a6 = v15(v14, 2, 0);
    result = v15(v14, 3, 0);
    v16 = 1;
  }

  else
  {
    v16 = 0;
    *a6 = 0;
  }

  *(a6 + 16) = v16;
  return result;
}

void anonymous namespace::DecodedMetadataBuilder::createFunctionType(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48[8] = *MEMORY[0x1E69E9840];
  if (!a3 || (a3 & 1) != 0)
  {
    operator new();
  }

  v11 = a4;
  v46 = v48;
  v47 = 0x800000000;
  v13 = v45;
  v43 = v45;
  v44 = 0x800000000;
  if (a2 < 9)
  {
    v18 = a4 & 0x2000000;
    if (!a2)
    {
      goto LABEL_24;
    }

    v19 = (a4 >> 25) & 1;
  }

  else
  {
    v14 = a1;
    v40 = a5;
    v15 = a6;
    v16 = a7;
    v17 = a8;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, a2, 8);
    v18 = v11 & 0x2000000;
    v19 = (v11 >> 25) & 1;
    if ((v11 & 0x2000000) != 0 && a2 > HIDWORD(v44))
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, a2, 4);
      v18 = v11 & 0x2000000;
      LODWORD(v19) = 1;
    }

    a8 = v17;
    a7 = v16;
    a6 = v15;
    a5 = v40;
    a1 = v14;
  }

  v20 = 32 * a2;
  v21 = (a1 + 24);
  do
  {
    v22 = *(v21 - 1);
    if (v22)
    {
      v23 = (*(v21 - 1) & 1) == 0;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      operator new();
    }

    v24 = v47;
    if (v47 >= HIDWORD(v47))
    {
      v39 = v13;
      v42 = a8;
      v31 = a7;
      v37 = a6;
      v32 = a5;
      v33 = v18;
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v47 + 1, 8);
      v18 = v33;
      a5 = v32;
      a6 = v37;
      v13 = v39;
      a7 = v31;
      a8 = v42;
      v24 = v47;
    }

    *(v46 + v24) = v22;
    LODWORD(v47) = v47 + 1;
    if (v19)
    {
      v25 = *v21;
      v26 = v44;
      if (v44 >= HIDWORD(v44))
      {
        v27 = v13;
        v38 = v13;
        v41 = a8;
        v28 = a7;
        v36 = a6;
        v29 = a5;
        v30 = v18;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v27, v44 + 1, 4);
        v18 = v30;
        a5 = v29;
        a6 = v36;
        v13 = v38;
        a7 = v28;
        a8 = v41;
        v26 = v44;
      }

      *(v43 + v26) = v25;
      LODWORD(v44) = v44 + 1;
    }

    v21 += 8;
    v20 -= 32;
  }

  while (v20);
LABEL_24:
  if (a7)
  {
    if (a7)
    {
      operator new();
    }

    v18 = v11 & 0x2000000;
    v11 |= 0x10000000uLL;
  }

  if (a8)
  {
    swift::fatalError(0, "Expected metadata but got a metadata pack\n", a3, a4);
  }

  if (v18)
  {
    v34 = v43;
  }

  else
  {
    v34 = 0;
  }

  ExtendedFunctionTypeMetadata = swift_getExtendedFunctionTypeMetadata(v11, a6, v46, v34, a3, a7, a5, a8);
  *(a9 + 16) = 0;
  *a9 = ExtendedFunctionTypeMetadata;
  if (!ExtendedFunctionTypeMetadata)
  {
    *a9 = "unknown error";
    *(a9 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a9 + 16) = 1;
  }

  if (v43 != v13)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }
}

uint64_t swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeImplFunctionParam<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 > 0x400)
  {
    return 1;
  }

  v6 = *(a2 + 18);
  v4 = 1;
  if (v6 == 2)
  {
    v8 = a2;
  }

  else
  {
    if (v6 != 5)
    {
      return v4;
    }

    v7 = *(a2 + 8);
    if (v7 < 2)
    {
      return 1;
    }

    v8 = *a2;
    v4 = v7 - 1;
  }

  if (*(*v8 + 8) != 108)
  {
    return 1;
  }

  v9 = v8[v4];
  if (*(v9 + 8) != 243)
  {
    return 1;
  }

  ConventionFromString = swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>::getConventionFromString(**v8, (*v8)[1]);
  v32 = ConventionFromString;
  v33 = BYTE4(ConventionFromString);
  v4 = 1;
  if ((ConventionFromString & 0x100000000) == 0)
  {
    return v4;
  }

  v15 = v35;
  if (v35 == 1)
  {
LABEL_50:
    (v34[1])(v34[0], 3, 0);
    return v4;
  }

  v16 = 0;
  v17 = *(a2 + 18);
  for (i = 1; ; ++i)
  {
    switch(v17)
    {
      case 2:
        v19 = 1;
        break;
      case 5:
        v19 = *(a2 + 8) - 1;
        break;
      case 1:
        goto LABEL_45;
      default:
LABEL_29:
        v22 = 0;
        goto LABEL_30;
    }

    if (v19 <= i)
    {
LABEL_45:
      v31 = v16;
      if (v35)
      {
        v29 = 0;
      }

      else
      {
        v29 = v34[0];
      }

      v30 = v29;
      __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a4, &v30, &v32, &v31);
      v4 = 0;
      v15 = v35;
LABEL_49:
      if (v15 != 1)
      {
        return v4;
      }

      goto LABEL_50;
    }

    v20 = *(a2 + 18);
    if (v17 != 2)
    {
      v20 = *(a2 + 8);
    }

    if (v20 <= i)
    {
      goto LABEL_29;
    }

    v21 = a2;
    if ((v17 - 1) >= 2)
    {
      v21 = *a2;
    }

    v22 = v21[i];
LABEL_30:
    v23 = *(v22 + 16);
    v4 = 1;
    if (v23 > 0x71)
    {
      if (v23 == 114)
      {
        LOBYTE(v4) = 4;
      }

      else
      {
        if (v23 != 115)
        {
          goto LABEL_49;
        }

        LOBYTE(v4) = 8;
      }

      goto LABEL_15;
    }

    if (v23 != 112)
    {
      if (v23 != 113)
      {
        goto LABEL_49;
      }

      LOBYTE(v4) = 2;
      goto LABEL_15;
    }

    v24 = *(v22 + 8);
    if (!v24)
    {
      LOBYTE(v4) = 0;
      goto LABEL_15;
    }

    if (v24 != 13)
    {
      break;
    }

    v25 = *v22;
    v26 = *v25;
    v27 = *(v25 + 5);
    v28 = v26 == 0x76697265446F6E40 && v27 == 0x6576697461766972;
    v4 = 1;
    if (!v28)
    {
      goto LABEL_49;
    }

LABEL_15:
    v16 |= v4;
  }

  v4 = 1;
  if (v35 == 1)
  {
    goto LABEL_50;
  }

  return v4;
}

uint64_t swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeImplFunctionResult<swift::Demangle::__runtime::ImplFunctionResult<swift::MetadataPackOrValue>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 > 0x400)
  {
    return 1;
  }

  v6 = *(a2 + 18);
  v4 = 1;
  if (v6 == 2)
  {
    v8 = a2;
  }

  else
  {
    if (v6 != 5)
    {
      return v4;
    }

    v7 = *(a2 + 8);
    if (v7 < 2)
    {
      return 1;
    }

    v8 = *a2;
    v4 = v7 - 1;
  }

  if (*(*v8 + 8) != 108)
  {
    return 1;
  }

  v9 = v8[v4];
  if (*(v9 + 8) != 243)
  {
    return 1;
  }

  ConventionFromString = swift::Demangle::__runtime::ImplFunctionResult<swift::MetadataPackOrValue>::getConventionFromString(**v8, (*v8)[1]);
  v32 = ConventionFromString;
  v33 = BYTE4(ConventionFromString);
  v4 = 1;
  if ((ConventionFromString & 0x100000000) == 0)
  {
    return v4;
  }

  v15 = v35;
  if (v35 == 1)
  {
    goto LABEL_46;
  }

  v16 = 0;
  v17 = *(a2 + 18);
  for (i = 1; ; ++i)
  {
    switch(v17)
    {
      case 2:
        v19 = 1;
        break;
      case 5:
        v19 = *(a2 + 8) - 1;
        break;
      case 1:
        goto LABEL_40;
      default:
LABEL_29:
        v22 = 0;
        goto LABEL_30;
    }

    if (v19 <= i)
    {
      break;
    }

    v20 = *(a2 + 18);
    if (v17 != 2)
    {
      v20 = *(a2 + 8);
    }

    if (v20 <= i)
    {
      goto LABEL_29;
    }

    v21 = a2;
    if ((v17 - 1) >= 2)
    {
      v21 = *a2;
    }

    v22 = v21[i];
LABEL_30:
    v23 = *(v22 + 8);
    if (v23 == 113)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      if (v23 != 112)
      {
        goto LABEL_44;
      }

      v24 = *(v22 + 1);
      if (v24)
      {
        if (v24 != 13)
        {
LABEL_44:
          v4 = 1;
          goto LABEL_45;
        }

        v25 = *v22;
        v26 = *v25;
        v27 = *(v25 + 5);
        v28 = v26 == 0x76697265446F6E40 && v27 == 0x6576697461766972;
        v4 = 1;
        if (!v28)
        {
          goto LABEL_45;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    v16 |= v4;
  }

LABEL_40:
  v31 = v16;
  if (v35)
  {
    v29 = 0;
  }

  else
  {
    v29 = v34[0];
  }

  v30 = v29;
  __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a4, &v30, &v32, &v31);
  v4 = 0;
  v15 = v35;
LABEL_45:
  if (v15 == 1)
  {
LABEL_46:
    (v34[1])(v34[0], 3, 0);
  }

  return v4;
}

void anonymous namespace::DecodedMetadataBuilder::createTupleType(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  if (a2)
  {
    if (a2 == 1 && !*(a3 + 8))
    {
      *(a5 + 16) = 0;
      v24 = *a1;
      *a5 = *a1;
      if (!v24)
      {
        *a5 = "unknown error";
        *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        *(a5 + 16) = 1;
      }

      return;
    }

    v10 = 8 * a2;
    v11 = a1;
    do
    {
      if (*v11)
      {
        v12 = (*v11 & 1) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        operator new();
      }

      ++v11;
      v10 -= 8;
    }

    while (v10);
  }

  memset(&v25, 0, sizeof(v25));
  if (a4)
  {
    v13 = 0;
    while (1)
    {
      v14 = a3 + 16 * v13;
      v15 = *(v14 + 8);
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      if (v15)
      {
        v17 = *v14;
        if (!size)
        {
          std::string::append(&v25, v13, 32);
        }

        std::string::append(&v25, v17, v15);
      }

      else if (!size)
      {
        goto LABEL_15;
      }

      std::string::push_back(&v25, 32);
LABEL_15:
      if (a4 == ++v13)
      {
        v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
        v19 = v25.__r_.__value_.__l.__size_;
        goto LABEL_25;
      }
    }
  }

  v19 = 0;
  v18 = 0;
LABEL_25:
  if ((v18 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    v21 = v7 | 0x10000;
  }

  else
  {
    v21 = v7;
  }

  if ((v18 & 0x80) != 0)
  {
    if (v19)
    {
      v22 = v25.__r_.__value_.__r.__words[0];
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v18)
  {
    v22 = &v25;
  }

  else
  {
    v22 = 0;
  }

  swift_getTupleTypeMetadata(255, v21, a1, v22, 0);
  *(a5 + 16) = 0;
  *a5 = v23;
  if (v23)
  {
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    *a5 = "unknown error";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a5 + 16) = 1;
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v25.__r_.__value_.__l.__data_);
}

uint64_t anonymous namespace::DecodedMetadataBuilder::createPackType@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 8 * a2;
    v5 = a1;
    do
    {
      if (*v5)
      {
        v6 = (*v5 & 1) == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        operator new();
      }

      ++v5;
      v4 -= 8;
    }

    while (v4);
  }

  result = swift_allocateMetadataPack(a1, a2);
  if ((result & 1) == 0)
  {
    swift::fatalError(0, "Cannot have an on-stack pack here\n", v8, v9);
  }

  *(a3 + 16) = 0;
  *a3 = result;
  return result;
}

void anonymous namespace::DecodedMetadataBuilder::createDependentMemberType(const void *a1@<X0>, size_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[4] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) != 0 || (!a4 ? (v8 = 0) : (v8 = a4), (v9 = *(v8 + 20), v10 = (v8 + 20 + v9), v9) ? (v11 = v10 == 0) : (v11 = 1), v11 || (v12 = strlen((v8 + 20 + v9))) == 0))
  {
LABEL_58:
    *a5 = "unknown error";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a5 + 16) = 1;
    return;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    v15 = memchr(v10, 32, v13);
    v18 = v15 ? v15 - v10 : -1;
    v19 = v13 >= v18 ? v18 : v13;
    if (v19 == a2 && (!v18 || !memcmp(v10, a1, a2)))
    {
      break;
    }

    ++v14;
    if (v13 <= v18)
    {
      v10 += v19;
    }

    else
    {
      v10 += v19 + 1;
    }

    v13 = (__PAIR128__(v13, v18) - __PAIR128__(v19, v13)) >> 64;
    if (!v13)
    {
      goto LABEL_58;
    }
  }

  v20 = *(v8 + 16);
  v21 = v8;
  if (v8)
  {
    v21 = v8;
  }

  v22 = v21;
  if (v21 == -24)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21 + 24;
  }

  if (!v20)
  {
LABEL_60:
    __break(1u);
  }

  v24 = 0;
  v25 = (v23 + 12 * *(v22 + 12));
  while ((*v25 & 0xF) != 7)
  {
LABEL_31:
    v25 += 2;
    if (!--v20)
    {
      goto LABEL_60;
    }
  }

  if (v24 != v14)
  {
    ++v24;
    goto LABEL_31;
  }

  if (!a3 || (a3 & 1) != 0)
  {
    if ((a3 & 1) == 0)
    {
      swift::fatalError(0, "Expected a metadata pack but got metadata\n", v16, v17);
    }

    v40 = v42;
    v41 = 0x400000000;
    v28 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v29 = *((a3 & 0xFFFFFFFFFFFFFFFELL) - 8);
    if (v29)
    {
      do
      {
        v30 = *v28;
        v31 = swift_conformsToProtocolCommon(*v28, v8);
        if (v31)
        {
          if (v8)
          {
            v32 = v8;
          }

          else
          {
            v32 = 0;
          }

          swift_getAssociatedTypeWitness(255, v31, v30, v32 + 24 + 12 * *(v32 + 12) - 8, v25);
        }

        v33 = v41;
        if (v41 >= HIDWORD(v41))
        {
          v35 = v31;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 8);
          v31 = v35;
          v33 = v41;
        }

        *(v40 + v33) = v31;
        v34 = (v41 + 1);
        LODWORD(v41) = v41 + 1;
        ++v28;
        --v29;
      }

      while (v29);
      v36 = v40;
    }

    else
    {
      v34 = 0;
      v36 = v42;
    }

    MetadataPack = swift_allocateMetadataPack(v36, v34);
    *(a5 + 16) = 0;
    *a5 = MetadataPack;
    if (!MetadataPack)
    {
      *a5 = "unknown error";
      *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(a5 + 16) = 1;
    }

    if (v40 != v42)
    {
      free(v40);
    }
  }

  else
  {
    v26 = swift_conformsToProtocolCommon(a3, v8);
    if (!v26)
    {
      goto LABEL_58;
    }

    v27 = v8 ? v8 : 0;
    swift_getAssociatedTypeWitness(255, v26, a3, v27 + 24 + 12 * *(v27 + 12) - 8, v25);
    *(a5 + 16) = 0;
    *a5 = v38;
    if (!v38)
    {
      goto LABEL_58;
    }
  }
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<std::pair<unsigned int,unsigned int>>::emplace_back<unsigned long long,unsigned long long>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned int>,true>::growAndEmplaceBack<unsigned long long,unsigned long long>(a1, a2, a3);
  }

  v4 = *a1;
  v5 = (*a1 + 8 * v3);
  v6 = *a3;
  *v5 = *a2;
  v5[1] = v6;
  v7 = v3 + 1;
  *(a1 + 8) = v7;
  return v4 + 8 * v7 - 8;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<std::pair<swift::MetadataPackOrValue,swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue&,swift::MetadataPackOrValue>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<swift::MetadataPackOrValue,swift::MetadataPackOrValue>,true>::growAndEmplaceBack<swift::MetadataPackOrValue&,swift::MetadataPackOrValue>(a1, a2, a3);
  }

  v4 = (*a1 + 16 * v3);
  *v4 = *a2;
  v4[1] = *a3;
  v5 = v3 + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<anonymous namespace::DecodedMetadataBuilder::BuiltSILBoxField>::emplace_back<swift::MetadataPackOrValue,BOOL &>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
  }

  v4 = *a1 + 16 * v3;
  v5 = *a3;
  *v4 = *a2;
  *(v4 + 8) = v5;
  *(a1 + 8) = v3 + 1;
  return a1;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::vector<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue*,unsigned int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = (16 * v11);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    v5[1] = v7;
    v8 = (v5 + 2);
  }

  *(a1 + 8) = v8;
  return v8 - 16;
}

void anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v57[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) != 315)
  {
LABEL_29:
    *a6 = "unknown error";
    *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a6 + 16) = 1;
    return;
  }

  if (*a2)
  {
    v11 = *a2;
  }

  else
  {
    v11 = 0;
  }

  if (qword_1ED426320 != -1)
  {
  }

  if (qword_1ED4262E0 != -1)
  {
    swift::addImageDynamicReplacementBlockCallback(a1);
  }

  os_unfair_lock_lock(&DynamicReplacementLock);
  if (!dword_1ED426318)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    v12 = (v11 >> 9) ^ (v11 >> 4);
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v13) = v12 & (dword_1ED426318 - 1);
  v14 = (opaqueTypeMappings + 16 * v13);
  v15 = *v14;
  if (*v14 != v11)
  {
    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (dword_1ED426318 - 1);
      v15 = *(opaqueTypeMappings + 16 * v13);
      if (v15 == v11)
      {
        v14 = (opaqueTypeMappings + 16 * v13);
        goto LABEL_19;
      }
    }

LABEL_18:
    v14 = (opaqueTypeMappings + 16 * dword_1ED426318);
  }

LABEL_19:
  if (v14 == (opaqueTypeMappings + 16 * dword_1ED426318))
  {
    v18 = 0;
  }

  else
  {
    v18 = v14[1];
  }

  os_unfair_lock_unlock(&DynamicReplacementLock);
  if (!v18)
  {
    v18 = v11;
  }

  if (!v18)
  {
    goto LABEL_29;
  }

  v20 = v18 + 4;
  v19 = *(v18 + 4);
  if (!v19)
  {
    goto LABEL_32;
  }

  v21 = ((v19 & 0xFFFFFFFFFFFFFFFELL) + v20);
  if (v19)
  {
    if (*v21)
    {
      v22 = *v21;
      goto LABEL_33;
    }

LABEL_32:
    v22 = 0;
    goto LABEL_33;
  }

  if (!v21)
  {
    goto LABEL_32;
  }

  v22 = ((v19 & 0xFFFFFFFFFFFFFFFELL) + v20);
LABEL_33:
  v55 = v57;
  v56 = 0x800000000;
  if (a4)
  {
    LODWORD(v23) = 0;
    v24 = a3 + 16 * a4;
    do
    {
      v25 = *a3;
      v26 = *(a3 + 8);
      if (v26 + v23 > HIDWORD(v56))
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v26 + v23, 8);
        LODWORD(v23) = v56;
      }

      if (v26)
      {
        memcpy(&v55[8 * v23], v25, 8 * v26);
        LODWORD(v23) = v56;
      }

      v23 = (v23 + v26);
      LODWORD(v56) = v23;
      a3 += 16;
    }

    while (a3 != v24);
    v27 = v55;
  }

  else
  {
    v23 = 0;
    v27 = v57;
  }

  v53[0] = v54;
  v53[1] = 0x800000000;
  v51[0] = v52;
  v51[1] = 0x800000000;
  _gatherGenericParameters(v22, v27, v23, 0, v53, v51, *a1, &v45);
  if (v47)
  {
    *(a6 + 16) = 1;
    v28 = v45;
    v29 = v46;
    *(a6 + 8) = v46;
    *a6 = v29(v28, 2, 0);
    v29(v28, 3, 0);
  }

  else
  {
    v31 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v18) + 4 * a5);
    v32 = *v31;
    v33 = v31 + v32;
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v34, v30);
    LODWORD(v45) = 0;
    v46 = v18;
    v47 = v51[0];
    v48 = v50;
    v49 = 0x800000000;
    v50[32] = 0;
    v41[0] = &unk_1EEEAD158;
    v41[1] = &v45;
    v42 = v41;
    v39[0] = &unk_1EEEAD1A0;
    v39[1] = &v45;
    v40 = v39;
    swift_getTypeByMangledName(v43, 0, SymbolicMangledNameStringRef, v36, v51[0], v41, v39);
    v37 = v44;
    if (v44)
    {
      v38 = 0;
    }

    else
    {
      v38 = v43[0];
    }

    *(a6 + 16) = 0;
    *a6 = v38;
    if (!v38)
    {
      *a6 = "unknown error";
      *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(a6 + 16) = 1;
    }

    if (v37 == 1)
    {
      (v43[1])();
    }

    if (v40 == v39)
    {
      (*(*v40 + 32))(v40);
    }

    else if (v40)
    {
      (*(*v40 + 40))();
    }

    if (v42 == v41)
    {
      (*(*v42 + 32))(v42);
    }

    else if (v42)
    {
      (*(*v42 + 40))();
    }

    if (v48 != v50)
    {
      free(v48);
    }
  }

  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  if (v55 != v57)
  {
    free(v55);
  }
}

void *anonymous namespace::DecodedMetadataBuilder::createBuiltinFixedArrayType@<X0>(char *a1@<X1>, uint64_t a2@<X0>, char *a3@<X3>, uint64_t a4@<X8>)
{
  if (!a1 || (a1 & 1) != 0)
  {
    swift::fatalError(0, "Expected metadata but got a metadata pack\n", a1, a3);
  }

  result = swift_getFixedArrayTypeMetadata(255, a2, a1);
  *(a4 + 16) = 0;
  *a4 = result;
  if (!result)
  {
    *a4 = "unknown error";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a4 + 16) = 1;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C401AB4594ELL, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long>(char const*,int,unsigned int,int,char const*,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long>(char const*,int,unsigned int,int,char const*,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C400DFE80CBLL, a3);
    return 0;
  }

  return result;
}

char *_ZZN5swift15TypeLookupErrorC1IZNS_L19TypeLookupErrorImplIJEEES0_PKcDpT_EUlvE_EERKT_ENUlPvNS0_7CommandESB_E_8__invokeESB_SC_SB_(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3);
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x50C40EE9192B6, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int>(char const*,int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int>(char const*,int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 8), *(result + 9));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C400DFE80CBLL, a3);
    return 0;
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#1}>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EEEAD080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#1}>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, const char *a3, char *a4)
{
  if (*a2)
  {
    return 0;
  }

  v6 = *a3;
  if (*(a1 + 16) <= v6)
  {
    return 0;
  }

  result = *(*(a1 + 8) + 8 * v6);
  if (result)
  {
    v8 = (result & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    swift::fatalError(0, "Expected metadata but got a metadata pack\n", a3, a4, v4, v5);
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#2},std::allocator<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#2}>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EEEAD0C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#2},std::allocator<anonymous namespace::DecodedMetadataBuilder::createSymbolicExtendedExistentialType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>)::{lambda(unsigned int,unsigned int)#2}>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, const char *a3, char *a4)
{
  v6 = *a2;
  if (*(a1 + 16) <= v6)
  {
    return 0;
  }

  result = *(*(a1 + 8) + 8 * v6);
  if (result)
  {
    v8 = (result & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    swift::fatalError(0, "Expected metadata but got a metadata pack\n", a3, a4, v4, v5);
  }

  return result;
}

uint64_t swift::ConcurrentReadableHashMap<anonymous namespace::ProtocolDescriptorCacheEntry,swift::LazyMutex>::find<std::string>(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a1 + 23);
  v9 = *(a1 + 8);
  if ((v8 & 0x80u) != 0)
  {
    a1 = *a1;
    v8 = v9;
  }

  v10 = __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(a1, (a1 + v8));
  v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = 4;
  if ((a2 & 3) != 0 && v11)
  {
    v12 = *v11;
  }

  v13 = ~(-1 << v12);
  if ((a2 & 3) != 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v14 = 0;
  }

  while (1)
  {
    v15 = (v10 & v13) <= 1 ? 1 : v10 & v13;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v16) = v14 + v15;
      LOBYTE(v16) = atomic_load_explicit((v14 + v15), memory_order_acquire);
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      v16 = (a2 >> (4 * v15)) & 0xF;
      if (!v16)
      {
        return 0;
      }
    }

LABEL_23:
    v17 = (v16 - 1);
    if (v17 < a3)
    {
      v18 = a4 + 24 * v17;
      v19 = *(v7 + 23);
      v20 = v19 >= 0 ? v7 : *v7;
      v21 = v19 >= 0 ? *(v7 + 23) : *(v7 + 8);
      if (v21 == *(v18 + 8) && (!v21 || !memcmp(v20, *v18, v21)))
      {
        return v18;
      }
    }

    v10 = v15 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v16) = v14 + 2 * v15;
    LOWORD(v16) = atomic_load_explicit((v14 + 2 * v15), memory_order_acquire);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_23;
  }

  LODWORD(v16) = atomic_load_explicit((v14 + 4 * v15), memory_order_acquire);
  if (v16)
  {
    goto LABEL_23;
  }

  return 0;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(unint64_t a1, _BYTE *a2)
{
  v107 = *MEMORY[0x1E69E9840];
  {
    v92 = a1;
    a1 = v92;
  }

  if (a1 == a2)
  {
    v3 = 0;
    v4 = a1;
  }

  else
  {
    v3 = 0;
    v5 = &a2[~a1];
    v6 = 63;
    if (v5 < 0x3F)
    {
      v6 = &a2[~a1];
    }

    if (v5 < 0x1F)
    {
      goto LABEL_12;
    }

    if (&__src - a1 < 0x20)
    {
      goto LABEL_12;
    }

    v7 = v6 + 1;
    v3 = v7 & 0x60;
    v4 = a1 + v3;
    v8 = &v101;
    v9 = (a1 + 16);
    v10 = v3;
    do
    {
      v11 = *v9;
      *(v8 - 1) = *(v9 - 1);
      *v8 = v11;
      v8 += 4;
      v9 += 2;
      v10 -= 32;
    }

    while (v10);
    a1 += v7 & 0x60;
    if (v7 != v3)
    {
LABEL_12:
      v4 = a1;
      v12 = v3;
      do
      {
        v3 = v12 + 1;
        v13 = *v4++;
        *(&__src + v12) = v13;
        if (v4 == a2)
        {
          break;
        }

        v14 = v12++ >= 0x3F;
      }

      while (!v14);
    }
  }

  if (v4 != a2)
  {
    v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
    v16 = __ROR8__(__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273, 49);
    v17 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed >> 47);
    v18 = 0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (((0x9DDFEA08EB382D69 * (v17 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))) ^ __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))));
    v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
    v20 = (0xB492B66FBE98F273 * __ROR8__(v16 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + v100, 37)) ^ v19;
    v21 = v104 + v16 - 0x4B6D499041670D8DLL * __ROR8__(v105 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed - 0x4B6D499041670D8DLL * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed, 42);
    v22 = 0xB492B66FBE98F273 * __ROR8__(v17 - 0x622015F714C7D297 * (v15 ^ (v15 >> 47)), 33);
    v23 = __src - 0x6D8ED9027DD26057 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v24 = __ROR8__(v23 + v100 + v101, 44) + v23 + __ROR8__(v20 + v17 + v23 + v102, 21);
    v25 = v23 + v100 + v101 + v102;
    v26 = v19 + v103 + v22;
    v27 = __ROR8__(v21 + v101 + v106 + v26, 21) + v26 + __ROR8__(v104 + v105 + v26, 44);
    v28 = v104 + v105 + v26 + v106;
    v29 = 64;
    while (1)
    {
      v37 = 0;
      v38 = v4;
      v39 = &a2[~v4];
      if (v39 >= 0x3F)
      {
        v40 = 63;
      }

      else
      {
        v40 = &a2[~v4];
      }

      if (v39 < 0x1F)
      {
        goto LABEL_29;
      }

      if (&__src - v4 < 0x20)
      {
        goto LABEL_29;
      }

      v41 = v40 + 1;
      v37 = v41 & 0x60;
      v4 += v37;
      v42 = v37;
      v43 = &v101;
      v44 = v38;
      do
      {
        v45 = *v44;
        v46 = v44[1];
        v44 += 2;
        *(v43 - 1) = v45;
        *v43 = v46;
        v43 += 4;
        v42 -= 32;
      }

      while (v42);
      v47 = v44 == a2;
      if (v41 != v37)
      {
LABEL_29:
        v48 = v37;
        do
        {
          v37 = v48 + 1;
          v49 = *v4++;
          *(&__src + v48) = v49;
          v47 = v4 == a2;
          if (v4 == a2)
          {
            break;
          }

          v14 = v48++ >= 0x3F;
        }

        while (!v14);
      }

      v50 = v37 - 1;
      if ((v37 & 0x7FFFFFFFFFFFFFBFLL) == 0)
      {
        goto LABEL_20;
      }

      v95 = v22;
      v96 = v28;
      v97 = v25;
      v98 = v21;
      v51 = v24;
      if (v37 == 63)
      {
        break;
      }

      if (v37 == 1)
      {
        v94 = __src;
        memmove(&__src, &__src + 1, 0x3FuLL);
        HIBYTE(v106) = v94;
        goto LABEL_19;
      }

      v52 = 64 - v37;
      v53 = v37;
      if (v37 != 64 - v37)
      {
        do
        {
          v62 = v53;
          v53 = v52;
          v52 = v62 % v52;
        }

        while (v52);
        v63 = (&__src + v53);
        v22 = v95;
        do
        {
          v64 = (v63 + v50);
          v66 = *(v63 - 1);
          v63 = (v63 - 1);
          v65 = v66;
          v67 = v63;
          do
          {
            v68 = v67;
            v67 = v64;
            *v68 = *v64;
            v69 = (&v107 - v64);
            v70 = __OFSUB__(v37, v69);
            v72 = v37 - v69;
            v71 = (v72 < 0) ^ v70;
            v64 = (&__src + v72);
            if (v71)
            {
              v64 = (v67 + v37);
            }
          }

          while (v64 != v63);
          *v67 = v65;
        }

        while (v63 != &__src);
        goto LABEL_20;
      }

      v54 = ~v38;
      v55 = &a2[v54];
      if (&a2[v54] >= 0x3F)
      {
        v56 = 63;
      }

      else
      {
        v56 = &a2[v54];
      }

      v57 = 62 - v56;
      if (v55 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v55;
      }

      if (v58 >= 0x3F)
      {
        v59 = 63;
      }

      else
      {
        v59 = v58;
      }

      p_src = &__src;
      if (v58 < 7)
      {
        v61 = v37;
        v22 = v95;
        goto LABEL_75;
      }

      if (v55 >= 0x3F)
      {
        v55 = 63;
      }

      if (v55 >= 62 - v55)
      {
        v55 = 62 - v55;
      }

      v22 = v95;
      if (&__src < (&__src + v50 + v55 + 2) && &__src + v37 < &__src + v55 + 1)
      {
        v61 = v37;
        goto LABEL_75;
      }

      v73 = v59 + 1;
      if (v58 >= 0x1F)
      {
        v74 = v73 & 0x60;
        v75 = &v101;
        v76 = (&v101 + v37);
        v77 = v74;
        do
        {
          v78 = *(v75 - 1);
          v79 = *v75;
          v80 = *v76;
          *(v75 - 1) = *(v76 - 1);
          *v75 = v80;
          *(v76 - 1) = v78;
          *v76 = v79;
          v76 += 2;
          v75 += 2;
          v77 -= 32;
        }

        while (v77);
        if (v73 == v74)
        {
          goto LABEL_20;
        }

        if ((v73 & 0x18) == 0)
        {
          p_src = &__src + v74;
          v61 = v37 + v74;
LABEL_75:
          v84 = p_src + 1;
          do
          {
            v85 = *(v84 - 1);
            *(v84 - 1) = *(&__src + v61);
            *(&__src + v61) = v85;
            if (v84 == (&__src + v37))
            {
              break;
            }

            v84 = (v84 + 1);
          }

          while (v61++ != 63);
          goto LABEL_20;
        }
      }

      else
      {
        v74 = 0;
      }

      v61 = v37 + (v73 & 0x78);
      p_src = &__src + (v73 & 0x78);
      v81 = (&__src + v74);
      v82 = v74 - (v73 & 0x78);
      do
      {
        v83 = *v81;
        *v81 = *(v81 + v37);
        *(v81++ + v37) = v83;
        v82 += 8;
      }

      while (v82);
      if (v73 != (v73 & 0x78))
      {
        goto LABEL_75;
      }

LABEL_20:
      v30 = v21 + v25 + v22 + v100;
      v21 = v104 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v21 + v24 + v105, 42);
      v31 = __src - 0x4B6D499041670D8DLL * v24;
      v32 = v31 + v100 + v101;
      v33 = 0xB492B66FBE98F273 * __ROR8__(v30, 37);
      v34 = __ROR8__(v20 + v28, 33);
      v35 = v33 ^ v27;
      v24 = __ROR8__(v32, 44) + v31 + __ROR8__(v35 + v28 + v31 + v102, 21);
      v22 = 0xB492B66FBE98F273 * v34;
      v36 = 0xB492B66FBE98F273 * v34 + v27 + v103;
      v25 = v32 + v102;
      v27 = __ROR8__(v21 + v101 + v36 + v106, 21) + v36 + __ROR8__(v104 + v105 + v36, 44);
      v28 = v104 + v105 + v36 + v106;
      v29 += v37;
      v20 = v35;
      if (v47)
      {
        v87 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v28)));
        v88 = v35 - 0x4B6D499041670D8DLL * (v21 ^ (v21 >> 47)) - 0x622015F714C7D297 * (v87 ^ (v87 >> 47));
        v89 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v24 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ v27)));
        v90 = 0x9DDFEA08EB382D69 * (v89 ^ (v89 >> 47)) - 0x4B6D499041670D8DLL * ((v29 ^ (v29 >> 47)) + v34);
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v90 ^ ((0x9DDFEA08EB382D69 * (v88 ^ v90)) >> 47) ^ (0x9DDFEA08EB382D69 * (v88 ^ v90)))) ^ ((0x9DDFEA08EB382D69 * (v90 ^ ((0x9DDFEA08EB382D69 * (v88 ^ v90)) >> 47) ^ (0x9DDFEA08EB382D69 * (v88 ^ v90)))) >> 47));
      }
    }

    v93 = HIBYTE(v106);
    memmove(&__src + 1, &__src, 0x3FuLL);
    LOBYTE(__src) = v93;
LABEL_19:
    v24 = v51;
    v25 = v97;
    v21 = v98;
    v22 = v95;
    v28 = v96;
    goto LABEL_20;
  }

  return __swift::__runtime::llvm::hashing::detail::hash_short(&__src, v3, __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed);
}

void swift::runtime::trace::protocol_scan_begin(swift::runtime::trace *this@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED426300 != -1)
  {
    swift::runtime::trace::metadata_scan_begin(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1 && !_os_trace_lazy_init_completed_4swift())
  {
    goto LABEL_19;
  }

  if (swift::runtime::trace::LogsToken != -1)
  {
    swift::runtime::trace::metadata_scan_begin();
  }

  if (swift::runtime::trace::TracingEnabled == 1)
  {
    v5 = os_signpost_id_generate(swift::runtime::trace::ScanLog);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        if (this)
        {
          v11 = 0;
          v12 = 0x101010101010101;
          v13 = 1;
          v14 = 0x101010100000000;
          v15 = 1;
          v16 = 256;
          v17 = 1;
          v18 = 0;
          v19 = 0;
          v20[0] = &unk_1EEEAA698;
          v20[1] = swift::Demangle::__runtime::genericParameterName;
          v21 = v20;
          swift::Demangle::__runtime::nodeToString(this, &v11, v7, __p);
          if (v10 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136315138;
          v23 = v8;
          _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "section_scan", "protocol scan for '%s'", buf, 0xCu);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }

          if (v21 == v20)
          {
            (*(*v21 + 32))(v21);
          }

          else if (v21)
          {
            (*(*v21 + 40))();
          }
        }

        else
        {
          *buf = 136315138;
          v23 = "<null>";
          _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "section_scan", "protocol scan for '%s'", buf, 0xCu);
        }
      }
    }
  }

  else
  {
LABEL_19:
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
}

uint64_t _searchTypeMetadataRecordsInSections<swift::ConcurrentReadableArray<anonymous namespace::ProtocolSection>>(uint64_t a1, const char *a2)
{
  v2 = (a1 + 8);
  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_acquire);
  v3 = *(a1 + 16);
  if (v3)
  {
    explicit = atomic_load_explicit(v3, memory_order_acquire);
    if (explicit)
    {
      v6 = (v3 + 1);
      v7 = &v3[2 * explicit + 1];
      while (1)
      {
        v8 = *v6;
        v9 = v6[1];
        if (*v6 != v9)
        {
          break;
        }

LABEL_4:
        v6 += 2;
        if (v6 == v7)
        {
          goto LABEL_16;
        }
      }

      v10 = *v6;
      while (1)
      {
        v11 = *v10;
        if ((v11 & 0xFFFFFFFD) != 0)
        {
          v12 = (v8 + (v11 & 0xFFFFFFFFFFFFFFFCLL));
          if (v11)
          {
            v13 = *v12;
            if (!*v12)
            {
              goto LABEL_7;
            }
          }

          else
          {
            if (!v12)
            {
              goto LABEL_7;
            }

            v13 = v8 + (v11 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v13)
          {
            v14 = v13;
            if (swift::_contextDescriptorMatchesMangling(v13, a2))
            {
              goto LABEL_17;
            }
          }
        }

LABEL_7:
        ++v10;
        ++v8;
        if (v10 == v9)
        {
          goto LABEL_4;
        }
      }
    }
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  return v14;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long,unsigned int>(char const*,int,unsigned int,int,char const*,unsigned long,unsigned int)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long,unsigned int>(char const*,int,unsigned int,int,char const*,unsigned long,unsigned int)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4), *(result + 10));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40363580A0, a3);
    return 0;
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,__swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::MetadataPackOrValue>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::MetadataPackOrValue>&)#1}::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v67 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 24);
  v8 = *(a3 + 24);
  while (1)
  {
    v9 = *(a2 + 8);
    if (v9 <= 0xDA)
    {
      break;
    }

    switch(v9)
    {
      case 0xDBu:
        v8 = v8 & 0xFFFFFF80 | 2;
        break;
      case 0xDCu:
        v8 = v8 & 0xFFFFFF80 | 3;
        break;
      case 0x154u:
        v8 |= 0x200u;
        break;
      default:
        goto LABEL_36;
    }

LABEL_20:
    *(a3 + 24) = v8;
    v10 = *(a2 + 18);
    if ((v10 - 1) < 2)
    {
      goto LABEL_4;
    }

    if (v10 == 5 && *(a2 + 2))
    {
      a2 = *a2;
LABEL_4:
      a2 = *a2;
      goto LABEL_5;
    }

    a2 = 0;
LABEL_5:
    **a1 = 1;
  }

  if (*(a2 + 8) > 0x83u)
  {
    if (v9 == 132)
    {
      v8 |= 0x400u;
    }

    else
    {
      if (v9 != 134)
      {
        goto LABEL_36;
      }

      v8 |= 0x800u;
    }

    goto LABEL_20;
  }

  if (v9 == 128)
  {
    v8 = v8 & 0xFFFFFF80 | 1;
    goto LABEL_20;
  }

  if (v9 == 11 || v9 == 66)
  {
    *(a3 + 24) = v8 | 0x100;
    **a1 = 1;
    v11 = *(a1 + 16);
    v12 = (**(a1 + 8) + 1);
    goto LABEL_26;
  }

LABEL_36:
  v11 = *(a1 + 16);
  v12 = (**(a1 + 8) + 1);
  if (v9 == 243)
  {
    if (*(a2 + 18) - 1 >= 2)
    {
      a2 = *a2;
    }

    a2 = *a2;
    v9 = *(a2 + 8);
  }

  if (v9 != 240)
  {
LABEL_26:
    v14 = v66;
    if (v66 == 1)
    {
      v15 = v64;
      v16 = v65;
      *(a4 + 8) = v65;
      result = v16(v15, 2, 0);
      *a4 = result;
      *(a4 + 16) = 1;
    }

    else
    {
      v17 = v64;
      if (v66)
      {
        v17 = 0;
      }

      *(v4 + 16) = v17;
      v18 = *(v11 + 8);
      v19 = *v11;
      if (v18 >= *(v11 + 12))
      {
        if (v19 <= v4 && v19 + 32 * v18 > v4)
        {
          v56 = v4 - v19;
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v11 + 16, v18 + 1, 32);
          v19 = *v11;
          v4 = *v11 + v56;
        }

        else
        {
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v11 + 16, v18 + 1, 32);
          v19 = *v11;
        }
      }

      v20 = (v19 + 32 * *(v11 + 8));
      v21 = *(v4 + 16);
      *v20 = *v4;
      v20[1] = v21;
      ++*(v11 + 8);
    }

    if (v66 == 1)
    {
      result = v65(v64, 3, 0);
    }

    if (v14 == 1)
    {
      return result;
    }

LABEL_35:
    *a4 = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v22 = *(a2 + 18);
  if (v22 > 2)
  {
    if (v22 != 5 || *(a2 + 2) <= 1u)
    {
LABEL_46:
      operator new();
    }

    a2 = *a2;
  }

  else if (v22 != 2)
  {
    goto LABEL_46;
  }

  v23 = *a2;
  v24 = v7;
  if (v66 == 1)
  {
    v27 = v64;
    v28 = v65;
    *(a4 + 8) = v65;
    result = v28(v27, 2, 0);
    v29 = 0;
    *a4 = result;
    *(a4 + 16) = 1;
  }

  else
  {
    if (v66 || (v30 = v64, (v64 & 1) == 0))
    {
      swift::fatalError(0, "Pack expansion count type should be a pack\n", v25, v26);
    }

    v31 = *v24;
    v33 = *(*v24 + 88);
    v32 = *(*v24 + 96);
    if (v33 >= v32)
    {
      v35 = v31[10];
      v36 = v33 - v35;
      v37 = (v33 - v35) >> 4;
      v38 = v37 + 1;
      if ((v37 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v39 = v32 - v35;
      if (v39 >> 3 > v38)
      {
        v38 = v39 >> 3;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF0)
      {
        v40 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (!(v40 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v41 = (16 * v37);
      v59 = v64;
      *v41 = v64;
      v41[1] = 0;
      v34 = 16 * v37 + 16;
      memcpy(0, v35, v36);
      v31[10] = 0;
      v31[11] = v34;
      v31[12] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      result = v24;
      v30 = v59;
    }

    else
    {
      result = v24;
      *v33 = v64;
      *(v33 + 1) = 0;
      v34 = (v33 + 16);
    }

    v31[11] = v34;
    v42 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
    v43 = *a4;
    if (v42)
    {
      v60 = *a4;
      v44 = 0;
      v45 = *(a4 + 8);
      v58 = *(a4 + 16);
      while (1)
      {
        v46 = *(*result + 88);
        if (*(*result + 80) == v46)
        {
          *(a4 + 16) = v58;
          *a4 = v60;
          *(a4 + 8) = v45;
          swift::fatalError(0, "advancePackExpansion() without beginPackExpansion()\n", v25, v26);
        }

        *(v46 - 8) = v44;
        v47 = v63;
        if (v63 == 1)
        {
          v45 = v62;
          result = v62(v61, 2, 0);
          v60 = result;
          v58 = 1;
        }

        else
        {
          v48 = v61;
          if (v63)
          {
            v48 = 0;
          }

          *(v4 + 16) = v48;
          v49 = *(v11 + 8);
          v50 = *v11;
          v51 = v4;
          if (v49 >= *(v11 + 12))
          {
            if (v50 <= v4 && v50 + 32 * v49 > v4)
            {
              v57 = v4 - v50;
              result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v11 + 16, v49 + 1, 32);
              v50 = *v11;
              v51 = (*v11 + v57);
            }

            else
            {
              result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v11 + 16, v49 + 1, 32);
              v50 = *v11;
              v51 = v4;
            }
          }

          v52 = (v50 + 32 * *(v11 + 8));
          v53 = v51[1];
          *v52 = *v51;
          v52[1] = v53;
          ++*(v11 + 8);
        }

        if (v63 == 1)
        {
          result = v62(v61, 3, 0);
        }

        if (v47 == 1)
        {
          break;
        }

        result = v24;
        if (v42 == ++v44)
        {
          *(a4 + 8) = v45;
          *(a4 + 16) = v58;
          v43 = v60;
          goto LABEL_86;
        }
      }

      v29 = 0;
      *(a4 + 16) = v58;
      *a4 = v60;
      *(a4 + 8) = v45;
    }

    else
    {
LABEL_86:
      *a4 = v43;
      v54 = *(*result + 88);
      if (*(*result + 80) == v54)
      {
        swift::fatalError(0, "endPackExpansion() without beginPackExpansion()\n", v25, v26);
      }

      *(*result + 88) = v54 - 16;
      v29 = 1;
    }
  }

  if (v66 == 1)
  {
    result = v65(v64, 3, 0);
  }

  if (v29)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t anonymous namespace::DecodedMetadataBuilder::beginPackExpansion(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if ((a2 & 1) == 0)
  {
    swift::fatalError(0, "Pack expansion count type should be a pack\n", a3, a4);
  }

  v8 = a2;
  v7 = 0;
  std::vector<std::pair<swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>,unsigned long>>::emplace_back<swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>&,int>(a1 + 80, &v8, &v7);
  if ((v8 & 1) == 0)
  {
    swift::fatalError(0, "Cannot get length of on-stack pack", v4, v5);
  }

  return *((v8 & 0xFFFFFFFFFFFFFFFELL) - 8);
}

uint64_t std::vector<std::pair<swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>,unsigned long>>::emplace_back<swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>&,int>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = (16 * v11);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    v5[1] = v7;
    v8 = (v5 + 2);
  }

  *(a1 + 8) = v8;
  return v8 - 16;
}

uint64_t swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>::getConventionFromString(uint64_t a1, uint64_t __n)
{
  if (__n <= 10)
  {
    if (__n == 3)
    {
      if (*a1 == 26944 && *(a1 + 2) == 110)
      {
        v3 = 0;
        v2 = 0x100000000;
        return v3 | v2;
      }
    }

    else if (__n == 6)
    {
      if (!memcmp(a1, "@inout", 6uLL))
      {
        v2 = 0x100000000;
        v3 = 3;
        return v3 | v2;
      }

      if (!memcmp(a1, "@owned", 6uLL))
      {
        v2 = 0x100000000;
        v3 = 5;
        return v3 | v2;
      }
    }

    else if (__n == 8 && !memcmp(a1, "@unowned", 8uLL))
    {
      v2 = 0x100000000;
      v3 = 6;
      return v3 | v2;
    }

LABEL_34:
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (__n > 13)
  {
    if (__n == 14)
    {
      if (!memcmp(a1, "@in_guaranteed", 0xEuLL))
      {
        v2 = 0x100000000;
        v3 = 2;
        return v3 | v2;
      }
    }

    else if (__n == 16)
    {
      if (!memcmp(a1, "@inout_aliasable", 0x10uLL))
      {
        v2 = 0x100000000;
        v3 = 4;
        return v3 | v2;
      }

      if (!memcmp(a1, "@pack_guaranteed", 0x10uLL))
      {
        v2 = 0x100000000;
        v3 = 9;
        return v3 | v2;
      }
    }

    goto LABEL_34;
  }

  if (__n == 11)
  {
    if (!memcmp(a1, "@guaranteed", 0xBuLL))
    {
      v2 = 0x100000000;
      v3 = 7;
      return v3 | v2;
    }

    if (*a1 == 0x776F5F6B63617040 && *(a1 + 3) == 0x64656E776F5F6B63)
    {
      v2 = 0x100000000;
      v3 = 8;
      return v3 | v2;
    }

    if (!memcmp(a1, "@pack_inout", 0xBuLL))
    {
      v2 = 0x100000000;
      v3 = 10;
      return v3 | v2;
    }

    goto LABEL_34;
  }

  if (__n != 12 || memcmp(a1, "@in_constant", 0xCuLL))
  {
    goto LABEL_34;
  }

  v2 = 0x100000000;
  v3 = 1;
  return v3 | v2;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>,true>::growAndEmplaceBack<swift::MetadataPackOrValue,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a1, a2, a3, a4);
  }

  v5 = *a1 + 16 * v4;
  v6 = *a3;
  v7 = *a4;
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(v5 + 12) = v7;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<swift::Demangle::__runtime::ImplFunctionParam<swift::MetadataPackOrValue>,true>::growAndEmplaceBack<swift::MetadataPackOrValue,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 12))
  {
    v10 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v7 + 1, 16);
    a1 = v10;
    LODWORD(v7) = *(v10 + 8);
  }

  v8 = (*a1 + 16 * v7);
  *v8 = v4;
  v8[1] = v5 | (v6 << 32);
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 16 * v8 - 16;
}

uint64_t swift::Demangle::__runtime::ImplFunctionResult<swift::MetadataPackOrValue>::getConventionFromString(_DWORD *a1, uint64_t __n)
{
  if (__n > 8)
  {
    if (__n == 9)
    {
      if (!memcmp(a1, "@pack_out", 9uLL))
      {
        v2 = 0x100000000;
        v3 = 5;
        return v3 | v2;
      }
    }

    else if (__n == 13)
    {
      if (!memcmp(a1, "@autoreleased", 0xDuLL))
      {
        v2 = 0x100000000;
        v3 = 4;
        return v3 | v2;
      }
    }

    else if (__n == 22 && !memcmp(a1, "@unowned_inner_pointer", 0x16uLL))
    {
      v2 = 0x100000000;
      v3 = 3;
      return v3 | v2;
    }

LABEL_19:
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (__n == 4)
  {
    if (*a1 == 1953853248)
    {
      v3 = 0;
      v2 = 0x100000000;
      return v3 | v2;
    }

    goto LABEL_19;
  }

  if (__n == 6)
  {
    if (!memcmp(a1, "@owned", 6uLL))
    {
      v2 = 0x100000000;
      v3 = 1;
      return v3 | v2;
    }

    goto LABEL_19;
  }

  if (__n != 8 || memcmp(a1, "@unowned", 8uLL))
  {
    goto LABEL_19;
  }

  v2 = 0x100000000;
  v3 = 2;
  return v3 | v2;
}

uint64_t *swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledType(swift::Demangle::__runtime::Node *,unsigned int,BOOL)::{lambda(swift::MetadataPackOrValue)#1}::operator()(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  if (v3 >= *(*result + 12))
  {
    v7 = a2;
    v8 = result;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(*result, v2 + 16, v3 + 1, 8);
    a2 = v7;
    result = v8;
    LODWORD(v3) = *(v2 + 8);
  }

  *(*v2 + 8 * v3) = a2;
  ++*(v2 + 8);
  v4 = result[1];
  v5 = *result[2];
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    v9 = *result[2];
    result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(result[1], v4 + 16, v6 + 1, 16);
    v5 = v9;
    LODWORD(v6) = *(v4 + 8);
  }

  *(*v4 + 16 * v6) = v5;
  ++*(v4 + 8);
  return result;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned int>,true>::growAndEmplaceBack<unsigned long long,unsigned long long>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 8);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  *(*a1 + 8 * v5) = v3 | (v4 << 32);
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 8 * v6 - 8;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<swift::MetadataPackOrValue,swift::MetadataPackOrValue>,true>::growAndEmplaceBack<swift::MetadataPackOrValue&,swift::MetadataPackOrValue>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<anonymous namespace::DecodedMetadataBuilder::BuiltSILBoxField,true>::growAndEmplaceBack<swift::MetadataPackOrValue,BOOL &>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void *swift::Lazy<anonymous namespace::OpaqueTypeMappings>::defaultInitCallback(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::LookupBucketFor<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a2)
    {
      v6 = (v5 >> 9) ^ (v5 >> 4);
    }

    else
    {
      v6 = 0;
    }

    v9 = v3 - 1;
    v10 = v6 & (v3 - 1);
    v7 = (v4 + 16 * v10);
    v11 = *v7;
    if (v5 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v11 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v11 == -8192;
        }

        if (v14)
        {
          v12 = v7;
        }

        v15 = v10 + v13++;
        v10 = v15 & v9;
        v7 = (v4 + 16 * (v15 & v9));
        v11 = *v7;
        if (v5 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v7 = v12;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(unsigned int,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(unsigned int,unsigned int)#1}>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD158;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(unsigned int,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(unsigned int,unsigned int)#1}>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(swift::TargetMetadata<swift::InProcess> const*,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(swift::TargetMetadata<swift::InProcess> const*,unsigned int)#1}>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD1A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(swift::TargetMetadata<swift::InProcess> const*,unsigned int)#1},std::allocator<anonymous namespace::DecodedMetadataBuilder::resolveOpaqueType(swift::Demangle::__runtime::Node *,__swift::__runtime::llvm::ArrayRef<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>,unsigned int)::{lambda(swift::TargetMetadata<swift::InProcess> const*,unsigned int)#1}>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironment::$_0,std::allocator<swift_getTypeByMangledNameInEnvironment::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD1E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironment::$_0,std::allocator<swift_getTypeByMangledNameInEnvironment::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironment::$_1,std::allocator<swift_getTypeByMangledNameInEnvironment::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD230;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironment::$_1,std::allocator<swift_getTypeByMangledNameInEnvironment::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_0,std::allocator<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD278;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_0,std::allocator<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_1,std::allocator<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD2C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_1,std::allocator<swift_getTypeByMangledNameInEnvironmentInMetadataState::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_func_getReturnTypeInfo::$_0,std::allocator<swift_func_getReturnTypeInfo::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD308;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_func_getReturnTypeInfo::$_0,std::allocator<swift_func_getReturnTypeInfo::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_func_getReturnTypeInfo::$_1,std::allocator<swift_func_getReturnTypeInfo::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD350;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_func_getReturnTypeInfo::$_1,std::allocator<swift_func_getReturnTypeInfo::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_func_getParameterTypeInfo::$_0,std::allocator<swift_func_getParameterTypeInfo::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD398;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_func_getParameterTypeInfo::$_0,std::allocator<swift_func_getParameterTypeInfo::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_func_getParameterTypeInfo::$_1,std::allocator<swift_func_getParameterTypeInfo::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD3E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_func_getParameterTypeInfo::$_1,std::allocator<swift_func_getParameterTypeInfo::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_0,std::allocator<swift_distributed_getWitnessTables::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_0,std::allocator<swift_distributed_getWitnessTables::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_1,std::allocator<swift_distributed_getWitnessTables::$_1>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD470;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_1,std::allocator<swift_distributed_getWitnessTables::$_1>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 300) + v7));
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_2,std::allocator<swift_distributed_getWitnessTables::$_2>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD4B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_distributed_getWitnessTables::$_2,std::allocator<swift_distributed_getWitnessTables::$_2>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_0,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD500;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_0,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[1];
  if (*(v5 + 2) <= v3)
  {
    return 0;
  }

  v6 = *v5;
  v7 = v3 ? *(v6 + 4 * (v3 - 1)) : 0;
  v8 = v7 + *a3;
  if (v8 >= *(v6 + 4 * v3))
  {
    return 0;
  }

  v9 = *v4;
  if (*(v9 + 8) <= v8)
  {
    return 0;
  }

  else
  {
    return *(*v9 + 8 * v8);
  }
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_1,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD548;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_2,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_2>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD590;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_2,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_2>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[1];
  if (*(v5 + 2) <= v3)
  {
    return 0;
  }

  v6 = *v5;
  v7 = v3 ? *(v6 + 4 * (v3 - 1)) : 0;
  v8 = v7 + *a3;
  if (v8 >= *(v6 + 4 * v3))
  {
    return 0;
  }

  v9 = *v4;
  if (*(v9 + 8) <= v8)
  {
    return 0;
  }

  else
  {
    return *(*v9 + 8 * v8);
  }
}

uint64_t std::__function::__func<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_3,std::allocator<swift::_gatherWrittenGenericParameters(swift::TargetTypeContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue> &,swift::Demangle::__runtime::Demangler &)::$_3>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD5D8;
  a2[1] = v2;
  return result;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = *a2;
    if (*a2)
    {
      v5 = (v4 >> 9) ^ (v4 >> 4);
    }

    else
    {
      v5 = 0;
    }

    v8 = v2 - 1;
    v9 = v5 & (v2 - 1);
    v6 = (v3 + 16 * v9);
    v10 = *v6;
    if (v4 == *v6)
    {
      return v6;
    }

    v12 = 0;
    v13 = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v6;
      }

      v15 = v9 + v13++;
      v9 = v15 & v8;
      v6 = (v3 + 16 * (v15 & v8));
      v10 = *v6;
      if (v4 == *v6)
      {
        return v6;
      }
    }

    if (v12)
    {
      v6 = v12;
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
LABEL_27:
    v17 = a1;
    __swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::grow(a1, v2);
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::LookupBucketFor<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>(v17, v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = *(v17 + 8);
    v6 = v18;
    goto LABEL_7;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
    goto LABEL_27;
  }

LABEL_7:
  *(a1 + 8) = v7 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  v6[1] = 0;
  return v6;
}

void *__swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = __swift::__runtime::llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_47;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_47:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v22 = *v17;
        if (*v17 != -4096 && v22 != -8192)
        {
          v24 = *a1;
          if (v22)
          {
            v18 = (v22 >> 9) ^ (v22 >> 4);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18 & v16;
          v20 = (v24 + 16 * (v18 & v16));
          v21 = *v20;
          if (v22 != *v20)
          {
            v25 = 0;
            v26 = 1;
            while (v21 != -4096)
            {
              if (v25)
              {
                v27 = 0;
              }

              else
              {
                v27 = v21 == -8192;
              }

              if (v27)
              {
                v25 = v20;
              }

              v28 = v19 + v26++;
              v19 = v28 & v16;
              v20 = (v24 + 16 * (v28 & v16));
              v21 = *v20;
              if (v22 == *v20)
              {
                goto LABEL_15;
              }
            }

            if (v25)
            {
              v20 = v25;
            }
          }

LABEL_15:
          *v20 = v22;
          v20[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v29 = *(a1 + 16);
  if (v29)
  {
    if (((v29 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_43;
    }

    v30 = ((v29 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v30 & 0x1FFFFFFFFFFFFFFELL)];
    v31 = result + 2;
    v32 = v30 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v31 - 2) = -4096;
      *v31 = -4096;
      v31 += 4;
      v32 -= 2;
    }

    while (v32);
    if (v30 != (v30 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_43:
      v33 = &result[2 * v29];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v33);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_2(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, swift::runtime::environment::initialize);
}

float swift_intToFloat32(uint64_t *a1, unint64_t a2)
{
  v2 = ((a2 >> 8) + 63) >> 6;
  v3 = *a1;
  if (v2 == 1)
  {
    return v3;
  }

  v5 = v3;
  if (v2 == 2)
  {
    v6 = 1.8447e19;
  }

  else
  {
    v7 = 2 - v2;
    v8 = (a1 + 1);
    v6 = 1.8447e19;
    do
    {
      v9 = *v8++;
      v5 = v5 + (v9 * v6);
      v6 = v6 * 1.8447e19;
    }

    while (!__CFADD__(v7++, 1));
  }

  return v5 + (a1[v2 - 1] * v6);
}

double swift_intToFloat64(uint64_t *a1, unint64_t a2)
{
  v2 = ((a2 >> 8) + 63) >> 6;
  v3 = *a1;
  if (v2 == 1)
  {
    return v3;
  }

  v5 = v3;
  if (v2 == 2)
  {
    v6 = 1.84467441e19;
  }

  else
  {
    v7 = 2 - v2;
    v8 = (a1 + 1);
    v6 = 1.84467441e19;
    do
    {
      v9 = *v8++;
      v5 = v5 + v9 * v6;
      v6 = v6 * 1.84467441e19;
    }

    while (!__CFADD__(v7++, 1));
  }

  return v5 + a1[v2 - 1] * v6;
}

void swift_once(dispatch_once_t *a1, dispatch_function_t function, void *context)
{
  if (*a1 != -1)
  {
    dispatch_once_f(a1, context, function);
  }
}

uint64_t swift_getRuntimeLibraryPath()
{
  {
    swift_getRuntimeLibraryPath_cold_1();
  }
}

uint64_t anonymous namespace::_swift_initRuntimePath(_anonymous_namespace_ *this, void *a2)
{
  result = dyld_image_path_containing_address();
  return result;
}

uint64_t swift_getRootPath()
{
  {
    swift_getRootPath_cold_1();
  }
}

void anonymous namespace::_swift_initRootPath(_anonymous_namespace_ *this, void *a2)
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift::runtime::bincompat::checkBinCompatEnvironmentVariable();
  }

  v2 = swift::runtime::environment::SWIFT_ROOT_variable;
  if (!swift::runtime::environment::SWIFT_ROOT_variable || !*swift::runtime::environment::SWIFT_ROOT_variable)
  {
    {
      swift_getRuntimeLibraryPath_cold_1();
    }

    {
      v2 = 0;
      goto LABEL_51;
    }

    do
    {
      {
        break;
      }

      v9 = *--v8;
    }

    while (v9 != 47);
    {
      v8 -= 10;
    }

    else
    {
      v11 = v8;
      do
      {
        if (v11 <= v7)
        {
          break;
        }

        v12 = *--v11;
      }

      while (v12 != 47);
      if ((v11 - v7) > 9 && *(v11 - 10) == 47 && *(v11 - 9) == 108 && *(v11 - 8) == 105 && *(v11 - 7) == 98 && *(v11 - 6) == 47 && !strncmp((v11 - 5), "swift", 5uLL))
      {
        goto LABEL_52;
      }

      do
      {
        if (v11 <= v7)
        {
          break;
        }

        v13 = *--v11;
      }

      while (v13 != 47);
      if ((v11 - v7) >= 10 && *(v11 - 10) == 47 && *(v11 - 9) == 108 && *(v11 - 8) == 105 && *(v11 - 7) == 98 && *(v11 - 6) == 47 && !strncmp((v11 - 5), "swift", 5uLL))
      {
LABEL_52:
        v8 = v11 - 10;
      }

      else if (v10 >= 5 && *(v8 - 4) == 47 && *(v8 - 3) == 98 && *(v8 - 2) == 105)
      {
        v14 = -4;
        if (*(v8 - 1) != 110)
        {
          v14 = 0;
        }

        v8 += v14;
      }
    }

    v15 = v8 - v7;
    if (v8 == v7)
    {
      v2 = "./";
      goto LABEL_51;
    }

    v16 = v15 + 1;
    v2 = malloc_type_malloc(v15 + 2, 0x100004077774924uLL);
    memcpy(v2, v7, v16);
    v6 = &v2[v16];
    goto LABEL_48;
  }

  v3 = strlen(swift::runtime::environment::SWIFT_ROOT_variable);
  if (*(swift::runtime::environment::SWIFT_ROOT_variable + v3 - 1) != 47)
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3 + 2, 0x100004077774924uLL);
    memcpy(v5, v2, v4);
    v5[v4] = 47;
    v6 = &v5[v4 + 1];
    v2 = v5;
LABEL_48:
    *v6 = 0;
  }

LABEL_51:
}

_BYTE *swift_copyAuxiliaryExecutablePath(_anonymous_namespace_ *this, uint64_t a2, char *a3)
{
  {
    swift_getRootPath_cold_1();
  }

  {
    return 0;
  }

  if (!result)
  {
    if (!result)
    {
      if (!result)
      {
        if (!result)
        {
          if (!result)
          {
            if (!result)
            {
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *anonymous namespace::_swift_tryAuxExePath(_anonymous_namespace_ *this, _anonymous_namespace_ *a2, char *a3, ...)
{
  va_start(va, a3);
  if (stat(v4, &v9))
  {
    goto LABEL_4;
  }

  if (stat(v7, &v9))
  {
    free(v7);
LABEL_4:
    v7 = 0;
  }

  free(v4);
  return v7;
}

_BYTE *anonymous namespace::_swift_joinPathsV(_anonymous_namespace_ *this, char *a2, char *a3)
{
  v24 = a2;
  v4 = strlen(this);
  if (v4)
  {
    do
    {
      v5 = *(this + v4 - 1);
      v6 = v5 == 47;
      if (v5 != 47)
      {
        break;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

LABEL_10:
  while (1)
  {
    v8 = v24;
    v24 += 8;
    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v10 = strlen(*v8);
    if (v10)
    {
      v11 = ~v10;
      v12 = &v9[v10 - 1];
      while (1)
      {
        v13 = *v12--;
        if (v13 != 47)
        {
          break;
        }

        if (++v11 == -1)
        {
          goto LABEL_10;
        }
      }

      v7 -= v11;
    }
  }

  v14 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  v15 = v14;
  if (v6)
  {
    *v14 = 47;
    v16 = v14 + 1;
  }

  else
  {
    memcpy(v14, this, v4);
    v16 = &v15[v4];
  }

  v17 = a2;
  v26 = a2 + 8;
  v18 = *v17;
  if (*v17)
  {
    do
    {
      v22 = strlen(v18);
      if (v22)
      {
        while (v18[v22 - 1] == 47)
        {
          if (!--v22)
          {
            goto LABEL_22;
          }
        }

        *v16 = 47;
        v19 = v16 + 1;
        v20 = v22;
        memcpy(v19, v18, v22);
        v16 = &v19[v20];
      }

LABEL_22:
      v21 = v26;
      v26 += 8;
      v18 = *v21;
    }

    while (*v21);
  }

  v15[v7] = 0;
  return v15;
}

size_t _swift_strlcpy(char *a1, const char *__s, size_t a3)
{
  v6 = strlen(__s);
  v7 = v6;
  if (v6 >= a3)
  {
    if (a3)
    {
      v8 = a3 - 1;
      memmove(a1, __s, v8);
      a1[v8] = 0;
    }
  }

  else
  {
    memmove(a1, __s, v6 + 1);
  }

  return v7;
}

Class swift::TargetTypeReference<swift::InProcess>::getObjCClass(Class result, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v2 = *result;
    if (v2)
    {
      return objc_lookUpClass(result + v2);
    }

    else
    {
      return objc_lookUpClass(0);
    }
  }

  else if (a2 == 3)
  {
    return *(result + *result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(char *result)
{
  v1 = (*(result + 3) >> 3) & 7;
  if (v1 < 2)
  {
    v7 = *(result + 1);
    v5 = result + 4;
    v6 = v7;
    if (v1)
    {
      if (v6)
      {
        v8 = &v5[v6];
      }

      else
      {
        v8 = 0;
      }

      if (!*v8)
      {
        return 0;
      }

      v9 = *v8;
    }

    else
    {
      if (!v6 || !&v5[v6])
      {
        return 0;
      }

      v9 = &v5[v6];
    }

    if ((*v9 & 0x10) != 0 && v9)
    {
      result = 0;
      if ((*v9 & 0x80) == 0)
      {
        v12 = v9 + 12;
        v11 = *(v9 + 3);
        if (v11)
        {
          if ((v12 + v11))
          {
            return ((v12 + v11))(255);
          }
        }
      }

      return result;
    }

    if ((*v9 & 0x1F) == 3 && v9)
    {

      return swift::_getSimpleProtocolTypeMetadata(v9);
    }

    return 0;
  }

  if (v1 - 2 > 1)
  {
    __break(1u);
    return result;
  }

  v4 = *(result + 1);
  v2 = result + 4;
  v3 = v4;
  if (v1 == 3)
  {
    result = *&v2[v3];
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v3)
  {
    v10 = &v2[v3];
  }

  else
  {
    v10 = 0;
  }

  result = objc_lookUpClass(v10);
  if (result)
  {
LABEL_16:

    return swift_getObjCClassMetadata(result);
  }

  return result;
}

unint64_t swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(uint64_t a1, unint64_t *a2, void *a3)
{
  v50[33] = *MEMORY[0x1E69E9840];
  v38[0] = v39;
  v38[1] = 0x800000000;
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (TypeContextDescriptor)
  {
    GenericParams = swift::TargetTypeContextDescriptor<swift::InProcess>::getGenericParams(TypeContextDescriptor);
    if (*(a1 + 13))
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (v9)
    {
      goto LABEL_27;
    }

    v10 = GenericParams;
    v11 = v8;
  }

  else
  {
    if (!*(a1 + 13))
    {
      goto LABEL_27;
    }

    v11 = 0;
    v10 = 0;
  }

  swift::SubstGenericParametersFromMetadata::SubstGenericParametersFromMetadata(v48, a2);
  v12 = *(a1 + 12);
  v36[0] = &unk_1EEEAD7D0;
  v36[1] = v48;
  v37 = v36;
  v34[0] = &unk_1EEEAD818;
  v34[1] = v48;
  v35 = v34;
  v32[0] = &unk_1EEEAD860;
  v32[1] = v48;
  v33 = v32;
  swift::_checkGenericRequirements(&v44, v10, v11, a1 + 4 * ((v12 >> 6) & 1) + 16, BYTE1(v12), v38, v36, v34, v32, a3);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))();
  }

  if (v35 == v34)
  {
    (*(*v35 + 32))(v35);
  }

  else if (v35)
  {
    (*(*v35 + 40))();
  }

  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
  }

  else if (v37)
  {
    (*(*v37 + 40))();
  }

  v13 = v46;
  if (v46 == 1)
  {
    v45(v44, 3, 0);
  }

  if (v49 != v50)
  {
    free(v49);
  }

  if (v13)
  {
    v14 = 0;
    goto LABEL_58;
  }

LABEL_27:
  WitnessTable = swift::_getWitnessTable(a1, a2, v38[0]);
  v14 = WitnessTable;
  if (WitnessTable)
  {
    if (*WitnessTable)
    {
      v16 = *WitnessTable;
      if ((*(*WitnessTable + 14) & 8) != 0)
      {
        v17 = v38[0];
        swift::SubstGenericParametersFromMetadata::SubstGenericParametersFromMetadata(v48, a2);
        v19 = *(v16 + 12);
        if ((v19 & 0x80000) != 0)
        {
          v22 = ((v16 + 4 * ((v19 >> 6) & 1) + 12 * BYTE1(v19) + ((v19 >> 21) & 0x7F8) + 19) & 0xFFFFFFFFFFFFFFFCLL);
          if ((v19 & 0x10000) != 0)
          {
            v23 = *v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22[3 * ((v19 >> 17) & 1) + 2 * v23 + (WORD1(v19) & 1)];
          SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v24 + *v24, v18);
          v21 = v25;
        }

        else
        {
          SymbolicMangledNameStringRef = 0;
          v21 = 0;
        }

        v42[0] = &unk_1EEEAD620;
        v42[1] = v48;
        v43 = v42;
        v40[0] = &unk_1EEEAD668;
        v40[1] = v48;
        v41 = v40;
        swift_getTypeByMangledName(&v44, 255, SymbolicMangledNameStringRef, v21, v17, v42, v40);
        if (v41 == v40)
        {
          (*(*v41 + 32))(v41);
        }

        else if (v41)
        {
          (*(*v41 + 40))();
        }

        if (v43 == v42)
        {
          (*(*v43 + 32))(v43);
        }

        else if (v43)
        {
          (*(*v43 + 40))();
        }

        v26 = 1;
        if (v47 == 1)
        {
          goto LABEL_53;
        }

        if (!v47)
        {
          v27 = v44;
          if (v44)
          {
            if (!*a3 || *a3 == v44)
            {
              GlobalActorConformance = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getGlobalActorConformance(v16);
              if (GlobalActorConformance)
              {
                v31[0] = 0;
                v31[1] = 0;
                v29 = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(GlobalActorConformance, v27, v31);
                if (v29)
                {
                  v26 = 0;
                  *a3 = v27;
                  a3[1] = v29;
                }
              }
            }

            if (v47 == 1)
            {
LABEL_53:
              v45(v44, 3, 0);
            }
          }
        }

        if (v49 != v50)
        {
          free(v49);
        }

        if (v26)
        {
          v14 = 0;
        }
      }
    }
  }

LABEL_58:
  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  return v14;
}

_DWORD *swift::TargetTypeContextDescriptor<swift::InProcess>::getGenericParams(_DWORD *result)
{
  v1 = *result & 0x1F;
  if (v1 > 0x10)
  {
    if (v1 == 17)
    {
      if (result)
      {
        v5 = result;
      }

      else
      {
        v5 = 0;
      }

      if ((*v5 & 0x80) == 0)
      {
        return 0;
      }

      if (!v5)
      {
        v5 = 0;
      }

      if (v5 == -28)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5 + 28;
        if (!v5)
        {
          v5 = 0;
        }
      }

      return &v7[16 * ((*v5 >> 7) & 1)];
    }

    else
    {
      if (v1 != 18)
      {
        goto LABEL_59;
      }

      if (result)
      {
        v3 = result;
      }

      else
      {
        v3 = 0;
      }

      if ((*v3 & 0x80) == 0)
      {
        return 0;
      }

      if (!v3)
      {
        v3 = 0;
      }

      if (v3 == -28)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3 + 28;
        if (!v3)
        {
          v3 = 0;
        }
      }

      return &v9[16 * ((*v3 >> 7) & 1)];
    }
  }

  else
  {
    if (v1 != 4)
    {
      if (v1 == 16)
      {
        if (result)
        {
          v2 = result;
        }

        else
        {
          v2 = 0;
        }

        if ((*v2 & 0x80) != 0)
        {
          if (!v2)
          {
            v2 = 0;
          }

          if (v2 == -44)
          {
            v8 = 0;
          }

          else
          {
            v8 = v2 + 44;
            if (!v2)
            {
              v2 = 0;
            }
          }

          return &v8[16 * ((*v2 >> 7) & 1)];
        }

        return 0;
      }

LABEL_59:
      __break(1u);
      return result;
    }

    if (result)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    if ((*v4 & 0x80) == 0)
    {
      return 0;
    }

    if (!v4)
    {
      v4 = 0;
    }

    if (v4 == -8)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 + 8;
      if (!v4)
      {
        v4 = 0;
      }
    }

    return &v6[8 * ((*v4 >> 7) & 1)];
  }
}

_BYTE *swift::SubstGenericParametersFromMetadata::SubstGenericParametersFromMetadata(uint64_t a1, unint64_t *a2)
{
  *a1 = 0;
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (TypeContextDescriptor)
  {
    *(a1 + 8) = TypeContextDescriptor;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    if (!a2)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  v5 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v5);
  if (!result)
  {
    goto LABEL_10;
  }

  v8 = *v6;
  v9 = *v6 & 0x1F;
  if ((v9 - 17) < 2)
  {
    ResilientImmediateMembersOffset = 2;
LABEL_9:
    v11 = &a2[ResilientImmediateMembersOffset];
LABEL_11:
    *(a1 + 16) = v11;
    *(a1 + 24) = a1 + 40;
    *(a1 + 32) = 0x800000000;
    *(a1 + 296) = 0;
    return a1;
  }

  if (v9 == 16)
  {
    if ((v8 & 0x20000000) != 0)
    {
      ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v6);
    }

    else
    {
      if ((v8 & 0x10000000) != 0)
      {
        v12 = 0;
        v13 = 6;
      }

      else
      {
        v12 = v6[7];
        v13 = 8;
      }

      ResilientImmediateMembersOffset = v12 - v6[v13];
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void swift::_checkGenericRequirements(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  v188 = a2;
  v227 = *MEMORY[0x1E69E9840];
  v205 = &v207;
  v206 = xmmword_1806729D0;
  if (a4)
  {
    v12 = a6;
    v13 = a3;
    v14 = a3 + 12 * a4;
    v187 = &v210;
    while ((*v13 & 0x20) == 0)
    {
      v15 = *(v12 + 24);
      if ((*v13 & 0x100) == 0)
      {
        if (v15)
        {
          if (v15 == v12)
          {
            v196 = v195;
            (*(*v15 + 24))(v15, v195);
          }

          else
          {
            v196 = (*(*v15 + 16))(v15);
          }
        }

        else
        {
          v196 = 0;
        }

        v42 = *(a8 + 24);
        if (v42)
        {
          if (v42 == a8)
          {
            v194 = v193;
            (*(*v42 + 24))(v42, v193);
          }

          else
          {
            v194 = (*(*v42 + 16))(v42);
          }
        }

        else
        {
          v194 = 0;
        }

        if ((*v13 & 0x1Fu) >= 6 && (*v13 & 0x1F) != 0x1F)
        {
          *a9 = "unknown kind";
          *(a9 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          *(a9 + 16) = 1;
LABEL_208:
          if (v194 == v193)
          {
            (*(*v194 + 32))(v194);
          }

          else if (v194)
          {
            (*(*v194 + 40))();
          }

          v71 = v196;
          if (v196 != v195)
          {
            goto LABEL_268;
          }

          v72 = *v196;
          goto LABEL_273;
        }

        v44 = (v13 + 4);
        SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 4) + v13 + 4), a2);
        v47 = v46;
        v48 = *a5;
        if (v196)
        {
          if (v196 == v195)
          {
            v226 = v225;
            (*(*v196 + 24))();
          }

          else
          {
            v226 = (*(*v196 + 16))();
          }
        }

        else
        {
          v226 = 0;
        }

        if (v194)
        {
          if (v194 == v193)
          {
            v224 = v223;
            (*(*v194 + 24))();
          }

          else
          {
            v224 = (*(*v194 + 16))();
          }
        }

        else
        {
          v224 = 0;
        }

        swift_getTypeByMangledName(&v208, 255, SymbolicMangledNameStringRef, v47, v48, v225, v223);
        if (v224 == v223)
        {
          (*(*v224 + 32))(v224);
        }

        else if (v224)
        {
          (*(*v224 + 40))();
        }

        if (v226 == v225)
        {
          (*(*v226 + 32))(v226);
          v52 = v211;
          if (v211)
          {
LABEL_115:
            if (v52 == 1)
            {
              v53 = v208;
              v54 = v209;
              *(a9 + 8) = v209;
              *a9 = v54(v53, 2, 0);
              *(a9 + 16) = 1;
              goto LABEL_206;
            }

            v55 = 0;
LABEL_120:
            v56 = *v13 & 0x1F;
            if (v56 > 2)
            {
              if ((*v13 & 0x1Fu) <= 4)
              {
                if (v56 != 3)
                {
                  operator new();
                }

                *a9 = 0;
                *(a9 + 16) = 0;
                goto LABEL_206;
              }

              if (v56 != 5)
              {
                if (v56 != 31)
                {
                  operator new();
                }

                satisfiesLayoutConstraint(v13, v55, a9);
                goto LABEL_206;
              }

              v103 = *(v13 + 8);
              if (v103 == 0xFFFF)
              {
                checkInvertibleRequirements(v55, *(v13 + 10), a9);
                goto LABEL_206;
              }

              v104 = v206;
              if (v206 <= v103)
              {
                v146 = v206;
                if (*(&v206 + 1) <= v103)
                {
                  __swift::__runtime::llvm::SmallVectorBase<unsigned long long>::grow_pod(&v205, &v207, v103 + 1, 2);
                  v146 = v206;
                }

                v147 = v103 + 1 - v104;
                v105 = v205;
                bzero(v205 + 2 * v146, 2 * v147);
                *&v206 = v146 + v147;
              }

              else
              {
                v105 = v205;
              }

              v105[v103] |= *(v13 + 10);
LABEL_448:
              *a9 = 0;
              *(a9 + 16) = 0;
LABEL_206:
              if (v211 == 1)
              {
                (v209)(v208, 3, 0);
              }

              goto LABEL_208;
            }

            if (v56)
            {
              if (v56 != 1)
              {
                v57 = a8;
                v58 = v14;
                v59 = (v13 + 8);
                v60 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), a2);
                v62 = v61;
                v63 = *a5;
                if (v196)
                {
                  if (v196 == v195)
                  {
                    v219 = &v216;
                    (*(*v196 + 24))();
                  }

                  else
                  {
                    v219 = (*(*v196 + 16))();
                  }
                }

                else
                {
                  v219 = 0;
                }

                if (v194)
                {
                  if (v194 == v193)
                  {
                    v215 = &v212;
                    (*(*v194 + 24))();
                  }

                  else
                  {
                    v215 = (*(*v194 + 16))();
                  }
                }

                else
                {
                  v215 = 0;
                }

                swift_getTypeByMangledName(&v220, 255, v60, v62, v63, &v216, &v212);
                if (v215 == &v212)
                {
                  (*(*v215 + 32))(v215);
                  v14 = v58;
                }

                else
                {
                  v14 = v58;
                  if (v215)
                  {
                    (*(*v215 + 40))();
                  }
                }

                if (v219 == &v216)
                {
                  (*(*v219 + 32))(v219);
                  v148 = v222;
                  if (v222)
                  {
                    goto LABEL_384;
                  }
                }

                else
                {
                  if (v219)
                  {
                    (*(*v219 + 40))();
                  }

                  v148 = v222;
                  if (v222)
                  {
LABEL_384:
                    if (v148 != 1)
                    {
                      v149 = 0;
                      goto LABEL_388;
                    }

LABEL_406:
                    v152 = v220;
                    v153 = v221;
                    *(a9 + 8) = v221;
                    *a9 = v153(v152, 2, 0);
                    v160 = 1;
LABEL_418:
                    *(a9 + 16) = v160;
                    a8 = v57;
                    if (v222 == 1)
                    {
                      v221(v220, 3, 0);
                    }

                    v12 = a6;
                    goto LABEL_206;
                  }
                }

                v149 = v220;
LABEL_388:
                if (*v55 == 771)
                {
                  v150 = (*(v55 + 11) & 0x40) != 0 ? v55[2] : 0;
                  if (v150)
                  {
                    v55 = v150;
                  }
                }

                if ((isSubclass(v55, v149) & 1) == 0)
                {
                  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, a2);
                  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, v157);
                  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v59 + *v59, v158);
                  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v59 + *v59, v159);
                  operator new();
                }

LABEL_416:
                v160 = 0;
                *a9 = 0;
                goto LABEL_418;
              }

              v57 = a8;
              v106 = v14;
              v107 = (v13 + 8);
              v108 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), a2);
              v110 = v109;
              v111 = *a5;
              if (v196)
              {
                if (v196 == v195)
                {
                  v219 = &v216;
                  (*(*v196 + 24))();
                }

                else
                {
                  v219 = (*(*v196 + 16))();
                }
              }

              else
              {
                v219 = 0;
              }

              if (v194)
              {
                if (v194 == v193)
                {
                  v215 = &v212;
                  (*(*v194 + 24))();
                }

                else
                {
                  v215 = (*(*v194 + 16))();
                }
              }

              else
              {
                v215 = 0;
              }

              swift_getTypeByMangledName(&v220, 255, v108, v110, v111, &v216, &v212);
              if (v215 == &v212)
              {
                (*(*v215 + 32))(v215);
                v14 = v106;
              }

              else
              {
                v14 = v106;
                if (v215)
                {
                  (*(*v215 + 40))();
                }
              }

              if (v219 == &v216)
              {
                (*(*v219 + 32))(v219);
                v151 = v222;
                if (v222)
                {
                  goto LABEL_405;
                }
              }

              else
              {
                if (v219)
                {
                  (*(*v219 + 40))();
                }

                v151 = v222;
                if (v222)
                {
LABEL_405:
                  if (v151 != 1)
                  {
                    if (v55)
                    {
LABEL_411:
                      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, a2);
                      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, v154);
                      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v107 + *v107, v155);
                      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v107 + *v107, v156);
                      operator new();
                    }

                    goto LABEL_416;
                  }

                  goto LABEL_406;
                }
              }

              if (v55 != v220)
              {
                goto LABEL_411;
              }

              goto LABEL_416;
            }

            v220 = 0;
            v100 = (v13 + 8);
            v99 = *(v13 + 8);
            if ((v99 & 2) != 0)
            {
              v118 = v100 + (v99 & 0xFFFFFFFFFFFFFFFCLL);
              if (v99)
              {
                v118 = *v118;
              }

              v119 = v118 | 1;
LABEL_432:
              v163 = swift::_conformsToProtocol(0, v55, v119, &v220, a10);
              v164 = *v100;
              if ((v163 & 1) == 0)
              {
                swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, a2);
                swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v44 + *v44, v173);
                operator new();
              }

              if ((v164 & 2) != 0)
              {
                goto LABEL_448;
              }

              if (!v164)
              {
                goto LABEL_445;
              }

              v165 = (v100 + (v164 & 0xFFFFFFFFFFFFFFFCLL));
              if (v164)
              {
                v166 = *v165;
                if (!*v165)
                {
                  goto LABEL_445;
                }
              }

              else
              {
                if (!v165)
                {
                  goto LABEL_445;
                }

                v166 = v100 + (v164 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v166 && (v166 & 1) != 0)
              {
                goto LABEL_448;
              }

LABEL_445:
              v171 = v220;
              v172 = *(a5 + 8);
              if (v172 >= *(a5 + 12))
              {
                __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v172 + 1, 8);
                v172 = *(a5 + 8);
              }

              *(*a5 + 8 * v172) = v171;
              ++*(a5 + 8);
              goto LABEL_448;
            }

            if (v99)
            {
              v101 = (v100 + (v99 & 0xFFFFFFFFFFFFFFFCLL));
              if (v99)
              {
                v102 = *v101;
                if (*v101)
                {
LABEL_429:
                  if (v102)
                  {
                    v119 = v102;
                    goto LABEL_432;
                  }
                }
              }

              else if (v101)
              {
                v102 = v100 + (v99 & 0xFFFFFFFFFFFFFFFCLL);
                goto LABEL_429;
              }
            }

            v119 = 0;
            goto LABEL_432;
          }
        }

        else
        {
          if (v226)
          {
            (*(*v226 + 40))();
          }

          v52 = v211;
          if (v211)
          {
            goto LABEL_115;
          }
        }

        v55 = v208;
        goto LABEL_120;
      }

      if (v15)
      {
        if (v15 == v12)
        {
          v200 = v199;
          (*(*v15 + 24))(v15, v199);
        }

        else
        {
          v200 = (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v200 = 0;
      }

      v43 = *(a8 + 24);
      if (v43)
      {
        if (v43 == a8)
        {
          v198 = v197;
          (*(*v43 + 24))(v43, v197);
        }

        else
        {
          v198 = (*(*v43 + 16))(v43);
        }
      }

      else
      {
        v198 = 0;
      }

      if ((*v13 & 0x1Fu) < 6 || (*v13 & 0x1F) == 0x1F)
      {
        v49 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 4) + v13 + 4), a2);
        v51 = v50;
        if (v200)
        {
          if (v200 == v199)
          {
            v211 = &v208;
            (*(*v200 + 24))();
          }

          else
          {
            v211 = (*(*v200 + 16))();
          }
        }

        else
        {
          v211 = 0;
        }

        if (v198)
        {
          if (v198 == v197)
          {
            v226 = v225;
            (*(*v198 + 24))();
          }

          else
          {
            v226 = (*(*v198 + 16))();
          }
        }

        else
        {
          v226 = 0;
        }

        swift::getTypeValueByMangledName(v49, v51, &v208, v225, &v216);
        if (v226 == v225)
        {
          (*(*v226 + 32))(v226);
        }

        else if (v226)
        {
          (*(*v226 + 40))();
        }

        if (v211 == &v208)
        {
          (*(*v211 + 4))(v211);
        }

        else if (v211)
        {
          (*(*v211 + 5))();
        }

        if (v218 == 1)
        {
          v65 = v216;
          v66 = v217;
          *(a9 + 8) = v217;
          *a9 = v66(v65, 2, 0);
          *(a9 + 16) = 1;
        }

        else
        {
          if (v218)
          {
            v67 = 0;
          }

          else
          {
            v67 = v216;
          }

          if ((*v13 & 0x1F) != 1)
          {
            operator new();
          }

          v68 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), v64);
          v70 = v69;
          if (v200)
          {
            if (v200 == v199)
            {
              v224 = v223;
              (*(*v200 + 24))();
            }

            else
            {
              v224 = (*(*v200 + 16))();
            }
          }

          else
          {
            v224 = 0;
          }

          if (v198)
          {
            if (v198 == v197)
            {
              v222 = &v220;
              (*(*v198 + 24))();
            }

            else
            {
              v222 = (*(*v198 + 16))();
            }
          }

          else
          {
            v222 = 0;
          }

          swift::getTypeValueByMangledName(v68, v70, v223, &v220, &v212);
          if (v222 == &v220)
          {
            (*(*v222 + 32))(v222);
          }

          else if (v222)
          {
            (*(*v222 + 40))();
          }

          if (v224 == v223)
          {
            (*(*v224 + 32))(v224);
          }

          else if (v224)
          {
            (*(*v224 + 40))();
          }

          if (v214 == 1)
          {
            v112 = v212;
            v113 = v213;
            *(a9 + 8) = v213;
            *a9 = v113(v112, 2, 0);
            v115 = 1;
          }

          else
          {
            if (v214)
            {
              v114 = 0;
            }

            else
            {
              v114 = v212;
            }

            if (v67 != v114)
            {
              operator new();
            }

            v115 = 0;
            *a9 = 0;
          }

          *(a9 + 16) = v115;
          if (v214 == 1)
          {
            v213(v212, 3, 0);
          }
        }

        if (v218 == 1)
        {
          v217(v216, 3, 0);
        }
      }

      else
      {
        *a9 = "unknown kind";
        *(a9 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        *(a9 + 16) = 1;
      }

      if (v198 == v197)
      {
        (*(*v198 + 32))(v198);
      }

      else if (v198)
      {
        (*(*v198 + 40))();
      }

      v71 = v200;
      if (v200 != v199)
      {
        goto LABEL_268;
      }

      v72 = *v200;
LABEL_273:
      (*(v72 + 32))();
      if (*(a9 + 16))
      {
        goto LABEL_479;
      }

LABEL_274:
      v13 += 12;
      if (v13 == v14)
      {
        goto LABEL_451;
      }
    }

    v16 = *(v12 + 24);
    if (v16)
    {
      if (v16 != v12)
      {
        v204 = (*(*v16 + 16))(v16);
        v17 = *(a8 + 24);
        if (v17)
        {
          goto LABEL_11;
        }

LABEL_17:
        v202 = 0;
LABEL_21:
        if ((*v13 & 0x1Fu) >= 6 && (*v13 & 0x1F) != 31)
        {
          *a9 = "unknown kind";
          *(a9 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          *(a9 + 16) = 1;
LABEL_263:
          if (v202 == v201)
          {
            (*(*v202 + 32))(v202);
          }

          else if (v202)
          {
            (*(*v202 + 40))();
          }

          v71 = v204;
          if (v204 != v203)
          {
LABEL_268:
            if (v71)
            {
              (*(*v71 + 40))(v71);
            }

            if (*(a9 + 16))
            {
              goto LABEL_479;
            }

            goto LABEL_274;
          }

          v72 = *v204;
          goto LABEL_273;
        }

        v19 = a8;
        v20 = v14;
        v21 = (v13 + 4);
        v22 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 4) + v13 + 4), a2);
        v24 = v23;
        if (v204)
        {
          if (v204 != v203)
          {
            v226 = (*(*v204 + 16))();
            v25 = v202;
            if (v202)
            {
              goto LABEL_29;
            }

LABEL_32:
            v224 = 0;
            goto LABEL_36;
          }

          v226 = v225;
          (*(*v204 + 24))();
          v25 = v202;
          if (!v202)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v226 = 0;
          v25 = v202;
          if (!v202)
          {
            goto LABEL_32;
          }
        }

LABEL_29:
        if (v25 == v201)
        {
          v224 = v223;
          (*(*v25 + 24))(v25, v223);
        }

        else
        {
          v224 = (*(*v25 + 16))(v25);
        }

LABEL_36:
        swift::getTypePackByMangledName(v22, v24, v225, v223, &v212);
        if (v224 == v223)
        {
          (*(*v224 + 32))(v224);
        }

        else if (v224)
        {
          (*(*v224 + 40))(v224);
        }

        if (v226 == v225)
        {
          (*(*v226 + 32))(v226);
        }

        else if (v226)
        {
          (*(*v226 + 40))(v226);
        }

        if (v214 == 1)
        {
          v28 = v212;
          v29 = v213;
          *(a9 + 8) = v213;
          *a9 = v29(v28, 2, 0);
          *(a9 + 16) = 1;
          v14 = v20;
LABEL_46:
          a8 = v19;
          v12 = a6;
          goto LABEL_261;
        }

        if (v214)
        {
          v30 = 0;
        }

        else
        {
          v30 = v212;
        }

        v31 = *v13 & 0x1F;
        if (v31 > 2)
        {
          if ((*v13 & 0x1Fu) <= 4)
          {
            if (v31 == 3)
            {
              *a9 = 0;
              *(a9 + 16) = 0;
              v14 = v20;
              a8 = v19;
              v12 = a6;
            }

            else
            {
              v32 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), a2);
              v34 = v33;
              if (v204)
              {
                if (v204 == v203)
                {
                  v211 = &v208;
                  (*(*v204 + 24))();
                }

                else
                {
                  v211 = (*(*v204 + 16))();
                }
              }

              else
              {
                v211 = 0;
              }

              v14 = v20;
              if (v202)
              {
                a8 = v19;
                if (v202 == v201)
                {
                  v222 = &v220;
                  (*(*v202 + 24))();
                }

                else
                {
                  v222 = (*(*v202 + 16))();
                }
              }

              else
              {
                v222 = 0;
                a8 = v19;
              }

              v12 = a6;
              swift::getTypePackByMangledName(v32, v34, &v208, &v220, &v216);
              if (v222 == &v220)
              {
                (*(*v222 + 32))(v222);
              }

              else if (v222)
              {
                (*(*v222 + 40))();
              }

              if (v211 == &v208)
              {
                (*(*v211 + 4))(v211);
              }

              else if (v211)
              {
                (*(*v211 + 5))();
              }

              if (v218 == 1)
              {
                v122 = v216;
                v123 = v217;
                *(a9 + 8) = v217;
                *a9 = v123(v122, 2, 0);
                v125 = 1;
              }

              else
              {
                if (v218)
                {
                  v124 = 0;
                }

                else
                {
                  v124 = v216;
                }

                if ((v30 & 1) == 0 || (v124 & 1) == 0)
                {
                  goto LABEL_485;
                }

                if (*((v30 & 0xFFFFFFFFFFFFFFFELL) - 8) != *((v124 & 0xFFFFFFFFFFFFFFFELL) - 8))
                {
                  operator new();
                }

                v125 = 0;
                *a9 = 0;
              }

              *(a9 + 16) = v125;
              if (v218 == 1)
              {
                v217(v216, 3, 0);
              }
            }

            goto LABEL_261;
          }

          if (v31 == 5)
          {
            v89 = *(v13 + 8);
            if (v89 != 0xFFFF)
            {
              v90 = v206;
              v14 = v20;
              if (v206 <= v89)
              {
                v120 = v206;
                a8 = v19;
                if (*(&v206 + 1) <= v89)
                {
                  __swift::__runtime::llvm::SmallVectorBase<unsigned long long>::grow_pod(&v205, &v207, v89 + 1, 2);
                  v120 = v206;
                }

                v121 = v89 + 1 - v90;
                v91 = v205;
                bzero(v205 + 2 * v120, 2 * v121);
                *&v206 = v120 + v121;
              }

              else
              {
                v91 = v205;
                a8 = v19;
              }

              v12 = a6;
              v91[v89] |= *(v13 + 10);
              *a9 = 0;
              *(a9 + 16) = 0;
              goto LABEL_261;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_485;
            }

            v14 = v20;
            v116 = (v30 & 0xFFFFFFFFFFFFFFFELL);
            v117 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
            a8 = v19;
            v12 = a6;
            if (v117)
            {
              do
              {
                checkInvertibleRequirements(*v116, *(v13 + 10), a9);
                if (*(a9 + 16))
                {
                  goto LABEL_261;
                }

                ++v116;
              }

              while (--v117);
            }
          }

          else
          {
            if (v31 != 31)
            {
              operator new();
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_485;
            }

            v40 = (v30 & 0xFFFFFFFFFFFFFFFELL);
            v41 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
            v14 = v20;
            a8 = v19;
            v12 = a6;
            if (v41)
            {
              do
              {
                satisfiesLayoutConstraint(v13, *v40, a9);
                if (*(a9 + 16))
                {
                  goto LABEL_261;
                }

                ++v40;
              }

              while (--v41);
            }
          }

          *a9 = 0;
          *(a9 + 16) = 0;
LABEL_261:
          if (v214 == 1)
          {
            v213(v212, 3, 0);
          }

          goto LABEL_263;
        }

        if (v31)
        {
          if (v31 == 1)
          {
            v92 = (v13 + 8);
            v93 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), a2);
            v95 = v94;
            if (v204)
            {
              if (v204 == v203)
              {
                v211 = &v208;
                (*(*v204 + 24))();
              }

              else
              {
                v211 = (*(*v204 + 16))();
              }
            }

            else
            {
              v211 = 0;
            }

            if (v202)
            {
              if (v202 == v201)
              {
                v222 = &v220;
                (*(*v202 + 24))();
              }

              else
              {
                v222 = (*(*v202 + 16))();
              }
            }

            else
            {
              v222 = 0;
            }

            swift::getTypePackByMangledName(v93, v95, &v208, &v220, &v216);
            if (v222 == &v220)
            {
              (*(*v222 + 32))(v222);
            }

            else if (v222)
            {
              (*(*v222 + 40))();
            }

            if (v211 == &v208)
            {
              (*(*v211 + 4))(v211);
            }

            else if (v211)
            {
              (*(*v211 + 5))();
            }

            if (v218 == 1)
            {
              v135 = v216;
              v136 = v217;
              *(a9 + 8) = v217;
              *a9 = v136(v135, 2, 0);
              v170 = 1;
            }

            else
            {
              v137 = v216;
              if (v218)
              {
                v137 = 0;
              }

              if ((v30 & 1) == 0 || (v137 & 1) == 0)
              {
                goto LABEL_485;
              }

              v138 = v30 & 0xFFFFFFFFFFFFFFFELL;
              v139 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
              if (v139 != *((v137 & 0xFFFFFFFFFFFFFFFELL) - 8))
              {
                swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, a2);
                swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, v141);
                operator new();
              }

              if (v139)
              {
                for (i = 0; i != v139; ++i)
                {
                  if (*(v138 + 8 * i) != *((v137 & 0xFFFFFFFFFFFFFFFELL) + 8 * i))
                  {
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, a2);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, v167);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v92 + *v92, v168);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v92 + *v92, v169);
                    operator new();
                  }
                }
              }

              v170 = 0;
              *a9 = 0;
            }

            *(a9 + 16) = v170;
            v14 = v20;
            if (v218 == 1)
            {
              v217(v216, 3, 0);
            }

            goto LABEL_46;
          }

          v35 = (v13 + 8);
          v36 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((*(v13 + 8) + v13 + 8), a2);
          v38 = v37;
          v39 = *a5;
          if (v204)
          {
            if (v204 == v203)
            {
              v222 = &v220;
              (*(*v204 + 24))();
            }

            else
            {
              v222 = (*(*v204 + 16))();
            }
          }

          else
          {
            v222 = 0;
          }

          if (v202)
          {
            if (v202 == v201)
            {
              v219 = &v216;
              (*(*v202 + 24))();
            }

            else
            {
              v219 = (*(*v202 + 16))();
            }
          }

          else
          {
            v219 = 0;
          }

          swift_getTypeByMangledName(&v208, 255, v36, v38, v39, &v220, &v216);
          if (v219 == &v216)
          {
            (*(*v219 + 32))(v219);
          }

          else if (v219)
          {
            (*(*v219 + 40))();
          }

          if (v222 == &v220)
          {
            (*(*v222 + 32))(v222);
            v126 = v211;
            if (v211)
            {
LABEL_319:
              if (v126 == 1)
              {
                v127 = v208;
                v128 = v209;
                *(a9 + 8) = v209;
                *a9 = v128(v127, 2, 0);
                v145 = 1;
LABEL_364:
                *(a9 + 16) = v145;
                v14 = v20;
                if (v211 == 1)
                {
                  (v209)(v208, 3, 0);
                }

                goto LABEL_46;
              }

              v129 = 0;
LABEL_324:
              if ((v30 & 1) == 0)
              {
                goto LABEL_485;
              }

              v130 = v30 & 0xFFFFFFFFFFFFFFFELL;
              v131 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
              if (v131)
              {
                for (j = 0; j != v131; ++j)
                {
                  v133 = *(v130 + 8 * j);
                  if (*v133 == 771)
                  {
                    v134 = (*(v133 + 11) & 0x40) != 0 ? *(v133 + 16) : 0;
                    if (v134)
                    {
                      v133 = v134;
                    }
                  }

                  if ((isSubclass(v133, v129) & 1) == 0)
                  {
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, a2);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, v142);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v35 + *v35, v143);
                    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v35 + *v35, v144);
                    operator new();
                  }
                }
              }

              v145 = 0;
              *a9 = 0;
              goto LABEL_364;
            }
          }

          else
          {
            if (v222)
            {
              (*(*v222 + 40))();
            }

            v126 = v211;
            if (v211)
            {
              goto LABEL_319;
            }
          }

          v129 = v208;
          goto LABEL_324;
        }

        v208 = &v210;
        v209 = 0x400000000;
        if ((v30 & 1) == 0)
        {
          goto LABEL_485;
        }

        v73 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v74 = *((v30 & 0xFFFFFFFFFFFFFFFELL) - 8);
        if (v74)
        {
          v75 = 0;
          v76 = (v13 + 8);
          while (1)
          {
            v79 = *(v73 + 8 * v75);
            v220 = 0;
            v80 = *v76;
            if ((v80 & 2) != 0)
            {
              v83 = v76 + (v80 & 0xFFFFFFFFFFFFFFFCLL);
              if (v80)
              {
                v83 = *v83;
              }

              v84 = v83 | 1;
              goto LABEL_177;
            }

            if (!v80)
            {
              break;
            }

            v81 = (v76 + (v80 & 0xFFFFFFFFFFFFFFFCLL));
            if (v80)
            {
              v82 = *v81;
              if (!*v81)
              {
                break;
              }
            }

            else
            {
              if (!v81)
              {
                break;
              }

              v82 = v76 + (v80 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v84 = v82;
LABEL_177:
            v85 = swift::_conformsToProtocol(0, v79, v84, &v220, a10);
            v86 = *v76;
            if ((v85 & 1) == 0)
            {
              swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, a2);
              swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v21 + *v21, v174);
              operator new();
            }

            if ((v86 & 2) != 0)
            {
              goto LABEL_165;
            }

            if (!v86)
            {
              goto LABEL_162;
            }

            v87 = (v76 + (v86 & 0xFFFFFFFFFFFFFFFCLL));
            if (v86)
            {
              v88 = *v87;
              if (!*v87)
              {
                goto LABEL_162;
              }
            }

            else
            {
              if (!v87)
              {
                goto LABEL_162;
              }

              LOBYTE(v88) = (v86 & 0xFC) + v76;
            }

            if ((v88 & 1) == 0)
            {
LABEL_162:
              v77 = v220;
              v78 = v209;
              if (v209 >= HIDWORD(v209))
              {
                __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v208, &v210, v209 + 1, 8);
                v78 = v209;
              }

              *(v208 + v78) = v77;
              LODWORD(v209) = v209 + 1;
            }

LABEL_165:
            if (v74 == ++v75)
            {
              goto LABEL_195;
            }
          }

          v84 = 0;
          goto LABEL_177;
        }

LABEL_195:
        v96 = *(v13 + 8);
        v14 = v20;
        a8 = v19;
        v12 = a6;
        if ((v96 & 2) != 0)
        {
          goto LABEL_427;
        }

        if (v96)
        {
          v97 = ((v96 & 0xFFFFFFFFFFFFFFFCLL) + v13 + 8);
          if (v96)
          {
            v98 = *v97;
            if (*v97)
            {
              goto LABEL_422;
            }
          }

          else if (v97)
          {
            v98 = (v96 & 0xFFFFFFFFFFFFFFFCLL) + v13 + 8;
LABEL_422:
            if (!v98 || (v98 & 1) == 0)
            {
              goto LABEL_424;
            }

LABEL_427:
            *a9 = 0;
            *(a9 + 16) = 0;
            if (v208 != &v210)
            {
              free(v208);
            }

            goto LABEL_261;
          }
        }

LABEL_424:
        WitnessTablePack = swift_allocateWitnessTablePack(v208, v209);
        v162 = *(a5 + 8);
        if (v162 >= *(a5 + 12))
        {
          v175 = WitnessTablePack;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v162 + 1, 8);
          WitnessTablePack = v175;
          v162 = *(a5 + 8);
        }

        *(*a5 + 8 * v162) = WitnessTablePack;
        ++*(a5 + 8);
        goto LABEL_427;
      }

      v204 = v203;
      (*(*v16 + 24))(v16, v203);
      v17 = *(a8 + 24);
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v204 = 0;
      v17 = *(a8 + 24);
      if (!v17)
      {
        goto LABEL_17;
      }
    }

LABEL_11:
    if (v17 == a8)
    {
      v202 = v201;
      (*(*v17 + 24))(v17, v201);
    }

    else
    {
      v202 = (*(*v17 + 16))(v17);
    }

    goto LABEL_21;
  }

LABEL_451:
  v176 = a1;
  if (!v188)
  {
LABEL_478:
    *a9 = 0;
    *(a9 + 16) = 0;
    goto LABEL_479;
  }

  v177 = 0;
  v178 = 0;
  while (1)
  {
    if ((*(v176 + v177) & 0x80000000) == 0)
    {
      goto LABEL_454;
    }

    if (v206 <= v177)
    {
      v179 = 0;
    }

    else
    {
      v179 = *(v205 + v177);
    }

    LODWORD(v208) = v177;
    v225[0] = v178;
    v180 = *(a7 + 24);
    if (!v180)
    {
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_485:
      swift::fatalError(0, "Cannot get length of on-stack pack", v26, v27, v187);
    }

    v181 = (*(*v180 + 48))(v180, &v208, v225);
    v182 = *(v176 + v177) & 0x3F;
    if (v182 != 2)
    {
      if (v182 != 1)
      {
        if ((*(v176 + v177) & 0x3F) != 0)
        {
          operator new();
        }

        if (v181)
        {
          v183 = (v181 & 1) == 0;
        }

        else
        {
          v183 = 0;
        }

        if (!v183)
        {
          operator new();
        }

        checkInvertibleRequirements(v181, v179, a9);
        if (*(a9 + 16))
        {
          goto LABEL_479;
        }

        goto LABEL_453;
      }

      if (v181)
      {
        if ((v181 & 1) == 0)
        {
          operator new();
        }

        v184 = (v181 & 0xFFFFFFFFFFFFFFFELL);
        if ((v181 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v185 = *(v184 - 1);
          if (v185)
          {
            break;
          }
        }
      }
    }

LABEL_453:
    ++v178;
    v176 = a1;
LABEL_454:
    if (++v177 == v188)
    {
      goto LABEL_478;
    }
  }

  v186 = 8 * v185;
  while (1)
  {
    checkInvertibleRequirements(*v184, v179, a9);
    if (*(a9 + 16))
    {
      break;
    }

    ++v184;
    v186 -= 8;
    if (!v186)
    {
      goto LABEL_453;
    }
  }

LABEL_479:
  if (v205 != &v207)
  {
    free(v205);
  }
}