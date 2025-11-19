uint64_t EmptyReferenceResolver.resolve(reference:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = type metadata accessor for RRResult();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for RRReferenceResolverProtocol.resolve(reference:) in conformance EmptyReferenceResolver@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = type metadata accessor for RRResult();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt16VGMd, &_ss11_SetStorageCys6UInt16VGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 2 * v4);
      result = MEMORY[0x223DE0350](v7, *(v6 + 2 * v4), 2);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 2 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 2 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E18_Nlu_External_SpanV11MatcherNameO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C18_Nlu_External_SpanV11MatcherNameOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C18_Nlu_External_SpanV11MatcherNameOGMR);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined init with take of (Siri_Nlu_External_Span, RREntity)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of RRCandidate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMR);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11DeviceClassO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for DeviceClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities11DeviceClassOGMd, &_ss11_SetStorageCy13SiriUtilities11DeviceClassOGMR);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = __CocoaSet.count.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v47 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v43 = v5;
    while (1)
    {
      v15 = MEMORY[0x223DDFF80](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        type metadata accessor for CNContactStore(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v47;
            v5 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v47;
        v5 = v43;
        if (v14 == v47)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v7 + 40);
      v31 = *(v5 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v13 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        type metadata accessor for CNContactStore(0, a4, a5);
        while (1)
        {
          v39 = *(*(v7 + 48) + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v13 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v35) = v37 | v36;
        *(*(v7 + 48) + 8 * v34) = v31;
        v41 = *(v7 + 16);
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v42;
      }

      if (++v29 == v47)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t MusicDomain.__allocating_init()()
{
  v1 = [objc_opt_self() indexMatcher];
  v3[3] = type metadata accessor for SEMSpanMatcher();
  v3[4] = &protocol witness table for SEMSpanMatcher;
  v3[0] = v1;
  return (*(v0 + 104))(v3);
}

unint64_t type metadata accessor for SEMSpanMatcher()
{
  result = lazy cache variable for type metadata for SEMSpanMatcher;
  if (!lazy cache variable for type metadata for SEMSpanMatcher)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SEMSpanMatcher);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys6UInt16VG_SSs5NeverOTg50112_s21SiriInformationSearch11MusicDomainC6search_5query16allowedItemTypes0h5FieldJ0ySayAA12PommesResultCGz_SSSays6D29VGShyALGtKFSSycfu1_SSALXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 2 * v6);
    result = UInt16.cascadeDescription.getter();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MusicDomain.__allocating_init(spanMatcher:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized MusicDomain.init(spanMatcher:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t MusicDomain.init(spanMatcher:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized MusicDomain.init(spanMatcher:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t MusicDomain.search(query:userIds:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v5 = a4;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return (a4)(MEMORY[0x277D84F90], 0);
  }

  v7 = v4;
  v24 = MEMORY[0x277D84F90];
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.music);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v22 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x223DDF870](a3, MEMORY[0x277D837D0]);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2232BB000, v12, v13, "calling search for users %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223DE0F80](v15, -1, -1);
    v19 = v14;
    v5 = v22;
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2234CF940;
  *(v20 + 32) = -1530378132;
  (*(*v7 + 120))(&v24, a1, a2, v20, MEMORY[0x277D84FA0]);

  v5(v24, 0);
}

uint64_t MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (one-time initialization token for music != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.music);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v40 = a3;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = a3;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v47 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v13, &v47);
      _os_log_impl(&dword_2232BB000, v11, v12, "Searching music domain with: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    v47 = a5;
    if (!*(a5 + 16))
    {
      v47 = *(v6 + 32);
    }

    v16 = *(**(v6 + 16) + 136);

    v17 = v16(a2, v40, a4, 0);
    if (!v17)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2232BB000, v21, v22, "Error calling VocabularySearchClient", v23, 2u);
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      lazy protocol witness table accessor for type SearchError and conformance SearchError();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }

    a3 = v17;
    v46 = MEMORY[0x277D84F90];
    v38 = v17 >> 62;
    if (v17 >> 62)
    {
      break;
    }

    a4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a4)
    {
      goto LABEL_27;
    }

LABEL_9:
    v6 = 0;
    a5 = a3 & 0xFFFFFFFFFFFFFF8;
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223DDFF80](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v18 = *(a3 + 8 * v6 + 32);
      }

      v19 = v18;
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v45 = v18;
      specialized closure #1 in MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)(&v45, &v47, &v44);

      if (v44)
      {
        MEMORY[0x223DDF820]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v42 = v46;
      }

      ++v6;
      if (v20 == a4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  a4 = __CocoaSet.count.getter();
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_27:
  v42 = MEMORY[0x277D84F90];
LABEL_28:
  v25 = v42;
  swift_bridgeObjectRetain_n();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v28 = 136315906;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v40, &v46);
    *(v28 + 12) = 2080;

    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys6UInt16VG_SSs5NeverOTg50112_s21SiriInformationSearch11MusicDomainC6search_5query16allowedItemTypes0h5FieldJ0ySayAA12PommesResultCGz_SSSays6D29VGShyALGtKFSSycfu1_SSALXEfU0_Tf1cn_n(v29);

    v45 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v46);

    *(v28 + 14) = v34;
    *(v28 + 22) = 2048;
    if (v38)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v42;

    *(v28 + 24) = v35;

    *(v28 + 32) = 2048;
    if (v42 >> 62)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 34) = v36;

    _os_log_impl(&dword_2232BB000, v26, v27, "SKIT search query=%s allowedFieldTypes=[%s] found %ld items and resolved to %ld items", v28, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  specialized Array.append<A>(contentsOf:)(v25);
}

uint64_t specialized closure #1 in MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.music);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v10 = 136315138;
    v37 = v9;
    v11 = v7;
    v12 = a3;
    v13 = [v11 description];
    v14 = a2;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    a3 = v12;
    v18 = v15;
    a2 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v39);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_2232BB000, v8, v37, "Vocabulary item: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  swift_beginAccess();
  v20 = *a2;

  v21 = dispatch thunk of VocabularyResult.fieldType.getter();
  v22 = specialized Set.contains(_:)(v21, v20);

  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for ClientAudioResult());
    v24 = v7;
    result = ClientAudioResult.init(domain:vocabularyResult:)();
  }

  else
  {
    v26 = v7;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      swift_beginAccess();
      v31 = *a2;

      v32 = Set.description.getter();
      v33 = a3;
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, &v40);
      a3 = v33;

      *(v29 + 4) = v36;
      *(v29 + 12) = 512;
      LOWORD(v36) = dispatch thunk of VocabularyResult.fieldType.getter();

      *(v29 + 14) = v36;
      _os_log_impl(&dword_2232BB000, v27, v28, "Vocabulary item: allowedFieldTypes %s does not contain fieldType %hu, skipping", v29, 0x10u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DE0F80](v30, -1, -1);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t MusicDomain.search(searchRequest:pegasusResponse:serviceHelper:userIds:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v76 = a6;
  v77 = a5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v70 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v69 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PerformanceUtil.Ticket(0);
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v69 - v37;
  v74 = a2;
  MusicDomain.extractClientSignals(_:)(&v69 - v37);
  v75 = v38;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(v38, v35);
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v35, 1, v39) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  }

  else
  {
    v41 = Apple_Parsec_Siri_V2alpha_ClientSignals.disableClientLibrarySearch.getter();
    (*(v40 + 8))(v35, v39);
    if (v41)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2232BB000, v43, v44, "client library search disabled by the server", v45, 2u);
        MEMORY[0x223DE0F80](v45, -1, -1);
      }

      v77(MEMORY[0x277D84F90], 0);
      goto LABEL_21;
    }
  }

  Date.init()();
  v46 = &v29[v25[5]];
  *v46 = "SiriInformationSearch/MusicDomain.swift";
  *(v46 + 1) = 39;
  v46[16] = 2;
  *&v29[v25[6]] = 421;
  v47 = &v29[v25[7]];
  *v47 = "search(searchRequest:pegasusResponse:serviceHelper:userIds:completion:)";
  *(v47 + 1) = 71;
  v47[16] = 2;
  v48 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL);
  v49 = &v29[v25[8]];
  *v49 = v48;
  v49[1] = v50;
  v51 = v74;
  MusicDomain.extractAudioUnderstanding(_:)(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.pommes);
    v54 = v70;
    v53 = v71;
    v55 = *(v71 + 16);
    v56 = v72;
    v55(v70, v51, v72);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v59 = 136315138;
      v55(v69, v54, v56);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      (*(v53 + 8))(v54, v56);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v78);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2232BB000, v57, v58, "Failed to extract audio understanding from the Pegasus response:\n  PireneResponse : %s", v59, 0xCu);
      v64 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x223DE0F80](v64, -1, -1);
      MEMORY[0x223DE0F80](v59, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v54, v56);
    }

    lazy protocol witness table accessor for type SearchError and conformance SearchError();
    v66 = swift_allocError();
    *v67 = 1;
    v77(v66, 1);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v29, 1);
    outlined destroy of PerformanceUtil.Ticket(v29);
LABEL_21:
    v65 = v75;
    return outlined destroy of MediaUserStateCenter?(v65, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  }

  (*(v20 + 32))(v24, v18, v19);
  v65 = v75;
  (*(*v73 + 136))(v24, v75, v77, v76);
  (*(v20 + 8))(v24, v19);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v29, 1);
  outlined destroy of PerformanceUtil.Ticket(v29);
  return outlined destroy of MediaUserStateCenter?(v65, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
}

uint64_t MusicDomain.search(audioUnderstanding:clientSignals:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v54 = a4;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v50 - v15;
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v59, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x277D84F90];
  v22 = closure #1 in MusicDomain.search(audioUnderstanding:clientSignals:completion:)(a2);
  v53 = v4;
  v23 = *(v4 + 32);
  v60 = *(v22 + 2);
  v61 = v22;
  if (v60 < 2)
  {

    v34 = v53;
    v25 = v61;
LABEL_13:
    MusicDomain.search(_:queryFields:allowedFieldTypes:)(&v64, v25, v23);

    (*(**(v34 + 16) + 144))(v48);
  }

  else
  {
    v52 = a3;
    v58 = v17 + 16;
    v57 = *MEMORY[0x277D39500];
    v24 = (v8 + 8);
    v55 = v17 + 8;
    v56 = (v8 + 104);
    v51 = v23;

    a3 = 0;
    while (1)
    {
      v25 = v61;
      if (v60 == a3)
      {
        a3 = v52;
        v34 = v53;
        v23 = v51;
        goto LABEL_13;
      }

      if (a3 >= *(v61 + 2))
      {
        break;
      }

      v26 = v59;
      v27 = (*(v17 + 16))(v21, &v61[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a3++], v59);
      MEMORY[0x223DDAEA0](v27);
      (*v56)(v13, v57, v7);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v28 = *v24;
      (*v24)(v13, v7);
      v28(v16, v7);
      (*(v17 + 8))(v21, v26);
      if (v63 == v62)
      {
        v29 = v51;

        v25 = v61;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.pommes);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        v33 = os_log_type_enabled(v31, v32);
        a3 = v52;
        v34 = v53;
        if (v33)
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_2232BB000, v31, v32, "MusicDomain : excluding artists from allowedFieldTypes", v35, 2u);
          MEMORY[0x223DE0F80](v35, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2234CF910;
        *(inited + 32) = 1216235644;
        *(inited + 36) = -23346;

        v23 = specialized _NativeSet.subtracting<A>(_:)(inited, v29);
        swift_setDeallocating();
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.pommes);
    v38 = v7;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v7;
      v63 = v42;
      *v41 = 136315138;
      v43 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v63);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_2232BB000, v39, v40, "MusicDomain.search : error while searching library : %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DE0F80](v42, -1, -1);
      MEMORY[0x223DE0F80](v41, -1, -1);
    }

    v47 = v7;
    (a3)(v7, 1);
  }

  (a3)(v64, 0);
}

char *closure #1 in MusicDomain.search(audioUnderstanding:clientSignals:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v19 - v5;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(a1, &v19 - v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
LABEL_10:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v16, v17, "MusicDomain : librarySearchTerms from AudioUnderstanding", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  }

  v9 = Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2232BB000, v11, v12, "MusicDomain : librarySearchTerms from ClientSignals", v13, 2u);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  return v9;
}

uint64_t MusicDomain.search(_:queryFields:allowedFieldTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v28 = (v12 - 8);
    v16 = *(v12 + 56);
    v23 = xmmword_2234CF940;
    v22 = v16;
    v14(v10, v15, v4);
    while (1)
    {
      if (Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.getter())
      {
        result = (*v28)(v10, v4);
      }

      else
      {
        v27 = MEMORY[0x223DDAEC0]();
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v19 = swift_allocObject();
        *(v19 + 16) = v23;
        *(v19 + 32) = -1530378132;
        v20 = v29;
        (*(*v26 + 120))(v24, v27, v18, v19, v25);
        v29 = v20;
        if (v20)
        {
          (*v28)(v10, v4);
        }

        (*v28)(v10, v4);

        v16 = v22;
      }

      v15 += v16;
      if (!--v11)
      {
        return result;
      }

      v13(v10, v15, v4);
    }
  }

  return result;
}

uint64_t MusicDomain.extractAudioUnderstanding(_:)@<X0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v53 = a2;
  v56 = a3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v54, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v23 = *(v46 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v46, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1(0);
  v28 = *(v55 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v55, v30);
  v32 = &v45 - v31;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
  v33 = (*(v18 + 8))(v22, v17);
  v34 = MEMORY[0x223DDB8B0](v33);
  (*(v12 + 8))(v16, v54);
  if (*(v34 + 16))
  {
    v35 = v46;
    (*(v23 + 16))(v27, v34 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v46);

    v36 = v47;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v23 + 8))(v27, v35);
    v37 = v50;
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
    v38 = (*(v48 + 8))(v36, v49);
    v53(v38);
    (*(v51 + 8))(v37, v52);
    v40 = v55;
    v39 = v56;
    (*(v28 + 32))(v56, v32, v55);
    v41 = 0;
    v42 = v39;
    v43 = v40;
  }

  else
  {

    v41 = 1;
    v43 = v55;
    v42 = v56;
  }

  return (*(v28 + 56))(v42, v41, 1, v43);
}

uint64_t MusicDomain.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MusicDomain.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt16VGMd, &_ss11_SetStorageCys6UInt16VGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 2 * (v13 | (v11 << 6)));
    result = MEMORY[0x223DE0350](*(v9 + 40), v16, 2);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 2 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v33[0] = a1;
    v30 = *(a1 + 16);
    if (v30)
    {
      v4 = 0;
      v5 = a2 + 56;
      v31 = *(a2 + 40);
      v32 = a1 + 32;
      v29 = -1 << *(a2 + 32);
      v6 = ~v29;
      while (1)
      {
        v7 = *(v32 + 2 * v4++);
        v8 = MEMORY[0x223DE0350](v31, v7, 2);
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v30)
        {
          goto LABEL_15;
        }
      }

      while (*(*(v2 + 48) + 2 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v33[1] = v4;
      v12 = (63 - v29) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v30 = v12;
        v31 = &v29;
        MEMORY[0x28223BE20](i, v15);
        v9 = &v29 - v16;
        memcpy(&v29 - v16, (v2 + 56), v13);
        v17 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v13 = v17 - 1;
        v18 = *(a1 + 16);
        if (v4 == v18)
        {
          break;
        }

        v10 = *(v2 + 40);
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v18)
        {
          v11 = *(v32 + 2 * v4);
          v21 = MEMORY[0x223DE0350](v10, v11, 2);
          v22 = v21 & v12;
          v23 = (v21 & v12) >> 6;
          v24 = 1 << (v21 & v12);
          if ((v24 & *(v5 + 8 * v23)) != 0)
          {
            while (*(*(v2 + 48) + 2 * v22) != v11)
            {
              v22 = (v22 + 1) & v12;
              v23 = v22 >> 6;
              v24 = 1 << v22;
              if (((1 << v22) & *(v5 + 8 * (v22 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v25 = *(v9 + 8 * v23);
            *(v9 + 8 * v23) = v25 & ~v24;
            if ((v25 & v24) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v18 = *(a1 + 16);
          if (v4 == v18)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v27 = swift_slowAlloc();
          memcpy(v27, (v2 + 56), v13);
          v28 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v27, v12, v2, v9, v33);

          MEMORY[0x223DE0F80](v27, -1, -1);

          v2 = v28;
          goto LABEL_15;
        }
      }

LABEL_13:
      v2 = specialized _NativeSet.extractSubset(using:count:)(v9, v30, v13, v2);
LABEL_14:
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 2 * v11 + 32);
      a5[1] = v11 + 1;
      result = MEMORY[0x223DE0350](*(a3 + 40), v15, 2);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 2 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 2 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t specialized MusicDomain.init(spanMatcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20 - v13;
  (*(v7 + 32))(&v20 - v13);
  *(a2 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0350;
  *(inited + 32) = xmmword_2234D0360;
  *(inited + 48) = -1529961267;
  *(inited + 52) = -23348;
  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  *(a2 + 32) = v16;
  type metadata accessor for VocabularySearchClient();
  v17 = swift_allocObject();
  (*(v7 + 16))(v11, v14, a3);
  v18 = specialized VocabularySearchClient.init(spanMatcher:)(v11, v17, a3, a4);
  (*(v7 + 8))(v14, a3);
  *(a2 + 16) = v18;
  return a2;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType);
  }

  return result;
}

uint64_t PommesSearchRequest.userParses.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for NLXResultCandidate();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v20, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v20[1];

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v20[3];

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(v20 + *(v24 + 64), v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v10, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v25 = type metadata accessor for TCUMappedNLResponse();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v7, 1, v25) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v27 = MEMORY[0x277D84F90];
      }

      else
      {
        v35 = TCUMappedNLResponse.nlResponse.getter();
        (*(v26 + 8))(v7, v25);
        v27 = NLParseResponse.userParses.getter();
      }

      v32 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v33 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v34 = v10;
    }

    else
    {
      v27 = v20[2];
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v30 = *(v29 + 64);
      v31 = *(v20 + *(v29 + 80) + 8);

      v32 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v33 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v34 = v20 + v30;
    }

    outlined destroy of MediaUserStateCenter?(v34, v32, v33);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v20 + *(v28 + 48), v15, type metadata accessor for NLXResultCandidate);
    v27 = *v15;

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v15, type metadata accessor for NLXResultCandidate);
  }

  return v27;
}

uint64_t PommesSearchRequest.otherSalientParses()()
{
  v1 = v0;
  v72 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v72, v4);
  v86 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v85 = &v72 - v8;
  v84 = type metadata accessor for Siri_Nlu_External_Parser();
  v9 = *(v84 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v84, v11);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v87 = *(v13 - 8);
  v14 = *(v87 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v72 - v28;
  v30 = type metadata accessor for NLXResultCandidate();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v34 = (&v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v39, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v39[1];

  if (!EnumCaseMultiPayload)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v39 + *(v47 + 48), v34, type metadata accessor for NLXResultCandidate);
    v46 = *v34;

    result = _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v34, type metadata accessor for NLXResultCandidate);
LABEL_7:
    v52 = v72;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v46 = v39[2];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v50 = *(v49 + 64);
    v51 = *(v39 + *(v49 + 80) + 8);

    result = outlined destroy of MediaUserStateCenter?(v39 + v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    goto LABEL_7;
  }

  v42 = v39[3];

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
  outlined init with take of PommesSearchReason?(v39 + *(v43 + 64), v29, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with copy of MediaUserStateCenter?(v29, v26, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v44 = type metadata accessor for TCUMappedNLResponse();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v26, 1, v44) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v26, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = TCUMappedNLResponse.nlResponse.getter();
    (*(v45 + 8))(v26, v44);
    v46 = NLParseResponse.userParses.getter();
  }

  v52 = v72;
  result = outlined destroy of MediaUserStateCenter?(v29, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_10:
  v82 = *(v46 + 16);
  if (v82)
  {
    v54 = 0;
    v80 = (v9 + 8);
    v81 = v87 + 16;
    v79 = *MEMORY[0x277D5DA68];
    v77 = v2 + 8;
    v78 = (v2 + 104);
    v73 = (v87 + 32);
    v76 = (v87 + 8);
    v75 = MEMORY[0x277D84F90];
    v55 = (v2 + 8);
    while (v54 < *(v46 + 16))
    {
      v56 = v46;
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v88 = *(v87 + 72);
      v57 = v46 + v89 + v88 * v54;
      v58 = v13;
      (*(v87 + 16))(v20, v57, v13);
      v59 = v83;
      Siri_Nlu_External_UserParse.parser.getter();
      v60 = v20;
      v61 = v85;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v80)(v59, v84);
      v62 = v86;
      (*v78)(v86, v79, v52);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *v55;
      (*v55)(v62, v52);
      v65 = v61;
      v20 = v60;
      v64(v65, v52);
      if ((v63 & 1) != 0 || (Siri_Nlu_External_UserParse.comparableProbability.getter(), v66 <= 0.05))
      {
        v13 = v58;
        result = (*v76)(v60, v58);
        v46 = v56;
      }

      else
      {
        v67 = *v73;
        v13 = v58;
        (*v73)(v74, v20, v58);
        v68 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 16) + 1, 1);
          v68 = v90;
        }

        v46 = v56;
        v71 = *(v68 + 16);
        v70 = *(v68 + 24);
        if (v71 >= v70 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1);
          v68 = v90;
        }

        *(v68 + 16) = v71 + 1;
        v75 = v68;
        result = v67((v68 + v89 + v71 * v88), v74, v13);
        v52 = v72;
      }

      if (v82 == ++v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
LABEL_23:

    return v75;
  }

  return result;
}

Swift::Bool __swiftcall PommesSearchRequest.pscScoreIsAboveThreshold()()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 48));
  specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
  return v2 <= v1;
}

uint64_t PommesSearchRequest.pommesCandidateId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v2, v8, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v8;
  v10 = v8[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = v8[2];
      v13 = v8[3];
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
      *a1 = v11;
      a1[1] = v10;
      a1[2] = v12;
      a1[3] = v13;
      v15 = *MEMORY[0x277D56620];
      v16 = type metadata accessor for PommesCandidateId();
      (*(*(v16 - 8) + 104))(a1, v15, v16);
      v17 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v18 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v19 = v8 + v14;
    }

    else
    {
      v24 = v8[2];

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v26 = *(v25 + 64);
      v27 = *(v8 + *(v25 + 80) + 8);

      *a1 = v11;
      a1[1] = v10;
      v28 = *MEMORY[0x277D56610];
      v29 = type metadata accessor for PommesCandidateId();
      (*(*(v29 - 8) + 104))(a1, v28, v29);
      v17 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v18 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v19 = v8 + v26;
    }

    return outlined destroy of MediaUserStateCenter?(v19, v17, v18);
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);
    *a1 = v11;
    a1[1] = v10;
    v21 = *MEMORY[0x277D56618];
    v22 = type metadata accessor for PommesCandidateId();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v8 + v20, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v72 = a8;
  v73 = a7;
  v71 = a5;
  v68 = a12;
  v70 = a11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v66 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v64 = &v62 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v67 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v62 - v31;
  v33 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v33[23]] = MEMORY[0x277D84F90];
  v34 = &a9[v33[5]];
  *v34 = a1;
  *(v34 + 1) = a2;
  v35 = v33[6];
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v36 - 8) + 56))(&a9[v35], 1, 1, v36);
  v69 = a6;
  v37 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  v65 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v38 = v65;
  v39 = &a9[v33[8]];
  *v39 = v37;
  *(v39 + 1) = v38;
  v40 = &a9[v33[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v42 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v63 = *(v42 - 8);
  v43 = *(v63 + 56);
  v43(v32, 1, 1, v42);
  v44 = type metadata accessor for NLXResultCandidate();
  v45 = *(v44 + 20);
  v43(v41 + v45, 1, 1, v42);
  v46 = (v41 + *(v44 + 24));
  *v41 = a10;

  v47 = v43;
  outlined assign with take of MediaUserStateCenter?(v32, v41 + v45, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v46 = 0;
  v46[1] = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v73, &a9[v33[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v43(v32, 1, 1, v42);
  v48 = v64;
  v65 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v32, v64);
  v49 = v32;
  v50 = v66;
  outlined destroy of MediaUserStateCenter?(v49, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v48, v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v52 = 1;
    v53 = v67;
  }

  else
  {
    v53 = v67;
    (*(v63 + 32))(v67, v50, v42);
    v52 = 0;
  }

  v47(v53, v52, 1, v42);
  outlined init with take of PommesSearchReason?(v53, &a9[v33[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v54 = v68 & 1;
  *&a9[v33[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v48, v68 & 1);
  v55 = v69;
  v56 = *(v69 + 24);
  v57 = &a9[v33[7]];
  *v57 = *(v69 + 16);
  *(v57 + 1) = v56;
  *&a9[v33[13]] = v55;
  v58 = v72;
  outlined init with copy of MediaUserStateCenter?(v72, &a9[v33[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v33[15]] = v71 & 1;
  *&a9[v33[18]] = v70;

  v59 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v65);

  outlined destroy of MediaUserStateCenter?(v58, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v73, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v33[19]] = v59;
  a9[v33[20]] = v54;
  v61 = &a9[v33[21]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a9[v33[22]] = 0;
  a9[v33[16]] = 0;
  a9[v33[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:tcuId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, char *a16, char *a17)
{
  v88 = a7;
  v89 = a5;
  v90 = a6;
  v80 = a3;
  v81 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v85 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v83 = &v79 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v84 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v86 = &v79 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v82 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v79 - v41;
  v43 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v43[23]] = MEMORY[0x277D84F90];
  v44 = &a9[v43[5]];
  *v44 = a1;
  *(v44 + 1) = a2;
  v45 = v43[6];
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v46 - 8) + 56))(&a9[v45], 1, 1, v46);
  v87 = a8;
  v47 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v48 = &a9[v43[8]];
  *v48 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v48 + 1) = v47;
  v49 = &a9[v43[9]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v51 = v81;
  *a9 = v80;
  *(a9 + 1) = v51;
  v52 = v90;
  *(a9 + 2) = v89;
  *(a9 + 3) = v52;
  outlined init with copy of MediaUserStateCenter?(a12, &a9[v50], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v53 = &a9[v43[10]];
  v89 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v53, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v90 = a12;
  outlined init with copy of MediaUserStateCenter?(a12, v42, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v54 = type metadata accessor for TCUMappedNLResponse();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  LODWORD(a8) = v56(v42, 1, v54);

  if (a8 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v42, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v57 = MEMORY[0x277D84F90];
  }

  else
  {
    v58 = TCUMappedNLResponse.nlResponse.getter();
    (*(v55 + 8))(v42, v54);
    v57 = NLParseResponse.userParses.getter();
  }

  v59 = v82;
  outlined init with copy of MediaUserStateCenter?(v90, v82, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v56(v59, 1, v54) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v59, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v60 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v61 = v83;
    (*(*(v60 - 8) + 56))(v83, 1, 1, v60);
  }

  else
  {
    v62 = TCUMappedNLResponse.nlResponse.getter();
    (*(v55 + 8))(v59, v54);
    v61 = v83;
    NLParseResponse.fallbackParse.getter();
  }

  v63 = v85;
  v64 = v86;
  v65 = v84;
  v85 = a16;
  v86 = a17;
  v84 = a15;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v57, v61, v64);
  outlined destroy of MediaUserStateCenter?(v61, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v64, v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v67 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v67 - 8) + 56))(v63, 1, 1, v67);
  }

  else
  {
    v68 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v69 = v65;
    v70 = v68;
    v71 = *(v68 - 8);
    (*(v71 + 32))(v63, v69, v68);
    (*(v71 + 56))(v63, 0, 1, v70);
  }

  outlined init with take of PommesSearchReason?(v63, &a9[v43[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v43[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v64, 0);
  v72 = v87;
  v73 = *(v87 + 24);
  v74 = &a9[v43[7]];
  *v74 = *(v87 + 16);
  *(v74 + 1) = v73;
  *&a9[v43[13]] = v72;
  outlined init with copy of MediaUserStateCenter?(a11, &a9[v43[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v43[15]] = v88 & 1;
  *&a9[v43[18]] = a13;

  v75 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v57);

  outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(a11, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v89, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v64, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v43[19]] = v75;
  a9[v43[20]] = a14 & 1;
  v77 = &a9[v43[21]];
  v78 = v85;
  *v77 = v84;
  *(v77 + 1) = v78;
  *&a9[v43[22]] = v86;
  a9[v43[16]] = 0;
  a9[v43[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NLXResultCandidate();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v2, v22, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v22[1];

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v22[3];

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(v22 + *(v26 + 64), v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v12, v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v27 = type metadata accessor for TCUMappedNLResponse();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v9, 1, v27) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v29 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
      }

      else
      {
        v36 = TCUMappedNLResponse.nlResponse.getter();
        (*(v28 + 8))(v9, v27);
        NLParseResponse.fallbackParse.getter();

        return outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }
    }

    else
    {
      v32 = v22[2];

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v34 = *(v33 + 64);
      v35 = *(v22 + *(v33 + 80) + 8);

      return outlined init with take of PommesSearchReason?(v22 + v34, a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v22 + *(v31 + 48), v17, type metadata accessor for NLXResultCandidate);
    outlined init with copy of MediaUserStateCenter?(&v17[*(v13 + 20)], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v17, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesSearchRequest.responseVariantResult.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for NLXResultCandidate();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v20, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v20[1];

  if (!EnumCaseMultiPayload)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v20 + *(v28 + 48), v15, type metadata accessor for NLXResultCandidate);
    v29 = &v15[*(v11 + 24)];
    v27 = *v29;
    v30 = v29[1];

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v15, type metadata accessor for NLXResultCandidate);
    return v27;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = v20[2];

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v33 = (v20 + *(v32 + 80));
    v27 = *v33;
    v34 = v33[1];
    v35 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
    v36 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
    v37 = v20 + *(v32 + 64);
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v37, v35, v36);
    return v27;
  }

  v23 = v20[3];

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
  outlined init with take of PommesSearchReason?(v20 + *(v24 + 64), v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with copy of MediaUserStateCenter?(v10, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v25 = type metadata accessor for TCUMappedNLResponse();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v7, 1, v25) != 1)
  {
    v38 = TCUMappedNLResponse.nlResponse.getter();
    (*(v26 + 8))(v7, v25);
    v27 = NLParseResponse.responseVariantResult.getter();

    v35 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
    v36 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
    v37 = v10;
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  return 0;
}

uint64_t PommesSearchRequest.init(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for PommesSearchRequest.Builder(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - v17;
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v10[7];
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  v21 = v10[8];
  v22 = type metadata accessor for PommesCandidateId();
  (*(*(v22 - 8) + 56))(&v18[v21], 1, 1, v22);
  v23 = &v18[v10[9]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v18[v10[10]] = 0;
  v18[v10[11]] = 0;
  v18[v10[12]] = 0;
  v24 = v10[13];
  v25 = type metadata accessor for PommesContext();
  (*(*(v25 - 8) + 56))(&v18[v24], 1, 1, v25);
  v26 = v10[14];
  v27 = type metadata accessor for InputOrigin();
  (*(*(v27 - 8) + 56))(&v18[v26], 1, 1, v27);
  v28 = v10[15];
  v29 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v29 - 8) + 56))(&v18[v28], 1, 1, v29);
  *&v18[v10[16]] = MEMORY[0x277D84F90];
  v30 = v10[17];
  v31 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v31 - 8) + 56))(&v18[v30], 1, 1, v31);
  v32 = &v18[v10[18]];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v18[v10[19]] = 0;
  v18[v10[20]] = 0;
  v33 = &v18[v10[21]];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v18[v10[22]] = 0;
  v18[v10[23]] = 0;
  a1(v18);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v18, v15, type metadata accessor for PommesSearchRequest.Builder);
  PommesSearchRequest.init(builder:)(v15, v8);
  _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v18, type metadata accessor for PommesSearchRequest.Builder);
  v34 = type metadata accessor for PommesSearchRequest(0);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v8, 1, v34))
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v36 = 1;
  }

  else
  {
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v8, a2, type metadata accessor for PommesSearchRequest);
    v36 = 0;
  }

  return (*(v35 + 56))(a2, v36, 1, v34);
}

Swift::String_optional __swiftcall PommesSearchRequest.aceReferenceID()()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v2 = (v0 + *(v1 + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v0 + *(v1 + 32));
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = v3;
  v7 = v4;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v67 = a7;
  v72 = a5;
  v71 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v68 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v65 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v69 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v62 - v30;
  v64 = &v62 - v30;
  v32 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v32[23]] = MEMORY[0x277D84F90];
  v33 = &a9[v32[5]];
  *v33 = a1;
  *(v33 + 1) = a2;
  v34 = v32[6];
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v35 - 8) + 56))(&a9[v34], 1, 1, v35);
  v70 = a6;
  v36 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v37 = &a9[v32[8]];
  *v37 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v37 + 1) = v36;
  v38 = &a9[v32[9]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v40 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v63 = *(v40 - 8);
  v41 = *(v63 + 56);
  v41(v31, 1, 1, v40);
  v42 = type metadata accessor for NLXResultCandidate();
  v43 = *(v42 + 20);
  v41(v39 + v43, 1, 1, v40);
  v44 = (v39 + *(v42 + 24));
  *v39 = a10;

  v45 = v41;

  v46 = v39 + v43;
  v47 = v64;
  v48 = v65;
  outlined assign with take of MediaUserStateCenter?(v64, v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v44 = 0;
  v44[1] = 0;
  v49 = v67;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v49, &a9[v32[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v45(v47, 1, 1, v40);
  v66 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v47, v48);
  v50 = v47;
  v51 = v68;
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v48, v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v53 = 1;
    v54 = v69;
  }

  else
  {
    v54 = v69;
    (*(v63 + 32))(v69, v51, v40);
    v53 = 0;
  }

  v45(v54, v53, 1, v40);
  outlined init with take of PommesSearchReason?(v54, &a9[v32[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v32[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v48, 0);
  v55 = v70;
  v56 = *(v70 + 24);
  v57 = &a9[v32[7]];
  *v57 = *(v70 + 16);
  *(v57 + 1) = v56;
  *&a9[v32[13]] = v55;
  v58 = v73;
  outlined init with copy of MediaUserStateCenter?(v73, &a9[v32[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v32[15]] = v72 & 1;
  *&a9[v32[18]] = v71;

  v59 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v66);

  outlined destroy of MediaUserStateCenter?(v58, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v49, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v32[19]] = v59;
  a9[v32[20]] = 0;
  v61 = &a9[v32[21]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a9[v32[22]] = 0;
  a9[v32[16]] = 0;
  a9[v32[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.rootRequestId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.requestContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 52));
}

void *PommesSearchRequest.asrSpeechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 72));
  v2 = v1;
  return v1;
}

uint64_t PommesSearchRequest.salientNLv4Parses.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 76));
}

uint64_t PommesSearchRequest.sharedUserId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest(0) + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.profileResolutionRequests.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 92));
}

uint64_t PommesSearchRequest.profileResolutionRequests.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest(0) + 92);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:requestId:resultCandidateId:interactionType:pommesContext:userParses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v61 = a7;
  v62 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v59 = &v57 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v60 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v57 - v30;
  v32 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v32[23]] = MEMORY[0x277D84F90];
  v33 = &a9[v32[5]];
  *v33 = a1;
  *(v33 + 1) = a2;
  v34 = v32[6];
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v35 - 8) + 56))(&a9[v34], 1, 1, v35);
  v36 = &a9[v32[8]];
  *v36 = a3;
  *(v36 + 1) = a4;
  v37 = &a9[v32[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a5;
  *(a9 + 1) = a6;
  v39 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v57 = *(v39 - 8);
  v40 = *(v57 + 56);
  v40(v31, 1, 1, v39);
  v41 = type metadata accessor for NLXResultCandidate();
  v42 = *(v41 + 20);
  v40(v38 + v42, 1, 1, v39);
  v43 = (v38 + *(v41 + 24));
  *v38 = a10;

  outlined assign with take of MediaUserStateCenter?(v31, v38 + v42, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v43 = 0;
  v43[1] = 0;
  v44 = v58;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v62, &a9[v32[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v40(v31, 1, 1, v39);
  v45 = v59;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v31, v59);
  v46 = v31;
  v47 = v45;
  outlined destroy of MediaUserStateCenter?(v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v45, v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v48 - 8) + 48))(v44, 1, v48) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v49 = 1;
    v50 = v60;
  }

  else
  {
    v50 = v60;
    (*(v57 + 32))(v60, v44, v39);
    v49 = 0;
  }

  v40(v50, v49, 1, v39);
  outlined init with take of PommesSearchReason?(v50, &a9[v32[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v32[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v47, 0);
  v51 = &a9[v32[7]];
  *v51 = 0;
  *(v51 + 1) = 0;
  *&a9[v32[13]] = 0;
  v52 = v32[14];
  v53 = type metadata accessor for InputOrigin();
  (*(*(v53 - 8) + 56))(&a9[v52], 1, 1, v53);
  a9[v32[15]] = 0;
  *&a9[v32[18]] = 0;
  v54 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(a10);

  outlined destroy of MediaUserStateCenter?(v62, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v61, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMR);
  result = outlined destroy of MediaUserStateCenter?(v47, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v32[19]] = v54;
  a9[v32[20]] = 0;
  v56 = &a9[v32[21]];
  *v56 = 0;
  *(v56 + 1) = 0;
  *&a9[v32[22]] = 0;
  a9[v32[16]] = 0;
  a9[v32[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:requestId:resultCandidateId:interactionType:pommesContext:userParses:assistantId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a7;
  v69 = a8;
  v66 = a11;
  v67 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v62 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v63 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v65 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v60 - v32;
  v34 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v34[23]] = MEMORY[0x277D84F90];
  v35 = &a9[v34[5]];
  *v35 = a1;
  *(v35 + 1) = a2;
  v36 = v34[6];
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v37 - 8) + 56))(&a9[v36], 1, 1, v37);
  v38 = &a9[v34[8]];
  *v38 = a3;
  *(v38 + 1) = a4;
  v39 = &a9[v34[9]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a5;
  *(a9 + 1) = a6;
  v41 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v61 = *(v41 - 8);
  v42 = *(v61 + 56);
  v42(v33, 1, 1, v41);
  v43 = type metadata accessor for NLXResultCandidate();
  v44 = *(v43 + 20);
  v42(v40 + v44, 1, 1, v41);
  v45 = (v40 + *(v43 + 24));
  *v40 = a10;

  outlined assign with take of MediaUserStateCenter?(v33, v40 + v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v45 = 0;
  v45[1] = 0;
  v46 = v62;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v69, &a9[v34[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v42(v33, 1, 1, v41);
  v47 = v63;
  v64 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v33, v63);
  v48 = v33;
  v49 = v47;
  outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v47, v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v50 - 8) + 48))(v46, 1, v50) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v51 = 1;
    v52 = v65;
  }

  else
  {
    v52 = v65;
    (*(v61 + 32))(v65, v46, v41);
    v51 = 0;
  }

  v42(v52, v51, 1, v41);
  outlined init with take of PommesSearchReason?(v52, &a9[v34[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v34[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v49, 0);
  v53 = &a9[v34[7]];
  v54 = v67;
  *v53 = v66;
  *(v53 + 1) = v54;
  *&a9[v34[13]] = 0;
  v55 = v34[14];
  v56 = type metadata accessor for InputOrigin();
  (*(*(v56 - 8) + 56))(&a9[v55], 1, 1, v56);
  a9[v34[15]] = 0;
  *&a9[v34[18]] = 0;
  v57 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v64);

  outlined destroy of MediaUserStateCenter?(v69, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v68, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMR);
  result = outlined destroy of MediaUserStateCenter?(v49, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v34[19]] = v57;
  a9[v34[20]] = 0;
  v59 = &a9[v34[21]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&a9[v34[22]] = 0;
  a9[v34[16]] = 0;
  a9[v34[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v82 = a8;
  v83 = a4;
  v80 = a5;
  v81 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v77 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v75 = &v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v76 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v78 = &v74 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v74 - v37;
  v39 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v39[23]] = MEMORY[0x277D84F90];
  v40 = &a9[v39[5]];
  *v40 = a1;
  *(v40 + 1) = a2;
  v41 = v39[6];
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v42 - 8) + 56))(&a9[v41], 1, 1, v42);
  v79 = a6;
  v43 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v44 = &a9[v39[8]];
  *v44 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v44 + 1) = v43;
  v45 = &a9[v39[9]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v47 = v83;
  *a9 = v81;
  *(a9 + 1) = v47;
  *(a9 + 2) = 0;
  *(a9 + 3) = 0xE000000000000000;
  outlined init with copy of MediaUserStateCenter?(a10, &a9[v46], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v48 = &a9[v39[10]];
  v83 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v48, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v81 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v38, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v49 = type metadata accessor for TCUMappedNLResponse();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = v51(v38, 1, v49);

  if (v52 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v38, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v54 = TCUMappedNLResponse.nlResponse.getter();
    (*(v50 + 8))(v38, v49);
    v53 = NLParseResponse.userParses.getter();
  }

  v55 = v81;
  outlined init with copy of MediaUserStateCenter?(v81, v35, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v51(v35, 1, v49) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v56 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v57 = v75;
    (*(*(v56 - 8) + 56))(v75, 1, 1, v56);
  }

  else
  {
    v58 = TCUMappedNLResponse.nlResponse.getter();
    (*(v50 + 8))(v35, v49);
    v57 = v75;
    NLParseResponse.fallbackParse.getter();
  }

  v59 = v78;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v53, v57, v78);
  outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v60 = v76;
  outlined init with copy of MediaUserStateCenter?(v59, v76, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
  v63 = v77;
  if (v62 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v64 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
  }

  else
  {
    v65 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v66 = *(v65 - 8);
    (*(v66 + 32))(v63, v60, v65);
    (*(v66 + 56))(v63, 0, 1, v65);
  }

  outlined init with take of PommesSearchReason?(v63, &a9[v39[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v39[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v59, 0);
  v67 = v79;
  v68 = *(v79 + 24);
  v69 = &a9[v39[7]];
  *v69 = *(v79 + 16);
  *(v69 + 1) = v68;
  *&a9[v39[13]] = v67;
  v70 = v82;
  outlined init with copy of MediaUserStateCenter?(v82, &a9[v39[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v39[15]] = v80 & 1;
  *&a9[v39[18]] = a11;

  v71 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v53);

  outlined destroy of MediaUserStateCenter?(v55, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(v70, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v83, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v59, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v39[19]] = v71;
  a9[v39[20]] = 0;
  v73 = &a9[v39[21]];
  *v73 = 0;
  *(v73 + 1) = 0;
  *&a9[v39[22]] = 0;
  a9[v39[16]] = 0;
  a9[v39[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v80 = a8;
  v79 = a5;
  v83 = a14;
  v84 = a15;
  v82 = a13;
  v76 = a12;
  v78 = a11;
  v73 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v74 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v72 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v75 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v70 - v35;
  v37 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v37[23]] = MEMORY[0x277D84F90];
  v38 = &a9[v37[5]];
  *v38 = a1;
  *(v38 + 1) = a2;
  v39 = v37[6];
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v40 - 8) + 56))(&a9[v39], 1, 1, v40);
  v77 = a6;
  v41 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v42 = &a9[v37[8]];
  *v42 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v42 + 1) = v41;
  v43 = &a9[v37[9]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &a9[v37[10]];
  v81 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v44, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v45 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v46 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v70 = *(v46 - 8);
  v47 = *(v70 + 56);
  v48 = v36;
  v47(v36, 1, 1, v46);
  v71 = v47;
  v49 = type metadata accessor for NLXResultCandidate();
  v50 = *(v49 + 20);
  v47(v45 + v50, 1, 1, v46);
  v51 = (v45 + *(v49 + 24));
  v52 = v73;
  *v45 = v73;

  v53 = v45 + v50;
  v54 = v72;
  outlined assign with take of MediaUserStateCenter?(v48, v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v51 = 0;
  v51[1] = 0;
  v55 = v71;
  swift_storeEnumTagMultiPayload();
  v55(v48, 1, 1, v46);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v52, v48, v54);
  v56 = v48;
  v57 = v74;
  outlined destroy of MediaUserStateCenter?(v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v54, v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v59 = 1;
    v60 = v75;
  }

  else
  {
    v60 = v75;
    (*(v70 + 32))(v75, v57, v46);
    v59 = 0;
  }

  v55(v60, v59, 1, v46);
  outlined init with take of PommesSearchReason?(v60, &a9[v37[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v61 = v76 & 1;
  *&a9[v37[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v54, v76 & 1);
  v62 = v77;
  v63 = *(v77 + 24);
  v64 = &a9[v37[7]];
  *v64 = *(v77 + 16);
  *(v64 + 1) = v63;
  *&a9[v37[13]] = v62;
  v65 = v80;
  outlined init with copy of MediaUserStateCenter?(v80, &a9[v37[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v37[15]] = v79 & 1;
  *&a9[v37[18]] = v78;

  v66 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v52);

  outlined destroy of MediaUserStateCenter?(v65, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v81, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v54, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v37[19]] = v66;
  a9[v37[20]] = v61;
  v68 = &a9[v37[21]];
  v69 = v83;
  *v68 = v82;
  *(v68 + 1) = v69;
  *&a9[v37[22]] = v84;
  a9[v37[16]] = 0;
  a9[v37[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:tcuId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, char *a16, char *a17, unsigned __int8 a18)
{
  v88 = a7;
  v89 = a5;
  v90 = a6;
  v80 = a3;
  v81 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v85 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v83 = &v80 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v84 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v86 = &v80 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8, v38);
  v82 = &v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v80 - v42;
  v44 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v44[23]] = MEMORY[0x277D84F90];
  v45 = &a9[v44[5]];
  *v45 = a1;
  *(v45 + 1) = a2;
  v46 = v44[6];
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v47 - 8) + 56))(&a9[v46], 1, 1, v47);
  v87 = a8;
  v48 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v49 = &a9[v44[8]];
  *v49 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v49 + 1) = v48;
  v50 = &a9[v44[9]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v52 = v81;
  *a9 = v80;
  *(a9 + 1) = v52;
  v53 = v90;
  *(a9 + 2) = v89;
  *(a9 + 3) = v53;
  outlined init with copy of MediaUserStateCenter?(a12, &a9[v51], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v54 = &a9[v44[10]];
  v89 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v54, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v90 = a12;
  outlined init with copy of MediaUserStateCenter?(a12, v43, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v55 = type metadata accessor for TCUMappedNLResponse();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  LODWORD(a8) = v57(v43, 1, v55);

  if (a8 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v43, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = TCUMappedNLResponse.nlResponse.getter();
    (*(v56 + 8))(v43, v55);
    v58 = NLParseResponse.userParses.getter();
  }

  v60 = v82;
  outlined init with copy of MediaUserStateCenter?(v90, v82, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v57(v60, 1, v55) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v61 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v62 = v83;
    (*(*(v61 - 8) + 56))(v83, 1, 1, v61);
  }

  else
  {
    v63 = TCUMappedNLResponse.nlResponse.getter();
    (*(v56 + 8))(v60, v55);
    v62 = v83;
    NLParseResponse.fallbackParse.getter();
  }

  v64 = v85;
  v65 = v86;
  v66 = v84;
  LODWORD(v86) = a18;
  v84 = a16;
  v85 = a17;
  v83 = a15;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v58, v62, v65);
  outlined destroy of MediaUserStateCenter?(v62, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v65, v66, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v66, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v68 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
  }

  else
  {
    v69 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v70 = v66;
    v71 = v69;
    v72 = *(v69 - 8);
    (*(v72 + 32))(v64, v70, v69);
    (*(v72 + 56))(v64, 0, 1, v71);
  }

  outlined init with take of PommesSearchReason?(v64, &a9[v44[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v44[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v65, 0);
  v73 = v87;
  v74 = *(v87 + 24);
  v75 = &a9[v44[7]];
  *v75 = *(v87 + 16);
  *(v75 + 1) = v74;
  *&a9[v44[13]] = v73;
  outlined init with copy of MediaUserStateCenter?(a11, &a9[v44[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v44[15]] = v88 & 1;
  *&a9[v44[18]] = a13;

  v76 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v58);

  outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(a11, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v89, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v44[19]] = v76;
  a9[v44[20]] = a14 & 1;
  v78 = &a9[v44[21]];
  v79 = v84;
  *v78 = v83;
  v78[1] = v79;
  *&a9[v44[22]] = v85;
  a9[v44[16]] = v86 & 1;
  a9[v44[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v82 = a8;
  v81 = a5;
  v87 = a16;
  v85 = a14;
  v86 = a15;
  v84 = a13;
  v78 = a12;
  v80 = a11;
  v75 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v76 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v74 = &v71 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v77 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v71 - v36;
  v38 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v38[23]] = MEMORY[0x277D84F90];
  v39 = &a9[v38[5]];
  *v39 = a1;
  *(v39 + 1) = a2;
  v40 = v38[6];
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v41 - 8) + 56))(&a9[v40], 1, 1, v41);
  v79 = a6;
  v42 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v43 = &a9[v38[8]];
  *v43 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v43 + 1) = v42;
  v44 = &a9[v38[9]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &a9[v38[10]];
  v83 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v45, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v46 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v47 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v72 = *(v47 - 8);
  v48 = *(v72 + 56);
  v49 = v37;
  v48(v37, 1, 1, v47);
  v73 = v48;
  v50 = type metadata accessor for NLXResultCandidate();
  v51 = *(v50 + 20);
  v48(v46 + v51, 1, 1, v47);
  v52 = (v46 + *(v50 + 24));
  v53 = v75;
  *v46 = v75;

  v54 = v46 + v51;
  v55 = v74;
  outlined assign with take of MediaUserStateCenter?(v49, v54, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v52 = 0;
  v52[1] = 0;
  v56 = v73;
  swift_storeEnumTagMultiPayload();
  v56(v49, 1, 1, v47);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v53, v49, v55);
  v57 = v49;
  v58 = v76;
  outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v55, v58, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v58, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v60 = 1;
    v61 = v77;
  }

  else
  {
    v61 = v77;
    (*(v72 + 32))(v77, v58, v47);
    v60 = 0;
  }

  v56(v61, v60, 1, v47);
  outlined init with take of PommesSearchReason?(v61, &a9[v38[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v62 = v78 & 1;
  *&a9[v38[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v55, v78 & 1);
  v63 = v79;
  v64 = *(v79 + 24);
  v65 = &a9[v38[7]];
  *v65 = *(v79 + 16);
  *(v65 + 1) = v64;
  *&a9[v38[13]] = v63;
  v66 = v82;
  outlined init with copy of MediaUserStateCenter?(v82, &a9[v38[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v38[15]] = v81 & 1;
  *&a9[v38[18]] = v80;

  v67 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v53);

  outlined destroy of MediaUserStateCenter?(v66, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v83, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v55, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v38[19]] = v67;
  a9[v38[20]] = v62;
  v69 = &a9[v38[21]];
  v70 = v85;
  *v69 = v84;
  *(v69 + 1) = v70;
  *&a9[v38[22]] = v86;
  a9[v38[16]] = v87 & 1;
  a9[v38[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void, void)@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17)
{
  v81 = a8;
  v80 = a5;
  v72 = a3;
  v73 = a4;
  v87 = a17;
  v86 = a16;
  v84 = a14;
  v85 = a15;
  v83 = a13;
  v77 = a12;
  v79 = a11;
  v71 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v75 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v74 = &v69 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v76 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v69 - v35;
  v70 = &v69 - v35;
  v37 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v37[23]] = MEMORY[0x277D84F90];
  v38 = &a9[v37[5]];
  *v38 = a1;
  *(v38 + 1) = a2;
  v39 = v37[6];
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v40 - 8) + 56))(&a9[v39], 1, 1, v40);
  v78 = a6;
  v41 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v42 = &a9[v37[8]];
  *v42 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v42 + 1) = v41;
  v43 = &a9[v37[9]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &a9[v37[10]];
  v82 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v44, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v45 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  v46 = v73;
  *a9 = v72;
  *(a9 + 1) = v46;
  outlined init with copy of MediaUserStateCenter?(a17, v36, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v47 = type metadata accessor for NLXResultCandidate();
  v48 = *(v47 + 20);
  v49 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v50 = *(v49 - 8);
  v73 = *(v50 + 56);
  v73(v45 + v48, 1, 1, v49);
  v51 = (v45 + *(v47 + 24));
  v52 = v71;
  *v45 = v71;

  outlined assign with take of MediaUserStateCenter?(v70, v45 + v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v51 = 0;
  v51[1] = 0;
  swift_storeEnumTagMultiPayload();
  v54 = v74;
  v53 = v75;
  v55 = v52;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v52, v87, v74);
  v56 = v54;
  outlined init with copy of MediaUserStateCenter?(v54, v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v57 - 8) + 48))(v53, 1, v57) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v58 = 1;
    v59 = v76;
  }

  else
  {
    v59 = v76;
    (*(v50 + 32))(v76, v53, v49);
    v58 = 0;
  }

  v73(v59, v58, 1, v49);
  outlined init with take of PommesSearchReason?(v59, &a9[v37[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v60 = v77 & 1;
  *&a9[v37[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v56, v77 & 1);
  v61 = v78;
  v62 = *(v78 + 24);
  v63 = &a9[v37[7]];
  *v63 = *(v78 + 16);
  *(v63 + 1) = v62;
  *&a9[v37[13]] = v61;
  v64 = v81;
  outlined init with copy of MediaUserStateCenter?(v81, &a9[v37[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v37[15]] = v80 & 1;
  *&a9[v37[18]] = v79;

  v65 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v55);

  outlined destroy of MediaUserStateCenter?(v87, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined destroy of MediaUserStateCenter?(v64, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v82, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v37[19]] = v65;
  a9[v37[20]] = v60;
  v67 = &a9[v37[21]];
  v68 = v84;
  *v67 = v83;
  *(v67 + 1) = v68;
  *&a9[v37[22]] = v85;
  a9[v37[16]] = v86 & 1;
  a9[v37[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.Builder.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for PommesSearchRequest.Builder(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for PommesCandidateId();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&a1[v2[8]] = 0;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  v8 = v2[11];
  v9 = type metadata accessor for PommesContext();
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[12];
  v11 = type metadata accessor for InputOrigin();
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v2[13];
  v13 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  *&a1[v2[14]] = MEMORY[0x277D84F90];
  v14 = v2[15];
  v15 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  result = (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v17 = &a1[v2[16]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a1[v2[17]] = 0;
  a1[v2[18]] = 0;
  v18 = &a1[v2[19]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[20]] = 0;
  a1[v2[21]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(builder:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v183 = (v179 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v181 = v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v182 = v179 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v185 = v179 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v186 = v179 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = v179 - v23;
  MEMORY[0x28223BE20](v22, v25);
  *&v188 = v179 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v180 = v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v184 = v179 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = v179 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v41 = v179 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8, v44);
  v46 = v179 - v45;
  v47 = type metadata accessor for PommesCandidateId();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v53 = (v179 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51, v54);
  v191 = v179 - v55;
  v56 = type metadata accessor for PommesSearchRequest(0);
  v192 = *(v56 - 1);
  v57 = *(v192 + 64);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v61 = v179 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61[*(v59 + 92)] = MEMORY[0x277D84F90];
  v62 = a1[1];
  if (!v62)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.pommes);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2232BB000, v71, v72, "Attempting to create a PommesSearchRequest without an utterance", v73, 2u);
      MEMORY[0x223DE0F80](v73, -1, -1);
    }

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(a1, type metadata accessor for PommesSearchRequest.Builder);
    return (*(v192 + 56))(v193, 1, 1, v56);
  }

  v63 = *a1;
  v189 = v56;
  v190 = v61;
  v64 = &v61[v56[5]];
  *v64 = v63;
  *(v64 + 1) = v62;
  v187 = type metadata accessor for PommesSearchRequest.Builder(0);
  v65 = a1;
  outlined init with copy of MediaUserStateCenter?(a1 + v187[6], v46, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v46, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2232BB000, v67, v68, "Attempting to create a PommesSearchRequest without a candidateId", v69, 2u);
      MEMORY[0x223DE0F80](v69, -1, -1);
    }

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(a1, type metadata accessor for PommesSearchRequest.Builder);

    v56 = v189;
    return (*(v192 + 56))(v193, 1, 1, v56);
  }

  v74 = v48;
  v179[1] = v62;
  v75 = *(v48 + 32);
  v76 = v191;
  v75(v191, v46, v47);
  (*(v74 + 16))(v53, v76, v47);
  v77 = (*(v74 + 88))(v53, v47);
  if (v77 == *MEMORY[0x277D56618])
  {
    v179[0] = v74;
    v78 = *(v74 + 96);
    v186 = v47;
    v78(v53, v47);
    v79 = *v53;
    v80 = v53[1];
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    v82 = v190;
    v83 = (v190 + *(v81 + 48));
    *v190 = v79;
    v82[1] = v80;
    v84 = v187;
    v85 = v187[14];
    v182 = v187[15];
    v86 = v65;
    v87 = *(v65 + v85);
    outlined init with copy of MediaUserStateCenter?(v86 + v182, v41, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v88 = (v86 + v84[16]);
    v89 = v88[1];
    v181 = *v88;
    v90 = type metadata accessor for NLXResultCandidate();
    v91 = *(v90 + 20);
    v92 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v180 = *(v92 - 8);
    v93 = *(v180 + 7);
    v184 = v180 + 56;
    v185 = v92;
    v183 = v93;
    (v93)(v83 + v91, 1, 1);
    v94 = (v83 + *(v90 + 24));
    *v83 = v87;

    v95 = v83 + v91;
    v96 = v87;
    outlined assign with take of MediaUserStateCenter?(v41, v95, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *v94 = v181;
    v94[1] = v89;
    v97 = v86;
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    v98 = v188;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v87, v86 + v182, v188);
    outlined init with copy of MediaUserStateCenter?(v98, v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v99 - 8) + 48))(v24, 1, v99) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v100 = 1;
      v56 = v189;
      v101 = v185;
    }

    else
    {
      v112 = v24;
      v113 = v185;
      (*(v180 + 4))(v38, v112, v185);
      v100 = 0;
      v56 = v189;
      v101 = v113;
    }

    v183(v38, v100, 1, v101);
    v114 = v190;
    outlined init with take of PommesSearchReason?(v38, v190 + v56[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v106 = v187;
    v115 = *(v97 + v187[18]);
    *(v114 + v56[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v98, v115);
    v116 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v96);
    v47 = v186;
    goto LABEL_37;
  }

  if (v77 == *MEMORY[0x277D56620])
  {
    v179[0] = v74;
    (*(v74 + 96))(v53, v47);
    v188 = *v53;
    v102 = v53[2];
    v103 = v53[3];
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
    v105 = v190;
    *v190 = v188;
    v105[2] = v102;
    v105[3] = v103;
    v106 = v187;
    v107 = v187[13];
    v97 = v65;
    outlined init with copy of MediaUserStateCenter?(v65 + v107, v105 + v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    v108 = v183;
    outlined init with copy of MediaUserStateCenter?(v65 + v107, v183, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v109 = type metadata accessor for TCUMappedNLResponse();
    v110 = *(v109 - 8);
    LODWORD(v103) = (*(v110 + 48))(v108, 1, v109);

    if (v103 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v108, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v111 = MEMORY[0x277D84F90];
    }

    else
    {
      v133 = TCUMappedNLResponse.nlResponse.getter();
      (*(v110 + 8))(v108, v109);
      v111 = NLParseResponse.userParses.getter();
    }

    v56 = v189;
    v134 = v185;
    v98 = v186;
    v135 = v184;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v111, v97 + v106[15], v186);
    outlined init with copy of MediaUserStateCenter?(v98, v134, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v136 - 8) + 48))(v134, 1, v136) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v134, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v137 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      (*(*(v137 - 8) + 56))(v135, 1, 1, v137);
    }

    else
    {
      v144 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v145 = *(v144 - 8);
      (*(v145 + 32))(v135, v134, v144);
      (*(v145 + 56))(v135, 0, 1, v144);
    }

    v114 = v190;
    outlined init with take of PommesSearchReason?(v135, v190 + v56[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v115 = *(v97 + v106[18]);
    *(v114 + v56[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v98, v115);
    v146 = v111;
LABEL_36:
    v116 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v146);

LABEL_37:
    outlined destroy of MediaUserStateCenter?(v98, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    *(v114 + v56[19]) = v116;
    v149 = v106[8];
    v150 = *(v97 + v149);
    if (v150)
    {
      v151 = *(v179[0] + 8);
      v152 = *(v97 + v149);

      v151(v191, v47);
      *(v114 + v56[13]) = v150;
      v153 = *(v150 + 24);
      v154 = (v114 + v56[7]);
      *v154 = *(v150 + 16);
      v154[1] = v153;
      v155 = *(v150 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
      v156 = *(v150 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
      v157 = (v114 + v56[8]);
      *v157 = v155;
      v157[1] = v156;
      v158 = (v97 + v106[7]);
      v159 = *v158;
      v160 = v158[1];
      v161 = (v114 + v56[9]);
      *v161 = v159;
      v161[1] = v160;
      outlined init with copy of MediaUserStateCenter?(v97 + v106[11], v114 + v56[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined init with copy of MediaUserStateCenter?(v97 + v106[12], v114 + v56[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      v162 = v97;
      v163 = *(v97 + v106[17]);
      *(v114 + v56[18]) = v163;
      *(v114 + v56[20]) = v115;
      *(v114 + v56[15]) = *(v162 + v106[9]);
      *(v114 + v56[16]) = *(v162 + v106[10]);
      v164 = (v162 + v106[19]);
      v165 = *v164;
      v166 = v164[1];
      v167 = (v114 + v56[21]);
      *v167 = v165;
      v167[1] = v166;
      *(v114 + v56[22]) = *(v162 + v106[20]);
      outlined init with copy of MediaUserStateCenter?(v162 + v106[5], v114 + v56[6], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
      v168 = *(v162 + v106[21]);

      v169 = v163;
      _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v162, type metadata accessor for PommesSearchRequest.Builder);
      *(v114 + v56[17]) = v168;
      v170 = v193;
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v114, v193, type metadata accessor for PommesSearchRequest);
      (*(v192 + 56))(v170, 0, 1, v56);
      return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v114, type metadata accessor for PommesSearchRequest);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v172 = type metadata accessor for Logger();
    __swift_project_value_buffer(v172, static Logger.pommes);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.fault.getter();
    v175 = os_log_type_enabled(v173, v174);
    v176 = v179[0];
    if (v175)
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_2232BB000, v173, v174, "Attempting to create a PommesSearchRequest without a requestContext", v177, 2u);
      MEMORY[0x223DE0F80](v177, -1, -1);
    }

    (*(v176 + 8))(v191, v47);
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v97, type metadata accessor for PommesSearchRequest.Builder);
    v178 = v190;
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v190, type metadata accessor for PommesSearchRequest.ParseState);

    outlined destroy of MediaUserStateCenter?(v178 + v56[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    goto LABEL_44;
  }

  v97 = v65;
  v106 = v187;
  if (v77 == *MEMORY[0x277D56610])
  {
    v179[0] = v74;
    (*(v74 + 96))(v53, v47);
    v117 = *v53;
    v118 = v53[1];
    v119 = *(v65 + v106[14]);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v121 = *(v120 + 64);
    v122 = v190;
    v123 = (v190 + *(v120 + 80));
    *v190 = v117;
    v122[1] = v118;
    v122[2] = v119;
    v124 = v106[15];
    outlined init with copy of MediaUserStateCenter?(v65 + v124, v122 + v121, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v125 = (v65 + v106[16]);
    v126 = v125[1];
    *v123 = *v125;
    v123[1] = v126;
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();

    v98 = v182;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v127, v65 + v124, v182);
    v128 = v181;
    outlined init with copy of MediaUserStateCenter?(v98, v181, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v130 = (*(*(v129 - 8) + 48))(v128, 1, v129);
    v56 = v189;
    if (v130 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v128, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v131 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v132 = v180;
      (*(*(v131 - 8) + 56))(v180, 1, 1, v131);
    }

    else
    {
      v147 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v148 = *(v147 - 8);
      v132 = v180;
      (*(v148 + 32))(v180, v128, v147);
      (*(v148 + 56))(v132, 0, 1, v147);
    }

    v114 = v190;
    outlined init with take of PommesSearchReason?(v132, v190 + v56[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v115 = *(v97 + v106[18]);
    *(v114 + v56[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v98, v115);

    goto LABEL_36;
  }

  v138 = one-time initialization token for pommes;

  v56 = v189;
  if (v138 != -1)
  {
    swift_once();
  }

  v139 = type metadata accessor for Logger();
  __swift_project_value_buffer(v139, static Logger.pommes);
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&dword_2232BB000, v140, v141, "A new PommesCandidateId case was added and used to construct a PommesSearchRequest without updating the initializer", v142, 2u);
    MEMORY[0x223DE0F80](v142, -1, -1);
  }

  v143 = *(v74 + 8);
  v143(v191, v47);
  _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v97, type metadata accessor for PommesSearchRequest.Builder);
  v143(v53, v47);
LABEL_44:

  return (*(v192 + 56))(v193, 1, 1, v56);
}

uint64_t PommesSearchRequest.Builder.utterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PommesSearchRequest.Builder.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.assistantId.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t PommesSearchRequest.Builder.rootRequestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.Builder.requestContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 32));
}

uint64_t PommesSearchRequest.Builder.requestContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isMultiUser.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isOnlyUserInHome.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.userParses.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 56));
}

uint64_t PommesSearchRequest.Builder.userParses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 56);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.responseVariantResult.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *PommesSearchRequest.Builder.asrSpeechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 68));
  v2 = v1;
  return v1;
}

void PommesSearchRequest.Builder.asrSpeechPackage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 68);

  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequest.Builder.isFallback.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.sharedUserId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesSearchRequest.Builder.sharedUserId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.Builder.userIdentityClassification.setter(uint64_t a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isGestureBased.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t PommesSearchRequest.description.getter()
{
  v1 = v0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v2 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v3);
  v94 = &v90 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v6);
  v92 = &v90 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v8 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91, v9);
  v11 = &v90 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v90 - v19;
  v21 = type metadata accessor for NLXResultCandidate();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v0, v30, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = *v30;
  v32 = v30[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v30[3];

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(v30 + *(v35 + 64), v20, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v98[0] = 0;
      v98[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v98[0] = 0xD000000000000010;
      v98[1] = 0x80000002234E1D20;
      MEMORY[0x223DDF6D0](v33, v32);

      v36 = v98[1];
      v90 = v98[0];
      v98[0] = 0;
      v98[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v98[0] = 0xD000000000000010;
      v98[1] = 0x80000002234E1D40;
      outlined init with copy of MediaUserStateCenter?(v20, v17, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v37 = type metadata accessor for TCUMappedNLResponse();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v17, 1, v37) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v17, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v39 = MEMORY[0x277D84F90];
      }

      else
      {
        v53 = TCUMappedNLResponse.nlResponse.getter();
        (*(v38 + 8))(v17, v37);
        v54 = NLParseResponse.userParses.getter();

        v39 = v54;
      }

      v55 = *(v39 + 16);

      v96 = v55;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v56);

      MEMORY[0x223DDF6D0](0x2973286D65746920, 0xE900000000000029);
      v44 = v98[0];
      v43 = v98[1];
      outlined destroy of MediaUserStateCenter?(v20, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v41 = v90;
    }

    else
    {
      v45 = v30[2];
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v47 = *(v46 + 64);
      v48 = *(v30 + *(v46 + 80) + 8);

      strcpy(v98, "refId: ");
      v98[1] = 0xE700000000000000;
      MEMORY[0x223DDF6D0](v33, v32);

      v49 = v98[0];
      v36 = v98[1];
      v98[0] = 0;
      v98[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      strcpy(v98, "userParses: (");
      HIWORD(v98[1]) = -4864;
      v50 = *(v45 + 16);

      v96 = v50;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v51);

      MEMORY[0x223DDF6D0](0x7328736D65746920, 0xEA00000000002929);
      v44 = v98[0];
      v43 = v98[1];
      v52 = v30 + v47;
      v41 = v49;
      outlined destroy of MediaUserStateCenter?(v52, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v30 + *(v40 + 48), v25, type metadata accessor for NLXResultCandidate);
    v98[0] = 0;
    v98[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v98[0] = 0xD000000000000013;
    v98[1] = 0x80000002234E1D60;
    MEMORY[0x223DDF6D0](v33, v32);

    v41 = v98[0];
    v36 = v98[1];
    v98[0] = 0;
    v98[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v98, "userParses: (");
    HIWORD(v98[1]) = -4864;
    v42 = NLXResultCandidate.description.getter();
    MEMORY[0x223DDF6D0](v42);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v44 = v98[0];
    v43 = v98[1];
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v25, type metadata accessor for NLXResultCandidate);
  }

  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(252);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xEC00000022203A65);
  v57 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x223DDF6D0](*(v1 + v57[5]), *(v1 + v57[5] + 8));
  MEMORY[0x223DDF6D0](0x6575716572202C22, 0xEE00203A64497473);
  v58 = v1 + v57[8];
  v59 = *(v58 + 8);
  v96 = *v58;
  v97 = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v60 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v60);

  MEMORY[0x223DDF6D0](8236, 0xE200000000000000);
  MEMORY[0x223DDF6D0](v41, v36);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E1C20);
  outlined init with copy of MediaUserStateCenter?(v1 + v57[10], v11, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v61 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v61);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E1C40);
  outlined init with copy of MediaUserStateCenter?(v1 + v57[11], v92, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v62 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v62);

  MEMORY[0x223DDF6D0](2108450, 0xE300000000000000);
  MEMORY[0x223DDF6D0](v44, v43);

  MEMORY[0x223DDF6D0](0x6F6353637370202CLL, 0xED000022203A6572);
  v63 = *(v1 + v57[12]);
  v64 = Double.description.getter();
  MEMORY[0x223DDF6D0](v64);

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1C60);
  v65 = v1 + v57[7];
  v66 = *(v65 + 8);
  v96 = *v65;
  v97 = v66;

  v67 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v67);

  MEMORY[0x223DDF6D0](0x4F7475706E69202CLL, 0xEF203A6E69676972);
  outlined init with copy of MediaUserStateCenter?(v1 + v57[14], v94, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v68 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v68);

  MEMORY[0x223DDF6D0](0x746C754D7369202CLL, 0xEF203A7265735569);
  if (*(v1 + v57[15]))
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (*(v1 + v57[15]))
  {
    v70 = 0xE400000000000000;
  }

  else
  {
    v70 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v69, v70);

  v71 = MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E1C80);
  v72 = *(v1 + v57[13]);
  if (v72)
  {
    v73 = (*(*v72 + 256))(v71);
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v96 = v73;
  v97 = v74;
  v75 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v75);

  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234E1CA0);
  v96 = *(v1 + v57[18]);
  v76 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  v77 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v77);

  MEMORY[0x223DDF6D0](0x6C6C61467369202CLL, 0xEE00203A6B636162);
  if (*(v1 + v57[20]))
  {
    v78 = 1702195828;
  }

  else
  {
    v78 = 0x65736C6166;
  }

  if (*(v1 + v57[20]))
  {
    v79 = 0xE400000000000000;
  }

  else
  {
    v79 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v78, v79);

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1CC0);
  if (*(v1 + v57[21] + 8))
  {
    v80 = 0xD000000000000011;
  }

  else
  {
    v80 = 7104878;
  }

  if (*(v1 + v57[21] + 8))
  {
    v81 = 0x80000002234E1D00;
  }

  else
  {
    v81 = 0xE300000000000000;
  }

  MEMORY[0x223DDF6D0](v80, v81);

  MEMORY[0x223DDF6D0](0xD00000000000001ELL, 0x80000002234E1CE0);
  v82 = *(v1 + v57[22]);
  v83 = AFUserIdentityClassficationGetName();
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v96 = v85;
  v97 = v87;
  v88 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v88);

  return v98[0];
}

uint64_t PommesSearchRequest.resultCandidateId.getter()
{
  v1 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v0, v5, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v5, type metadata accessor for PommesSearchRequest.ParseState);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "Caller needs migrated to use TRP IDs", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v10 = *v5;
    v11 = v5[1];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v5 + *(v12 + 48), type metadata accessor for NLXResultCandidate);
  }

  return v10;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMd, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMR, &_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDyS2SGGMd, &_ss23_ContiguousArrayStorageCySDyS2SGGMR, &_sSDyS2SGMd, &_sSDyS2SGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14MediaUserState_pMd, &_s21SiriInformationSearch14MediaUserState_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PommesSearchRequest()
{
  type metadata accessor for PommesSearchRequest.ParseState(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?, MEMORY[0x277D398D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesRequestContext?, type metadata accessor for PommesRequestContext, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for InputOrigin?, MEMORY[0x277D61CA8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for AFUserIdentityClassfication(319);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest], MEMORY[0x277D39D28], MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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
}

unint64_t type metadata accessor for AFSpeechPackage()
{
  result = lazy cache variable for type metadata for AFSpeechPackage;
  if (!lazy cache variable for type metadata for AFSpeechPackage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSpeechPackage);
  }

  return result;
}

void type metadata completion function for PommesSearchRequest.ParseState()
{
  type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?)(319, v1);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate)()
{
  if (!lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate))
  {
    type metadata accessor for NLXResultCandidate();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?)()
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?));
    }
  }
}

void type metadata accessor for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?)(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?))
  {
    MEMORY[0x28223BE20](a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?));
    }
  }
}

void type metadata completion function for PommesSearchRequest.Builder()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?, MEMORY[0x277D398D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesCandidateId?, MEMORY[0x277D56628], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesRequestContext?, type metadata accessor for PommesRequestContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for InputOrigin?, MEMORY[0x277D61CA8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for TCUMappedNLResponse?, MEMORY[0x277D5D140], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for AFUserIdentityClassfication(319);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t PommesLocationInfo.init(location:accuracyAuthorization:locationNeedsUpdateForAccuracy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t LocationStatus.description.getter()
{
  v1 = type metadata accessor for LocationStatus();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000015;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6C696176616E752ELL;
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
      v8 = type metadata accessor for Date();
      (*(*(v8 - 8) + 8))(&v5[v7], v8);
      return 0x676E69646E65702ELL;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    outlined destroy of LocationStatus(v5);
    return 0xD00000000000001ELL;
  }
}

uint64_t static PommesLocationInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & (v3 == v6) & (v4 ^ v7 ^ 1);
}

void PommesLocationInfo.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *v0;
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v1);
  Hasher._combine(_:)(v2);
}

Swift::Int PommesLocationInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesLocationInfo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PommesLocationInfo()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *v0;
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesLocationInfo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesLocationInfo(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & (v3 == v6) & (v4 ^ v7 ^ 1);
}

Swift::Int LocationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t specialized static LocationStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v48 = *(v4 - 8);
  v5 = v48[8];
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for LocationStatus();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14LocationStatusO_ACtMd, &_s21SiriInformationSearch14LocationStatusO_ACtMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v27 = &v45 - v26;
  v28 = &v45 + *(v25 + 56) - v26;
  outlined init with copy of LocationStatus(a1, &v45 - v26);
  outlined init with copy of LocationStatus(a2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_21;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of LocationStatus(v27, v21);
      v35 = *v21;
      if (!swift_getEnumCaseMultiPayload())
      {
        v36 = v21[16];
        v37 = *(v21 + 1);
        v38 = *v28;
        v39 = *(v28 + 1);
        v40 = v28[16];
        type metadata accessor for NSObject();
        v41 = static NSObject.== infix(_:_:)();

        v34 = v41 & (v37 == v39) & (v36 ^ v40 ^ 1);
LABEL_29:
        outlined destroy of LocationStatus(v27);
        return v34 & 1;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of LocationStatus(v27, v18);
      v30 = *v18;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v18[8];
        v45 = *v28;
        v46 = v30;
        v47 = v28[8];
        v33 = v48[4];
        v33(v12, &v18[v31], v4);
        v33(v9, &v28[v31], v4);
        if (v32)
        {
          if (!v47)
          {
LABEL_7:
            v34 = 0;
LABEL_28:
            v43 = v48[1];
            v43(v9, v4);
            v43(v12, v4);
            goto LABEL_29;
          }
        }

        else
        {
          if (v46 == v45)
          {
            v42 = v47;
          }

          else
          {
            v42 = 1;
          }

          if (v42)
          {
            goto LABEL_7;
          }
        }

        v34 = static Date.== infix(_:_:)();
        goto LABEL_28;
      }

      (v48[1])(&v18[v31], v4);
      goto LABEL_21;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_21:
      outlined destroy of (LocationStatus, LocationStatus)(v27);
      v34 = 0;
      return v34 & 1;
    }
  }

  outlined destroy of LocationStatus(v27);
  v34 = 1;
  return v34 & 1;
}

unint64_t lazy protocol witness table accessor for type PommesLocationInfo and conformance PommesLocationInfo()
{
  result = lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo;
  if (!lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesLocationInfo(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PommesLocationInfo(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PommesLocationInfo.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PommesLocationInfo.Options(uint64_t result, int a2, int a3)
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

void type metadata completion function for LocationStatus()
{
  type metadata accessor for (CLAccuracyAuthorization?, Date)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (CLAccuracyAuthorization?, Date)()
{
  if (!lazy cache variable for type metadata for (CLAccuracyAuthorization?, Date))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23CLAccuracyAuthorizationVSgMd, &_sSo23CLAccuracyAuthorizationVSgMR);
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CLAccuracyAuthorization?, Date));
    }
  }
}

uint64_t outlined destroy of (LocationStatus, LocationStatus)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14LocationStatusO_ACtMd, &_s21SiriInformationSearch14LocationStatusO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.__allocating_init(appDataProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:));
  swift_arrayDestroy();
  *(v2 + 56) = v3;
  outlined init with take of PommesAppChecking(a1, v2 + 16);
  return v2;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:)(uint64_t a1)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:));
  swift_arrayDestroy();
  *(v1 + 56) = v3;
  outlined init with take of PommesAppChecking(a1, v1 + 16);
  return v1;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v97 = *v1;
  v98 = type metadata accessor for PommesSearchReason();
  v95 = *(v98 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v98, v5);
  v94 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v93 = (&v91 - v10);
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PommesSearchRequest(0);
  v17 = *(v92 + 76);
  v96 = a1;
  v18 = *(a1 + v17);
  v115 = MEMORY[0x277D84F90];
  v106 = *(v18 + 16);
  if (v106)
  {
    v19 = 0;
    v2 = 0;
    v105 = v12 + 16;
    v104 = (v12 + 8);
    v99 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F70];
    v101 = v16;
    v103 = v11;
    v102 = v12;
    v100 = v18;
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v22 = v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v23 = *(v12 + 72);
      v108 = v19;
      (*(v12 + 16))(v16, v22 + v23 * v19, v11);
      v24 = Siri_Nlu_External_Span.matcherNames.getter();
      v25 = specialized Sequence.flatMap<A>(_:)(v24);
      if (v2)
      {
        (*v104)(v16, v11);

        if (one-time initialization token for pommes != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_54;
      }

      v26 = v25;

      v107 = 0;
      if (v26 >> 62)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v108;
      if (!v27)
      {
LABEL_3:

        v16 = v101;
        v11 = v103;
        (*v104)(v101, v103);
        v2 = v107;
        v19 = v108;
        v21 = v108 == v106;
        v12 = v102;
        goto LABEL_4;
      }

      v28 = 0;
      v29 = (v26 & 0xC000000000000001);
      v30 = v26 & 0xFFFFFFFFFFFFFF8;
      v109 = v26 & 0xFFFFFFFFFFFFFF8;
      v110 = v26 & 0xC000000000000001;
      while (1)
      {
        if (v29)
        {
          MEMORY[0x223DDFF80](v28, v26);
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v28 >= *(v30 + 16))
          {
            goto LABEL_70;
          }

          v31 = *(v26 + 8 * v28 + 32);

          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        static UsoTask_CodegenConverter.convert(task:)();
        outlined init with copy of MediaUserStateCenter?(v114, v113, &_sypSgMd, &_sypSgMR);
        if (!v113[3])
        {
          outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);
LABEL_29:
          outlined destroy of MediaUserStateCenter?(v113, &_sypSgMd, &_sypSgMR);
          goto LABEL_13;
        }

        outlined init with copy of MediaUserStateCenter?(v113, v112, &_sypSgMd, &_sypSgMR);
        type metadata accessor for UsoTask_open_common_App();
        if (swift_dynamicCast())
        {
          outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);

          __swift_destroy_boxed_opaque_existential_1(v112);
          outlined destroy of MediaUserStateCenter?(v113, &_sypSgMd, &_sypSgMR);
          goto LABEL_35;
        }

        type metadata accessor for UsoTask_start_uso_NoEntity();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

          if (v111)
          {
            v33 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);
            if (v33)
            {
              goto LABEL_34;
            }

            goto LABEL_12;
          }

          goto LABEL_11;
        }

        type metadata accessor for UsoTask_play_uso_NoEntity();
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_1(v112);
          goto LABEL_29;
        }

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

        if (v111)
        {
          break;
        }

LABEL_11:
        outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v112);
        outlined destroy of MediaUserStateCenter?(v113, &_sypSgMd, &_sypSgMR);
        v20 = MEMORY[0x277D84F70];
        v30 = v109;
        v29 = v110;
LABEL_13:

        ++v28;
        if (v32 == v27)
        {
          goto LABEL_3;
        }
      }

      v34 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      outlined destroy of MediaUserStateCenter?(v114, &_sypSgMd, &_sypSgMR);
      if (!v34)
      {
        goto LABEL_12;
      }

LABEL_34:

      __swift_destroy_boxed_opaque_existential_1(v112);
      outlined destroy of MediaUserStateCenter?(v113, &_sypSgMd, &_sypSgMR);
      v20 = MEMORY[0x277D84F70];
LABEL_35:
      v16 = v101;
      v11 = v103;
      (*v104)(v101, v103);

      MEMORY[0x223DDF820](v35);
      v2 = v107;
      v12 = v102;
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = MEMORY[0x277D84F70];
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = v115;
      v19 = v108;
      v21 = v108 == v106;
LABEL_4:
      v18 = v100;
      if (v21)
      {
        goto LABEL_40;
      }
    }
  }

  v99 = MEMORY[0x277D84F90];
LABEL_40:
  v20 = v99;
  if (!(v99 >> 62))
  {
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_80:

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.pommes);
    v47 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_2232BB000, v47, v89, "NonSiriKitMediaAppLaunchPreflightClient#ignore no valid appLaunch task from NLv4 parse", v90, 2u);
      MEMORY[0x223DE0F80](v90, -1, -1);
    }

    goto LABEL_84;
  }

LABEL_79:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_80;
  }

LABEL_42:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x223DDFF80](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_88:
      swift_once();
LABEL_54:
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.pommes);
      v51 = v2;
      v47 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v114[0] = v54;
        *v53 = 136315138;
        v113[0] = v2;
        v55 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v56 = String.init<A>(describing:)();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v114);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_2232BB000, v47, v52, "ConversionUtils.convertUserDialogActToTasks error: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x223DE0F80](v54, -1, -1);
        MEMORY[0x223DE0F80](v53, -1, -1);

LABEL_84:
        return 1;
      }

      return 1;
    }

    v37 = *(v20 + 32);
  }

  v38 = specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(task:)();
  if (!v39)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.pommes);

    v47 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v47, v60))
    {
      goto LABEL_61;
    }

    v49 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v114[0] = v61;
    *v49 = 136315138;
    v113[0] = v37;
    type metadata accessor for UsoTask();

    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v114);

    *(v49 + 4) = v64;
    _os_log_impl(&dword_2232BB000, v47, v60, "NonSiriKitMediaAppLaunchPreflightClient#ignore Received a nil bundle ID from UsoTask %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x223DE0F80](v61, -1, -1);
    goto LABEL_60;
  }

  v40 = v38;
  v20 = v39;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.pommes);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v114[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v20, v114);
    _os_log_impl(&dword_2232BB000, v42, v43, "Extracted bundle ID: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x223DE0F80](v45, -1, -1);
    MEMORY[0x223DE0F80](v44, -1, -1);
  }

  v46 = NonSiriKitMediaAppLaunchPreflightClient.isMediaIntent(bundleId:)(v40, v20);
  if (v46 == 2)
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_61:

      goto LABEL_84;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2232BB000, v47, v48, "NonSiriKitMediaAppLaunchPreflightClient#ignore cannot look up app info, passing to Pegasus", v49, 2u);
LABEL_60:
    MEMORY[0x223DE0F80](v49, -1, -1);
    goto LABEL_61;
  }

  if (v46)
  {

    v29 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v114[0] = v67;
      *v66 = 136315138;
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v20, v114);

      *(v66 + 4) = v68;
      v69 = "NonSiriKitMediaAppLaunchPreflightClient#ignore found media app %s, passing to Pegasus";
LABEL_73:
      _os_log_impl(&dword_2232BB000, v29, v65, v69, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v66, -1, -1);
LABEL_75:

      return 1;
    }

    goto LABEL_74;
  }

  v110 = v40;
  v70 = v96;
  v71 = (v96 + *(v92 + 32));
  v72 = *v71;
  v109 = v71[1];
  v73 = v93;
  PommesSearchRequest.pommesCandidateId.getter(v93);
  v74 = type metadata accessor for PommesCandidateId();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  v75 = v94;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v94);
  v76 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v70, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v72, v109, v73, v75, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000027, 0x80000002234D8590);
  (*(v95 + 8))(v75, v98);
  outlined destroy of MediaUserStateCenter?(v73, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  v29 = Logger.logObject.getter();
  if (!v76)
  {
LABEL_71:
    v65 = static os_log_type_t.error.getter();

    v84 = os_log_type_enabled(v29, v65);
    v85 = v110;
    if (v84)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v114[0] = v67;
      *v66 = 136315138;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v20, v114);

      *(v66 + 4) = v86;
      v69 = "NonSiriKitMediaAppLaunchPreflightClient#ignore could not build PommesResponse with given parameters: %s";
      goto LABEL_73;
    }

LABEL_74:

    goto LABEL_75;
  }

  v77 = v76;
  v78 = static os_log_type_t.default.getter();

  v79 = os_log_type_enabled(v29, v78);
  v80 = v110;
  if (v79)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v114[0] = v82;
    *v81 = 136315138;
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v20, v114);

    *(v81 + 4) = v83;
    _os_log_impl(&dword_2232BB000, v29, v78, "NonSiriKitMediaAppLaunchPreflightClient#handle Non-ambiguous non-media app launch task: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x223DE0F80](v82, -1, -1);
    MEMORY[0x223DE0F80](v81, -1, -1);
  }

  else
  {
  }

  return v77;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.isMediaIntent(bundleId:)(uint64_t a1, unint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 16))(v53, a1, a2, 0, v5, v6);
  if (v54)
  {
    v50 = v54;
    v7 = v53[1];
    v49 = v53[0];
    v8 = v55;
    v9 = v56;
    if (one-time initialization token for pommes != -1)
    {
LABEL_41:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v57 = v8;
    v58[0] = v9;

    v8 = v50;

    outlined init with copy of MediaUserStateCenter?(&v57, v52, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(v58, v52, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    outlined destroy of MediaUserStateCenter?(&v57, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v58, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v52[0] = v14;
      *v13 = 136315138;
      if (v7)
      {
        v15 = v49;
      }

      else
      {
        v15 = 7104878;
      }

      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v52);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2232BB000, v11, v12, "App ID: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DE0F80](v14, -1, -1);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    outlined init with copy of MediaUserStateCenter?(&v57, v52, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(v58, v52, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    outlined destroy of MediaUserStateCenter?(&v57, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v58, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v52[0] = v21;
      *v20 = 136315138;

      v22 = Set.description.getter();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v52);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2232BB000, v18, v19, "Supported intents: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    v26 = 1 << *(v50 + 32);
    v9 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v50 + 56);
    v29 = (v26 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    while (1)
    {
      do
      {
        if (!v28)
        {
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= v29)
            {

              outlined destroy of MediaUserStateCenter?(&v57, &_sShySSGMd, &_sShySSGMR);
              outlined destroy of MediaUserStateCenter?(v58, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

              return 0;
            }

            v31 = *(v50 + 56 + 8 * v32);
            ++v30;
            if (v31)
            {
              v30 = v32;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_41;
        }

        v31 = v28;
LABEL_23:
        v28 = (v31 - 1) & v31;
        v7 = *(v51 + 56);
      }

      while (!*(v7 + 16));
      v33 = (*(v8 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v31)))));
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v7 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v37 = Hasher._finalize()();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      if ((*(v7 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        break;
      }

LABEL_32:

      v8 = v50;
      v9 = -1;
    }

    v40 = ~v38;
    while (1)
    {
      v41 = (*(v7 + 48) + 16 * v39);
      v42 = *v41 == v35 && v41[1] == v34;
      if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v7 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    outlined destroy of MediaUserStateCenter?(&v57, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v58, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

    return 1;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v52);
      _os_log_impl(&dword_2232BB000, v44, v45, "Cannot look up the app %s on device, passing to Pegasus", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x223DE0F80](v47, -1, -1);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

    return 2;
  }
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(entity:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v83 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMd, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMR);
  v89 = *(v24 - 8);
  v90 = v24;
  v25 = *(v89 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v83 - v27;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4EdgeV_AA4NodeVtMd, &_s12SiriOntology4EdgeV_AA4NodeVtMR);
  v29 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91, v30);
  v32 = &v83 - v31;
  v33 = type metadata accessor for Node();
  v94 = *(v33 - 8);
  v34 = v94[8];
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v39);
  v93 = &v83 - v40;
  if (!a1)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_14:
      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static Logger.pommes);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2232BB000, v70, v71, "Received a nil UsoEntity when extracting bundle ID", v72, 2u);
        MEMORY[0x223DE0F80](v72, -1, -1);
      }

      return 0;
    }

LABEL_30:
    swift_once();
    goto LABEL_14;
  }

  v88 = v28;
  v83 = v11;
  v84 = v14;

  CodeGenBase.entity.getter();
  UsoEntity.usoValue.getter();
  v92 = v33;

  UsoValue.graphNode.getter();

  v41 = type metadata accessor for Kind();
  v42 = *(*(v41 - 8) + 56);
  v42(v23, 1, 1, v41);
  v42(v20, 1, 1, v41);
  v43 = Node.connectedNodes(nodeKind:edgeKind:)();
  outlined destroy of MediaUserStateCenter?(v20, &_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v44 = v92;
  outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v45 = v94 + 1;
  v46 = v94[1];
  v46(v38, v44);
  if (!*(v43 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.pommes);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2232BB000, v80, v81, "Failed to retrieve the connected node, cannot lookup bundle ID", v82, 2u);
      MEMORY[0x223DE0F80](v82, -1, -1);
    }

    return 0;
  }

  v85 = v46;
  v86 = v45;
  v87 = a1;
  v47 = v88;
  outlined init with copy of MediaUserStateCenter?(v43 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v88, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMd, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMR);

  v48 = v91;
  v90 = *(v90 + 48);
  v49 = *(v91 + 48);
  v50 = type metadata accessor for Edge();
  v51 = *(v50 - 8);
  (*(v51 + 32))(v32, v47, v50);
  v52 = v94[4];
  v52(&v32[v49], v47 + v90, v44);
  v52(v93, &v32[*(v48 + 48)], v44);
  (*(v51 + 8))(v32, v50);
  v53 = Node.identifiers.getter();
  v54 = v53;
  v55 = *(v53 + 16);
  if (v55)
  {
    v56 = 0;
    v57 = v53 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v58 = (v95 + 8);
    while (v56 < *(v54 + 16))
    {
      (*(v95 + 16))(v7, v57 + *(v95 + 72) * v56, v96);
      v60 = UsoIdentifier.namespace.getter();
      if (v61)
      {
        if (v60 == 0x64695F6D657469 && v61 == 0xE700000000000000)
        {

LABEL_12:

          v62 = v96;
          v64 = v95 + 32;
          v63 = *(v95 + 32);
          v65 = v83;
          v63(v83, v7, v96);
          v66 = v84;
          v63(v84, v65, v62);
          v67 = UsoIdentifier.value.getter();

          (*(v64 - 24))(v66, v62);
          v85(v93, v92);
          return v67;
        }

        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v59)
        {
          goto LABEL_12;
        }
      }

      ++v56;
      (*v58)(v7, v96);
      if (v55 == v56)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_17:

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, static Logger.pommes);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v92;
  if (v76)
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_2232BB000, v74, v75, "Cannot find a node that contains the app bundle ID", v78, 2u);
    MEMORY[0x223DE0F80](v78, -1, -1);
  }

  else
  {
  }

  v85(v93, v77);
  return 0;
}

uint64_t specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of MediaUserStateCenter?(v22, v20, &_sypSgMd, &_sypSgMR);
  if (v21)
  {
    outlined init with copy of MediaUserStateCenter?(v20, v19, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_open_common_App();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v0 = type metadata accessor for Logger();
      __swift_project_value_buffer(v0, static Logger.pommes);
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_2232BB000, v1, v2, "Converting UsoTask_open_common_App to UsoEntity_common_App", v3, 2u);
        MEMORY[0x223DE0F80](v3, -1, -1);
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      v4 = v18;
      goto LABEL_22;
    }

    type metadata accessor for UsoTask_start_uso_NoEntity();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.pommes);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_19;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Converting UsoTask_start_uso_NoEntity to UsoEntity_common_App";
LABEL_18:
      _os_log_impl(&dword_2232BB000, v6, v7, v9, v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
LABEL_19:

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v18)
      {
        v4 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v4 = 0;
      }

LABEL_22:
      v11 = specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(entity:)(v4);

      outlined destroy of MediaUserStateCenter?(v22, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_1(v19);
      goto LABEL_29;
    }

    type metadata accessor for UsoTask_play_uso_NoEntity();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.pommes);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_19;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Converting UsoTask_play_uso_NoEntity to UsoEntity_common_App";
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, v19);
    _os_log_impl(&dword_2232BB000, v13, v14, "Received an unsupported type of UsoTask %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223DE0F80](v16, -1, -1);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v22, &_sypSgMd, &_sypSgMR);
  v11 = 0;
LABEL_29:
  outlined destroy of MediaUserStateCenter?(v20, &_sypSgMd, &_sypSgMR);
  return v11;
}

uint64_t SourceMatchFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized SourceMatchFeaturiser.init(query:)(a1);

  return v5;
}

uint64_t SourceMatchFeaturiser.name.getter()
{
  type metadata accessor for SourceMatchFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21SourceMatchFeaturiserCmMd, &_s21SiriInformationSearch21SourceMatchFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t SourceMatchFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized SourceMatchFeaturiser.init(query:)(a1);

  return v1;
}

id SourceMatchFeaturiser.currentUser.getter()
{
  result = [objc_opt_self() currentPersona];
  if (result)
  {
    v1 = result;
    v2 = [result userPersonaUniqueString];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id SourceMatchFeaturiser.isPrimaryUser.getter()
{
  v0 = [objc_opt_self() currentPersona];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isDefaultPersona];

  return v2;
}

void SourceMatchFeaturiser.featurise(candidate:rankedSlotIndex:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v11 = *MEMORY[0x277D39108];
  v12 = v5[13];
  v12(v9, v11, v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun);
  v29[1] = v10;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = v5[1];
  v13(v9, v4);
  if (v33 == v32)
  {
    if (*(*a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
    {
      v31 = 1;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v31 = 0;
  }

  v14 = *a1;
  v30 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source;
  if (*(v14 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_isRequestingAppleMusic) == 1)
  {
    v12(v9, v11, v4);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = (v13)(v9, v4);
    v18 = v17 ^ 1;
    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
LABEL_14:
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v14) + 0xD0))(v16);
  if (!v21)
  {
    if ((v31 | v18))
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v22 = v21;
  if ((v31 & 1) == 0)
  {

    if ((v18 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    v26 = 1065520988;
    goto LABEL_32;
  }

  if (v20 == (*(*v2 + 112))() && v22 == v23)
  {

    goto LABEL_31;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 | v18))
  {
    goto LABEL_31;
  }

LABEL_25:
  if (*(v14 + v30))
  {
    v26 = 1065437102;
LABEL_32:
    v27 = *&v26;
    goto LABEL_33;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v27 = 1.01;
  }

  else
  {
    v27 = 1.0;
  }

LABEL_33:
  v28 = (*((*v19 & *v14) + 0xB8))();
  (*((*v19 & *v28) + 0xA0))(v27);
}

uint64_t SourceMatchFeaturiser.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SourceMatchFeaturiser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized SourceMatchFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = Apple_Parsec_Siri_V2alpha_AudioNoun.rawValue.getter();
    *(v7 + 12) = 1024;
    *(v7 + 14) = (*(*a1 + 168))() & 1;

    _os_log_impl(&dword_2232BB000, v5, v6, "SourceMatchFeaturiser : noun=%ld, isRequestingAppleMusic=%{BOOL}d", v7, 0x12u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  v8 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v11 = (*(*(v10 - 8) + 16))(v2 + v9, a1 + v8, v10);
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_isRequestingAppleMusic) = (*(*a1 + 168))(v11) & 1;
  return v2;
}

uint64_t type metadata accessor for SourceMatchFeaturiser()
{
  result = type metadata singleton initialization cache for SourceMatchFeaturiser;
  if (!type metadata singleton initialization cache for SourceMatchFeaturiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for SourceMatchFeaturiser()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
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

uint64_t AFPreferences.siriLanguageCode.getter()
{
  v1 = [v0 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v3;
}

void *SageSearchRequestProcessor.__allocating_init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v37 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v4 + 48);
  v24 = *(v4 + 52);
  v25 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v26 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v26;
  v25[4] = v27;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v33[1] = a1;
  v25[2] = a1;
  outlined init with copy of PommesSearchRequest(a2, v25 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest);
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v35;
  v25[3] = v36;
  v36 = type metadata accessor for OS_dispatch_queue();
  v40 = 0;
  v41 = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  v40 = 0xD000000000000026;
  v41 = 0x80000002234DEEB0;
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v18 + 8))(v22, v17);
  MEMORY[0x223DDF6D0](v28, v30);

  static DispatchQoS.userInitiated.getter();
  v40 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, *MEMORY[0x277D85260], v39);
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v34, type metadata accessor for PommesSearchRequest);
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v31;
  return v25;
}

uint64_t key path setter for SageSearchRequestProcessor.pommesSearchRequest : SageSearchRequestProcessor(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest(a1, v8);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  outlined assign with take of PommesSearchRequest(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t SageSearchRequestProcessor.pommesSearchRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  return outlined init with copy of PommesSearchRequest(v1 + v3, a1);
}

uint64_t key path setter for SageSearchRequestProcessor.clientEntities : SageSearchRequestProcessor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t SageSearchRequestProcessor.clientEntities.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void *SageSearchRequestProcessor.init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v35 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsComponentIdGenerator();
  v24 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v24;
  v5[4] = v25;
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v31[1] = a1;
  v5[2] = a1;
  outlined init with copy of PommesSearchRequest(a2, v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v32;
  v5[3] = v33;
  v33 = type metadata accessor for OS_dispatch_queue();
  v38 = 0;
  v39 = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  v38 = 0xD000000000000026;
  v39 = 0x80000002234DEEB0;
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v19 + 8))(v23, v18);
  MEMORY[0x223DDF6D0](v26, v28);

  static DispatchQoS.userInitiated.getter();
  v38 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v35, *MEMORY[0x277D85260], v37);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v34, type metadata accessor for PommesSearchRequest);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v29;
  return v5;
}

uint64_t SageSearchRequestProcessor.search()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for PommesSearchRequest(0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for PegasusSearchResponse(0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearchRequestProcessor.search(), 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[2];
  v4 = (*(*v2 + 136))();
  v5 = (*(*v2 + 160))(v4);
  v0[5] = v5;
  v11 = (*v3 + 360);
  v12 = (*v11 + **v11);
  v6 = (*v11)[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = SageSearchRequestProcessor.search();
  v9 = v0[3];
  v8 = v0[4];

  return v12(v8, v9, v5);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[5];
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v3[3], type metadata accessor for PommesSearchRequest);

    return MEMORY[0x2822009F8](SageSearchRequestProcessor.search(), 0, 0);
  }

  else
  {
    v5 = v3[5];
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v3[3], type metadata accessor for PommesSearchRequest);

    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v3;
    v6[1] = SageSearchRequestProcessor.search();
    v7 = v3[2];
    v8 = v3[4];

    return SageSearchRequestProcessor.handlePegasusResponse(_:)(v8);
  }
}

{
  v1 = v0[3];
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0[4], type metadata accessor for PegasusSearchResponse);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v0[1];

  return v4();
}

{
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0[4], type metadata accessor for PegasusSearchResponse);
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t SageSearchRequestProcessor.search()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = SageSearchRequestProcessor.search();
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = SageSearchRequestProcessor.search();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t SageSearchRequestProcessor.handlePegasusResponse(_:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v2[30] = v9;
  v10 = *(v9 - 8);
  v2[31] = v10;
  v11 = *(v10 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v2[34] = v12;
  v13 = *(v12 - 8);
  v2[35] = v13;
  v14 = *(v13 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v2[41] = v15;
  v16 = *(v15 - 8);
  v2[42] = v16;
  v17 = *(v16 + 64) + 15;
  v2[43] = swift_task_alloc();
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v2[44] = v18;
  v19 = *(v18 - 8);
  v2[45] = v19;
  v20 = *(v19 + 64) + 15;
  v2[46] = swift_task_alloc();
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2[47] = v21;
  v22 = *(v21 - 8);
  v2[48] = v22;
  v23 = *(v22 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearchRequestProcessor.handlePegasusResponse(_:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v7 = SageSearchRequestProcessor.handlePegasusResponse(_:);
  }

  else
  {
    *(v4 + 440) = a1;
    v7 = SageSearchRequestProcessor.handlePegasusResponse(_:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v238 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 176);
  v5 = type metadata accessor for PegasusSearchResponse(0);
  v6 = *(v3 + 16);
  v6(v1, v4 + *(v5 + 20), v2);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  v208 = v0 + 16;
  outlined assign with take of SportsPersonalizationExperiencesResolver?(v0 + 56, v0 + 16);
  if (one-time initialization token for sage != -1)
  {
LABEL_49:
    swift_once();
  }

  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 376);
  v206 = type metadata accessor for Logger();
  __swift_project_value_buffer(v206, static Logger.sage);
  v6(v7, v8, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v233 = v0;
  v227 = v6;
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v237[0] = v17;
    *v16 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v18 = Message.textFormatString()();
    v19 = *(v15 + 8);
    v19(v13, v14);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18._countAndFlagsBits, v18._object, v237);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2232BB000, v10, v11, "PireneResponse: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DE0F80](v17, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  else
  {

    v19 = *(v15 + 8);
    v19(v13, v14);
  }

  v224 = v19;
  v233[26].i64[0] = v19;
  v21 = v233[25].i64[1];
  v23 = v233[22].i64[1];
  v22 = v233[23].i64[0];
  v25 = v233[21].i64[1];
  v24 = v233[22].i64[0];
  v26 = v233[20].i64[1];
  v27 = v233[21].i64[0];
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v28 = (*(v23 + 8))(v22, v24);
  v29 = MEMORY[0x223DDBA80](v28);
  (*(v27 + 8))(v25, v26);
  if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter())
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v233;
      v0 = v233[17].i64[1];
      v32 = v233[15].i64[1];
      v237[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v33 = v237[0];
      v35 = *(v32 + 16);
      v32 += 16;
      v34 = v35;
      v200 = v29;
      v36 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v218 = (v32 - 8);
      v198 = v36;
      v199 = v30;
      v6 = v30;
      v221 = *(v32 + 56);
      do
      {
        v37 = v233[19].i64[1];
        v38 = v233[16].i64[1];
        v39 = v33;
        v40 = v233[15].i64[0];
        v41 = v34(v38, v36, v40);
        MEMORY[0x223DDBB90](v41);
        v42 = *v218;
        v43 = v40;
        v33 = v39;
        (*v218)(v38, v43);
        v237[0] = v39;
        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
          v33 = v237[0];
        }

        v47 = v233[19].i64[1];
        v48 = v233[17].i64[0];
        *(v33 + 16) = v46;
        v49 = *(v0 + 72);
        v50 = v33 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + v49 * v45;
        v51 = v33 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
        (*(v0 + 32))(v50, v47, v48);
        v36 += v221;
        v6 = (v6 - 1);
      }

      while (v6);
      v203 = v46;
      v204 = v42;
      v69 = v233[17].i64[1];
      v201 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels;
      v202 = v233[11].i64[1];
      swift_beginAccess();
      v70 = 0;
      v231 = (v69 + 16);
      v71 = (v69 + 8);
      v205 = v34;
      v72 = v49;
      while (v70 != v203)
      {
        if (v70 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v215 = v33;
        v212 = v51;
        v228 = v72;
        v209 = v70;
        v6 = *v231;
        (*v231)(v31[40], v51 + v70 * v72, v31[34]);
        v76 = *(v202 + v201);
        if (*(v76 + 16))
        {
          v77 = v31[40];
          v78 = v31[34];
          v79 = *(v76 + 40);
          _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);

          v80 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v81 = -1 << *(v76 + 32);
          v82 = v80 & ~v81;
          if ((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
          {
            v83 = ~v81;
            do
            {
              v84 = v233[20].i64[0];
              v85 = v233[18].i64[1];
              v86 = v233[17].i64[0];
              v6(v85, *(v76 + 48) + v82 * v228, v86);
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
              v87 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v71)(v85, v86);
              if (v87)
              {
                break;
              }

              v82 = (v82 + 1) & v83;
            }

            while (((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0);
          }

          else
          {
            v87 = 0;
          }

          v31 = v233;
        }

        else
        {
          v87 = 0;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v88 = v31[40];
        v89 = v31[38];
        v90 = v31[34];
        __swift_project_value_buffer(v206, static Logger.pommes);
        v6(v89, v88, v90);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();
        v93 = os_log_type_enabled(v91, v92);
        v94 = v31[38];
        v95 = v31[34];
        v0 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v93)
        {
          v6 = swift_slowAlloc();
          *v6 = 134218240;
          v96 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v73 = *v71;
          (*v71)(v94, v95);
          *(v6 + 4) = v96;
          v31 = v233;
          *(v6 + 6) = 1024;
          *(v6 + 14) = v87 & 1;
          _os_log_impl(&dword_2232BB000, v91, v92, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v6, 0x12u);
          MEMORY[0x223DE0F80](v6, -1, -1);
        }

        else
        {
          v73 = *v71;
          (*v71)(v31[38], v31[34]);
        }

        v70 = v209 + 1;
        v74 = v31[40];
        v75 = v31[34];

        v73(v74, v75);
        v33 = v215;
        v51 = v212;
        v72 = v228;
        if (v87)
        {

          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            *v123 = 0;
            _os_log_impl(&dword_2232BB000, v121, v122, "Already attempted profile slice resolution; yielding error response", v123, 2u);
            MEMORY[0x223DE0F80](v123, -1, -1);
          }

          lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
          swift_allocError();
          *v124 = 6;
          goto LABEL_73;
        }
      }

      v232 = v31[23];

      v97 = v198;
      v98 = v199;
      do
      {
        v100 = v31[36];
        v99 = v31[37];
        v234 = v31[34];
        v101 = v31[32];
        v102 = v31[30];
        v103 = v205(v101, v97, v102);
        MEMORY[0x223DDBB90](v103);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v99, v100);
        (*v71)(v99, v234);
        swift_endAccess();
        v204(v101, v102);
        v97 += v221;
        --v98;
      }

      while (v98);
      v104 = v200;

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = v31[30];
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v237[0] = v109;
        *v108 = 136315138;
        v110 = MEMORY[0x223DDF850](v200, v107);
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v237);
        v104 = v200;

        *(v108 + 4) = v112;
        _os_log_impl(&dword_2232BB000, v105, v106, "Adding profile slice resolution requests: %s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x223DE0F80](v109, -1, -1);
        MEMORY[0x223DE0F80](v108, -1, -1);
      }

      v113 = v31[23];
      v114 = v113 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      v115 = *(type metadata accessor for PommesSearchRequest(0) + 92);
      v116 = *(v114 + v115);
      *(v114 + v115) = v104;

      v117 = *(*v113 + 216);
      v235 = (v117 + *v117);
      v118 = v117[1];
      v119 = swift_task_alloc();
      v31[53] = v119;
      *v119 = v31;
      v119[1] = SageSearchRequestProcessor.handlePegasusResponse(_:);
      v120 = v31[23];

      v235();
      return;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v52 = v233[25].i64[1];
  v53 = v233[14].i64[0];
  v54 = v233[14].i64[1];
  v55 = v233[13].i64[1];
  v56 = static PerformanceUtil.shared;
  v57 = swift_task_alloc();
  *(v57 + 16) = v208;
  *(v57 + 24) = v52;
  Date.init()();
  v58 = *(*v56 + 200);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v58(0xD00000000000002ALL, 0x80000002234DBF50, 0, v54, "SiriInformationSearch/SageSearchRequestProcessor.swift", 54, 2, 73, "handlePegasusResponse(_:)", 25, 2, partial apply for closure #4 in SageSearchRequestProcessor.handlePegasusResponse(_:), v57, v59);
  (*(v53 + 8))(v54, v55);

  v60 = v233[10].i64[1];
  if (v60 >> 62)
  {
    if (v60 < 0)
    {
      v125 = v233[10].i64[1];
    }

    if (__CocoaSet.count.getter())
    {
LABEL_16:
      if ((v60 & 0xC000000000000001) == 0)
      {
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v61 = *(v60 + 32);
          v62 = dispatch thunk of Experience.pluginIdentifier.getter();
          v64 = v63;

          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v65 = *(v60 + 32);
LABEL_20:
            v66 = v65;
            dispatch thunk of Experience.queryConfidence.getter();
            v68 = v67;

            goto LABEL_54;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v196 = MEMORY[0x223DDFF80](0, v60);
      v62 = dispatch thunk of Experience.pluginIdentifier.getter();
      v64 = v197;

      v65 = MEMORY[0x223DDFF80](0, v60);
      goto LABEL_20;
    }
  }

  else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v64 = 0xE700000000000000;
  v62 = 0x6E776F6E6B6E55;
  v68 = 0;
LABEL_54:

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v237[0] = v129;
    *v128 = 136315394;
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v237);

    *(v128 + 4) = v130;
    *(v128 + 12) = 2048;
    *(v128 + 14) = v68;
    _os_log_impl(&dword_2232BB000, v126, v127, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v128, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v129);
    MEMORY[0x223DE0F80](v129, -1, -1);
    MEMORY[0x223DE0F80](v128, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v131 = v233;
  v132 = v233[25].i64[1];
  v133 = v233[24].i64[1];
  v134 = v233[23].i64[1];
  __swift_project_value_buffer(v206, static Logger.pommes);
  v227(v133, v132, v134);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.info.getter();
  v137 = os_log_type_enabled(v135, v136);
  v139 = v233[24].i64[0];
  v138 = v233[24].i64[1];
  v140 = v233[23].i64[1];
  if (v137)
  {
    v141 = swift_slowAlloc();
    *v141 = 67109120;
    v142 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
    v224(v138, v140);
    *(v141 + 4) = v142;
    v131 = v233;
    _os_log_impl(&dword_2232BB000, v135, v136, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v141, 8u);
    MEMORY[0x223DE0F80](v141, -1, -1);
  }

  else
  {
    v224(v233[24].i64[1], v233[23].i64[1]);
  }

  v143 = v131[25].i64[1];
  v144 = v131[12].i64[1];
  v145 = v131[13].i64[0];
  v147 = v131[11].i64[1];
  v146 = v131[12].i64[0];

  v131[28].i8[0] = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();

  (*(v144 + 8))(v145, v146);
  v148 = SageSearchRequestProcessor.clientSearch(pegasusResponse:)(v143);
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v237[0] = v152;
    *v151 = 136315138;
    v153 = type metadata accessor for PommesResult();
    v154 = MEMORY[0x223DDF870](v148, v153);
    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v237);

    *(v151 + 4) = v156;
    _os_log_impl(&dword_2232BB000, v149, v150, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v151, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v152);
    MEMORY[0x223DE0F80](v152, -1, -1);
    MEMORY[0x223DE0F80](v151, -1, -1);
  }

  v31 = v233;
  v157 = v233[25].i64[1];
  type metadata accessor for PommesResponse();
  v158 = swift_task_alloc();
  v159 = v233[11];
  *(v158 + 16) = v60;
  *(v158 + 24) = v148;
  *(v158 + 32) = v157;
  *(v158 + 40) = vextq_s8(v159, v159, 8uLL);
  *(v158 + 56) = v208 + 432;
  v160 = PommesResponse.__allocating_init(_:)();

  if (v160)
  {
    v161 = v160;
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v237[0] = v165;
      *v164 = 136315138;
      v166 = [v161 debugDescription];
      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v168;

      v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v237);

      *(v164 + 4) = v170;
      _os_log_impl(&dword_2232BB000, v162, v163, "PommesSearchRequestProcessor#handleSuccess response: %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v165);
      MEMORY[0x223DE0F80](v165, -1, -1);
      MEMORY[0x223DE0F80](v164, -1, -1);
    }

    v171 = v233[25].i64[1];
    v172 = v233[26].i64[0];
    v174 = v233[24].i64[1];
    v173 = v233[25].i64[0];
    v176 = v233[23].i64[1];
    v175 = v233[24].i64[0];
    v177 = v233[23].i64[0];
    v178 = v233[21].i64[1];
    v179 = v233[20].i64[0];
    v207 = v233[19].i64[1];
    v210 = v233[19].i64[0];
    v213 = v233[18].i64[1];
    v216 = v233[18].i64[0];
    v219 = v233[16].i64[1];
    v222 = v233[16].i64[0];
    v225 = v233[14].i64[1];
    v229 = v233[13].i64[0];
    outlined destroy of DefaultExperiencesResolver(v208);
    v172(v171, v176);

    v180 = v233->i64[1];

    v180(v161);
  }

  else
  {
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_2232BB000, v181, v182, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v183, 2u);
      MEMORY[0x223DE0F80](v183, -1, -1);
    }

    lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError();
    swift_allocError();
    *v184 = 0;
    *(v184 + 8) = 0xD000000000000051;
    *(v184 + 16) = 0x80000002234E1FA0;
LABEL_73:
    swift_willThrow();
    v185 = v31[51];
    v186 = v31[52];
    v188 = v31[49];
    v187 = v31[50];
    v190 = v31[47];
    v189 = v31[48];
    v191 = v31[46];
    v192 = v31;
    v193 = v31[43];
    v194 = v192[40];
    v211 = v192[39];
    v214 = v192[38];
    v217 = v192[37];
    v220 = v192[36];
    v223 = v192[33];
    v226 = v192[32];
    v230 = v192[29];
    v236 = v192[26];
    outlined destroy of DefaultExperiencesResolver(v208);
    v186(v185, v190);

    v195 = v192[1];

    v195();
  }
}

uint64_t SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v20 = v0[55];
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[26];
  outlined destroy of DefaultExperiencesResolver((v0 + 2));
  v1(v2, v6);

  v10 = v0[1];

  return v10(v20);
}

{
  v20 = v0[54];
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[26];
  outlined destroy of DefaultExperiencesResolver((v0 + 2));
  v1(v2, v6);

  v10 = v0[1];

  return v10();
}

uint64_t closure #4 in SageSearchRequestProcessor.handlePegasusResponse(_:)@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v12 - v7);
  v9 = type metadata accessor for ClientExperienceSignals();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = DefaultExperiencesResolver.buildExperiences(from:with:)(a1, v8);
  result = outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v10;
  return result;
}

uint64_t closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v131 = a6;
  v132 = a7;
  v140 = a5;
  v141 = a4;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v129 = *(Context - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](Context, v10);
  v128 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PommesSearchReason();
  v126 = *(v127 - 8);
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v127, v13);
  v125 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v135 = (&v123 - v18);
  v137 = type metadata accessor for PommesSearchRequest(0);
  v19 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137, v20);
  v136 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v23 = *(v22 - 8);
  v149 = v22;
  v150 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v148 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v133 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v134 = &v123 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v123 - v37;

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v39 = *(v28 + 8);
  v138 = v38;
  v143 = v28 + 8;
  v144 = v27;
  v142 = v39;
  v39(v38, v27);
  PommesResponse.Builder.metadataDomainName.setter();
  if (a2 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v139 = a1;
    v147 = a2;
    if (i)
    {
      v41 = 0;
      v42 = a2 & 0xC000000000000001;
      v43 = a2 & 0xFFFFFFFFFFFFFF8;
      v44 = MEMORY[0x277D84F90];
      do
      {
        if (v42)
        {
          v45 = MEMORY[0x223DDFF80](v41, a2);
        }

        else
        {
          if (v41 >= *(v43 + 16))
          {
            goto LABEL_66;
          }

          v45 = *(a2 + 8 * v41 + 32);
        }

        v46 = v45;
        v47 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v48 = dispatch thunk of Experience.renderedTexts.getter();

        v49 = *(v48 + 16);
        a2 = *(v44 + 2);
        a1 = a2 + v49;
        if (__OFADD__(a2, v49))
        {
          goto LABEL_67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || a1 > *(v44 + 3) >> 1)
        {
          if (a2 <= a1)
          {
            v51 = a2 + v49;
          }

          else
          {
            v51 = a2;
          }

          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v44);
        }

        a2 = v147;
        if (*(v48 + 16))
        {
          if ((*(v44 + 3) >> 1) - *(v44 + 2) < v49)
          {
            goto LABEL_75;
          }

          swift_arrayInitWithCopy();

          if (v49)
          {
            v52 = *(v44 + 2);
            v53 = __OFADD__(v52, v49);
            v54 = v52 + v49;
            if (v53)
            {
              goto LABEL_77;
            }

            *(v44 + 2) = v54;
          }
        }

        else
        {

          if (v49)
          {
            goto LABEL_68;
          }
        }

        ++v41;
      }

      while (v47 != i);
      PommesResponse.Builder.renderedTexts.setter();
      v55 = 0;
      v56 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v42)
        {
          v57 = MEMORY[0x223DDFF80](v55, a2);
        }

        else
        {
          if (v55 >= *(v43 + 16))
          {
            goto LABEL_72;
          }

          v57 = *(a2 + 8 * v55 + 32);
        }

        v58 = v57;
        v59 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_71;
        }

        v60 = dispatch thunk of Experience.redactedRenderedTexts.getter();

        v61 = *(v60 + 16);
        a2 = *(v56 + 2);
        a1 = a2 + v61;
        if (__OFADD__(a2, v61))
        {
          goto LABEL_73;
        }

        v62 = swift_isUniquelyReferenced_nonNull_native();
        if (!v62 || a1 > *(v56 + 3) >> 1)
        {
          if (a2 <= a1)
          {
            v63 = a2 + v61;
          }

          else
          {
            v63 = a2;
          }

          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62, v63, 1, v56);
        }

        a2 = v147;
        if (*(v60 + 16))
        {
          if ((*(v56 + 3) >> 1) - *(v56 + 2) < v61)
          {
            goto LABEL_76;
          }

          swift_arrayInitWithCopy();

          if (v61)
          {
            v64 = *(v56 + 2);
            v53 = __OFADD__(v64, v61);
            v65 = v64 + v61;
            if (v53)
            {
              goto LABEL_78;
            }

            *(v56 + 2) = v65;
          }
        }

        else
        {

          if (v61)
          {
            goto LABEL_74;
          }
        }

        ++v55;
        if (v59 == i)
        {
          goto LABEL_45;
        }
      }
    }

    PommesResponse.Builder.renderedTexts.setter();
LABEL_45:
    PommesResponse.Builder.redactedRenderedTexts.setter();
    v66 = v138;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v67 = v148;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v142(v66, v144);
    Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v68 = v149;
    v70 = v150 + 8;
    v69 = *(v150 + 8);
    v69(v67, v149);
    PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v142(v66, v144);
    Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v145 = v69;
    v146 = v70;
    v69(v67, v68);
    result = PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
    if (i)
    {
      break;
    }

LABEL_50:
    v74 = MEMORY[0x277D84F90];
    v75 = PommesResponse.Builder.listenAfterSpeaking.setter();
    v76 = *(*v140 + 136);
    v77 = *v140 + 136;
    v78 = v136;
    v76(v75);
    v79 = (v78 + *(v137 + 32));
    v80 = *v79;
    v81 = v79[1];

    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v78, type metadata accessor for PommesSearchRequest);
    v82 = PommesResponse.Builder.requestId.setter();
    v124 = v76;
    v123 = v77;
    v76(v82);
    v83 = v135;
    PommesSearchRequest.pommesCandidateId.getter(v135);
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v78, type metadata accessor for PommesSearchRequest);
    v84 = type metadata accessor for PommesCandidateId();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    PommesResponse.Builder.pommesCandidateId.setter();
    PommesResponse.Builder.isHandledByPreflight.setter();
    PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
    v85 = v134;
    a1 = v141;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v86 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v142(v85, v144);
    v87 = *(v86 + 16);
    if (v87)
    {
      v151 = v74;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
      v88 = 0;
      v89 = v151;
      v147 = v86 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      a2 = v150 + 16;
      while (v88 < *(v86 + 16))
      {
        v90 = v149;
        v91 = v148;
        (*(v150 + 16))(v148, v147 + *(v150 + 72) * v88, v149);
        v92 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v94 = v93;
        v145(v91, v90);
        v151 = v89;
        a1 = *(v89 + 16);
        v95 = *(v89 + 24);
        if (a1 >= v95 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), a1 + 1, 1);
          v89 = v151;
        }

        ++v88;
        *(v89 + 16) = a1 + 1;
        v96 = v89 + 16 * a1;
        *(v96 + 32) = v92;
        *(v96 + 40) = v94;
        if (v87 == v88)
        {

          a1 = v141;
          v74 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }
      }

LABEL_69:
      __break(1u);
    }

    else
    {

LABEL_58:
      PommesResponse.Builder.taskStepLogs.setter();
      v97 = v133;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v98 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
      v142(v97, v144);
      v99 = *(v98 + 16);
      if (!v99)
      {
LABEL_64:

        PommesResponse.Builder.userSensitiveTier1Logs.setter();
        PommesResponse.Builder.componentsWarmedUp.setter();
        (*(v126 + 104))(v125, *MEMORY[0x277D56670], v127);
        v109 = PommesResponse.Builder.searchReason.setter();
        v110 = v136;
        v111 = v124;
        v124(v109);
        v112 = v137;
        v113 = (v110 + *(v137 + 20));
        v114 = *v113;
        v115 = v113[1];

        _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v110, type metadata accessor for PommesSearchRequest);
        PommesResponse.Builder.searchRequestUtterance.setter();
        v116 = v128;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
        Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
        (*(v129 + 8))(v116, Context);
        PommesResponse.Builder.requestCountryCode.setter();
        closure #3 in closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)();
        PommesResponse.Builder.requestLocation.setter();
        v117 = PommesResponse.Builder.isCachedResponse.setter();
        v111(v117);
        v118 = (v110 + *(v112 + 84));
        v119 = *v118;
        v120 = v118[1];

        _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v110, type metadata accessor for PommesSearchRequest);
        PommesResponse.Builder.sharedUserId.setter();
        v121 = *v132;
        PommesResponse.Builder.isLowConfidenceKnowledgeResult.setter();
        v122 = v138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v142(v122, v144);
        return PommesResponse.Builder.albusMultiturnRewrite.setter();
      }

      v151 = v74;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
      v100 = 0;
      v101 = v151;
      v147 = v98 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      a2 = v150 + 16;
      while (v100 < *(v98 + 16))
      {
        v102 = v149;
        v103 = v148;
        (*(v150 + 16))(v148, v147 + *(v150 + 72) * v100, v149);
        v104 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
        v106 = v105;
        v145(v103, v102);
        v151 = v101;
        a1 = *(v101 + 16);
        v107 = *(v101 + 24);
        if (a1 >= v107 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), a1 + 1, 1);
          v101 = v151;
        }

        ++v100;
        *(v101 + 16) = a1 + 1;
        v108 = v101 + 16 * a1;
        *(v108 + 32) = v104;
        *(v108 + 40) = v106;
        if (v99 == v100)
        {
          goto LABEL_64;
        }
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  if ((v147 & 0xC000000000000001) != 0)
  {
    v72 = MEMORY[0x223DDFF80](0);
    goto LABEL_49;
  }

  if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v72 = *(v147 + 32);
LABEL_49:
    v73 = v72;
    dispatch thunk of Experience.listenAfterSpeaking.getter();

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

id closure #3 in closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v7 = *(Context - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Context, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v12 = Apple_Parsec_Search_PegasusQueryContext.hasLocation.getter();
  v13 = *(v7 + 8);
  v13(v11, Context);
  result = 0;
  if (v12)
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
    Apple_Parsec_Search_PegasusQueryContext.location.getter();
    v15 = (v13)(v11, Context);
    v16 = MEMORY[0x223DDA150](v15);
    Apple_Parsec_Search_V2_Location.longitude.getter();
    v18 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v16 longitude:v17];
    (*(v1 + 8))(v5, v0);
    return v18;
  }

  return result;
}

uint64_t SageSearchRequestProcessor.clientSearch(pegasusResponse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v59 = (&v56 - v5);
  v57 = type metadata accessor for PommesSearchRequest(0);
  v6 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v57, v7);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SignpostToken();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.client", 13, 2u, 0, v23);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v25 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v27 = v26;
  (*(v14 + 8))(v18, v13);
  if (v25 == 0x616964656DLL && v27 == 0xE500000000000000)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
LABEL_22:
      v46 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }
  }

  v30 = v60[3];
  if (!*(v30 + 16))
  {
    goto LABEL_22;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of AppDataProviding(*(v30 + 56) + 40 * v31, &v62);
  outlined init with take of DomainWarmupHandling(&v62, v65);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);
  outlined init with copy of AppDataProviding(v65, &v62);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = os_log_type_enabled(v34, v35);
  v56 = a1;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = v38;
    *v37 = 136315138;
    v39 = v63;
    v40 = v64;
    __swift_project_boxed_opaque_existential_1(&v62, v63);
    v41 = (*(v40 + 8))(v39, v40);
    if (v41)
    {
      v42 = 0x636973756DLL;
    }

    else
    {
      v42 = 1701736302;
    }

    if (v41)
    {
      v43 = 0xE500000000000000;
    }

    else
    {
      v43 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v61);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_2232BB000, v34, v35, "SageSearchRequestProcessor#clientSearch searching local %s domain", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  else
  {

    v45 = __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  v47 = v60[4];
  v48 = *(*v60 + 136);
  v48(v45);
  v49 = &v12[*(v57 + 32)];
  v50 = v49[1];
  v57 = *v49;

  v51 = _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v12, type metadata accessor for PommesSearchRequest);
  v52 = v58;
  v48(v51);
  v53 = v59;
  PommesSearchRequest.pommesCandidateId.getter(v59);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v52, type metadata accessor for PommesSearchRequest);
  v54 = type metadata accessor for PommesCandidateId();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  (*(*v47 + 128))(v57, v50, v53, 1);

  outlined destroy of MediaUserStateCenter?(v53, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v46 = SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(v56, v65);
  __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_25:
  OSSignposter.end(token:message:)(v23, 0, 0xE000000000000000);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v23, type metadata accessor for SignpostToken);
  return v46;
}

uint64_t SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(uint64_t a1, void *a2)
{
  v69 = a2;
  v73 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PommesCandidateId();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v70 = v13;
  v71 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (v65 - v15);
  v17 = type metadata accessor for PommesSearchRequest(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v74 = v23;
  *(v23 + 16) = MEMORY[0x277D84F90];
  v72 = v23 + 16;
  v24 = *(*v2 + 136);
  v25 = *v2 + 136;
  v24();
  v26 = &v22[*(v18 + 40)];
  v27 = *v26;
  v67 = *(v26 + 1);
  v68 = v27;

  v28 = _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v22, type metadata accessor for PommesSearchRequest);
  v65[1] = v25;
  v66 = v24;
  (v24)(v28);
  PommesSearchRequest.pommesCandidateId.getter(v16);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v22, type metadata accessor for PommesSearchRequest);
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v77 = v2;
  type metadata accessor for SageSearchRequestProcessor();

  v29 = String.init<A>(describing:)();
  v31 = v30;

  v77 = v29;
  v78 = v31;
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DBF00);
  v32 = v77;
  Date.init()();
  v33 = &v8[v4[7]];
  *v33 = "SiriInformationSearch/SageSearchRequestProcessor.swift";
  *(v33 + 1) = 54;
  v33[16] = 2;
  *&v8[v4[8]] = 174;
  v34 = &v8[v4[9]];
  *v34 = "clientSearchForMusic(_:musicDomainClient:)";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v35 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v32);
  v37 = v36;

  v38 = v4[10];
  v76 = v8;
  v39 = &v8[v38];
  *v39 = v35;
  v39[1] = v37;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.pommes);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77 = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x223DDF850](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v47 = v16;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v77);

    *(v43 + 4) = v48;
    v16 = v47;
    _os_log_impl(&dword_2232BB000, v41, v42, "PommesSearchRequestProcessor#clientSearchForMusic calling musicDomainClient.search sharedUserIds: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x223DE0F80](v44, -1, -1);
    MEMORY[0x223DE0F80](v43, -1, -1);
  }

  v65[0] = v16;
  v49 = v69[3];
  v50 = v69[4];
  v69 = __swift_project_boxed_opaque_existential_1(v69, v49);
  v66();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = v75;
  v53 = v71;
  (*(v75 + 16))(v71, v16, v9);
  v54 = (*(v52 + 80) + 40) & ~*(v52 + 80);
  v55 = (v70 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v67;
  v58 = v68;
  *(v56 + 2) = v51;
  *(v56 + 3) = v58;
  *(v56 + 4) = v57;
  (*(v52 + 32))(&v56[v54], v53, v9);
  v59 = v74;
  *&v56[v55] = v74;
  v71 = v9;
  v60 = *(v50 + 24);

  v60(v22, v73, 0, MEMORY[0x277D84F90], partial apply for closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:), v56, v49, v50);

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v22, type metadata accessor for PommesSearchRequest);

  swift_beginAccess();
  v61 = *(v59 + 16);
  v62 = one-time initialization token for shared;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = v76;
  (*(*static PerformanceUtil.shared + 184))(v76, 1);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v63, type metadata accessor for PerformanceUtil.Ticket);
  (*(v52 + 8))(v65[0], v71);

  return v61;
}

void closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v38[-1] - v16;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 32);

      v20 = type metadata accessor for PommesCandidateId();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v17, a6, v20);
      (*(v21 + 56))(v17, 0, 1, v20);
      (*(*v19 + 144))(a4, a5, v17, 1);

      outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      v38[3] = a1;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v38);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v24, v25, "PommesSearchRequestProcessor#clientSearchForMusic local client search failed : %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + 32);

      v34 = type metadata accessor for PommesCandidateId();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v17, a6, v34);
      (*(v35 + 56))(v17, 0, 1, v34);
      (*(*v33 + 136))(a4, a5, v17);

      outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    swift_beginAccess();
    v36 = *(a7 + 16);
    *(a7 + 16) = a1;
  }
}

void *SageSearchRequestProcessor.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels);

  return v0;
}

uint64_t SageSearchRequestProcessor.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SageSearchRequestProcessor()
{
  result = type metadata singleton initialization cache for SageSearchRequestProcessor;
  if (!type metadata singleton initialization cache for SageSearchRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SageSearchRequestProcessor()
{
  result = type metadata accessor for PommesSearchRequest(319);
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

uint64_t dispatch thunk of SageSearchRequestProcessor.search()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v6();
}

void partial apply for closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2)
{
  v5 = *(type metadata accessor for PommesCandidateId() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError()
{
  result = lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError;
  if (!lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PegasusOverrideUtil.overrideSupportsGenerativeModelSystems.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000002CLL, 0x80000002234DFC10);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static PegasusOverrideUtil.overrideIsSAERequest.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DFC40);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id static PegasusOverrideUtil.overrideTreatRandomAsFirst.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000020, 0x80000002234E0FD0);
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t static PegasusOverrideUtil.enablePromptContextLogging.setter(char a1)
{
  result = swift_beginAccess();
  static PegasusOverrideUtil.enablePromptContextLogging = a1;
  return result;
}

uint64_t one-time initialization function for overrideKeyHeaderKeyDict()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of one-time initialization function for overrideKeyHeaderKeyDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  static PegasusOverrideUtil.overrideKeyHeaderKeyDict = v0;
  return result;
}

uint64_t specialized static PegasusOverrideUtil.pairedDeviceOverrideValue(forKey:)(uint64_t a1, unint64_t a2)
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v20[0] = 0xD00000000000001BLL;
  v20[1] = 0x80000002234E2030;
  MEMORY[0x223DDF6D0](a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = MEMORY[0x223DDF550](0xD00000000000001BLL, 0x80000002234E2030);

  v8 = [v6 stringForKey_];

  if (!v8)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_15:

    return 0;
  }

  v13 = v9;
  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.overrides);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v20);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, v20);
    _os_log_impl(&dword_2232BB000, v15, v16, "POMMES override enabled for paired device value %s header! Using value “%s”", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  return v13;
}

uint64_t specialized static PegasusOverrideUtil.requestFeatureFlag.getter()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000027, 0x80000002234E2000);
  v4 = [v2 stringForKey_];

  if (!v4)
  {

    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.overrides);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v14);
    _os_log_impl(&dword_2232BB000, v9, v10, "POMMES override enabled for Pegasus request feature flag! Using flag %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return v5;
}

uint64_t specialized static PegasusOverrideUtil.getHeaderOverrideValue(overrideKey:headerKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    return 0;
  }

  v11 = MEMORY[0x223DDF550](a1, a2);
  v12 = [v10 stringForKey_];

  if (!v12)
  {

    return 0;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  v17 = v13;
  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.overrides);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v24);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v15, &v24);
    _os_log_impl(&dword_2232BB000, v19, v20, "POMMES override enabled for %s header! Using value “%s”", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  return v17;
}