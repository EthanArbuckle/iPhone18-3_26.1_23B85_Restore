uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.NamedCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialXDataType.Kind.SetCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXDataType.Kind.SetCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.SetCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterialXDataType.Kind.encode(to:)(void *a1, uint64_t a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();
  v17 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17)
  {
    v26 = 1;
    lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v18 = v22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v6, v18);
  }

  else
  {
    v25 = 0;
    lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v15, v11);
}

void *protocol witness for Decodable.init(from:) in conformance MaterialXDataType.Kind@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized MaterialXDataType.Kind.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t MaterialXDataType.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *MaterialXDataType.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = 0;
  return v2;
}

void *MaterialXDataType.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = a3;
  return v3;
}

uint64_t MaterialXDataType.isEqual(to:)()
{
  v1 = *v0;
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 24);
  if (!v0[3])
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v0[3], v3);
  result = v4;
  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (v0[4] == *(result + 32) && v0[5] == *(result + 40))
  {
    return 1;
  }

  v7 = v0[4];

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t MaterialXDataType.description.getter()
{
  if (v0[3])
  {
    v1 = 0x7465733A786C746DLL;
  }

  else
  {
    v1 = 0x6D616E3A786C746DLL;
  }

  v3 = v1;
  MEMORY[0x266771550](v0[4], v0[5]);
  MEMORY[0x266771550](41, 0xE100000000000000);
  return v3;
}

uint64_t MaterialXDataType.debugDescription.getter()
{
  if (v0[3])
  {
    _StringGuts.grow(_:)(16);

    v4 = 0x7465733A786C746DLL;
    MEMORY[0x266771550](v0[4], v0[5]);
    MEMORY[0x266771550](23337, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
    v1 = BidirectionalCollection<>.joined(separator:)();
    MEMORY[0x266771550](v1);

    v2 = 93;
  }

  else
  {
    v4 = 0x6D616E3A786C746DLL;
    MEMORY[0x266771550](v0[4], v0[5]);
    v2 = 41;
  }

  MEMORY[0x266771550](v2, 0xE100000000000000);
  return v4;
}

uint64_t MaterialXDataType.asMetalDataType.getter()
{
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for int32 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.int32;
LABEL_91:
    v1 = *v0;
  }

  if (one-time initialization token for integer2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_10:
    if (one-time initialization token for int2 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.int2;
    goto LABEL_91;
  }

  if (one-time initialization token for integer3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_16:
    if (one-time initialization token for int3 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.int3;
    goto LABEL_91;
  }

  if (one-time initialization token for integer4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for int4 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.int4;
    goto LABEL_91;
  }

  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for BOOL != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.BOOL;
    goto LABEL_91;
  }

  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for float != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float;
    goto LABEL_91;
  }

  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_40:
    if (one-time initialization token for float2 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float2;
    goto LABEL_91;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_46:
    if (one-time initialization token for float3 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float3;
    goto LABEL_91;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_52;
  }

  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for half != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.half;
    goto LABEL_91;
  }

  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for half2 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.half2;
    goto LABEL_91;
  }

  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for half3 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.half3;
    goto LABEL_91;
  }

  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for half4 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.half4;
    goto LABEL_91;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for color3 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.color3;
    goto LABEL_91;
  }

  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for color4 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.color4;
    goto LABEL_91;
  }

  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_40;
  }

  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_46;
  }

  if (one-time initialization token for vector4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_52:
    if (one-time initialization token for float4 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float4;
    goto LABEL_91;
  }

  if (one-time initialization token for matrix22 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for float2x2 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float2x2;
    goto LABEL_91;
  }

  if (one-time initialization token for matrix33 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for float3x3 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float3x3;
    goto LABEL_91;
  }

  if (one-time initialization token for matrix44 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    if (one-time initialization token for float4x4 != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.float4x4;
    goto LABEL_91;
  }

  if (one-time initialization token for uAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_122:
    if (one-time initialization token for s_address != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.s_address;
    goto LABEL_91;
  }

  if (one-time initialization token for vAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_128;
  }

  if (one-time initialization token for wrapS != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_122;
  }

  if (one-time initialization token for wrapT != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    goto LABEL_128;
  }

  if (one-time initialization token for filterType != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_140:
    if (one-time initialization token for filter != -1)
    {
      swift_once();
    }

    v0 = &static MetalDataType.filter;
    goto LABEL_91;
  }

  if (one-time initialization token for blurFilterType != -1)
  {
    swift_once();
  }

  if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
  {
    if (one-time initialization token for frameEndAction != -1)
    {
      swift_once();
    }

    if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
    {
      if (one-time initialization token for space != -1)
      {
        swift_once();
      }

      if (MaterialXDataType.isEqual(to:)())
      {
        goto LABEL_156;
      }

      if (one-time initialization token for normalMapSpace != -1)
      {
        swift_once();
      }

      if (MaterialXDataType.isEqual(to:)())
      {
LABEL_156:
        if (one-time initialization token for space != -1)
        {
          swift_once();
        }

        v0 = &static MetalDataType.MaterialX.space;
        goto LABEL_91;
      }

      if (one-time initialization token for lumacoeffs != -1)
      {
        swift_once();
      }

      if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
      {
        if (one-time initialization token for addressMode != -1)
        {
          swift_once();
        }

        if (MaterialXDataType.isEqual(to:)())
        {
          goto LABEL_168;
        }

        if (one-time initialization token for pixelAddressMode != -1)
        {
          swift_once();
        }

        if (MaterialXDataType.isEqual(to:)())
        {
LABEL_168:
          if (one-time initialization token for address != -1)
          {
            swift_once();
          }

          v0 = &static MetalDataType.address;
          goto LABEL_91;
        }

        if (one-time initialization token for sAddressMode != -1)
        {
          swift_once();
        }

        if (MaterialXDataType.isEqual(to:)())
        {
          goto LABEL_122;
        }

        if (one-time initialization token for tAddressMode != -1)
        {
          swift_once();
        }

        if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
        {
          if (one-time initialization token for rAddressMode != -1)
          {
            swift_once();
          }

          if (MaterialXDataType.isEqual(to:)())
          {
            goto LABEL_180;
          }

          if (one-time initialization token for u_wrap_mode != -1)
          {
            swift_once();
          }

          if (MaterialXDataType.isEqual(to:)())
          {
            goto LABEL_122;
          }

          if (one-time initialization token for v_wrap_mode != -1)
          {
            swift_once();
          }

          if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
          {
            if (one-time initialization token for w_wrap_mode != -1)
            {
              swift_once();
            }

            if (MaterialXDataType.isEqual(to:)())
            {
              goto LABEL_180;
            }

            if (one-time initialization token for u_pixel_wrap_mode != -1)
            {
              swift_once();
            }

            if (MaterialXDataType.isEqual(to:)())
            {
              goto LABEL_122;
            }

            if (one-time initialization token for v_pixel_wrap_mode != -1)
            {
              swift_once();
            }

            if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
            {
              if (one-time initialization token for w_pixel_wrap_mode != -1)
              {
                swift_once();
              }

              if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
              {
                if (one-time initialization token for filter != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  goto LABEL_140;
                }

                if (one-time initialization token for magFilter != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for mag_filter != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.mag_filter;
                  goto LABEL_91;
                }

                if (one-time initialization token for minFilter != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for min_filter != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.min_filter;
                  goto LABEL_91;
                }

                if (one-time initialization token for cubeimageFilterType != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  goto LABEL_140;
                }

                if (one-time initialization token for coord != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for coord != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.coord;
                  goto LABEL_91;
                }

                if (one-time initialization token for borderColor != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for border_color != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.border_color;
                  goto LABEL_91;
                }

                if (one-time initialization token for mipFilter != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for mip_filter != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.mip_filter;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2dhalf != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2d_half != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2d_half;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2dfloat != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2d_float != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2d_float;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2dint != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2d_int != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2d_int;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2darrayhalf != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2darray_half != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2darray_half;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2darrayfloat != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2darray_float != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2darray_float;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture2darrayint != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture2darray_int != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture2darray_int;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture3dhalf != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture3d_half != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture3d_half;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture3dfloat != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture3d_float != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture3d_float;
                  goto LABEL_91;
                }

                if (one-time initialization token for texture3dint != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texture3d_int != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texture3d_int;
                  goto LABEL_91;
                }

                if (one-time initialization token for texturecubehalf != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texturecube_half != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texturecube_half;
                  goto LABEL_91;
                }

                if (one-time initialization token for texturecubefloat != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for texturecube_float != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.texturecube_float;
                  goto LABEL_91;
                }

                if (one-time initialization token for sampler != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for sampler != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.sampler;
                  goto LABEL_91;
                }

                if (one-time initialization token for bias != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for bias != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.bias;
                  goto LABEL_91;
                }

                if (one-time initialization token for max_anisotropy != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for max_anisotropy != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.max_anisotropy;
                  goto LABEL_91;
                }

                if (one-time initialization token for level != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for level != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.level;
                  goto LABEL_91;
                }

                if (one-time initialization token for min_lod_clamp != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for min_lod_clamp != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.min_lod_clamp;
                  goto LABEL_91;
                }

                if (one-time initialization token for offset != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  goto LABEL_10;
                }

                if (one-time initialization token for offset3 != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  goto LABEL_16;
                }

                if (one-time initialization token for lod_clamp != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for lod_clamp != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.lod_clamp;
                  goto LABEL_91;
                }

                if (one-time initialization token for gradient2d != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for gradient2d != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.gradient2d;
                  goto LABEL_91;
                }

                if (one-time initialization token for gradient3d != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for gradient3d != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.gradient3d;
                  goto LABEL_91;
                }

                if (one-time initialization token for gradientcube != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for gradientcube != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.gradientcube;
                  goto LABEL_91;
                }

                if (one-time initialization token for realityKitHoverData != -1)
                {
                  swift_once();
                }

                if (MaterialXDataType.isEqual(to:)())
                {
                  if (one-time initialization token for HoverData != -1)
                  {
                    swift_once();
                  }

                  v0 = &static MetalDataType.re.HoverData;
                  goto LABEL_91;
                }

                return 0;
              }

LABEL_180:
              if (one-time initialization token for r_address != -1)
              {
                swift_once();
              }

              v0 = &static MetalDataType.r_address;
              goto LABEL_91;
            }
          }
        }

LABEL_128:
        if (one-time initialization token for t_address != -1)
        {
          swift_once();
        }

        v0 = &static MetalDataType.t_address;
        goto LABEL_91;
      }
    }
  }

  return 0;
}

uint64_t *MaterialXDataType.frameEndAction.unsafeMutableAddressor()
{
  if (one-time initialization token for frameEndAction != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.frameEndAction;
}

uint64_t *MetalDataType.MaterialX.space.unsafeMutableAddressor()
{
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  return &static MetalDataType.MaterialX.space;
}

uint64_t *MaterialXDataType.realitykit.pixelAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for pixelAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.pixelAddressMode;
}

uint64_t *MaterialXDataType.texture2dhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dhalf;
}

uint64_t *MaterialXDataType.texture2dfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dfloat;
}

uint64_t *MaterialXDataType.texture2dint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dint;
}

uint64_t *MaterialXDataType.texture2darrayhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayhalf;
}

uint64_t *MaterialXDataType.texture2darrayfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayfloat;
}

uint64_t *MaterialXDataType.texture2darrayint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayint;
}

uint64_t *MaterialXDataType.texture3dhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dhalf;
}

uint64_t *MaterialXDataType.texture3dfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dfloat;
}

uint64_t *MaterialXDataType.texture3dint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dint;
}

uint64_t *MaterialXDataType.texturecubehalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubehalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubehalf;
}

uint64_t *MaterialXDataType.texturecubefloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubefloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubefloat;
}

uint64_t *MaterialXDataType.sampler.unsafeMutableAddressor()
{
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.sampler;
}

uint64_t *MaterialXDataType.bias.unsafeMutableAddressor()
{
  if (one-time initialization token for bias != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.bias;
}

uint64_t *MaterialXDataType.max_anisotropy.unsafeMutableAddressor()
{
  if (one-time initialization token for max_anisotropy != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.max_anisotropy;
}

uint64_t *MaterialXDataType.level.unsafeMutableAddressor()
{
  if (one-time initialization token for level != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.level;
}

uint64_t *MaterialXDataType.min_lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for min_lod_clamp != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.min_lod_clamp;
}

uint64_t *MaterialXDataType.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.offset;
}

uint64_t *MaterialXDataType.offset3.unsafeMutableAddressor()
{
  if (one-time initialization token for offset3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.offset3;
}

uint64_t *MaterialXDataType.lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for lod_clamp != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lod_clamp;
}

uint64_t *MaterialXDataType.gradient2d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient2d != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradient2d;
}

uint64_t *MaterialXDataType.gradient3d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient3d != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradient3d;
}

uint64_t *MaterialXDataType.gradientcube.unsafeMutableAddressor()
{
  if (one-time initialization token for gradientcube != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradientcube;
}

uint64_t *MaterialXDataType.realityKitHoverData.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitHoverData != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realityKitHoverData;
}

uint64_t MaterialXDataType.isStructurallyEqual(to:)(uint64_t a1)
{
  if (v1 == a1)
  {
    return 1;
  }

  v2 = *(v1 + 24);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *(a1 + 24);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v6);
  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);
  v9 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v7, v8);

  return v9 & 1;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph15MaterialXTargetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = 0;
        v9 = a1 + 56;
        v10 = 1 << *(a1 + 32);
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(a1 + 56);
        v13 = (v10 + 63) >> 6;
        v14 = a2 + 56;
        v29 = a1;
        if (!v12)
        {
LABEL_27:
          v16 = v8;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v8 >= v13)
            {
              return 1;
            }

            v17 = *(v9 + 8 * v8);
            ++v16;
            if (v17)
            {
              v15 = __clz(__rbit64(v17));
              v30 = (v17 - 1) & v17;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v15 = __clz(__rbit64(v12));
          v30 = (v12 - 1) & v12;
LABEL_32:
          v18 = *(*(a1 + 48) + 8 * (v15 | (v8 << 6)));
          v19 = *(v2 + 40);
          Hasher.init(_seed:)();
          v20 = *(v18 + 16);
          v21 = *(v18 + 24);

          String.hash(into:)();
          specialized Optional<A>.hash(into:)(v31, *(v18 + 32));
          v22 = Hasher._finalize()();
          v23 = -1 << *(v2 + 32);
          v24 = v22 & ~v23;
          if (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(v2 + 48) + 8 * v24);

            v28 = specialized static MaterialXTarget.== infix(_:_:)(v27, v18);

            if (v28)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          a1 = v29;
          v12 = v30;
          if (!v30)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return specialized _NativeSet.isEqual(to:)(v6, v5);
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph0C5IndexV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v14);
    MEMORY[0x266772770](v15);
    result = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      if (v22 == v14 && v21 == v15)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t MaterialXDataType.__ivar_destroyer()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
}

void *MaterialXDataType.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t MaterialXDataType.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

double one-time initialization function for displacementshader()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F23590;
  *(v0 + 40) = 0x8000000265F302E0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.displacementshader = v0;
  return result;
}

uint64_t *MaterialXDataType.displacementshader.unsafeMutableAddressor()
{
  if (one-time initialization token for displacementshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.displacementshader;
}

uint64_t *MaterialXDataType.volumeshader.unsafeMutableAddressor()
{
  if (one-time initialization token for volumeshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.volumeshader;
}

uint64_t *MaterialXDataType.lightshader.unsafeMutableAddressor()
{
  if (one-time initialization token for lightshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lightshader;
}

double one-time initialization function for geometrymodifier()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F235D0;
  *(v0 + 40) = 0x8000000265F304F0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.geometrymodifier = v0;
  return result;
}

uint64_t *MaterialXDataType.material.unsafeMutableAddressor()
{
  if (one-time initialization token for material != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.material;
}

uint64_t *MaterialXDataType.stringarray.unsafeMutableAddressor()
{
  if (one-time initialization token for stringarray != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.stringarray;
}

double one-time initialization function for texture2darrayhalf()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F23590;
  *(v0 + 40) = 0x8000000265F30380;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayhalf = v0;
  return result;
}

double one-time initialization function for texture2darrayfloat()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F23630;
  *(v0 + 40) = 0x8000000265F30360;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayfloat = v0;
  return result;
}

double one-time initialization function for texture2darrayint()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F23640;
  *(v0 + 40) = 0x8000000265F30340;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayint = v0;
  return result;
}

double one-time initialization function for texturecubefloat()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F235D0;
  *(v0 + 40) = 0x8000000265F30320;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texturecubefloat = v0;
  return result;
}

uint64_t *MaterialXDataType.texturecubeint.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubeint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubeint;
}

__n128 one-time initialization function for unsupported(__n128 a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for MaterialXDataType();
  v6 = swift_allocObject();
  result = a1;
  *(v6 + 24) = a1;
  *(v6 + 40) = a3;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *a4 = v6;
  return result;
}

double one-time initialization function for realityKitHoverData()
{
  type metadata accessor for MaterialXDataType();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 24) = xmmword_265F23700;
  *(v0 + 40) = 0x8000000265F30300;
  *(v0 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.realityKitHoverData = v0;
  return result;
}

void *one-time initialization function for uAddressMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MaterialXDataType();
  result = swift_allocObject();
  result[4] = a3;
  result[5] = a4;
  result[2] = MEMORY[0x277D84F90];
  result[3] = a2;
  *a5 = result;
  return result;
}

uint64_t one-time initialization function for space()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x70533A3A786C746DLL, 0xEB00000000656361, &outlined read-only object #0 of one-time initialization function for space);
  static MetalDataType.MaterialX.space = result;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
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

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
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

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
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

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
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

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
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

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
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

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
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

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
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

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
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

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
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

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
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

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
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

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
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

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
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

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0gq5(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter();
      }

      v6 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v4, v5, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  return ((v6 & 1) == 0) << 32;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t specialized MaterialXDataType.__allocating_init(xmlElement:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4._countAndFlagsBits = 1701869940;
  v4._object = 0xE400000000000000;
  v5 = XMLElement.getRequiredAttribute(_:)(v4);
  if (v6)
  {
    return swift_unknownObjectRelease();
  }

  if ((*(a2 + 16))(1836412517, 0xE400000000000000, ObjectType, a2) && (v9 = v8, v10 = swift_getObjectType(), (*(v9 + 32))(v10, v9), v12 = v11, swift_unknownObjectRelease(), v12))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v13 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v14 = swift_allocObject();
    v14[1]._object = v13;
    v14[2] = v5;
    swift_unknownObjectRelease();
    result = v14;
    v14[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v15 = swift_allocObject();
    v15[1]._object = 0;
    v15[2] = v5;
    swift_unknownObjectRelease();
    result = v15;
    v15[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t specialized SGDataTypeStorage.init(materialXValue:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 24);
  if (v16)
  {
    v175 = a1;
    v176 = a2;
    MEMORY[0x28223BE20](v13);
    *(&v161 - 2) = &v175;

    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v161 - 4), v16))
    {

LABEL_4:
      *&v21 = a1;
      *&v18 = a2;
      *(&v21 + 1) = a2;
      v22 = 6;
      goto LABEL_21;
    }

    v175 = 0;
    v176 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v175 = a1;
    v176 = a2;
    MEMORY[0x266771550](0x20746F6E20736920, 0xEF20666F20656E6FLL);
    v27 = MEMORY[0x2667717B0](v16, MEMORY[0x277D837D0]);
    v29 = v28;

    MEMORY[0x266771550](v27, v29);

    v30 = v175;
    v31 = v176;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v32 = 25;
    *(v32 + 8) = v30;
    *(v32 + 16) = v31;
    goto LABEL_14;
  }

  v23 = v13;
  v24 = one-time initialization token for BOOLean;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = MaterialXDataType.isEqual(to:)();

  if (v25)
  {
    if (a1 == 1702195828 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v26 = 1;
LABEL_12:
      v22 = 0;
      LODWORD(v21) = v26;
      goto LABEL_21;
    }

    if (a1 == 0x65736C6166 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v26 = 0;
      goto LABEL_12;
    }

LABEL_227:
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v160 = 25;
    *(v160 + 8) = a1;
    *(v160 + 16) = a2;
LABEL_14:
    swift_willThrow();
  }

  v33 = one-time initialization token for integer;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = MaterialXDataType.isEqual(to:)();

  if (v34)
  {

    v35 = _ss17FixedWidthIntegerPsEyxSgSScfCs5Int32V_Tt1g5(a1, a2);
    if ((v35 & 0x100000000) == 0)
    {
      v36 = v35;

      LODWORD(v21) = v36;
      v22 = 2;
      goto LABEL_21;
    }

    goto LABEL_227;
  }

  v37 = one-time initialization token for integer2;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = MaterialXDataType.isEqual(to:)();

  if (v38)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2Vys5Int32VG_Tt1g5(a1, a2);
    v170 = v39;

    if (!v5)
    {
      v22 = 13;
      goto LABEL_42;
    }

    return result;
  }

  v40 = one-time initialization token for integer3;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = MaterialXDataType.isEqual(to:)();

  if (v41)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3Vys5Int32VG_Tt1g5(a1, a2);
    v170 = v42;

    if (!v5)
    {
      v22 = 14;
      goto LABEL_42;
    }

    return result;
  }

  v43 = one-time initialization token for integer4;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = MaterialXDataType.isEqual(to:)();

  if (v44)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4Vys5Int32VG_Tt1g5(a1, a2);
    v170 = v45;

    if (!v5)
    {
      v22 = 15;
      goto LABEL_42;
    }

    return result;
  }

  v46 = one-time initialization token for float;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = MaterialXDataType.isEqual(to:)();

  if (v47)
  {
    LODWORD(v175) = 0;
    if (specialized String.withCString<A>(_:)(a1, a2))
    {

      LODWORD(v21) = v175;
      v22 = 5;
      goto LABEL_21;
    }

    goto LABEL_227;
  }

  v48 = one-time initialization token for color3;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = MaterialXDataType.isEqual(to:)();

  if (v49)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(a1, a2);
    v170 = v50;

    if (!v5)
    {
      v22 = 8;
      goto LABEL_42;
    }

    return result;
  }

  v51 = one-time initialization token for color4;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = MaterialXDataType.isEqual(to:)();

  if (v52)
  {
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(a1, a2);
    v170 = v53;

    if (v5)
    {
      return result;
    }

    goto LABEL_57;
  }

  v54 = one-time initialization token for vector2;

  if (v54 != -1)
  {
    swift_once();
  }

  v55 = MaterialXDataType.isEqual(to:)();

  if (v55)
  {
LABEL_63:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2VySfG_Tt1g5(a1, a2);
    if (!v5)
    {
      v170 = v58;

      v21 = v170;
      v22 = 7;
      goto LABEL_21;
    }
  }

  v56 = one-time initialization token for float2;

  if (v56 != -1)
  {
    goto LABEL_214;
  }

LABEL_62:
  v57 = MaterialXDataType.isEqual(to:)();

  if (v57)
  {
    goto LABEL_63;
  }

  v59 = one-time initialization token for vector3;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = MaterialXDataType.isEqual(to:)();

  if (v60)
  {
    goto LABEL_71;
  }

  v61 = one-time initialization token for float3;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = MaterialXDataType.isEqual(to:)();

  if (v62)
  {
LABEL_71:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(a1, a2);
    if (!v5)
    {
      v170 = v63;

      v21 = v170;
      v22 = 8;
      goto LABEL_21;
    }
  }

  v64 = one-time initialization token for vector4;

  if (v64 != -1)
  {
    swift_once();
  }

  v65 = MaterialXDataType.isEqual(to:)();

  if (v65)
  {
    goto LABEL_79;
  }

  v66 = one-time initialization token for float4;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = MaterialXDataType.isEqual(to:)();

  if (v67)
  {
LABEL_79:
    _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(a1, a2);
    v170 = v68;
    if (v5)
    {
    }

LABEL_57:
    v22 = 9;
    goto LABEL_42;
  }

  v69 = one-time initialization token for matrix22;

  if (v69 != -1)
  {
LABEL_229:
    swift_once();
  }

  v70 = MaterialXDataType.isEqual(to:)();

  if (v70)
  {
    v175 = a1;
    v176 = a2;
    v173 = 44;
    v174 = 0xE100000000000000;
    v166 = lazy protocol witness table accessor for type String and conformance String();
    v164 = StringProtocol.components<A>(separatedBy:)();
    *&v169 = *(v164 + 16);
    if (v169)
    {
      v173 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169, 0);
      *&v170 = v173;
      v165 = (v11 + 8);
      v71 = (v164 + 40);
      do
      {
        *&v168 = v71;
        v72 = *v71;
        v175 = *(v71 - 1);
        v176 = v72;

        static CharacterSet.whitespacesAndNewlines.getter();
        v73 = StringProtocol.trimmingCharacters(in:)();
        *&v167 = v74;
        (*v165)(v15, v23);

        v75 = v170;
        v173 = v170;
        v11 = *(v170 + 16);
        v76 = *(v170 + 24);
        v77 = v11 + 1;
        if (v11 >= v76 >> 1)
        {
          v163 = v73;
          *&v170 = v11 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v11 + 1, 1);
          v77 = v170;
          v73 = v163;
          v75 = v173;
        }

        *&v170 = v75;
        *(v75 + 16) = v77;
        v78 = v75 + 16 * v11;
        v79 = v167;
        *(v78 + 32) = v73;
        *(v78 + 40) = v79;
        v71 = (v168 + 16);
        *&v169 = v169 - 1;
      }

      while (v169);
    }

    else
    {

      *&v170 = MEMORY[0x277D84F90];
    }

    *&v167 = *(v170 + 16);
    if (v167)
    {
      v173 = MEMORY[0x277D84F90];
      v101 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
      *&v169 = 0;
      v102 = v173;
      v15 = (v170 + 40);
      while (1)
      {
        if (v169 >= *(v170 + 16))
        {
          __break(1u);
          goto LABEL_229;
        }

        *&v168 = &v161;
        v103 = *(v15 - 1);
        v104 = *v15;
        v172 = 0;
        MEMORY[0x28223BE20](v101);
        *(&v161 - 2) = &v172;
        if ((v104 & 0x1000000000000000) == 0)
        {
          if ((v104 & 0x2000000000000000) != 0)
          {
            v175 = v103;
            v176 = v104 & 0xFFFFFFFFFFFFFFLL;
            if (v103 <= 0x20u && ((1 << v103) & 0x100003E01) != 0)
            {
              goto LABEL_165;
            }

            goto LABEL_123;
          }

          if ((v103 & 0x1000000000000000) != 0)
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v106 = v105 > 0x20;
            v107 = (1 << v105) & 0x100003E01;
            if (!v106 && v107 != 0)
            {
              goto LABEL_165;
            }

LABEL_123:

            v110 = _swift_stdlib_strtof_clocale();
            if (!v110 || *v110)
            {
              goto LABEL_166;
            }

            goto LABEL_125;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
        if ((v171 & 1) == 0)
        {
          goto LABEL_166;
        }

LABEL_125:

        v111 = v172;
        v173 = v102;
        v23 = v102[2];
        v112 = v102[3];
        v11 = v23 + 1;
        if (v23 >= v112 >> 1)
        {
          v101 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v23 + 1, 1);
          v102 = v173;
        }

        v113 = v169 + 1;
        v102[2] = v11;
        *(v102 + v23 + 8) = v111;
        v15 += 2;
        *&v169 = v113;
        if (v167 == v113)
        {

          v114 = v102[2];
          if (v114)
          {
            goto LABEL_132;
          }

LABEL_213:
          __break(1u);
LABEL_214:
          swift_once();
          goto LABEL_62;
        }
      }
    }

    v102 = MEMORY[0x277D84F90];
    v114 = *(MEMORY[0x277D84F90] + 16);
    if (!v114)
    {
      goto LABEL_213;
    }

LABEL_132:
    if (v114 == 1)
    {
      __break(1u);
    }

    else if (v114 >= 3)
    {
      if (v114 != 3)
      {
        *&v153 = v102[4];
        v170 = v153;
        *&v153 = v102[5];
        v169 = v153;

        v18 = v169;
        *&v21 = v170;
        *(&v21 + 1) = v169;
        v22 = 16;
        goto LABEL_21;
      }

LABEL_236:
      __break(1u);
LABEL_237:
      swift_once();
LABEL_137:
      v116 = MaterialXDataType.isEqual(to:)();

      if (v116)
      {

        v22 = 4;
        goto LABEL_219;
      }

      v133 = one-time initialization token for half2;

      if (v133 == -1)
      {
LABEL_173:
        v134 = MaterialXDataType.isEqual(to:)();

        if (v134)
        {

          v22 = 10;
        }

        else
        {
          v151 = one-time initialization token for half3;

          if (v151 != -1)
          {
LABEL_246:
            swift_once();
          }

          v152 = MaterialXDataType.isEqual(to:)();

          if (v152)
          {

            v22 = 11;
          }

          else
          {
            v154 = one-time initialization token for half4;

            if (v154 != -1)
            {
              swift_once();
            }

            v155 = MaterialXDataType.isEqual(to:)();

            if ((v155 & 1) == 0)
            {
              v156 = one-time initialization token for filename;

              if (v156 != -1)
              {
                swift_once();
              }

              v157 = MaterialXDataType.isEqual(to:)();

              if (v157)
              {
                goto LABEL_226;
              }

              v158 = one-time initialization token for string;

              if (v158 != -1)
              {
                swift_once();
              }

              v159 = MaterialXDataType.isEqual(to:)();

              if (v159)
              {
LABEL_226:

                goto LABEL_4;
              }

              goto LABEL_227;
            }

            v22 = 12;
          }
        }

LABEL_219:
        v21 = 0uLL;
        goto LABEL_21;
      }

LABEL_241:
      swift_once();
      goto LABEL_173;
    }

    __break(1u);
    goto LABEL_236;
  }

  v80 = one-time initialization token for matrix33;

  if (v80 != -1)
  {
    goto LABEL_231;
  }

LABEL_90:
  v81 = MaterialXDataType.isEqual(to:)();

  if ((v81 & 1) == 0)
  {
    v91 = one-time initialization token for matrix44;

    if (v91 != -1)
    {
      goto LABEL_233;
    }

    while (1)
    {
      v92 = MaterialXDataType.isEqual(to:)();

      if ((v92 & 1) == 0)
      {
        v115 = one-time initialization token for half;

        if (v115 != -1)
        {
          goto LABEL_237;
        }

        goto LABEL_137;
      }

      v175 = a1;
      v176 = a2;
      v173 = 44;
      v174 = 0xE100000000000000;
      v164 = lazy protocol witness table accessor for type String and conformance String();
      v162 = StringProtocol.components<A>(separatedBy:)();
      *&v168 = *(v162 + 16);
      if (v168)
      {
        v173 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168, 0);
        *&v169 = v173;
        v163 = (v11 + 8);
        *&v170 = v162 + 40;
        do
        {
          v93 = *v170;
          v175 = *(v170 - 8);
          v176 = v93;

          static CharacterSet.whitespacesAndNewlines.getter();
          v94 = StringProtocol.trimmingCharacters(in:)();
          v165 = v95;
          v166 = v94;
          (*v163)(v15, v23);

          v173 = v169;
          v11 = *(v169 + 16);
          v96 = *(v169 + 24);
          *&v167 = v11 + 1;
          if (v11 >= v96 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v167, 1);
            *&v169 = v173;
          }

          v97 = v169;
          v98 = v166;
          *(v169 + 16) = v167;
          v99 = v97 + 16 * v11;
          v100 = v165;
          *(v99 + 32) = v98;
          *(v99 + 40) = v100;
          *&v170 = v170 + 16;
          *&v168 = v168 - 1;
        }

        while (v168);
      }

      else
      {

        *&v169 = MEMORY[0x277D84F90];
      }

      *&v167 = *(v169 + 16);
      if (!v167)
      {

        v136 = MEMORY[0x277D84F90];
LABEL_204:
        a2 = *(v136 + 16);
        if (a2 < 4)
        {
          __break(1u);
        }

        else
        {
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v136 + 32, 0, 9uLL);
          v170 = v147;
          if (a2 >= 8)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v136 + 32, 4, 0x11uLL);
            v169 = v148;
            if (a2 >= 0xC)
            {
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v136 + 32, 8, 0x19uLL);
              v168 = v149;
              if (a2 >= 0x10)
              {
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v136 + 32, 12, 0x21uLL);
                v167 = v150;

                v20 = v167;
                v19 = v168;
                v22 = 18;
                v18 = v169;
                v21 = v170;
                goto LABEL_21;
              }

              goto LABEL_245;
            }

LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }
        }

        __break(1u);
        goto LABEL_244;
      }

      v173 = MEMORY[0x277D84F90];
      v135 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
      *&v170 = 0;
      v136 = v173;
      v15 = (v169 + 40);
      while (v170 < *(v169 + 16))
      {
        *&v168 = &v161;
        v137 = *(v15 - 1);
        v138 = *v15;
        v172 = 0;
        MEMORY[0x28223BE20](v135);
        *(&v161 - 2) = &v172;
        if ((v138 & 0x1000000000000000) == 0)
        {
          if ((v138 & 0x2000000000000000) != 0)
          {
            v175 = v137;
            v176 = v138 & 0xFFFFFFFFFFFFFFLL;
            if (v137 <= 0x20u && ((1 << v137) & 0x100003E01) != 0)
            {
LABEL_201:

LABEL_166:

              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v129 = 25;
              *(v129 + 8) = a1;
              *(v129 + 16) = a2;
              swift_willThrow();
            }

            goto LABEL_193;
          }

          if ((v137 & 0x1000000000000000) != 0)
          {
            v139 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v106 = v139 > 0x20;
            v140 = (1 << v139) & 0x100003E01;
            if (!v106 && v140 != 0)
            {
              goto LABEL_201;
            }

LABEL_193:

            v143 = _swift_stdlib_strtof_clocale();
            if (!v143 || *v143)
            {
              goto LABEL_166;
            }

            goto LABEL_195;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
        if ((v171 & 1) == 0)
        {
          goto LABEL_166;
        }

LABEL_195:

        v144 = v172;
        v173 = v136;
        v23 = *(v136 + 16);
        v145 = *(v136 + 24);
        v11 = v23 + 1;
        if (v23 >= v145 >> 1)
        {
          v135 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v23 + 1, 1);
          v136 = v173;
        }

        v146 = v170 + 1;
        *(v136 + 16) = v11;
        *(v136 + 4 * v23 + 32) = v144;
        v15 += 2;
        *&v170 = v146;
        if (v167 == v146)
        {

          goto LABEL_204;
        }
      }

      __break(1u);
LABEL_233:
      swift_once();
    }
  }

  v175 = a1;
  v176 = a2;
  v173 = 44;
  v174 = 0xE100000000000000;
  v166 = lazy protocol witness table accessor for type String and conformance String();
  v164 = StringProtocol.components<A>(separatedBy:)();
  *&v169 = *(v164 + 16);
  if (v169)
  {
    v173 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169, 0);
    *&v170 = v173;
    v165 = (v11 + 8);
    v82 = (v164 + 40);
    do
    {
      *&v168 = v82;
      v83 = *v82;
      v175 = *(v82 - 1);
      v176 = v83;

      static CharacterSet.whitespacesAndNewlines.getter();
      v84 = StringProtocol.trimmingCharacters(in:)();
      *&v167 = v85;
      (*v165)(v15, v23);

      v86 = v170;
      v173 = v170;
      v11 = *(v170 + 16);
      v87 = *(v170 + 24);
      v88 = v11 + 1;
      if (v11 >= v87 >> 1)
      {
        v163 = v84;
        *&v170 = v11 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v11 + 1, 1);
        v88 = v170;
        v84 = v163;
        v86 = v173;
      }

      *&v170 = v86;
      *(v86 + 16) = v88;
      v89 = v86 + 16 * v11;
      v90 = v167;
      *(v89 + 32) = v84;
      *(v89 + 40) = v90;
      v82 = (v168 + 16);
      *&v169 = v169 - 1;
    }

    while (v169);
  }

  else
  {

    *&v170 = MEMORY[0x277D84F90];
  }

  *&v167 = *(v170 + 16);
  if (v167)
  {
    v173 = MEMORY[0x277D84F90];
    v117 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
    *&v169 = 0;
    v118 = v173;
    v15 = (v170 + 40);
    while (1)
    {
      if (v169 >= *(v170 + 16))
      {
        __break(1u);
LABEL_231:
        swift_once();
        goto LABEL_90;
      }

      *&v168 = &v161;
      v119 = *(v15 - 1);
      v120 = *v15;
      v172 = 0;
      MEMORY[0x28223BE20](v117);
      *(&v161 - 2) = &v172;
      if ((v120 & 0x1000000000000000) == 0)
      {
        if ((v120 & 0x2000000000000000) != 0)
        {
          v175 = v119;
          v176 = v120 & 0xFFFFFFFFFFFFFFLL;
          if (v119 <= 0x20u && ((1 << v119) & 0x100003E01) != 0)
          {
LABEL_165:

            goto LABEL_166;
          }

          goto LABEL_157;
        }

        if ((v119 & 0x1000000000000000) != 0)
        {
          v121 = *((v120 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v106 = v121 > 0x20;
          v122 = (1 << v121) & 0x100003E01;
          if (!v106 && v122 != 0)
          {
            goto LABEL_165;
          }

LABEL_157:

          v125 = _swift_stdlib_strtof_clocale();
          if (!v125 || *v125)
          {
            goto LABEL_166;
          }

          goto LABEL_159;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
      if ((v171 & 1) == 0)
      {
        goto LABEL_166;
      }

LABEL_159:

      v126 = v172;
      v173 = v118;
      v23 = *(v118 + 16);
      v127 = *(v118 + 24);
      v11 = v23 + 1;
      if (v23 >= v127 >> 1)
      {
        v117 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v23 + 1, 1);
        v118 = v173;
      }

      v128 = v169 + 1;
      *(v118 + 16) = v11;
      *(v118 + 4 * v23 + 32) = v126;
      v15 += 2;
      *&v169 = v128;
      if (v167 == v128)
      {

        goto LABEL_168;
      }
    }
  }

  v118 = MEMORY[0x277D84F90];
LABEL_168:
  a2 = *(v118 + 16);
  if (a2 < 3)
  {
    __break(1u);
    goto LABEL_239;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v118 + 32, 0, 7uLL);
  v170 = v130;
  if (a2 < 6)
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v118 + 32, 3, 0xDuLL);
  v169 = v131;
  if (a2 < 9)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(v118 + 32, 6, 0x13uLL);
  v168 = v132;

  v19 = v168;
  v18 = v169;
  v22 = 17;
LABEL_42:
  v21 = v170;
LABEL_21:
  *a4 = v21;
  *(a4 + 16) = v18;
  *(a4 + 32) = v19;
  *(a4 + 48) = v20;
  *(a4 + 64) = v22;
  return result;
}

void specialized closure #1 in closure #7 in createGraph(_:nodeDefStore:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v201 = a8;
  v13 = *a1;
  v14 = a1[1];
  swift_getObjectType();
  v15._countAndFlagsBits = 1701667182;
  v15._object = 0xE400000000000000;
  v16 = XMLElement.getRequiredAttribute(_:)(v15);
  if (v17)
  {
    return;
  }

  v121 = v14;
  specialized ShaderGraphNode.output(labeled:)(&v125, v16._countAndFlagsBits, v16._object, *(a2 + 1));
  if (!v126)
  {
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    MEMORY[0x266771550](v16._countAndFlagsBits, v16._object);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v44 = a2[1];
    v122 = *a2;
    *v123 = v44;
    *&v123[9] = *(a2 + 25);
    _print_unlocked<A, B>(_:_:)();

    *&v122 = 0;
    *(&v122 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v124 = v122;
    MEMORY[0x266771550](0x6D614E7475706E69, 0xEB00000000203A65);
    MEMORY[0x266771550](v16._countAndFlagsBits, v16._object);

    MEMORY[0x266771550](0x203A65646F6E20, 0xE700000000000000);
    v45 = a2[1];
    v122 = *a2;
    *v123 = v45;
    *&v123[9] = *(a2 + 25);
    _print_unlocked<A, B>(_:_:)();
    v46 = v124;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v47 = 11;
    *(v47 + 8) = v46;
    swift_willThrow();
    return;
  }

  v161 = v125;
  v162 = v126;
  v163 = v127;
  v164 = v128;
  v165 = v129;
  v18 = v13;
  XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
  v120 = a3;
  v119 = a4;
  if (v19 || (XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65), v20))
  {

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
  v118 = a5;
  object = v16._object;
  if (v23)
  {

    XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
    if (v24)
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, logger);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v122 = v29;
        *v28 = 136315138;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, v16._object, &v122);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x266773120](v29, -1, -1);
        MEMORY[0x266773120](v28, -1, -1);
      }
    }
  }

  if ((v21 & 1) == 0)
  {
    XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
    if (v30 || (XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65), v31))
    {
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, logger);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v122 = v85;
        *v84 = 136315138;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, v16._object, &v122);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x266773120](v85, -1, -1);
        MEMORY[0x266773120](v84, -1, -1);
      }
    }
  }

  countAndFlagsBits = &v161;
  v33 = XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65);
  if (!v34)
  {
    v48 = XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
    if (v49)
    {
      v50 = v48;
      v51 = v49;

      v52 = *v119;
      if (!*(*v119 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51), (v54 & 1) == 0))
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v75 = 9;
        *(v75 + 8) = v50;
        *(v75 + 16) = v51;
        swift_willThrow();

        v175 = v163;
        outlined destroy of String(&v175);
        return;
      }

      v55 = v53;

      v56 = *(*(v52 + 56) + 8 * v55);
      v57 = XMLNode.subscript.getter(0x74757074756FLL, 0xE600000000000000);
      if (v58)
      {
        object = v57;
      }

      else
      {
        object = 7632239;
      }

      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
      }

      if (v56 == -7)
      {
LABEL_53:
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v98 = 14;
        *(v98 + 8) = object;
        *(v98 + 16) = v59;
        swift_willThrow();

        v174 = v163;
        v43 = &v174;
        goto LABEL_20;
      }

      if ((v56 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v60 = *(v120 + 64);
        if (v56 < *(v60 + 16))
        {
          v61 = v60 + 48 * v56;
          v63 = *(v61 + 32);
          v62 = *(v61 + 40);
          v65 = *(v61 + 48);
          v64 = *(v61 + 56);
          v66 = *(v61 + 64);
          v67 = *(v61 + 72);
          specialized ShaderGraphNode.output(labeled:)(&v135, object, v59, v65);
          v68 = v136;
          if (v136)
          {
            v69 = v141;
            v70 = v140;
            v71 = v138;
            v72 = v139;
            v73 = v137;
            v74 = v135;

            v178[0] = v73;
            v178[1] = v71;
            v173 = v163;
            v188[0] = v74;
            v188[1] = v68;
            v188[2] = v73;
            v188[3] = v71;
            v188[4] = v72;
            v189 = v70 & 1;
            v190 = v69;
            v191[0] = v161;
            v191[1] = v162;
            v192 = v163;
            v193 = v164;
            v194 = BYTE8(v164) & 1;
            v195 = v165;

            outlined init with copy of String(v178, &v122);

            outlined init with copy of String(&v173, &v122);
            UserGraph.connect(_:to:)(v188, v191);

            outlined destroy of String(&v173);

            v43 = v178;
            goto LABEL_20;
          }

          *&v124 = 0;
          *(&v124 + 1) = 0xE000000000000000;
          outlined copy of NodePersonality(v63);

          MEMORY[0x266771550](object, v59);
          MEMORY[0x266771550](32, 0xE100000000000000);
          *&v122 = v63;
          *(&v122 + 1) = v62;
          *v123 = v65;
          *&v123[8] = v64;
          *&v123[16] = v66;
          v123[24] = v67;
          _print_unlocked<A, B>(_:_:)();

          outlined consume of NodePersonality(v63);

          goto LABEL_53;
        }
      }

      __break(1u);
    }

    else
    {
      v76 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
      if (v77)
      {
        v78 = v77;
        v79 = v76;

        v80 = swift_unknownObjectRetain();
        v59 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v80, v121);

        specialized SGDataTypeStorage.init(materialXValue:type:)(v79, v78, v59, v142);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        object = swift_allocObject();
        *(object + 16) = xmmword_265F1F670;
        *(object + 32) = 7632239;
        countAndFlagsBits = (object + 32);
        *(object + 40) = 0xE300000000000000;
        *(object + 48) = v59;
        v99 = swift_allocObject();
        v100 = v142[3];
        *(v99 + 48) = v142[2];
        *(v99 + 64) = v100;
        *(v99 + 80) = v143;
        v101 = v142[1];
        *(v99 + 16) = v142[0];
        *(v99 + 32) = v101;
        *(v99 + 88) = v59;
        swift_retain_n();
        outlined init with copy of SGDataTypeStorage(v142, &v122);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], object, v99, &v144);

        swift_setDeallocating();
        v102 = *(object + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v182 = v145;
        if (*(v145 + 16))
        {
          v103 = *(v145 + 40);
          v104 = *(v145 + 48);
          v105 = *(v145 + 56);
          v106 = *(v145 + 64);
          v107 = *(v145 + 72);
          v108 = *(v145 + 80);
          v196[0] = *(v145 + 32);
          v196[1] = v103;
          v196[2] = v104;
          v196[3] = v105;
          v196[4] = v106;
          v197 = v107;
          v198 = v108;

          UserGraph.connect(_:to:)(v196, &v161);

          v172 = v163;
          outlined destroy of String(&v172);

          outlined destroy of SGDataTypeStorage(v142);
          v181 = v144;
          outlined destroy of NodePersonality(&v181);
          v180 = *(&v144 + 1);
          outlined destroy of [Input](&v180, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v182, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          return;
        }

        goto LABEL_68;
      }

      v86 = XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
      if (!v87)
      {
        swift_getObjectType();
        v95._countAndFlagsBits = 1701667182;
        v95._object = 0xE400000000000000;
        v96 = XMLElement.getRequiredAttribute(_:)(v95);
        if (v97)
        {

          v166 = v163;
          outlined destroy of String(&v166);

          return;
        }

        v59 = v96._object;
        countAndFlagsBits = v96._countAndFlagsBits;
        if (one-time initialization token for logger == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_69;
      }

      v59 = v86;
      v88 = v87;

      if (*(a6 + 16))
      {
        object = specialized __RawDictionaryStorage.find<A>(_:)(v59, v88);
        v59 = v89;

        if (v59)
        {
          v90 = (*(a6 + 56) + (object << 6));
          v92 = v90[1];
          v91 = v90[2];
          v93 = *v90;
          *&v200[9] = *(v90 + 41);
          v199[1] = v92;
          *v200 = v91;
          v199[0] = v93;
          swift_unknownObjectRetain();
          outlined init with copy of GeomPropDef(v199, &v122);
          v94 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v18, v121);
          specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v199, v94, v118, &v146);
          v187 = *&v147[0];
          specialized ShaderGraphNode.output(labeled:)(&v148, 7632239, 0xE300000000000000, *&v147[0]);
          if (!v149)
          {
            *&v124 = 0;
            *(&v124 + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v122 = v146;
            *v123 = v147[0];
            *&v123[9] = *(v147 + 9);
            _print_unlocked<A, B>(_:_:)();
            v116 = v124;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v117 = 14;
            *(v117 + 8) = v116;
            swift_willThrow();
            v186 = v146;
            outlined destroy of NodePersonality(&v186);
            v185 = *(&v146 + 1);
            outlined destroy of [Input](&v185, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v187, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of GeomPropDef(v199);

            v170 = v163;
            v43 = &v170;
            goto LABEL_20;
          }

          v157[0] = v148;
          v157[1] = v149;
          v158 = v150;
          v159 = v151;
          v160 = v152;
          UserGraph.connect(_:to:)(v157, &v161);

          v171 = v163;
          outlined destroy of String(&v171);

          v177 = v158;
          outlined destroy of String(&v177);
          v184 = v146;
          outlined destroy of NodePersonality(&v184);
          v183 = *(&v146 + 1);
          outlined destroy of [Input](&v183, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v187, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          outlined destroy of GeomPropDef(v199);
          return;
        }

        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_57:
    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, logger);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v122 = v113;
      *v112 = 136315394;
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16._countAndFlagsBits, object, &v122);

      *(v112 + 4) = v114;
      *(v112 + 12) = 2080;
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v59, &v122);

      *(v112 + 14) = v115;
      swift_arrayDestroy();
      MEMORY[0x266773120](v113, -1, -1);
      MEMORY[0x266773120](v112, -1, -1);

      v169 = v163;
      outlined destroy of String(&v169);
    }

    else
    {

      v168 = v163;
      outlined destroy of String(&v168);
    }

    return;
  }

  v35 = v33;
  v36 = v34;

  v38 = *(v120 + 80);
  v37 = *(v120 + 88);
  v39 = *(v120 + 96);
  v40 = *(v120 + 104);
  v41 = *(v120 + 112);
  v42 = *(v120 + 120);
  specialized ShaderGraphNode.output(labeled:)(&v130, v35, v36, v39);
  if (v131)
  {
    v153[0] = v130;
    v153[1] = v131;
    v154 = v132;
    v155 = v133;
    v156 = v134;
    outlined copy of NodePersonality(v38);

    UserGraph.connect(_:to:)(v153, &v161);
    outlined consume of NodePersonality(v38);

    v176 = v163;
    outlined destroy of String(&v176);

    v179 = v154;
    v43 = &v179;
LABEL_20:
    outlined destroy of String(v43);
    return;
  }

  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  outlined copy of NodePersonality(v38);

  MEMORY[0x266771550](v35, v36);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *&v122 = v38;
  *(&v122 + 1) = v37;
  *v123 = v39;
  *&v123[8] = v40;
  *&v123[16] = v41;
  v123[24] = v42;
  _print_unlocked<A, B>(_:_:)();

  outlined consume of NodePersonality(v38);

  v167 = v163;
  outlined destroy of String(&v167);
}

uint64_t specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v94 = a6;
  v13 = *(a1 + 8);
  type metadata accessor for MaterialXDataType();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v20 = MEMORY[0x266771550](0x742074757074754FLL, 0xED00002720657079);
    v21 = (*(*v13 + 136))(v20);
    MEMORY[0x266771550](v21);

    MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F303D0);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v22 = 47;
    *(v22 + 8) = v41;
    return swift_willThrow();
  }

  v15 = v14;
  if (*(v14 + 24))
  {

    _StringGuts.grow(_:)(41);

    *&v40 = 0x272065707954;
    *(&v40 + 1) = 0xE600000000000000;
    v17 = (*(*v13 + 136))(v16);
    MEMORY[0x266771550](v17);

    v18 = 0xD000000000000021;
    v19 = 0x8000000265F30400;
LABEL_7:
    MEMORY[0x266771550](v18, v19);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 47;
    *(v26 + 8) = v40;
    swift_willThrow();
  }

  if (a2[3])
  {

    _StringGuts.grow(_:)(40);

    *&v40 = 0x272065707954;
    *(&v40 + 1) = 0xE600000000000000;
    v25 = (*(*v13 + 136))(v24);
    MEMORY[0x266771550](v25);

    v19 = 0x8000000265F30430;
    v18 = 0xD000000000000020;
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(16);

  v27 = *(v15 + 32);
  v28 = *(v15 + 40);

  MEMORY[0x266771550](v27, v28);

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](a2[4], a2[5]);
  specialized NodeDefStore.createNode(in:nodeDefName:)(0x7A7A6977735F444ELL, 0xEB000000005F656CLL, a5, &v42);
  if (v7)
  {
  }

  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  v29 = static MaterialXDataType.string;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_265F1F670;
  *(v30 + 32) = 7632239;
  *(v30 + 40) = 0xE300000000000000;
  *(v30 + 48) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 80) = 6;
  *(v31 + 88) = v29;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v30, v31, &v44);

  swift_setDeallocating();
  v32 = *(v30 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v93[0] = v45;
  specialized ShaderGraphNode.output(labeled:)(&v46, 7632239, 0xE300000000000000, v45);
  if (!v47)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v36 = 14;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();
    v92 = v44;
    outlined destroy of NodePersonality(&v92);
    v91 = *(&v44 + 1);
    outlined destroy of [Input](&v91, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v90 = v42;
    outlined destroy of NodePersonality(&v90);
    v89 = *(&v42 + 1);
    outlined destroy of [Input](&v89, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v88 = *&v43[0];
    v37 = &v88;
LABEL_20:
    outlined destroy of [Input](v37, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v69[0] = v46;
  v69[1] = v47;
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v33 = *(&v42 + 1);
  v87 = *(&v42 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v51, 0x736C656E6E616863, 0xE800000000000000, *(&v42 + 1));
  if (!v52)
  {
    MEMORY[0x266771550](0x736C656E6E616863, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v38 = 11;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();

    v73 = v70;
    outlined destroy of String(&v73);
    v86 = v44;
    outlined destroy of NodePersonality(&v86);
    v85 = *(&v44 + 1);
    outlined destroy of [Input](&v85, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v84 = v42;
    outlined destroy of NodePersonality(&v84);
    outlined destroy of [Input](&v87, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v83 = *&v43[0];
    v37 = &v83;
    goto LABEL_20;
  }

  v65[0] = v51;
  v65[1] = v52;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  UserGraph.connect(_:to:)(v69, v65);

  v75 = v66;
  outlined destroy of String(&v75);

  v74 = v70;
  outlined destroy of String(&v74);
  specialized ShaderGraphNode.output(labeled:)(&v56, 28265, 0xE200000000000000, v33);
  if (!v57)
  {
    MEMORY[0x266771550](28265, 0xE200000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v39 = 11;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();
    v82 = v44;
    outlined destroy of NodePersonality(&v82);
    v81 = *(&v44 + 1);
    outlined destroy of [Input](&v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v80 = v42;
    outlined destroy of NodePersonality(&v80);
    outlined destroy of [Input](&v87, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v79 = *&v43[0];
    v37 = &v79;
    goto LABEL_20;
  }

  v61[0] = v56;
  v61[1] = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  UserGraph.connect(_:to:)(a1, v61);

  v76 = v62;
  outlined destroy of String(&v76);
  v78 = v44;
  outlined destroy of NodePersonality(&v78);
  v77 = *(&v44 + 1);
  outlined destroy of [Input](&v77, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v34 = v43[0];
  v35 = v94;
  *v94 = v42;
  v35[1] = v34;
  *(v35 + 25) = *(v43 + 9);
  return result;
}

void specialized closure #8 in createGraph(_:nodeDefStore:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = XMLNode.subscript.getter(0x656D616E65646F6ELL, 0xE800000000000000);
  if (v11)
  {
    v12 = *a2;
    if (!*(*a2 + 16))
    {
LABEL_10:

      return;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v13);
      if (v16 != -7)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v17 = *(a3 + 64);
          if (v16 < *(v17 + 16))
          {
            v18 = v17 + 48 * v16;
            v20 = *(v18 + 32);
            v19 = *(v18 + 40);
            v21 = *(v18 + 48);
            v22 = *(v18 + 56);
            v23 = *(v18 + 64);
            LODWORD(v135) = *(v18 + 72);
            v92 = v19;

            v91 = v20;
            outlined copy of NodePersonality(v20);
            v24 = XMLNode.subscript.getter(0x74757074756FLL, 0xE600000000000000);
            if (v25)
            {
              v26 = v25;
              v93 = v23;
              v27 = v24;
              specialized ShaderGraphNode.output(labeled:)(&v95, v24, v25, v21);
              if (!v96)
              {
                *&v125 = 0;
                *(&v125 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](v27, v26);
                MEMORY[0x266771550](32, 0xE100000000000000);
                v128 = v20;
                v129 = v92;
                v130 = v21;
                v131 = v22;
                v132 = v93;
                v133 = v135;
                _print_unlocked<A, B>(_:_:)();
                v47 = v125;
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                v9 = swift_allocError();
                *v48 = 14;
                *(v48 + 8) = v47;
                swift_willThrow();

                outlined consume of NodePersonality(v20);

                goto LABEL_32;
              }

              v94 = v101;
              v28 = v98;
              v29 = v99;
              v135 = v97;
              v89 = v95;
              v30 = v100;
              v31 = v96;

              v32 = v30;

              v88 = v31;
              v33 = v31;
              v34 = v89;
            }

            else
            {
              v35 = v21;
              if (!*(v21 + 16))
              {
                outlined consume of NodePersonality(v20);
LABEL_22:

                goto LABEL_10;
              }

              v34 = *(v21 + 32);
              v36 = *(v35 + 40);
              v28 = *(v35 + 56);
              v135 = *(v35 + 48);
              v29 = *(v35 + 64);
              v32 = *(v35 + 72);
              v94 = *(v35 + 80);
              swift_retain_n();

              v88 = v36;
              v33 = v36;
            }

            v128 = v34;
            v129 = v33;
            v130 = v135;
            v131 = v28;
            v132 = v29;
            v84 = v32;
            v133 = v32 & 1;
            v134 = v94;
            v37 = v28;
            v38 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
            if (v39)
            {
              v40 = v38;
              v85 = v33;
              v90 = v34;
              v41 = v135;
              v86 = v29;
              v87 = v37;
              v42 = v39;
              type metadata accessor for MaterialXDataType();
              inited = swift_initStackObject();
              inited[4] = v40;
              inited[5] = v42;
              inited[2] = MEMORY[0x277D84F90];
              inited[3] = 0;
              v44 = XMLNode.subscript.getter(0x736C656E6E616863, 0xE800000000000000);
              if (v45)
              {
                specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)(&v128, inited, v44, v45, a4, &v102);
                v46 = v41;
                if (v5)
                {

                  outlined consume of NodePersonality(v91);

                  outlined consume of Output?(v90, v88);

                  v9 = v5;
                  goto LABEL_33;
                }

                v124 = *&v103[0];
                specialized ShaderGraphNode.output(labeled:)(&v104, 7632239, 0xE300000000000000, *&v103[0]);
                v50 = v105;
                if (!v105)
                {
                  v116 = 0;
                  v117 = 0xE000000000000000;
                  MEMORY[0x266771550](7632239, 0xE300000000000000);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v125 = v102;
                  *v126 = v103[0];
                  *&v126[9] = *(v103 + 9);
                  _print_unlocked<A, B>(_:_:)();
                  v65 = v116;
                  v66 = v117;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  v9 = swift_allocError();
                  *v67 = 14;
                  *(v67 + 8) = v65;
                  *(v67 + 16) = v66;
                  swift_willThrow();

                  outlined consume of NodePersonality(v91);

                  outlined consume of Output?(v90, v88);
                  *&v125 = v102;
                  outlined destroy of NodePersonality(&v125);
                  v116 = *(&v102 + 1);
                  outlined destroy of [Input](&v116, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v124, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                  goto LABEL_32;
                }

                v49 = v107;
                v82 = v108;
                v83 = v110;
                v80 = v104;
                v81 = v106;
                v123 = v102;
                v84 = v109;
                outlined destroy of NodePersonality(&v123);
                v122 = *(&v102 + 1);
                outlined destroy of [Input](&v122, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v124, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v85 = v50;
              }

              else
              {
                v80 = v90;
                v81 = v41;
                v46 = v41;
                v49 = v87;
                v82 = v86;
                v83 = v94;
              }

              v51 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
              if (!v52)
              {

                outlined consume of NodePersonality(v91);

                v60 = v90;
                v61 = v88;
                goto LABEL_29;
              }

              v53 = v52;
              v135 = v46;
              v55 = *(a3 + 128);
              v54 = *(a3 + 136);
              v56 = *(a3 + 144);
              v78 = *(a3 + 152);
              v79 = v49;
              v57 = *(a3 + 160);
              v58 = *(a3 + 168);
              v59 = v51;
              specialized ShaderGraphNode.output(labeled:)(&v111, v51, v52, v54);
              if (v112)
              {
                v116 = v111;
                v117 = v112;
                v118 = v113;
                v119 = v114;
                v120 = v115;

                *&v125 = v80;
                *(&v125 + 1) = v85;
                *v126 = v81;
                *&v126[8] = v79;
                *&v126[16] = v82;
                v126[24] = v84 & 1;
                v127 = v83;
                UserGraph.connect(_:to:)(&v125, &v116);

                v121 = v118;
                outlined destroy of String(&v121);
                outlined consume of NodePersonality(v91);

                v60 = v90;
                v61 = v88;
LABEL_29:
                outlined consume of Output?(v60, v61);
                goto LABEL_10;
              }

              v116 = 0;
              v117 = 0xE000000000000000;
              outlined copy of NodePersonality(v55);

              MEMORY[0x266771550](v59, v53);
              MEMORY[0x266771550](32, 0xE100000000000000);
              *&v125 = v55;
              *(&v125 + 1) = v54;
              *v126 = v56;
              *&v126[8] = v78;
              *&v126[16] = v57;
              v126[24] = v58;
              _print_unlocked<A, B>(_:_:)();
              v62 = v116;
              v63 = v117;
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              v9 = swift_allocError();
              *v64 = 11;
              *(v64 + 8) = v62;
              *(v64 + 16) = v63;
              swift_willThrow();

              outlined consume of NodePersonality(v55);

              outlined consume of NodePersonality(v91);

              outlined consume of Output?(v90, v88);
LABEL_32:

LABEL_33:
              if (one-time initialization token for logger == -1)
              {
                goto LABEL_34;
              }

              goto LABEL_39;
            }

            outlined consume of Output?(v34, v88);
            outlined consume of NodePersonality(v91);

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_39:
        swift_once();
LABEL_34:
        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, logger);
        v69 = v9;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v121 = v73;
          *v72 = 136315138;
          v74 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v75 = String.init<A>(describing:)();
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v121);

          *(v72 + 4) = v77;
          _os_log_impl(&dword_265D7D000, v70, v71, "Got error '%s'. Ignoring.", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          MEMORY[0x266773120](v73, -1, -1);
          MEMORY[0x266773120](v72, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; ++i)
    {
      v10 = *i;
      swift_unknownObjectRetain();
      specialized closure #8 in createGraph(_:nodeDefStore:)(&v10, a2, a3, a4);
      if (v4)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t partial apply for closure #2 in SIMD<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return closure #2 in SIMD<>.init(_:)(a1, v2[3], a2);
}

unint64_t lazy protocol witness table accessor for type XMLElementErrors and conformance XMLElementErrors()
{
  result = lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors;
  if (!lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLElementErrors and conformance XMLElementErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

void *specialized MaterialXDataType.Kind.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v37 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();
  v19 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v35;
    v36 = v12;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v38 = v21;
    v39 = v21 + 32;
    v40 = 0;
    v41 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 2 || v40 != v41 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = &type metadata for MaterialXDataType.Kind;
      v18 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v36 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      LOBYTE(v42) = 1;
      lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
      v31 = v33;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v34 + 8))(v6, v31);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = v42;
    }

    else
    {
      LOBYTE(v42) = 0;
      lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v36;
      (*(v20 + 8))(v10, v7);
      (*(v30 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return v18;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialXDataType.Kind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialXDataType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for MaterialXDataType.Kind(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for MaterialXDataType.Kind(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XMLElementErrors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XMLElementErrors(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MaterialXDataType.Kind.SetCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MaterialXDataType.Kind.SetCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265E1A8C8()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265E1A924()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  outlined consume of NodePersonality(v0[12]);
  v8 = v0[13];

  v9 = v0[14];

  outlined consume of NodePersonality(v0[18]);
  v10 = v0[19];

  v11 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t outlined init with copy of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NodeDef.Implementation(uint64_t a1)
{
  v2 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11ShaderGraph14MaterialXErrorOWOi4_(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0x8000000000000000;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError()
{
  result = lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError;
  if (!lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXError and conformance MaterialXError);
  }

  return result;
}

double _s11ShaderGraph7NodeDefVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

_BYTE *partial apply for closure #1 in closure #1 in Float.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t SGTypeDescription.offset.getter()
{
  v1 = OBJC_IVAR___SGTypeDescription_offset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGTypeDescription.offset.setter(int a1)
{
  v3 = OBJC_IVAR___SGTypeDescription_offset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL SGTypeDescription.getMTLTextureType(_:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + OBJC_IVAR___SGTypeDescription_type);
  v5 = a2();
  if ((v6 & 1) == 0 && a1)
  {
    *a1 = v5;
  }

  return (v6 & 1) == 0;
}

BOOL @objc SGTypeDescription.getMTLTextureType(_:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *&a1[OBJC_IVAR___SGTypeDescription_type];
  v7 = a1;
  v8 = a4();
  v10 = v9;
  if ((v9 & 1) == 0 && a3)
  {
    *a3 = v8;
  }

  return (v10 & 1) == 0;
}

id SGTypeDescription.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SGTypeDescription.init(_:)(a1);

  return v4;
}

id SGTypeDescription.init(_:)(uint64_t a1)
{
  v1 = specialized SGTypeDescription.init(_:)(a1);

  return v1;
}

id SGPropertyDescription.__allocating_init(name:type:visible:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___SGPropertyDescription_name];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v9[OBJC_IVAR___SGPropertyDescription_visible] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t SGTypeDescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v3 = v1;
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

uint64_t SGTypeDescription.description.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return SGTypeDescription.description.getter(closure #1 in SGTypeDescription.description.getter);
}

uint64_t closure #1 in SGTypeDescription.description.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(45);
  MEMORY[0x266771550](0xD000000000000014, 0x8000000265F30650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPy11ShaderGraph17SGTypeDescriptionCGMd, &_sSPy11ShaderGraph17SGTypeDescriptionCGMR);
  _print_unlocked<A, B>(_:_:)();
  v4 = MEMORY[0x266771550](0x3D6570797420, 0xE600000000000000);
  v5 = (*(**(a1 + OBJC_IVAR___SGTypeDescription_type) + 136))(v4);
  MEMORY[0x266771550](v5);

  MEMORY[0x266771550](0x747265706F727020, 0xEC0000003D736569);
  v6 = *(a1 + OBJC_IVAR___SGTypeDescription_properties);
  v7 = type metadata accessor for SGPropertyDescription();
  v8 = MEMORY[0x2667717B0](v6, v7);
  MEMORY[0x266771550](v8);

  result = MEMORY[0x266771550](62, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id SGTypeDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SGPropertyDescription.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGPropertyDescription_name);
  v2 = *(v0 + OBJC_IVAR___SGPropertyDescription_name + 8);

  return v1;
}

id SGPropertyDescription.init(name:type:visible:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___SGPropertyDescription_name];
  *v10 = a1;
  v10[1] = a2;
  *&v4[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v4[OBJC_IVAR___SGPropertyDescription_visible] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id static SGPropertyDescription.create(_:type:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___SGPropertyDescription_name];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR___SGPropertyDescription_type] = a3;
  v7[OBJC_IVAR___SGPropertyDescription_visible] = 1;
  v11.receiver = v7;
  v11.super_class = v3;

  v9 = a3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id @objc SGTypeDescription.description.getter(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void **, id))
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v4 = a1;
  a3(v9, &v8, v4);

  v5 = MEMORY[0x266771450](v9[0], v9[1]);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t SGPropertyDescription.description.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return SGTypeDescription.description.getter(closure #1 in SGPropertyDescription.description.getter);
}

uint64_t SGTypeDescription.description.getter(void (*a1)(void *__return_ptr, uint64_t *, uint64_t))
{
  v5[2] = *MEMORY[0x277D85DE8];
  a1(v5, &v4, v1);
  result = v5[0];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in SGPropertyDescription.description.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(53);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPy11ShaderGraph21SGPropertyDescriptionCGMd, &_sSPy11ShaderGraph21SGPropertyDescriptionCGMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x266771550](*(a1 + OBJC_IVAR___SGPropertyDescription_name), *(a1 + OBJC_IVAR___SGPropertyDescription_name + 8));
  MEMORY[0x266771550](0x3D6570797420, 0xE600000000000000);
  v4 = [*(a1 + OBJC_IVAR___SGPropertyDescription_type) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x266771550](v5, v7);

  MEMORY[0x266771550](0x656C626973697620, 0xE90000000000003DLL);
  if (*(a1 + OBJC_IVAR___SGPropertyDescription_visible))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(a1 + OBJC_IVAR___SGPropertyDescription_visible))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v8, v9);

  result = MEMORY[0x266771550](62, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t static SGPropertyDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + OBJC_IVAR___SGPropertyDescription_name) == *(a2 + OBJC_IVAR___SGPropertyDescription_name) && *(a1 + OBJC_IVAR___SGPropertyDescription_name + 8) == *(a2 + OBJC_IVAR___SGPropertyDescription_name + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(**(*(a1 + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 128))(*(*(a2 + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type)))
  {
    v5 = *(a1 + OBJC_IVAR___SGPropertyDescription_visible) ^ *(a2 + OBJC_IVAR___SGPropertyDescription_visible) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SGPropertyDescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v5 = 0;
    return v5 & 1;
  }

  if (v7 == v1)
  {

    v5 = 1;
    return v5 & 1;
  }

  v3 = *&v7[OBJC_IVAR___SGPropertyDescription_name] == *&v1[OBJC_IVAR___SGPropertyDescription_name] && *&v7[OBJC_IVAR___SGPropertyDescription_name + 8] == *&v1[OBJC_IVAR___SGPropertyDescription_name + 8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(**(*&v7[OBJC_IVAR___SGPropertyDescription_type] + OBJC_IVAR___SGTypeDescription_type) + 128))(*(*&v1[OBJC_IVAR___SGPropertyDescription_type] + OBJC_IVAR___SGTypeDescription_type)) & 1) == 0)
  {

    goto LABEL_13;
  }

  v4 = v7[OBJC_IVAR___SGPropertyDescription_visible];

  v5 = v4 ^ v1[OBJC_IVAR___SGPropertyDescription_visible] ^ 1;
  return v5 & 1;
}

uint64_t @objc SGTypeDescription.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

id specialized SGTypeDescription.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SGTypeDescription_offset] = 0;
  *&v2[OBJC_IVAR___SGTypeDescription_type] = a1;
  v4 = *(*a1 + 232);

  v6 = v4(v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = v2;
    v31 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 0;
    v10 = v6 + 40;
    v26 = v6;
    while (v9 < *(v6 + 16))
    {
      ++v9;
      v11 = *(v10 - 8);
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      v28 = *(v10 + 40);
      v16 = objc_allocWithZone(ObjectType);
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v17 = specialized SGTypeDescription.init(_:)(v13);

      v18 = type metadata accessor for SGPropertyDescription();
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR___SGPropertyDescription_name];
      *v20 = v11;
      v20[1] = v12;
      *&v19[OBJC_IVAR___SGPropertyDescription_type] = v17;
      v19[OBJC_IVAR___SGPropertyDescription_visible] = v15;
      v30.receiver = v19;
      v30.super_class = v18;
      v21 = *(objc_msgSendSuper2(&v30, sel_init) + OBJC_IVAR___SGPropertyDescription_type);
      v22 = OBJC_IVAR___SGTypeDescription_offset;
      swift_beginAccess();
      *(v21 + v22) = v28;
      v6 = v26;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v10 += 56;
      if (v7 == v9)
      {

        v24 = v31;
        v2 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
LABEL_7:
    *&v2[OBJC_IVAR___SGTypeDescription_properties] = v24;
    v29.receiver = v2;
    v29.super_class = ObjectType;
    return objc_msgSendSuper2(&v29, sel_init, v25);
  }

  return result;
}

void specialized static MetalDataType.create(_:name:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  p_cb = &OBJC_PROTOCOL___NSCopying.cb;
  if (!(*(**(a1 + OBJC_IVAR___SGTypeDescription_type) + 144))())
  {
    v7 = *(a1 + OBJC_IVAR___SGTypeDescription_properties);
    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v38 = MEMORY[0x277D84F90];
      v37 = i;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      v10 = v37;
      if (v37 < 0)
      {
        __break(1u);
        return;
      }

      v11 = v38;
      v32 = a3;
      v31 = a2;
      v33 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v8)
      {
        v36 = __CocoaSet.count.getter();
        v10 = v37;
      }

      else
      {
        v36 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = 0;
      v34 = v7;
      v35 = v7 & 0xC000000000000001;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v13 >= v10 || v13 >= v36)
        {
          goto LABEL_27;
        }

        if (v35)
        {
          v15 = v11;
          v16 = MEMORY[0x266772030](v13, v7);
        }

        else
        {
          if (v13 >= *(v33 + 16))
          {
            goto LABEL_28;
          }

          v15 = v11;
          v16 = *(v7 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = OBJC_IVAR___SGPropertyDescription_type;
        v19 = *(**(*&v16[OBJC_IVAR___SGPropertyDescription_type] + *(p_cb + 399)) + 144);

        v21 = v19(v20);

        if (!v21)
        {
          v26 = [*&v17[v18] description];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          MEMORY[0x266771550](v27, v29);

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v30 = 0x6F72724565707974;
          *(v30 + 8) = 0xEA00000000002072;
          *(v30 + 16) = 11;
          swift_willThrow();

          return;
        }

        v22 = *&v17[OBJC_IVAR___SGPropertyDescription_name];
        v8 = *&v17[OBJC_IVAR___SGPropertyDescription_name + 8];
        v23 = v17[OBJC_IVAR___SGPropertyDescription_visible];

        v11 = v15;
        v39 = v15;
        a2 = *(v15 + 16);
        v24 = *(v11 + 24);
        a3 = a2 + 1;
        if (a2 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), a2 + 1, 1);
          v11 = v39;
        }

        *(v11 + 16) = a3;
        v25 = v11 + 48 * a2;
        *(v25 + 32) = v22;
        *(v25 + 40) = v8;
        *(v25 + 48) = v21;
        *(v25 + 56) = MEMORY[0x277D84F90];
        *(v25 + 64) = v23;
        *(v25 + 72) = v13++;
        v10 = v37;
        p_cb = (&OBJC_PROTOCOL___NSCopying + 64);
        v7 = v34;
        if (v14 == v37)
        {
          a3 = v32;
          a2 = v31;
          v12 = v11;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_24:
    type metadata accessor for MetalDataType.Struct();
    swift_allocObject();

    MetalDataType.Struct.init(note:typeName:fields:)(0, 0, a2, a3, v12);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static SGTypeDescription.create(_:)(uint64_t a1)
{
  specialized SGDataType.materialXDataType.getter(a1);

  v1 = MaterialXDataType.asMetalDataType.getter();
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for SGTypeDescription());
    v4 = specialized SGTypeDescription.init(_:)(v2);

    return v4;
  }

  else
  {
    v6 = SGDataType.stringValue.getter();
    MEMORY[0x266771550](v6);

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v7 = 0x6F72724565707974;
    *(v7 + 8) = 0xEA00000000002072;
    *(v7 + 16) = 11;
    swift_willThrow();
  }
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized OrderedDictionary.init(dictionaryLiteral:)(a1, a2, a3, a4);

  return v4;
}

uint64_t protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance OrderedDictionary<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = specialized OrderedDictionary.init(dictionaryLiteral:)(a1, a2[2], a2[3], a2[4]);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  return result;
}

uint64_t specialized OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Array();
  swift_getWitnessTable();
  return specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(&v9, a2, a3, v7, a4);
}

uint64_t static _HashTable.wordCount(forScale:)(uint64_t result)
{
  v1 = (result << result) + 63;
  if (__OFADD__(result << result, 63))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = (result << result) + 126;
    }

    return v1 >> 6;
  }

  return result;
}

uint64_t specialized static _HashTable.maximumCapacity(forScale:)(uint64_t result)
{
  if (result < 5)
  {
    return 15;
  }

  v1 = (1 << result) * 0.75;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t specialized static _HashTable.scale(forCapacity:)(int64_t result)
{
  if (result < 16)
  {
    return 0;
  }

  v1 = ceil(result / 0.75);
  if (v1 == INFINITY)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2 <= v1)
  {
    v2 = v1;
  }

  return 64 - __clz(v2 - 1);
}

uint64_t specialized static _HashTable.minimumCapacity(forScale:)(uint64_t result)
{
  if (result < 5)
  {
    return 0;
  }

  v1 = vcvtd_n_f64_s64(1 << result, 2uLL);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(_OWORD *a1, uint64_t *a2, unint64_t *a3)
{
  v32 = a3[1];
  v5 = a3 + 2;
  v30 = *a3;
  v31 = a3[2];
  v6 = a1[1];
  v58[2] = *a1;
  v58[3] = v6;
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[5];
  v58[6] = a1[4];
  v58[7] = v9;
  v58[4] = v7;
  v58[5] = v8;
  v10 = a1[6];
  v11 = a1[7];
  *(v59 + 9) = *(a1 + 153);
  v12 = a1[9];
  v58[10] = a1[8];
  v59[0] = v12;
  v58[8] = v10;
  v58[9] = v11;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a2, &v33);
  v13 = v33;

  if (one-time initialization token for surface_parameters_private != -1)
  {
    swift_once();
  }

  v14 = static MetalDataType.re.surface_parameters_private;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 12324;
  *(v16 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v16 | 0x6000000000000000, &v34);

  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  v60 = v34;
  v47 = v35;
  v48 = *(&v34 + 1);
  outlined init with copy of NodePersonality(&v60, &v33);
  outlined init with copy of [Input](&v48, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v47, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v13, a1, &v34);
  if (v3)
  {
    outlined destroy of NodePersonality(&v60);
    outlined destroy of [Input](&v48, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v60);
    outlined destroy of [Input](&v48, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v18 = &v47;
LABEL_5:
    outlined destroy of [Input](v18, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  outlined destroy of NodePersonality(&v60);
  outlined destroy of [Input](&v48, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  if (v32)
  {
    v38 = v30;
    v39 = v32;
    *v40 = *v5;
    *&v40[9] = *(v5 + 9);
    v20 = a1[9];
    v57 = a1[8];
    v58[0] = v20;
    *(v58 + 9) = *(a1 + 153);
    v21 = a1[5];
    v53 = a1[4];
    v54 = v21;
    v22 = a1[7];
    v55 = a1[6];
    v56 = v22;
    v23 = a1[1];
    v49 = *a1;
    v50 = v23;
    v24 = a1[3];
    v51 = a1[2];
    v52 = v24;
    outlined copy of NodePersonality(v30);

    UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v38, &v33);
    v25 = v33;

    if (one-time initialization token for geometry_parameters_private != -1)
    {
      swift_once();
    }

    v26 = static MetalDataType.re.geometry_parameters_private;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_265F1F670;
    *(v27 + 32) = 7632239;
    *(v27 + 40) = 0xE300000000000000;
    *(v27 + 48) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = 12324;
    *(v28 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v27, v28 | 0x6000000000000000, &v36);

    swift_setDeallocating();
    v29 = *(v27 + 16);
    swift_arrayDestroy();
    v45 = *(&v36 + 1);
    v46 = v36;
    v44 = v37;
    outlined init with copy of NodePersonality(&v46, &v33);
    outlined init with copy of [Input](&v45, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v44, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v25, a1, &v36);
    outlined destroy of NodePersonality(&v46);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v60);
    outlined destroy of [Input](&v48, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v41 = v38;
    outlined destroy of NodePersonality(&v41);
    v42 = v39;
    outlined destroy of [Input](&v42, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v43 = *v40;
    outlined destroy of [Input](&v43, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v46);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v18 = &v44;
    goto LABEL_5;
  }

  outlined destroy of NodePersonality(&v60);
  outlined destroy of [Input](&v48, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  return outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
}

uint64_t closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *result;
  if (*result >> 61 == 4)
  {
    v9 = *(result + 8);
    if (v9[2])
    {
      v118 = v7;
      v72 = *(result + 24);
      v73 = *(result + 16);
      v68 = *(result + 32);
      v67 = *(result + 40);
      v70 = v8;
      v71 = v9;
      v14 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v16 = v9[5];
      v17 = v9[7];
      type metadata accessor for MetalDataType();
      result = swift_dynamicCastClass();
      if (result)
      {
        swift_retain_n();

        DataType.subscript.getter(v14, v15, &v80);

        if (!v81)
        {
LABEL_8:
        }

        v64 = v81;
        v18 = v80;
        v19 = v82;
        v20 = v83;
        MetalDataType.MTLTextureType.getter();
        if (v21)
        {
          v108[0] = v18;
          v108[1] = v64;
          outlined destroy of String(v108);

          v109 = v20;
          v22 = &v109;
LABEL_7:
          outlined destroy of [Input](v22, &_sSaySSGMd, &_sSaySSGMR);
          goto LABEL_8;
        }

        v60 = v18;
        v61 = v20;
        v62 = v19;
        specialized ShaderGraphNode.output(labeled:)(&v84, 7632239, 0xE300000000000000, v73);
        v23 = v85;
        if (!v85)
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v42 = 14;
          *(v42 + 8) = 0;
          *(v42 + 16) = 0xE000000000000000;
          swift_willThrow();
          v98[0] = v18;
          v98[1] = v64;
          outlined destroy of String(v98);

          v99 = v20;
          v43 = &v99;
          goto LABEL_30;
        }

        v110 = v86;
        outlined destroy of String(&v110);
        type metadata accessor for MetalDataType.Struct();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
          swift_allocError();
          *v44 = 0xD000000000000030;
          *(v44 + 8) = 0x8000000265F307D0;
          *(v44 + 16) = 2;
          swift_willThrow();

          v100[0] = v18;
          v100[1] = v64;
          outlined destroy of String(v100);

          v101 = v20;
          v43 = &v101;
          goto LABEL_30;
        }

        v74 = *(v62 + 24);
        v78 = *(v62 + 32);
        v59 = v24;
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v27 = v26;

        v75 = *(v59 + 24);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v28);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v25, v27);

        MEMORY[0x266771550](a4, a5);

        v29 = swift_allocObject();
        *(v29 + 16) = v75;
        v63 = v29;
        *(v29 + 32) = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_265F1F670;
        v31 = *a6;

        if (v31 != -1)
        {
          swift_once();
        }

        v32 = *a7;
        *(v30 + 32) = 28265;
        *(v30 + 40) = 0xE200000000000000;
        *(v30 + 48) = v32;
        v33 = *(v73 + 16);
        if (v33)
        {
          v65 = v30;
          v76 = MEMORY[0x277D84F90];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
          v34 = v76;
          v35 = (v73 + 56);
          do
          {
            v36 = *(v35 - 2);
            v37 = *(v35 - 1);
            v38 = *v35;
            v40 = *(v76 + 16);
            v39 = *(v76 + 24);

            if (v40 >= v39 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            }

            *(v76 + 16) = v40 + 1;
            v41 = (v76 + 24 * v40);
            v41[4] = v37;
            v41[5] = v38;
            v41[6] = v36;
            v35 += 7;
            --v33;
          }

          while (v33);
          v30 = v65;
        }

        else
        {

          v34 = MEMORY[0x277D84F90];
        }

        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v30, v34, v63 | 0x2000000000000000, &v87);
        swift_setDeallocating();
        v45 = *(v30 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        v46 = *(&v87 + 1);
        outlined copy of NodePersonality(v70);

        v47 = v46;
        v48 = v118;
        specialized Sequence.forEach(_:)(v46, v71, a2);
        outlined consume of NodePersonality(v70);

        v49 = v88;
        outlined copy of NodePersonality(v70);

        specialized Sequence.forEach(_:)(v49, v73, a2);
        v118 = v48;
        outlined consume of NodePersonality(v70);

        specialized UserGraph.removeEdges(connectedTo:)(v72);
        v50 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v50;
        if (result)
        {
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
          v50 = result;
          *(a2 + 64) = result;
          if ((v72 & 0x8000000000000000) == 0)
          {
LABEL_25:
            if (v72 < *(v50 + 16))
            {
              ShaderGraphNode.update(id:)(-7);
              if (v47[2])
              {
                v51 = v47[5];
                v52 = v47[6];
                v53 = v47[7];
                v54 = v47[8];
                v55 = *(v47 + 72);
                v56 = v47[10];
                v115[0] = v47[4];
                v115[1] = v51;
                v115[2] = v52;
                v115[3] = v53;
                v115[4] = v54;
                v116 = v55;
                v117 = v56;
                specialized ShaderGraphNode.output(labeled:)(&v89, 7632239, 0xE300000000000000, *(a3 + 2));
                if (v90)
                {
                  v94[0] = v89;
                  v94[1] = v90;
                  v95 = v91;
                  v96 = v92;
                  v97 = v93;

                  UserGraph.connect(_:to:)(v94, v115);

                  v111 = v95;
                  outlined destroy of String(&v111);

                  v113 = v87;
                  outlined destroy of NodePersonality(&v113);

                  v104[0] = v60;
                  v104[1] = v64;
                  outlined destroy of String(v104);

                  v105 = v61;
                  v22 = &v105;
                  goto LABEL_7;
                }

                MEMORY[0x266771550](7632239, 0xE300000000000000);
                MEMORY[0x266771550](32, 0xE100000000000000);
                v77 = *a3;
                *v79 = a3[1];
                *&v79[9] = *(a3 + 25);
                _print_unlocked<A, B>(_:_:)();
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v58 = 14;
                *(v58 + 8) = 0;
                *(v58 + 16) = 0xE000000000000000;
                swift_willThrow();

                v114 = v87;
                outlined destroy of NodePersonality(&v114);

                v106[0] = v60;
                v106[1] = v64;
                outlined destroy of String(v106);

                v107 = v61;
                v43 = &v107;
              }

              else
              {
                lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
                swift_allocError();
                *v57 = 0xD000000000000016;
                *(v57 + 8) = 0x8000000265F30810;
                *(v57 + 16) = 2;
                swift_willThrow();
                v112 = v87;
                outlined destroy of NodePersonality(&v112);

                v102[0] = v60;
                v102[1] = v64;
                outlined destroy of String(v102);

                v103 = v61;
                v43 = &v103;
              }

LABEL_30:
              outlined destroy of [Input](v43, &_sSaySSGMd, &_sSaySSGMR);
            }

LABEL_34:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }
  }

  return result;
}

void MetalStitchingBackend.generateFallbackTier1Getters(for:augmenting:library:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v129 = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalDataType.Struct();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, logger);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v125[0] = v89;
      *v88 = 136315138;
      *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 24), *(a1 + 32), v125);
      _os_log_impl(&dword_265D7D000, v86, v87, "Can not generate getters for a non-struct type %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x266773120](v89, -1, -1);
      MEMORY[0x266773120](v88, -1, -1);
    }

    goto LABEL_48;
  }

  v7 = v6;
  swift_beginAccess();
  v8 = *(v7 + 16);

  v10 = calculateOffsets(for:)(v9);

  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_37:

    goto LABEL_48;
  }

  v113 = v7;
  v108 = 0;
  v109 = 0;
  v12 = 0;
  v111 = *(v10 + 16);
  v112 = v10;
  v110 = v11 - 1;
LABEL_4:
  v13 = 56 * v12;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_52:

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v99 = xmmword_265F22B90;
      *(v99 + 16) = 6;
      swift_willThrow();

      goto LABEL_46;
    }

    v117 = v13;
    v14 = (v10 + v13);
    v15 = *(v10 + v13 + 80);
    v16 = *(v10 + v13 + 72);
    v17 = *(v10 + v13 + 64);
    v18 = v14[6];
    v19 = v14[7];
    v20 = v14[4];
    v21 = v14[5];
    v125[0] = v12;
    v125[1] = v20;
    v125[2] = v21;
    v125[3] = v18;
    v125[4] = v19;
    v126 = v17;
    v127 = v16;
    v128 = v15;

    outlined init with copy of [Input](v125, &v123, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
    v122 = v18;
    v22 = MetalDataType.MTLTextureType.getter();
    v121 = v4;
    v120 = v12 + 1;
    if ((v23 & 1) == 0)
    {
      v48 = *(v18 + 32);
      v123 = *(v18 + 24);
      v124 = v48;
      v118 = v22;
      v49 = lazy protocol witness table accessor for type String and conformance String();
      v50 = MEMORY[0x277D837D0];
      v123 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v124 = v51;
      v103 = v49;
      v105 = v49;
      v101 = v49;
      v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v54 = v53;

      v55 = *(v113 + 32);
      v123 = *(v113 + 24);
      v124 = v55;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v56);

      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v52, v54);

      v57 = v123;
      v58 = v124;
      if (v118 > 4)
      {
        if (v118 == 5)
        {
          if (v108 == -1)
          {
            goto LABEL_56;
          }

          v107 = 0xD00000000000002ALL;
          v119 = v108;
          v59 = "ial";
          LODWORD(v108) = v108 + 1;
        }

        else
        {
          if (v118 != 7)
          {
            goto LABEL_52;
          }

          if (v109 == -1)
          {
            goto LABEL_55;
          }

          v57 = v123;
          v107 = 0xD000000000000028;
          v119 = v109;
          v59 = "tureSlot_texture2darray_float";
          LODWORD(v109) = v109 + 1;
        }
      }

      else if (v118 == 2)
      {
        if (HIDWORD(v109) == -1)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        v107 = 0xD000000000000028;
        v119 = HIDWORD(v109);
        v59 = "tureSlot_texture3d_float";
        ++HIDWORD(v109);
      }

      else
      {
        if (v118 != 3)
        {
          goto LABEL_52;
        }

        if (HIDWORD(v108) == -1)
        {
          goto LABEL_54;
        }

        v57 = v123;
        v107 = 0xD00000000000002DLL;
        v119 = HIDWORD(v108);
        v59 = "tureSlot_texturecube_float";
        ++HIDWORD(v108);
      }

      v60 = v59 | 0x8000000000000000;
      v61 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v106 = v57;
      v123 = v57;
      v124 = v58;
      v116 = v58;

      MEMORY[0x266771550](0x656361667275735FLL, 0xE800000000000000);
      v63 = v123;
      v62 = v124;
      v64 = MEMORY[0x266771450](v123, v124);
      [v61 setSpecializedName_];

      v65 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v61 setConstantValues_];

      v123 = v107;
      v124 = v60;

      MEMORY[0x266771550](0x656361667275735FLL, 0xE800000000000000);

      v66 = MEMORY[0x266771450](v123, v124);

      [v61 setName_];

      LODWORD(v123) = v119;
      v67 = [v61 constantValues];
      if (v67)
      {
        v68 = v67;
        [v67 setConstantValue:&v123 type:33 atIndex:100];
      }

      v123 = 0;
      v69 = [a3 newFunctionWithDescriptor:v61 error:&v123];
      v70 = v123;
      if (!v69)
      {
        v97 = v123;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        goto LABEL_47;
      }

      v71 = v69;
      swift_unknownObjectRetain();
      v72 = v70;
      specialized OrderedDictionary.subscript.setter(v71, v63, v62);
      v73 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v123 = v106;
      v124 = v116;

      MEMORY[0x266771550](0x7274656D6F65675FLL, 0xE900000000000079);

      v75 = v123;
      v74 = v124;
      v76 = MEMORY[0x266771450](v123, v124);
      [v73 setSpecializedName_];

      v77 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v73 setConstantValues_];

      v123 = v107;
      v124 = v60;

      MEMORY[0x266771550](0x7274656D6F65675FLL, 0xE900000000000079);

      v78 = MEMORY[0x266771450](v123, v124);

      [v73 setName_];

      LODWORD(v123) = v119;
      v79 = [v73 constantValues];
      if (v79)
      {
        v80 = v79;
        [v79 setConstantValue:&v123 type:33 atIndex:100];
      }

      v123 = 0;
      v81 = [a3 newFunctionWithDescriptor:v73 error:&v123];
      v82 = v123;
      if (!v81)
      {
        v98 = v82;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      v83 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v83, v75, v74);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      outlined destroy of [Input](v125, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
      v84 = v110 == v12++;
      v4 = v121;
      v10 = v112;
      if (v84)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    if (one-time initialization token for typeToLookupFunctionMap != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static MetalStitchingBackend.typeToLookupFunctionMap;
    if (!*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v26 & 1) == 0))
    {
      swift_endAccess();
      v90 = *(v113 + 32);
      v123 = *(v113 + 24);
      v124 = v90;

      MEMORY[0x266771550](46, 0xE100000000000000);
      MEMORY[0x266771550](v20, v21);
      v91 = MEMORY[0x266771550](10272, 0xE200000000000000);
      v92 = (*(*v122 + 136))(v91);
      MEMORY[0x266771550](v92);

      MEMORY[0x266771550](41, 0xE100000000000000);
      v93 = v123;
      v94 = v124;
      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v95 = v93;
      *(v95 + 8) = v94;
      *(v95 + 16) = 4;
      swift_willThrow();

      goto LABEL_45;
    }

    v27 = (*(v24 + 56) + 16 * v25);
    v28 = v27[1];
    v115 = *v27;
    swift_endAccess();
    v29 = v122[4];
    v123 = v122[3];
    v124 = v29;
    v30 = lazy protocol witness table accessor for type String and conformance String();

    v31 = MEMORY[0x277D837D0];
    v123 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v124 = v32;
    v102 = v30;
    v104 = v30;
    v100 = v30;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v35 = v34;

    v36 = *(v113 + 32);
    v123 = *(v113 + 24);
    v124 = v36;

    MEMORY[0x266771550](95, 0xE100000000000000);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v37);

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v33, v35);

    v38 = v123;
    v39 = v124;
    v40 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
    v41 = MEMORY[0x266771450](v38, v39);
    [v40 setSpecializedName_];

    v42 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
    [v40 setConstantValues_];

    v43 = MEMORY[0x266771450](v115, v28);

    [v40 setName_];

    LODWORD(v123) = v15;
    v44 = [v40 constantValues];
    if (v44)
    {
      v45 = v44;
      [v44 setConstantValue:&v123 type:33 atIndex:100];
    }

    v46 = MetalStitchingBackend.makeFunction(_:descriptor:)(a3, v40);
    v4 = v121;
    v10 = v112;
    if (v121)
    {
      break;
    }

    v47 = v46;

    specialized OrderedDictionary.subscript.setter(v47, v38, v39);

    outlined destroy of [Input](v125, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
    v13 = v117 + 56;
    v12 = v120;
    if (v111 == v120)
    {
      goto LABEL_37;
    }
  }

LABEL_45:

LABEL_46:

LABEL_47:
  outlined destroy of [Input](v125, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMd, &_sSi6offset_11ShaderGraph16DataTypePropertyV_s6UInt32Vt7elementtMR);
LABEL_48:
  v96 = *MEMORY[0x277D85DE8];
}

uint64_t sub_265E1EF14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, __int128 *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = result + 40; ; i += 48)
    {
      v9 = *(i - 8);
      v8 = *i;
      v10 = *(i + 8);
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 16);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(v12, a2, a3, 0x656361667275735FLL, 0xE800000000000000, &one-time initialization token for surface_parameters_private, &static MetalDataType.re.surface_parameters_private);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = result + 40; ; i += 48)
    {
      v9 = *(i - 8);
      v8 = *i;
      v10 = *(i + 8);
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 16);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(v12, a2, a3, 0x7274656D6F65675FLL, 0xE900000000000079, &one-time initialization token for geometry_parameters_private, &static MetalDataType.re.geometry_parameters_private);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors()
{
  result = lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors;
  if (!lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors()
{
  result = lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors;
  if (!lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphCompilerErrors and conformance GraphCompilerErrors);
  }

  return result;
}

uint64_t sub_265E1F248()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OrderedSet._UnstableInternals.base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet._UnstableInternals.base.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedSet.__unstable.getter(uint64_t a1)
{

  return a1;
}

uint64_t key path getter for OrderedSet.__unstable : <A>OrderedSet<A>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = OrderedSet._UnstableInternals.init(_:)(*a1, a1[1]);
  a2[1] = v3;
}

uint64_t key path setter for OrderedSet.__unstable : <A>OrderedSet<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  OrderedSet._UnstableInternals.init(_:)(*a2, a2[1]);

  v9 = OrderedSet.init()(v5);
  v11 = v10;

  *a2 = v9;
  a2[1] = v11;
  v13[0] = v7;
  v13[1] = v8;
  $defer #1 <A>() in OrderedSet.__unstable.modify(a2, v13);
}

void (*OrderedSet.__unstable.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1)
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
  *(v5 + 16) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(a2 + 16);
  v6[3] = v9;
  v6[4] = *(a2 + 24);
  *v6 = v7;
  v6[1] = v8;
  *v2 = OrderedSet.init()(v9);
  v2[1] = v10;
  return OrderedSet.__unstable.modify;
}

void OrderedSet.__unstable.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  $defer #1 <A>() in OrderedSet.__unstable.modify((*a1)[2], *a1);
  v5 = *v1;
  v4 = v1[1];

  free(v1);
}

uint64_t $defer #1 <A>() in OrderedSet.__unstable.modify(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v2;
}

uint64_t OrderedSet.__unstable.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = *(a3 + 24);
  v9 = OrderedSet.init()(*(a3 + 16));
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  v13[0] = a1;
  v13[1] = a2;
  $defer #1 <A>() in OrderedSet.__unstable.modify(v3, v13);
}

__n128 sub_265E1F68C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet._UnstableInternals()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Void __swiftcall OrderedDictionary.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 32);
  type metadata accessor for OrderedSet();
  OrderedSet.removeAll(keepingCapacity:)(keepingCapacity);
  v6 = *(v2 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t OrderedDictionary.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[2];
  v7 = a4[4];
  v8 = type metadata accessor for OrderedSet();
  OrderedSet.remove(at:)(a3, v8);
  v9 = a4[3];
  type metadata accessor for ContiguousArray();
  return ContiguousArray.remove(at:)();
}

uint64_t OrderedDictionary.removeSubrange(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v7 = a3[4];
  v8 = type metadata accessor for OrderedSet();
  OrderedSet.removeSubrange(_:)(a1, a2, v8);
  v9 = a3[3];
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return RangeReplaceableCollection.removeSubrange(_:)();
}

uint64_t OrderedDictionary.removeSubrange<A>(_:)(uint64_t a1, void *a2)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for OrderedDictionary.Elements();
  swift_getWitnessTable();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  return OrderedDictionary.removeSubrange(_:)(v10, v11, a2);
}

uint64_t OrderedDictionary.removeLast()(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *(v3 + 16);
  v7 = a3[3];
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = ContiguousArray.count.getter();
    if (!__OFSUB__(result, 1))
    {
      return OrderedDictionary.remove(at:)(a1, a2, result - 1, a3);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    v5 = *(v2 + 16);
    v6 = *(v1 + 24);
    if (ContiguousArray.count.getter() >= a1)
    {
      v7 = *(v3 + 16);
      v8 = *(v3 + 32);
      type metadata accessor for OrderedSet();
      OrderedSet.removeLast(_:)(a1);
      type metadata accessor for ContiguousArray();
      swift_getWitnessTable();
      swift_getWitnessTable();
      RangeReplaceableCollection<>.removeLast(_:)();
      return;
    }
  }

  __break(1u);
}

uint64_t OrderedDictionary.removeFirst()(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *(v3 + 16);
  v7 = a3[3];
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    return OrderedDictionary.remove(at:)(a1, a2, 0, a3);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    v5 = *(v2 + 16);
    v6 = *(v1 + 24);
    if (ContiguousArray.count.getter() >= a1)
    {
      v7 = *(v3 + 16);
      v8 = *(v3 + 32);
      type metadata accessor for OrderedSet();
      OrderedSet.removeFirst(_:)(a1);
      type metadata accessor for ContiguousArray();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst(_:)(a1);
      return;
    }
  }

  __break(1u);
}

void *OrderedDictionary.removeAll(where:)(uint64_t (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v8 = a3[3];
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v16[0] = v11;
  v16[1] = v10;
  v12 = a3[2];
  v13 = a3[4];
  closure #1 in OrderedDictionary.removeAll(where:)(v16, a1, a2, v8, &v15, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v4)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v16, v11, v10);
  }

  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v16, v11, v10);
  v16[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySiGMd, &_ss16PartialRangeFromVySiGMR);
  lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
  return OrderedDictionary.removeSubrange<A>(_:)(v16, a3);
}

Swift::Void __swiftcall OrderedDictionary.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 32);
  type metadata accessor for OrderedSet();
  OrderedSet.reserveCapacity(_:)(a1);
  v6 = *(v2 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(a1);
}

void *closure #1 in OrderedDictionary.removeAll(where:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X7>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = type metadata accessor for OrderedSet();
  result = OrderedSet._halfStablePartition<A>(values:by:)(v12, v13, a2, a3, v14, a4);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss16PartialRangeFromVySiGMd, &_ss16PartialRangeFromVySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 72;
  v6 = MEMORY[0x277D84F90];
  v35 = result + 72;
  do
  {
    v36 = v6;
    for (i = (v5 + 48 * v4); ; i += 48)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }

      v59 = v4 + 1;
      v8 = *(i - 5);
      v9 = *(i - 4);
      v37 = *i;
      v11 = *(i - 2);
      v10 = *(i - 1);
      v12 = *(i - 3);
      v13 = a2[9];
      v57[8] = a2[8];
      v58[0] = v13;
      *(v58 + 9) = *(a2 + 153);
      v14 = a2[5];
      v57[4] = a2[4];
      v57[5] = v14;
      v15 = a2[7];
      v57[6] = a2[6];
      v57[7] = v15;
      v16 = a2[1];
      v57[0] = *a2;
      v57[1] = v16;
      v17 = a2[3];
      v57[2] = a2[2];
      v57[3] = v17;
      v18 = v12;
      specialized ShaderGraphNode.output(labeled:)(&v47, 7632239, 0xE300000000000000, v12);
      if (!v48)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        outlined copy of NodePersonality(v8);

        outlined init with copy of UserGraph(v57, &v40);
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *&v40 = v8;
        *(&v40 + 1) = v9;
        *&v41 = v18;
        *(&v41 + 1) = v11;
        *&v42 = v10;
        BYTE8(v42) = v37;
        _print_unlocked<A, B>(_:_:)();
        v32 = v38;
        v33 = v39;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v34 = 14;
        *(v34 + 8) = v32;
        *(v34 + 16) = v33;
        swift_willThrow();
        outlined destroy of UserGraph(v57);
        outlined consume of NodePersonality(v8);
        v6 = v36;

        return v6;
      }

      v19 = v2;
      v52[0] = v47;
      v52[1] = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
      outlined copy of NodePersonality(v8);

      outlined init with copy of UserGraph(v57, &v40);
      v20 = UserGraph.edges(from:)(v52);

      v56 = v53;
      outlined destroy of String(&v56);
      outlined destroy of UserGraph(v57);
      if (*(v20 + 16))
      {
        break;
      }

      outlined consume of NodePersonality(v8);

      ++v4;
      v2 = v19;
      if (v59 == v19)
      {
        return v36;
      }
    }

    v21 = *(v20 + 96);
    v43 = *(v20 + 80);
    v44 = v21;
    v22 = *(v20 + 128);
    v45 = *(v20 + 112);
    v46 = v22;
    v23 = *(v20 + 48);
    v40 = *(v20 + 32);
    v41 = v23;
    v42 = *(v20 + 64);
    outlined init with copy of Edge(&v40, &v38);

    outlined consume of NodePersonality(v8);

    v6 = v36;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
      v6 = result;
    }

    v25 = *(v6 + 16);
    v24 = *(v6 + 24);
    if (v25 >= v24 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v25 + 1;
    v26 = (v6 + 112 * v25);
    v27 = v40;
    v28 = v42;
    v26[3] = v41;
    v26[4] = v28;
    v26[2] = v27;
    v29 = v43;
    v30 = v44;
    v31 = v46;
    v26[7] = v45;
    v26[8] = v31;
    v26[5] = v29;
    v26[6] = v30;
    v2 = v19;
    v4 = v59;
    v5 = v35;
  }

  while (v59 != v19);
  return v6;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = result + 40; ; i += 48)
    {
      v9 = *(i - 8);
      v8 = *i;
      v10 = *(i + 8);
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 16);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #1 in GraphCompiler.extract(node:from:withName:)(v12, a2, a3);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

{
  v49 = *(result + 16);
  if (v49)
  {
    v4 = 0;
    v24 = result + 32;
    v5 = a2 + 56;
    do
    {
      v6 = v24 + 56 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *(v6 + 48);
      v12 = *(v6 + 40);
      v13 = *(v6 + 32);
      *&v45 = v8;
      *(&v45 + 1) = v7;
      *&v46 = v9;
      *(&v46 + 1) = v10;
      *&v47 = v13;
      BYTE8(v47) = v12;
      v48 = v11;
      if (*(a2 + 16))
      {
        v14 = *(a2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if ((*(v5 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(a2 + 48) + 16 * v17);
            v20 = *v19 == v9 && v19[1] == v10;
            if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v5 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          specialized OrderedDictionary.subscript.getter(v8, *a3, a3[1], a3[2], &v26);
          v21 = v27;
          if (v27)
          {
            v22 = v26;
            specialized OrderedDictionary.subscript.getter(&v45, v28, v29, v30, &v31);
            outlined consume of UserGraph.Adjacent?(v22, v21);
            if (v32 > 1)
            {
              v38 = v33;
              v39 = v34;
              v40 = v35;
              v36 = v33;
              v41 = v45;
              v42 = v46;
              v43 = v47;
              v44 = v48;
              v37[0] = v31;
              v37[1] = v32;

              outlined init with copy of [Input](&v31, v25, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);

              outlined init with copy of String(&v36, v25);
              UserGraph.remove(_:)(v37);
              outlined destroy of Edge(v37);

              outlined destroy of String(&v36);
              outlined destroy of [Input](&v31, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
            }
          }
        }

LABEL_3:
      }

      ++v4;
    }

    while (v4 != v49);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[2];
  v39 = a1[1];
  v40 = v6;
  v8 = a1[4];
  v37 = a1[3];
  v38 = v7;
  v36 = v8;
  v9 = *(a1 + 1);
  v32 = *a1;
  v33 = v9;
  v34 = v8;
  outlined init with copy of [Input](&v40, &v25, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v39, &v25, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v38, &v25, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v37, &v25, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v36, &v25, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  while (1)
  {
    UserGraph.DepthFirstEdgeIterator.next()(v35);
    v29 = v35[4];
    v30 = v35[5];
    v31 = v35[6];
    v25 = v35[0];
    v26 = v35[1];
    v27 = v35[2];
    v28 = v35[3];
    if (!*(&v35[0] + 1))
    {
      break;
    }

    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    closure #2 in GraphCompiler.extract(node:from:withName:)(&v18, a2, a3);
    if (v3)
    {
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v11 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      outlined destroy of Edge(&v11);
      break;
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    outlined destroy of Edge(&v11);
  }
}

uint64_t GraphCompiler.init(material:)@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(a2, __src, 0x148uLL);
  v3 = &a2[*(type metadata accessor for GraphCompiler() + 20)];
  return OSSignposter.init(subsystem:category:)();
}

uint64_t type metadata accessor for GraphCompiler()
{
  result = type metadata singleton initialization cache for GraphCompiler;
  if (!type metadata singleton initialization cache for GraphCompiler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GraphCompiler.compile(for:options:)(void *a1, uint64_t a2)
{
  v364 = a2;
  v425 = *MEMORY[0x277D85DE8];
  v369 = type metadata accessor for OSSignposter();
  *&v353 = *(v369 - 8);
  v376 = v353;
  v4 = *(v353 + 64);
  MEMORY[0x28223BE20](v369);
  v354 = &v338 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostError();
  v366 = *(v6 - 8);
  v367 = v6;
  v7 = *(v366 + 64);
  MEMORY[0x28223BE20](v6);
  v365 = &v338 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v349 = &v338 - v10;
  MEMORY[0x28223BE20](v11);
  v351 = &v338 - v12;
  MEMORY[0x28223BE20](v13);
  *(&v353 + 1) = &v338 - v14;
  MEMORY[0x28223BE20](v15);
  v358 = &v338 - v16;
  v17 = type metadata accessor for MetalStitchingBackend();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v375 = (&v338 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for OSSignpostID();
  v382 = *(v20 - 8);
  v21 = v382[8];
  MEMORY[0x28223BE20](v20);
  v373 = &v338 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v350 = &v338 - v24;
  MEMORY[0x28223BE20](v25);
  v355 = &v338 - v26;
  MEMORY[0x28223BE20](v27);
  v359 = (&v338 - v28);
  MEMORY[0x28223BE20](v29);
  v360 = &v338 - v30;
  MEMORY[0x28223BE20](v31);
  v372 = (&v338 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v338 - v34;
  v36 = v2[40];
  v378 = v2[39];
  v383 = v36;
  v37 = *(type metadata accessor for GraphCompiler() + 20);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v370 = a1;
  v368 = [a1 registryID];
  v380 = v37;
  v377 = v2;
  v38 = v20;
  v39 = OSSignposter.logHandle.getter();
  v40 = static os_signpost_type_t.begin.getter();
  v41 = OS_os_log.signpostsEnabled.getter();
  v371 = v20;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v39, v40, v43, "compile", "", v42, 2u);
    v44 = v42;
    v38 = v371;
    MEMORY[0x266773120](v44, -1, -1);
  }

  v381 = v35;
  v46 = v382 + 2;
  v45 = v382[2];
  v45(v372, v35, v38);
  v47 = type metadata accessor for OSSignpostIntervalState();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v361 = v47;
  swift_allocObject();
  v379 = OSSignpostIntervalState.init(id:isOpen:)();
  v50 = *v377;
  v51 = v377[1];
  v52 = v375;
  v53 = *(v376 + 16);
  v54 = v375 + *(v17 + 24);
  v376 += 16;
  v352 = v53;
  v53(v54, &v380[v377], v369);
  v55 = *(v17 + 28);
  v56 = v381;
  v362 = v45;
  v363 = v46;
  v45((v52 + v55), v381, v38);
  v356 = v51;
  v357 = v50;
  *v52 = v50;
  v52[1] = v51;
  v57 = v383;
  v52[2] = v378;
  v52[3] = v57;
  v58 = one-time initialization token for builtInLibraryCache;

  if (v58 != -1)
  {
    v59 = swift_once();
  }

  v60 = static GraphCompiler.builtInLibraryCache;
  MEMORY[0x28223BE20](v59);
  v61 = v377;
  *(&v338 - 4) = v368;
  *(&v338 - 3) = v61;
  v62 = v370;
  *(&v338 - 2) = v56;
  *(&v338 - 1) = v62;
  os_unfair_lock_lock((v60 + 40));
  v63 = v374;
  partial apply for closure #1 in GraphCompiler.compile(for:options:)((v60 + 16), v405);
  v374 = v63;
  if (v63)
  {
    os_unfair_lock_unlock((v60 + 40));
    outlined destroy of MetalStitchingBackend(v375);
LABEL_24:

    v94 = OSSignposter.logHandle.getter();
    v95 = v373;
    OSSignpostIntervalState.signpostID.getter();
    v96 = static os_signpost_type_t.end.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {

      v97 = v365;
      checkForErrorAndConsumeState(state:)();

      v99 = v366;
      v98 = v367;
      v100 = (*(v366 + 88))(v97, v367);
      v101 = v374;
      if (v100 == *MEMORY[0x277D85B00])
      {
        v102 = 0;
        v103 = 0;
        v104 = "[Error] Interval already ended";
      }

      else
      {
        (*(v99 + 8))(v97, v98);
        v104 = "Compile Failure: %s";
        v103 = 2;
        v102 = 1;
      }

      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v405[0] = v107;
      *v106 = v103;
      *(v106 + 1) = v102;
      *(v106 + 2) = 2080;
      *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v383, v405);
      v108 = v373;
      v109 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v94, v96, v109, "compile", v104, v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x266773120](v107, -1, -1);
      MEMORY[0x266773120](v106, -1, -1);

      v105 = v382[1];
      v38 = v371;
      v105(v108, v371);
    }

    else
    {

      v105 = v382[1];
      v105(v95, v38);
      v101 = v374;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, logger);
    v111 = v383;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116 = v111;
      v117 = v115;
      *&v405[0] = v115;
      *v114 = 136315138;
      *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v116, v405);
      _os_log_impl(&dword_265D7D000, v112, v113, "Compile failed for material: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      MEMORY[0x266773120](v117, -1, -1);
      MEMORY[0x266773120](v114, -1, -1);
    }

    v118 = v381;
    v119 = v101;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v122 = 138412290;
      v124 = v101;
      v125 = _swift_stdlib_bridgeErrorToNSError();
      *(v122 + 4) = v125;
      *v123 = v125;
      _os_log_impl(&dword_265D7D000, v120, v121, "%@", v122, 0xCu);
      outlined destroy of [Input](v123, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v123, -1, -1);
      MEMORY[0x266773120](v122, -1, -1);
    }

    swift_willThrow();

    v105(v118, v38);
    goto LABEL_37;
  }

  v64 = &v395;
  os_unfair_lock_unlock((v60 + 40));
  v348 = *&v405[0];
  v414 = 0;
  v415 = MEMORY[0x277D84F90];
  v416 = MEMORY[0x277D84F90];
  v65 = OSSignposter.logHandle.getter();
  v66 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v65, v66, v68, "graphTransforms", "", v67, 2u);
    v69 = v67;
    v38 = v371;
    MEMORY[0x266773120](v69, -1, -1);
  }

  v362(v372, v381, v38);
  v70 = *(v361 + 48);
  v71 = *(v361 + 52);
  swift_allocObject();
  v72 = OSSignpostIntervalState.init(id:isOpen:)();
  v73 = *(v61 + 15);
  v74 = *(v61 + 13);
  v411 = *(v61 + 14);
  v412 = v73;
  v75 = *(v61 + 15);
  v413[0] = *(v61 + 16);
  *(v413 + 9) = *(v61 + 265);
  v76 = *(v61 + 10);
  v77 = *(v61 + 12);
  v408 = *(v61 + 11);
  v409 = v77;
  v78 = *(v61 + 12);
  v410 = *(v61 + 13);
  v79 = *(v61 + 8);
  v405[0] = *(v61 + 7);
  v405[1] = v79;
  v80 = *(v61 + 10);
  v82 = *(v61 + 7);
  v81 = *(v61 + 8);
  v406 = *(v61 + 9);
  v407 = v80;
  v402 = v411;
  v403 = v75;
  v404[0] = *(v61 + 16);
  *(v404 + 9) = *(v61 + 265);
  v399 = v408;
  v400 = v78;
  v401 = v74;
  v395 = v82;
  v396 = v81;
  v397 = v406;
  v398 = v76;
  v83 = *(v364 + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace);
  outlined init with copy of UserGraph(v405, v386);
  v84 = v374;
  GraphCompiler.convertColorConstants(to:in:)(v83, &v395);
  v85 = v360;
  if (v84)
  {
    v374 = v84;
    outlined destroy of MetalStitchingBackend(v375);

    swift_unknownObjectRelease();
    v392 = v402;
    v393 = v403;
    v394[0] = v404[0];
    *(v394 + 9) = *(v404 + 9);
    v86 = v397;
    v388 = v398;
    v389 = v399;
    v390 = v400;
    v391 = v401;
LABEL_23:
    v93 = *(v64 + 16);
    v386[0] = *v64;
    v386[1] = v93;
    v387 = v86;
    outlined destroy of UserGraph(v386);
    goto LABEL_24;
  }

  v347 = v72;
  UserGraph.replaceCreateSamplerNodes()();
  if (v87)
  {
    v374 = v87;
    outlined destroy of MetalStitchingBackend(v375);

    swift_unknownObjectRelease();
LABEL_22:
    v392 = v402;
    v393 = v403;
    v394[0] = v404[0];
    *(v394 + 9) = *(v404 + 9);
    v86 = v397;
    v388 = v398;
    v389 = v399;
    v390 = v400;
    v391 = v401;
    goto LABEL_23;
  }

  GraphCompiler.extractSamplerNodes(in:into:device:)(&v395, &v414, v370);
  UserGraph.replaceWellKnownConstants()();
  v374 = v88;
  if (v88)
  {
    goto LABEL_21;
  }

  if (![v370 argumentBuffersSupport] || (*(v364 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    goto LABEL_180;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static DebugConfig.tier1SupportOverrideEnabled == 1)
  {
LABEL_180:
    v89 = *(v61 + 2);
    v421 = *(v61 + 1);
    v422[0] = v89;
    *(v422 + 9) = *(v61 + 41);
    v90 = *(v61 + 5);
    v423 = *(v61 + 4);
    v424[0] = v90;
    *(v424 + 9) = *(v61 + 89);
    v91 = v374;
    GraphCompiler.replaceTier1TextureGetterNodes(in:surface:geometryModifier:)(&v395, &v421, &v423);
    v374 = v91;
    if (v91)
    {
      goto LABEL_21;
    }
  }

  v92 = v374;
  GraphCompiler.replaceGettersWithFunctionCalls(in:)(&v395);
  v374 = v92;
  if (v92)
  {
LABEL_21:
    outlined destroy of MetalStitchingBackend(v375);

    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  v127 = v399;
  v128 = *(v399 + 16);

  if (v128)
  {
    v129 = 0;
    while (v129 < v128)
    {
      v130 = v127 + 32 + 48 * v129;
      v131 = *(v130 + 24);
      v133 = __OFADD__(v129++, 1);
      if (v131 == -7)
      {
        if (v133)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (v129 >= v128)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v133)
        {
          goto LABEL_162;
        }

        v134 = *(v130 + 40);
        v135 = *(v130 + 32);
        *&v386[0] = *v130;
        *(v386 + 8) = *(v130 + 8);
        *(&v386[1] + 1) = v131;
        *&v387 = v135;
        BYTE8(v387) = v134;
        v136 = v374;
        closure #1 in GraphCompiler.replaceMetalFunctionsWithStitchedNodes(in:)(v386, &v395);
        v374 = v136;
        if (v129 >= v128)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_158:

    swift_unknownObjectRelease();

    v331 = v350;
  }

  else
  {
LABEL_49:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMR);
    v137 = swift_allocObject();
    v138 = v61[2];
    v139 = v61[3];
    *(v137 + 32) = v138;
    v345 = v137 + 32;
    v346 = v139;
    v140 = v61[4];
    v141 = *(v61 + 56);
    *(v137 + 40) = v139;
    *(v137 + 48) = v140;
    *(v137 + 56) = *(v61 + 5);
    *(v137 + 72) = v141;
    v143 = v61[8];
    v142 = v61[9];
    v144 = v61[10];
    v343 = v61[11];
    v145 = v343;
    v344 = v144;
    v342 = v61[12];
    v146 = v342;
    *(v137 + 80) = v143;
    *(v137 + 88) = v142;
    *(v137 + 96) = v144;
    *(v137 + 104) = v145;
    *(v137 + 112) = v146;
    v128 = *(v61 + 104);
    *(v137 + 120) = v128;
    outlined copy of NodePersonality(v138);

    outlined copy of ShaderGraphNode?(v143, v142);
    v147 = 0;
    v148 = v137 + 16;
    v346 = MEMORY[0x277D84F90];
LABEL_50:
    v149 = v148 + 48 * v147;
    while (++v147 != 3)
    {
      v150 = v149 + 48;
      v128 = *(v149 + 24);
      v149 += 48;
      if (v128)
      {
        v344 = v148;
        v151 = *(v150 - 32);
        LODWORD(v342) = *(v150 + 8);
        v152 = *v150;
        v340 = *(v150 - 8);
        v341 = v151;
        v153 = *(v150 - 16);
        outlined copy of NodePersonality(v151);

        v339 = v153;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v343 = v152;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v346 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v346 + 2) + 1, 1, v346);
        }

        v156 = *(v346 + 2);
        v155 = *(v346 + 3);
        v148 = v344;
        if (v156 >= v155 >> 1)
        {
          v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1, v346);
          v148 = v344;
          v346 = v159;
        }

        v157 = v346;
        *(v346 + 2) = v156 + 1;
        v158 = &v157[48 * v156];
        *(v158 + 4) = v341;
        *(v158 + 5) = v128;
        *(v158 + 6) = v339;
        *(v158 + 7) = v340;
        *(v158 + 8) = v343;
        v158[72] = v342 & 1;
        goto LABEL_50;
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v160 = v374;
    v161 = specialized Sequence.compactMap<A>(_:)(v346, &v395);
    v374 = v160;
    if (v160)
    {
      outlined destroy of MetalStitchingBackend(v375);

      swift_unknownObjectRelease();

      v392 = v402;
      v393 = v403;
      v394[0] = v404[0];
      *(v394 + 9) = *(v404 + 9);
      v388 = v398;
      v389 = v399;
      v390 = v400;
      v391 = v401;
      v386[0] = v395;
      v386[1] = v396;
      v387 = v397;
      outlined destroy of UserGraph(v386);
      v38 = v371;
      goto LABEL_24;
    }

    v162 = v161;

    v163 = 0;
    v164 = MEMORY[0x277D84F90];
    v38 = *(v162 + 16);
    v165 = 88;
    while (1)
    {
      v166 = v165 + 112 * v163;
      do
      {
        if (v38 == v163)
        {

          UserGraph.removeUnconnectedNodesAndEdges(roots:)(v164);

          v178 = OSSignposter.logHandle.getter();
          OSSignpostIntervalState.signpostID.getter();
          LODWORD(v345) = static os_signpost_type_t.end.getter();

          v179 = OS_os_log.signpostsEnabled.getter();
          v346 = v164;
          if (v179)
          {

            v180 = v358;
            checkForErrorAndConsumeState(state:)();

            v182 = v366;
            v181 = v367;
            if ((*(v366 + 88))(v180, v367) == *MEMORY[0x277D85B00])
            {
              v183 = 0;
              v184 = 0;
              v185 = "[Error] Interval already ended";
            }

            else
            {
              (*(v182 + 8))(v180, v181);
              v185 = "%s";
              v184 = 2;
              v183 = 1;
            }

            v187 = swift_slowAlloc();
            v188 = swift_slowAlloc();
            *&v386[0] = v188;
            *v187 = v184;
            *(v187 + 1) = v183;
            *(v187 + 2) = 2080;
            *(v187 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v383, v386);
            v189 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_265D7D000, v178, v345, v189, "graphTransforms", v185, v187, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v188);
            MEMORY[0x266773120](v188, -1, -1);
            MEMORY[0x266773120](v187, -1, -1);

            v186 = v382[1];
            v38 = v371;
            (v186)(v85, v371);
          }

          else
          {

            v186 = v382[1];
            v38 = v371;
            (v186)(v85, v371);
          }

          v64 = &v395;
          if (one-time initialization token for debugMode != -1)
          {
LABEL_173:
            swift_once();
          }

          swift_beginAccess();
          v190 = static DebugConfig.debugMode;

          v191 = specialized Set.contains(_:)(3, v190);

          if (v191)
          {
            v192 = *(v64 + 128);
            v193 = *(v64 + 144);
            v194 = *(v64 + 96);
            v419[7] = *(v64 + 112);
            v419[8] = v192;
            v420[0] = v193;
            *(v420 + 9) = *(v64 + 153);
            v195 = *(v64 + 80);
            v419[4] = *(v64 + 64);
            v419[5] = v195;
            v419[6] = v194;
            v196 = *(v64 + 16);
            v419[0] = *v64;
            v419[1] = v196;
            v197 = *(v64 + 48);
            v419[2] = *(v64 + 32);
            v419[3] = v197;
            v198 = v374;
            createDotText(representing:)(v419);
            v374 = v198;
            if (v198)
            {
              outlined destroy of MetalStitchingBackend(v375);

              swift_unknownObjectRelease();

              v201 = *(v64 + 128);
              v202 = *(v64 + 144);
              v203 = *(v64 + 96);
              v392 = *(v64 + 112);
              v393 = v201;
              v394[0] = v202;
              *(v394 + 9) = *(v64 + 153);
              v204 = *(v64 + 64);
              v205 = *(v64 + 80);
              v86 = *(v64 + 32);
              v388 = *(v64 + 48);
              v389 = v204;
              v390 = v205;
              v391 = v203;
              goto LABEL_23;
            }

            v206 = v200;
            *&v386[0] = 0;
            *(&v386[0] + 1) = 0xE000000000000000;
            v207 = v199;
            _StringGuts.grow(_:)(25);
            v208 = v356;

            *&v386[0] = v357;
            *(&v386[0] + 1) = v208;
            MEMORY[0x266771550](95, 0xE100000000000000);
            MEMORY[0x266771550](v378, v383);
            MEMORY[0x266771550](0xD000000000000014, 0x8000000265F30890);
            specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v207, v206, *&v386[0], *(&v386[0] + 1), 7630692, 0xE300000000000000);
          }

          v209 = OSSignposter.logHandle.getter();
          v210 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            v212 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_265D7D000, v209, v210, v212, "functionGraph", "", v211, 2u);
            v213 = v211;
            v38 = v371;
            MEMORY[0x266773120](v213, -1, -1);
          }

          v362(v372, v381, v38);
          v214 = *(v361 + 48);
          v215 = *(v361 + 52);
          swift_allocObject();
          v216 = OSSignpostIntervalState.init(id:isOpen:)();
          v217 = *(v64 + 128);
          v218 = *(v64 + 144);
          v219 = *(v64 + 96);
          v417[7] = *(v64 + 112);
          v417[8] = v217;
          v418[0] = v218;
          *(v418 + 9) = *(v64 + 153);
          v220 = *(v64 + 80);
          v417[4] = *(v64 + 64);
          v417[5] = v220;
          v417[6] = v219;
          v221 = *(v64 + 16);
          v417[0] = *v64;
          v417[1] = v221;
          v222 = *(v64 + 48);
          v417[2] = *(v64 + 32);
          v417[3] = v222;
          v223 = v374;
          v224 = GraphCompiler.functionGraph(for:)(v417);
          v374 = v223;
          if (v223)
          {
            outlined destroy of MetalStitchingBackend(v375);

            swift_unknownObjectRelease();

            v225 = *(v64 + 128);
            v226 = *(v64 + 144);
            v227 = *(v64 + 96);
            v392 = *(v64 + 112);
            v393 = v225;
            v394[0] = v226;
            *(v394 + 9) = *(v64 + 153);
            v228 = *(v64 + 64);
            v229 = *(v64 + 80);
            v86 = *(v64 + 32);
            v388 = *(v64 + 48);
            v389 = v228;
            v390 = v229;
            v391 = v227;
            goto LABEL_23;
          }

          v360 = v224;

          v230 = OSSignposter.logHandle.getter();
          OSSignpostIntervalState.signpostID.getter();
          v231 = static os_signpost_type_t.end.getter();

          v232 = OS_os_log.signpostsEnabled.getter();
          v358 = v186;
          v345 = v216;
          if (v232)
          {

            v233 = *(&v353 + 1);
            checkForErrorAndConsumeState(state:)();

            if ((*(v366 + 88))(v233, v367) == *MEMORY[0x277D85B00])
            {
              v234 = 0;
              v235 = 0;
              v236 = "[Error] Interval already ended";
            }

            else
            {
              (*(v366 + 8))(*(&v353 + 1), v367);
              v236 = "%s";
              v235 = 2;
              v234 = 1;
            }

            v237 = swift_slowAlloc();
            v238 = swift_slowAlloc();
            *&v386[0] = v238;
            *v237 = v235;
            *(v237 + 1) = v234;
            *(v237 + 2) = 2080;
            *(v237 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v383, v386);
            v239 = v359;
            v240 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_265D7D000, v230, v231, v240, "functionGraph", v236, v237, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v238);
            MEMORY[0x266773120](v238, -1, -1);
            MEMORY[0x266773120](v237, -1, -1);

            (v358)(v239, v371);
          }

          else
          {

            (v186)(v359, v38);
          }

          v241 = static DebugConfig.debugMode;

          v242 = specialized Set.contains(_:)(3, v241);

          if (v242 & 1) != 0 || (v243 = static DebugConfig.debugMode, , v244 = specialized Set.contains(_:)(6, v243), , (v244))
          {
            v245 = v374;
            v246 = createDotText(representing:inputNodeIDs:outputNodeIDs:)(v360, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
            v374 = v245;
            if (v245)
            {
              outlined destroy of MetalStitchingBackend(v375);

              swift_unknownObjectRelease();

LABEL_153:
              v392 = v402;
              v393 = v403;
              v394[0] = v404[0];
              *(v394 + 9) = *(v404 + 9);
              v388 = v398;
              v389 = v399;
              v390 = v400;
              v391 = v401;
              v386[0] = v395;
              v386[1] = v396;
              v387 = v397;
              outlined destroy of UserGraph(v386);
              v38 = v371;
              goto LABEL_24;
            }

            v248 = v246;
            v249 = v247;
            *&v386[0] = 0;
            *(&v386[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(23);
            v250 = v356;

            *&v386[0] = v357;
            *(&v386[0] + 1) = v250;
            MEMORY[0x266771550](95, 0xE100000000000000);
            MEMORY[0x266771550](v378, v383);
            MEMORY[0x266771550](0xD000000000000012, 0x8000000265F30870);
            specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v248, v249, *&v386[0], *(&v386[0] + 1), 7630692, 0xE300000000000000);
          }

          v251 = OSSignposter.logHandle.getter();
          v252 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v253 = swift_slowAlloc();
            *v253 = 0;
            v254 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_265D7D000, v251, v252, v254, "samplerCacheCompile", "", v253, 2u);
            MEMORY[0x266773120](v253, -1, -1);
          }

          v64 = v372;
          v362(v372, v381, v371);
          v255 = *(v361 + 48);
          v256 = *(v361 + 52);
          swift_allocObject();
          v362 = OSSignpostIntervalState.init(id:isOpen:)();
          v384 = 0;
          v385 = 0xE000000000000000;
          v257 = v415;
          v38 = v416;
          v258 = *(v416 + 16);
          *(&v353 + 1) = 0x8000000265F30830;
          v359 = (v353 + 8);

          v186 = 0;
          *&v353 = 0xD00000000000002FLL;
          v372 = MEMORY[0x277D84F90];
          v363 = v257;
          v344 = v258;
LABEL_102:
          if (v186 <= v258)
          {
            v259 = v258;
          }

          else
          {
            v259 = v186;
          }

          v260 = 2 * v186;
          v261 = v38;
          v262 = v257;
          while (v259 != v186)
          {
            if (v186 >= v257[2])
            {
              __break(1u);
LABEL_170:
              __break(1u);
              goto LABEL_171;
            }

            if (v186 >= *(v38 + 16))
            {
              goto LABEL_170;
            }

            v262 += 2;
            v263 = v261 + 16;
            ++v186;
            v264 = *(v261 + v260 * 8 + 40);
            v261 += 16;
            if ((v264 & 1) == 0)
            {
              v265 = v262[v260 + 3];
              v340 = v262[v260 + 2];
              v266 = *(v263 + v260 * 8 + 16);
              type metadata accessor for MetalShaderCompiler();
              v267 = swift_allocObject();
              *(v267 + 16) = v266;
              type metadata accessor for MetalShaderCompiler.Scope();
              v268 = swift_allocObject();
              outlined copy of MetalLibrary(v266, 0);
              v269 = MEMORY[0x277D84F90];
              v268[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v268[3] = 0;
              swift_weakInit();
              v268[5] = v269;
              outlined copy of MetalLibrary(v266, 0);
              v343 = v266;
              outlined copy of MetalLibrary(v266, 0);
              v342 = v265;

              v268[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v269);
              v268[7] = v269;
              v268[8] = v269;
              v268[9] = v269;
              v268[10] = v269;
              swift_beginAccess();
              swift_weakAssign();
              *(v267 + 24) = v268;
              v341 = v267;
              v270 = MetalShaderCompiler.compile()();
              v374 = v271;
              if (v271)
              {

                outlined consume of MetalLibrary(v343, 0);
              }

              else
              {
                v386[0] = v353;
                MEMORY[0x266771550]();
                v361 = *(&v386[0] + 1);
                v272 = *&v386[0];
                v273 = static DebugConfig.debugMode;

                v274 = specialized Set.contains(_:)(4, v273);

                if (v274)
                {
                  MEMORY[0x266771550](v270._countAndFlagsBits, v270._object);

                  MEMORY[0x266771550](2570, 0xE200000000000000);
                }

                else
                {
                }

                v275 = [objc_allocWithZone(MEMORY[0x277CD6D08]) init];
                v352(v354, &v380[v377], v369);
                v276 = swift_slowAlloc();
                *v276 = 0;
                v277 = OSSignposter.logHandle.getter();
                v278 = static os_signpost_type_t.begin.getter();
                v279 = OSSignpostID.rawValue.getter();
                _os_signpost_emit_with_name_impl(&dword_265D7D000, v277, v278, v279, "waitingOnMetal", "makeFunction_n", v276, 2u);
                v280 = MEMORY[0x266771450](v272, v361);
                *&v386[0] = 0;
                v281 = v275;
                v282 = [v370 newLibraryWithSource:v280 options:v275 error:v386];

                v339 = v282;
                if (v282)
                {
                  v283 = *&v386[0];
                  v284 = static os_signpost_type_t.end.getter();
                  v285 = OSSignpostID.rawValue.getter();
                  _os_signpost_emit_with_name_impl(&dword_265D7D000, v277, v284, v285, "waitingOnMetal", "makeFunction_n", v276, 2u);

                  MEMORY[0x266773120](v276, -1, -1);

                  v286 = v343;
                  outlined consume of MetalLibrary(v343, 0);

                  (*v359)(v354, v369);
                  outlined consume of MetalLibrary(v286, 0);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v372 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v372[2] + 1, 1, v372);
                  }

                  v64 = v372[2];
                  v287 = v372[3];
                  if (v64 >= v287 >> 1)
                  {
                    v372 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v287 > 1), v64 + 1, 1, v372);
                  }

                  v288 = v372;
                  v372[2] = v64 + 1;
                  v289 = &v288[3 * v64];
                  v290 = v342;
                  v289[4] = v340;
                  v289[5] = v290;
                  v289[6] = v339;
                  v257 = v363;
                  v258 = v344;
                  goto LABEL_102;
                }

                v336 = *&v386[0];
                v337 = _convertNSErrorToError(_:)();

                v374 = v337;
                swift_willThrow();

                outlined consume of MetalLibrary(v343, 0);

                (*v359)(v354, v369);
              }

              swift_unknownObjectRelease();

              outlined consume of MetalLibrary(v343, 0);
              outlined destroy of MetalStitchingBackend(v375);

              goto LABEL_152;
            }
          }

          v291 = static DebugConfig.debugMode;

          v292 = specialized Set.contains(_:)(4, v291);

          if (v292)
          {
            v293 = v384;
            v294 = v385;
            v295 = HIBYTE(v385) & 0xF;
            if ((v385 & 0x2000000000000000) == 0)
            {
              v295 = v384 & 0xFFFFFFFFFFFFLL;
            }

            if (v295)
            {
              *&v386[0] = 0;
              *(&v386[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(18);
              v296 = v356;

              *&v386[0] = v357;
              *(&v386[0] + 1) = v296;
              MEMORY[0x266771550](95, 0xE100000000000000);
              MEMORY[0x266771550](v378, v383);
              MEMORY[0x266771550](0x72656C706D61735FLL, 0xED00006568636143);
              specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v293, v294, *&v386[0], *(&v386[0] + 1), 0x6C6174656DLL, 0xE500000000000000);
            }
          }

          v297 = OSSignposter.logHandle.getter();
          OSSignpostIntervalState.signpostID.getter();
          v298 = static os_signpost_type_t.end.getter();

          if (OS_os_log.signpostsEnabled.getter())
          {

            v299 = v351;
            checkForErrorAndConsumeState(state:)();

            if ((*(v366 + 88))(v299, v367) == *MEMORY[0x277D85B00])
            {
              v300 = 0;
              v301 = 0;
              v302 = "[Error] Interval already ended";
            }

            else
            {
              (*(v366 + 8))(v351, v367);
              v302 = "%s";
              v301 = 2;
              v300 = 1;
            }

            v304 = swift_slowAlloc();
            v305 = swift_slowAlloc();
            *&v386[0] = v305;
            *v304 = v301;
            *(v304 + 1) = v300;
            *(v304 + 2) = 2080;
            *(v304 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v383, v386);
            v306 = v355;
            v307 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_265D7D000, v297, v298, v307, "samplerCacheCompile", v302, v304, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v305);
            MEMORY[0x266773120](v305, -1, -1);
            MEMORY[0x266773120](v304, -1, -1);

            v303 = v306;
          }

          else
          {

            v303 = v355;
          }

          v308 = (v358)(v303, v371);
          if (one-time initialization token for samplerCache != -1)
          {
            goto LABEL_176;
          }

          goto LABEL_132;
        }

        if (v163 >= v38)
        {
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v128 = (v163 + 1);
        if (__OFADD__(v163, 1))
        {
          goto LABEL_160;
        }

        v167 = *(v162 + v166);
        v166 += 112;
        ++v163;
      }

      while (v167 == -7);
      if ((v167 & 0x8000000000000000) != 0)
      {
        break;
      }

      v345 = v165;
      if (v167 >= *(v399 + 16))
      {
        goto LABEL_175;
      }

      v168 = v164;
      v169 = v399 + 48 * v167;
      v170 = *(v169 + 32);
      v171 = *(v169 + 40);
      v173 = *(v169 + 48);
      v172 = *(v169 + 56);
      v340 = *(v169 + 64);
      v341 = v172;
      LODWORD(v339) = *(v169 + 72);
      v344 = v170;
      outlined copy of NodePersonality(v170);
      v343 = v171;

      v342 = v173;

      v164 = v168;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v168 + 2) + 1, 1, v168);
      }

      v175 = *(v164 + 2);
      v174 = *(v164 + 3);
      v165 = v345;
      if (v175 >= v174 >> 1)
      {
        v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v164);
        v165 = v345;
        v164 = v177;
      }

      *(v164 + 2) = v175 + 1;
      v176 = &v164[48 * v175];
      *(v176 + 4) = v344;
      *(v176 + 5) = v343;
      *(v176 + 6) = v342;
      *(v176 + 7) = v341;
      *(v176 + 8) = v340;
      v176[72] = v339;
      v163 = v128;
    }

    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    v308 = swift_once();
LABEL_132:
    v309 = static GraphCompiler.samplerCache;
    MEMORY[0x28223BE20](v308);
    v310 = v368;
    *(&v338 - 2) = v372;
    *(&v338 - 1) = v310;
    os_unfair_lock_lock(v309 + 10);
    v311 = v374;
    partial apply for closure #6 in GraphCompiler.compile(for:options:)(&v309[4]);
    v374 = v311;
    v312 = v309 + 10;
    if (v311)
    {
      os_unfair_lock_unlock(v312);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v312);
    v313 = MEMORY[0x277D84F90];
    *&v386[0] = MEMORY[0x277D84F90];
    v314 = *(v38 + 16);

    v64 = 0;
    v186 = v38 + 40;
    v376 = v313;
LABEL_134:
    if (v64 <= v314)
    {
      v315 = v314;
    }

    else
    {
      v315 = v64;
    }

    v316 = (v186 + 16 * v64);
    while (v315 != v64)
    {
      if (v64 >= v363[2])
      {
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if (v64 >= *(v38 + 16))
      {
        goto LABEL_172;
      }

      v317 = (v316 + 16);
      ++v64;
      v318 = *v316;
      v316 += 16;
      if (v318 == 1)
      {
        v319 = *(v317 - 3);
        v320 = swift_unknownObjectRetain();
        MEMORY[0x266771770](v320);
        if (*((*&v386[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v386[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v376 = *&v386[0];
        goto LABEL_134;
      }
    }

    v321 = v372[2];
    if (v321)
    {
      *&v386[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v322 = 6;
      v323 = v372;
      do
      {
        v324 = v323[v322];
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v325 = *(*&v386[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v322 += 3;
        --v321;
      }

      while (v321);

      v326 = *&v386[0];
    }

    else
    {

      v326 = MEMORY[0x277D84F90];
    }

    *&v386[0] = v376;
    specialized Array.append<A>(contentsOf:)(v326);
    v327 = v374;
    MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)(v360, v377[38], v348, *&v386[0], v364, v370);
    v374 = v327;
    if (v327)
    {
      outlined destroy of MetalStitchingBackend(v375);

      swift_unknownObjectRelease();
LABEL_152:

      goto LABEL_153;
    }

    v128 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    LOBYTE(v61) = static os_signpost_type_t.end.getter();

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
      goto LABEL_158;
    }

    v328 = v349;
    checkForErrorAndConsumeState(state:)();

    if ((*(v366 + 88))(v328, v367) == *MEMORY[0x277D85B00])
    {
      v329 = 0;
      v330 = 0;
      v380 = "[Error] Interval already ended";
      goto LABEL_164;
    }

LABEL_163:
    (*(v366 + 8))(v349, v367);
    v380 = "%s";
    v330 = 2;
    v329 = 1;
LABEL_164:
    v332 = swift_slowAlloc();
    v333 = swift_slowAlloc();
    *&v386[0] = v333;
    *v332 = v330;
    *(v332 + 1) = v329;
    *(v332 + 2) = 2080;
    *(v332 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v383, v386);
    v334 = v350;
    v335 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v128, v61, v335, "compile", v380, v332, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v333);
    MEMORY[0x266773120](v333, -1, -1);
    MEMORY[0x266773120](v332, -1, -1);

    swift_unknownObjectRelease();

    v331 = v334;
  }

  (v358)(v331, v371);
  outlined destroy of MetalStitchingBackend(v375);

  v392 = v402;
  v393 = v403;
  v394[0] = v404[0];
  *(v394 + 9) = *(v404 + 9);
  v388 = v398;
  v389 = v399;
  v390 = v400;
  v391 = v401;
  v386[0] = v395;
  v386[1] = v396;
  v387 = v397;
  outlined destroy of UserGraph(v386);
  (v358)(v381, v371);
LABEL_37:
  v126 = *MEMORY[0x277D85DE8];
}