uint64_t MetalDataType.offsetList.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = calculateOffsets(for:)(v1);

  return v2;
}

uint64_t MetalDataType.isEqual(to:)()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  result = swift_dynamicCastClass();
  if (result)
  {
    if (v2 == *(result + 24) && v3 == *(result + 32))
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t MetalDataType.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return String.hash(into:)();
}

uint64_t MetalDataType.description.getter()
{
  MEMORY[0x266771550](*(v0 + 24), *(v0 + 32));
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x283A6C6174656DLL;
}

uint64_t MetalDataType.__ivar_destroyer()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
}

uint64_t MetalDataType.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.MTLTextureType.getter()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v1 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v1) = v1(v0);

  if (v1)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5(v0);

  if (v5)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6(v0);

  if (v6)
  {
    return 2;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v9) = v9(v0);

  if (v9)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v10 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v10) = v10(v0);

  if (v10)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v11) = v11(v0);

  if (v11)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v12) = v12(v0);

  if (v12)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v13) = v13(v0);

  if (v13)
  {
    return 7;
  }

  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture2darray_int + 128);

  LOBYTE(v14) = v14(v0);

  if (v14)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v15) = v15(v0);

  if (v15)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  v16 = *(*static MetalDataType.texture2darray_uint + 128);

  LOBYTE(v16) = v16(v0);

  if (v16)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v17 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v17) = v17(v0);

  if (v17)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  v18 = *(*static MetalDataType.texture2darray_short + 128);

  LOBYTE(v18) = v18(v0);

  if (v18)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  v19 = *(*static MetalDataType.texture2darray_ushort + 128);

  LOBYTE(v19) = v19(v0);

  if (v19)
  {
    return 3;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v20 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v20) = v20(v0);

  if (v20)
  {
    return 5;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v21 = *(*static MetalDataType.texturecube_float + 128);

  v22 = v21(v0);

  if (v22)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t *MetalDataType.texture2d_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_uint;
}

uint64_t *MetalDataType.texture2d_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_short;
}

uint64_t *MetalDataType.texture2d_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_ushort;
}

uint64_t *MetalDataType.texture3d_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_uint;
}

uint64_t *MetalDataType.texture3d_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_short;
}

uint64_t *MetalDataType.texture3d_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_ushort;
}

uint64_t *MetalDataType.texture2darray_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_uint;
}

uint64_t *MetalDataType.texture2darray_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_short;
}

uint64_t *MetalDataType.texture2darray_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_ushort;
}

uint64_t MetalDataType.textureElementType.getter()
{
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v1 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v1) = v1(v0);

  if (v1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
LABEL_13:
    if (one-time initialization token for half != -1)
    {
      swift_once();
    }

    v5 = &static MetalDataType.half;
LABEL_16:
    v6 = *v5;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v9) = v9(v0);

  if (v9)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v10 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v10) = v10(v0);

  if (v10)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texturecube_float + 128);

  v12 = v11(v0);

  if (v12)
  {
LABEL_29:
    if (one-time initialization token for float != -1)
    {
      swift_once();
    }

    v5 = &static MetalDataType.float;
    goto LABEL_16;
  }

  return 0;
}

uint64_t *MetalDataType.half.unsafeMutableAddressor()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half;
}

uint64_t *MetalDataType.float.unsafeMutableAddressor()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float;
}

uint64_t MetalDataType.MTLDataType.getter()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 3;
  }

  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 4;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 5;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 6;
  }

  if (one-time initialization token for float2x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 7;
  }

  if (one-time initialization token for float2x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 8;
  }

  if (one-time initialization token for float2x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 9;
  }

  if (one-time initialization token for float3x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 10;
  }

  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 11;
  }

  if (one-time initialization token for float3x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 12;
  }

  if (one-time initialization token for float4x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 13;
  }

  if (one-time initialization token for float4x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 14;
  }

  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 15;
  }

  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 16;
  }

  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 17;
  }

  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 18;
  }

  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 19;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 5;
  }

  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 6;
  }

  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 29;
  }

  if (one-time initialization token for int2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 30;
  }

  if (one-time initialization token for int3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 31;
  }

  if (one-time initialization token for int4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 32;
  }

  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 33;
  }

  if (one-time initialization token for uint2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 34;
  }

  if (one-time initialization token for uint3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 35;
  }

  if (one-time initialization token for uint4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 36;
  }

  if (one-time initialization token for int16 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 37;
  }

  if (one-time initialization token for uint16 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 41;
  }

  if (one-time initialization token for int8 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 45;
  }

  if (one-time initialization token for uint8 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 49;
  }

  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.BOOL + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    return 53;
  }

  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5(v0);

  if (v5)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6(v0);

  if (v6)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v7 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v7) = v7(v0);

  if (v7)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texture2darray_int + 128);

  LOBYTE(v9) = v9(v0);

  if (v9)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  v10 = *(*static MetalDataType.texture2darray_uint + 128);

  LOBYTE(v10) = v10(v0);

  if (v10)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture2darray_short + 128);

  LOBYTE(v11) = v11(v0);

  if (v11)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture2darray_ushort + 128);

  LOBYTE(v12) = v12(v0);

  if (v12)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v13) = v13(v0);

  if (v13)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v14) = v14(v0);

  if (v14)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v15) = v15(v0);

  if (v15)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v16 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v16) = v16(v0);

  if (v16)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v17 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v17) = v17(v0);

  if (v17)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v18 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v18) = v18(v0);

  if (v18)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v19 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v19) = v19(v0);

  if (v19)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v20 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v20) = v20(v0);

  if (v20)
  {
    return 58;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v21 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v21) = v21(v0);

  if (v21)
  {
    return 58;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v22 = *(*static MetalDataType.texturecube_float + 128);

  LOBYTE(v22) = v22(v0);

  if (v22)
  {
    return 58;
  }

  if (one-time initialization token for int64 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 81;
  }

  else
  {
    return 0;
  }
}

uint64_t *MetalDataType.float2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2;
}

uint64_t *MetalDataType.float3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3;
}

uint64_t *MetalDataType.float4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4;
}

uint64_t *MetalDataType.float2x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x2;
}

uint64_t *MetalDataType.float2x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x3;
}

uint64_t *MetalDataType.float2x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x4;
}

uint64_t *MetalDataType.float3x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x2;
}

uint64_t *MetalDataType.float3x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x3;
}

uint64_t *MetalDataType.float3x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x4;
}

uint64_t *MetalDataType.float4x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x2;
}

uint64_t *MetalDataType.float4x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x3;
}

uint64_t *MetalDataType.float4x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x4;
}

uint64_t *MetalDataType.half2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half2;
}

uint64_t *MetalDataType.half3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half3;
}

uint64_t *MetalDataType.half4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half4;
}

uint64_t *MetalDataType.color3.unsafeMutableAddressor()
{
  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.color3;
}

uint64_t *MetalDataType.color4.unsafeMutableAddressor()
{
  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.color4;
}

uint64_t *MetalDataType.int2.unsafeMutableAddressor()
{
  if (one-time initialization token for int2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int2;
}

uint64_t *MetalDataType.int3.unsafeMutableAddressor()
{
  if (one-time initialization token for int3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int3;
}

uint64_t *MetalDataType.int4.unsafeMutableAddressor()
{
  if (one-time initialization token for int4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int4;
}

uint64_t *MetalDataType.uint2.unsafeMutableAddressor()
{
  if (one-time initialization token for uint2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint2;
}

uint64_t *MetalDataType.uint3.unsafeMutableAddressor()
{
  if (one-time initialization token for uint3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint3;
}

uint64_t *MetalDataType.uint4.unsafeMutableAddressor()
{
  if (one-time initialization token for uint4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint4;
}

uint64_t *MetalDataType.BOOL.unsafeMutableAddressor()
{
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BOOL;
}

uint64_t MetalDataType.Struct.__allocating_init(note:typeName:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MetalDataType.Struct.init(note:typeName:fields:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t MetalDataType.Struct.init(note:typeName:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 64) = 0;
  v8 = calculateOffsets(for:)(a5);
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v8 + 56 * v9;
  v11 = *(v10 - 16);
  v12 = *(v10 - 8);
  v13 = *(v10 + 24);

  LODWORD(v11) = *(v12 + 56);

  v14 = v13 + v11;
  if (__CFADD__(v13, v11))
  {
    __break(1u);
LABEL_5:

    v14 = 0;
  }

  *(v6 + 56) = v14;
  v15 = *(a5 + 16);
  if (v15)
  {
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v34;
    v17 = *(v34 + 16);
    v18 = a5 + 48;
    do
    {
      v19 = *(*v18 + 60);
      v35 = v16;
      v20 = *(v16 + 24);
      v21 = v17 + 1;
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v16 = v35;
      }

      *(v16 + 16) = v21;
      *(v16 + 4 * v17 + 32) = v19;
      v18 += 48;
      ++v17;
      --v15;
    }

    while (v15);
LABEL_13:
    v22 = *(v16 + 32);
    v23 = v21 - 1;
    if (v21 != 1)
    {
      if (v21 < 9)
      {
        v24 = 1;
        goto LABEL_19;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFF8 | 1;
      v25 = vdupq_n_s32(v22);
      v26 = (v16 + 52);
      v27 = v23 & 0xFFFFFFFFFFFFFFF8;
      v28 = v25;
      do
      {
        v25 = vmaxq_u32(v25, v26[-1]);
        v28 = vmaxq_u32(v28, *v26);
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      v22 = vmaxvq_u32(vmaxq_u32(v25, v28));
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_19:
        v29 = v21 - v24;
        v30 = 4 * v24 + 32;
        do
        {
          if (v22 <= *(v16 + v30))
          {
            v22 = *(v16 + v30);
          }

          v30 += 4;
          --v29;
        }

        while (v29);
      }
    }

    v31 = 0;
    goto LABEL_24;
  }

  v16 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = 0;
  v31 = 1;
LABEL_24:

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v22;
  }

  *(v6 + 60) = v32;
  *(v6 + 16) = a5;
  return v6;
}

uint64_t MetalDataType.Vector.__allocating_init(typeName:componentType:componentCount:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, int a5, int a6)
{
  result = swift_allocObject();
  *(result + 72) = a3;
  *(result + 80) = a4;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    if (a4)
    {
      v21 = a5;
      v22 = a6;
      v23 = result;
      v24 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v14 = 0;
      v15 = v24;
      v16 = *(v24 + 16);
      v17 = 48 * v16 + 72;
      do
      {
        v18 = v13;
        v19 = *(v24 + 24);

        if (v16 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v16 + 1, 1);
        }

        *(v24 + 16) = v16 + 1;
        v20 = (v24 + v17);
        *v20 = v14;
        *(v20 - 5) = 0;
        *(v20 - 4) = 0xE000000000000000;
        *(v20 - 3) = a3;
        *(v20 - 2) = v18;
        v13 = v18;
        v17 += 48;
        ++v16;
        ++v14;
        *(v20 - 8) = 1;
      }

      while (a4 != v14);

      result = v23;
      a5 = v21;
      a6 = v22;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    *(result + 64) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 24) = a1;
    *(result + 32) = a2;
    *(result + 56) = a5;
    *(result + 60) = a6;
    *(result + 16) = v15;
  }

  return result;
}

uint64_t MetalDataType.Vector.init(typeName:componentType:componentCount:size:alignment:)(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4, int a5, int a6)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (a4)
    {
      v16 = a2;
      v17 = result;
      v18 = a5;
      v19 = a6;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v10 = 0;
      v11 = v21;
      v12 = *(v21 + 16);
      v13 = 48 * v12 + 72;
      do
      {
        v14 = *(v21 + 24);

        if (v12 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        v15 = (v21 + v13);
        *v15 = v10;
        *(v15 - 5) = 0;
        *(v15 - 4) = 0xE000000000000000;
        *(v15 - 3) = a3;
        *(v15 - 2) = v8;
        v13 += 48;
        ++v12;
        ++v10;
        *(v15 - 8) = 1;
      }

      while (a4 != v10);

      v6 = v20;
      a5 = v18;
      a6 = v19;
      a2 = v16;
      result = v17;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    *(v6 + 64) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 24) = result;
    *(v6 + 32) = a2;
    *(v6 + 56) = a5;
    *(v6 + 60) = a6;
    *(v6 + 16) = v11;
    return v6;
  }

  return result;
}

uint64_t MetalDataType.Number.__allocating_init(note:typeName:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = swift_allocObject();
  *(result + 32) = a4;
  *(result + 40) = a1;
  *(result + 48) = a2;
  *(result + 64) = 0;
  *(result + 56) = a5;
  *(result + 60) = a6;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a3;
  return result;
}

uint64_t MetalDataType.Number.init(note:typeName:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 64) = 0;
  *(v6 + 56) = a5;
  *(v6 + 60) = a6;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 24) = a3;
  return v6;
}

void *MetalDataType.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t MetalDataType.Struct.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.Enum.__allocating_init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MetalDataType.Enum.init(note:typeName:types:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t MetalDataType.Enum.init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a5;

  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J8VAKXEfU_Tf1cn_n(a5);
  v12 = *(v11 + 16);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v13 = *(v11 + 32);
  v14 = v12 - 1;
  if (v12 == 1)
  {
    goto LABEL_13;
  }

  if (v12 >= 9)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFF8 | 1;
    v16 = vdupq_n_s32(v13);
    v17 = (v11 + 52);
    v18 = v14 & 0xFFFFFFFFFFFFFFF8;
    v19 = v16;
    do
    {
      v16 = vmaxq_u32(v16, v17[-1]);
      v19 = vmaxq_u32(v19, *v17);
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    v13 = vmaxvq_u32(vmaxq_u32(v16, v19));
    if (v14 == (v14 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 1;
  }

  v20 = v12 - v15;
  v21 = (v11 + 4 * v15 + 32);
  do
  {
    v23 = *v21++;
    v22 = v23;
    if (v13 <= v23)
    {
      v13 = v22;
    }

    --v20;
  }

  while (v20);
LABEL_13:
  v24 = v12 == 0;

  v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J9VAKXEfU0_Tf1cn_n(a5);

  v26 = *(v25 + 16);
  if (!v26)
  {
    v27 = 0;
    goto LABEL_25;
  }

  v27 = *(v25 + 32);
  v28 = v26 - 1;
  if (v26 == 1)
  {
    goto LABEL_25;
  }

  if (v26 >= 9)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFF8 | 1;
    v30 = vdupq_n_s32(v27);
    v31 = (v25 + 52);
    v32 = v28 & 0xFFFFFFFFFFFFFFF8;
    v33 = v30;
    do
    {
      v30 = vmaxq_u32(v30, v31[-1]);
      v33 = vmaxq_u32(v33, *v31);
      v31 += 2;
      v32 -= 8;
    }

    while (v32);
    v27 = vmaxvq_u32(vmaxq_u32(v30, v33));
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v29 = 1;
  }

  v34 = v26 - v29;
  v35 = (v25 + 4 * v29 + 32);
  do
  {
    v37 = *v35++;
    v36 = v37;
    if (v27 <= v37)
    {
      v27 = v36;
    }

    --v34;
  }

  while (v34);
LABEL_25:
  v38 = v26 == 0;

  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 64) = 0;
  if (!v24)
  {
    goto LABEL_31;
  }

  v39 = calculateOffsets(for:)(MEMORY[0x277D84F90]);
  v40 = *(v39 + 16);
  if (!v40)
  {
    goto LABEL_30;
  }

  v41 = v39 + 56 * v40;
  v42 = *(v41 - 16);
  v43 = *(v41 - 8);
  v44 = *(v41 + 24);

  LODWORD(v42) = *(v43 + 56);

  v13 = v44 + v42;
  if (__CFADD__(v44, v42))
  {
    __break(1u);
LABEL_30:

    v13 = 0;
  }

LABEL_31:
  *(v5 + 56) = v13;
  v45 = MEMORY[0x277D84F90];
  if (!v38)
  {
    goto LABEL_47;
  }

  v46 = *(MEMORY[0x277D84F90] + 16);
  if (v46)
  {
    v47 = *(MEMORY[0x277D84F90] + 32);
    v48 = v46 - 1;
    if (v46 != 1)
    {
      if (v46 < 9)
      {
        v49 = 1;
        goto LABEL_40;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFF8 | 1;
      v50 = (MEMORY[0x277D84F90] + 52);
      v51 = vdupq_n_s32(v47);
      v52 = v48 & 0xFFFFFFFFFFFFFFF8;
      v53 = v51;
      do
      {
        v51 = vmaxq_u32(v51, v50[-1]);
        v53 = vmaxq_u32(v53, *v50);
        v50 += 2;
        v52 -= 8;
      }

      while (v52);
      v47 = vmaxvq_u32(vmaxq_u32(v51, v53));
      if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_40:
        v54 = v46 - v49;
        v55 = (MEMORY[0x277D84F90] + 4 * v49 + 32);
        do
        {
          v57 = *v55++;
          v56 = v57;
          if (v47 <= v57)
          {
            v47 = v56;
          }

          --v54;
        }

        while (v54);
      }
    }
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v27 = v47;
  }

  else
  {
    v27 = 0;
  }

LABEL_47:
  *(v5 + 60) = v27;
  *(v5 + 16) = v45;
  return v5;
}

uint64_t MetalDataType.Pointer.init(to:isConst:addressSpace:)(void *a1, char a2, char a3)
{
  v3 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(a1, a2, a3);

  return v3;
}

uint64_t MetalDataType.Matrix.__allocating_init(typeName:vectorType:columnCount:rowCount:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, int a6, int a7)
{
  result = swift_allocObject();
  *(result + 72) = a5;
  *(result + 80) = a3;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a4)
    {
      v24 = result;
      v25 = a1;
      v26 = a6;
      v27 = a7;
      v28 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v16 = 0;
      v17 = v28;
      v18 = *(v28 + 16);
      v19 = 48 * v18 + 72;
      do
      {
        v20 = *(v28 + 24);
        v21 = v18 + 1;

        if (v18 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21, 1);
        }

        *(v28 + 16) = v21;
        v22 = (v28 + v19);
        *v22 = v16;
        *(v22 - 5) = 0;
        *(v22 - 4) = 0xE000000000000000;
        *(v22 - 3) = a3;
        *(v22 - 2) = MEMORY[0x277D84F90];
        v19 += 48;
        ++v18;
        ++v16;
        *(v22 - 8) = 1;
      }

      while (a4 != v16);
      a6 = v26;
      a7 = v27;
      a1 = v25;
      v15 = v24;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v29 = *(a3 + 24);
    v30 = *(a3 + 32);

    MEMORY[0x266771550](120, 0xE100000000000000);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v23);

    *(v15 + 32) = a2;
    *(v15 + 40) = v29;
    *(v15 + 48) = v30;
    *(v15 + 64) = 0;
    *(v15 + 56) = a6;
    *(v15 + 60) = a7;
    *(v15 + 16) = v17;
    *(v15 + 24) = a1;
    return v15;
  }

  return result;
}

uint64_t MetalDataType.Matrix.init(typeName:vectorType:columnCount:rowCount:size:alignment:)(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, int a6, int a7)
{
  *(v7 + 72) = a5;
  *(v7 + 80) = a3;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    v9 = a7;
    v10 = a6;
    v13 = a2;
    v14 = result;
    if (a4)
    {
      v24 = result;
      v27 = v7;
      v28 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v15 = 0;
      v16 = v28;
      v17 = *(v28 + 16);
      v18 = 48 * v17 + 72;
      do
      {
        v19 = *(v28 + 24);
        v20 = v17 + 1;

        if (v17 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20, 1);
        }

        *(v28 + 16) = v20;
        v21 = (v28 + v18);
        *v21 = v15;
        *(v21 - 5) = 0;
        *(v21 - 4) = 0xE000000000000000;
        *(v21 - 3) = a3;
        *(v21 - 2) = MEMORY[0x277D84F90];
        v18 += 48;
        ++v17;
        ++v15;
        *(v21 - 8) = 1;
      }

      while (a4 != v15);
      v8 = v27;
      v10 = a6;
      v9 = a7;
      v13 = a2;
      v14 = v24;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v29 = *(a3 + 24);
    v30 = *(a3 + 32);

    MEMORY[0x266771550](120, 0xE100000000000000);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v22);

    *(v8 + 32) = v13;
    *(v8 + 40) = v29;
    *(v8 + 48) = v30;
    *(v8 + 64) = 0;
    *(v8 + 56) = v10;
    *(v8 + 60) = v9;
    *(v8 + 16) = v16;
    *(v8 + 24) = v14;
    return v8;
  }

  return result;
}

void *MetalDataType.Matrix.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[10];

  return v0;
}

uint64_t MetalDataType.Matrix.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[10];

  return swift_deallocClassInstance();
}

char *MetalDataType.Function.__allocating_init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(a1, a2);

  return v4;
}

char *MetalDataType.Function.init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(a1, a2);

  return v2;
}

uint64_t MetalDataType.Function.__ivar_destroyer()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
}

void *MetalDataType.Function.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  return v0;
}

uint64_t MetalDataType.Function.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.AddressSpace.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x746E6174736E6F63;
  v2 = 0x646165726874;
  if (a1 != 2)
  {
    v2 = 0x7267646165726874;
  }

  if (a1)
  {
    v1 = 0x656369766564;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetalDataType.AddressSpace(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746E6174736E6F63;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x646165726874;
  if (v3 != 2)
  {
    v6 = 0x7267646165726874;
    v5 = 0xEB0000000070756FLL;
  }

  v7 = 0x656369766564;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x746E6174736E6F63;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE800000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x646165726874;
  if (*a2 != 2)
  {
    v12 = 0x7267646165726874;
    v11 = 0xEB0000000070756FLL;
  }

  if (*a2)
  {
    v2 = 0x656369766564;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetalDataType.AddressSpace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetalDataType.AddressSpace()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetalDataType.AddressSpace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetalDataType.AddressSpace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetalDataType.AddressSpace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetalDataType.AddressSpace(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746E6174736E6F63;
  v4 = 0xE600000000000000;
  v5 = 0x646165726874;
  if (*v1 != 2)
  {
    v5 = 0x7267646165726874;
    v4 = 0xEB0000000070756FLL;
  }

  if (*v1)
  {
    v3 = 0x656369766564;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MetalDataType.Pointer.__allocating_init(to:isConst:addressSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  swift_allocObject();
  v8 = a4(a1, a2, a3);

  return v8;
}

uint64_t MetalDataType.Reference.init(to:isConst:addressSpace:)(void *a1, char a2, unsigned __int8 a3)
{
  v3 = specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(a1, a2, a3);

  return v3;
}

void *MetalDataType.Vector.deinit(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  v5 = v1[6];

  a1(v1[9]);
  return v1;
}

uint64_t MetalDataType.Vector.__deallocating_deinit(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  v5 = v1[6];

  a1(v1[9]);

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.const()()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(*v0 + 88);

  v7 = v0[7];
  v8 = v5(v6);
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 64) = 1;
  *(result + 56) = v7;
  *(result + 16) = v8;
  *(result + 24) = v4;
  return result;
}

uint64_t MetalDataType.pointerTo(withAddressSpace:)(char a1)
{
  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v3 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v2, 0, a1);

  return v3;
}

uint64_t one-time initialization function for void()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 32) = 0xE400000000000000;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 1684631414;
  static MetalDataType.void = result;
  return result;
}

double one-time initialization function for BOOL()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE400000000000000;
  *(v0 + 40) = xmmword_265F22450;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 1819242338;
  static MetalDataType.BOOL = v0;
  return result;
}

double one-time initialization function for uint8()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F22460;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F38746E6975;
  static MetalDataType.uint8 = v0;
  return result;
}

uint64_t *MetalDataType.uint8.unsafeMutableAddressor()
{
  if (one-time initialization token for uint8 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint8;
}

double one-time initialization function for uint16()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22470;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3631746E6975;
  static MetalDataType.uint16 = v0;
  return result;
}

uint64_t *MetalDataType.uint16.unsafeMutableAddressor()
{
  if (one-time initialization token for uint16 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint16;
}

double one-time initialization function for uint32()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22480;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3233746E6975;
  static MetalDataType.uint32 = v0;
  return result;
}

uint64_t *MetalDataType.uint32.unsafeMutableAddressor()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint32;
}

double one-time initialization function for uint64()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22490;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3436746E6975;
  static MetalDataType.uint64 = v0;
  return result;
}

uint64_t *MetalDataType.uint64.unsafeMutableAddressor()
{
  if (one-time initialization token for uint64 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint64;
}

double one-time initialization function for int8()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = xmmword_265F224A0;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F38746E69;
  static MetalDataType.int8 = v0;
  return result;
}

uint64_t *MetalDataType.int8.unsafeMutableAddressor()
{
  if (one-time initialization token for int8 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int8;
}

double one-time initialization function for int16()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224B0;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3631746E69;
  static MetalDataType.int16 = v0;
  return result;
}

uint64_t *MetalDataType.int16.unsafeMutableAddressor()
{
  if (one-time initialization token for int16 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int16;
}

double one-time initialization function for int32()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224C0;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3233746E69;
  static MetalDataType.int32 = v0;
  return result;
}

uint64_t *MetalDataType.int32.unsafeMutableAddressor()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int32;
}

double one-time initialization function for int64()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224D0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3436746E69;
  static MetalDataType.int64 = v0;
  return result;
}

uint64_t *MetalDataType.int64.unsafeMutableAddressor()
{
  if (one-time initialization token for int64 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int64;
}

double one-time initialization function for half()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE400000000000000;
  *(v0 + 40) = xmmword_265F224E0;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 1718378856;
  static MetalDataType.half = v0;
  return result;
}

double one-time initialization function for float()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE500000000000000;
  *(v0 + 40) = xmmword_265F224F0;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x74616F6C66;
  static MetalDataType.float = v0;
  return result;
}

double one-time initialization function for size_t()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = xmmword_265F22500;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F657A6973;
  static MetalDataType.size_t = v0;
  return result;
}

uint64_t *MetalDataType.size_t.unsafeMutableAddressor()
{
  if (one-time initialization token for size_t != -1)
  {
    swift_once();
  }

  return &static MetalDataType.size_t;
}

uint64_t (*static MetalDataType.size_t.modify())()
{
  if (one-time initialization token for size_t != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

double one-time initialization function for ptrdiff()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE900000000000074;
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x8000000265F2ECE0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x5F66666964727470;
  static MetalDataType.ptrdiff = v0;
  return result;
}

uint64_t *MetalDataType.ptrdiff.unsafeMutableAddressor()
{
  if (one-time initialization token for ptrdiff != -1)
  {
    swift_once();
  }

  return &static MetalDataType.ptrdiff;
}

uint64_t static MetalDataType.size_t.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t static MetalDataType.size_t.setter(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static MetalDataType.ptrdiff.modify())()
{
  if (one-time initialization token for ptrdiff != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

double one-time initialization function for uint2()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x32746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.uint2 = v1;
  return result;
}

double one-time initialization function for uint3()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.uint3 = v1;
  return result;
}

double one-time initialization function for uint4()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.uint4 = v1;
  return result;
}

double one-time initialization function for int2()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 846491241;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.int2 = v1;
  return result;
}

double one-time initialization function for int3()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 863268457;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.int3 = v1;
  return result;
}

double one-time initialization function for int4()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 880045673;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.int4 = v1;
  return result;
}

double one-time initialization function for float2()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x3274616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.float2 = v1;
  return result;
}

double one-time initialization function for float3()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x3374616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.float3 = v1;
  return result;
}

double one-time initialization function for float4()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x3474616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.float4 = v1;
  return result;
}

double one-time initialization function for half2()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x32666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x400000004;
  *(v1 + 56) = 0x400000004;
  *(v1 + 16) = v3;
  static MetalDataType.half2 = v1;
  return result;
}

double one-time initialization function for half3()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v15;
  static MetalDataType.half3 = v1;
  return result;
}

double one-time initialization function for half4()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v14;
  static MetalDataType.half4 = v1;
  return result;
}

double one-time initialization function for color3()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33726F6C6F63;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v15;
  static MetalDataType.color3 = v1;
  return result;
}

double one-time initialization function for color4()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34726F6C6F63;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v14;
  static MetalDataType.color4 = v1;
  return result;
}

double one-time initialization function for float2x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000010;
  *(v1 + 56) = 0x800000010;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x32783274616F6C66;
  static MetalDataType.float2x2 = v1;
  return result;
}

double one-time initialization function for float2x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x1000000020;
  *(v1 + 56) = 0x1000000020;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x33783274616F6C66;
  static MetalDataType.float2x3 = v1;
  return result;
}

double one-time initialization function for float2x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x1000000020;
  *(v1 + 56) = 0x1000000020;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x34783274616F6C66;
  static MetalDataType.float2x4 = v1;
  return result;
}

double one-time initialization function for float3x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x800000018;
  *(v1 + 56) = 0x800000018;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x32783374616F6C66;
  static MetalDataType.float3x2 = v1;
  return result;
}

double one-time initialization function for float3x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x1000000030;
  *(v1 + 56) = 0x1000000030;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x33783374616F6C66;
  static MetalDataType.float3x3 = v1;
  return result;
}

double one-time initialization function for float3x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x1000000030;
  *(v1 + 56) = 0x1000000030;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x34783374616F6C66;
  static MetalDataType.float3x4 = v1;
  return result;
}

double one-time initialization function for float4x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x800000020;
  *(v1 + 56) = 0x800000020;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x32783474616F6C66;
  static MetalDataType.float4x2 = v1;
  return result;
}

double one-time initialization function for float4x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x1000000040;
  *(v1 + 56) = 0x1000000040;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x33783474616F6C66;
  static MetalDataType.float4x3 = v1;
  return result;
}

double one-time initialization function for float4x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x1000000040;
  *(v1 + 56) = 0x1000000040;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x34783474616F6C66;
  static MetalDataType.float4x4 = v1;
  return result;
}

double one-time initialization function for half2x2()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x327832666C6168;
  static MetalDataType.half2x2 = v1;
  return result;
}

uint64_t *MetalDataType.half2x2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half2x2;
}

double one-time initialization function for half3x3()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x337833666C6168;
  static MetalDataType.half3x3 = v1;
  return result;
}

uint64_t *MetalDataType.half3x3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half3x3;
}

double one-time initialization function for half4x4()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x347834666C6168;
  static MetalDataType.half4x4 = v1;
  return result;
}

uint64_t *MetalDataType.half4x4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half4x4;
}

double one-time initialization function for texture2d_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E666C61683C64;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2EF80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3265727574786574;
  static MetalDataType.texture2d_half = v0;
  return result;
}

double one-time initialization function for texture2d_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EF60;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2EF40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture2d_float = v0;
  return result;
}

double one-time initialization function for texture2d_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EF00;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2EEE0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture2d_short = v0;
  return result;
}

double one-time initialization function for texture2d_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EEC0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000265F2EEA0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texture2d_ushort = v0;
  return result;
}

uint64_t one-time initialization function for texture2d_int()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000010;
  *(result + 48) = 0x8000000265F2EFA0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "texture2d<int>");
  static MetalDataType.texture2d_int = result;
  return result;
}

double one-time initialization function for texture2d_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E746E69753C64;
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x8000000265F2EF20;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3265727574786574;
  static MetalDataType.texture2d_uint = v0;
  return result;
}

double one-time initialization function for texture3d_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E666C61683C64;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2F140;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3365727574786574;
  static MetalDataType.texture3d_half = v0;
  return result;
}

double one-time initialization function for texture3d_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F120;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2F100;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture3d_float = v0;
  return result;
}

double one-time initialization function for texture3d_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EE60;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2EE40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture3d_short = v0;
  return result;
}

double one-time initialization function for texture3d_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EE20;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000265F2EE00;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texture3d_ushort = v0;
  return result;
}

uint64_t one-time initialization function for texture3d_int()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000010;
  *(result + 48) = 0x8000000265F2F160;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "texture3d<int>");
  static MetalDataType.texture3d_int = result;
  return result;
}

double one-time initialization function for texture3d_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E746E69753C64;
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x8000000265F2EE80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3365727574786574;
  static MetalDataType.texture3d_uint = v0;
  return result;
}

uint64_t one-time initialization function for depth2d_half()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 38) = -4864;
  *(result + 40) = 0xD000000000000018;
  *(result + 48) = 0x8000000265F2EDE0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "depth2d<half>");
  static MetalDataType.depth2d_half = result;
  return result;
}

uint64_t *MetalDataType.depth2d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for depth2d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.depth2d_half;
}

uint64_t one-time initialization function for depth2d_float()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000018;
  *(result + 48) = 0x8000000265F2EDC0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "depth2d<float>");
  static MetalDataType.depth2d_float = result;
  return result;
}

uint64_t *MetalDataType.depth2d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for depth2d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.depth2d_float;
}

double one-time initialization function for texturecube_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F0E0;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2F0C0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texturecube_half = v0;
  return result;
}

double one-time initialization function for texturecube_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F0A0;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2F080;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000012;
  static MetalDataType.texturecube_float = v0;
  return result;
}

double one-time initialization function for texture2darray_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F020;
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x8000000265F2F000;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000015;
  static MetalDataType.texture2darray_half = v0;
  return result;
}

double one-time initialization function for texture2darray_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EFE0;
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x8000000265F2EFC0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000016;
  static MetalDataType.texture2darray_float = v0;
  return result;
}

double one-time initialization function for texture2darray_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2ED60;
  *(v0 + 40) = 0xD000000000000019;
  *(v0 + 48) = 0x8000000265F2ED40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000016;
  static MetalDataType.texture2darray_short = v0;
  return result;
}

double one-time initialization function for texture2darray_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2ED20;
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x8000000265F2ED00;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000017;
  static MetalDataType.texture2darray_ushort = v0;
  return result;
}

double one-time initialization function for texture2darray_int()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F060;
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x8000000265F2F040;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000014;
  static MetalDataType.texture2darray_int = v0;
  return result;
}

double one-time initialization function for texture2darray_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EDA0;
  *(v0 + 40) = 0xD000000000000017;
  *(v0 + 48) = 0x8000000265F2ED80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000015;
  static MetalDataType.texture2darray_uint = v0;
  return result;
}

uint64_t one-time initialization function for coord()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x64726F6F63, 0xE500000000000000, &outlined read-only object #0 of one-time initialization function for coord);
  static MetalDataType.coord = result;
  return result;
}

uint64_t *MetalDataType.coord.unsafeMutableAddressor()
{
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  return &static MetalDataType.coord;
}

uint64_t one-time initialization function for address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x2073736572646441, 0xEC00000065646F4DLL, 0x73736572646461, 0xE700000000000000, &outlined read-only object #0 of one-time initialization function for address);
  static MetalDataType.address = result;
  return result;
}

uint64_t *MetalDataType.address.unsafeMutableAddressor()
{
  if (one-time initialization token for address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.address;
}

uint64_t one-time initialization function for s_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412053, 0xEE0065646F4D2073, 0x7365726464615F73, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for s_address);
  static MetalDataType.s_address = result;
  return result;
}

uint64_t *MetalDataType.s_address.unsafeMutableAddressor()
{
  if (one-time initialization token for s_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.s_address;
}

uint64_t one-time initialization function for t_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412054, 0xEE0065646F4D2073, 0x7365726464615F74, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for t_address);
  static MetalDataType.t_address = result;
  return result;
}

uint64_t *MetalDataType.t_address.unsafeMutableAddressor()
{
  if (one-time initialization token for t_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.t_address;
}

uint64_t one-time initialization function for r_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412052, 0xEE0065646F4D2073, 0x7365726464615F72, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for r_address);
  static MetalDataType.r_address = result;
  return result;
}

uint64_t *MetalDataType.r_address.unsafeMutableAddressor()
{
  if (one-time initialization token for r_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.r_address;
}

uint64_t one-time initialization function for border_color()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x635F726564726F62, 0xEC000000726F6C6FLL, &outlined read-only object #0 of one-time initialization function for border_color);
  static MetalDataType.border_color = result;
  return result;
}

uint64_t *MetalDataType.border_color.unsafeMutableAddressor()
{
  if (one-time initialization token for border_color != -1)
  {
    swift_once();
  }

  return &static MetalDataType.border_color;
}

uint64_t one-time initialization function for filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x7265746C6966, 0xE600000000000000, &outlined read-only object #0 of one-time initialization function for filter);
  static MetalDataType.filter = result;
  return result;
}

uint64_t *MetalDataType.filter.unsafeMutableAddressor()
{
  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.filter;
}

uint64_t one-time initialization function for mag_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F67616DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for mag_filter);
  static MetalDataType.mag_filter = result;
  return result;
}

uint64_t *MetalDataType.mag_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for mag_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.mag_filter;
}

uint64_t one-time initialization function for min_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F6E696DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for min_filter);
  static MetalDataType.min_filter = result;
  return result;
}

uint64_t *MetalDataType.min_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for min_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.min_filter;
}

uint64_t one-time initialization function for mip_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F70696DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for mip_filter);
  static MetalDataType.mip_filter = result;
  return result;
}

uint64_t *MetalDataType.mip_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for mip_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.mip_filter;
}

uint64_t one-time initialization function for compare_func()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x5F657261706D6F63, 0xEC000000636E7566, &outlined read-only object #0 of one-time initialization function for compare_func);
  static MetalDataType.compare_func = result;
  return result;
}

uint64_t *MetalDataType.compare_func.unsafeMutableAddressor()
{
  if (one-time initialization token for compare_func != -1)
  {
    swift_once();
  }

  return &static MetalDataType.compare_func;
}

uint64_t *MetalDataType.max_anisotropy.unsafeMutableAddressor()
{
  if (one-time initialization token for max_anisotropy != -1)
  {
    swift_once();
  }

  return &static MetalDataType.max_anisotropy;
}

uint64_t *MetalDataType.lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for lod_clamp != -1)
  {
    swift_once();
  }

  return &static MetalDataType.lod_clamp;
}

uint64_t *MetalDataType.bias.unsafeMutableAddressor()
{
  if (one-time initialization token for bias != -1)
  {
    swift_once();
  }

  return &static MetalDataType.bias;
}

uint64_t *MetalDataType.level.unsafeMutableAddressor()
{
  if (one-time initialization token for level != -1)
  {
    swift_once();
  }

  return &static MetalDataType.level;
}

uint64_t *MetalDataType.min_lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for min_lod_clamp != -1)
  {
    swift_once();
  }

  return &static MetalDataType.min_lod_clamp;
}

uint64_t *MetalDataType.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static MetalDataType.offset;
}

uint64_t *MetalDataType.gradient2d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient2d != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradient2d;
}

uint64_t *MetalDataType.gradient3d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient3d != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradient3d;
}

uint64_t one-time initialization function for sampler(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 64) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a4;
  *(result + 56) = a1;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a3;
  *a5 = result;
  return result;
}

uint64_t *MetalDataType.gradientcube.unsafeMutableAddressor()
{
  if (one-time initialization token for gradientcube != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradientcube;
}

uint64_t static MetalDataType.int.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v33 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v34 = *a3;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMR);
  result = static _DictionaryStorage.copy(original:)();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = (*(a5 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      result = *(*(a5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = (v7[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      v22 = v7[7] + 40 * v17;
      *v22 = result;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        type metadata accessor for MetalDataType.Enum();
        v26 = swift_allocObject();
        MetalDataType.Enum.init(note:typeName:types:)(a1, a2, a3, a4, v7);
        return v26;
      }

      v16 = *(a5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v25;
    v12 = (a5 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v25 = v11;
      v16 = v11[2];
      v15 = v11[3];

      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v25;
      }

      v11[2] = v16 + 1;
      v17 = &v11[3 * v16];
      v17[4] = v13;
      v17[5] = v14;
      v17[6] = 0;
      v12 += 2;
      --v10;
    }

    while (v10);

    v7 = a3;
    v6 = a4;
    v9 = a1;
    v8 = a2;
    if (v11[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_10;
    }
  }

  v18 = MEMORY[0x277D84F98];
LABEL_10:
  v25 = v18;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, 1, &v25);
  v19 = v25;

  return specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(v9, v8, v7, v6, v19);
}

char *specialized MetalDataType.Function.init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);

  MEMORY[0x266771550](2632224, 0xE300000000000000);
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v23;

    MEMORY[0x266771550](v22, v24);

    MEMORY[0x266771550](41, 0xE100000000000000);
    *(v3 + 32) = v27;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 16) = v6;
    *(v3 + 24) = v26;
    return v3;
  }

  v25 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x266772030](v8, a2);
        v11 = *(v9 + 24);
        v10 = *(v9 + 32);

        swift_unknownObjectRelease();
        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        ++v8;
        *(v25 + 16) = v13 + 1;
        v14 = v25 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(a2 + v15);
        v18 = *(v16 + 24);
        v17 = *(v16 + 32);
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);

        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v15 += 8;
        --v5;
      }

      while (v5);
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = 0;
    v13 = v29;
    v27 = v5;
    v28 = *(v5 + 16);
    v14 = (v5 + 48);
    while (v28 != v12)
    {
      if (v12 >= *(v5 + 16))
      {
        goto LABEL_12;
      }

      v15 = v10;
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      v20 = *(v29 + 16);
      v19 = *(v29 + 24);

      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      }

      *(v29 + 16) = v20 + 1;
      v21 = v29 + 48 * v20;
      *(v21 + 72) = v12;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      *(v21 + 48) = v18;
      *(v21 + 56) = MEMORY[0x277D84F90];
      *(v21 + 64) = 1;
      v14 += 3;
      ++v12;
      v10 = v15;
      v5 = v27;
      if (v15 == v12)
      {

        v7 = a3;
        v6 = a4;
        v9 = a1;
        v8 = a2;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_10:
    type metadata accessor for MetalDataType.Struct();
    v22 = swift_allocObject();
    MetalDataType.Struct.init(note:typeName:fields:)(v9, v8, v7, v6, v13);
    return v22;
  }

  return result;
}

uint64_t specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(void *a1, char a2, char a3)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v6 = *(*a1 + 136);

  v7 = v6();
  MEMORY[0x266771550](v7);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](32, 0xE100000000000000);
  v9 = a1[3];
  v8 = a1[4];

  MEMORY[0x266771550](v9, v8);

  MEMORY[0x266771550](10784, 0xE200000000000000);
  if (a2)
  {
    v10 = 0x74736E6F6320;
  }

  else
  {
    v10 = 0;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x266771550](v10, v11);

  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = 0x207265746E696F50;
  *(v3 + 48) = 0xEB00000000206F74;
  *(v3 + 64) = a2;
  *(v3 + 56) = 0x800000008;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  return v3;
}

uint64_t specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(void *a1, char a2, unsigned __int8 a3)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v4 = 0xE800000000000000;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  v5 = 0x746E6174736E6F63;
  v6 = 0xE600000000000000;
  v7 = 0x646165726874;
  if (a3 != 2)
  {
    v7 = 0x7267646165726874;
    v6 = 0xEB0000000070756FLL;
  }

  if (a3)
  {
    v5 = 0x656369766564;
    v4 = 0xE600000000000000;
  }

  if (a3 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a3 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = v3;

  MEMORY[0x266771550](v8, v9);

  MEMORY[0x266771550](32, 0xE100000000000000);
  v14 = a1[3];
  v13 = a1[4];

  MEMORY[0x266771550](v14, v13);

  v15 = a2 & 1;
  if (a2)
  {
    v16 = 0x74736E6F6320;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x266771550](v16, v17);

  MEMORY[0x266771550](9760, 0xE200000000000000);
  v18 = v26[0];
  v19 = v26[1];
  strcpy(v26, "Reference to ");
  HIWORD(v26[1]) = -4864;

  MEMORY[0x266771550](v14, v13);

  v20 = v26[0];
  v21 = v26[1];
  v22 = *(*a1 + 88);

  v24 = v22(v23);

  *(v10 + 32) = v19;
  *(v10 + 40) = v20;
  *(v10 + 48) = v21;
  *(v10 + 64) = v15;
  *(v10 + 56) = 0x800000008;
  *(v10 + 16) = v24;
  *(v10 + 24) = v18;
  return v10;
}

uint64_t specialized MetalDataType.Struct.getElementFunctionName(for:)(uint64_t a1)
{
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v3;

  v8 = *(v1 + 24);
  v10 = *(v1 + 32);

  MEMORY[0x266771550](95, 0xE100000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v5);

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v2, v4);

  return v8;
}

unint64_t specialized MetalDataType.AddressSpace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetalDataType.AddressSpace.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace()
{
  result = lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace;
  if (!lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace);
  }

  return result;
}

uint64_t sub_265DE8894@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for MetalDataType.AddressSpace(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetalDataType.AddressSpace(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of (MetalDataType, Any?)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t OrderedSet.difference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a7;
  v55 = type metadata accessor for CollectionDifference();
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v50 - v15;
  v64 = *(a5 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v66 = v20;
  *(v20 + 16) = 0;
  v21 = (v20 + 16);
  v22 = swift_allocObject();
  v53 = type metadata accessor for CollectionDifference.Change();
  *(v22 + 16) = Array.init()();
  v52 = (v22 + 16);
  v67 = (v19 + 16);
  swift_beginAccess();
  v68 = v21;
  swift_beginAccess();
  v64 += 8;
  v61 = v19;
  v62 = a1;
  v60 = v22;
  v58 = a4;
  v57 = a2;
  v59 = a6;
  while (1)
  {
    v24 = *v67;
    if (v24 >= ContiguousArray.count.getter())
    {
      v25 = *v68;
      if (v25 >= ContiguousArray.count.getter())
      {
        break;
      }
    }

    v26 = *v68;
    if (v26 == ContiguousArray.count.getter())
    {
      v49 = 1;
      v27 = a1;
      v28 = a2;
      v29 = v19;
      v30 = v22;
      v31 = a3;
      v32 = a4;
LABEL_9:
      v33 = a5;
      goto LABEL_10;
    }

    if (v24 == ContiguousArray.count.getter())
    {
      v49 = 0;
      v27 = a3;
      v28 = a4;
      v29 = v66;
      v30 = v22;
      v31 = a1;
      v32 = a2;
      goto LABEL_9;
    }

    v34 = v65;
    ContiguousArray.subscript.getter();
    v35 = a4;
    v36 = OrderedSet._find(_:)(v34, a3, a4, a5, a6);
    v38 = v37;
    v63 = *v64;
    v63(v34, a5);
    if (v38)
    {
      v23 = v61;
      a1 = v62;
      v22 = v60;
      remove #1 <A>() in OrderedSet.difference(from:)(v62, a2, v61, v60, a3, v35, a5, a6, 1);
      a4 = v35;
      v19 = v23;
    }

    else
    {
      if (v36 < v26)
      {
        v49 = 1;
        v19 = v61;
        a1 = v62;
        v27 = v62;
        a2 = v57;
        v28 = v57;
        v29 = v61;
        v22 = v60;
        goto LABEL_14;
      }

      v56 = v36;
      v39 = v65;
      a4 = v58;
      ContiguousArray.subscript.getter();
      v40 = v62;
      a2 = v57;
      v41 = OrderedSet._find(_:)(v39, v62, v57, a5, v59);
      v43 = v42;
      result = (v63)(v39, a5);
      if (v43)
      {
        a6 = v59;
        v22 = v60;
        remove #1 <A>() in OrderedSet.difference(from:)(a3, a4, v66, v60, v40, a2, a5, v59, 0);
        a1 = v40;
        v19 = v61;
      }

      else if (v41 >= v24)
      {
        v22 = v60;
        v19 = v61;
        if (v24 == v41)
        {
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          *v67 = v24 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_33;
          }

          *v68 = v26 + 1;
          a4 = v58;
          a6 = v59;
          a1 = v62;
          a2 = v57;
        }

        else
        {
          if (__OFSUB__(v41, v24))
          {
            goto LABEL_32;
          }

          if (__OFSUB__(v56, v26))
          {
            goto LABEL_34;
          }

          if (v41 - v24 < v56 - v26)
          {
            v49 = 0;
            v27 = a3;
            a4 = v58;
            v28 = v58;
            v29 = v66;
            v30 = v60;
            a1 = v62;
            v31 = v62;
            a2 = v57;
            v32 = v57;
            goto LABEL_15;
          }

          v49 = 1;
          a1 = v62;
          v27 = v62;
          a2 = v57;
          v28 = v57;
          v29 = v61;
LABEL_14:
          v30 = v22;
          v31 = a3;
          a4 = v58;
          v32 = v58;
LABEL_15:
          v33 = a5;
          a6 = v59;
LABEL_10:
          remove #1 <A>() in OrderedSet.difference(from:)(v27, v28, v29, v30, v31, v32, v33, a6, v49);
        }
      }

      else
      {
        a4 = v58;
        a6 = v59;
        v22 = v60;
        a1 = v62;
        a2 = v57;
        remove #1 <A>() in OrderedSet.difference(from:)(a3, v58, v66, v60, v62, v57, a5, v59, 0);
        v19 = v61;
      }
    }
  }

  v45 = v52;
  swift_beginAccess();
  v69 = *v45;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v46 = v54;
  CollectionDifference.init<A>(_:)();
  v47 = v55;
  v48 = *(v55 - 8);
  result = (*(v48 + 48))(v46, 1, v55);
  if (result != 1)
  {
    (*(v48 + 32))(v51, v46, v47);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_265DE95C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t remove #1 <A>() in OrderedSet.difference(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v30 = a6;
  v31 = a8;
  v32 = a9;
  v12 = type metadata accessor for CollectionDifference.Change();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a3 + 16);
  ContiguousArray.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v23 = *(TupleTypeMetadata3 + 48);
  v24 = &v15[*(TupleTypeMetadata3 + 64)];
  swift_beginAccess();
  *v15 = *(a3 + 16);
  (*(v16 + 16))(&v15[v23], v20, a7);
  *v24 = OrderedSet._find(_:)(v20, a5, v30, a7, v31);
  v24[8] = v25 & 1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  (*(v16 + 8))(v20, a7);
  result = swift_beginAccess();
  v27 = *(a3 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v29;
  }

  return result;
}

uint64_t OrderedSet.applying(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OrderedSet.elements.getter();
  v7 = type metadata accessor for Array();
  swift_getWitnessTable();
  RangeReplaceableCollection.applying(_:)();

  v8 = v14;
  if (v14)
  {

    WitnessTable = swift_getWitnessTable();
    v10 = OrderedSet.init<A>(_:)(&v14, a4, v7, a5, WitnessTable);
    v11 = ContiguousArray.count.getter();
    v12 = MEMORY[0x266771860](v8, a4);

    if (v11 == v12)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F227E0;
  *(inited + 32) = 0xD00000000000003BLL;
  *(inited + 40) = 0x8000000265F2F1A0;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000003ALL;
  *(inited + 64) = 0x8000000265F2F1E0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000003BLL;
  *(inited + 88) = 0x8000000265F2F220;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 96) = v3;
  *(inited + 104) = 0xD00000000000003ALL;
  *(inited + 112) = 0x8000000265F2F260;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #3 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000034;
  *(inited + 136) = 0x8000000265F2F2A0;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #4 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 144) = v5;
  *(inited + 152) = 0xD000000000000033;
  *(inited + 160) = 0x8000000265F2F2E0;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #5 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 168) = v6;
  *(inited + 176) = 0xD00000000000003DLL;
  *(inited + 184) = 0x8000000265F2F320;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #6 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 192) = v7;
  *(inited + 200) = 0xD00000000000003CLL;
  *(inited + 208) = 0x8000000265F2F360;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #7 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 216) = v8;
  *(inited + 224) = 0xD00000000000003BLL;
  *(inited + 232) = 0x8000000265F2F3A0;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #8 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 240) = v9;
  *(inited + 248) = 0xD00000000000003ALL;
  *(inited + 256) = 0x8000000265F2F3E0;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #9 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 264) = v10;
  *(inited + 272) = 0xD00000000000003BLL;
  *(inited + 280) = 0x8000000265F2F420;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #10 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 288) = v11;
  *(inited + 296) = 0xD00000000000003ALL;
  *(inited + 304) = 0x8000000265F2F460;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #11 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000034;
  *(inited + 328) = 0x8000000265F2F4A0;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #12 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 336) = v13;
  *(inited + 344) = 0xD000000000000033;
  *(inited + 352) = 0x8000000265F2F4E0;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #13 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 360) = v14;
  *(inited + 368) = 0xD00000000000003DLL;
  *(inited + 376) = 0x8000000265F2F520;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #14 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 384) = v15;
  *(inited + 392) = 0xD00000000000003CLL;
  *(inited + 400) = 0x8000000265F2F560;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #15 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 408) = v16;
  *(inited + 416) = 0xD000000000000034;
  *(inited + 424) = 0x8000000265F2F5A0;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #16 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 432) = v17;
  *(inited + 440) = 0xD000000000000033;
  *(inited + 448) = 0x8000000265F2F5E0;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #17 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 456) = v18;
  *(inited + 464) = 0xD000000000000034;
  *(inited + 472) = 0x8000000265F2F620;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #18 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 480) = v19;
  *(inited + 488) = 0xD000000000000033;
  *(inited + 496) = 0x8000000265F2F660;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #19 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 504) = v20;
  *(inited + 512) = 0xD00000000000002DLL;
  *(inited + 520) = 0x8000000265F2F6A0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #20 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 528) = v21;
  *(inited + 536) = 0xD00000000000002CLL;
  *(inited + 544) = 0x8000000265F2F6D0;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #21 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 552) = v22;
  *(inited + 560) = 0xD000000000000036;
  *(inited + 568) = 0x8000000265F2F700;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #22 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 576) = v23;
  *(inited + 584) = 0xD000000000000035;
  *(inited + 592) = 0x8000000265F2F740;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #23 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 600) = v24;
  *(inited + 608) = 0xD00000000000003DLL;
  *(inited + 616) = 0x8000000265F2F780;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #24 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 624) = v25;
  *(inited + 632) = 0xD00000000000003CLL;
  *(inited + 640) = 0x8000000265F2F7C0;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #25 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 648) = v26;
  *(inited + 656) = 0xD00000000000003DLL;
  *(inited + 664) = 0x8000000265F2F800;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #26 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 672) = v27;
  *(inited + 680) = 0xD00000000000003CLL;
  *(inited + 688) = 0x8000000265F2F840;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #27 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 696) = v28;
  *(inited + 704) = 0xD000000000000036;
  *(inited + 712) = 0x8000000265F2F880;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #28 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 720) = v29;
  *(inited + 728) = 0xD000000000000035;
  *(inited + 736) = 0x8000000265F2F8C0;
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #29 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 744) = v30;
  *(inited + 752) = 0xD00000000000003FLL;
  *(inited + 760) = 0x8000000265F2F900;
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #30 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 768) = v31;
  *(inited + 776) = 0xD00000000000003ELL;
  *(inited + 784) = 0x8000000265F2F940;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #31 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 792) = v32;
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  result = swift_arrayDestroy();
  constantCreateSamplerFunctionNameToMatchingArguments._rawValue = v33;
  return result;
}

Swift::OpaquePointer *constantCreateSamplerFunctionNameToMatchingArguments.unsafeMutableAddressor()
{
  if (one-time initialization token for constantCreateSamplerFunctionNameToMatchingArguments != -1)
  {
    swift_once();
  }

  return &constantCreateSamplerFunctionNameToMatchingArguments;
}

uint64_t OrderedDictionary.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v16 = *MEMORY[0x277D84BF8];
  v17 = type metadata accessor for Mirror.DisplayStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  type metadata accessor for OrderedDictionary();
  type metadata accessor for OrderedDictionary.Elements();
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v11);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance OrderedDictionary<A, B>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  return OrderedDictionary.customMirror.getter(*v2, v2[1], v2[2], a1[4], a2);
}

uint64_t OrderedDictionary.Elements._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = v3[1];

  v9 = v3[2];

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t (*OrderedDictionary.elements.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  v6[4] = v8;
  v6[5] = a2[4];
  v9 = OrderedSet.init()(v8);
  v11 = v10;
  v12 = a2[3];
  v6[6] = v12;
  v13 = static Array._allocateUninitialized(_:)();
  v14 = MEMORY[0x266772110](v13, v12);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = v14;
  return OrderedDictionary.elements.modify;
}

uint64_t OrderedDictionary.Elements.keys.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.elements.getter(uint64_t a1)
{

  return a1;
}

uint64_t key path getter for OrderedDictionary.elements : <A, B>OrderedDictionary<A, B>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t key path setter for OrderedDictionary.elements : <A, B>OrderedDictionary<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v19 = *a2;
  v18 = a2[1];
  v11 = a2[2];

  v12 = OrderedSet.init()(v5);
  v14 = v13;
  v15 = static Array._allocateUninitialized(_:)();
  v16 = MEMORY[0x266772110](v15, v6);

  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  v20[0] = v8;
  v20[1] = v9;
  v20[2] = v10;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(a2, v20);
}

uint64_t (*OrderedDictionary.Elements.values.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  v6[4] = v8;
  v6[5] = a2[4];
  v9 = OrderedSet.init()(v8);
  v11 = v10;
  v12 = a2[3];
  v6[6] = v12;
  v13 = static Array._allocateUninitialized(_:)();
  v14 = MEMORY[0x266772110](v13, v12);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = v14;
  return OrderedDictionary.Elements.values.modify;
}

void OrderedDictionary.elements.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[5];
  v2 = (*a1)[6];
  v4 = (*a1)[4];
  $defer #1 <A, B>() in OrderedDictionary.elements.modify((*a1)[3], *a1);
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];

  free(v1);
}

uint64_t $defer #1 <A, B>() in OrderedDictionary.elements.modify(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a1 = *a2;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t OrderedDictionary.elements.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v8 = v4[1];
  v18 = *v4;
  v9 = v4[2];
  v10 = a4[4];
  v11 = OrderedSet.init()(a4[2]);
  v13 = v12;
  v14 = a4[3];
  v15 = static Array._allocateUninitialized(_:)();
  v16 = MEMORY[0x266772110](v15, v14);

  *v5 = v11;
  v5[1] = v13;
  v5[2] = v16;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(v5, v21);
}

uint64_t OrderedDictionary.Elements.makeIterator()(uint64_t a1)
{

  return a1;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Elements@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = OrderedDictionary.Elements.makeIterator()(v3);
  v8 = v7;
  v10 = v9;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return OrderedDictionary.Elements.underestimatedCount.getter();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);
  v5 = *v1;

  v6 = v1[1];

  v7 = v1[2];

  return v4;
}

Swift::Int __swiftcall OrderedDictionary.Elements.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Elements.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedDictionary.Elements.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedDictionary.Elements.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Elements.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.Elements.subscript.getter()
{
  ContiguousArray.subscript.getter();

  return ContiguousArray.subscript.getter();
}

uint64_t OrderedDictionary.Elements.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{

  result = ContiguousArray.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a6 = a3;
    a6[1] = a4;
    a6[2] = a5;
    a6[3] = a1;
    a6[4] = a2;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.isEmpty.getter()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t OrderedDictionary.Elements._failEarlyRangeCheck(_:bounds:)()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

void (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
    a1[2] = v11;
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
    a1[2] = v11;
    v12 = malloc(v10);
  }

  v13 = v12;
  a1[3] = v12;
  v14 = *a2;
  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = *(TupleTypeMetadata2 + 48);
  ContiguousArray.subscript.getter();
  ContiguousArray.subscript.getter();
  (*(*(v6 - 8) + 32))(v11, v13, v6);
  (*(*(v7 - 8) + 32))(v11 + *(TupleTypeMetadata2 + 48), v13 + v17, v7);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

double protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Elements@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  OrderedDictionary.Elements.subscript.getter(*a1, a1[1], *v3, v3[1], v3[2], v8);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Elements()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.isEmpty.getter in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  v4 = *(v1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return ContiguousArray.count.getter();
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedDictionary<A, B>.Elements(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *a2;
  v3 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

uint64_t OrderedDictionary.Elements.debugDescription.getter()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](0x6E656D656C452E3ELL, 0xEA00000000007374);
  v2._countAndFlagsBits = 0xD000000000000012;
  v2._object = 0x8000000265F2F980;
  countAndFlagsBits = OrderedDictionary._debugDescription(typeName:)(v2)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t OrderedDictionary.Elements.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v16 = *MEMORY[0x277D84BF0];
  v17 = type metadata accessor for Mirror.DisplayStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  type metadata accessor for OrderedDictionary.Elements();
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v11);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance OrderedDictionary<A, B>.Elements@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  return OrderedDictionary.Elements.customMirror.getter(*v2, v2[1], v2[2], a1[4], a2);
}

Swift::Int OrderedDictionary.Elements<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v15, a1, a2, a3, a4, a5, a6, a7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>.Elements(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  OrderedDictionary.Elements<>.hash(into:)(v7, *v3, v3[1], v3[2], a2[2], a2[3], a2[4], v5);
  return Hasher._finalize()();
}

void *OrderedDictionary.Elements.partition(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.partition(by:)(a1, a2, v8);
}

uint64_t OrderedDictionary.Elements<>.sort()(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = type metadata accessor for OrderedDictionary();

  return OrderedDictionary<>.sort()(v6, a2);
}

uint64_t OrderedDictionary.Elements.shuffle<A>(using:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for OrderedDictionary();

  return OrderedDictionary.shuffle<A>(using:)(a1, v6);
}

uint64_t OrderedDictionary.Elements.shuffle()(void *a1, uint64_t (*a2)(uint64_t))
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = type metadata accessor for OrderedDictionary();

  return a2(v5);
}

Swift::Void __swiftcall OrderedDictionary.Elements.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  type metadata accessor for OrderedDictionary();

  OrderedDictionary.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t OrderedDictionary.Elements.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  v10 = type metadata accessor for OrderedDictionary();

  return OrderedDictionary.remove(at:)(a1, a2, a3, v10);
}

uint64_t OrderedDictionary.Elements.swapAt(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = type metadata accessor for OrderedDictionary();

  return a4(a1, a2, v9);
}

uint64_t OrderedDictionary.Elements.removeSubrange<A>(_:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for OrderedDictionary();

  return OrderedDictionary.removeSubrange<A>(_:)(a1, v6);
}

uint64_t OrderedDictionary.Elements.removeLast()(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = type metadata accessor for OrderedDictionary();

  return a4(a1, a2, v9);
}

uint64_t OrderedDictionary.Elements.removeLast(_:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for OrderedDictionary();

  return a3(a1, v7);
}

uint64_t OrderedDictionary.Elements.sort(by:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = type metadata accessor for OrderedDictionary();
  return a4(a1, a2, v10);
}

__n128 sub_265DEBF34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v31;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v24 = v1;
  v25 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v26 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = (*(a1 + 56) + 16 * v7);
    v27 = *v12;
    v28 = v12[1];
    v29 = *v13;
    v30 = v13[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd, &_sSS3key_SS5valuetMR);
    result = _print_unlocked<A, B>(_:_:)();
    v15 = *(v31 + 16);
    v14 = *(v31 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v16 = v31 + 16 * v15;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v11);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v25;
    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 72 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v25, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v25, 0);
    }

LABEL_4:
    v8 = v26 + 1;
    v7 = v10;
    if (v26 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t SGREMaterialSource.name.getter()
{
  v1 = (*(v0 + OBJC_IVAR___SGREMaterialSource_graph) + OBJC_IVAR___SGGraph_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SGREMaterialSource.debugHashSummary.getter()
{
  Hasher.init()();
  SHA512Digest.hash(into:)();
  Hasher.finalize()();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v0 = v10;
  lazy protocol witness table accessor for type UInt and conformance UInt();
  v1 = String.init<A>(_:radix:uppercase:)();
  v4 = *(v10 + 16);
  v3 = *(v10 + 24);
  if (v4 >= v3 >> 1)
  {
    v8 = v1;
    v9 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v9;
    v1 = v8;
    v0 = v10;
  }

  *(v0 + 16) = v4 + 1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v6 = BidirectionalCollection<>.joined(separator:)();

  return v6;
}

uint64_t *SGREMaterialFunctionConstantValues.empty.unsafeMutableAddressor()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return &static SGREMaterialFunctionConstantValues.empty;
}

uint64_t SGREMaterialSource.uniforms.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t SGREMaterialSource.uniforms.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t SGREMaterialSource.containsPreReleaseNodes.getter()
{
  v1 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGREMaterialSource.containsPreReleaseNodes.setter(char a1)
{
  v3 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Class SGREMaterialSource.SHA512Hash.getter()
{
  v1 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v2 = type metadata accessor for SHA512Digest();
  v9 = v2;
  v10 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v0 + v1, v2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v7);
  return isa;
}

uint64_t SGREMaterialSource.edgeDigest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v4 = type metadata accessor for SHA512Digest();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SGREMaterialSource.init(graph:configuration:)(void *a1, void *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SHA512Digest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v284 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v285._rawValue = &v269 - v12;
  v13 = OBJC_IVAR___SGREMaterialSource_graph;
  *&v4[OBJC_IVAR___SGREMaterialSource_graph] = a1;
  v290 = OBJC_IVAR___SGREMaterialSource_config;
  *&v4[OBJC_IVAR___SGREMaterialSource_config] = a2;
  v14 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v15 = (*MEMORY[0x277D85000] & *a2) + 120;
  v295 = a1;
  v283 = a2;
  v16 = a2;
  v281 = v15;
  v282 = v14;
  v17 = v14();
  if (v17 >> 62)
  {
    v94 = v17;
    v18 = __CocoaSet.count.getter();
    v17 = v94;
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v293 = v16;
  v294 = v4;
  v288 = v7;
  v289 = v8;
  v291 = v13;
  if (v18)
  {
    v19 = v17;
    v311 = MEMORY[0x277D84F90];
    v20 = &v311;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_93;
    }

    v358 = v18;
    v21 = 0;
    v22 = v311;
    v23 = v19;
    v24 = v19 & 0xC000000000000001;
    v25 = v19;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x266772030](v21, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v21 + 32);
      }

      v27 = v26;
      v28 = &v26[OBJC_IVAR___SGInput_name];
      swift_beginAccess();
      v8 = *v28;
      v29 = *(v28 + 1);

      v311 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v7 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v22 = v311;
      }

      v21 = (v21 + 1);
      *(v22 + 16) = v7;
      v32 = v22 + 16 * v31;
      *(v32 + 32) = v8;
      *(v32 + 40) = v29;
      v23 = v25;
    }

    while (v358 != v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v33 = v295;
  v358 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

  v34 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v287._rawValue = v34;
  v20 = *&v34[v33];
  v305 = MEMORY[0x277D84F90];
  if (v20 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (v35)
  {
    v36 = 0;
    v298._rawValue = (v20 & 0xFFFFFFFFFFFFFF8);
    v299 = (v20 & 0xC000000000000001);
    v286 = v20;
    v297 = (v20 + 32);
    v37 = v358 + 7;
    while (1)
    {
      while (1)
      {
        if (v299)
        {
          v39 = MEMORY[0x266772030](v36, v286);
        }

        else
        {
          if (v36 >= *(v298._rawValue + 2))
          {
            goto LABEL_79;
          }

          v39 = v297[v36];
        }

        v40 = v39;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          SGGraph.topologicalSort()(&v312);
          if (v3)
          {
LABEL_81:
            v296._rawValue = v3;

            goto LABEL_82;
          }

          v60 = v312;
          v357[0] = v312;
          specialized TopologicalSort.surfaceNodeElement(ofType:)(0, v312, &v316);
          v296._rawValue = 0;
LABEL_86:
          v89 = v316;
          if (v316)
          {
            v90 = v317;
            v91 = v314;
            v278 = v313;
            v279 = v318;
            v92 = v315;
            rawValue = v296._rawValue;
            specialized conditionallyInsertDiscardNode(from:in:)(v316, v317, v318, v60, v314);
            v296._rawValue = rawValue;
            if (rawValue)
            {

              outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v349 = v92;
              outlined destroy of [Input](&v349, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              goto LABEL_82;
            }

            v276 = v60;
            v277 = v91;
            v99 = inferTextureAssignments(from:)(v20);
            v296._rawValue = 0;
            v272 = v92;
            v273 = v90;
            v274 = v89;
            v275 = v99;
            v100 = mapUniforms(_:)(v99);
            v101 = 0;
            v102 = *(v100 + 16);
            v103 = MEMORY[0x277D84F90];
LABEL_95:
            v104 = 48 * v101;
            while (v102 != v101)
            {
              if (v101 >= *(v100 + 16))
              {
                __break(1u);
                goto LABEL_126;
              }

              ++v101;
              v105 = v104 + 48;
              v106 = *(v100 + v104 + 72);
              v104 += 48;
              if ((v106 & 1) == 0)
              {
                v107 = v100 + v105;
                v108 = *(v100 + v105 - 16);
                v270 = *(v107 - 8);
                v271 = v108;
                v109 = *(v107 + 8);
                v110 = *(v107 + 16);

                outlined copy of TextureSource();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
                }

                v112 = v103[2];
                v111 = v103[3];
                if (v112 >= v111 >> 1)
                {
                  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v103);
                }

                v103[2] = v112 + 1;
                v113 = &v103[4 * v112];
                v114 = v270;
                v113[4] = v271;
                v113[5] = v114;
                v113[6] = v109;
                v113[7] = v110;
                goto LABEL_95;
              }
            }

            if (v103[2])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
              v115 = static _DictionaryStorage.allocate(capacity:)();
            }

            else
            {
              v115 = MEMORY[0x277D84F98];
            }

            v305 = v115;

            v117 = v296._rawValue;
            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v116, 1, &v305);
            v118 = v117;
            if (v117)
            {
              goto LABEL_195;
            }

            swift_bridgeObjectRelease_n();
            v119 = v305;
            *&v294[OBJC_IVAR___SGREMaterialSource_textures] = v305;
            v305 = 0;
            v120 = v295;
            v358 = v119;

            v299 = v120;
            specialized SGDataTypeGraph.init(_:idSequence:constants:)(v120, &v305, MEMORY[0x277D84F90], &v319);
            v296._rawValue = 0;
            SGDataTypeGraph.topologicalSort()(v324);
            v121 = v296._rawValue;
            v122 = specialized inferContainsPrereleaseNodes(in:)(v276);
            v296._rawValue = v121;
            if (v121)
            {

              outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v350 = v272;
              outlined destroy of [Input](&v350, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              outlined destroy of SGDataTypeGraph.TopologicalSort(v324);
              v348 = v320;
              outlined destroy of String(&v348);
              v347 = v321;
              outlined destroy of [Input](&v347, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v346 = v322;
              outlined destroy of [Input](&v346, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v345 = v323;
              v123 = &v345;
LABEL_112:
              outlined destroy of [Input](v123, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

              v59 = 0;
              v58 = 1;
              goto LABEL_64;
            }

            v294[OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes] = v122 & 1;
            v124 = v296._rawValue;
            v125 = specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(v324, v358);
            v296._rawValue = v124;
            if (v124)
            {

              outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v351 = v272;
              outlined destroy of [Input](&v351, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              outlined destroy of SGDataTypeGraph.TopologicalSort(v324);
              v344 = v320;
              outlined destroy of String(&v344);
              v343 = v321;
              outlined destroy of [Input](&v343, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v342 = v322;
              outlined destroy of [Input](&v342, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v341 = v323;
              v123 = &v341;
              goto LABEL_112;
            }

            v126 = v125;
            outlined destroy of SGDataTypeGraph.TopologicalSort(v324);
            v127 = v296._rawValue;
            edgeListDigest(_:)(v126, v285._rawValue);
            v103 = v127;
            if (v127)
            {

              outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v352 = v272;
              outlined destroy of [Input](&v352, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              v340 = v320;
              outlined destroy of String(&v340);
              v339 = v321;
              outlined destroy of [Input](&v339, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v338 = v322;
              outlined destroy of [Input](&v338, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v337 = v323;
              outlined destroy of [Input](&v337, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

              v59 = 0;
              v58 = 1;
              v296._rawValue = v127;
              goto LABEL_64;
            }

            v128 = *(v289 + 32);
            v269 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
            v128(&v294[OBJC_IVAR___SGREMaterialSource_edgeDigest], v285._rawValue, v288);
            v275 = v308;
            if (*(v308 + 16))
            {
              v129 = 0xE000000000000000;
              v305 = 0;
              v306 = 0xE000000000000000;
              _StringGuts.grow(_:)(44);

              v305 = 0xD000000000000014;
              v306 = 0x8000000265F2F9A0;
              v130 = *&v299[OBJC_IVAR___SGGraph_name];
              v131 = *&v299[OBJC_IVAR___SGGraph_name + 8];

              MEMORY[0x266771550](v130, v131);

              MEMORY[0x266771550](0xD000000000000016, 0x8000000265F2F9C0);
              v132 = v275;
              if (*(v275 + 16) == 1)
              {
                v133 = 0;
              }

              else
              {
                v133 = 115;
              }

              if (*(v275 + 16) != 1)
              {
                v129 = 0xE100000000000000;
              }

              MEMORY[0x266771550](v133, v129);

              MEMORY[0x266771550](2236474, 0xE300000000000000);

              v135 = v305;
              v134 = v306;
              v305 = v132;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A]();
              v136 = BidirectionalCollection<>.joined(separator:)();
              v138 = v137;

              v305 = v135;
              v306 = v134;

              MEMORY[0x266771550](v136, v138);

              MEMORY[0x266771550](34, 0xE100000000000000);

              v140 = v305;
              v139 = v306;
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v141 = type metadata accessor for Logger();
              __swift_project_value_buffer(v141, logger);

              v101 = Logger.logObject.getter();
              v142 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v101, v142))
              {
                v143 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v305 = v144;
                *v143 = 136315138;
                v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v139, &v305);

                *(v143 + 4) = v145;
                _os_log_impl(&dword_265D7D000, v101, v142, "%s", v143, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v144);
                MEMORY[0x266773120](v144, -1, -1);
                MEMORY[0x266773120](v143, -1, -1);
              }

              else
              {
LABEL_126:
              }
            }

            v146 = static DebugConfig.debugMode;

            v147 = specialized Set.contains(_:)(3, v146);

            if ((v147 & 1) == 0)
            {
              v148 = static DebugConfig.debugMode;

              v149 = specialized Set.contains(_:)(6, v148);

              if ((v149 & 1) == 0)
              {

                goto LABEL_185;
              }
            }

            v150 = v288;
            v151 = v284;
            (*(v289 + 16))(v284, &v294[v269], v288);
            v152 = SHA512Digest.description.getter();
            v154 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v152, v153);
            v156 = v155;
            v158 = v157;
            v160 = v159;

            v270 = MEMORY[0x2667714E0](v154, v156, v158, v160);
            v271 = v161;

            (*(v289 + 8))(v151, v150);
            v287._rawValue = *(v295 + v287._rawValue);
            if (v287._rawValue >> 62)
            {
              v285._rawValue = __CocoaSet.count.getter();
              if (!v285._rawValue)
              {
                goto LABEL_143;
              }

LABEL_132:
              v300 = MEMORY[0x277D84F90];
              v162 = v285._rawValue;

              v118 = &v300;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162 & ~(v162 >> 63), 0);
              if ((v162 & 0x8000000000000000) == 0)
              {
                v163 = 0;
                v296._rawValue = v300;
                v164 = v287._rawValue & 0xC000000000000001;
                do
                {
                  if (v164)
                  {
                    v165 = MEMORY[0x266772030](v163, v287._rawValue);
                  }

                  else
                  {
                    v165 = *(v287._rawValue + v163 + 4);
                  }

                  v166 = v165;
                  v168 = *&v165[OBJC_IVAR___SGInput_name];
                  v167 = *&v165[OBJC_IVAR___SGInput_name + 8];
                  v303 = v168;
                  v304 = v167;

                  MEMORY[0x266771550](8250, 0xE200000000000000);
                  v169 = v303;
                  v170 = v304;
                  v171 = OBJC_IVAR___SGInput_type;
                  swift_beginAccess();
                  v172 = *&v166[v171];
                  v173 = SGDataType.stringValue.getter();
                  v175 = v174;
                  v303 = v169;
                  v304 = v170;

                  MEMORY[0x266771550](v173, v175);

                  v176 = v303;
                  v177 = v304;
                  v300 = v296._rawValue;
                  v179 = *(v296._rawValue + 2);
                  v178 = *(v296._rawValue + 3);
                  if (v179 >= v178 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1);
                    v296._rawValue = v300;
                  }

                  ++v163;
                  v180 = v296._rawValue;
                  *(v296._rawValue + 2) = v179 + 1;
                  v181 = &v180[16 * v179];
                  *(v181 + 4) = v176;
                  *(v181 + 5) = v177;
                }

                while (v285._rawValue != v163);

                goto LABEL_144;
              }

              __break(1u);
            }

            else
            {
              v285._rawValue = *((v287._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v285._rawValue)
              {
                goto LABEL_132;
              }

LABEL_143:
              v296._rawValue = MEMORY[0x277D84F90];
LABEL_144:
              if ((v298._rawValue & 0x8000000000000000) == 0 && (v298._rawValue & 0x4000000000000000) == 0)
              {
                v285._rawValue = *(v298._rawValue + 2);
                if (v285._rawValue)
                {
                  goto LABEL_147;
                }

LABEL_157:

                v287._rawValue = MEMORY[0x277D84F90];
LABEL_158:
                v202 = v282(v201);
                v203 = v202;
                if (!(v202 >> 62))
                {
                  v285._rawValue = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v285._rawValue)
                  {
                    goto LABEL_160;
                  }

LABEL_170:

                  v298._rawValue = MEMORY[0x277D84F90];
LABEL_171:
                  v285._rawValue = (*((*MEMORY[0x277D85000] & *v293) + 0x60))(v223);
                  if (!(v285._rawValue >> 62))
                  {
                    v283 = *((v285._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v283)
                    {
                      goto LABEL_173;
                    }

LABEL_183:

                    v226._rawValue = MEMORY[0x277D84F90];
LABEL_184:
                    v285._rawValue = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(v358);

                    v309 = 0;
                    v310 = 0xE000000000000000;
                    _StringGuts.grow(_:)(188);
                    MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2FA00);
                    v236 = &v299[OBJC_IVAR___SGGraph_name];
                    v237 = *&v299[OBJC_IVAR___SGGraph_name];
                    v238 = *&v299[OBJC_IVAR___SGGraph_name + 8];

                    MEMORY[0x266771550](v237, v238);

                    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FA30);
                    MEMORY[0x266771550](v270, v271);
                    MEMORY[0x266771550](0xD000000000000032, 0x8000000265F2FA50);
                    v239 = logArray(_:tabs:)(v296, 1);

                    MEMORY[0x266771550](v239._countAndFlagsBits, v239._object);

                    MEMORY[0x266771550](0x6D726F66696E750ALL, 0xEB000000000A3A73);
                    v240 = logArray(_:tabs:)(v287, 1);

                    MEMORY[0x266771550](v240._countAndFlagsBits, v240._object);

                    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F2FA90);
                    v241 = logArray(_:tabs:)(v298, 1);

                    MEMORY[0x266771550](v241._countAndFlagsBits, v241._object);

                    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2FAB0);
                    v242 = logArray(_:tabs:)(v285, 1);

                    MEMORY[0x266771550](v242._countAndFlagsBits, v242._object);

                    MEMORY[0x266771550](0xD000000000000013, 0x8000000265F2FAD0);
                    v243 = logArray(_:tabs:)(v226, 1);

                    MEMORY[0x266771550](v243._countAndFlagsBits, v243._object);

                    v244 = v309;
                    v245 = v310;
                    v309 = v280;
                    v310 = v286;

                    MEMORY[0x266771550](170536714, 0xE400000000000000);

                    MEMORY[0x266771550](v244, v245);

                    MEMORY[0x266771550](170863114, 0xE400000000000000);

                    v246 = v309;
                    v247 = v310;
                    v248 = *(v236 + 1);
                    v309 = *v236;
                    v310 = v248;

                    MEMORY[0x266771550](95, 0xE100000000000000);
                    MEMORY[0x266771550](v270, v271);

                    MEMORY[0x266771550](0x656372756F735FLL, 0xE700000000000000);
                    v286 = v310;
                    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v246, v247, v309, v310, 7630692, 0xE300000000000000);

LABEL_185:

                    v249 = static DebugConfig.debugMode;

                    v250 = specialized Set.contains(_:)(3, v249);

                    if (v250)
                    {
                      specialized createGraphDotText<A>(representing:)(&v319);
                      v298._rawValue = v251;
                      v358 = v252;
                      if (v103)
                      {
                        outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                        v354 = v272;
                        outlined destroy of [Input](&v354, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

                        v332 = v320;
                        outlined destroy of String(&v332);
                        v331 = v321;
                        outlined destroy of [Input](&v331, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                        v330 = v322;
                        outlined destroy of [Input](&v330, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                        v329 = v323;
                        outlined destroy of [Input](&v329, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

                        v58 = 1;
                        v296._rawValue = v103;
                        v59 = 1;
                        goto LABEL_64;
                      }

                      v328 = v320;
                      outlined destroy of String(&v328);
                      v327 = v321;
                      outlined destroy of [Input](&v327, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                      v326 = v322;
                      outlined destroy of [Input](&v326, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                      v325 = v323;
                      outlined destroy of [Input](&v325, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
                      v309 = 0;
                      v310 = 0xE000000000000000;
                      _StringGuts.grow(_:)(26);
                      v254 = *&v299[OBJC_IVAR___SGGraph_name];
                      v253 = *&v299[OBJC_IVAR___SGGraph_name + 8];

                      v309 = v254;
                      v310 = v253;
                      MEMORY[0x266771550](95, 0xE100000000000000);
                      v255 = v289;
                      v256 = v284;
                      (*(v289 + 16))(v284, &v294[v269], v288);
                      v257 = SHA512Digest.description.getter();
                      v259 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v257, v258);
                      v261 = v260;
                      v263 = v262;
                      v265 = v264;

                      v266 = MEMORY[0x2667714E0](v259, v261, v263, v265);
                      v268 = v267;

                      (*(v255 + 8))(v256, v288);
                      MEMORY[0x266771550](v266, v268);

                      MEMORY[0x266771550](0xD000000000000015, 0x8000000265F2F9E0);
                      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v298._rawValue, v358, v309, v310, 7630692, 0xE300000000000000);
                      outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                      v355 = v272;
                      outlined destroy of [Input](&v355, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
                    }

                    else
                    {
                      outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                      v353 = v272;
                      outlined destroy of [Input](&v353, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

                      v336 = v320;
                      outlined destroy of String(&v336);
                      v335 = v321;
                      outlined destroy of [Input](&v335, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                      v334 = v322;
                      outlined destroy of [Input](&v334, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                      v333 = v323;
                      outlined destroy of [Input](&v333, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
                    }

                    v307.receiver = v294;
                    v307.super_class = ObjectType;
                    v78 = objc_msgSendSuper2(&v307, sel_init);

                    return v78;
                  }

                  v283 = __CocoaSet.count.getter();
                  if (!v283)
                  {
                    goto LABEL_183;
                  }

LABEL_173:
                  v302 = MEMORY[0x277D84F90];
                  v224 = v283;
                  v118 = &v302;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v224 & ~(v224 >> 63), 0);
                  if ((v224 & 0x8000000000000000) == 0)
                  {
                    v225 = 0;
                    v226._rawValue = v302;
                    v282 = (v285._rawValue & 0xC000000000000001);
                    do
                    {
                      if (v282)
                      {
                        v227 = MEMORY[0x266772030](v225, v285._rawValue);
                      }

                      else
                      {
                        v227 = *(v285._rawValue + v225 + 4);
                      }

                      v228 = v227;
                      v230 = *&v227[OBJC_IVAR___SGGeometryPropertyDefinition_name];
                      v229 = *&v227[OBJC_IVAR___SGGeometryPropertyDefinition_name + 8];
                      v309 = v230;
                      v310 = v229;

                      MEMORY[0x266771550](540945696, 0xE400000000000000);
                      MEMORY[0x266771550](*&v228[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName], *&v228[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8]);

                      v232 = v309;
                      v231 = v310;
                      v302 = v226._rawValue;
                      v234 = *(v226._rawValue + 2);
                      v233 = *(v226._rawValue + 3);
                      if (v234 >= v233 >> 1)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1);
                        v226._rawValue = v302;
                      }

                      ++v225;
                      *(v226._rawValue + 2) = v234 + 1;
                      v235 = v226._rawValue + 16 * v234;
                      *(v235 + 4) = v232;
                      *(v235 + 5) = v231;
                    }

                    while (v283 != v225);

                    goto LABEL_184;
                  }

LABEL_194:
                  __break(1u);
LABEL_195:

                  __break(1u);
                  return result;
                }

                v285._rawValue = __CocoaSet.count.getter();
                if (!v285._rawValue)
                {
                  goto LABEL_170;
                }

LABEL_160:
                v302 = MEMORY[0x277D84F90];
                v204 = v285._rawValue;
                v118 = &v302;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v204 & ~(v204 >> 63), 0);
                if ((v204 & 0x8000000000000000) == 0)
                {
                  v205 = 0;
                  v298._rawValue = v302;
                  v282 = (v203 & 0xC000000000000001);
                  do
                  {
                    if (v282)
                    {
                      v206 = MEMORY[0x266772030](v205, v203);
                    }

                    else
                    {
                      v206 = *(v203 + 8 * v205 + 32);
                    }

                    v207 = v206;
                    v209 = *&v206[OBJC_IVAR___SGInput_name];
                    v208 = *&v206[OBJC_IVAR___SGInput_name + 8];
                    v309 = v209;
                    v310 = v208;

                    MEMORY[0x266771550](8250, 0xE200000000000000);
                    v210 = v309;
                    v211 = v310;
                    v212 = OBJC_IVAR___SGInput_type;
                    swift_beginAccess();
                    v213 = *&v207[v212];
                    v214 = SGDataType.stringValue.getter();
                    v216 = v215;
                    v309 = v210;
                    v310 = v211;

                    MEMORY[0x266771550](v214, v216);

                    v217 = v309;
                    v218 = v310;
                    v302 = v298._rawValue;
                    v220 = *(v298._rawValue + 2);
                    v219 = *(v298._rawValue + 3);
                    if (v220 >= v219 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v219 > 1), v220 + 1, 1);
                      v298._rawValue = v302;
                    }

                    v205 = v205 + 1;
                    v221 = v298._rawValue;
                    *(v298._rawValue + 2) = v220 + 1;
                    v222 = &v221[16 * v220];
                    *(v222 + 4) = v217;
                    *(v222 + 5) = v218;
                  }

                  while (v285._rawValue != v205);

                  goto LABEL_171;
                }

LABEL_193:
                __break(1u);
                goto LABEL_194;
              }

              v285._rawValue = __CocoaSet.count.getter();
              if (!v285._rawValue)
              {
                goto LABEL_157;
              }

LABEL_147:
              v309 = MEMORY[0x277D84F90];
              v182 = v285._rawValue;
              v118 = &v309;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182 & ~(v182 >> 63), 0);
              if ((v182 & 0x8000000000000000) == 0)
              {
                v183 = 0;
                v287._rawValue = v309;
                v276 = v298._rawValue & 0xC000000000000001;
                do
                {
                  if (v276)
                  {
                    v184 = MEMORY[0x266772030](v183, v298._rawValue);
                  }

                  else
                  {
                    v184 = *(v298._rawValue + v183 + 4);
                  }

                  v185 = v184;
                  v187 = *&v184[OBJC_IVAR___SGInput_name];
                  v186 = *&v184[OBJC_IVAR___SGInput_name + 8];
                  v300 = v187;
                  v301 = v186;

                  MEMORY[0x266771550](8250, 0xE200000000000000);
                  v188 = v300;
                  v189 = v301;
                  v190 = OBJC_IVAR___SGInput_type;
                  swift_beginAccess();
                  v191 = *&v185[v190];
                  v192 = SGDataType.stringValue.getter();
                  v194 = v193;
                  v300 = v188;
                  v301 = v189;

                  MEMORY[0x266771550](v192, v194);

                  v195 = v300;
                  v196 = v301;
                  v309 = v287._rawValue;
                  v198 = *(v287._rawValue + 2);
                  v197 = *(v287._rawValue + 3);
                  if (v198 >= v197 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1);
                    v287._rawValue = v309;
                  }

                  ++v183;
                  v199 = v287._rawValue;
                  *(v287._rawValue + 2) = v198 + 1;
                  v200 = &v199[16 * v198];
                  *(v200 + 4) = v195;
                  *(v200 + 5) = v196;
                }

                while (v285._rawValue != v183);

                goto LABEL_158;
              }
            }

            __break(1u);
            goto LABEL_193;
          }

          lazy protocol witness table accessor for type APIError and conformance APIError();
          v95 = swift_allocError();
          *v96 = xmmword_265F22B90;
          *(v96 + 16) = 24;
          v296._rawValue = v95;
          swift_willThrow();
          outlined destroy of [Input](v357, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
          v97 = v313;
          v98 = v315;

          v356 = v98;
          outlined destroy of [Input](&v356, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
LABEL_82:

LABEL_45:
          v58 = 0;
          v59 = 0;
          goto LABEL_65;
        }

        if (v358[2])
        {
          break;
        }

LABEL_19:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v38 = v305[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = &v305;
        specialized ContiguousArray._endMutation()();
        if (v36 == v35)
        {
          goto LABEL_37;
        }
      }

      v42 = *&v39[OBJC_IVAR___SGInput_name];
      v7 = *&v39[OBJC_IVAR___SGInput_name + 8];
      v8 = v358;
      v43 = v358[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v44 = Hasher._finalize()();
      v45 = -1 << *(v8 + 32);
      v20 = v44 & ~v45;
      if (((*(v37 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      v8 = ~v45;
      while (1)
      {
        v46 = (v358[6] + 16 * v20);
        v47 = *v46 == v42 && v46[1] == v7;
        if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v8;
        if (((*(v37 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v36 == v35)
      {
LABEL_37:
        v16 = v305;
        v33 = v295;
        break;
      }
    }
  }

  v7 = OBJC_IVAR___SGREMaterialSource_uniforms;
  *&v294[OBJC_IVAR___SGREMaterialSource_uniforms] = v16;
  v48 = one-time initialization token for debugMode;

  if (v48 != -1)
  {
    swift_once();
  }

  v8 = &static DebugConfig.debugMode;
  swift_beginAccess();
  v49 = static DebugConfig.debugMode;

  v50 = specialized Set.contains(_:)(3, v49);

  if (v50)
  {
    goto LABEL_43;
  }

  v51 = static DebugConfig.debugMode;

  v52 = specialized Set.contains(_:)(6, v51);

  if (v52 & 1) != 0 || (v53 = static DebugConfig.debugMode, , v54 = specialized Set.contains(_:)(1, v53), , (v54))
  {
LABEL_43:
    v55 = v296._rawValue;
    v56 = createDotText(representing:)(v33);
    v296._rawValue = v55;
    if (v55)
    {

      goto LABEL_45;
    }

    v280 = v56;
    v286 = v57;
  }

  else
  {
    v280 = 0;
    v286 = 0xE000000000000000;
  }

  v299 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(&outlined read-only object #0 of SGREMaterialSource.init(graph:configuration:));
  v20 = *(v33 + v287._rawValue);
  if (!(v20 >> 62))
  {
    v60 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_50;
  }

LABEL_93:
  v60 = __CocoaSet.count.getter();
LABEL_50:
  v297 = v7;
  v298._rawValue = v16;

  if (!v60)
  {
LABEL_60:

    v20 = v295;
    SGGraph.collapseConstantAndPassthroughNodes()();
    if (v65)
    {
      v296._rawValue = v65;

      goto LABEL_63;
    }

    SGGraph.removeUnconnectedNodesAndEdges()();
    v7 = v297;
    v8 = &static DebugConfig.debugMode;
    if (!v85)
    {
      v308 = MEMORY[0x277D84F90];
      v86 = *(v20 + OBJC_IVAR___SGGraph_resultsNode);
      MEMORY[0x28223BE20](v84);
      *(&v269 - 2) = &v308;
      v88 = v87;
      specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(v88, 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #3 in SGREMaterialSource.init(graph:configuration:));

      SGGraph.replaceDeprecatedAndRedundantNodes()();
      if (!v3)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    v296._rawValue = v85;

    goto LABEL_82;
  }

  v61 = 0;
  v7 = v20 & 0xC000000000000001;
  while (1)
  {
    if (v7)
    {
      v62 = MEMORY[0x266772030](v61, v20);
    }

    else
    {
      if (v61 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v62 = *(v20 + 8 * v61 + 32);
    }

    v63 = v62;
    v8 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v305 = v62;
    v64 = v296._rawValue;
    closure #2 in SGREMaterialSource.init(graph:configuration:)(&v305, v299, v295);
    v296._rawValue = v64;
    if (v64)
    {
      break;
    }

    ++v61;
    if (v8 == v60)
    {
      goto LABEL_60;
    }
  }

LABEL_63:
  v58 = 0;
  v59 = 0;
LABEL_64:
  v7 = v297;
  v8 = &static DebugConfig.debugMode;
LABEL_65:
  v66 = *v8;

  v67 = specialized Set.contains(_:)(3, v66);

  if (v67 & 1) != 0 || (v68 = *v8, , v69 = specialized Set.contains(_:)(6, v68), , (v69))
  {
    v70 = v295;
    v71 = createDotText(representing:)(v295);
    v72 = *(v70 + OBJC_IVAR___SGGraph_name + 8);
    v309 = *(v70 + OBJC_IVAR___SGGraph_name);
    v310 = v72;
    v73 = v71;
    v75 = v74;

    MEMORY[0x266771550](0x735F524F5252455FLL, 0xED0000656372756FLL);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v73, v75, v309, v310, 7630692, 0xE300000000000000);
  }

  type metadata accessor for SGError();
  v76 = v296._rawValue;
  v77 = v296._rawValue;
  SGError.__allocating_init(_:)(v76);
  swift_willThrow();

  v78 = v294;
  v79 = *(v78 + v7);

  if (v58)
  {
    v80 = *(v78 + OBJC_IVAR___SGREMaterialSource_textures);
  }

  if (v59)
  {
    (*(v289 + 8))(v78 + OBJC_IVAR___SGREMaterialSource_edgeDigest, v288);
  }

  v81 = *((*MEMORY[0x277D85000] & *v78) + 0x30);
  v82 = *((*MEMORY[0x277D85000] & *v78) + 0x34);
  swift_deallocPartialClassInstance();
  return v78;
}

void closure #2 in SGREMaterialSource.init(graph:configuration:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  if (specialized Set.contains(_:)(*(v5 + v6), a2))
  {
    _StringGuts.grow(_:)(30);

    v26 = 0xD00000000000001CLL;
    v27 = 0x8000000265F2FFC0;
    v28 = 0x8000000265F2FFC0;
    v7 = *(v5 + v6);
    v8 = SGDataType.stringValue.getter();
    MEMORY[0x266771550](v8);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000265F2FFC0, &v26);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_265D7D000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266773120](v13, -1, -1);
      MEMORY[0x266773120](v12, -1, -1);
    }

    else
    {
    }

    v15 = *(a3 + OBJC_IVAR___SGGraph_argumentsNode);
    v16 = MEMORY[0x266771450](*(v5 + OBJC_IVAR___SGInput_name), *(v5 + OBJC_IVAR___SGInput_name + 8));
    v17 = [v15 outputNamed_];

    if (v17)
    {
      v18 = SGOutput.edges.getter();
      if (v18 >> 62)
      {
        v25 = __CocoaSet.count.getter();

        if (!v25)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v19)
        {
LABEL_11:

          return;
        }
      }

      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v26 = 0xD00000000000001CLL;
      v27 = v28;
      v20 = *(v5 + v6);
      v21 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v21);

      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2FFE0);
      v22 = v26;
      v23 = v27;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      *(v24 + 16) = 7;
      swift_willThrow();
      goto LABEL_11;
    }
  }
}

uint64_t closure #3 in SGREMaterialSource.init(graph:configuration:)(uint64_t a1, uint64_t a2, char **a3)
{
  v3 = (a1 + OBJC_IVAR___SGNode_data);
  if (*(a1 + OBJC_IVAR___SGNode_data + 80) <= 0x3Fu)
  {
    v4 = v3[5];
    if (v4 != 1 && v4 != 3)
    {
      v7 = *v3;
      v6 = v3[1];
      if (v4 == 2)
      {
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = v6;
        *(v8 + 16) = 0;
        swift_willThrow();
      }

      v10 = a1;
      v11 = *a3;
      v12 = v3[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        v15 = a3;
      }

      else
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        v15 = a3;
        v11 = v47;
        *a3 = v47;
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v48 = v15;
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
        a1 = v10;
        *v48 = v11;
      }

      else
      {
        a1 = v10;
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v7;
      *(v18 + 5) = v6;
    }
  }

  v19 = *(a1 + OBJC_IVAR___SGNode_inputs);
  v51 = MEMORY[0x277D84F90];
  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
LABEL_48:
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v52 = MEMORY[0x277D84F90];
  while (v21 != v22)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x266772030](v22, v19);
    }

    else
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_45;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    ++v22;
    if (Strong)
    {
      MEMORY[0x266771770]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v51;
      v22 = v25;
    }
  }

  v28 = v52;
  if (v52 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    v28 = v52;
    if (v29)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_28:
      v30 = 0;
      v49 = v28 & 0xFFFFFFFFFFFFFF8;
      v50 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v50)
        {
          v31 = MEMORY[0x266772030](v30, v28);
        }

        else
        {
          if (v30 >= *(v49 + 16))
          {
            goto LABEL_47;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v19 = v31;
        v20 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_46;
        }

        v32 = *(v31 + OBJC_IVAR___SGEdge_from);
        v33 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v34 = *(v32 + v33);
        v35 = v34 - 32;
        if (v34 - 32) <= 0x18 && ((0x1F680DBu >> v35))
        {
          v34 = qword_265F22C60[v35];
        }

        v36 = *(v19 + OBJC_IVAR___SGEdge_to);
        v37 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v38 = *(v36 + v37);
        v39 = v38 - 32;
        if (v38 - 32) <= 0x18 && ((0x1F680DBu >> v39))
        {
          v38 = qword_265F22C60[v39];
        }

        specialized SGDataType.materialXDataType.getter(v34);

        specialized SGDataType.materialXDataType.getter(v38);
        if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
        {

          _StringGuts.grow(_:)(18);
          v40 = SGDataType.stringValue.getter();
          v42 = v41;

          MEMORY[0x266771550](10272, 0xE200000000000000);
          v43 = MaterialXDataType.description.getter();
          MEMORY[0x266771550](v43);

          MEMORY[0x266771550](0x203D212029, 0xE500000000000000);
          v44 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v44);

          MEMORY[0x266771550](10272, 0xE200000000000000);
          v45 = MaterialXDataType.description.getter();
          MEMORY[0x266771550](v45);

          MEMORY[0x266771550](41, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v46 = v40;
          *(v46 + 8) = v42;
          *(v46 + 16) = 5;
          swift_willThrow();
        }

        ++v30;
        v28 = v52;
        if (v20 == v29)
        {
        }
      }
    }
  }
}