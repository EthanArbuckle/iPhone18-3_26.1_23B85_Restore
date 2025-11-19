uint64_t sub_1DC5C4C1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1DC5C4D64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch13PommesContextV6SourceO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for PommesContext()
{
  result = type metadata singleton initialization cache for PommesContext;
  if (!type metadata singleton initialization cache for PommesContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PommesContext.description.getter()
{
  _StringGuts.grow(_:)(125);
  MEMORY[0x1E1299490](0x203A656372756F73, 0xE800000000000000);
  v1 = *v0;
  v2 = *(v0 + 8);
  outlined copy of PommesContext.Source(*v0, v2);
  v3 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v3);

  MEMORY[0x1E1299490](0x6E69616D6F640A2CLL, 0xEA0000000000203ALL);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v4);

  MEMORY[0x1E1299490](0xD00000000000001ELL, 0x80000001DC652560);
  if ((v2 >> 60) > 0xB || ((1 << (v2 >> 60)) & 0x888) == 0)
  {
    outlined copy of Data?(v1, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v5);

  MEMORY[0x1E1299490](0xD000000000000017, 0x80000001DC652580);
  if (*(v0 + 32))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E1299490](v6, v7);

  MEMORY[0x1E1299490](0xD000000000000011, 0x80000001DC6525A0);
  v8 = type metadata accessor for PommesContext();
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1E1299530](*(v0 + *(v8 + 32)), MEMORY[0x1E69E6158]);
  MEMORY[0x1E1299490](v10);

  MEMORY[0x1E1299490](0xD000000000000019, 0x80000001DC6525C0);
  v11 = MEMORY[0x1E1299530](*(v0 + *(v8 + 36)), v9);
  MEMORY[0x1E1299490](v11);

  return 0;
}

uint64_t outlined copy of PommesContext.Source(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xB || ((1 << (a2 >> 60)) & 0x888) == 0)
  {
    return outlined copy of Data?(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t outlined consume of PommesCandidateId?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of PommesCandidateId(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined consume of PommesCandidateId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t outlined destroy of ClientExperienceSignals?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PommesContext.pegasusConversationContext.getter()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    return 0;
  }

  v4 = *v0;
  outlined copy of Data?(v4, v1);
  return v4;
}

uint64_t PommesContext.update(with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesContext() + 40);
  outlined destroy of ClientExperienceSignals?(v1 + v3, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v7 = *(v4 - 8);
  (*(v7 + 16))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PommesContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v32 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v3 + 8);
  v34 = *v3;
  v35 = v14;
  v36 = 0;
  outlined copy of PommesContext.Source(v34, v14);
  lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of PommesContext.Source(v34, v35);
  }

  else
  {
    outlined consume of PommesContext.Source(v34, v35);
    v15 = *(v3 + 16);
    v16 = *(v3 + 24);
    LOBYTE(v34) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 32);
    LOBYTE(v34) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = type metadata accessor for PommesContext();
    v19 = *(v3 + *(v18 + 32));
    v33 = v18;
    v34 = v19;
    v36 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v34 = *(v3 + *(v33 + 36));
    v36 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v33;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v3 + *(v33 + 40), v7, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v7, 1, v21) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v7, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    else
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      v26 = (v22 + 8);
      v25 = Message.serializedData(partial:)();
      v24 = v27;
      v28 = *v26;
      v32 = v25;
      v28(v7, v21);
      v23 = v32;
      v20 = v33;
    }

    v34 = v23;
    v35 = v24;
    v36 = 5;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = outlined consume of Data._Representation?(v34, v35);
    v30 = *(v20 + 28);
    MEMORY[0x1E1298CB0](v29);
    LOBYTE(v34) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source;
  if (!lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source;
  if (!lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PommesContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DC5C5CDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C5D44@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C5E0C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C5E74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C5EC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C5F2C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x228);

  return v3(v4);
}

uint64_t sub_1DC5C5F98(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[14];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[19]];

  return v17(v18, a2, v16);
}

char *sub_1DC5C6188(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[19]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DC5C636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC5C6428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC5C64EC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesResponse.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC5C6538(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesResponse.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC5C6580@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C65E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C664C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);

  return v3(v4);
}

uint64_t sub_1DC5C66B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C671C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v3(v4);
}

uint64_t sub_1DC5C6788@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C67EC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0);

  return v3(v4);
}

uint64_t sub_1DC5C6858@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C68BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_1DC5C6940@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C69A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F0);

  return v3(v4);
}

uint64_t sub_1DC5C6A10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C6A74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x208);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_1DC5C6AF8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x218))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C6B5C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x220);

  return v3(v4);
}

uint64_t sub_1DC5C6BC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C6C90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C6CF4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);

  return v4(v2, v3);
}

void *sub_1DC5C6D74@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC5C6DE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C6E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 136);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC5C6EF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 136);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC5C6FB0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DC5C6FF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C70AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C7100@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C7160@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C71BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x100);

  return v3(v4);
}

uint64_t sub_1DC5C7228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1DC5C72F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DC5C747C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C74D8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v4(v2, v3);
}

uint64_t sub_1DC5C7550@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C75AC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t _s21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOs0I3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DC5C765C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

id sub_1DC5C7724@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exampleUtterance];
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C77B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C7810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1DC5C7864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

SiriInformationTypes::UserPromptExperience::PromptType_optional __swiftcall UserPromptExperience.PromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.PromptType.init(rawValue:), v3);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserPromptExperience.PromptType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "userIdentificationAskOnly";
  }

  else
  {
    v2 = "olutionResult";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "userIdentificationAskOnly";
  }

  else
  {
    v4 = "olutionResult";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserPromptExperience.PromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserPromptExperience.PromptType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserPromptExperience.PromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserPromptExperience.PromptType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.PromptType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UserPromptExperience.PromptType(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "userIdentificationAskOnly";
  }

  else
  {
    v2 = "olutionResult";
  }

  *a1 = 0xD000000000000019;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t UserPromptExperience.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain);
  v2 = *(v0 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain + 8);

  return v1;
}

id UserPromptExperience.init(domain:prompType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *a3;
  v12 = &v3[OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain];
  *v12 = a1;
  v12[1] = a2;
  v3[OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType] = v10;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v13 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v13 = 0x73757361676570;
  v13[1] = 0xE700000000000000;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = 0x3FF0000000000000;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v11, v7);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = *MEMORY[0x1E69BCBD8];
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v16 - 8) + 104))(&v3[v14], v15, v16);
  v17 = type metadata accessor for Experience(0);
  v19.receiver = v3;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, sel_init);
}

Swift::Void __swiftcall UserPromptExperience.encode(with:)(NSCoder with)
{
  Experience.encode(with:)(with);
  v3 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain), *(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain + 8));
  v4 = MEMORY[0x1E1299430](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType))
  {
    v5 = "userIdentificationAskOnly";
  }

  else
  {
    v5 = "olutionResult";
  }

  v6 = MEMORY[0x1E1299430](0xD000000000000019, v5 | 0x8000000000000000);

  v7 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEA00000000006570);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id UserPromptExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  type metadata accessor for NSString();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEA00000000006570);
  v7 = [a1 decodeObjectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {

    outlined destroy of Any?(v24);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.init(coder:), v21), , v8 > 1))
  {

LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC5C3000, v16, v17, "UserPromptExperience cannot be decoded", v18, 2u);
      MEMORY[0x1E1299E70](v18, -1, -1);
    }

    type metadata accessor for UserPromptExperience();
    v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = (v2 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain);
  *v10 = v9;
  v10[1] = v11;
  *(v2 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType) = v8;
  v12 = Experience.init(coder:)(a1);
  v13 = v12;

  if (v12)
  {

    return v12;
  }

  return 0;
}

id UserPromptExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPromptExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for UserPromptExperience()
{
  result = type metadata singleton initialization cache for UserPromptExperience;
  if (!type metadata singleton initialization cache for UserPromptExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t lazy protocol witness table accessor for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType()
{
  result = lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType;
  if (!lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserPromptExperience.PromptType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserPromptExperience.PromptType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t key path setter for AudioExperience.serverAudioResults : AudioExperience(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t AudioExperience.isGlideEligible.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioExperience.isGlideEligible.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.networkAvailableAtRequest.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioExperience.internalSignals.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x220);

  v4 = v2(v3);
  specialized Array.append<A>(contentsOf:)(v4);
  return v1;
}

uint64_t AudioExperience.serverAudioResults.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t AudioExperience.internalSignalsFromSiriAudio.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AudioExperience.pegasusAudioType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType + 8);

  return v1;
}

uint64_t AudioExperience.launchID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID + 8);

  return v1;
}

uint64_t AudioExperience.systemExtensionBundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID + 8);

  return v1;
}

uint64_t AudioExperience.boltProxiedBundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID + 8);

  return v1;
}

uint64_t AudioExperience.audioUnderstanding.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, double a7)
{
  v80 = a2;
  v82 = a6;
  v74 = a4;
  v75 = a5;
  v85 = a3;
  v81 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v57 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v76 = *(v19 - 8);
  v20 = v76;
  v21 = *(v76 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v72 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v60 = v26;
  v73 = *(v26 - 8);
  v27 = v73;
  v28 = *(v73 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v70 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v57 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v57 - v34;
  v77 = &v57 - v34;
  closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(a4, a5, &v57 - v34);
  v36 = *(v20 + 16);
  v63 = v19;
  v36(v25, v85, v19);
  v37 = *(v27 + 16);
  v38 = v33;
  v64 = v33;
  v37(v33, v35, v26);
  v71 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v69 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v39 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v67 = v40;
  v68 = v39;
  v66 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v65 = v41;
  v62 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v61 = v42;
  v59 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v58 = v43;
  LOBYTE(v26) = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter();
  v44 = v72;
  v36(v72, v25, v19);
  v45 = v70;
  v46 = v38;
  v47 = v60;
  v37(v70, v46, v60);
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v49 = v78;
  (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
  HIBYTE(v56) = 1;
  LOBYTE(v56) = v82;
  v55 = v26 & 1;
  v50 = (*(v79 + 568))(v71, v83, v84, v69, v68, v67, v66, v65, a7, v62, v61, v59, v58, v55, v44, v81, v80, v45, v56, MEMORY[0x1E69E7CC0], v49);
  outlined consume of Data._Representation(v74, v75);
  v51 = *(v76 + 8);
  v52 = v63;
  v51(v85, v63);
  v53 = *(v73 + 8);
  v53(v64, v47);
  v51(v25, v52);
  v53(v77, v47);
  return v50;
}

uint64_t closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v24 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x1E69D09B8]);
  Message.init(serializedData:extensions:partial:options:)();
  (*(v17 + 56))(v15, 0, 1, v16);
  v21 = (*(v17 + 32))(v20, v15, v16);
  MEMORY[0x1EEE9AC00](v21);
  v24[-2] = v20;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserStatedTask and conformance Siri_Nlu_External_UserStatedTask, MEMORY[0x1E69D0AE0]);
  static Message.with(_:)();
  v22 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x1EEE9AC00](v22);
  v24[-2] = v9;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68]);
  static Message.with(_:)();
  (*(v6 + 8))(v9, v5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t closure #1 in closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = (*(*(a3(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v58 = a2;
  v60 = a5;
  v62 = a4;
  v59 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v42 - v10;
  v55 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v61 = *(v55 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v15 = *(v14 - 8);
  v16 = v15;
  v47 = v14;
  v48 = v15;
  v17 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v53 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v28 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v51 = v29;
  v52 = v28;
  v30 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v49 = v31;
  v50 = v30;
  v32 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v45 = v33;
  v46 = v32;
  v44 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v43 = v34;
  v35 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter();
  (*(v16 + 16))(v19, a3, v14);
  v36 = v55;
  (*(v61 + 16))(v13, v62, v55);
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v38 = v56;
  (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  HIBYTE(v41) = 1;
  LOBYTE(v41) = v60;
  v39 = (*(v57 + 568))(v54, v27, v23, v53, v52, v51, v50, v49, a6, v46, v45, v44, v43, v35 & 1, v19, v59, v58, v13, v41, MEMORY[0x1E69E7CC0], v38);
  (*(v61 + 8))(v62, v36);
  (*(v48 + 8))(a3, v47);
  return v39;
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v38 = a3;
  v41 = a2;
  v42 = a5;
  v36 = a4;
  v40 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v20 = *(v37 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a3);
  v24 = v14[2];
  v24(v19, a4, v13);
  v25 = v12;
  v34 = v12;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v42, v12, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v26 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v27 = v35;
  v24(v35, v19, v13);
  v44 = v23;
  v45 = v25;
  v46 = v26;
  v47 = v39;
  v28 = (*(v39 + 576))(v40, v41, v27, partial apply for closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:), v43, a6);

  outlined destroy of ClientExperienceSignals?(v42, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v29 = v14[1];
  v29(v36, v13);
  v30 = *(v20 + 8);
  v31 = v37;
  v30(v38, v37);
  v29(v19, v13);
  outlined destroy of ClientExperienceSignals?(v34, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v30(v23, v31);
  return v28;
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, a4, v15);
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v27 = v7;
  v20 = (*(v7 + 576))(a1, a2, v19, closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)partial apply, v23, a7);

  (*(v16 + 8))(a4, v15);
  outlined destroy of ClientExperienceSignals?(a5, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v21 - 8) + 8))(a3, v21);
  return v20;
}

uint64_t closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v80 = a4;
  v78 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v78 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v78 - v27;
  v29 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
  v30 = *a1;

  *a1 = v29;
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
  v32 = type metadata accessor for AudioExperience.Builder(0);
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v28, a1 + v32[5], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v24, a1 + v32[6], &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v34 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v35 = v32[7];
  v36 = *(a1 + v35);

  *(a1 + v35) = v34;
  v37 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v39 = v38;
  v40 = (a1 + v32[9]);
  v41 = v40[1];

  *v40 = v37;
  v40[1] = v39;
  v42 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v44 = v43;
  v45 = (a1 + v32[10]);
  v46 = v45[1];

  *v45 = v42;
  v45[1] = v44;
  v47 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v49 = v48;
  v50 = (a1 + v32[11]);
  v51 = v50[1];

  *v50 = v47;
  v50[1] = v49;
  v52 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v54 = v53;
  v55 = (a1 + v32[12]);
  v56 = v55[1];

  *v55 = v52;
  v55[1] = v54;
  *(a1 + v32[13]) = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter() & 1;
  v57 = v32[14];
  outlined destroy of ClientExperienceSignals?(a1 + v57, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v59 = *(v58 - 8);
  (*(v59 + 16))(a1 + v57, a2, v58);
  (*(v59 + 56))(a1 + v57, 0, 1, v58);
  v60 = v78;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v78, v20, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v61 = type metadata accessor for ClientExperienceSignals();
  v62 = *(*(v61 - 8) + 48);
  if (v62(v20, 1, v61) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v20, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v63 = 2;
  }

  else
  {
    v63 = *v20;
    outlined destroy of AudioExperience.Builder(v20, type metadata accessor for ClientExperienceSignals);
  }

  *(a1 + v32[15]) = v63;
  v64 = v60;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v60, v18, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v62(v18, 1, v61) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v18, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v65 = 2;
  }

  else
  {
    v65 = v18[16];
    outlined destroy of AudioExperience.Builder(v18, type metadata accessor for ClientExperienceSignals);
  }

  *(a1 + v32[16]) = v65;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v60, v15, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v62(v15, 1, v61) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v15, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v66 = 0;
  }

  else
  {
    v66 = *(v15 + 3);

    outlined destroy of AudioExperience.Builder(v15, type metadata accessor for ClientExperienceSignals);
  }

  v67 = v32[17];
  v68 = *(a1 + v67);

  *(a1 + v67) = v66;
  v69 = v32[18];
  v70 = *(a1 + v69);
  v71 = v80;
  v72 = v80;

  *(a1 + v69) = v71;
  v73 = v79;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v64, v79, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v62(v73, 1, v61) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v73, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
    v75 = v81;
    (*(*(v74 - 8) + 56))(v81, 1, 1, v74);
  }

  else
  {
    v76 = v73 + *(v61 + 36);
    v75 = v81;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v76, v81, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    outlined destroy of AudioExperience.Builder(v73, type metadata accessor for ClientExperienceSignals);
  }

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v75, a1 + v32[19], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
}

id AudioExperience.__allocating_init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v75 = a8;
  v74 = a7;
  v73 = a6;
  v72 = a5;
  v70 = a4;
  v83 = a3;
  v87 = a2;
  v85 = a17;
  v81 = a22;
  v79 = a21;
  v78 = a20;
  v77 = a19;
  v84 = a16;
  v89 = a15;
  v71 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a11;
  v66 = a10;
  v80 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v65 = *(v80 - 8);
  v28 = v65;
  v29 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_allocWithZone(v23);
  v32 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v33 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v34 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v31[v34] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = a1;
  v35 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v86 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v88 = *(v86 - 8);
  (*(v88 + 16))(&v31[v35], a2, v86);
  v36 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v37 = *(v82 - 8);
  (*(v37 + 16))(&v31[v36], a3, v82);
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v70;
  v38 = &v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  v39 = v73;
  *v38 = v72;
  v38[1] = v39;
  v40 = &v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  v41 = v75;
  *v40 = v74;
  v40[1] = v41;
  v42 = &v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  v43 = v67;
  *v42 = v66;
  v42[1] = v43;
  v44 = &v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  v45 = v69;
  *v44 = v68;
  v44[1] = v45;
  v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v71;
  v46 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v47 = *(v75 - 8);
  (*(v47 + 16))(&v31[v46], v89, v75);
  v48 = type metadata accessor for Graph();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  swift_beginAccess();
  v31[v32] = v77;
  swift_beginAccess();
  v31[v33] = v78;
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v79;
  v51 = v81;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v81, &v31[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v52 = *(v28 + 16);
  v53 = v76;
  v54 = v80;
  v52(v76, a18, v80);
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v55 = &v31[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v56 = v85;
  *v55 = v84;
  v55[1] = v56;
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a9;
  v52(&v31[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v53, v54);
  *&v31[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v57 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v58 = *MEMORY[0x1E69BCBD8];
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v59 - 8) + 104))(&v31[v57], v58, v59);
  v60 = type metadata accessor for Experience(0);
  v90.receiver = v31;
  v90.super_class = v60;
  v61 = objc_msgSendSuper2(&v90, sel_init);
  v62 = *(v65 + 8);
  v62(v53, v54);
  outlined destroy of ClientExperienceSignals?(v51, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v62(a18, v54);
  (*(v47 + 8))(v89, v75);
  (*(v37 + 8))(v83, v82);
  (*(v88 + 8))(v87, v86);
  return v61;
}

id AudioExperience.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v74 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v69 = a4;
  v87 = a2;
  v85 = a17;
  v82 = a3;
  v83 = a18;
  v80 = a22;
  v78 = a21;
  v77 = a20;
  v76 = a19;
  v84 = a16;
  v89 = a15;
  v70 = a14;
  v68 = a13;
  v67 = a12;
  v66 = a11;
  v79 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v65 = *(v79 - 8);
  v28 = v65;
  v29 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v32 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v22[v33] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = a1;
  v34 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v86 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v88 = *(v86 - 8);
  (*(v88 + 16))(&v22[v34], a2, v86);
  v35 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v81 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v36 = *(v81 - 8);
  (*(v36 + 16))(&v22[v35], a3, v81);
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v69;
  v37 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  v38 = v72;
  *v37 = v71;
  v37[1] = v38;
  v39 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  v40 = v74;
  *v39 = v73;
  v39[1] = v40;
  v41 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  v42 = v66;
  *v41 = a10;
  v41[1] = v42;
  v43 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  v44 = v68;
  *v43 = v67;
  v43[1] = v44;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v70;
  v45 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v46 = *(v74 - 8);
  (*(v46 + 16))(&v23[v45], v89, v74);
  v47 = type metadata accessor for Graph();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  swift_beginAccess();
  v23[v31] = v76;
  swift_beginAccess();
  v23[v32] = v77;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v78;
  v50 = v80;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v80, &v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v51 = *(v28 + 16);
  v52 = v75;
  v53 = v83;
  v54 = v79;
  v51(v75, v83, v79);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v55 = &v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v56 = v85;
  *v55 = v84;
  v55[1] = v56;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a9;
  v51(&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v52, v54);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v57 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v58 = *MEMORY[0x1E69BCBD8];
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v59 - 8) + 104))(&v23[v57], v58, v59);
  v60 = type metadata accessor for Experience(0);
  v90.receiver = v23;
  v90.super_class = v60;
  v61 = objc_msgSendSuper2(&v90, sel_init);
  v62 = *(v65 + 8);
  v62(v52, v54);
  outlined destroy of ClientExperienceSignals?(v50, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v62(v53, v54);
  (*(v46 + 8))(v89, v74);
  (*(v36 + 8))(v82, v81);
  (*(v88 + 8))(v87, v86);
  return v61;
}

uint64_t AudioExperience.Builder.serverAudioResults.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AudioExperience.Builder.internalSignals.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 28));
}

uint64_t AudioExperience.Builder.internalSignals.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.Builder.internalSignalsFromSiriAudio.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 32));
}

uint64_t AudioExperience.Builder.internalSignalsFromSiriAudio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.Builder.pegasusAudioType.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioExperience.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioExperience.Builder.pegasusAudioType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.launchID.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioExperience.Builder(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioExperience.Builder.launchID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.systemExtensionBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioExperience.Builder(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioExperience.Builder.systemExtensionBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.boltProxiedBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioExperience.Builder(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioExperience.Builder.boltProxiedBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.shouldPerformAppSelection.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.isGlideEligible.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.networkAvailableAtRequest.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.matchingSpans.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 68));
}

uint64_t AudioExperience.Builder.matchingSpans.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 68);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void *AudioExperience.Builder.renderOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 72));
  v2 = v1;
  return v1;
}

void AudioExperience.Builder.renderOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  swift_getAtKeyPath();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  outlined destroy of ClientExperienceSignals?(v7, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v11[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F13UnderstandingVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F13UnderstandingVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  swift_getAtKeyPath();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  outlined destroy of ClientExperienceSignals?(v7, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v11[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_C24_V2alpha_PlaybackSignalsVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_C24_V2alpha_PlaybackSignalsVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  swift_getAtKeyPath();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  outlined destroy of ClientExperienceSignals?(v7, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v11[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F15ClientComponentVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F15ClientComponentVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getAtKeyPath();
  result = v6;
  if (!v6)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)()
{
  swift_getAtKeyPath();
  if (v2)
  {
    return v1;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSSSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSSSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  swift_getAtKeyPath();
  if (v1 != 2)
  {
    return v1 & 1;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSbSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSbSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AudioExperience.Builder.require<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = MEMORY[0x1E69E77B0];
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - v9;
  swift_getAtKeyPath();
  v11 = *(v6 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v10, v11);
  }

  (*(v7 + 8))(v10, v6);
  v15[2] = 0;
  v15[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v15[1] = a1;
  v14 = *(v4 + *v5);
  type metadata accessor for KeyPath();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AudioExperience.Builder.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AudioExperience.Builder(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[7]] = 0;
  *&a1[v2[8]] = 0;
  v7 = &a1[v2[9]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[10]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[11]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a1[v2[12]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1[v2[13]] = 2;
  v11 = v2[14];
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  a1[v2[15]] = 2;
  a1[v2[16]] = 2;
  *&a1[v2[17]] = 0;
  *&a1[v2[18]] = 0;
  v13 = v2[19];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v15 = *(*(v14 - 8) + 56);

  return v15(&a1[v13], 1, 1, v14);
}

uint64_t AudioExperience.Builder.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:internalSignalsFromSiriAudio:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:isGlideEligible:networkAvailableAtRequest:matchingSpans:renderOptions:multiUserContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = a1;
  v26 = type metadata accessor for AudioExperience.Builder(0);
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a2, a9 + v26[5], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a3, a9 + v26[6], &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  *(a9 + v26[7]) = a4;
  *(a9 + v26[8]) = a5;
  v27 = (a9 + v26[9]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + v26[10]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + v26[11]);
  *v29 = a11;
  v29[1] = a12;
  v30 = (a9 + v26[12]);
  *v30 = a13;
  v30[1] = a14;
  *(a9 + v26[13]) = a15;
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a16, a9 + v26[14], &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  *(a9 + v26[15]) = a17;
  *(a9 + v26[16]) = a18;
  *(a9 + v26[17]) = a19;
  *(a9 + v26[18]) = a20;
  return outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a21, a9 + v26[19], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
}

id AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, double a6)
{
  v7 = v6;
  v91 = a5;
  v92 = a4;
  v111 = a3;
  v105 = a2;
  v104 = a1;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v110 = *(v103 - 8);
  v12 = v110[8];
  MEMORY[0x1EEE9AC00](v103);
  v112 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v90 = *(v109 - 8);
  v14 = v90;
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v102 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v88 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AudioExperience.Builder(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v100 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  v101 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v31 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v7[v31] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *v30 = 0;
  (*(v22 + 56))(&v30[v27[7]], 1, 1, v21);
  (*(v18 + 56))(&v30[v27[8]], 1, 1, v17);
  *&v30[v27[9]] = 0;
  v97 = v27[10];
  *&v30[v97] = 0;
  v32 = &v30[v27[11]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v30[v27[12]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v30[v27[13]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v30[v27[14]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v30[v27[15]] = 2;
  (*(v14 + 56))(&v30[v27[16]], 1, 1, v109);
  v93 = v27[17];
  v30[v93] = 2;
  v94 = v27[18];
  v30[v94] = 2;
  v95 = v27[19];
  *&v30[v95] = 0;
  v98 = v27[20];
  *&v30[v98] = 0;
  v36 = v27[21];
  v96 = v36;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v37 - 8) + 56))(&v30[v36], 1, 1, v37);
  v92(v30);
  KeyPath = swift_getKeyPath();
  v39 = specialized AudioExperience.Builder.require<A>(_:)(KeyPath, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSay10PegasusAPI013Apple_Parsec_c9_V2alpha_F4ItemVGSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSay10PegasusAPI013Apple_Parsec_c9_V2alpha_F4ItemVGSgGMR);

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = v39;
  v40 = swift_getKeyPath();
  specialized AudioExperience.Builder.require<A>(_:)(v40, v25);

  (*(v22 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding], v25, v21);
  v41 = swift_getKeyPath();
  v42 = v89;
  specialized AudioExperience.Builder.require<A>(_:)(v41, v89);

  (*(v18 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals], v42, v88);
  v43 = swift_getKeyPath();
  v44 = specialized AudioExperience.Builder.require<A>(_:)(v43, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSaySSGSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSaySSGSgGMR);

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v44;
  swift_getKeyPath();
  v45 = specialized AudioExperience.Builder.require<A>(_:)();
  v47 = v46;

  v48 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  *v48 = v45;
  v48[1] = v47;
  swift_getKeyPath();
  v49 = specialized AudioExperience.Builder.require<A>(_:)();
  v51 = v50;

  v52 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  *v52 = v49;
  v52[1] = v51;
  swift_getKeyPath();
  v53 = specialized AudioExperience.Builder.require<A>(_:)();
  v55 = v54;

  v56 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  *v56 = v53;
  v56[1] = v55;
  swift_getKeyPath();
  v57 = specialized AudioExperience.Builder.require<A>(_:)();
  v59 = v58;

  v60 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  *v60 = v57;
  v60[1] = v59;
  swift_getKeyPath();
  LOBYTE(v57) = specialized AudioExperience.Builder.require<A>(_:)();

  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v57 & 1;
  v61 = swift_getKeyPath();
  v62 = v102;
  specialized AudioExperience.Builder.require<A>(_:)(v61, v102);

  (*(v90 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent], v62, v109);
  v63 = type metadata accessor for Graph();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  LOBYTE(v42) = v30[v93];
  v66 = v99;
  swift_beginAccess();
  v7[v66] = v42 & 1;
  LOBYTE(v42) = (v30[v94] == 2) | v30[v94];
  v67 = v100;
  swift_beginAccess();
  v7[v67] = v42 & 1;
  v68 = MEMORY[0x1E69E7CC0];
  if (*&v30[v95])
  {
    v69 = *&v30[v95];
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v69;
  if (*&v30[v97])
  {
    v70 = *&v30[v97];
  }

  else
  {
    v70 = v68;
  }

  v71 = v101;
  swift_beginAccess();
  v72 = *&v7[v71];
  *&v7[v71] = v70;

  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(&v30[v96], &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v73 = v110[2];
  v74 = v103;
  v73(v112, v111);
  v75 = *&v30[v98];
  if (v75)
  {
    v76 = *&v30[v98];
  }

  else
  {
    v76 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  }

  v78 = v106;
  v77 = v107;
  v79 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x1E69BCBD8], v108);
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v80 = &v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v81 = v105;
  *v80 = v104;
  v80[1] = v81;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  (v73)(&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v112, v74);
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v76;
  (*(v77 + 16))(&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v78, v79);
  v82 = type metadata accessor for Experience(0);
  v113.receiver = v7;
  v113.super_class = v82;
  v83 = v75;
  v84 = objc_msgSendSuper2(&v113, sel_init);
  v85 = v110[1];
  v85(v111, v74);
  (*(v77 + 8))(v78, v79);
  v85(v112, v74);
  outlined destroy of AudioExperience.Builder(v30, type metadata accessor for AudioExperience.Builder);
  return v84;
}

size_t AudioExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v175 = &v154 - v6;
  v183 = type metadata accessor for Siri_Nlu_External_Span();
  v181 = *(v183 - 8);
  v7 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v186 = *(v188 - 8);
  v9 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v179 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v187 = *(v191 - 8);
  v11 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v185 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v193 = *(v13 - 8);
  v14 = *(v193 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BinaryDecodingOptions();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v174 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v180 = &v154 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v178 = &v154 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v184 = &v154 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  v189 = &v154 - v28;
  v192 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v190 = *(v192 - 8);
  v29 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v31 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible) = 0;
  v177 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest) = 1;
  v199 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio) = MEMORY[0x1E69E7CC0];
  v32 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v198 = v32;
  *(v2 + v32) = v33;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v34 = swift_allocObject();
  v196 = xmmword_1DC64ED70;
  *(v34 + 16) = xmmword_1DC64ED70;
  v195 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v34 + 32) = v195;
  v197 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v34 + 40) = v197;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v204 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v203, &_sypSgMd, &_sypSgMR);
    goto LABEL_39;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.pommes);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DC5C3000, v62, v63, "AudioExperience cannot be decoded", v64, 2u);
      MEMORY[0x1E1299E70](v64, -1, -1);
    }

    v65 = v198;
    goto LABEL_44;
  }

  v171 = v31;
  v36 = v202;
  v37 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v37)
  {
LABEL_29:

    goto LABEL_39;
  }

  v172 = v37;
  v173 = v36;
  v38 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v38)
  {

    v60 = &v201;
LABEL_31:

    goto LABEL_39;
  }

  v169 = v38;
  v168 = v35;
  v39 = a1;
  v40 = swift_allocObject();
  *(v40 + 16) = v196;
  *(v40 + 32) = v195;
  v41 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v40 + 40) = v41;
  v170 = v39;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v204 + 1))
  {

LABEL_35:

    outlined destroy of ClientExperienceSignals?(&v203, &_sypSgMd, &_sypSgMR);
LABEL_38:
    a1 = v170;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:

    goto LABEL_38;
  }

  v167 = v202;
  v42 = swift_allocObject();
  *(v42 + 16) = v196;
  *(v42 + 32) = v195;
  *(v42 + 40) = v41;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v204 + 1))
  {

    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v43 = v202;
  a1 = v170;
  v44 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v44)
  {

    goto LABEL_29;
  }

  v164 = v44;
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v45)
  {

    v60 = &v196;
    goto LABEL_31;
  }

  v159 = v43;
  v160 = v45;
  v46 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v46)
  {

    v60 = &v192;
    goto LABEL_31;
  }

  v158 = v46;
  v47 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v47)
  {

    v60 = &v190;
    goto LABEL_31;
  }

  v156 = v47;
  v48 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v48)
  {

    v60 = &v188;
    goto LABEL_31;
  }

  v155 = v48;
  v49 = v173;
  if (v173 >> 62)
  {
    goto LABEL_55;
  }

  v50 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
    while (1)
    {
      v51 = v49;
      v202 = MEMORY[0x1E69E7CC0];
      v163 = v50;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 & ~(v50 >> 63), 0);
      if (v163 < 0)
      {
        break;
      }

      v49 = 0;
      v166 = 0;
      v52 = v202;
      v53 = v51;
      v162 = v51 & 0xC000000000000001;
      v157 = v51 & 0xFFFFFFFFFFFFFF8;
      v161 = v193 + 32;
      while (!__OFADD__(v49, 1))
      {
        a1 = &v203;
        v165 = v49 + 1;
        if (v162)
        {
          v54 = v49;
          v55 = MEMORY[0x1E12996A0]();
        }

        else
        {
          if (v49 >= *(v157 + 16))
          {
            goto LABEL_54;
          }

          v54 = v49;
          v55 = *(v53 + 8 * v49 + 32);
        }

        v56 = v55;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = 0;
        v204 = 0u;
        v203 = 0u;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem, MEMORY[0x1E69BD108]);
        v57 = v166;
        Message.init(serializedData:extensions:partial:options:)();
        v166 = v57;
        if (v57)
        {

          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = v166;
          goto LABEL_62;
        }

        v202 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
          v52 = v202;
        }

        *(v52 + 16) = v59 + 1;
        (*(v193 + 4))(v52 + ((v193[80] + 32) & ~v193[80]) + *(v193 + 9) * v59, v16, v13);
        v49 = v54 + 1;
        a1 = v170;
        v53 = v173;
        if (v165 == v163)
        {

          v74 = v166;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v75 = v49;
      if (v49 >= 0)
      {
        v49 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v76 = MEMORY[0x1E1299770](v49);
      v49 = v75;
      v50 = v76;
      if (!v76)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_58:

  v74 = 0;
  v52 = MEMORY[0x1E69E7CC0];
LABEL_59:
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults) = v52;
  v77 = v172;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v205 = 0;
  v204 = 0u;
  v203 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioUnderstanding and conformance Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69BD508]);
  v78 = v171;
  Message.init(serializedData:extensions:partial:options:)();
  v73 = v74;
  if (v74)
  {

    v71 = 0;
    v72 = 0;
    v70 = 1;
LABEL_62:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.pommes);
    v89 = v73;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      LODWORD(v197) = 0;
      v93 = v73;
      LODWORD(v196) = v70;
      v94 = v92;
      v95 = swift_slowAlloc();
      *&v203 = v95;
      *v94 = 136315138;
      swift_getErrorValue();
      v96 = Error.localizedDescription.getter();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v203);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_1DC5C3000, v90, v91, "Failed to decode AudioExperience %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x1E1299E70](v95, -1, -1);
      MEMORY[0x1E1299E70](v94, -1, -1);
      v99 = v93;
      v72 = 0;
      v71 = v197;

      v65 = v198;
      if ((v196 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {

      v65 = v198;
      if ((v70 & 1) == 0)
      {
LABEL_66:
        if (!v71)
        {
          goto LABEL_44;
        }

        goto LABEL_67;
      }
    }

    v101 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults);

    if ((v71 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_67:
    v100 = 0;
    goto LABEL_68;
  }

  (*(v190 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding, v78, v192);
  v79 = v169;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v205 = 0;
  v204 = 0u;
  v203 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PlaybackSignals and conformance Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69BD398]);
  v80 = v185;
  Message.init(serializedData:extensions:partial:options:)();
  (*(v187 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals, v80, v191);
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals) = v167;
  v81 = v199;
  swift_beginAccess();
  v82 = *v81;
  *v81 = v159;

  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType);
  *v84 = v83;
  v84[1] = v85;
  v86 = v155;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v205 = 0;
  v204 = 0u;
  v203 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioClientComponent and conformance Apple_Parsec_Siri_V2alpha_AudioClientComponent, MEMORY[0x1E69BD598]);
  v87 = v179;
  Message.init(serializedData:extensions:partial:options:)();
  v185 = v86;
  v189 = v79;
  v193 = v77;
  (*(v186 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent, v87, v188);
  v111 = type metadata accessor for Graph();
  v112 = *(v111 + 48);
  v113 = *(v111 + 52);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse) = Graph.init()();
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID);
  *v115 = v114;
  v115[1] = v116;
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID);
  *v118 = v117;
  v118[1] = v119;
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID);
  *v121 = v120;
  v121[1] = v122;
  v123 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651720);
  v124 = [a1 decodeBoolForKey:v123];

  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection) = v124;
  v125 = MEMORY[0x1E1299430](0x456564696C477369, 0xEF656C626967696CLL);
  LOBYTE(v124) = [a1 decodeBoolForKey:v125];

  v126 = v176;
  swift_beginAccess();
  *(v2 + v126) = v124;
  v127 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651740);
  LOBYTE(v124) = [a1 decodeBoolForKey:v127];

  v128 = v177;
  swift_beginAccess();
  *(v2 + v128) = v124;
  v129 = swift_allocObject();
  *(v129 + 16) = v196;
  v130 = v197;
  *(v129 + 32) = v195;
  *(v129 + 40) = v130;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v204 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v203, &_sypSgMd, &_sypSgMR);
LABEL_99:
    if (one-time initialization token for pommes == -1)
    {
LABEL_100:
      v140 = type metadata accessor for Logger();
      __swift_project_value_buffer(v140, static Logger.pommes);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_1DC5C3000, v141, v142, "Unable to decode matchingSpans", v143, 2u);
        MEMORY[0x1E1299E70](v143, -1, -1);
      }

      v144 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults);

      v72 = 1;
      v100 = 1;
      v65 = v198;
LABEL_68:
      (*(v190 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding, v192);
      if (v100)
      {
        v102 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse);

        if ((v72 & 1) == 0)
        {
          v104 = *v199;

LABEL_79:
          v108 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID + 8);

          v109 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID + 8);

          v110 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID + 8);

          (*(v186 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent, v188);
          goto LABEL_45;
        }

        v103 = 1;
      }

      else
      {
        if ((v72 & 1) == 0)
        {
LABEL_44:
          v66 = *v199;

LABEL_45:

          type metadata accessor for AudioExperience(0);
          v67 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
          v68 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
          swift_deallocPartialClassInstance();
          return 0;
        }

        v103 = 0;
      }

      (*(v187 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals, v191);
      v105 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals);

      v106 = *v199;

      v107 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType + 8);

      if (!v103)
      {
        goto LABEL_45;
      }

      goto LABEL_79;
    }

LABEL_111:
    swift_once();
    goto LABEL_100;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_99;
  }

  v131 = v200;
  if (v200 >> 62)
  {
    if (v200 < 0)
    {
      v153 = v200;
    }

    else
    {
      v153 = v200 & 0xFFFFFFFFFFFFFF8;
    }

    *&v196 = MEMORY[0x1E1299770](v153);
  }

  else
  {
    *&v196 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v196)
  {
    v200 = MEMORY[0x1E69E7CC0];
    v132 = v196;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132 & ~(v132 >> 63), 0);
    if ((v132 & 0x8000000000000000) == 0)
    {
      v133 = 0;
      v134 = v200;
      v195 = v131 & 0xC000000000000001;
      v184 = (v131 & 0xFFFFFFFFFFFFFF8);
      v194 = v181 + 32;
      while (1)
      {
        v135 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          break;
        }

        if (v195)
        {
          v136 = MEMORY[0x1E12996A0](v133, v131);
        }

        else
        {
          if (v133 >= *(v184 + 2))
          {
            goto LABEL_110;
          }

          v136 = *(v131 + 8 * v133 + 32);
        }

        v137 = v136;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = 0;
        v204 = 0u;
        v203 = 0u;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span and conformance Siri_Nlu_External_Span, MEMORY[0x1E69D0938]);
        Message.init(serializedData:extensions:partial:options:)();

        v200 = v134;
        v139 = *(v134 + 16);
        v138 = *(v134 + 24);
        if (v139 >= v138 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138 > 1, v139 + 1, 1);
          v134 = v200;
        }

        *(v134 + 16) = v139 + 1;
        (*(v181 + 32))(v134 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v139, v182, v183);
        ++v133;
        if (v135 == v196)
        {

          goto LABEL_103;
        }
      }

LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    __break(1u);
  }

  else
  {

    v134 = MEMORY[0x1E69E7CC0];
LABEL_103:
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans) = v134;
    v145 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v145)
    {
      v146 = v145;
      v147 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v205 = 0;
      v204 = 0u;
      v203 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MultiUserContext and conformance Apple_Parsec_Siri_V2alpha_MultiUserContext, MEMORY[0x1E69BD400]);
      Message.init(serializedData:extensions:partial:options:)();

      v150 = v175;
      (*(*(v147 - 8) + 56))(v175, 0, 1, v147);
      outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v150, v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    }

    else
    {
      v148 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext;
      v149 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
      (*(*(v149 - 8) + 56))(v2 + v148, 1, 1, v149);
    }

    v151 = Experience.init(coder:)(v170);
    v152 = v151;

    if (!v151)
    {
      return 0;
    }

    return v151;
  }

  return result;
}

Swift::Void __swiftcall AudioExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v93 = &v90 - v4;
  v92 = type metadata accessor for Siri_Nlu_External_Span();
  v94 = *(v92 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v97 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  v96 = v1;
  v14 = v13(v10);
  v15 = *(v14 + 16);
  if (v15)
  {
    v101[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = 0;
    v99 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v98 = v8 + 16;
    v100 = (v8 + 8);
    while (v16 < *(v14 + 16))
    {
      (*(v8 + 16))(v12, v99 + *(v8 + 72) * v16, v7);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem, MEMORY[0x1E69BD108]);
      ++v16;
      v17 = Message.serializedData(partial:)();
      v19 = v18;
      Data._bridgeToObjectiveC()();
      outlined consume of Data._Representation(v17, v19);
      (*v100)(v12, v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(v101[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v15 == v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    swift_once();
    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.pommes);
    v72 = 0;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v101[0] = v76;
      *v75 = 136315138;
      swift_getErrorValue();
      v77 = Error.localizedDescription.getter();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v101);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_1DC5C3000, v73, v74, "AudioExperience encode failed to serialize %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x1E1299E70](v76, -1, -1);
      MEMORY[0x1E1299E70](v75, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

LABEL_5:

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v21 = Array._bridgeToObjectiveC()().super.isa;

  v22 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651640);
  v7 = isa;
  [(objc_class *)isa encodeObject:v21 forKey:v22];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioUnderstanding and conformance Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69BD508]);
  v23 = v96;
  v24 = Message.serializedData(partial:)();
  v25 = v97;
  v26 = MEMORY[0x1E69E7D40];
  v27 = v24;
  v29 = v28;
  v30 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v27, v29);
  v31 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651660);
  [v7 encodeObject:v30 forKey:v31];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PlaybackSignals and conformance Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69BD398]);
  v32 = Message.serializedData(partial:)();
  v34 = v33;
  v35 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v32, v34);
  v36 = MEMORY[0x1E1299430](0x6B63616279616C70, 0xEF736C616E676953);
  [v7 encodeObject:v35 forKey:v36];

  v37 = *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals);
  v38 = Array._bridgeToObjectiveC()().super.isa;
  v39 = MEMORY[0x1E1299430](0x6C616E696769726FLL, 0xEF736C616E676953);
  [v7 encodeObject:v38 forKey:v39];

  (*((*v26 & *v23) + 0x220))();
  v40 = Array._bridgeToObjectiveC()().super.isa;

  v41 = MEMORY[0x1E1299430](0xD00000000000001CLL, 0x80000001DC651680);
  [v7 encodeObject:v40 forKey:v41];

  v42 = MEMORY[0x1E1299430](*(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType), *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType + 8));
  v43 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC6516A0);
  [v7 encodeObject:v42 forKey:v43];

  v44 = MEMORY[0x1E1299430](*(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID), *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID + 8));
  v45 = MEMORY[0x1E1299430](0x444968636E75616CLL, 0xE800000000000000);
  [v7 encodeObject:v44 forKey:v45];

  v46 = MEMORY[0x1E1299430](*(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID), *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID + 8));
  v47 = MEMORY[0x1E1299430](0xD000000000000017, 0x80000001DC6516C0);
  [v7 encodeObject:v46 forKey:v47];

  v48 = MEMORY[0x1E1299430](*(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID), *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID + 8));
  v49 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC6516E0);
  [v7 encodeObject:v48 forKey:v49];

  v50 = *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection);
  v51 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651720);
  [v7 encodeBool:v50 forKey:v51];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioClientComponent and conformance Apple_Parsec_Siri_V2alpha_AudioClientComponent, MEMORY[0x1E69BD598]);
  v52 = Message.serializedData(partial:)();
  v54 = v53;
  v55 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v52, v54);
  v56 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651700);
  [v7 0x1E8636F02];

  v57 = MEMORY[0x1E69E7D40];
  LOBYTE(v56) = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x1E8))();
  v58 = MEMORY[0x1E1299430](0x456564696C477369, 0xEF656C626967696CLL);
  [v7 encodeBool:v56 & 1 forKey:v58];

  LOBYTE(v56) = (*((*v57 & *v23) + 0x200))();
  v59 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651740);
  [v7 encodeBool:v56 & 1 forKey:v59];

  v60 = *(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans);
  v61 = *(v60 + 16);
  if (!v61)
  {
LABEL_16:
    v80 = Array._bridgeToObjectiveC()().super.isa;

    v81 = MEMORY[0x1E1299430](0x676E69686374616DLL, 0xED0000736E617053);
    [v7 encodeObject:v80 forKey:v81];

    v82 = v93;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v23 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, v93, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v83 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v82, 1, v83) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v82, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
      v85 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MultiUserContext and conformance Apple_Parsec_Siri_V2alpha_MultiUserContext, MEMORY[0x1E69BD400]);
      v86 = Message.serializedData(partial:)();
      v88 = v87;
      (*(v84 + 8))(v82, v83);
      v101[0] = v86;
      v101[1] = v88;
      v85 = _bridgeAnythingToObjectiveC<A>(_:)();
      outlined destroy of Data(v101);
    }

    v89 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651760);
    [v7 encodeObject:v85 forKey:v89];
    swift_unknownObjectRelease();

LABEL_15:
    Experience.encode(with:)(v7);
    return;
  }

  v101[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
  v62 = 0;
  v63 = v101[0];
  v99 = v60 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v98 = v94 + 16;
  v100 = (v94 + 8);
  v64 = v92;
  v91 = v60;
  while (v62 < *(v60 + 16))
  {
    (*(v94 + 16))(v25, v99 + *(v94 + 72) * v62, v64);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span and conformance Siri_Nlu_External_Span, MEMORY[0x1E69D0938]);
    v65 = Message.serializedData(partial:)();
    v67 = v66;
    (*v100)(v25, v64);
    v101[0] = v63;
    v69 = *(v63 + 16);
    v68 = *(v63 + 24);
    if (v69 >= v68 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
      v64 = v92;
      v63 = v101[0];
    }

    ++v62;
    *(v63 + 16) = v69 + 1;
    v70 = v63 + 16 * v69;
    *(v70 + 32) = v65;
    *(v70 + 40) = v67;
    v25 = v97;
    v60 = v91;
    if (v61 == v62)
    {
      v7 = isa;
      v23 = v96;
      goto LABEL_16;
    }
  }

  __break(1u);
}

id AudioExperience.appendResult(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock);
  [v8 lock];
  (*(v4 + 16))(v7, a1, v3);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults;
  swift_beginAccess();
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(v1 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v7, v3);
  *(v1 + v9) = v10;
  swift_endAccess();
  return [v8 unlock];
}

void AudioExperience.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse);

  v5 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio);

  v9 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType + 8);

  v10 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID + 8);

  v11 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID + 8);

  v12 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID + 8);

  v13 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans);

  outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v16 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock);
}

id AudioExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AudioExperience.Builder(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v4 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v5 = MEMORY[0x1E1299770](a1);
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = MEMORY[0x1E1299770](v16);
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), v4);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for NSArray(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1E1299770](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMR, MEMORY[0x1E69D0938]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x1E69BD108]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMR, MEMORY[0x1E69BD588]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Responseframework_PatternComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Responseframework_PatternComponentVGMR, MEMORY[0x1E69BD5B0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMd, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMR, MEMORY[0x1E69AA9A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DomainUseCaseParameterVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DomainUseCaseParameterVGMR, MEMORY[0x1E69BD6E8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMR, MEMORY[0x1E69BD5C0]);
  *v3 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata completion function for AudioExperience()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for AudioExperience.Builder()
{
  type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_AudioItem]?, &_sSay10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, "vJ");
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioUnderstanding?, MEMORY[0x1E69BD508]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_PlaybackSignals?, MEMORY[0x1E69BD398]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioClientComponent?, MEMORY[0x1E69BD598]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_Span]?, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanVGMR);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for PommesRenderOptions?, type metadata accessor for PommesRenderOptions);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400]);
                    if (v9 <= 0x3F)
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1E1299770](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1E1299770](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](&lazy protocol witness table cache variable for type [INInformationUseCaseParameter] and conformance [A], &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMd, &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMd, &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for INInformationUseCaseParameter();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1E1299770](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1E1299770](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](&lazy protocol witness table cache variable for type [INInformationUseCaseIntent] and conformance [A], &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMd, &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMd, &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for INInformationUseCaseIntent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](a2, a3);
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

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](a2, a3);
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

uint64_t lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined destroy of AudioExperience.Builder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1E69E7CC0];
  *(a4 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a4 + 24) = v8;
  v9 = *(type metadata accessor for ClientExperienceSignals() + 36);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  result = (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *a4 = a1;
  *(a4 + 16) = a2;
  *(a4 + 17) = a3;
  return result;
}

uint64_t ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:matchingSpans:multiUserContext:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = *(type metadata accessor for ClientExperienceSignals() + 36);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 16) = a2;
  *(a6 + 17) = a3;
  *(a6 + 24) = a4;

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a5, a6 + v12);
}

uint64_t ClientExperienceSignals.glideEligibilityPerSharedId.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ClientExperienceSignals.matchingSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ClientExperienceSignals.multiUserContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientExperienceSignals() + 36);

  return outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v3, a1);
}

uint64_t ClientExperienceSignals.multiUserContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ClientExperienceSignals() + 36);

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, v3);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for ClientExperienceSignals()
{
  result = type metadata singleton initialization cache for ClientExperienceSignals;
  if (!type metadata singleton initialization cache for ClientExperienceSignals)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ClientExperienceSignals()
{
  type metadata accessor for [String : Bool]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Siri_Nlu_External_Span](319, &lazy cache variable for type metadata for [Siri_Nlu_External_Span], MEMORY[0x1E69D0938], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Siri_Nlu_External_Span](319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Siri_Nlu_External_Span](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

SiriInformationTypes::PommesSearchReason_optional __swiftcall PommesSearchReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesSearchReason.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PommesSearchReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x4665737261506F6ELL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616D6F446F666E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason;
  if (!lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesSearchReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesSearchReason()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesSearchReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PommesSearchReason(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEF6B6361626C6C61;
  v6 = 0x4665737261506F6ELL;
  v7 = 0x80000001DC6511D0;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001DC6511F0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x616D6F446F666E69;
    v3 = 0xEF65737261506E69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PommesSearchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

id ClientAudioResult.init(domain:vocabularyResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - v9;
  if (a3)
  {
    *&v3[OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult] = a3;
    if (*(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType) == 18540)
    {
      v11 = v3;
      v12 = *((*MEMORY[0x1E69E7D40] & *a3) + 0xF0);
      v13 = a3;
      v14 = v12();
      UInt16.audioType.getter(v14, v10);
      v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      static ClientAudioResult.Scheme.from(_:)(v10, &v49);
      outlined destroy of ClientExperienceSignals?(v10, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
      v16 = v49;
      v17 = v13 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId;
      v18 = *(v13 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);
      v19 = *(v17 + 1);
      swift_bridgeObjectRetain_n();
      v20 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v18, v19);
      v22 = v21;
      v23 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v20, v22);
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      if (v16 > 4)
      {
        v36 = 0x80000001DC6512C0;
        v37 = 0xD000000000000017;
        v38 = 0x80000001DC6512E0;
        v39 = 0xD00000000000001ALL;
        if (v16 == 8)
        {
          v39 = 0xD000000000000016;
        }

        else
        {
          v38 = 0x80000001DC651300;
        }

        if (v16 != 7)
        {
          v37 = v39;
          v36 = v38;
        }

        v40 = 0x80000001DC651280;
        v41 = 0xD000000000000018;
        if (v16 == 5)
        {
          v41 = 0xD00000000000001FLL;
        }

        else
        {
          v40 = 0x80000001DC6512A0;
        }

        if (v16 <= 6)
        {
          v30 = v41;
        }

        else
        {
          v30 = v37;
        }

        if (v16 <= 6)
        {
          v31 = v40;
        }

        else
        {
          v31 = v36;
        }
      }

      else
      {
        v24 = 0xEE007473696C7961;
        v25 = 0x6C70706D61732D78;
        v26 = 0xED00006D65746964;
        v27 = 0x656D706D61732D78;
        v28 = 0x80000001DC651240;
        v29 = 0xD000000000000017;
        if (v16 == 3)
        {
          v29 = 0xD000000000000014;
        }

        else
        {
          v28 = 0x80000001DC651260;
        }

        if (v16 != 2)
        {
          v27 = v29;
          v26 = v28;
        }

        if (v16)
        {
          v25 = 0xD000000000000016;
          v24 = 0x80000001DC651210;
        }

        if (v16 <= 1)
        {
          v30 = v25;
        }

        else
        {
          v30 = v27;
        }

        if (v16 <= 1)
        {
          v31 = v24;
        }

        else
        {
          v31 = v26;
        }
      }

      MEMORY[0x1E1299490](v30, v31);

      MEMORY[0x1E1299490](0x73697269732F2F3ALL, 0xEC0000002F636E79);
      MEMORY[0x1E1299490](v23._countAndFlagsBits, v23._object);

      v34 = v47;
      v33 = v48;
      v3 = v11;
    }

    else
    {
      v34 = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);
      v33 = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8);
      v35 = a3;
    }

    v42 = &v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
    *v42 = v34;
    *(v42 + 1) = v33;
    v43 = &v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
    *v43 = a1;
    *(v43 + 1) = a2;
    *&v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata] = xmmword_1DC64F240;
    v44 = type metadata accessor for PommesResult();
    v50.receiver = v3;
    v50.super_class = v44;
    v32 = objc_msgSendSuper2(&v50, sel_init);
  }

  else
  {

    type metadata accessor for ClientAudioResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v32;
}

uint64_t static ClientAudioResult.Scheme.from(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v16 - v9, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v10, v8, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
    v13 = (*(v12 + 88))(v8, v11);
    if (v13 != *MEMORY[0x1E69BD230])
    {
      if (v13 == *MEMORY[0x1E69BD238])
      {
        v14 = 1;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD250])
      {
        v14 = 7;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD240])
      {
        v14 = 8;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD268])
      {
        *a2 = 0;
        return outlined destroy of ClientExperienceSignals?(v10, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
      }

      if (v13 == *MEMORY[0x1E69BD208])
      {
        v14 = 6;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD218])
      {
        v14 = 3;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD270])
      {
        v14 = 9;
        goto LABEL_4;
      }

      if (v13 == *MEMORY[0x1E69BD248] || v13 == *MEMORY[0x1E69BD258] || v13 == *MEMORY[0x1E69BD210])
      {
        result = outlined destroy of ClientExperienceSignals?(v10, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
        *a2 = 2;
        return result;
      }

      if (v13 != *MEMORY[0x1E69BD200])
      {
        if (v13 == *MEMORY[0x1E69BD220])
        {
          v14 = 5;
          goto LABEL_4;
        }

        (*(v12 + 8))(v8, v11);
      }
    }
  }

  v14 = 2;
LABEL_4:
  *a2 = v14;
  return outlined destroy of ClientExperienceSignals?(v10, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v16 - v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v11 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v10, v8, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v14 = (*(v12 + 88))(v8, v11);
    if (v14 == *MEMORY[0x1E69D2008])
    {
      v13 = 7;
      goto LABEL_7;
    }

    if (v14 == *MEMORY[0x1E69D2028])
    {
      v13 = 0;
      goto LABEL_7;
    }

    if (v14 != *MEMORY[0x1E69D1FE8])
    {
      if (v14 == *MEMORY[0x1E69D1FF0])
      {
        v13 = 1;
        goto LABEL_7;
      }

      (*(v12 + 8))(v8, v11);
    }
  }

  v13 = 2;
LABEL_7:
  *a2 = v13;
  return outlined destroy of ClientExperienceSignals?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
}

Swift::String __swiftcall ClientAudioResult.Scheme.buildSiriSyncURI(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = *v1;

  v5 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(countAndFlagsBits, object);
  v7 = v6;
  v8 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v5, v7);
  _StringGuts.grow(_:)(16);
  if (v4 > 4)
  {
    v17 = 0x80000001DC6512C0;
    v18 = 0xD000000000000017;
    v19 = 0x80000001DC6512E0;
    v20 = 0xD00000000000001ALL;
    if (v4 == 8)
    {
      v20 = 0xD000000000000016;
    }

    else
    {
      v19 = 0x80000001DC651300;
    }

    if (v4 != 7)
    {
      v18 = v20;
      v17 = v19;
    }

    v21 = 0x80000001DC651280;
    v22 = 0xD000000000000018;
    if (v4 == 5)
    {
      v22 = 0xD00000000000001FLL;
    }

    else
    {
      v21 = 0x80000001DC6512A0;
    }

    if (v4 <= 6)
    {
      v15 = v22;
    }

    else
    {
      v15 = v18;
    }

    if (v4 <= 6)
    {
      v16 = v21;
    }

    else
    {
      v16 = v17;
    }
  }

  else
  {
    v9 = 0xEE007473696C7961;
    v10 = 0x6C70706D61732D78;
    v11 = 0xED00006D65746964;
    v12 = 0x656D706D61732D78;
    v13 = 0x80000001DC651240;
    v14 = 0xD000000000000017;
    if (v4 == 3)
    {
      v14 = 0xD000000000000014;
    }

    else
    {
      v13 = 0x80000001DC651260;
    }

    if (v4 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (v4)
    {
      v10 = 0xD000000000000016;
      v9 = 0x80000001DC651210;
    }

    if (v4 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v4 <= 1)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }
  }

  MEMORY[0x1E1299490](v15, v16);

  MEMORY[0x1E1299490](0x73697269732F2F3ALL, 0xEC0000002F636E79);
  MEMORY[0x1E1299490](v8._countAndFlagsBits, v8._object);

  v23 = 0;
  v24 = 0xE000000000000000;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

id ClientAudioResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for VocabularyResult();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult) = v4;
    v5 = v4;
    v6 = PommesResult.init(coder:)(a1);
    v7 = v6;

    if (v6)
    {
    }
  }

  else
  {

    type metadata accessor for ClientAudioResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ClientAudioResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  v4 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651840);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  PommesResult.encode(with:)(with);
}

uint64_t ClientAudioResult.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(71);
  MEMORY[0x1E1299490](0xD000000000000025, 0x80000001DC651860);
  v2 = [*(v0 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1E1299490](v3, v5);

  MEMORY[0x1E1299490](0x6E69616D6F64202CLL, 0xEB0000000022203ALL);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain + 8));
  MEMORY[0x1E1299490](0x6C75736572202C22, 0xEE0022203A644974);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId + 8));
  MEMORY[0x1E1299490](8200226, 0xE300000000000000);
  return 0;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ClientExperienceSignals?(__src, &_s10Foundation15ContiguousBytes_pSgMd, _s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t ClientAudioResult.Scheme.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001ALL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000018;
    if (v1 == 5)
    {
      v8 = 0xD00000000000001FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C70706D61732D78;
    v3 = 0x656D706D61732D78;
    v4 = 0xD000000000000017;
    if (v1 == 3)
    {
      v4 = 0xD000000000000014;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000016;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

Swift::String __swiftcall ClientAudioResult.Scheme.buildDeviceID(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = *v1;
  if (v4 > 4)
  {
    v13 = 0x80000001DC6512C0;
    v14 = 0xD000000000000017;
    v15 = 0x80000001DC6512E0;
    v16 = 0xD00000000000001ALL;
    if (v4 == 8)
    {
      v16 = 0xD000000000000016;
    }

    else
    {
      v15 = 0x80000001DC651300;
    }

    if (v4 != 7)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x80000001DC651280;
    v18 = 0xD000000000000018;
    if (v4 == 5)
    {
      v18 = 0xD00000000000001FLL;
    }

    else
    {
      v17 = 0x80000001DC6512A0;
    }

    if (*v1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (*v1 <= 6u)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xEE007473696C7961;
    v6 = 0x6C70706D61732D78;
    v7 = 0xED00006D65746964;
    v8 = 0x656D706D61732D78;
    v9 = 0x80000001DC651240;
    v10 = 0xD000000000000017;
    if (v4 == 3)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x80000001DC651260;
    }

    if (v4 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (*v1)
    {
      v6 = 0xD000000000000016;
      v5 = 0x80000001DC651210;
    }

    if (*v1 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 1u)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }
  }

  MEMORY[0x1E1299490](v11, v12);

  MEMORY[0x1E1299490](0x63697665642F2F3ALL, 0xEA00000000002F65);
  MEMORY[0x1E1299490](countAndFlagsBits, object);
  v19 = 0;
  v20 = 0xE000000000000000;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

SiriInformationSearch::ClientAudioResult::Scheme_optional __swiftcall ClientAudioResult.Scheme.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClientAudioResult.Scheme.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClientAudioResult.Scheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClientAudioResult.Scheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ClientAudioResult.Scheme@<X0>(uint64_t *a1@<X8>)
{
  result = ClientAudioResult.Scheme.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClientAudioResult.sharedUserIDFromPlayableMusicAccount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (!v3)
  {
    result = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8);
    if (result)
    {
      v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);

      return v4;
    }
  }

  return result;
}

id ClientAudioResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientAudioResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme()
{
  result = lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme;
  if (!lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ClientAudioResult.Scheme] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch17ClientAudioResultC6SchemeOGMd, &_sSay21SiriInformationSearch17ClientAudioResultC6SchemeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientAudioResult.Scheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientAudioResult.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1DC64F250;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DC64F250;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1E1298B00]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

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
    v5 = MEMORY[0x1E12994C0](15, a1 >> 16);
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

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t VideoExperience.videoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a3, v13);
  Siri_Nlu_External_UserDialogAct.init()();
  v18 = (*(v4 + 336))(a1, a2, v17, v12, a4);
  (*(v14 + 8))(a3, v13);
  return v18;
}

id VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v32 = a4;
  v36 = a3;
  v38 = a1;
  v39 = a2;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v34 = *(v13 - 8);
  v14 = v34;
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v6);
  v19 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v20 = *(v35 - 8);
  (*(v20 + 16))(&v18[v19], a3, v35);
  v21 = *(v14 + 16);
  v22 = v13;
  v21(v17, a4, v13);
  v23 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v24 = v33;
  v25 = v37;
  (*(v10 + 104))(v33, *MEMORY[0x1E69BCBD8], v37);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v26 = &v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v21(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v22);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v23;
  (*(v10 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v24, v25);
  v28 = type metadata accessor for Experience(0);
  v40.receiver = v18;
  v40.super_class = v28;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = *(v34 + 8);
  v30(v32, v22);
  (*(v20 + 8))(v36, v35);
  (*(v10 + 8))(v24, v25);
  v30(v17, v22);
  return v29;
}

id VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v33 = a4;
  v36 = a3;
  v37 = a1;
  v38 = a2;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v17 = *(v35 - 8);
  (*(v17 + 16))(&v5[v16], a3, v35);
  v18 = v12[2];
  v19 = v11;
  v18(v15, a4, v11);
  v30 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v21 = v31;
  v20 = v32;
  v22 = v34;
  (*(v32 + 104))(v31, *MEMORY[0x1E69BCBD8], v34);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v23 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v18(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v19);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v30;
  (*(v20 + 16))(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v21, v22);
  v25 = type metadata accessor for Experience(0);
  v39.receiver = v5;
  v39.super_class = v25;
  v26 = objc_msgSendSuper2(&v39, sel_init);
  v27 = v12[1];
  v27(v33, v19);
  (*(v17 + 8))(v36, v35);
  (*(v20 + 8))(v21, v22);
  v27(v15, v19);
  return v26;
}

id VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v7);
  v21 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v22 = *(v30 - 8);
  (*(v22 + 16))(&v20[v21], a3, v30);
  v23 = v16[2];
  v23(v19, v35, v15);
  (*(v11 + 104))(v14, *MEMORY[0x1E69BCBD8], v10);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v25 = v33;
  *v24 = v32;
  *(v24 + 1) = v25;
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v23(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v19, v15);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v11 + 16))(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v14, v10);
  v26 = type metadata accessor for Experience(0);
  v36.receiver = v20;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, sel_init);
  v28 = v16[1];
  v28(v35, v15);
  (*(v22 + 8))(v31, v30);
  (*(v11 + 8))(v14, v10);
  v28(v19, v15);
  return v27;
}

id VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v19 = *(v30 - 8);
  (*(v19 + 16))(&v6[v18], a3, v30);
  v20 = v14[2];
  v20(v17, v35, v13);
  v21 = v29;
  (*(v9 + 104))(v12, *MEMORY[0x1E69BCBD8], v29);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v20(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v13);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v21);
  v24 = type metadata accessor for Experience(0);
  v36.receiver = v6;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, sel_init);
  v26 = v14[1];
  v26(v35, v13);
  (*(v19 + 8))(v31, v30);
  (*(v9 + 8))(v12, v21);
  v26(v17, v13);
  return v25;
}

id VideoExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
    memset(&v22[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v7 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent, v10, v6);
    v17 = Experience.init(coder:)(a1);
    v18 = v17;

    if (v17)
    {

      return v17;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC5C3000, v14, v15, "VideoExperience cannot be decoded", v16, 2u);
      MEMORY[0x1E1299E70](v16, -1, -1);
    }

    type metadata accessor for VideoExperience();
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

Swift::Void __swiftcall VideoExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651930);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t VideoExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id VideoExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoExperience()
{
  result = type metadata singleton initialization cache for VideoExperience;
  if (!type metadata singleton initialization cache for VideoExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for VideoExperience()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
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

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE007473696C7961;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x80000001DC6512C0;
    v12 = 0x80000001DC6512E0;
    v13 = 0xD00000000000001ALL;
    if (a1 == 8)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v12 = 0x80000001DC651300;
    }

    if (a1 == 7)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v14 = v13;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v15 = 0x80000001DC651280;
    v16 = 0xD00000000000001FLL;
    if (a1 != 5)
    {
      v16 = 0xD000000000000018;
      v15 = 0x80000001DC6512A0;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v14;
    }

    if (v3 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x656D706D61732D78;
    v5 = 0x80000001DC651240;
    v6 = 0xD000000000000014;
    if (a1 != 3)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000001DC651260;
    }

    if (a1 == 2)
    {
      v5 = 0xED00006D65746964;
    }

    else
    {
      v4 = v6;
    }

    v7 = 0x80000001DC651210;
    if (a1)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0x6C70706D61732D78;
    }

    if (!a1)
    {
      v7 = 0xEE007473696C7961;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00006D65746964;
        if (v9 != 0x656D706D61732D78)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      if (a2 == 3)
      {
        v2 = 0x80000001DC651240;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v18 = "x-samppodcastcollection";
LABEL_54:
      v2 = (v18 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (!a2)
    {
      if (v9 != 0x6C70706D61732D78)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v17 = "x-sampcollection-album";
    goto LABEL_59;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v18 = "x-sampcollection-artist";
      goto LABEL_54;
    }

    if (a2 != 8)
    {
      v2 = 0x80000001DC651300;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v17 = "x-sampcollection-genre";
LABEL_59:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (a2 == 5)
  {
    v2 = 0x80000001DC651280;
    if (v9 != 0xD00000000000001FLL)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v2 = 0x80000001DC6512A0;
    if (v9 != 0xD000000000000018)
    {
LABEL_64:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_65;
    }
  }

LABEL_62:
  if (v10 != v2)
  {
    goto LABEL_64;
  }

  v19 = 1;
LABEL_65:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x616D6F446F666E69;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xEF65737261506E69;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x4665737261506F6ELL;
    v4 = 0xEF6B6361626C6C61;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001DC6511D0;
    }

    else
    {
      v4 = 0x80000001DC6511F0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x616D6F446F666E69;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xEF65737261506E69;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF6B6361626C6C61;
    if (v3 != 0x4665737261506F6ELL)
    {
LABEL_37:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001DC6511D0;
    }

    else
    {
      v6 = 0x80000001DC6511F0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

id PommesResult.init(resultId:domain:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for PommesResult();
  return objc_msgSendSuper2(&v11, sel_init);
}

id PommesResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {

LABEL_6:
    type metadata accessor for PommesResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v9 = v8;
  v9[1] = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v12 = v11;
  v12[1] = v13;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v5 = v7;
    v7 = v15;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v20 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v20 = v16;
  v20[1] = v18;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for PommesResult();
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

Swift::Void __swiftcall PommesResult.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId + 8));
  v4 = MEMORY[0x1E1299430](0x6449746C75736572, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain + 8));
  v6 = MEMORY[0x1E1299430](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata);
  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, v8);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = MEMORY[0x1E1299430](0x617461646174656DLL, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v11];

    outlined consume of Data._Representation?(v9, v8);
  }
}

uint64_t PommesResult.resultId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId + 8);

  return v1;
}

uint64_t PommesResult.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain + 8);

  return v1;
}

uint64_t PommesResult.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata + 8));
  return v1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

id PommesResult.__allocating_init(resultId:domain:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id PommesResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesCandidateId.CodingKeys()
{
  v1 = 0x636F64656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656D6D6F506E7572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25458;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PommesCandidateId.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesCandidateId.MedocCodingKeys()
{
  if (*v0)
  {
    return 0x6449756374;
  }

  else
  {
    return 0x6449707274;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.MedocCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449756374 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.MedocCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.MedocCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.RcCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.RcCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.RcCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId.RcCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId.RcCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.RunPommesCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449666572 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.RunPommesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.RunPommesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesCandidateId.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  v18 = v1[1];
  v36 = *v1;
  v37 = v18;
  v19 = v1[2];
  v29[1] = v1[3];
  v29[2] = v19;
  v20 = *(v1 + 32);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v41 = 0;
    lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();
    v22 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v30 + 8))(v13, v10);
    return (*(v38 + 8))(v17, v22);
  }

  if (v20 != 1)
  {
    v45 = 2;
    lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();
    v25 = v31;
    v22 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v33;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v32 + 8);
    v27 = v25;
LABEL_8:
    v26(v27, v23);
    return (*(v38 + 8))(v17, v22);
  }

  v44 = 1;
  lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();
  v22 = v39;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v43 = 0;
  v23 = v35;
  v24 = v40;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v24)
  {
    v42 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v34 + 8);
    v27 = v9;
    goto LABEL_8;
  }

  (*(v34 + 8))(v9, v23);
  return (*(v38 + 8))(v17, v22);
}

uint64_t PommesCandidateId.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v4 = v0[2];
      v3 = v0[3];
      MEMORY[0x1E1299920](1);
      String.hash(into:)();
      goto LABEL_7;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1E1299920](v5);
LABEL_7:

  return String.hash(into:)();
}

Swift::Int PommesCandidateId.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (!v5)
  {
    v6 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v6);
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    v6 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PommesCandidateId.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v60 = *(v62 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v57 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v61 = *(v58 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();
  v19 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v64;
    v65 = v13;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = *(v21 + 16);
    v57 = v12;
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = &type metadata for PommesCandidateId;
      v29 = v57;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v65 + 8))(v16, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v21 + 32))
      {
        v59 = v21;
        if (v23 == 1)
        {
          v70 = 1;
          lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();
          v31 = v7;
          v32 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v69 = 0;
          v33 = v58;
          v34 = KeyedDecodingContainer.decode(_:forKey:)();
          v35 = v65;
          v60 = v34;
          v62 = v46;
          v64 = v16;
          v68 = 1;
          v47 = KeyedDecodingContainer.decode(_:forKey:)();
          v48 = v33;
          v52 = v47;
          v54 = v53;
          (*(v61 + 8))(v31, v48);
          (*(v35 + 8))(v64, v32);
          swift_unknownObjectRelease();
          v56 = v62;
          v55 = v63;
        }

        else
        {
          v71 = 2;
          lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();
          v38 = v20;
          v39 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v55 = v63;
          v42 = v62;
          v43 = KeyedDecodingContainer.decode(_:forKey:)();
          v44 = (v60 + 8);
          v45 = (v65 + 8);
          v60 = v43;
          v50 = v38;
          v56 = v51;
          (*v44)(v50, v42);
          (*v45)(v16, v39);
          swift_unknownObjectRelease();
          v52 = 0;
          v54 = 0;
        }
      }

      else
      {
        v67 = 0;
        lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();
        v36 = v11;
        v37 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v8;
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        v56 = v49;
        v60 = v41;
        (*(v59 + 8))(v36, v40);
        (*(v65 + 8))(v16, v37);
        swift_unknownObjectRelease();
        v52 = 0;
        v54 = 0;
        v55 = v63;
      }

      *v55 = v60;
      *(v55 + 8) = v56;
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      *(v55 + 32) = v23;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (!v5)
  {
    v6 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v6);
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    v6 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesCandidateId()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v4 = v0[2];
      v3 = v0[3];
      MEMORY[0x1E1299920](1);
      String.hash(into:)();
      goto LABEL_7;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1E1299920](v5);
LABEL_7:

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (!v5)
  {
    v6 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v6);
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    v6 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static PommesResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static PommesResponse.supportsSecureCoding = a1;
  return result;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  memset(v10, 0, sizeof(v10));
  v11 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v6, MEMORY[0x1E69E7CC0], 0, 0, v10, MEMORY[0x1E69E7CC0], 0);
  v8 = v7;
  (*(v3 + 8))(a1, v2);
  return v8;
}

void PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, __int128 *a5, char *a6, int a7)
{
  v8 = v7;
  v118 = a7;
  v119 = a4;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v15 = *(v14 - 8);
  v133 = v14;
  v134 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v132 = &v103[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v131 = &v103[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v103[-v21];
  v127 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v22 = *(v127 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x1EEE9AC00](v127);
  v121 = &v103[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v103[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v128 = &v103[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v123 = &v103[-v31];
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v103[-v32];
  v34 = a5[1];
  v117 = *a5;
  v116 = v34;
  v115 = *(a5 + 32);
  if (a2 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x1E1299770](v102))
  {
    v120 = a3;
    if (i)
    {
      v36 = v33;
      v33 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v37 = *(a2 + 32);
      }

      v38 = v37;
      v125 = (*((*MEMORY[0x1E69E7D40] & *v37) + 0x88))();
      v40 = v39;

      if (v33)
      {
        v41 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v41 = *(a2 + 32);
      }

      v43 = v41;
      v33 = v36;
      v42 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0xA0))();
    }

    else
    {
      v40 = 0xE700000000000000;
      v125 = 0x6E776F6E6B6E55;
      v42 = 0.0;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    v47 = os_log_type_enabled(v45, v46);
    v129 = i;
    v114 = v8;
    v113 = a6;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v136[0] = v49;
      *v48 = 136315394;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v40, v136);

      *(v48 + 4) = v50;
      *(v48 + 12) = 2048;
      *(v48 + 14) = v42;
      _os_log_impl(&dword_1DC5C3000, v45, v46, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v51 = v49;
      i = v129;
      MEMORY[0x1E1299E70](v51, -1, -1);
      MEMORY[0x1E1299E70](v48, -1, -1);
    }

    else
    {
    }

    v112 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v111 = v52;
    v126 = a1;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a3 = v33;
    v110 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v109 = v53;
    v54 = v22[1];
    ++v22;
    v124 = v54;
    v125 = v22;
    v54(v33, v127);
    a6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v55 = 0;
      v8 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v22 = a2;
          v57 = MEMORY[0x1E12996A0](v55, a2);
        }

        else
        {
          if (v55 >= *(a1 + 16))
          {
            goto LABEL_69;
          }

          v22 = a2;
          v57 = *(a2 + 8 * v55 + 32);
        }

        a3 = v57;
        a2 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_68;
        }

        v58 = (*((*MEMORY[0x1E69E7D40] & *v57) + 0xE0))();

        a3 = *(v58 + 16);
        v33 = *(a6 + 2);
        v59 = a3 + v33;
        if (__OFADD__(v33, a3))
        {
          goto LABEL_70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v59 > *(a6 + 3) >> 1)
        {
          if (v33 <= v59)
          {
            v61 = a3 + v33;
          }

          else
          {
            v61 = v33;
          }

          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v61, 1, a6);
        }

        v62 = v129;
        if (*(v58 + 16))
        {
          if ((*(a6 + 3) >> 1) - *(a6 + 2) < a3)
          {
            goto LABEL_72;
          }

          swift_arrayInitWithCopy();

          if (a3)
          {
            v63 = *(a6 + 2);
            v64 = __OFADD__(v63, a3);
            v65 = a3 + v63;
            if (v64)
            {
              goto LABEL_73;
            }

            *(a6 + 2) = v65;
          }
        }

        else
        {

          if (a3)
          {
            goto LABEL_71;
          }
        }

        ++v55;
        v56 = a2 == v62;
        a2 = v22;
      }

      while (!v56);
    }

    v66 = v123;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v67 = v130;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v68 = v124;
    v8 = v125;
    v124(v66, v127);
    v123 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v108 = v69;
    v70 = (v134 + 8);
    v33 = *(v134 + 8);
    v71 = v67;
    v72 = v133;
    (v33)(v71, v133);
    v73 = v128;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v74 = v131;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v68(v73, v127);
    v75 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v77 = v76;
    v130 = v33;
    v131 = v70;
    (v33)(v74, v72);
    v107 = v75;
    v106 = v77;
    if (v129)
    {
      if ((a2 & 0xC000000000000001) == 0)
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v78 = *(a2 + 32);
        goto LABEL_43;
      }

LABEL_80:
      v78 = MEMORY[0x1E12996A0](0, a2);
LABEL_43:
      v79 = v78;
      v104 = (*((*MEMORY[0x1E69E7D40] & *v78) + 0xF0))();

      goto LABEL_45;
    }

    v104 = 0;
LABEL_45:
    v105 = a2;
    v22 = v122;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v80 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v124(v22, v127);
    v81 = *(v80 + 16);
    if (v81)
    {
      *&v136[0] = MEMORY[0x1E69E7CC0];
      a3 = v136;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
      a2 = 0;
      a1 = *&v136[0];
      v129 = v80 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v128 = (v134 + 16);
      while (a2 < *(v80 + 16))
      {
        v33 = a6;
        v82 = v80;
        v83 = v133;
        a3 = v132;
        (*(v134 + 16))(v132, v129 + *(v134 + 72) * a2, v133);
        v84 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v22 = v85;
        (v130)(a3, v83);
        *&v136[0] = a1;
        v87 = *(a1 + 16);
        v86 = *(a1 + 24);
        v8 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          a3 = v136;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
          a1 = *&v136[0];
        }

        ++a2;
        *(a1 + 16) = v8;
        v88 = a1 + 16 * v87;
        *(v88 + 32) = v84;
        *(v88 + 40) = v22;
        v80 = v82;
        a6 = v33;
        if (v81 == a2)
        {

          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    a1 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v89 = v121;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v22 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v124(v89, v127);
    v8 = v22[2];
    if (!v8)
    {
      break;
    }

    *&v136[0] = MEMORY[0x1E69E7CC0];
    a3 = v136;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v33 = 0;
    a2 = *&v136[0];
    v128 = v22 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v129 = a1;
    v127 = v134 + 16;
    while (v33 < v22[2])
    {
      v90 = a6;
      v91 = v8;
      v92 = v22;
      v93 = v133;
      a3 = v132;
      (*(v134 + 16))(v132, &v128[*(v134 + 72) * v33], v133);
      v94 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v96 = v95;
      (v130)(a3, v93);
      *&v136[0] = a2;
      v98 = *(a2 + 16);
      v97 = *(a2 + 24);
      if (v98 >= v97 >> 1)
      {
        a3 = v136;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
        a2 = *&v136[0];
      }

      ++v33;
      *(a2 + 16) = v98 + 1;
      v99 = a2 + 16 * v98;
      *(v99 + 32) = v94;
      *(v99 + 40) = v96;
      v8 = v91;
      v56 = v91 == v33;
      v22 = v92;
      a6 = v90;
      a1 = v129;
      if (v56)
      {

        goto LABEL_62;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    if (a2 < 0)
    {
      v102 = a2;
    }

    else
    {
      v102 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_62:
  v136[0] = v117;
  v136[1] = v116;
  v137 = v115;
  if (v118)
  {
    v100 = 3;
  }

  else
  {
    v100 = 0;
  }

  v135 = v100;
  (*(v114 + 352))(v105, v113, v112, v111, v110, v109, a6, v123, v108, v107, v106, v104 & 1, v120, v119, v136, 0, 0, 0, a1, a2, MEMORY[0x1E69E7CC0], &v135, MEMORY[0x1E69E7CC0]);
  v101 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  (*(*(v101 - 8) + 8))(v126, v101);
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:clientResults:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  memset(v12, 0, sizeof(v12));
  v13 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v8, MEMORY[0x1E69E7CC0], 0, 0, v12, a2, 0);
  v10 = v9;
  (*(v5 + 8))(a1, v4);
  return v10;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:clientResults:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  memset(v14, 0, sizeof(v14));
  v15 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v10, a2, 0, 0, v14, a3, 0);
  v12 = v11;
  (*(v7 + 8))(a1, v6);
  return v12;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:requestId:resultCandidateId:clientResults:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v17 = 0;
  }

  else
  {
    a4 = 0;
    v17 = -1;
  }

  (*(v13 + 16))(v16, a1, v12);
  *&v22 = a4;
  *(&v22 + 1) = a5;
  v23 = 0;
  v24 = 0;
  v25 = v17;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v16, MEMORY[0x1E69E7CC0], a2, a3, &v22, a6, 0);
  v19 = v18;
  (*(v13 + 8))(a1, v12);
  return v19;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:resultCandidateId:clientResults:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v23 = a7;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v18 = 0;
  }

  else
  {
    a5 = 0;
    v18 = -1;
  }

  (*(v14 + 16))(v17, a1, v13);
  *&v24 = a5;
  *(&v24 + 1) = a6;
  v25 = 0;
  v26 = 0;
  v27 = v18;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v17, a2, a3, a4, &v24, v23, 0);
  v20 = v19;
  (*(v14 + 8))(a1, v13);
  return v20;
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = 0;
    v48 = a1 & 0xC000000000000001;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v48)
      {
        v25 = a1;
        v26 = MEMORY[0x1E12996A0](v23, a1);
      }

      else
      {
        if (v23 >= *(v24 + 16))
        {
          goto LABEL_32;
        }

        v25 = a1;
        v26 = *(a1 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        if (a1 < 0)
        {
          v40 = a1;
        }

        else
        {
          v40 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v21 = MEMORY[0x1E1299770](v40);
        goto LABEL_3;
      }

      v29 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0xE0))();

      v30 = *(v29 + 16);
      a1 = *(v22 + 2);
      v31 = a1 + v30;
      if (__OFADD__(a1, v30))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v31 <= *(v22 + 3) >> 1)
      {
        if (*(v29 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (a1 <= v31)
        {
          v33 = a1 + v30;
        }

        else
        {
          v33 = a1;
        }

        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v22);
        if (*(v29 + 16))
        {
LABEL_20:
          if ((*(v22 + 3) >> 1) - *(v22 + 2) < v30)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v30)
          {
            v34 = *(v22 + 2);
            v35 = __OFADD__(v34, v30);
            v36 = v34 + v30;
            if (v35)
            {
              goto LABEL_36;
            }

            *(v22 + 2) = v36;
          }

          goto LABEL_6;
        }
      }

      if (v30)
      {
        goto LABEL_34;
      }

LABEL_6:
      ++v23;
      a1 = v25;
    }

    while (v28 != v21);
  }

  if (a16)
  {
    v38 = 0;
  }

  else
  {
    v38 = -1;
  }

  if (!a16)
  {
    a15 = 0;
  }

  v50[0] = a15;
  v50[1] = a16;
  v50[2] = 0;
  v50[3] = 0;
  v51 = v38;
  v49 = 0;
  return (*(v47 + 352))(a1, a2, a3, a4, a5, a6, v22, a8, a9, a10, a11, a12 & 1, a13, a14, v50, 0, 0, 0, a20, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v49, MEMORY[0x1E69E7CC0]);
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:resultCandidateId:clientResults:isPersonalDomainFallback:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v24 = a8;
  v23 = a7;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v19 = 0;
  }

  else
  {
    a5 = 0;
    v19 = -1;
  }

  (*(v15 + 16))(v18, a1, v14);
  *&v25 = a5;
  *(&v25 + 1) = a6;
  v26 = 0;
  v27 = 0;
  v28 = v19;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v18, a2, a3, a4, &v25, v23, v24);
  v21 = v20;
  (*(v15 + 8))(a1, v14);
  return v21;
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:taskStepLogs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    v18 = 0;
  }

  else
  {
    a15 = 0;
    v18 = -1;
  }

  v20[0] = a15;
  v20[1] = a16;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v18;
  return (*(v16 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v20);
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a15 + 32);
  v17 = *(a15 + 16);
  v20[0] = *a15;
  v20[1] = v17;
  v21 = v16;
  return (*(v15 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v20);
}

void PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:componentsWarmedUp:)(unint64_t a1, uint64_t a2, int64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v120 = a8;
  v119 = a7;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v16 = *(v15 - 8);
  v139 = v15;
  v140 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v138 = &v107[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v107[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v107[-v22];
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v24 = *(v23 - 8);
  v132 = v23;
  v133 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v122 = &v107[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v126 = &v107[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v128 = &v107[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v127 = &v107[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v137 = &v107[-v35];
  MEMORY[0x1EEE9AC00](v34);
  v136 = &v107[-v36];
  v37 = *(a5 + 16);
  v125 = *a5;
  v124 = v37;
  LODWORD(a5) = *(a5 + 32);
  if (a2 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x1E1299770](v106))
  {
    v121 = a4;
    v123 = a5;
    if (i)
    {
      v40 = a6;
      v41 = v9;
      v9 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v42 = *(a2 + 32);
      }

      v43 = v42;
      v44 = (*((*MEMORY[0x1E69E7D40] & *v42) + 0x88))();
      v46 = v45;

      if (v9)
      {
        v47 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v47 = *(a2 + 32);
      }

      v49 = v47;
      v9 = v41;
      v48 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0xA0))();

      a6 = v40;
    }

    else
    {
      v46 = 0xE700000000000000;
      v44 = 0x6E776F6E6B6E55;
      v48 = 0.0;
    }

    v135 = i;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v118 = v9;
    v117 = a6;
    v116 = a3;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v142[0] = v55;
      *v54 = 136315394;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v142);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2048;
      *(v54 + 14) = v48;
      _os_log_impl(&dword_1DC5C3000, v51, v52, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1E1299E70](v55, -1, -1);
      MEMORY[0x1E1299E70](v54, -1, -1);
    }

    else
    {
    }

    v57 = v136;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v113 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
    v9 = v133 + 8;
    v58 = *(v133 + 8);
    v59 = v57;
    v60 = v132;
    v58(v59, v132);
    v115 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v114 = v61;
    v62 = v137;
    v131 = a1;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a4 = v62;
    v112 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v111 = v63;
    v133 = v9;
    v130 = v58;
    v58(v62, v60);
    v40 = MEMORY[0x1E69E7CC0];
    if (v135)
    {
      a5 = 0;
      a1 = a2 & 0xC000000000000001;
      a6 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (a1)
        {
          v9 = a2;
          v66 = MEMORY[0x1E12996A0](a5, a2);
        }

        else
        {
          if (a5 >= *(a6 + 16))
          {
            goto LABEL_70;
          }

          v9 = a2;
          v66 = *(a2 + 8 * a5 + 32);
        }

        a4 = v66;
        a2 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          goto LABEL_69;
        }

        v67 = (*((*MEMORY[0x1E69E7D40] & *v66) + 0xE0))();

        a4 = *(v67 + 16);
        a3 = *(v40 + 2);
        v68 = a4 + a3;
        if (__OFADD__(a3, a4))
        {
          goto LABEL_71;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v68 <= *(v40 + 3) >> 1)
        {
          if (!*(v67 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (a3 <= v68)
          {
            v70 = a4 + a3;
          }

          else
          {
            v70 = a3;
          }

          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v70, 1, v40);
          if (!*(v67 + 16))
          {
LABEL_20:

            v64 = v135;
            if (a4)
            {
              goto LABEL_72;
            }

            goto LABEL_21;
          }
        }

        if ((*(v40 + 3) >> 1) - *(v40 + 2) < a4)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();

        v64 = v135;
        if (a4)
        {
          v71 = *(v40 + 2);
          v72 = __OFADD__(v71, a4);
          v73 = a4 + v71;
          if (v72)
          {
            goto LABEL_74;
          }

          *(v40 + 2) = v73;
        }

LABEL_21:
        ++a5;
        v65 = a2 == v64;
        a2 = v9;
      }

      while (!v65);
    }

    v74 = v127;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v75 = v129;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v76 = v130;
    v130(v74, v132);
    v127 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v110 = v77;
    v9 = v140 + 8;
    v78 = *(v140 + 8);
    v79 = v75;
    v80 = v139;
    (v78)(v79, v139);
    v81 = v128;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a3 = v134;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v76(v81, v132);
    v82 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v84 = v83;
    v136 = v78;
    v137 = v9;
    (v78)(a3, v80);
    v128 = v84;
    v129 = v82;
    if (v135)
    {
      break;
    }

    v108 = 0;
LABEL_46:
    LODWORD(a5) = v131;
    v109 = a2;
    v142[0] = v125;
    v142[1] = v124;
    v143 = v123;
    v87 = v126;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a6 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v130(v87, v132);
    v88 = *(a6 + 16);
    if (v88)
    {
      v141 = MEMORY[0x1E69E7CC0];
      a4 = &v141;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
      a1 = 0;
      a2 = v141;
      v135 = a6 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v134 = (v140 + 16);
      while (a1 < *(a6 + 16))
      {
        a3 = v40;
        v89 = v139;
        a4 = v138;
        (*(v140 + 16))(v138, v135 + *(v140 + 72) * a1, v139);
        v90 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v9 = v91;
        (v136)(a4, v89);
        v141 = a2;
        a5 = *(a2 + 16);
        v92 = *(a2 + 24);
        if (a5 >= v92 >> 1)
        {
          a4 = &v141;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), a5 + 1, 1);
          a2 = v141;
        }

        ++a1;
        *(a2 + 16) = a5 + 1;
        v93 = a2 + 16 * a5;
        *(v93 + 32) = v90;
        *(v93 + 40) = v9;
        if (v88 == a1)
        {

          goto LABEL_54;
        }
      }

      __break(1u);
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
LABEL_54:
      v94 = v122;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      a5 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
      v130(v94, v132);
      v95 = *(a5 + 16);
      if (!v95)
      {

        a1 = MEMORY[0x1E69E7CC0];
LABEL_63:
        if (v119)
        {
          v104 = 3;
        }

        else
        {
          v104 = 0;
        }

        LOBYTE(v141) = v104;
        (*(v118 + 352))(v109, v117, v115, v114, v112, v111, v40, v127, v110, v129, v128, v108 & 1, v116, v121, v142, 0, 0, 0, a2, a1, v120, &v141, v113);
        v105 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
        (*(*(v105 - 8) + 8))(v131, v105);
        return;
      }

      v141 = MEMORY[0x1E69E7CC0];
      a4 = &v141;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
      a3 = 0;
      a1 = v141;
      v134 = (a5 + ((*(v140 + 80) + 32) & ~*(v140 + 80)));
      v135 = a2;
      v133 = v140 + 16;
      while (a3 < *(a5 + 16))
      {
        v96 = v40;
        v97 = v95;
        v98 = v139;
        a4 = v138;
        (*(v140 + 16))(v138, &v134[*(v140 + 72) * a3], v139);
        v99 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
        v9 = v100;
        (v136)(a4, v98);
        v141 = a1;
        v102 = *(a1 + 16);
        v101 = *(a1 + 24);
        a6 = v102 + 1;
        if (v102 >= v101 >> 1)
        {
          a4 = &v141;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
          a1 = v141;
        }

        ++a3;
        *(a1 + 16) = a6;
        v103 = a1 + 16 * v102;
        *(v103 + 32) = v99;
        *(v103 + 40) = v9;
        v95 = v97;
        v65 = v97 == a3;
        v40 = v96;
        a2 = v135;
        if (v65)
        {

          goto LABEL_63;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
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
    if (a2 < 0)
    {
      v106 = a2;
    }

    else
    {
      v106 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_81:
    v85 = MEMORY[0x1E12996A0](0, a2);
    goto LABEL_44;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v85 = *(a2 + 32);
LABEL_44:
    v86 = v85;
    v108 = (*((*MEMORY[0x1E69E7D40] & *v85) + 0xF0))();

    goto LABEL_46;
  }

  __break(1u);
LABEL_83:
  __break(1u);
}