uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransformationIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_15();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationIdentifierV10CodingKeys33_DE4882C25BFAFAB52ACE6D83CD9C0A39LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationIdentifierV10CodingKeys33_DE4882C25BFAFAB52ACE6D83CD9C0A39LLOGMR);
  OUTLINED_FUNCTION_5_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  v13 = *v0;
  v14 = v0[1];
  v17 = v0[2];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    OUTLINED_FUNCTION_11_8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_14_4();
}

uint64_t TransformationIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return MEMORY[0x1E12A9750](v3);
}

Swift::Int TransformationIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1E12A9750](v3);
  return Hasher._finalize()();
}

void TransformationIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationIdentifierV10CodingKeys33_DE4882C25BFAFAB52ACE6D83CD9C0A39LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationIdentifierV10CodingKeys33_DE4882C25BFAFAB52ACE6D83CD9C0A39LLOGMR);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = OUTLINED_FUNCTION_9_5();
    v16(v15);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v14;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_14_4();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransformationIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1E12A9750](v3);
  return Hasher._finalize()();
}

uint64_t TransformationDescriptor.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

void __swiftcall TransformationDescriptor.init(id:inputType:outputType:)(SiriUtilities::TransformationDescriptor *__return_ptr retstr, SiriUtilities::TransformationIdentifier id, SiriUtilities::TypeIdentifier inputType, SiriUtilities::TypeIdentifier outputType)
{
  v4 = *(id.name._countAndFlagsBits + 16);
  v5 = *id.name._object;
  v6 = *(id.name._object + 1);
  v7 = *id.version;
  v8 = *(id.version + 8);
  retstr->id.name = *id.name._countAndFlagsBits;
  retstr->id.version = v4;
  retstr->inputType.encoding._countAndFlagsBits = v5;
  retstr->inputType.encoding._object = v6;
  retstr->outputType.encoding._countAndFlagsBits = v7;
  retstr->outputType.encoding._object = v8;
}

uint64_t TransformationDescriptor.init(id:transformation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a2[3];
  v7 = a2[4];
  OUTLINED_FUNCTION_21_1(a2);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_3_9();
  v11(v10);
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  v12 = a2[3];
  v13 = a2[4];
  OUTLINED_FUNCTION_21_1(a2);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_3_9();
  v17(v16);
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;

  return __swift_destroy_boxed_opaque_existential_0(a2);
}

uint64_t TransformationDescriptor.init(name:version:transformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = a4[3];
  v8 = a4[4];
  OUTLINED_FUNCTION_21_1(a4);
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_3_9();
  v12(v11);
  a5[3] = v20;
  a5[4] = v21;
  v13 = a4[3];
  v14 = a4[4];
  OUTLINED_FUNCTION_21_1(a4);
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_3_9();
  v18(v17);
  a5[5] = v20;
  a5[6] = v21;

  return __swift_destroy_boxed_opaque_existential_0(a4);
}

void TransformationDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationDescriptorV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationDescriptorV10CodingKeysOGMR);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    OUTLINED_FUNCTION_4_10();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_4_10();
    KeyedDecodingContainer.decode(_:forKey:)();
    v19 = String.init<A>(_:)();
    v21 = v14;
    OUTLINED_FUNCTION_4_10();
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = String.init<A>(_:)();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_6_10();
    v18(v17);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v22;
    v4[3] = v19;
    v4[4] = v21;
    v4[5] = v20;
    v4[6] = v16;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_14_4();
}

void TransformationDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationDescriptorV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationDescriptorV10CodingKeysOGMR);
  OUTLINED_FUNCTION_5_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = v0[2];
  v22[4] = v0[3];
  v22[5] = v15;
  v16 = v0[4];
  v22[2] = v0[5];
  v22[3] = v16;
  v22[1] = v0[6];
  v17 = v3[3];
  v18 = v3[4];
  v19 = v3;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  lazy protocol witness table accessor for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_11_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_11_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_11_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_11_8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v12, v21);
  OUTLINED_FUNCTION_14_4();
}

SiriUtilities::TransformationDescriptor::CodingKeys_optional __swiftcall TransformationDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3._countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransformationDescriptor.CodingKeys.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TransformationDescriptor.CodingKeys.stringValue.getter()
{
  result = 1701667150;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6973726556;
      break;
    case 2:
      result = 0x7079547475706E49;
      break;
    case 3:
      result = 0x795474757074754FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TransformationDescriptor.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = TransformationDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransformationDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  MEMORY[0x1E12A9750](v3);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int TransformationDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1E12A9750](v3);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransformationDescriptor()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  Hasher.init(_seed:)();
  TransformationDescriptor.hash(into:)();
  return Hasher._finalize()();
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_13_4();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_12_5();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_13_4();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_12_5();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
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

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_1_13();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_12_5();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_1_13();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_12_5();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
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

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_1_13();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_12_5();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
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

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier.CodingKeys and conformance TransformationIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor.CodingKeys and conformance TransformationDescriptor.CodingKeys);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TransformationIdentifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for TransformationIdentifier(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for TransformationIdentifier(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationIdentifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t destroy for TransformationDescriptor(void *a1)
{
  v2 = a1[1];

  v3 = a1[4];

  v4 = a1[6];
}

uint64_t initializeWithCopy for TransformationDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for TransformationDescriptor(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  v5 = a1[4];
  a1[4] = a2[4];

  a1[5] = a2[5];
  v6 = a2[6];
  v7 = a1[6];
  a1[6] = v6;

  return a1;
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

uint64_t assignWithTake for TransformationDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransformationDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransformationDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransformationIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12A8C80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t SiriEnvironment.currentProcess.setter(uint64_t a1)
{
  v2 = type metadata accessor for CurrentProcess();
  OUTLINED_FUNCTION_7();
  v6 = *(v3 + 216);
  v4 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);

  return v6(a1, v2, v2, v4);
}

void (*SiriEnvironment.currentProcess.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for CurrentProcess();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  v6 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  a1[3] = v6;
  *a1 = v5(v3, v3, v6);
  return SiriEnvironment.currentProcess.modify;
}

void SiriEnvironment.currentProcess.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 216);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v10)
  {
    v13 = v4;
    v7();
  }

  else
  {
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    v7();
  }
}

uint64_t key path getter for CurrentProcess.mock : CurrentProcess@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CurrentProcess.mock : CurrentProcess(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v3(v4);
}

uint64_t CurrentProcess.mock.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUCurrentProcess_mock;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CurrentProcess.idleTracker.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZAA11IdleTrackerCSg_AA14CurrentProcessCTt3g5(a1, v5, KeyPath, v4);
}

uint64_t key path getter for CurrentProcess.idleTracker : CurrentProcess@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CurrentProcess.idleTracker : CurrentProcess(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void (*CurrentProcess.idleTracker.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[6] = v1;
  KeyPath = swift_getKeyPath();
  v3[7] = KeyPath;
  v3[8] = swift_getKeyPath();
  v5 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);

  v9 = v7(v8);
  if (v9 && ((*(*v9 + 144))(KeyPath), , v10 = v3[5], v10 != 1))
  {
  }

  else
  {
    (*(*v6 + 104))();

    v10 = v3[4];
  }

  v3[3] = v10;
  return CurrentProcess.idleTracker.modify;
}

void CurrentProcess.idleTracker.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v6 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(*a1 + 24);
    OUTLINED_FUNCTION_3_10(v6);
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v6);
  }

  free(v2);
}

void *key path getter for CurrentProcess.$idleTracker : CurrentProcess@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentProcess.$idleTracker : CurrentProcess(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);

  return v3(&v5);
}

uint64_t CurrentProcess.$idleTracker.getter()
{
  v1 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 152);

  v4(v5);
}

uint64_t CurrentProcess.$idleTracker.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  OUTLINED_FUNCTION_9_0();
  v4 = *(v1 + v3);
  v8[0] = v2;
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 160);

  v6(v8);
}

uint64_t (*CurrentProcess.$idleTracker.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  CurrentProcess.$idleTracker.getter();
  return CurrentProcess.$idleTracker.modify;
}

uint64_t CurrentProcess.$idleTracker.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    CurrentProcess.$idleTracker.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return CurrentProcess.$idleTracker.setter(&v5);
  }
}

uint64_t static CurrentProcess.default.getter()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = type metadata accessor for CurrentProcess();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 208);
  v3 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  v4 = v2(v0, v0, v3);

  return v4;
}

id CurrentProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentProcess.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentProcess();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance CurrentProcess(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CurrentProcess@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CurrentProcess();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CurrentProcess(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  *(a1 + 8) = result;
  return result;
}

uint64_t static Transformation.canTransform(from:to:lengthLimit:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v8 = *(static TransformationPluginLoader.sharedInstance + 4);
  v14[0] = v4;
  v14[1] = v5;
  v13[0] = v6;
  v13[1] = v7;
  OUTLINED_FUNCTION_7();
  v10 = *(v9 + 200);

  v11 = v10(v14, v13, a3);

  return v11 & 1;
}

uint64_t static Transformation.canTransform(from:to:lengthLimit:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  TypeInformation.init(for:)(v15);
  v7 = v16;
  v6 = v17;

  outlined destroy of TypeInformation(v15);
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v8 = *(static TransformationPluginLoader.sharedInstance + 4);
  v14[0] = v7;
  v14[1] = v6;
  v13[0] = v4;
  v13[1] = v5;
  OUTLINED_FUNCTION_7();
  v10 = *(v9 + 200);

  v11 = v10(v14, v13, a3);

  return v11 & 1;
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(a1, v6, a3, 0, a4);
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v11 = *(static TransformationPluginLoader.sharedInstance + 4);
  v14[0] = v9;
  v14[1] = v10;
  v12 = *(*v11 + 208);

  v12(a1, v14, a3, a4 & 1, a5);
}

uint64_t static Transformation.transform<A, B>(_:to:lengthLimit:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Transformation.transform<A, B>(_:to:lengthLimit:), a2, &v8, a3);
}

uint64_t closure #1 in static Transformation.transform<A, B>(_:to:lengthLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v18[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v17[0] = a2;
  v17[1] = a3;
  static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(v18, v17, a4, 0, a6);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:queue:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a5;
  v38 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = OUTLINED_FUNCTION_5_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v20 = OUTLINED_FUNCTION_5_0(v37);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a2;
  v29 = a2[1];
  outlined init with copy of Any(a1, v41);
  v30 = swift_allocObject();
  *(v30 + 16) = a7;
  outlined init with take of Any(v41, (v30 + 24));
  *(v30 + 56) = v28;
  *(v30 + 64) = v29;
  v31 = v36;
  *(v30 + 72) = v35;
  *(v30 + 80) = v31;
  *(v30 + 88) = a6;
  aBlock[4] = partial apply for closure #1 in static Transformation.transform<A>(_:to:lengthLimit:queue:completion:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v32 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12A90D0](0, v27, v19, v32);
  _Block_release(v32);
  (*(v14 + 8))(v19, v11);
  (*(v22 + 8))(v27, v37);
}

uint64_t closure #1 in static Transformation.transform<A>(_:to:lengthLimit:queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v25[1] = a6;
  v26 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v25 - v17;
  v19 = *(a7 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a2;
  v27[1] = a3;
  static Transformation.transform<A>(_:to:lengthLimit:)(a1, v27, a4, a7);
  (*(v19 + 16))(v18, v23, a7);
  swift_storeEnumTagMultiPayload();
  v26(v18);
  (*(v13 + 8))(v18, v12);
  return (*(v19 + 8))(v23, a7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t static Transformation.transformer<A, B>(from:to:lengthLimit:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v14 = *(static TransformationPluginLoader.sharedInstance + 4);
  *&v22 = v10;
  *(&v22 + 1) = v11;
  *&v21[0] = v12;
  *(&v21[0] + 1) = v13;
  v15 = *(*v14 + 224);

  v16 = v15(&v22, v21, a3, 0);

  specialized Collection.first.getter(v16, &v22);

  if (v23)
  {
    outlined init with take of Transforming(&v22, v24);
    outlined init with copy of Transforming(v24, &v22);
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    outlined init with take of Transforming(&v22, v17 + 32);
    Transformer.init(transform:)(partial apply for closure #1 in static Transformation.transformer<A, B>(from:to:lengthLimit:), v17, a4, a5, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v24);
    v19 = v21[0];
    v20 = v21[1];
  }

  else
  {
    result = outlined destroy of Transforming?(&v22);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a6 = v19;
  a6[1] = v20;
  return result;
}

uint64_t closure #1 in static Transformation.transformer<A, B>(from:to:lengthLimit:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v10 = type metadata accessor for Optional();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - v13;
  v16 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v24[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(v15 + 24))(v25, v24, v16, v15);
  result = __swift_destroy_boxed_opaque_existential_0(v24);
  if (!v5)
  {
    v19 = v23;
    v20 = v26;
    outlined init with copy of Any(v25, v24);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v14, 0, 1, a4);
      __swift_destroy_boxed_opaque_existential_0(v25);
      return (*(*(a4 - 8) + 32))(v20, v14, a4);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v14, 1, 1, a4);
      (*(v19 + 8))(v14, v10);
      lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
      swift_allocError();
      *v21 = 0xD000000000000026;
      *(v21 + 8) = 0x80000001DD26A820;
      *(v21 + 16) = 0;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  return result;
}

uint64_t static Transformation.resolve(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v4 = *(static TransformationPluginLoader.sharedInstance + 4);
  v8[0] = v1;
  v8[1] = v2;
  v8[2] = v3;
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 216);

  v6(v8);
}

uint64_t static Transformation.register(transformation:)(uint64_t a1)
{
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v2 = *(static TransformationPluginLoader.sharedInstance + 4);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 184);

  v4(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of Transforming?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for Transformation(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  MEMORY[0x1E12A9750](*a1);
  v34 = v7;
  v35 = v6;
  String.hash(into:)();
  v33 = v8;
  MEMORY[0x1E12A9750](v8);
  v31 = v10;
  v32 = v9;
  String.hash(into:)();
  v30 = v12;
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = a2 + 56;
  v15 = -1 << *(a2 + 32);
  v16 = v13 & ~v15;
  if (((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return 0;
  }

  v29 = v11;
  v17 = ~v15;
  v18 = *(a2 + 48);
  while (1)
  {
    v19 = (v18 + (v16 << 6));
    if (v5 == *v19)
    {
      v20 = v19[3];
      v21 = v19[4];
      v23 = v19[5];
      v22 = v19[6];
      v24 = v19[7];
      v25 = v19[1] == v35 && v19[2] == v34;
      if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v20 == v33)
      {
        v26 = v21 == v32 && v23 == v31;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v27 = v22 == v29 && v24 == v30;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t one-time initialization function for lineIn()
{
  v0 = *MEMORY[0x1E69C81E0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.lineIn = result;
  *algn_1EDB28AC8 = v2;
  return result;
}

uint64_t one-time initialization function for builtInMic()
{
  v0 = *MEMORY[0x1E69C81C8];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.builtInMic = result;
  unk_1EDB28B60 = v2;
  return result;
}

uint64_t one-time initialization function for wiredHeadsetMic()
{
  v0 = *MEMORY[0x1E69C81F0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.wiredHeadsetMic = result;
  *algn_1EDB28B18 = v2;
  return result;
}

uint64_t one-time initialization function for bluetoothHandsFreeDevice()
{
  v0 = *MEMORY[0x1E69C81C0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.bluetoothHandsFreeDevice = result;
  unk_1EDB28AE0 = v2;
  return result;
}

{
  v0 = *MEMORY[0x1E69C8170];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothHandsFreeDevice = result;
  unk_1EDB28420 = v2;
  return result;
}

uint64_t one-time initialization function for usbAudio()
{
  v0 = *MEMORY[0x1E69C81E8];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.usbAudio = result;
  *algn_1EDB28B78 = v2;
  return result;
}

{
  v0 = *MEMORY[0x1E69C81B0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.usbAudio = result;
  *algn_1EDB284D8 = v2;
  return result;
}

uint64_t one-time initialization function for carAudio()
{
  v0 = *MEMORY[0x1E69C81D0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.carAudio = result;
  unk_1EDB28B90 = v2;
  return result;
}

{
  v0 = *MEMORY[0x1E69C8190];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.carAudio = result;
  unk_1EDB284F0 = v2;
  return result;
}

uint64_t one-time initialization function for bluetoothDoAPDevice()
{
  v0 = *MEMORY[0x1E69C81B8];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.bluetoothDoAPDevice = result;
  unk_1EDB28AF8 = v2;
  return result;
}

uint64_t one-time initialization function for carJarvisDevice()
{
  v0 = *MEMORY[0x1E69C81D8];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.carJarvisDevice = result;
  unk_1EDB28B30 = v2;
  return result;
}

uint64_t one-time initialization function for knownValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11AudioSourceVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11AudioSourceVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD268540;
  if (one-time initialization token for lineIn != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDB28AC8;
  *(inited + 32) = static AudioSource.lineIn;
  *(inited + 40) = v1;
  v2 = one-time initialization token for builtInMic;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDB28B60;
  *(inited + 48) = static AudioSource.builtInMic;
  *(inited + 56) = v3;
  v4 = one-time initialization token for wiredHeadsetMic;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EDB28B18;
  *(inited + 64) = static AudioSource.wiredHeadsetMic;
  *(inited + 72) = v5;
  v6 = one-time initialization token for bluetoothHandsFreeDevice;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB28AE0;
  *(inited + 80) = static AudioSource.bluetoothHandsFreeDevice;
  *(inited + 88) = v7;
  v8 = one-time initialization token for usbAudio;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_1EDB28B78;
  *(inited + 96) = static AudioSource.usbAudio;
  *(inited + 104) = v9;
  v10 = one-time initialization token for carAudio;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDB28B90;
  *(inited + 112) = static AudioSource.carAudio;
  *(inited + 120) = v11;
  v12 = one-time initialization token for bluetoothDoAPDevice;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_1EDB28AF8;
  *(inited + 128) = static AudioSource.bluetoothDoAPDevice;
  *(inited + 136) = v13;
  v14 = one-time initialization token for carJarvisDevice;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDB28B30;
  *(inited + 144) = static AudioSource.carJarvisDevice;
  *(inited + 152) = v15;
  *(inited + 160) = 0x6E776F6E6B6E55;
  *(inited + 168) = 0xE700000000000000;
  v23 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 9, 0);
  for (i = 0; i != 144; i += 16)
  {
    v18 = *(inited + i + 32);
    v17 = *(inited + i + 40);
    v20 = *(v23 + 16);
    v19 = *(v23 + 24);

    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
    }

    *(v23 + 16) = v20 + 1;
    v21 = v23 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v23);
  static AudioSource.knownValues = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12ResponseModeVGMd, "2T");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD268800;
  if (one-time initialization token for displayOnly != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDB28A30;
  *(inited + 32) = static ResponseMode.displayOnly;
  *(inited + 40) = v1;
  v2 = one-time initialization token for displayForward;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1EDB289E8;
  *(inited + 48) = static ResponseMode.displayForward;
  *(inited + 56) = v3;
  v4 = one-time initialization token for voiceForward;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EDB28A00;
  *(inited + 64) = static ResponseMode.voiceForward;
  *(inited + 72) = v5;
  v6 = one-time initialization token for voiceOnly;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB289C8;
  *(inited + 80) = static ResponseMode.voiceOnly;
  *(inited + 88) = v7;
  v33 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v8 = v33;
  v10 = *(inited + 32);
  v9 = *(inited + 40);
  v11 = *(v33 + 16);
  v12 = *(v33 + 24);
  v13 = v11 + 1;

  if (v11 >= v12 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v11 + 1, 1);
    v8 = v33;
  }

  *(v8 + 16) = v13;
  v14 = v8 + 16 * v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  v16 = *(inited + 48);
  v15 = *(inited + 56);
  v17 = *(v8 + 24);
  v18 = v11 + 2;

  if (v13 >= v17 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18, 1);
    v8 = v33;
  }

  *(v8 + 16) = v18;
  v19 = v8 + 16 * v13;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  v21 = *(inited + 64);
  v20 = *(inited + 72);
  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = v23 + 1;

  if (v23 >= v22 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
  }

  v25 = v33;
  *(v33 + 16) = v24;
  v26 = v33 + 16 * v23;
  *(v26 + 32) = v21;
  *(v26 + 40) = v20;
  v28 = *(inited + 80);
  v27 = *(inited + 88);
  v29 = *(v33 + 24);
  v30 = v23 + 2;

  if (v24 >= v29 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30, 1);
    v25 = v33;
  }

  *(v25 + 16) = v30;
  v31 = v25 + 16 * v24;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v25);
  static ResponseMode.knownValues = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD2698A0;
  if (one-time initialization token for builtInSpeaker != -1)
  {
    swift_once();
  }

  v1 = unk_1EDB28488;
  *(inited + 32) = static AudioDestination.builtInSpeaker;
  *(inited + 40) = v1;
  v2 = one-time initialization token for builtInReceiver;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDB28470;
  *(inited + 48) = static AudioDestination.builtInReceiver;
  *(inited + 56) = v3;
  v4 = one-time initialization token for headphones;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EDB284B8;
  *(inited + 64) = static AudioDestination.headphones;
  *(inited + 72) = v5;
  v6 = one-time initialization token for bluetoothHandsFreeDevice;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB28420;
  *(inited + 80) = static AudioDestination.bluetoothHandsFreeDevice;
  *(inited + 88) = v7;
  v8 = one-time initialization token for bluetoothLEDevice;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_1EDB28458;
  *(inited + 96) = static AudioDestination.bluetoothLEDevice;
  *(inited + 104) = v9;
  v10 = one-time initialization token for bluetoothA2DPDevice;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDB28440;
  *(inited + 112) = static AudioDestination.bluetoothA2DPDevice;
  *(inited + 120) = v11;
  v12 = one-time initialization token for usbAudio;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EDB284D8;
  *(inited + 128) = static AudioDestination.usbAudio;
  *(inited + 136) = v13;
  v14 = one-time initialization token for carAudio;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDB284F0;
  *(inited + 144) = static AudioDestination.carAudio;
  *(inited + 152) = v15;
  v16 = one-time initialization token for hdmi;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *algn_1EDB28408;
  *(inited + 160) = static AudioDestination.hdmi;
  *(inited + 168) = v17;
  v18 = one-time initialization token for other;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_1EDB283F0;
  *(inited + 176) = static AudioDestination.other;
  *(inited + 184) = v19;
  v27 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0);
  for (i = 0; i != 160; i += 16)
  {
    v22 = *(inited + i + 32);
    v21 = *(inited + i + 40);
    v24 = *(v27 + 16);
    v23 = *(v27 + 24);

    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
    }

    *(v27 + 16) = v24 + 1;
    v25 = v27 + 16 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v27);
  static AudioDestination.knownValues = result;
  return result;
}

uint64_t AudioSource.aceValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioSource.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t AudioSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_5_1();
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static AudioSource.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AudioSource.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AudioSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource()
{
  result = lazy protocol witness table cache variable for type AudioSource and conformance AudioSource;
  if (!lazy protocol witness table cache variable for type AudioSource and conformance AudioSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSource and conformance AudioSource);
  }

  return result;
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v22 = a3;
  v21[0] = a1;
  v21[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OS_os_log.signpostsEnabled.getter();
  if ((v16 & 1) == 0)
  {
    return a5(v16, v17);
  }

  v18 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v19 = OUTLINED_FUNCTION_5_9();
  (a5)(v19);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_9();
  return (*(v10 + 8))(v15, v7);
}

void static SiriUtilitiesCrashHelper.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v16 = v11;
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v12 = 136315650;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a6;
    *(v12 + 22) = 2080;
    *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_1DD1FF000, v10, v16, "FatalError at %s:%lu - %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AA0F0](v17, -1, -1);
    MEMORY[0x1E12AA0F0](v12, -1, -1);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Logger.Subsystem.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Subsystem@<X0>(void *a1@<X8>)
{
  result = Logger.Subsystem.rawValue.getter();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

SiriUtilities::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t Logger.Category.rawValue.getter()
{
  v1 = 0x6F4C6E6967756C50;
  if (*v0 != 1)
  {
    v1 = 0x6D6E6F7269766E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656974696C697455;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category@<X0>(uint64_t *a1@<X8>)
{
  result = Logger.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

id static Logger.log.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t one-time initialization function for logger(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return Logger.init(_:)();
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)()
{
  OUTLINED_FUNCTION_3_11();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_0_20();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  OUTLINED_FUNCTION_0_20();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v8, v0);
}

uint64_t static Logger.end(_:_:log:)()
{
  OUTLINED_FUNCTION_3_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_0_20();

  return os_signpost(_:dso:log:name:signpostID:)();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t one-time initialization function for displayOnly()
{
  v0 = *MEMORY[0x1E69C8358];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.displayOnly = result;
  *algn_1EDB28A30 = v2;
  return result;
}

uint64_t one-time initialization function for displayForward()
{
  v0 = *MEMORY[0x1E69C8350];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.displayForward = result;
  *algn_1EDB289E8 = v2;
  return result;
}

uint64_t one-time initialization function for voiceForward()
{
  v0 = *MEMORY[0x1E69C8360];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.voiceForward = result;
  unk_1EDB28A00 = v2;
  return result;
}

uint64_t one-time initialization function for voiceOnly()
{
  v0 = *MEMORY[0x1E69C8368];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.voiceOnly = result;
  unk_1EDB289C8 = v2;
  return result;
}

uint64_t ResponseMode.aceValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ResponseMode.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t ResponseMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_5_1();
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ResponseMode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int ResponseMode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode()
{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

uint64_t static NamedTransformerLoggingIdentity.identity<A>(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v8 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a3 + 40);
  v10 = *(*(*(a3 + 8) + 8) + 8);
  v11 = String.init<A>(_:)();
  v13 = v12;
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  v15 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static NamedTransformerLoggingIdentity.identity<A>(name:), v14);

  v17 = 0;
  if (v15)
  {
    v17 = v15 == 1;
  }

  *a4 = v17;
  return result;
}

SiriUtilities::NamedTransformerLoggingIdentity_optional __swiftcall NamedTransformerLoggingIdentity.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NamedTransformerLoggingIdentity.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t NamedTransformerLoggingIdentity.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity()
{
  result = lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity;
  if (!lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity;
  if (!lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NamedTransformerLoggingIdentity@<X0>(unint64_t *a1@<X8>)
{
  result = NamedTransformerLoggingIdentity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NamedTransformerLoggingIdentity(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t PThreadMutex.__allocating_init(name:abortOnFail:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = swift_allocObject();
  PThreadMutex.init(name:abortOnFail:)(a1, a2, a3);
  return v6;
}

uint64_t PThreadMutex.init(name:abortOnFail:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v15;
    (*(v9 + 8))(v13, v8);
  }

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3 & 1;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v16, static Logger.logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_11_9();
    v13 = OUTLINED_FUNCTION_8_8();
    v41 = v13;
    *v19 = 136315138;
    v20 = *(v4 + 40);
    v21 = *(v4 + 48);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v41);

    *(v19 + 4) = v22;
    OUTLINED_FUNCTION_17_3(&dword_1DD1FF000, v23, v24, "PThreadMutex#init created mutex: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  v25 = swift_slowAlloc();
  *(v4 + 16) = v25;
  v26 = pthread_mutex_init(v25, 0);
  OUTLINED_FUNCTION_15_1();
  if (((*(v27 + 200))() & 1) == 0)
  {
    return v4;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD00000000000002DLL);
  v40[3] = v26;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A8C40](v28);

  v29 = OUTLINED_FUNCTION_3_12();
  MEMORY[0x1E12A8C40](v29, 0xE500000000000000);
  v30 = *(v4 + 40);
  v31 = *(v4 + 48);

  MEMORY[0x1E12A8C40](v30, v31);

  v32 = v42;
  OUTLINED_FUNCTION_12_6();
  if (!v33)
  {
    v34 = v41;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_11_9();
      v41 = OUTLINED_FUNCTION_7_9();
      *v13 = 136315138;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v32, &v41);

      *(v13 + 4) = v37;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v38, v36, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t PThreadMutex.deinit()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_11_9();
    v1 = OUTLINED_FUNCTION_8_8();
    v24[0] = v1;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 40), *(v2 + 48), v24);
    OUTLINED_FUNCTION_17_3(&dword_1DD1FF000, v7, v8, "PThreadMutex#deinit for mutex: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  pthread_mutex_destroy(*(v2 + 16));
  OUTLINED_FUNCTION_15_1();
  if (((*(v9 + 200))() & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(57);
  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD000000000000030);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A8C40](v10);

  v11 = OUTLINED_FUNCTION_3_12();
  MEMORY[0x1E12A8C40](v11, 0xE500000000000000);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);

  MEMORY[0x1E12A8C40](v12, v13);

  v14 = v24[1];
  OUTLINED_FUNCTION_12_6();
  if (!v15)
  {
    v16 = v24[0];

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_11_9();
      v24[0] = OUTLINED_FUNCTION_7_9();
      *v1 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v14, v24);

      *(v1 + 4) = v19;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v20, v18, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

LABEL_11:
    v21 = *(v2 + 16);
    OUTLINED_FUNCTION_27();
    v22 = *(v2 + 48);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t PThreadMutex.__deallocating_deinit()
{
  PThreadMutex.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

Swift::Bool __swiftcall PThreadMutex.lock()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_8_8();
    v26 = v6;
    *v5 = 136315394;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 40), *(v1 + 48), &v26);
    OUTLINED_FUNCTION_10_8(v7);
    OUTLINED_FUNCTION_18_3(&dword_1DD1FF000, v8, v9, "PThreadMutex#lock %s lockCount: %d");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  pthread_mutex_lock(*(v1 + 16));
  OUTLINED_FUNCTION_15_1();
  v11 = (*(v10 + 200))();
  if (v11)
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(54);
    OUTLINED_FUNCTION_6_11();
    MEMORY[0x1E12A8C40](0xD00000000000002DLL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A8C40](v12);

    v13 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x1E12A8C40](v13, 0xE500000000000000);
    MEMORY[0x1E12A8C40](*(v1 + 40), *(v1 + 48));
    OUTLINED_FUNCTION_12_6();
    if (!v14)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_11_9();
        v26 = OUTLINED_FUNCTION_8_8();
        v19 = OUTLINED_FUNCTION_16_3(4.8149e-34, v26, v18);

        *(v17 + 4) = v19;
        OUTLINED_FUNCTION_15_5(&dword_1DD1FF000, v20, v21, "%s");
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }

      return (v11 & 1) == 0;
    }
  }

  else
  {
    *(v1 + 24) = pthread_self();
    v22 = *(v1 + 32);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v1 + 32) = v24;
      return (v11 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall PThreadMutex.unlock()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_8_8();
    v26 = v6;
    *v5 = 136315394;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 40), *(v1 + 48), &v26);
    OUTLINED_FUNCTION_10_8(v7);
    OUTLINED_FUNCTION_18_3(&dword_1DD1FF000, v8, v9, "PThreadMutex#unlock %s lockCount: %d");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  pthread_mutex_unlock(*(v1 + 16));
  OUTLINED_FUNCTION_15_1();
  v11 = (*(v10 + 200))();
  if (v11)
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(58);
    OUTLINED_FUNCTION_6_11();
    MEMORY[0x1E12A8C40](0xD000000000000031);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A8C40](v12);

    v13 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x1E12A8C40](v13, 0xE500000000000000);
    MEMORY[0x1E12A8C40](*(v1 + 40), *(v1 + 48));
    OUTLINED_FUNCTION_12_6();
    if (!v14)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_11_9();
        v26 = OUTLINED_FUNCTION_8_8();
        v19 = OUTLINED_FUNCTION_16_3(4.8149e-34, v26, v18);

        *(v17 + 4) = v19;
        OUTLINED_FUNCTION_15_5(&dword_1DD1FF000, v20, v21, "%s");
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }

      return (v11 & 1) == 0;
    }
  }

  else
  {
    v22 = *(v1 + 32);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (!v23)
    {
      *(v1 + 32) = v24;
      if (!v24)
      {
        *(v1 + 24) = 0;
      }

      return (v11 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall PThreadMutex.getName()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t static PThreadMutex.mutexCheckIsLockedOnThisThread(mutex:)(_BYTE *a1)
{
  v3 = (*(*a1 + 224))();
  v4 = pthread_self();
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    return v6;
  }

  _StringGuts.grow(_:)(78);
  v7 = MEMORY[0x1E12A8C40](0xD00000000000002FLL, 0x80000001DD26B030);
  v8 = (*(*a1 + 240))(v7);
  MEMORY[0x1E12A8C40](v8);

  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD00000000000001DLL);
  if (a1[56] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_9();
      v12 = OUTLINED_FUNCTION_7_9();
      v20 = OUTLINED_FUNCTION_19_3(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);

      *(v1 + 4) = v20;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v21, v11, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t static PThreadMutex.mutexCheckIsNotLockedOnThisThread(mutex:)(_BYTE *a1)
{
  v3 = (*(*a1 + 224))();
  v4 = pthread_self();
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (!v5)
  {
    return v6;
  }

  _StringGuts.grow(_:)(82);
  v7 = MEMORY[0x1E12A8C40](0xD00000000000002FLL, 0x80000001DD26B030);
  v8 = (*(*a1 + 240))(v7);
  MEMORY[0x1E12A8C40](v8);

  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD000000000000021);
  if (a1[56] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_9();
      v12 = OUTLINED_FUNCTION_7_9();
      v20 = OUTLINED_FUNCTION_19_3(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);

      *(v1 + 4) = v20;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v21, v11, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v1 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v10 - v6);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v8 = swift_allocError();
  CancellationError.init()();
  *v7 = v8;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v7);
  return (*(v3 + 8))(v7, v2);
}

uint64_t ManagedContinuation.__allocating_init(_:)(uint64_t a1)
{
  v4 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for CheckedContinuation();
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_9_7();
  v13 = ManagedContinuation.__allocating_init()();
  OUTLINED_FUNCTION_5_11(v5);
  (*(v14 + 32))(v2, a1, v5);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_7();
  v16 = *(v15 + 88);
  swift_beginAccess();
  v17 = *(v8 + 40);

  v17(v13 + v16, v2, v6);
  swift_endAccess();

  return v13;
}

uint64_t ManagedContinuation.resume(throwing:)(void *a1)
{
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  OUTLINED_FUNCTION_5_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  *(&v15 - v11) = a1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  ManagedContinuation.resume(with:)(v12);
  return (*(v6 + 8))(v12, v4);
}

uint64_t type metadata completion function for ManagedContinuation(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    type metadata accessor for Result();
    result = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  OUTLINED_FUNCTION_61();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_58();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_56();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_55();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_54();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_53();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_52();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_51();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_50_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_49_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_48_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_47_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_46_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_45_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_44_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_43_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_42_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_41_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_40_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_39_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_38_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_37_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_36_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_35_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_34_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_33_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_32_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_31_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_30_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_29_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_28_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_27_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_26_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_25_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_24_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_23_3();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_22_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_21_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_20_3();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_19_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_18_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_17_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_16_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_15_6();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_14_5();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_13_6();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_12_8();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_11_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_10_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_9_8();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_8_9();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_7_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_6_12();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_5_12();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_4_11();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_60();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_59();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

{
  OUTLINED_FUNCTION_57();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1);
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

void *one-time initialization function for transformer()
{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

uint64_t static Transformer<>.transformer.getter()
{
  OUTLINED_FUNCTION_61();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_58();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_56();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_55();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_54();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_53();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_52();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_51();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_50_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_49_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_48_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_47_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_46_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_45_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_44_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_43_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_42_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_41_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_40_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_39_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_38_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_37_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_36_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_35_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_34_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_33_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_32_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_31_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_30_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_29_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_28_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_27_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_26_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_25_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_23_3();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_22_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_21_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_20_3();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_19_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_18_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_17_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_16_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_15_6();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_14_5();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_13_6();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_12_8();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_11_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_10_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_9_8();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_8_9();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_7_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6_12();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_5_12();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_4_11();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_60();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_59();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_57();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(a1, a2);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(a1, a2);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(a1, a2);
}

{
  v5 = *a1;
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

{
  v3 = *a1;
  v4 = a1[1];

  result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v3, v4);
  if (v6)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x80000001DD26B170;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unsigned int *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(int *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(a1, a2);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(a1, a2);
}

{
  v5 = *a1;
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(_DWORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LODWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(unsigned int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result >> 31)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

{
  if (HIDWORD(*result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(unint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(unint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(double *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147483650.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 4294967300.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(double *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(void *a1@<X8>, double *a2@<X0>)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    OUTLINED_FUNCTION_2(a1);
    return;
  }

LABEL_7:
  __break(1u);
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(double *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = Double.write<A>(to:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

float *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(float *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147500000.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147500000.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 4295000000.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

float *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(float *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.8447e19)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(void *a1@<X8>, float *a2@<X0>)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.2234e18)
  {
    OUTLINED_FUNCTION_2(a1);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = Float.write<A>(to:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

_BYTE *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1702195828;
  if (!*result)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE500000000000000;
  if (*result)
  {
    v3 = 0xE400000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = HIBYTE(v4) & 0xF;
  v6 = *result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v28 = result[1];

    v9 = specialized _parseInteger<A, B>(ascii:radix:)(v3, v4, 10);
    v30 = v29;

    if (v30)
    {
      goto LABEL_63;
    }

LABEL_65:
    *a2 = v9;
    return result;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = *result;
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v33 = v5;
      if (v5)
      {
LABEL_63:
        lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
        swift_allocError();
        *v27 = 0xD00000000000001CLL;
        *(v27 + 8) = 0x80000001DD26B190;
        *(v27 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_65;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v32[0] = *result;
  v32[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v32;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v32 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v32 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = specialized String.withCString<A>(_:)(a1, a2, &v4, MEMORY[0x1E69E7CD8]);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = _sSfySfSgxcSyRzlufCSS_Tt0g5(v3, v4);
  if ((result & 0x100000000) != 0)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v6 = 0xD00000000000001ELL;
    *(v6 + 8) = 0x80000001DD26B150;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = specialized String.withCString<A>(_:)(a1, a2, &v5, MEMORY[0x1E69E7CE0]);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

unsigned __int8 closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v18 = String.lowercased()();
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v5 + 8))(v9, v4);

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  result = Bool.init(_:)(v15).value;
  if (result == 2)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v17 = 0xD00000000000001DLL;
    *(v17 + 8) = 0x80000001DD26B130;
    *(v17 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t static Transformer<>.transformer.getter@<X0>(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = **a2;
  v7 = (*a2)[3];
  *a3 = v6;
  *(a3 + 8) = *(v5 + 1);
  *(a3 + 24) = v7;
}

uint64_t specialized closure #1 in Transformer.init(transform:)()
{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  v0 = OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_0_21(v0, v1);
}

{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  swift_willThrow();
  return 0;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 < 0x21 && ((0x100003E01uLL >> v6) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v4)
    {
      return v11;
    }

    return v8;
  }

  v10[0] = a1;
  v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v5 = v10;
LABEL_10:
  v7 = a4(v5, a3);
  if (!v7)
  {
    return 0;
  }

  return *v7 == 0;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

{
  v5 = *a1;
  v4 = a1[1];
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

{
  return sub_1DD216C28(a1, a2);
}

{
  return sub_1DD216BC8(a1, a2);
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(unsigned __int8 *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

{
  v5 = *a1;
  v4 = a1[1];
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

{
  return sub_1DD216B3C(a1, a2);
}

{
  return sub_1DD216ADC(a1, a2);
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

{
  return sub_1DD216B0C(a1, a2);
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

uint64_t specialized closure #1 in Transformer.init(transform:)(unsigned int *a1)
{
  return sub_1DD216A84(a1);
}

{
  return sub_1DD216B9C(a1);
}

{
  return sub_1DD216C5C(a1);
}

{
  return sub_1DD216CB4(a1);
}

uint64_t specialized closure #1 in Transformer.init(transform:)(uint64_t a1)
{
  return sub_1DD216AB0(a1);
}

{
  return sub_1DD216B70(a1);
}

{
  return sub_1DD216C88(a1);
}

{
  return sub_1DD216CE0(a1);
}

uint64_t static IdleTracker.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    OUTLINED_FUNCTION_8_10();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static IdleTracker.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void IdleTracker.__allocating_init(name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_10_11();
  IdleTracker.init(name:queue:timeout:timeoutAction:)();
}

void IdleTracker.init(name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v43 = v1;
  v44 = v2;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = OUTLINED_FUNCTION_5_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_5();
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = OUTLINED_FUNCTION_16(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_8_0();
  v20 = type metadata accessor for DispatchQoS();
  v21 = OUTLINED_FUNCTION_18_5(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v25 = &v0[OBJC_IVAR___SUIdleTracker_name];
  v40 = v9;
  *v25 = v9;
  *(v25 + 1) = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v47 = v26;

  MEMORY[0x1E12A8C40](v9, v7);
  static DispatchQoS.default.getter();
  v46 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v27, v28);
  v41 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  OUTLINED_FUNCTION_21_3();
  v29 = *MEMORY[0x1E69E8090];
  v30 = OUTLINED_FUNCTION_20_4();
  v31(v30);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = OBJC_IVAR___SUIdleTracker_timeout;
  v33 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v0[v32], v42, v33);
  v35 = &v0[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v35 = v43;
  *(v35 + 1) = v44;
  OUTLINED_FUNCTION_9_9();

  MEMORY[0x1E12A8C40](v40, v7);

  v36 = type metadata accessor for DeadlockDetectingLock();
  OUTLINED_FUNCTION_13_7();
  v37 = OUTLINED_FUNCTION_5_13();
  v38 = &v0[OBJC_IVAR___SUIdleTracker_lock];
  *(v38 + 3) = v36;
  *(v38 + 4) = &protocol witness table for DeadlockDetectingLock;
  *v38 = v37;
  v45.receiver = v0;
  v45.super_class = type metadata accessor for IdleTracker();
  v39 = objc_msgSendSuper2(&v45, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  (*(v34 + 8))(v42, v33);
  OUTLINED_FUNCTION_14();
}

void IdleTracker.init(lock:name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v43 = v1;
  v44 = v2;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v45 = v10;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = OUTLINED_FUNCTION_5_0(v11);
  v40 = v13;
  v41 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  OUTLINED_FUNCTION_8_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = OUTLINED_FUNCTION_16(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  OUTLINED_FUNCTION_8_0();
  v25 = type metadata accessor for DispatchQoS();
  v26 = OUTLINED_FUNCTION_18_5(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v30 = &v0[OBJC_IVAR___SUIdleTracker_name];
  *v30 = v9;
  *(v30 + 1) = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v48 = v31;

  MEMORY[0x1E12A8C40](v9, v7);

  static DispatchQoS.default.getter();
  v47 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v32, v33);
  v39 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v40 + 104))(v19, *MEMORY[0x1E69E8090], v41);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = OBJC_IVAR___SUIdleTracker_timeout;
  v35 = type metadata accessor for DispatchTimeInterval();
  v36 = *(v35 - 8);
  (*(v36 + 16))(&v0[v34], v42, v35);
  v37 = &v0[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v37 = v43;
  *(v37 + 1) = v44;
  outlined init with copy of Transforming(v45, &v0[OBJC_IVAR___SUIdleTracker_lock]);
  v46.receiver = v0;
  v46.super_class = type metadata accessor for IdleTracker();

  v38 = objc_msgSendSuper2(&v46, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  (*(v36 + 8))(v42, v35);
  __swift_destroy_boxed_opaque_existential_0(v45);
  OUTLINED_FUNCTION_14();
}

void IdleTracker.__allocating_init(name:queue:timeoutSeconds:timeoutAction:)()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_10_11();
  IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)();
}

void IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v1 = v0;
  v44 = v2;
  v45 = v3;
  v43 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = OUTLINED_FUNCTION_5_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_5();
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = OUTLINED_FUNCTION_16(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  OUTLINED_FUNCTION_8_0();
  v21 = type metadata accessor for DispatchQoS();
  v22 = OUTLINED_FUNCTION_18_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v26 = &v0[OBJC_IVAR___SUIdleTracker_name];
  *v26 = v10;
  *(v26 + 1) = v8;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v48 = v27;

  MEMORY[0x1E12A8C40](v10, v8);
  static DispatchQoS.default.getter();
  v47 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v28, v29);
  v42 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  OUTLINED_FUNCTION_21_3();
  v30 = *MEMORY[0x1E69E8090];
  v31 = OUTLINED_FUNCTION_20_4();
  v32(v31);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = OBJC_IVAR___SUIdleTracker_timeout;
  *&v1[OBJC_IVAR___SUIdleTracker_timeout] = v43;
  v34 = *MEMORY[0x1E69E7F48];
  v35 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_16(v35);
  (*(v36 + 104))(&v1[v33], v34);
  v37 = &v1[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v37 = v44;
  *(v37 + 1) = v45;
  OUTLINED_FUNCTION_9_9();

  MEMORY[0x1E12A8C40](v10, v8);

  v38 = type metadata accessor for DeadlockDetectingLock();
  OUTLINED_FUNCTION_13_7();
  v39 = OUTLINED_FUNCTION_5_13();
  v40 = &v1[OBJC_IVAR___SUIdleTracker_lock];
  *(v40 + 3) = v38;
  *(v40 + 4) = &protocol witness table for DeadlockDetectingLock;
  *v40 = v39;
  v46.receiver = v1;
  v46.super_class = type metadata accessor for IdleTracker();
  v41 = objc_msgSendSuper2(&v46, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  OUTLINED_FUNCTION_14();
}

uint64_t IdleTracker.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_8_0();
  v15 = v14 - v13;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for defaultTimeout != -1)
  {
    OUTLINED_FUNCTION_8_10();
  }

  v17 = __swift_project_value_buffer(v6, static IdleTracker.defaultTimeout);
  (*(v9 + 16))(v15, v17, v6);
  v18 = (*(ObjectType + 136))(a1, a2, 0, v15, implicit closure #1 in variable initialization expression of static IdleTracker.defaultAction, 0);
  v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t IdleTracker.idle.getter()
{
  v0 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v10, v12, v14, v16, v18);
  OUTLINED_FUNCTION_11_11(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v15, v17, v19, v21[0], v21[1], v21[2], v21[3]);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_6_13();
  v8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v20;
}

uint64_t closure #1 in IdleTracker.idle.getter@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  *a2 = *(*(a1 + v4) + 16) == 0;
  return result;
}

uint64_t IdleTracker.count.getter()
{
  v0 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v10, v12, v14, v16, v18);
  OUTLINED_FUNCTION_11_11(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v15, v17, v19, v21[0], v21[1], v21[2], v21[3]);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_6_13();
  v8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v20;
}

uint64_t closure #1 in IdleTracker.count.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  *a2 = *(*(a1 + v4) + 16);
  return result;
}

uint64_t IdleTracker.track(name:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transforming(v2 + OBJC_IVAR___SUIdleTracker_lock, v16);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v12 = v2;
  v13 = a1;
  v14 = a2;
  v7 = *(v6 + 24);
  v8 = type metadata accessor for AnyCancellable();
  v7(&v15, partial apply for closure #1 in IdleTracker.track(name:), &v11, v8, v5, v6);
  v9 = v15;
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v9;
}

uint64_t closure #1 in IdleTracker.track(name:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v39 = a2;
  v41 = type metadata accessor for UUID();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41, v8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR___SUIdleTracker_timer;
  if (*&a1[OBJC_IVAR___SUIdleTracker_timer])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.logger);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v38 = v16;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = a3;
      v20 = v19;
      v43[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v15[OBJC_IVAR___SUIdleTracker_name], *&v15[OBJC_IVAR___SUIdleTracker_name + 8], v43);
      v21 = v38;
      _os_log_impl(&dword_1DD1FF000, v38, v17, "IdleTracker:%s detects active condition; cancelling existing timer", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v22 = v20;
      a3 = v37;
      MEMORY[0x1E12AA0F0](v22, -1, -1);
      MEMORY[0x1E12AA0F0](v18, -1, -1);
    }

    else
    {
    }

    v23 = *&a1[v13];
    *&a1[v13] = 0;
    swift_unknownObjectRelease();
  }

  UUID.init()();
  v24 = OBJC_IVAR___SUIdleTracker_refs;
  swift_beginAccess();

  v25 = *&a1[v24];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&a1[v24];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, a3, v12, isUniquelyReferenced_nonNull_native);
  *&a1[v24] = v44;
  swift_endAccess();
  v28 = v40;
  v27 = v41;
  (*(v6 + 16))(v40, v12, v41);
  v29 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  (*(v6 + 32))(v30 + v29, v28, v27);
  v31 = type metadata accessor for AnyCancellable();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = a1;
  v35 = AnyCancellable.init(_:)();
  result = (*(v6 + 8))(v12, v27);
  *v42 = v35;
  return result;
}

uint64_t IdleTracker.track()()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = MEMORY[0x1E12A8BC0](v1);
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();

  return v3;
}

id IdleTracker.track(name:)()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v1);

  v3 = type metadata accessor for IdleTrackerActivity();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

id IdleTrackerActivity.__allocating_init(cancellable:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t one-time initialization function for defaultTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static IdleTracker.defaultTimeout);
  *__swift_project_value_buffer(v0, static IdleTracker.defaultTimeout) = 180;
  v1 = *MEMORY[0x1E69E7F48];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t type metadata accessor for IdleTracker()
{
  result = type metadata singleton initialization cache for IdleTracker;
  if (!type metadata singleton initialization cache for IdleTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static IdleTracker.exitProcess()()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD1FF000, v1, v2, "IdleTracker exiting process after idle timeout.", v3, 2u);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }

  exit(0);
}

uint64_t IdleTracker.dump()()
{
  v1 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v11, v13, v15, v17, v19);
  OUTLINED_FUNCTION_11_11(v1, v2, v3, v4, v5, v6, v7, v8, v12, v14, v16, v18, v20, v22[0], v22[1], v22[2], v22[3]);
  v9 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_6_13();
  v9();
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v21;
}

uint64_t closure #1 in IdleTracker.dump()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  v7 = *(a1 + v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v9;
    return result;
  }

  v11[9] = v2;
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v8, 0);
  v10 = specialized Sequence._copySequenceContents(initializing:)(v11, v9 + 4, v8, v7);

  result = outlined consume of [String : Data].Iterator._Variant();
  if (v10 == v8)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t IdleTracker.untrack(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v6[0], v6[1], v7, v8, v9);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = v1;
  v8 = a1;
  (*(v4 + 24))(partial apply for closure #1 in IdleTracker.untrack(_:), v6, MEMORY[0x1E69E7CA8] + 8, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void closure #1 in IdleTracker.untrack(_:)()
{
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)();
  swift_endAccess();

  IdleTracker.scheduleTimerIfIdle()();
}

void IdleTracker.scheduleTimerIfIdle()()
{
  OUTLINED_FUNCTION_15_7();
  v1 = type metadata accessor for DispatchTime();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  v99 = v3;
  v100 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2, v6);
  v97 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v98 = &v83 - v10;
  OUTLINED_FUNCTION_19_5();
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = OUTLINED_FUNCTION_5_0(v11);
  v95 = v13;
  v96 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  OUTLINED_FUNCTION_8_0();
  v94 = v18 - v17;
  OUTLINED_FUNCTION_19_5();
  v19 = type metadata accessor for DispatchQoS();
  v20 = OUTLINED_FUNCTION_5_0(v19);
  v93 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20, v24);
  OUTLINED_FUNCTION_8_0();
  v27 = v26 - v25;
  v28 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v29 = OUTLINED_FUNCTION_5_0(v28);
  v91 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29, v33);
  OUTLINED_FUNCTION_8_0();
  v36 = v35 - v34;
  v37 = type metadata accessor for DispatchTimeInterval();
  v38 = OUTLINED_FUNCTION_5_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  v44 = MEMORY[0x1EEE9AC00](v38, v43);
  v46 = (&v83 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v47);
  v49 = &v83 - v48;
  v50 = OBJC_IVAR___SUIdleTracker_refs;
  swift_beginAccess();
  v92 = v0;
  if (!*(*&v0[v50] + 16))
  {
    v85 = v36;
    v86 = v28;
    v87 = v27;
    v88 = v49;
    v89 = v46;
    v90 = v40;
    v51 = v37;
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.logger);
    v53 = v92;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    v56 = os_log_type_enabled(v54, v55);
    v92 = v19;
    v84 = v51;
    if (v56)
    {
      v57 = v51;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v101[0] = v59;
      *v58 = 136315394;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v53[OBJC_IVAR___SUIdleTracker_name], *&v53[OBJC_IVAR___SUIdleTracker_name + 8], v101);
      *(v58 + 12) = 2080;
      v60 = v88;
      (*(v90 + 16))(v88, &v53[OBJC_IVAR___SUIdleTracker_timeout], v57);
      v61 = v60;
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v101);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_1DD1FF000, v54, v55, "IdleTracker:%s detects idle condition; scheduling timer for %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v59, -1, -1);
      MEMORY[0x1E12AA0F0](v58, -1, -1);
    }

    else
    {

      v61 = v88;
    }

    v65 = v86;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x1E69E9630);
    v101[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v66 = v85;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = *&v53[OBJC_IVAR___SUIdleTracker_queue];
    v68 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v91 + 8))(v66, v65);
    ObjectType = swift_getObjectType();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101[4] = partial apply for closure #1 in IdleTracker.scheduleTimerIfIdle();
    v101[5] = v70;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 1107296256;
    v101[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v101[3] = &block_descriptor_1;
    v71 = _Block_copy(v101);

    v72 = v87;
    static DispatchQoS.unspecified.getter();
    v73 = v94;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v71);
    (*(v95 + 8))(v73, v96);
    (*(v93 + 8))(v72, v92);

    v74 = v97;
    static DispatchTime.now()();
    v75 = v98;
    DispatchTime.advanced(by:)();
    v76 = v100;
    v77 = *(v99 + 8);
    v77(v74, v100);
    v91 = ObjectType;
    default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v61);
    v78 = v89;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v89);
    MEMORY[0x1E12A9180](v75, v61, v78, ObjectType);
    v79 = *(v90 + 8);
    v80 = v78;
    v81 = v84;
    v79(v80, v84);
    v79(v61, v81);
    v77(v75, v76);
    OS_dispatch_source.resume()();
    v82 = *&v53[OBJC_IVAR___SUIdleTracker_timer];
    *&v53[OBJC_IVAR___SUIdleTracker_timer] = v68;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_14();
}

void closure #1 in IdleTracker.scheduleTimerIfIdle()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    IdleTracker.invokeTimeoutAction()();
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t IdleTracker.invokeTimeoutAction()()
{
  v1 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v12, v14, v16, v18, v20);
  OUTLINED_FUNCTION_11_11(v1, v2, v3, v4, v5, v6, v7, v8, v13, v15, v17, v19, v21, v22[0], v22[1], v22[2], v22[3]);
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_6_13();
  v10();
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t closure #1 in IdleTracker.invokeTimeoutAction()(uint64_t a1)
{
  v2 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  if (!*(*(a1 + v2) + 16))
  {
    v4 = *(a1 + OBJC_IVAR___SUIdleTracker_timeoutAction);
    v5 = *(a1 + OBJC_IVAR___SUIdleTracker_timeoutAction + 8);
    return v4(result);
  }

  return result;
}

id IdleTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdleTrackerActivity.init(cancellable:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdleTrackerActivity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id IdleTracker.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata completion function for IdleTracker()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t dispatch thunk of IdleTracker.track(name:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

void partial apply for closure #1 in IdleTracker.untrack(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in IdleTracker.untrack(_:)();
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in IdleTracker.track(name:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_18_5(v1);
  v3 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v4 = *(v0 + 16);
  return IdleTracker.untrack(_:)(v3);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_21_3()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t one-time initialization function for tailspinRequestQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v13[1] = 0;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static TailSpinManager.tailspinRequestQueue = result;
  return result;
}

void static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, Class isa, void (*a6)(void, void, void), uint64_t a7)
{
  if (!IsAppleInternalBuild())
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "TailSpinManager#createTailSpinFile refusing to generate tailspin file";
    goto LABEL_21;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_13:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "TailSpinManager#createTailSpinFile invalid param(s) passed in";
LABEL_21:
    _os_log_impl(&dword_1DD1FF000, v23, v24, v26, v25, 2u);
    MEMORY[0x1E12AA0F0](v25, -1, -1);
LABEL_22:

    a6(0, 0, 0);
    return;
  }

  v16 = [objc_allocWithZone(TailSpinHelper) init];
  v17 = MEMORY[0x1E12A8BC0](a1, a2);
  v18 = MEMORY[0x1E12A8BC0](a3, a4);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (one-time initialization token for tailspinRequestQueue != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  v19 = static TailSpinManager.tailspinRequestQueue;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v28[4] = partial apply for closure #1 in static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:);
  v28[5] = v20;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed String?) -> ();
  v28[3] = &block_descriptor_2;
  v21 = _Block_copy(v28);

  [v16 dumpTailSpinOutputToFile:v17 suiteName:v18 options:isa queue:v19 handler:v21];
  _Block_release(v21);
}

uint64_t closure #1 in static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:)(char a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = 4271950;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = one-time initialization token for logger;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2080;
    *(v12 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v15);
    _os_log_impl(&dword_1DD1FF000, v10, v11, "TailSpinManager#createTailSpinFile status: %{BOOL}d, path: %s", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12AA0F0](v13, -1, -1);
    MEMORY[0x1E12AA0F0](v12, -1, -1);
  }

  a4(a1 & 1, v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed String?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5(a2, v6, v8);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static TailSpinManager.deleteTailSpinFiles(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    v4 = [objc_allocWithZone(TailSpinHelper) init];
    oslog = MEMORY[0x1E12A8BC0](a1, a2);
    if (one-time initialization token for tailspinRequestQueue != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    [v4 clearDirectory_queue_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DD1FF000, oslog, v6, "TailSpinManager#createTailSpinFile refusing to delete tailspin files", v7, 2u);
      MEMORY[0x1E12AA0F0](v7, -1, -1);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TailSpinManager(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

void _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_6();
  v5 = OUTLINED_FUNCTION_44_1(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v0;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_12_10();
    v1();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_5_9();
    v12 = *(v8 + 8);
    v13 = OUTLINED_FUNCTION_21_4();
    v14(v13);
  }

  else
  {
    OUTLINED_FUNCTION_12_10();
    v1();
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_14_4();
}

void _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_14_6();
  v25 = type metadata accessor for OSSignpostID();
  v26 = OUTLINED_FUNCTION_5_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26, v31);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v32 = OUTLINED_FUNCTION_10_12();
    v21(&a10, v32);
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_12();
    if (v22)
    {
      v33 = *(v28 + 8);
    }

    else
    {
      v36 = *(v28 + 8);
    }

    v34 = OUTLINED_FUNCTION_21_4();
    v35(v34);
  }

  else
  {
    (v21)(&a10);
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_14_4();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = dispatch thunk of Collection.count.getter();
  if (!v29)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v51 = v29;
  v55 = ContiguousArray.init()();
  v42 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v51);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = dispatch thunk of Collection.subscript.read();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PluginCatalog.packageCache : PluginCatalog(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t PluginCatalog.__allocating_init(finder:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = (*(v1 + 120))(v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t PluginCatalog.__allocating_init(packageCache:)(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PluginCatalog.__allocating_init(packages:)()
{
  OUTLINED_FUNCTION_24_3();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_8();
  PluginCatalog.init(packages:)(v1);
  return v0;
}

uint64_t PluginCatalog.init(packages:)(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (v30)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC8];
    while (v3 < *(a1 + 16))
    {
      outlined init with copy of PluginPackage(v4, &v33);
      v6 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v7 = *(v6 + 8);
      v8 = OUTLINED_FUNCTION_8();
      v10 = v9(v8, v6);
      v12 = v11;
      outlined init with take of Transforming(&v33, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v5;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      v16 = v5[2];
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_17;
      }

      v19 = v14;
      v20 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS13SiriUtilities13PluginPackage_pGMd, &_ss17_NativeDictionaryVySS13SiriUtilities13PluginPackage_pGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_19;
        }

        v19 = v21;
      }

      if (v20)
      {

        v5 = v31;
        v23 = (v31[7] + 40 * v19);
        __swift_destroy_boxed_opaque_existential_0(v23);
        outlined init with take of Transforming(v32, v23);
      }

      else
      {
        v5 = v31;
        v31[(v19 >> 6) + 8] |= 1 << v19;
        v24 = (v31[6] + 16 * v19);
        *v24 = v10;
        v24[1] = v12;
        outlined init with take of Transforming(v32, v31[7] + 40 * v19);
        v25 = v31[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_18;
        }

        v31[2] = v27;
      }

      ++v3;
      v4 += 40;
      if (v30 == v3)
      {

        v1 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC8];
LABEL_15:
    *(v1 + 16) = v5;
    return v1;
  }

  return result;
}

uint64_t PluginCatalog.getPluginPackage(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_7();
  v7 = (*(v6 + 88))();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    outlined init with copy of PluginPackage(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t PluginCatalog.getPlugin(id:)()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 128))(v10);
  outlined init with copy of PluginPackage?(v10, &v8);
  if (v9)
  {
    outlined init with take of Transforming(&v8, v5);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 40))(v1, v2);
    outlined destroy of PluginPackage?(v10, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    outlined destroy of PluginPackage?(v10, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
    return 0;
  }

  return v3;
}

uint64_t PluginCatalog.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PluginCatalog.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_24_3();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t key path setter for PluginCapabilityCatalog.capabilityCache : <A>PluginCapabilityCatalog<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t PluginCapabilityCatalog.capabilityCache.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PluginCapabilityCatalog.__allocating_init(finder:)()
{
  OUTLINED_FUNCTION_23();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_8();
  PluginCapabilityCatalog.init(finder:)(v1);
  return v0;
}

uint64_t PluginCapabilityCatalog.init(finder:)(uint64_t *a1)
{
  v209 = *v1;
  v3 = v209[19];
  v188 = v1;
  v4 = v209[18];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_5_0(AssociatedTypeWitness);
  v210 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  OUTLINED_FUNCTION_2_16(&v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_13_8();
  v222 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v32);
  v186 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v36);
  OUTLINED_FUNCTION_28_3();
  v197 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0(v197);
  v220 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_7_11(&v186 - v42);
  v43 = *(v4 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_38_1();
  v218 = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v50);
  OUTLINED_FUNCTION_28_3();
  v51 = type metadata accessor for Array();
  v212 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v221 = v51;
  v53 = Dictionary.init()();
  v232 = v53;
  v54 = a1[3];
  v55 = a1[4];
  v187 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v54);
  v56 = *(v55 + 8);
  v57 = OUTLINED_FUNCTION_8();
  v58 = AssociatedTypeWitness;
  v60 = v59(v57, v55);
  v216 = AssociatedConformanceWitness;
  v231 = Set.init()();
  v61 = *(v60 + 16);
  v211 = v3;
  v199 = v60;
  v196 = 0;
  if (!v61)
  {
    v219 = 0;
    v217 = 0;
    v65 = v210;
LABEL_30:
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_39_1();

    v113 = 0;
    v114 = *(v112 + 64);
    v214 = v112;
    v115 = *(v112 + 32);
    OUTLINED_FUNCTION_20_5();
    v118 = v117 & v116;
    v220 = v65 + 2;
    v207 = v65 + 4;
    v215 = v65 + 1;
    *&v119 = 136315394;
    v203 = v119;
    OUTLINED_FUNCTION_31_2();
    v122 = v189;
    v213 = v121;
    v208 = v120;
    if (v118)
    {
      goto LABEL_35;
    }

    do
    {
LABEL_31:
      v123 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_58;
      }

      if (v123 >= v120)
      {

        v184 = v188;
        v188[3] = v232;
        PluginCatalog.init(packages:)(v199);
        __swift_destroy_boxed_opaque_existential_0(v187);
        _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v219);
        _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v217);
        return v184;
      }

      v118 = *(v121 + 8 * v123);
      ++v113;
    }

    while (!v118);
    v113 = v123;
    while (1)
    {
LABEL_35:
      v124 = v214[6].isa + v65[9].isa * (__clz(__rbit64(v118)) | (v113 << 6));
      isa = v65[2].isa;
      v126 = OUTLINED_FUNCTION_27_3(&v217);
      v222 = v127;
      (v127)(v126);
      v128 = v65[4].isa;
      OUTLINED_FUNCTION_41_1();
      v129();
      v130 = MEMORY[0x1E12A8B50](&v226, v122, v232, v58, v221, v53);
      v132 = v226;
      v133 = v212;
      if (!v226)
      {
        v130 = static Array._allocateUninitialized(_:)();
        v132 = v130;
      }

      v218 = &v186;
      v118 &= v118 - 1;
      v226 = v132;
      MEMORY[0x1EEE9AC00](v130, v131);
      v134 = v211;
      *(&v186 - 4) = v133;
      *(&v186 - 3) = v134;
      *(&v186 - 2) = v209[20];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_33_1();
      v140 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v135, v136, v137, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v138, MEMORY[0x1E69E7410], v139);
      v196 = AssociatedConformanceWitness;
      v226 = v140;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
      AssociatedConformanceWitness = BidirectionalCollection<>.joined(separator:)();
      v142 = v141;

      v143 = OUTLINED_FUNCTION_22_2(&v218);
      v144 = MEMORY[0x1E12A8FC0](v143);
      v218 = AssociatedConformanceWitness;
      if ((v144 & 1) == 0)
      {
        break;
      }

      v145 = MEMORY[0x1E12A8E20](v132, v212);

      if (v145 <= 1)
      {
        goto LABEL_44;
      }

      v146 = v222;
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      v148 = __swift_project_value_buffer(v147, static Logger.logger);
      v149 = OUTLINED_FUNCTION_42_1(&v216);
      v146(v149, v140, v58);

      v206 = v148;
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v202 = v142;
        v153 = AssociatedConformanceWitness;
        AssociatedConformanceWitness = v152;
        v154 = swift_slowAlloc();
        *AssociatedConformanceWitness = OUTLINED_FUNCTION_26_3(v154).n128_u32[0];
        LODWORD(v204) = v151;
        v155 = OUTLINED_FUNCTION_27_3(v227);
        v222(v155, v153, v58);
        v156 = String.init<A>(describing:)();
        v158 = v157;
        OUTLINED_FUNCTION_19_6();
        v159 = v153;
        v161 = *v160;
        (*v160)(v159, v58);
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, &v226);

        *(AssociatedConformanceWitness + 4) = v162;
        *(AssociatedConformanceWitness + 12) = 2080;
        v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v202, &v226);

        *(AssociatedConformanceWitness + 14) = v163;
        _os_log_impl(&dword_1DD1FF000, v150, v204, "Capability %s is marked exclusive, but multiple registrations were found: %s", AssociatedConformanceWitness, 0x16u);
        OUTLINED_FUNCTION_27_3(&v232);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
      }

      else
      {

        OUTLINED_FUNCTION_19_6();
        v161 = *v181;
        (*v181)(AssociatedConformanceWitness, v58);
      }

      OUTLINED_FUNCTION_31_2();
      v182 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v182, v53))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_1DD1FF000, v182, v53, "All of the plugins for this capability will be ignored.", v183, 2u);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
      }

      OUTLINED_FUNCTION_40_1();
      OUTLINED_FUNCTION_39_1();
      type metadata accessor for Dictionary();
      v122 = v189;
      Dictionary.removeValue(forKey:)();

      OUTLINED_FUNCTION_19_6();
      v161();
      v65 = v210;
LABEL_54:
      v121 = v213;
      v120 = v208;
      if (!v118)
      {
        goto LABEL_31;
      }
    }

LABEL_44:
    v164 = v190;
    v165 = v222;
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static Logger.logger);
    v165(v164, v140, v58);

    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.debug.getter();

    LODWORD(v206) = v168;
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *v169 = OUTLINED_FUNCTION_26_3(v170).n128_u32[0];
      v204 = v167;
      v171 = OUTLINED_FUNCTION_27_3(v227);
      v222(v171, v190, v58);
      v172 = String.init<A>(describing:)();
      v174 = v173;
      OUTLINED_FUNCTION_19_6();
      v176 = *v175;
      (*v175)(v190, v58);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, &v226);

      *(v169 + 4) = v177;
      *(v169 + 12) = 2080;
      AssociatedConformanceWitness = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v142, &v226);

      *(v169 + 14) = AssociatedConformanceWitness;
      v178 = v204;
      _os_log_impl(&dword_1DD1FF000, v204, v206, "Capability %s is supported by: %s", v169, 0x16u);
      OUTLINED_FUNCTION_42_1(&v232);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();

      v122 = v189;
      OUTLINED_FUNCTION_19_6();
      v176();
      OUTLINED_FUNCTION_31_2();
      v65 = v210;
    }

    else
    {

      AssociatedConformanceWitness = v215;
      v179 = v215->isa;
      (v215->isa)(v190, v58);
      v180 = OUTLINED_FUNCTION_21_4();
      v179(v180);
      OUTLINED_FUNCTION_31_2();
      v65 = v210;
      v122 = v140;
    }

    v53 = v216;
    goto LABEL_54;
  }

  v219 = 0;
  v62 = 0;
  v217 = 0;
  v63 = 0;
  v64 = 0;
  v200 = v60 + 32;
  v195 = v220 + 1;
  v194 = v43 + 32;
  v193 = v3 + 40;
  v205 = &v210[2];
  v204 = v210 + 4;
  v214 = v210 + 1;
  *&v203 = v43 + 16;
  v191 = v43 + 8;
  AssociatedConformanceWitness = v212;
  v220 = v58;
  v65 = v210;
  v66 = v198;
  v192 = v61;
  while (v64 < *(v60 + 16))
  {
    v201 = v64;
    outlined init with copy of PluginPackage(v200 + 40 * v64, &v226);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v66, 0, 1, AssociatedConformanceWitness);
      OUTLINED_FUNCTION_16_6(v223);
      v67(v213, v66, AssociatedConformanceWitness);
      v68 = (*(v3 + 40))(AssociatedConformanceWitness, v3);

      v69 = Array.startIndex.getter();

      after = v69;
      if (v69 != MEMORY[0x1E12A8E40](v68, v58))
      {
        v72 = v217;
        v208 = v68;
        while (1)
        {
          v217 = v62;
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          v76 = v205;
          v77 = v205 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          if (IsNativeType)
          {
            v78 = v68 + ((LOBYTE(v65[10].isa) + 32) & ~LOBYTE(v65[10].isa)) + v65[9].isa * v69;
            v79 = v65[2].isa;
            v80 = OUTLINED_FUNCTION_22_2(&v234);
            v79(v80);
          }

          else
          {
            v110 = _ArrayBuffer._getElementSlowPath(_:)();
            if (v186 != 8)
            {
              goto LABEL_60;
            }

            v226 = v110;
            v79 = *v76;
            v111 = OUTLINED_FUNCTION_22_2(&v234);
            v79(v111);
            swift_unknownObjectRelease();
          }

          Array.formIndex(after:)(&after);
          OUTLINED_FUNCTION_16_6(&v231);
          v81 = v222;
          v82(v222, v53, v58);
          v83 = OUTLINED_FUNCTION_27_3(v233);
          (v79)(v83, v81, v58);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMR);
          OUTLINED_FUNCTION_41_1();
          v84 = swift_dynamicCast();
          v215 = v77;
          if (v84)
          {
            outlined init with take of Transforming(v223, &v226);
            v85 = v229;
            v86 = v230;
            __swift_project_boxed_opaque_existential_1(&v226, v229);
            v87 = v79;
            if ((*(v86 + 8))(v85, v86))
            {
              (v79)(v202, v222, v58);
              OUTLINED_FUNCTION_40_1();
              type metadata accessor for Set();
              OUTLINED_FUNCTION_42_1(v227);
              Set.insert(_:)();
              OUTLINED_FUNCTION_16_6(&v235);
              v88(v72, v58);
            }

            __swift_destroy_boxed_opaque_existential_0(&v226);
          }

          else
          {
            v87 = v79;
            v224 = 0;
            memset(v223, 0, sizeof(v223));
            outlined destroy of PluginPackage?(v223, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMR);
          }

          v70 = swift_allocObject();
          v89 = v212;
          v90 = v211;
          v70[2] = v212;
          v70[3] = v90;
          v91 = v209[20];
          v70[4] = v91;
          _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v219);
          OUTLINED_FUNCTION_16_6(v228);
          v92(v218, v213, v89);
          v71 = swift_allocObject();
          v71[2] = v89;
          v71[3] = v90;
          v71[4] = v91;
          v71[5] = partial apply for implicit closure #1 in PluginCapabilityCatalog.init(finder:);
          v71[6] = v70;
          _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v72);
          v93 = v232;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v226 = v93;
          v95 = v220;
          v96 = v216;
          v97 = __RawDictionaryStorage.find<A>(_:)(v222, v220, v216);
          v99 = *(v93 + 16);
          v100 = (v98 & 1) == 0;
          v101 = v99 + v100;
          if (__OFADD__(v99, v100))
          {
            break;
          }

          v102 = v97;
          v103 = v98;
          type metadata accessor for _NativeDictionary();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v101))
          {
            v104 = __RawDictionaryStorage.find<A>(_:)(v222, v95, v96);
            if ((v103 & 1) != (v105 & 1))
            {
              goto LABEL_61;
            }

            v102 = v104;
          }

          v53 = v226;
          v232 = v226;
          if ((v103 & 1) == 0)
          {
            v106 = v71[6];
            v226 = (v71[5])();
            OUTLINED_FUNCTION_42_1(v227);
            OUTLINED_FUNCTION_19_6();
            v87();
            _NativeDictionary._insert(at:key:value:)();
          }

          v107 = *(v53 + 56) + 8 * v102;
          Array.append(_:)();
          OUTLINED_FUNCTION_16_6(&v235);
          v58 = v220;
          v108(v222, v220);
          v68 = v208;
          v109 = MEMORY[0x1E12A8E40](v208, v58);
          v69 = after;
          v72 = partial apply for thunk for @callee_guaranteed () -> (@owned [A]);
          v219 = partial apply for implicit closure #1 in PluginCapabilityCatalog.init(finder:);
          v62 = v70;
          v65 = v210;
          if (after == v109)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        break;
      }

      v70 = v62;
      v71 = v63;
      v72 = v217;
LABEL_7:
      v217 = v72;

      OUTLINED_FUNCTION_16_6(&v220);
      AssociatedConformanceWitness = v212;
      v73(v213, v212);
      v62 = v70;
      v63 = v71;
      v3 = v211;
      v60 = v199;
      v66 = v198;
      v61 = v192;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v66, 1, 1, AssociatedConformanceWitness);
      OUTLINED_FUNCTION_16_6(v223 + 8);
      v74(v66, v197);
    }

    v64 = v201 + 1;
    if (v201 + 1 == v61)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PluginCapabilityCatalog.getAll(capability:)()
{
  OUTLINED_FUNCTION_7();
  v1 = v0 + 208;
  (*(v0 + 208))();
  v4 = *(v1 - 64);
  v5 = *(v1 - 48);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v2 = Sequence.compactMap<A>(_:)();

  return v2;
}

uint64_t (*static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v5 = v4;
  v88 = 0;
  v89 = a4;
  v85 = a1;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  v81 = v10;
  v82 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  OUTLINED_FUNCTION_8_0();
  v83 = v15 - v14;
  OUTLINED_FUNCTION_40_1();
  v16 = type metadata accessor for Optional();
  v17 = OUTLINED_FUNCTION_5_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  OUTLINED_FUNCTION_38_1();
  v86 = v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v74 - v27;
  v29 = *(a3 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26, v31);
  OUTLINED_FUNCTION_8_0();
  v34 = v33 - v32;
  v35 = *(v19 + 16);
  v87 = a2;
  v84 = v35;
  v35(v28, a2, v16);
  if (__swift_getEnumTagSinglePayload(v28, 1, a3) == 1)
  {
    v36 = (*(v19 + 8))(v28, v16);
    v38 = v5;
    v39 = v88;
  }

  else
  {
    v80 = v16;
    v79 = v19;
    v40 = *(v29 + 32);
    OUTLINED_FUNCTION_41_1();
    v42 = v41();
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      v42 = OUTLINED_FUNCTION_11_12();
    }

    MEMORY[0x1EEE9AC00](v42, v43);
    v38 = v5;
    v45 = v5[18];
    v44 = v5[19];
    *(&v74 - 6) = v45;
    *(&v74 - 5) = a3;
    v46 = v5[20];
    v47 = v44;
    *(&v74 - 4) = v44;
    *(&v74 - 3) = v46;
    v78 = v46;
    v39 = v88;
    *(&v74 - 2) = v89;
    *(&v74 - 1) = v34;
    _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
    v88 = v94;
    if (v94 >> 60 != 15)
    {
      v76 = v34;
      v77 = v29;
      v75 = v93;
      v48 = type metadata accessor for PropertyListDecoder();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v74 = PropertyListDecoder.init()();
      if (one-time initialization token for catalogPackageInflator != -1)
      {
        OUTLINED_FUNCTION_0_22();
        swift_once();
      }

      v51 = v82;
      v52 = __swift_project_value_buffer(v82, static CodingUserInfoKey.catalogPackageInflator);
      (*(v81 + 16))(v83, v52, v51);
      v53 = swift_allocObject();
      v53[2] = v45;
      v53[3] = a3;
      v54 = v78;
      v53[4] = v47;
      v53[5] = v54;
      v55 = v89;
      v53[6] = v89;
      v56 = swift_allocObject();
      v56[2] = v45;
      v56[3] = a3;
      v56[4] = v47;
      v56[5] = v54;
      v56[6] = v55;
      v56[7] = partial apply for closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:);
      v56[8] = v53;
      type metadata accessor for Optional();
      FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
      v93 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
      v94 = v56;
      v57 = dispatch thunk of PropertyListDecoder.userInfo.modify();
      specialized Dictionary.subscript.setter(&v93, v83);
      v57(&v90, 0);
      type metadata accessor for PluginCapabilityCatalog();
      swift_getWitnessTable();
      v58 = v75;
      v59 = v88;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (!v39)
      {

        outlined consume of Data?(v58, v59);
        v64 = v93;
        (*(v77 + 8))(v76, a3);
        return v64;
      }

      outlined consume of Data?(v58, v59);
      v39 = 0;
      v29 = v77;
      v34 = v76;
    }

    v36 = (*(v29 + 8))(v34, a3);
    v19 = v79;
    v16 = v80;
  }

  if (one-time initialization token for pluginLoaderLog != -1)
  {
    v36 = OUTLINED_FUNCTION_11_12();
  }

  v60 = static Logger.pluginLoaderLog;
  MEMORY[0x1EEE9AC00](v36, v37);
  v61 = v38[19];
  *(&v74 - 6) = v38[18];
  *(&v74 - 5) = a3;
  v62 = v38[20];
  *(&v74 - 4) = v61;
  *(&v74 - 3) = v62;
  v63 = v85;
  *(&v74 - 2) = v89;
  *(&v74 - 1) = v63;
  type metadata accessor for PluginCapabilityCatalog();
  static Logger.withSignpost<A>(name:log:completion:)("FindPlugins", 11, 2, v60, partial apply for closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:));
  v64 = v93;
  v65 = v86;
  v84(v86, v87, v16);
  if (__swift_getEnumTagSinglePayload(v65, 1, a3) == 1)
  {
    (*(v19 + 8))(v65, v16);
LABEL_20:
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13CacheDataSink_pMd, "~f");
  OUTLINED_FUNCTION_41_1();
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (!*(&v91 + 1))
  {
LABEL_21:
    outlined destroy of PluginPackage?(&v90, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
    return v64;
  }

  outlined init with take of Transforming(&v90, &v93);
  v66 = type metadata accessor for PropertyListEncoder();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v69 = PropertyListEncoder.init()();
  v70 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  MEMORY[0x1EEE9AC00](v70, v71);
  v72 = v89;
  *(&v74 - 6) = a3;
  *(&v74 - 5) = v72;
  *(&v74 - 4) = v69;
  *(&v74 - 3) = v64;
  *(&v74 - 2) = &v93;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

  if (v39)
  {
  }

  __swift_destroy_boxed_opaque_existential_0(&v93);
  return v64;
}

uint64_t closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  result = (*(a2 + 8))(a1, a2);
  if (v3)
  {

    result = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t CodingUserInfoKey.catalogPackageInflator.unsafeMutableAddressor()
{
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.catalogPackageInflator);
}

uint64_t closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(a4 + 24))(v9, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, a3);
}

uint64_t closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PluginCapabilityCatalog();
  outlined init with copy of PluginPackage(a1, v5);
  result = PluginCapabilityCatalog.__allocating_init(finder:)();
  *a2 = result;
  return result;
}

uint64_t closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*a2 + 144);
  v6 = *(*a2 + 152);
  v7 = *(*a2 + 160);
  type metadata accessor for PluginCapabilityCatalog();
  swift_getWitnessTable();
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v3)
  {
    v10 = result;
    v11 = v9;
    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    (*(v13 + 8))(v10, v11, v12, v13);
    return outlined consume of Data._Representation(v10, v11);
  }

  return result;
}

uint64_t PluginCapabilityCatalog.advertisedCapabilities()()
{
  OUTLINED_FUNCTION_7();
  v1 = v0 + 176;
  (*(v0 + 176))();
  v4 = v1 - 32;
  v3 = *(v1 - 32);
  v2 = *(v4 + 8);
  OUTLINED_FUNCTION_28_3();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8();

  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t PluginCapabilityCatalog.get(capability:)@<X0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v3 = (*(v2 + 216))();
  if (*(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }
}

unint64_t PluginCapabilityCatalog.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PluginCapabilityCatalog.CodingKeys.init(rawValue:), v3);
  OUTLINED_FUNCTION_8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PluginCapabilityCatalog.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6973726556736FLL;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x736567616B636170;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void PluginCapabilityCatalog.encode(to:)()
{
  OUTLINED_FUNCTION_15();
  v69 = v1;
  v3 = v0;
  v5 = v4;
  v6 = *(*v3 + 144);
  v7 = *(*v3 + 160);
  v67 = *(*v3 + 152);
  v68 = v6;
  v66 = v7;
  type metadata accessor for PluginCapabilityCatalog.CodingKeys();
  OUTLINED_FUNCTION_5_14();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_5_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_36_1();
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = [objc_opt_self() processInfo];
  v17 = [v16 operatingSystemVersionString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v70[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    (*(v10 + 8))(v2, v8);

LABEL_16:
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_14_4();
    return;
  }

  v64 = v10;

  v19 = *(*v3 + 176);
  v65 = 0;
  v63 = v19(v18);
  v69 = &v61;
  MEMORY[0x1EEE9AC00](v63, v20);
  swift_getAssociatedTypeWitness();
  v66 = type metadata accessor for Array();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  swift_getAssociatedConformanceWitness();
  v21 = v65;
  v22 = Dictionary.mapValues<A>(_:)();
  v66 = v21;
  v23 = v22;

  v70[0] = v23;
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for Dictionary();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v73 = AssociatedConformanceWitness;
  v74 = v25;
  swift_getWitnessTable();
  v26 = v66;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v26)
  {

    (*(v64 + 8))(v2, v8);
    goto LABEL_16;
  }

  v65 = 0;
  v61 = v2;
  v62 = v8;

  v28 = (*(*v3 + 88))(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_8();
  v29 = static _DictionaryStorage.copy(original:)();
  v30 = 0;
  v32 = v28 + 64;
  v31 = *(v28 + 64);
  v66 = v29;
  v67 = v28;
  v33 = *(v28 + 32);
  OUTLINED_FUNCTION_20_5();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v63 = v39 + 64;
  if (v36)
  {
    while (1)
    {
      v40 = __clz(__rbit64(v36));
      v68 = (v36 - 1) & v36;
LABEL_12:
      v44 = v40 | (v30 << 6);
      v45 = *(v67 + 56);
      v46 = (*(v67 + 48) + 16 * v44);
      v47 = v46[1];
      v69 = *v46;
      outlined init with copy of PluginPackage(v45 + 40 * v44, v70);
      v48 = v71;
      v49 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v50 = *(v49 + 16);

      v51 = v50(v48, v49);
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_0(v70);
      *(v63 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v29 = v66;
      v54 = (*(v66 + 48) + 16 * v44);
      *v54 = v69;
      v54[1] = v47;
      v55 = (*(v29 + 56) + 16 * v44);
      *v55 = v51;
      v55[1] = v53;
      v56 = *(v29 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        break;
      }

      *(v29 + 16) = v58;
      v36 = v68;
      if (!v68)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v41 = v30;
    v42 = v64;
    while (1)
    {
      v30 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v30 >= v38)
      {

        v70[0] = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
        lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
        v59 = v61;
        v60 = v62;
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        (*(v42 + 8))(v59, v60);
        goto LABEL_16;
      }

      v43 = *(v32 + 8 * v30);
      ++v41;
      if (v43)
      {
        v40 = __clz(__rbit64(v43));
        v68 = (v43 - 1) & v43;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in PluginCapabilityCatalog.encode(to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v11[4] = a4;
  v11[5] = v6;
  v11[2] = a2;
  v11[3] = a3;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in PluginCapabilityCatalog.encode(to:), v11, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  *a5 = result;
  return result;
}

uint64_t PluginCapabilityCatalog.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_allocObject();
  PluginCapabilityCatalog.init(from:)();
  return v0;
}

void PluginCapabilityCatalog.init(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 160);
  v70 = *(*v0 + 144);
  v7 = v5;
  v76 = v6;
  type metadata accessor for PluginCapabilityCatalog.CodingKeys();
  OUTLINED_FUNCTION_5_14();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  v67 = v10;
  v68 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v61 - v15;
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v18 = type metadata accessor for CodingUserInfoKey();
  __swift_project_value_buffer(v18, static CodingUserInfoKey.catalogPackageInflator);
  specialized Dictionary.subscript.getter(v17, &v74);

  if (!v75)
  {
    outlined destroy of PluginPackage?(&v74, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  v19 = v70;
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata1();
  if (!swift_dynamicCast())
  {
LABEL_8:
    lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError();
    swift_allocError();
    *v24 = 0u;
    v24[1] = 0u;
    swift_willThrow();
    goto LABEL_9;
  }

  v65 = v2;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v7;
  *(v20 + 32) = v76;
  *(v20 + 40) = v73;
  v21 = v4[3];
  v22 = v4[4];
  v66 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v21);
  v23 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    v4 = v66;
  }

  else
  {
    v64 = v20;
    LOBYTE(v74) = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v65;
    v27 = v25;
    v29 = v28;
    v30 = [objc_opt_self() processInfo];
    v31 = [v30 operatingSystemVersionString];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v32;
    v36 = v27 == v32 && v29 == v34;
    v37 = v7;
    if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v38 = v70;
      swift_getAssociatedTypeWitness();
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
      OUTLINED_FUNCTION_33_1();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v63 = v39;
      type metadata accessor for Dictionary();
      LOBYTE(v73) = 1;
      OUTLINED_FUNCTION_33_1();
      v40 = swift_getAssociatedConformanceWitness();
      v41 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
      v71 = v40;
      v72 = v41;
      swift_getWitnessTable();
      v42 = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v61 = &v61;
      MEMORY[0x1EEE9AC00](v42, v43);
      *(&v61 - 6) = v38;
      *(&v61 - 5) = v37;
      OUTLINED_FUNCTION_4_12(&v61);
      *(v44 - 16) = v64;
      type metadata accessor for Array();
      v45 = Dictionary.compactMapValues<A>(_:)();

      *(v26 + 24) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      LOBYTE(v73) = 2;
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      v46 = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v56 = v74;
      MEMORY[0x1EEE9AC00](v46, v57);
      *(&v61 - 6) = v38;
      *(&v61 - 5) = v37;
      OUTLINED_FUNCTION_4_12(&v61);
      *(v58 - 16) = v64;
      v60 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #2 in PluginCapabilityCatalog.init(from:), v59, v56);
      (*(v67 + 8))(v69, v68);

      *(v26 + 16) = v60;
      __swift_destroy_boxed_opaque_existential_0(v66);
      goto LABEL_10;
    }

    AssociatedConformanceWitness = v35;
    v63 = v27;
    v47 = v34;
    if (one-time initialization token for loader != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.loader);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v74 = v61;
      *v51 = 136315394;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v29, &v74);
      *(v51 + 12) = 2080;
      v52 = AssociatedConformanceWitness;
      *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(AssociatedConformanceWitness, v47, &v74);
      _os_log_impl(&dword_1DD1FF000, v49, v50, "Not using cached plugin information, as it is from %s and we are running %s.", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      v23 = v69;
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();

      v53 = v68;
    }

    else
    {

      v53 = v68;
      v52 = AssociatedConformanceWitness;
    }

    lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError();
    swift_allocError();
    *v54 = v52;
    v54[1] = v47;
    v54[2] = v63;
    v54[3] = v29;
    swift_willThrow();

    OUTLINED_FUNCTION_35_1();
    v55(v23, v53);
    v4 = v66;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v4);
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for PluginCapabilityCatalog();
  OUTLINED_FUNCTION_43_1();
LABEL_10:
  OUTLINED_FUNCTION_14_4();
}

uint64_t closure #1 in PluginCapabilityCatalog.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
  result = Sequence.compactMap<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v4;
        }

        v8 = *(v5 + 8 * v12);
        ++v11;
        if (v8)
        {
          v33 = v4;
          v11 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v33 = v4;
LABEL_11:
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(a3 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + v13);
    v18 = v17[1];
    v38[0] = *v17;
    v38[1] = v18;

    a1(&v34, v38);
    if (v3)
    {
      break;
    }

    v8 &= v8 - 1;

    if (v35)
    {
      outlined init with take of Transforming(&v34, v37);
      outlined init with take of Transforming(v37, v36);
      v4 = v33;
      v19 = *(v33 + 16);
      if (*(v33 + 24) <= v19)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19 + 1);
        v4 = v39;
      }

      v20 = *(v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = v4 + 64;
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v4 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v4 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v4 + 48) + 16 * v25);
      *v30 = v15;
      v30[1] = v16;
      result = outlined init with take of Transforming(v36, *(v4 + 56) + 40 * v25);
      ++*(v4 + 16);
    }

    else
    {

      result = outlined destroy of PluginPackage?(&v34, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
      v4 = v33;
    }
  }

  v4 = v33;

  return v4;
}