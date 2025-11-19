uint64_t closure #1 in SingleActivitySummarySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SnippetHeaderView();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SingleActivitySummaryModel(a1, v14, type metadata accessor for SnippetHeaderView);
  v15 = *(v7 + 16);
  v15(v10, a2, v6);
  outlined init with copy of SingleActivitySummaryModel(v14, a3, type metadata accessor for SnippetHeaderView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAG018FactItemHeroNumberE0V_Qo_tMd, ".1");
  v15((a3 + *(v16 + 48)), v10, v6);
  (*(v7 + 8))(v10, v6);
  return outlined destroy of SnippetHeaderView(v14);
}

uint64_t outlined init with copy of SingleActivitySummaryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleActivitySummaryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SingleActivitySummarySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in SingleActivitySummarySnippet.body.getter(v1 + v4, v7, a1);
}

void type metadata completion function for SingleActivitySummarySnippet()
{
  type metadata accessor for SingleActivitySummaryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t GenericMedCompletedLogModel.time.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GenericMedCompletedLogModel.time.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t type metadata accessor for GenericMedCompletedLogModel()
{
  result = type metadata singleton initialization cache for GenericMedCompletedLogModel;
  if (!type metadata singleton initialization cache for GenericMedCompletedLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.sashBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericMedCompletedLogModel() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericMedCompletedLogModel.sashBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.loggedLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericMedCompletedLogModel() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericMedCompletedLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.skippedLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericMedCompletedLogModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericMedCompletedLogModel.skippedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.takenLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericMedCompletedLogModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericMedCompletedLogModel.takenLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericMedCompletedLogModel() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.init(medStatus:givenTime:url:dontDisplayGranularTime:sashBundleID:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:allScheduledMedicationsLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v70 = a8;
  v69 = a7;
  v67 = a6;
  v65 = a5;
  v63 = a4;
  v58 = a3;
  v49 = a2;
  v71 = a17;
  v68 = a16;
  v66 = a15;
  v64 = a14;
  v61 = a12;
  v62 = a13;
  v59 = a10;
  v60 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v51 = &v49 - v21;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0xE000000000000000;
  v22 = type metadata accessor for GenericMedCompletedLogModel();
  v23 = v22[6];
  v57 = v23;
  v54 = type metadata accessor for AppPunchout();
  v24 = *(v54 - 8);
  v53 = *(v24 + 56);
  v55 = v24 + 56;
  v53(a9 + v23, 1, 1, v54);
  v56 = v22[7];
  *(a9 + v56) = 0;
  v25 = (a9 + v22[8]);
  *v25 = 0xD000000000000010;
  v25[1] = 0x8000000273EB0FF0;
  v52 = v22[9];
  *(a9 + v52) = 0;
  v26 = (a9 + v22[10]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a9 + v22[11]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v22[12]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (a9 + v22[13]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v22[14];
  v50 = v30;
  v31 = type metadata accessor for SnippetHeaderModel();
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  *a9 = a1;
  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v32 setTimeStyle_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v34 = [v32 stringFromDate_];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(a9 + 8) = v35;
  *(a9 + 16) = v37;
  v38 = v51;
  v39 = v58;
  GenericMedCompletedLogModel.createAppPunchout(url:)(v58);
  outlined destroy of AppPunchout?(v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 8))(v49, v40);
  v53(v38, 0, 1, v54);
  outlined assign with take of AppPunchout?(v38, a9 + v57, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  *(a9 + v56) = v63;
  v41 = v67;
  *v25 = v65;
  v25[1] = v41;
  *(a9 + v52) = v69;
  v42 = v59;
  v43 = v60;
  *v26 = v70;
  v26[1] = v42;
  v44 = v61;
  v45 = v62;
  *v27 = v43;
  v27[1] = v44;
  v46 = v64;
  *v28 = v45;
  v28[1] = v46;
  v47 = v68;
  *v29 = v66;
  v29[1] = v47;
  return outlined assign with take of AppPunchout?(v71, a9 + v50, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
}

uint64_t GenericMedCompletedLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t GenericMedCompletedLogModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x757461745364656DLL;
    v7 = 0x68636E7550707061;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0x646E754268736173;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701669236;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x62614C6E656B6174;
    v2 = 0xD00000000000001CLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x457472616D537369;
    v4 = 0x614C646567676F6CLL;
    if (a1 != 6)
    {
      v4 = 0x4C64657070696B73;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericMedCompletedLogModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GenericMedCompletedLogModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v35[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    v35[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for GenericMedCompletedLogModel();
    v15 = v14[6];
    v35[13] = 2;
    type metadata accessor for AppPunchout();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3[v14[7]];
    v35[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = &v3[v14[8]];
    v18 = *v17;
    v19 = *(v17 + 1);
    v35[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[v14[9]];
    v35[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = &v3[v14[10]];
    v22 = *v21;
    v23 = *(v21 + 1);
    v35[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = &v3[v14[11]];
    v25 = *v24;
    v26 = *(v24 + 1);
    v35[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = &v3[v14[12]];
    v28 = *v27;
    v29 = *(v27 + 1);
    v35[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = &v3[v14[13]];
    v31 = *v30;
    v32 = *(v30 + 1);
    v35[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = v14[14];
    v35[5] = 10;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMR);
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v58 - v12;
  v14 = type metadata accessor for GenericMedCompletedLogModel();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 24);
  v20 = type metadata accessor for AppPunchout();
  v21 = *(*(v20 - 8) + 56);
  v66 = v19;
  v21(&v17[v19], 1, 1, v20);
  v22 = v14[14];
  v67 = v17;
  v23 = &v17[v22];
  v24 = type metadata accessor for SnippetHeaderModel();
  v25 = *(*(v24 - 8) + 56);
  v64 = v23;
  v25(v23, 1, 1, v24);
  v26 = a1[3];
  v27 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();
  v63 = v13;
  v28 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v68 = v28;
    v33 = v66;
    v32 = v67;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v65);

    outlined destroy of AppPunchout?(&v32[v33], &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);

    return outlined destroy of AppPunchout?(v64, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  v58[2] = v24;
  v79 = 0;
  v30 = v62;
  v29 = v63;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v67;
  *v67 = v31 & 1;
  v78 = 1;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = 0;
  v33 = v66;
  *(v32 + 1) = v35;
  *(v32 + 2) = v36;
  v58[1] = v36;
  v77 = 2;
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  v37 = v68;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v68 = v37;
  if (v37)
  {
    (*(v61 + 8))(v29, v30);
    goto LABEL_4;
  }

  outlined assign with take of AppPunchout?(v9, &v32[v33], &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v76 = 3;
  v38 = v68;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  if (v38)
  {
    v68 = v38;
    (*(v61 + 8))(v29, v30);
    goto LABEL_4;
  }

  v32[v14[7]] = v39 & 1;
  v75 = 4;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = &v32[v14[8]];
  *v41 = v40;
  v41[1] = v42;
  v58[0] = v42;
  v74 = 5;
  v32[v14[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v73 = 6;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = &v32[v14[10]];
  *v44 = v43;
  v44[1] = v45;
  v72 = 7;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = &v32[v14[11]];
  *v47 = v46;
  v47[1] = v48;
  v71 = 8;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v51 = &v32[v14[12]];
  *v51 = v49;
  v51[1] = v50;
  v70 = 9;
  v52 = v68;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v52;
  if (v52)
  {
    goto LABEL_12;
  }

  v55 = &v67[v14[13]];
  *v55 = v53;
  v55[1] = v54;
  v69 = 10;
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
  v56 = v68;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v68 = v56;
  if (v56)
  {
LABEL_12:
    (*(v61 + 8))(v63, v62);
    v33 = v66;
    v32 = v67;
    goto LABEL_4;
  }

  (*(v61 + 8))(v63, v62);
  outlined assign with take of AppPunchout?(v60, v64, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v57 = v67;
  outlined init with copy of GenericMedCompletedLogModel(v67, v59);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return outlined destroy of GenericMedCompletedLogModel(v57);
}

uint64_t outlined init with copy of GenericMedCompletedLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenericMedCompletedLogModel(uint64_t a1)
{
  v2 = type metadata accessor for GenericMedCompletedLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for GenericMedCompletedLogModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GenericMedCompletedLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000273EB1050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000273EB1390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t HeightQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for HeightQuerySnippet() + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of HeightQueryModel(a1, a2, type metadata accessor for HeightQueryModel);
}

uint64_t type metadata accessor for HeightQuerySnippet()
{
  result = type metadata singleton initialization cache for HeightQuerySnippet;
  if (!type metadata singleton initialization cache for HeightQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v183 = a1;
  Snippet = type metadata accessor for HeightQuerySnippet();
  v168 = *(Snippet - 8);
  v3 = *(v168 + 64);
  MEMORY[0x28223BE20](Snippet - 8);
  v170 = v4;
  v171 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v174 = *(v5 - 8);
  v175 = v5;
  v6 = *(v174 + 64);
  MEMORY[0x28223BE20](v5);
  v172 = &v146 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v176 = *(v8 - 8);
  v9 = *(v176 + 64);
  MEMORY[0x28223BE20](v8);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v146 - v12;
  v13 = type metadata accessor for FactItemHeroNumberView();
  v166 = *(v13 - 8);
  v167 = v13;
  v14 = *(v166 + 64);
  MEMORY[0x28223BE20](v13);
  v164 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v16 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v163 = &v146 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v157 = &v146 - v20;
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v177 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Font.TextStyle();
  v178 = *(v24 - 8);
  v179 = v24;
  v25 = *(v178 + 64);
  MEMORY[0x28223BE20](v24);
  v180 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for SnippetHeaderView();
  v158 = *(v155 - 8);
  v27 = *(v158 + 64);
  MEMORY[0x28223BE20](v155);
  v159 = v28;
  v160 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v182 = &v146 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v146 - v33;
  v35 = type metadata accessor for AppPunchout();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v161 = v38;
  v162 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v181 = &v146 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v146 - v43;
  Model = type metadata accessor for HeightQueryModel();
  outlined init with copy of AppPunchout?(v1 + Model[8], v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v45 = type metadata accessor for SpeakableString();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) != 1)
  {
    v154 = v8;
    v153 = SpeakableString.print.getter();
    v51 = v50;
    (*(v46 + 8))(v44, v45);
    outlined init with copy of AppPunchout?(v1, v34, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {

      v47 = &_s10SnippetKit11AppPunchoutVSgMd;
      v48 = &_s10SnippetKit11AppPunchoutVSgMR;
      v49 = v34;
      goto LABEL_5;
    }

    v53 = v1;
    v151 = v36;
    v152 = v35;
    v54 = *(v36 + 32);
    v150 = v36 + 32;
    v148 = v51;
    v149 = v54;
    v54(v181, v34, v35);
    v55 = Model;
    v56 = v182;
    outlined init with copy of AppPunchout?(v1 + Model[10], v182, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v57 = v155;
    v58 = *(v155 + 20);
    *(v56 + v58) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v59 = *(v57 + 24);
    *(v56 + v59) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v60 = *(v53 + v55[7] + 8);
    v147 = v53;
    if (v60)
    {
      (*(v178 + 104))(v180, *MEMORY[0x277CE0A78], v179);
    }

    else
    {
      v61 = *(v53 + v55[6] + 8);
      v62 = *MEMORY[0x277CE0A78];
      (*(v178 + 104))();
      if ((v61 & 1) == 0)
      {
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v85);
        v199 = *(v53 + v55[11]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v86._countAndFlagsBits = Optional.description.getter();
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v86);

        v87._countAndFlagsBits = 2108704;
        v87._object = 0xE300000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
        v199 = *(v53 + v55[12]);
        v88._countAndFlagsBits = Optional.description.getter();
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v88);

        v89._countAndFlagsBits = 0;
        v89._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
        LocalizedStringKey.init(stringInterpolation:)();
        v90 = Text.init(_:tableName:bundle:comment:)();
        v92 = v91;
        v94 = v93;
        Model = v95;
        v96 = *MEMORY[0x277CE0998];
        v97 = type metadata accessor for Font.Design();
        v98 = *(v97 - 8);
        v99 = v157;
        (*(v98 + 104))(v157, v96, v97);
        (*(v98 + 56))(v99, 0, 1, v97);
        static Font.system(_:design:weight:)();
        outlined destroy of AppPunchout?(v99, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        v100 = Text.font(_:)();
        v102 = v101;
        LOBYTE(v98) = v103;
        v157 = v104;

        outlined consume of Text.Storage(v90, v92, v94 & 1);

        v105 = Text.bold()();
        v107 = v106;
        v109 = v108;
        v111 = v110;
        outlined consume of Text.Storage(v100, v102, v98 & 1);

        *&v199 = v105;
        *(&v199 + 1) = v107;
        v200 = v109 & 1;
        v201 = v111;
        goto LABEL_11;
      }
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
    v199 = *(v53 + v55[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v64._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v64);

    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
    LocalizedStringKey.init(stringInterpolation:)();
    v66 = Text.init(_:tableName:bundle:comment:)();
    v68 = v67;
    v70 = v69;
    v71 = *MEMORY[0x277CE0998];
    v72 = type metadata accessor for Font.Design();
    v73 = *(v72 - 8);
    v74 = v157;
    (*(v73 + 104))(v157, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    static Font.system(_:design:weight:)();
    outlined destroy of AppPunchout?(v74, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    v75 = Text.font(_:)();
    v77 = v76;
    LOBYTE(v74) = v78;

    outlined consume of Text.Storage(v66, v68, v70 & 1);

    v79 = Text.bold()();
    v81 = v80;
    LOBYTE(v71) = v82;
    v84 = v83;
    outlined consume of Text.Storage(v75, v77, v74 & 1);

    *&v199 = v79;
    *(&v199 + 1) = v81;
    v200 = v71 & 1;
    v201 = v84;
LABEL_11:
    v112 = AnyView.init<A>(_:)();
    v157 = v112;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
    v114._countAndFlagsBits = v153;
    v114._object = v148;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v114);

    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v115);
    LocalizedStringKey.init(stringInterpolation:)();
    v116 = Text.init(_:tableName:bundle:comment:)();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v177 = v121;
    v202 = MEMORY[0x277D63A58];
    v201 = MEMORY[0x277CE11D0];
    *&v199 = v112;
    v198 = 0;
    v196 = 0u;
    v197 = 0u;
    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v192 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = MEMORY[0x277CE0BD0];
    v189 = MEMORY[0x277D638F0];
    v123 = swift_allocObject();
    v186 = 0;
    v187 = v123;
    v155 = v118;
    Model = v116;
    *(v123 + 16) = v116;
    *(v123 + 24) = v118;
    LODWORD(v153) = v120 & 1;
    *(v123 + 32) = v120 & 1;
    *(v123 + 40) = v122;
    v184 = 0u;
    v185 = 0u;
    outlined copy of Text.Storage(v116, v118, v120 & 1);

    v124 = v164;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    v125 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
    v126 = v167;
    View.componentSpacing(top:bottom:)();
    (*(v166 + 8))(v124, v126);
    *&v199 = v126;
    *(&v199 + 1) = v125;
    swift_getOpaqueTypeConformance2();
    v127 = AnyView.init<A>(_:)();
    v128 = v160;
    outlined init with copy of HeightQueryModel(v182, v160, type metadata accessor for SnippetHeaderView);
    v129 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v130 = (v159 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    outlined init with take of HeightQueryModel(v128, v131 + v129, type metadata accessor for SnippetHeaderView);
    v167 = v127;
    *(v131 + v130) = v127;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    v132 = v172;
    ComponentStack.init(content:)();
    v133 = v171;
    outlined init with copy of HeightQueryModel(v147, v171, type metadata accessor for HeightQuerySnippet);
    v134 = v151;
    v135 = v152;
    v136 = v162;
    (*(v151 + 16))(v162, v181, v152);
    v137 = (*(v168 + 80) + 16) & ~*(v168 + 80);
    v138 = (v170 + *(v134 + 80) + v137) & ~*(v134 + 80);
    v139 = swift_allocObject();
    outlined init with take of HeightQueryModel(v133, v139 + v137, type metadata accessor for HeightQuerySnippet);
    v149(v139 + v138, v136, v135);
    v140 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
    v141 = v169;
    v142 = v175;
    View.componentTapped(isNavigation:perform:)();

    (*(v174 + 8))(v132, v142);
    v143 = v176;
    v144 = v154;
    (*(v176 + 16))(v173, v141, v154);
    *&v199 = v142;
    *(&v199 + 1) = v140;
    swift_getOpaqueTypeConformance2();
    v145 = AnyView.init<A>(_:)();

    outlined consume of Text.Storage(Model, v155, v153);

    (*(v143 + 8))(v141, v144);
    (*(v178 + 8))(v180, v179);
    outlined destroy of SnippetHeaderView(v182);
    (*(v134 + 8))(v181, v135);
    result = v145;
    goto LABEL_12;
  }

  v47 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v48 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v49 = v44;
LABEL_5:
  outlined destroy of AppPunchout?(v49, v47, v48);
  result = AnyView.init<A>(_:)();
LABEL_12:
  *v183 = result;
  return result;
}

uint64_t closure #1 in HeightQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HeightQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  outlined init with copy of HeightQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in HeightQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HeightQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in HeightQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in HeightQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of HeightQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of HeightQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in HeightQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for HeightQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in HeightQuerySnippet.body.getter(v0 + v2);
}

void type metadata completion function for HeightQuerySnippet()
{
  type metadata accessor for HeightQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void Image.init(fileName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Dummy #1 in Image.init(fileName:)();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x2743E09B0](a1, a2);
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  if (v7)
  {
    v8 = v7;

    Image.init(uiImage:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeightQueryModel.height.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for HeightQueryModel()
{
  result = type metadata singleton initialization cache for HeightQueryModel;
  if (!type metadata singleton initialization cache for HeightQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQueryModel.height.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.maxHeight.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HeightQueryModel.maxHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.minHeight.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HeightQueryModel.minHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.isDifferenceNegligible.setter(char a1)
{
  result = type metadata accessor for HeightQueryModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HeightQueryModel.minHeightSymbolic.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeightQueryModel.minHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.maxHeightSymbolic.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeightQueryModel.maxHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.heightSymbolic.getter()
{
  v1 = (v0 + *(type metadata accessor for HeightQueryModel() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeightQueryModel.heightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.init(height:maxHeight:minHeight:dateLabel:isDifferenceNegligible:unit:url:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a8;
  LODWORD(v60) = a6;
  v64 = a10;
  v65 = a7;
  v62 = a11;
  v63 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for AppPunchout();
  v23 = *(v22 - 8);
  v58 = *(v23 + 56);
  v59 = v23 + 56;
  v58(a9, 1, 1, v22);
  Model = type metadata accessor for HeightQueryModel();
  v25 = Model[8];
  v54 = v25;
  v26 = type metadata accessor for SpeakableString();
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  v27 = Model[10];
  v55 = v27;
  v28 = type metadata accessor for SnippetHeaderModel();
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = 0;
  }

  if (a2)
  {
    v30 = a1;
  }

  else
  {
    v30 = v29;
  }

  v57 = v30;
  v31 = a9 + Model[5];
  *v31 = v30;
  v56 = a2 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v31 + 8) = v56;
  v32 = (a3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a3;
  }

  else
  {
    v33 = 0;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v33;
  }

  v34 = a9 + Model[6];
  *v34 = a3;
  v35 = (a4 | v32) & 1;
  *(v34 + 8) = v35;
  v36 = (a5 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = a5;
  }

  else
  {
    v37 = 0;
  }

  v38 = v60;
  if ((v60 & 1) == 0)
  {
    a5 = v37;
  }

  v39 = a9 + Model[7];
  v40 = (a9 + Model[11]);
  v41 = (a9 + Model[12]);
  v60 = (a9 + Model[13]);
  *v39 = a5;
  v42 = (v38 | v36) & 1;
  *(v39 + 8) = v42;
  *(a9 + Model[9]) = v61;
  outlined assign with copy of SpeakableString?(v65, a9 + v54, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v43 = v62;
  HeightQueryModel.createAppPunchout(url:)(v62);
  v58(v21, 0, 1, v22);
  outlined assign with take of AppPunchout?(v21, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v44 = v63;
  outlined assign with copy of SpeakableString?(v63, a9 + v55, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v45 = v42;
  v46 = v64;
  *v40 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(a5, v45, v64);
  v40[1] = v47;
  *v41 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(a3, v35, v46);
  v41[1] = v48;
  v49 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(v57, v56, v46);
  v51 = v50;
  outlined destroy of AppPunchout?(v44, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v46, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v65, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v53 = v60;
  *v60 = v49;
  v53[1] = v51;
  return result;
}

uint64_t HeightQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t HeightQueryModel.getFormattedSymbolicString(value:unit:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for SpeakableString();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a2 & 1) == 0)
  {
    outlined init with copy of AppPunchout?(a3, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v21 = *(v16 + 48);
    if (v21(v14, 1, v15) == 1)
    {
      v22 = v14;
LABEL_6:
      outlined destroy of AppPunchout?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return 0;
    }

    (*(v16 + 32))(v19, v14, v15);
    v23 = type metadata accessor for DialogPersonHeight.Builder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    DialogPersonHeight.Builder.init()();
    dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

    (*(v16 + 16))(v11, v19, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();

    outlined destroy of AppPunchout?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    dispatch thunk of DialogPersonHeight.symbolic.getter();
    if (v21(v8, 1, v15) == 1)
    {
      (*(v16 + 8))(v19, v15);

      v22 = v8;
      goto LABEL_6;
    }

    v26 = SpeakableString.print.getter();

    v27 = *(v16 + 8);
    v27(v19, v15);
    v27(v8, v15);
    return v26;
  }

  return result;
}

unint64_t HeightQueryModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x7953746867696568;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x68636E7550707061;
    v2 = 0x686769654878616DLL;
    v3 = 0x68676965486E696DLL;
    if (a1 != 3)
    {
      v3 = 0x6562614C65746164;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746867696568;
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
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeightQueryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized HeightQueryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeightQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeightQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeightQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMd, "j.");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    Model = type metadata accessor for HeightQueryModel();
    v12 = (v3 + Model[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v34[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + Model[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v34[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + Model[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v34[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = Model[8];
    v34[11] = 4;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + Model[9]);
    v34[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = Model[10];
    v34[9] = 6;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = (v3 + Model[11]);
    v25 = *v24;
    v26 = v24[1];
    v34[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = (v3 + Model[12]);
    v28 = *v27;
    v29 = v27[1];
    v34[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + Model[13]);
    v31 = *v30;
    v32 = v30[1];
    v34[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

uint64_t HeightQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMR);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  Model = type metadata accessor for HeightQueryModel();
  v18 = *(*(Model - 1) + 64);
  MEMORY[0x28223BE20](Model);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppPunchout();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = Model[8];
  v23 = type metadata accessor for SpeakableString();
  v24 = *(*(v23 - 8) + 56);
  v69 = v22;
  v24(&v20[v22], 1, 1, v23);
  v25 = Model[10];
  v26 = type metadata accessor for SnippetHeaderModel();
  v27 = *(*(v26 - 8) + 56);
  v68 = v25;
  v70 = v20;
  v27(&v20[v25], 1, 1, v26);
  v29 = a1[3];
  v28 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();
  v65 = v16;
  v30 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    v32 = v68;
    v31 = v69;
    __swift_destroy_boxed_opaque_existential_1(v67);
    v46 = v70;
    outlined destroy of AppPunchout?(v70, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    outlined destroy of AppPunchout?(v46 + v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of AppPunchout?(v46 + v32, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  else
  {
    v66 = v26;
    v80 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    v33 = v62;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v68;
    v35 = v33;
    v36 = v70;
    outlined assign with take of AppPunchout?(v35, v70, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v79 = 1;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v36 + Model[5];
    *v38 = v37;
    *(v38 + 8) = v39 & 1;
    v78 = 2;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v36 + Model[6];
    *v41 = v40;
    *(v41 + 8) = v42 & 1;
    v77 = 3;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v36 + Model[7];
    *v44 = v43;
    *(v44 + 8) = v45 & 1;
    v76 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v9, v36 + v69, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v75 = 5;
    *(v36 + Model[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v74 = 6;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    v48 = v61;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v48, v36 + v34, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v73 = 7;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = Model;
    v50 = &v70[Model[11]];
    *v50 = v49;
    v50[1] = v51;
    v72 = 8;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = &v70[*(v66 + 48)];
    *v53 = v52;
    v53[1] = v54;
    v71 = 9;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v56;
    v58 = v70;
    v59 = &v70[Model[13]];
    (*(v63 + 8))(v65, v64);
    *v59 = v55;
    v59[1] = v57;
    outlined init with copy of HeightQueryModel(v58, v60);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return outlined destroy of HeightQueryModel(v58);
  }
}

uint64_t outlined init with copy of HeightQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for HeightQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t outlined destroy of HeightQueryModel(uint64_t a1)
{
  Model = type metadata accessor for HeightQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for HeightQueryModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v2 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for HeightQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeightQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized HeightQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000273EB13F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7953746867696568 && a2 == 0xEE0063696C6F626DLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t SnippetHeaderView.init(headerModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SnippetHeaderView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();

  return outlined init with take of SnippetHeaderModel?(a1, a2);
}

uint64_t type metadata accessor for SnippetHeaderView()
{
  result = type metadata singleton initialization cache for SnippetHeaderView;
  if (!type metadata singleton initialization cache for SnippetHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetHeaderView.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SnippetHeaderView();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 20), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SnippetHeaderView.colorSchemeContrast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SnippetHeaderView();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorSchemeContrast();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SnippetHeaderView.isLightMode.getter(uint64_t (*a1)(void), void (*a2)(uint64_t), unsigned int *a3, uint64_t (*a4)(char *, char *))
{
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  a2(v13);
  (*(v8 + 104))(v12, *a3, v7);
  LOBYTE(a4) = a4(v15, v12);
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v15, v7);
  return a4 & 1;
}

uint64_t SnippetHeaderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v93 = type metadata accessor for SashStandardView();
  v92 = *(v93 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v78 - v9;
  v89 = type metadata accessor for Font.TextStyle();
  v87 = *(v89 - 8);
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Image.ResizingMode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - v22;
  v24 = type metadata accessor for SnippetHeaderModel();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v2;
  outlined init with copy of AppPunchout?(v2, v23, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of AppPunchout?(v23, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    result = AnyView.init<A>(_:)();
    v30 = result;
  }

  else
  {
    outlined init with take of SnippetHeaderModel(v23, v28);
    v31 = &v28[*(v24 + 20)];
    v32 = *v31;
    v33 = v31[1];

    Image.init(fileName:)(v32, v33);
    v84 = v34;
    (*(v16 + 104))(v19, *MEMORY[0x277CE0FE8], v15);
    v79 = Image.resizable(capInsets:resizingMode:)();
    (*(v16 + 8))(v19, v15);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = v112;
    LOBYTE(v33) = v113;
    v36 = v114;
    v37 = v115;
    v39 = v116;
    v38 = v117;
    v40 = *(v24 + 24);
    v83 = v28;
    v41 = &v28[v40];
    v42 = *(v41 + 1);
    v80 = *v41;
    v81 = v42;
    v43 = SnippetHeaderView.getCategoryColor(id:)(v80, v42);
    v111 = v33;
    v109 = v37;
    v99 = v79;
    v100 = v35;
    v101 = v33;
    *v102 = *v110;
    *&v102[3] = *&v110[3];
    v103 = v36;
    LOBYTE(v104) = v37;
    *(&v104 + 1) = *v108;
    HIDWORD(v104) = *&v108[3];
    v105 = v39;
    v106 = v38;
    v107 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v82 = View.eraseToAnyView()();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
    v45._countAndFlagsBits = SpeakableString.print.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v45);

    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    LocalizedStringKey.init(stringInterpolation:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v51 = v50;
    v52 = Text.bold()();
    v54 = v53;
    LOBYTE(v38) = v55;
    v85 = v56;
    outlined consume of Text.Storage(v47, v49, v51 & 1);

    v57 = v87;
    v58 = v86;
    v59 = v89;
    (*(v87 + 104))(v86, *MEMORY[0x277CE0A60], v89);
    v60 = *MEMORY[0x277CE0998];
    v61 = type metadata accessor for Font.Design();
    v62 = *(v61 - 8);
    v63 = v88;
    (*(v62 + 104))(v88, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    static Font.system(_:design:weight:)();
    outlined destroy of AppPunchout?(v63, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    (*(v57 + 8))(v58, v59);
    v64 = Text.font(_:)();
    v66 = v65;
    LOBYTE(v63) = v67;

    outlined consume of Text.Storage(v52, v54, v38 & 1);

    v99 = SnippetHeaderView.getCategoryColor(id:)(v80, v81);
    v68 = Text.foregroundStyle<A>(_:)();
    v70 = v69;
    LOBYTE(v58) = v71;
    v73 = v72;
    outlined consume of Text.Storage(v64, v66, v63 & 1);

    v99 = v68;
    v100 = v70;
    LOBYTE(v60) = v58 & 1;
    v101 = v58 & 1;
    v103 = v73;
    v74 = View.eraseToAnyView()();
    outlined consume of Text.Storage(v68, v70, v60);

    v103 = MEMORY[0x277CE11D0];
    v104 = MEMORY[0x277D63A58];
    v99 = v82;
    v98 = MEMORY[0x277D63A58];
    v97 = MEMORY[0x277CE11D0];
    v96 = v74;

    v75 = v91;
    SashStandardView.init(icon:title:showOnWatch:)();
    v76 = v92;
    v77 = v93;
    (*(v92 + 16))(v90, v75, v93);
    lazy protocol witness table accessor for type SashStandardView and conformance SashStandardView();
    v30 = AnyView.init<A>(_:)();

    (*(v76 + 8))(v75, v77);
    result = outlined destroy of SnippetHeaderModel(v83);
  }

  *v94 = v30;
  return result;
}

uint64_t SnippetHeaderView.getCategoryColor(id:)(void (*a1)(_BYTE *, uint64_t, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v195[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ColorSchemeContrast();
  v10 = *(v9 - 8);
  v201 = v9;
  v202 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v199 = &v195[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v200 = &v195[-v14];
  v15 = type metadata accessor for ColorScheme();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v195[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v195[-v21];
  v208 = v5;
  v209 = v4;
  v205 = &v195[-v21];
  v206 = v23;
  v207 = v19;
  if (a1 == 0xD000000000000021 && 0x8000000273EB1450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002FLL && 0x8000000273EB1480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000028 && 0x8000000273EB14B0 == a2 || (v204 = 0xD000000000000028, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    SnippetHeaderView.colorScheme.getter(v22);
    v24 = v16[13];
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v203 = v24;
    v24(v19);
    v25 = static ColorScheme.== infix(_:_:)();
    v26 = v19;
    v27 = v15;
    v28 = v16[1];
    v28(v26, v27);
    v28(v22, v27);
    if (v25)
    {
      v29 = v200;
      SnippetHeaderView.colorSchemeContrast.getter(v200);
      v31 = v201;
      v30 = v202;
      v32 = v199;
      (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
      v33 = static ColorScheme.== infix(_:_:)();
      v197 = (v16 + 1);
      v34 = *(v30 + 8);
      v34(v32, v31);
      v34(v29, v31);
      if (v33)
      {
        (*(v208 + 104))(v8, *MEMORY[0x277CE0ED8], v209);
        return Color.init(_:red:green:blue:opacity:)();
      }
    }

    v198 = v8;
    v35 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v36 = v206;
    v37 = v207;
    v38 = v204;
    v39 = v203;
    v203(v207, v204, v206);
    v40 = static ColorScheme.== infix(_:_:)();
    v28(v37, v36);
    v28(v35, v36);
    if ((v40 & 1) == 0)
    {
      SnippetHeaderView.colorScheme.getter(v35);
      v39(v37, v38, v36);
      v41 = static ColorScheme.== infix(_:_:)();
      v28(v37, v36);
      v28(v35, v36);
      if ((v41 & 1) == 0)
      {
        v42 = v200;
        SnippetHeaderView.colorSchemeContrast.getter(v200);
        v43 = v201;
        v44 = v202;
        v45 = v199;
        (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
        static ColorScheme.== infix(_:_:)();
        v46 = *(v44 + 8);
        v46(v45, v43);
        v46(v42, v43);
      }
    }

LABEL_114:
    (*(v208 + 104))(v198, *MEMORY[0x277CE0ED8], v209);
    return Color.init(_:red:green:blue:opacity:)();
  }

  v198 = v8;
  if (a1 == 0xD00000000000002ELL && 0x8000000273EB14E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000021 && 0x8000000273EB10F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x8000000273EB1510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002ALL && 0x8000000273EB1150 == a2 || (v203 = 0xD00000000000002ALL, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || a1 == 0xD000000000000021 && 0x8000000273EB1540 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v203 && 0x8000000273EB1570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v203 = 0xD000000000000029, a1 == 0xD000000000000029) && 0x8000000273EB1120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v197 = 0xD000000000000026, a1 == 0xD000000000000026) && 0x8000000273EB15A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v203 && 0x8000000273EB1180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v197 && 0x8000000273EB15D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v203 = 0xD000000000000025, a1 == 0xD000000000000025) && 0x8000000273EB1600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v197 && 0x8000000273EB1630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v47 = v22;
    SnippetHeaderView.colorScheme.getter(v22);
    v48 = v16[13];
    v49 = v207;
    LODWORD(v203) = *MEMORY[0x277CDF3D8];
    v204 = v48;
    v48(v207);
    v50 = static ColorScheme.== infix(_:_:)();
    v51 = v15;
    v52 = v16[1];
    v52(v49, v51);
    v197 = (v16 + 1);
    v52(v47, v51);
    if ((v50 & 1) == 0)
    {
      goto LABEL_135;
    }

    v53 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v54 = v201;
    v55 = v202;
    v56 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v196 = static ColorScheme.== infix(_:_:)();
    v57 = *(v55 + 8);
    v57(v56, v54);
    v57(v53, v54);
    if ((v196 & 1) == 0)
    {
LABEL_135:
      v58 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v59 = v206;
      v60 = v207;
      v61 = v203;
      v204(v207, v203, v206);
      v62 = static ColorScheme.== infix(_:_:)();
      v52(v60, v59);
      v52(v58, v59);
      if ((v62 & 1) == 0)
      {
        SnippetHeaderView.colorScheme.getter(v58);
        v204(v60, v61, v59);
        v63 = static ColorScheme.== infix(_:_:)();
        v52(v60, v59);
        v52(v58, v59);
        if ((v63 & 1) == 0)
        {
          v64 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v65 = v201;
          v66 = v202;
          v67 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v68 = *(v66 + 8);
          v68(v67, v65);
          v68(v64, v65);
        }
      }
    }

    (*(v5 + 104))(v198, *MEMORY[0x277CE0ED8], v4);
    return Color.init(_:red:green:blue:opacity:)();
  }

  if (a1 == 0xD00000000000002CLL && 0x8000000273EB1660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v203 && 0x8000000273EB1690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002ELL && 0x8000000273EB16C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v69 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v70 = v16[13];
    v71 = v206;
    v72 = v207;
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v70(v207);
    v73 = static ColorScheme.== infix(_:_:)();
    v74 = v16[1];
    v74(v72, v71);
    v74(v69, v71);
    if ((v73 & 1) == 0)
    {
      goto LABEL_136;
    }

    v75 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v76 = v201;
    v77 = v202;
    v78 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v79 = static ColorScheme.== infix(_:_:)();
    v80 = *(v77 + 8);
    v80(v78, v76);
    v80(v75, v76);
    if ((v79 & 1) == 0)
    {
LABEL_136:
      v81 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v83 = v206;
      v82 = v207;
      (v70)(v207, v204, v206);
      v84 = static ColorScheme.== infix(_:_:)();
      v74(v82, v83);
      v74(v81, v83);
      if ((v84 & 1) == 0)
      {
        v85 = v205;
        SnippetHeaderView.colorScheme.getter(v205);
        v86 = v206;
        v87 = v207;
        (v70)(v207, v204, v206);
        v88 = static ColorScheme.== infix(_:_:)();
        v74(v87, v86);
        v74(v85, v86);
        if ((v88 & 1) == 0)
        {
          v89 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v91 = v201;
          v90 = v202;
          v92 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v93 = *(v90 + 8);
          v93(v92, v91);
          v93(v89, v91);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD00000000000001ELL && 0x8000000273EB16F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000020 && 0x8000000273EB1710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v94 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v95 = v16[13];
    v96 = v206;
    v97 = v207;
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v95(v207);
    v98 = static ColorScheme.== infix(_:_:)();
    v99 = v16[1];
    v99(v97, v96);
    v99(v94, v96);
    if ((v98 & 1) == 0)
    {
      goto LABEL_137;
    }

    v100 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v101 = v201;
    v102 = v202;
    v103 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v104 = static ColorScheme.== infix(_:_:)();
    v105 = *(v102 + 8);
    v105(v103, v101);
    v105(v100, v101);
    if ((v104 & 1) == 0)
    {
LABEL_137:
      v106 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v108 = v206;
      v107 = v207;
      (v95)(v207, v204, v206);
      v109 = static ColorScheme.== infix(_:_:)();
      v99(v107, v108);
      v99(v106, v108);
      if ((v109 & 1) == 0)
      {
        v110 = v205;
        SnippetHeaderView.colorScheme.getter(v205);
        v111 = v206;
        v112 = v207;
        (v95)(v207, v204, v206);
        v113 = static ColorScheme.== infix(_:_:)();
        v99(v112, v111);
        v99(v110, v111);
        if ((v113 & 1) == 0)
        {
          v114 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v116 = v201;
          v115 = v202;
          v117 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v118 = *(v115 + 8);
          v118(v117, v116);
          v118(v114, v116);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD000000000000027 && 0x8000000273EB1740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v204 && 0x8000000273EB1770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_96;
  }

  if (a1 == 0xD000000000000024 && 0x8000000273EB17A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x8000000273EB17D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v144 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v145 = v16[13];
    v146 = v206;
    v147 = v207;
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v145(v207);
    v148 = static ColorScheme.== infix(_:_:)();
    v149 = v16[1];
    v149(v147, v146);
    v149(v144, v146);
    if ((v148 & 1) == 0)
    {
      goto LABEL_139;
    }

    v150 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v151 = v201;
    v152 = v202;
    v153 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v154 = static ColorScheme.== infix(_:_:)();
    v155 = *(v152 + 8);
    v155(v153, v151);
    v155(v150, v151);
    if ((v154 & 1) == 0)
    {
LABEL_139:
      v156 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v158 = v206;
      v157 = v207;
      (v145)(v207, v204, v206);
      v159 = static ColorScheme.== infix(_:_:)();
      v149(v157, v158);
      v149(v156, v158);
      if ((v159 & 1) == 0)
      {
        v160 = v205;
        SnippetHeaderView.colorScheme.getter(v205);
        v161 = v206;
        v162 = v207;
        (v145)(v207, v204, v206);
        v163 = static ColorScheme.== infix(_:_:)();
        v149(v162, v161);
        v149(v160, v161);
        if ((v163 & 1) == 0)
        {
          v164 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v166 = v201;
          v165 = v202;
          v167 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v168 = *(v165 + 8);
          v168(v167, v166);
          v168(v164, v166);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD000000000000036 && 0x8000000273EB1800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_96:
    v119 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v120 = v16[13];
    v121 = v206;
    v122 = v207;
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v120(v207);
    v123 = static ColorScheme.== infix(_:_:)();
    v124 = v16[1];
    v124(v122, v121);
    v124(v119, v121);
    if ((v123 & 1) == 0)
    {
      goto LABEL_138;
    }

    v125 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v126 = v201;
    v127 = v202;
    v128 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v129 = static ColorScheme.== infix(_:_:)();
    v130 = *(v127 + 8);
    v130(v128, v126);
    v130(v125, v126);
    if ((v129 & 1) == 0)
    {
LABEL_138:
      v131 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v133 = v206;
      v132 = v207;
      (v120)(v207, v204, v206);
      v134 = static ColorScheme.== infix(_:_:)();
      v124(v132, v133);
      v124(v131, v133);
      if ((v134 & 1) == 0)
      {
        v135 = v205;
        SnippetHeaderView.colorScheme.getter(v205);
        v136 = v206;
        v137 = v207;
        (v120)(v207, v204, v206);
        v138 = static ColorScheme.== infix(_:_:)();
        v124(v137, v136);
        v124(v135, v136);
        if ((v138 & 1) == 0)
        {
          v139 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v141 = v201;
          v140 = v202;
          v142 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v143 = *(v140 + 8);
          v143(v142, v141);
          v143(v139, v141);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == v203 && 0x8000000273EB1840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v170 = v205;
    SnippetHeaderView.colorScheme.getter(v205);
    v171 = v16[13];
    v172 = v206;
    v173 = v207;
    LODWORD(v204) = *MEMORY[0x277CDF3D8];
    v171(v207);
    v174 = static ColorScheme.== infix(_:_:)();
    v175 = v16[1];
    v175(v173, v172);
    v175(v170, v172);
    if ((v174 & 1) == 0)
    {
      goto LABEL_140;
    }

    v176 = v200;
    SnippetHeaderView.colorSchemeContrast.getter(v200);
    v177 = v201;
    v178 = v202;
    v179 = v199;
    (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
    v180 = static ColorScheme.== infix(_:_:)();
    v181 = *(v178 + 8);
    v181(v179, v177);
    v181(v176, v177);
    if ((v180 & 1) == 0)
    {
LABEL_140:
      v182 = v205;
      SnippetHeaderView.colorScheme.getter(v205);
      v184 = v206;
      v183 = v207;
      (v171)(v207, v204, v206);
      v185 = static ColorScheme.== infix(_:_:)();
      v175(v183, v184);
      v175(v182, v184);
      if ((v185 & 1) == 0)
      {
        v186 = v205;
        SnippetHeaderView.colorScheme.getter(v205);
        v187 = v206;
        v188 = v207;
        (v171)(v207, v204, v206);
        v189 = static ColorScheme.== infix(_:_:)();
        v175(v188, v187);
        v175(v186, v187);
        if ((v189 & 1) == 0)
        {
          v190 = v200;
          SnippetHeaderView.colorSchemeContrast.getter(v200);
          v192 = v201;
          v191 = v202;
          v193 = v199;
          (*(v202 + 104))(v199, *MEMORY[0x277CE0218], v201);
          static ColorScheme.== infix(_:_:)();
          v194 = *(v191 + 8);
          v194(v193, v192);
          v194(v190, v192);
        }
      }
    }

    goto LABEL_114;
  }

  return static Color.black.getter();
}

uint64_t outlined init with take of SnippetHeaderModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SnippetHeaderModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SashStandardView and conformance SashStandardView()
{
  result = lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView;
  if (!lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView)
  {
    type metadata accessor for SashStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView);
  }

  return result;
}

void type metadata completion function for SnippetHeaderView()
{
  _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E8], MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for Environment<ColorSchemeContrast>, MEMORY[0x277CE0230], MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CycleTrackingLogModel.dateLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for CycleTrackingLogModel() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CycleTrackingLogModel()
{
  result = type metadata singleton initialization cache for CycleTrackingLogModel;
  if (!type metadata singleton initialization cache for CycleTrackingLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CycleTrackingLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CycleTrackingLogModel() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CycleTrackingLogModel.loggedLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for CycleTrackingLogModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CycleTrackingLogModel.cycleTrackingType.getter()
{
  v1 = (v0 + *(type metadata accessor for CycleTrackingLogModel() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CycleTrackingLogModel.init(date:loggedLabel:cycleTrackingType:snippetHeaderModel:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a6;
  v42 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v38 - v20;
  v22 = type metadata accessor for AppPunchout();
  v23 = *(v22 - 8);
  v43 = *(v23 + 56);
  v41 = v23 + 56;
  v43(a8, 1, 1, v22);
  v44 = a1;
  if (a1)
  {
    v39 = a3;
    v40 = a5;
    v24 = a4;
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    v25 = type metadata accessor for SpeakableString();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v21, 1, v25) == 1)
    {
      outlined destroy of AppPunchout?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      a1 = 0;
      v27 = 0;
    }

    else
    {
      v28 = SpeakableString.print.getter();
      v30 = v29;
      (*(v26 + 8))(v21, v25);
      v46 = v28;
      v47 = v30;
      lazy protocol witness table accessor for type String and conformance String();
      a1 = StringProtocol.capitalized.getter();
      v27 = v31;
    }

    a4 = v24;
    a3 = v39;
    a5 = v40;
  }

  else
  {
    v27 = 0;
  }

  v32 = type metadata accessor for CycleTrackingLogModel();
  v33 = (a8 + v32[5]);
  *v33 = a1;
  v33[1] = v27;
  v34 = (a8 + v32[6]);
  *v34 = v42;
  v34[1] = a3;
  v35 = (a8 + v32[7]);
  *v35 = a4;
  v35[1] = a5;
  v36 = v45;
  outlined init with copy of AppPunchout?(v45, a8 + v32[8], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined init with copy of AppPunchout?(a7, a8 + v32[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  CycleTrackingLogModel.createAppPunchout(url:)(a7);

  outlined destroy of AppPunchout?(a7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v36, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v43(v17, 0, 1, v22);
  return outlined assign with take of AppPunchout?(v17, a8);
}

uint64_t CycleTrackingLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CycleTrackingLogModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x68636E7550707061;
  v3 = 0xD000000000000011;
  v4 = 7107189;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6562614C65746164;
  if (v1 != 1)
  {
    v5 = 0x614C646567676F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CycleTrackingLogModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CycleTrackingLogModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CycleTrackingLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CycleTrackingLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CycleTrackingLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMd, "L*");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CycleTrackingLogModel();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v24[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v24[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v24[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v11[8];
    v24[11] = 4;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v11[9];
    v24[10] = 5;
    type metadata accessor for URL();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

uint64_t CycleTrackingLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMR);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v50 = type metadata accessor for CycleTrackingLogModel();
  v19 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AppPunchout();
  v23 = *(*(v22 - 8) + 56);
  v49 = v21;
  v23(v21, 1, 1, v22);
  v24 = a1[3];
  v25 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();
  v26 = v18;
  v27 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v30 = v49;
    __swift_destroy_boxed_opaque_existential_1(v51);
    outlined destroy of AppPunchout?(v30, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  }

  else
  {
    v28 = v10;
    v29 = v46;
    v48 = v6;
    v57 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v49;
    outlined assign with take of AppPunchout?(v14, v49);
    v56 = 1;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v50;
    v34 = (v31 + *(v50 + 20));
    *v34 = v32;
    v34[1] = v35;
    v55 = 2;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = (v31 + v33[6]);
    *v37 = v36;
    v37[1] = v38;
    v54 = 3;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = (v31 + v33[7]);
    *v40 = v39;
    v40[1] = v41;
    type metadata accessor for SnippetHeaderModel();
    v53 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SnippetHeaderModel?(v28, v31 + v33[8], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    type metadata accessor for URL();
    v52 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v42 = v48;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v29 + 8))(v26, v47);
    outlined init with take of SnippetHeaderModel?(v42, v31 + v33[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of CycleTrackingLogModel(v31, v45);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return outlined destroy of CycleTrackingLogModel(v31);
  }
}

uint64_t outlined init with take of SnippetHeaderModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of CycleTrackingLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CycleTrackingLogModel(uint64_t a1)
{
  v2 = type metadata accessor for CycleTrackingLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for CycleTrackingLogModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10SnippetKit11AppPunchoutVSgMaTm_3(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t specialized CycleTrackingLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SpecificMedCompletedLogSnippet.text2.getter()
{
  v1 = v0 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 20);
  v2 = *v1;
  v3 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t type metadata accessor for SpecificMedCompletedLogSnippet()
{
  result = type metadata singleton initialization cache for SpecificMedCompletedLogSnippet;
  if (!type metadata singleton initialization cache for SpecificMedCompletedLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogSnippet.text2.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 20);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  v10 = *(v9 + 24);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
  return result;
}

uint64_t SpecificMedCompletedLogSnippet.text3.getter()
{
  v1 = v0 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 24);
  v2 = *v1;
  v3 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t SpecificMedCompletedLogSnippet.text3.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 24);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  v10 = *(v9 + 24);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
  return result;
}

uint64_t outlined init with take of SpecificMedCompletedLogSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SpecificMedCompletedLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v207 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
  v204 = *(v2 - 8);
  v205 = v2;
  v3 = *(v204 + 64);
  MEMORY[0x28223BE20](v2);
  v203 = v157 - v4;
  v179 = type metadata accessor for SpecificMedCompletedLogSnippet();
  v206 = *(v179 - 8);
  v5 = *(v206 + 64);
  MEMORY[0x28223BE20](v179);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v186 = *(v188 - 8);
  v6 = *(v186 + 64);
  MEMORY[0x28223BE20](v188);
  v185 = v157 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v189 = *(v8 - 8);
  v190 = v8;
  v9 = *(v189 + 64);
  MEMORY[0x28223BE20](v8);
  v187 = v157 - v10;
  v11 = type metadata accessor for SeparatorStyle();
  v183 = *(v11 - 8);
  v184 = v11;
  v12 = *(v183 + 64);
  MEMORY[0x28223BE20](v11);
  v180 = v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for FactItemHeroNumberView();
  v178 = *(v182 - 8);
  v14 = *(v178 + 64);
  MEMORY[0x28223BE20](v182);
  v176 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v196 = *(v16 - 8);
  v197 = v16;
  v17 = *(v196 + 64);
  MEMORY[0x28223BE20](v16);
  v181 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v18;
  MEMORY[0x28223BE20](v19);
  v195 = v157 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v171 = v157 - v23;
  v24 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v170 = v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v168 = *(v27 - 8);
  v169 = v27;
  v28 = *(v168 + 64);
  MEMORY[0x28223BE20](v27);
  v167 = v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StatusIndicatorView();
  v193 = *(v30 - 8);
  v194 = v30;
  v31 = *(v193 + 64);
  MEMORY[0x28223BE20](v30);
  v174 = v32;
  v175 = v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v199 = v157 - v34;
  v166 = type metadata accessor for SnippetHeaderView();
  v35 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v165 = v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Font.TextStyle();
  v191 = *(v37 - 8);
  v192 = v37;
  v38 = *(v191 + 64);
  MEMORY[0x28223BE20](v37);
  v198 = v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v157 - v42;
  v44 = type metadata accessor for SpeakableString();
  v163 = *(v44 - 8);
  v164 = v44;
  v45 = *(v163 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = v157 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = v157 - v53;
  v55 = type metadata accessor for AppPunchout();
  v56 = *(v55 - 8);
  v201 = v55;
  v202 = v56;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v172 = v58;
  v173 = v157 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v200 = v157 - v60;
  v61 = type metadata accessor for SpecificMedCompletedLogModel();
  v62 = v1;
  if (*(v1 + v61[15]) != 1)
  {
    outlined init with copy of SpecificMedCompletedLogModel(v1, v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpecificMedCompletedLogSnippet);
    v72 = (*(v206 + 80) + 16) & ~*(v206 + 80);
    v73 = swift_allocObject();
    outlined init with take of SpecificMedCompletedLogSnippet(v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
    v74 = v203;
    SnippetBody.init(content:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SnippetBody<TupleView<(AnyView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)>> and conformance SnippetBody<A>, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
    v75 = v205;
    v71 = View.eraseToAnyView()();
    result = (*(v204 + 8))(v74, v75);
    goto LABEL_8;
  }

  v63 = v61;
  v204 = v5;
  v205 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = (v1 + v61[18]);
  v65 = v64[1];
  if (!v65)
  {
    goto LABEL_6;
  }

  v66 = (v1 + v61[17]);
  if (!v66[1])
  {
    goto LABEL_6;
  }

  v203 = v66[1];
  v67 = *v64;
  v161 = *v66;
  v162 = v67;
  outlined init with copy of AppPunchout?(v1 + v61[8], v54, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v69 = v201;
  v68 = v202;
  if ((*(v202 + 48))(v54, 1, v201) == 1)
  {
    outlined destroy of AppPunchout?(v54, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_6:
    result = AnyView.init<A>(_:)();
    v71 = result;
    goto LABEL_8;
  }

  v158 = *(v68 + 32);
  v159 = v68 + 32;
  v158(v200, v54, v69);
  if (!*(v62 + 32))
  {
    if (*(v62 + 48))
    {
      v147 = *(v62 + 40);
      outlined init with copy of AppPunchout?(v62 + v63[19], v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v148 = type metadata accessor for SnippetHeaderModel();
      if ((*(*(v148 - 8) + 48))(v43, 1, v148) != 1)
      {
        v149 = v163;
        v150 = *(v163 + 16);
        v157[1] = v147;
        v151 = v164;
        v150(v47, v43);

        outlined destroy of SpecificMedCompletedLogModel(v43, type metadata accessor for SnippetHeaderModel);
        (*(v149 + 32))(v50, v47, v151);
        v152 = String.firstLetterCapitalized()();
        v223._countAndFlagsBits = 32;
        v223._object = 0xE100000000000000;
        v160 = v62;
        v153 = SpeakableString.print.getter();
        MEMORY[0x2743E0A10](v153);

        countAndFlagsBits = v223._countAndFlagsBits;
        object = v223._object;
        v223 = v152;

        v156 = countAndFlagsBits;
        v77 = v203;
        MEMORY[0x2743E0A10](v156, object);
        v62 = v160;

        v80 = v223._object;
        v79 = v223._countAndFlagsBits;
        (*(v163 + 8))(v50, v164);
        goto LABEL_11;
      }

      outlined destroy of AppPunchout?(v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    }

    v71 = AnyView.init<A>(_:)();
    result = (*(v202 + 8))(v200, v69);
    goto LABEL_8;
  }

  v76 = *(v62 + 24);

  v77 = v203;

  v78 = String.firstLetterCapitalized()();
  v79 = v78._countAndFlagsBits;
  v80 = v78._object;
LABEL_11:
  (*(v191 + 104))(v198, *MEMORY[0x277CE0A78], v192);
  v81 = v165;
  outlined init with copy of AppPunchout?(v62 + v63[19], v165, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v82 = v166;
  v83 = *(v166 + 20);
  *(v81 + v83) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v84 = *(v82 + 24);
  *(v81 + v84) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderView and conformance SnippetHeaderView, type metadata accessor for SnippetHeaderView);
  v160 = v62;
  v203 = View.eraseToAnyView()();
  outlined destroy of SpecificMedCompletedLogModel(v81, type metadata accessor for SnippetHeaderView);
  if (*v62)
  {
    v85 = v162;
  }

  else
  {
    v85 = v161;
  }

  if (*v62)
  {
    v86 = v65;
  }

  else
  {
    v86 = v77;
  }

  if (*v62)
  {
    v87 = MEMORY[0x277D63D58];
  }

  else
  {
    v87 = MEMORY[0x277D63D68];
  }

  v224 = MEMORY[0x277D837D0];
  v225 = MEMORY[0x277D63F88];
  v223._countAndFlagsBits = v85;
  v223._object = v86;
  (*(v168 + 104))(v167, *v87, v169);
  StatusIndicatorView.init(message:type:showIndicator:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v88);
  v89._countAndFlagsBits = v79;
  v89._object = v80;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v89);

  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v90);
  LocalizedStringKey.init(stringInterpolation:)();
  v91 = Text.init(_:tableName:bundle:comment:)();
  v93 = v92;
  v95 = v94;
  v96 = *MEMORY[0x277CE0998];
  v97 = type metadata accessor for Font.Design();
  v98 = *(v97 - 8);
  v99 = v171;
  (*(v98 + 104))(v171, v96, v97);
  (*(v98 + 56))(v99, 0, 1, v97);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v99, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v100 = Text.font(_:)();
  v102 = v101;
  LOBYTE(v98) = v103;

  outlined consume of Text.Storage(v91, v93, v95 & 1);

  v104 = Text.bold()();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  outlined consume of Text.Storage(v100, v102, v98 & 1);

  v224 = MEMORY[0x277CE0BD0];
  v225 = MEMORY[0x277D638F0];
  v111 = swift_allocObject();
  v223._countAndFlagsBits = v111;
  v112 = v104;
  v169 = v106;
  v170 = v104;
  *(v111 + 16) = v104;
  *(v111 + 24) = v106;
  LOBYTE(v104) = v108 & 1;
  *(v111 + 32) = v108 & 1;
  LODWORD(v168) = v108 & 1;
  v171 = v110;
  *(v111 + 40) = v110;
  v222 = 0;
  v220 = 0u;
  v221 = 0u;
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v113 = v160 + *(v179 + 24);
  v114 = *v113;
  v115 = *(v113 + 8);
  LOBYTE(v97) = *(v113 + 16);
  v116 = *(v113 + 24);
  v215 = MEMORY[0x277CE0BD0];
  v216 = MEMORY[0x277D638F0];
  v117 = swift_allocObject();
  v213 = 0;
  v214 = v117;
  *(v117 + 16) = v114;
  *(v117 + 24) = v115;
  *(v117 + 32) = v97;
  *(v117 + 40) = v116;
  v211 = 0u;
  v212 = 0u;
  v210 = 0;
  v208 = 0u;
  v209 = 0u;
  outlined copy of Text.Storage(v112, v106, v104);

  outlined copy of Text.Storage(v114, v115, v97);

  v118 = v176;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v120 = v183;
  v119 = v184;
  v121 = v180;
  (*(v183 + 104))(v180, *MEMORY[0x277D62F40], v184);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v122 = v195;
  v123 = v182;
  View.separators(_:isOverride:)();
  (*(v120 + 8))(v121, v119);
  (*(v178 + 8))(v118, v123);
  v124 = v197;
  v125 = v196;
  v126 = v181;
  (*(v196 + 16))(v181, v122, v197);
  v127 = v194;
  v128 = v193;
  v129 = v175;
  (*(v193 + 16))(v175, v199, v194);
  v130 = v125;
  v131 = (*(v125 + 80) + 24) & ~*(v125 + 80);
  v132 = (v177 + *(v128 + 80) + v131) & ~*(v128 + 80);
  v133 = swift_allocObject();
  *(v133 + 16) = v203;
  (*(v130 + 32))(v133 + v131, v126, v124);
  v134 = v193;
  (*(v193 + 32))(v133 + v132, v129, v127);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  v135 = v185;
  ComponentStack.init(content:)();
  v136 = v205;
  outlined init with copy of SpecificMedCompletedLogModel(v160, v205, type metadata accessor for SpecificMedCompletedLogSnippet);
  v138 = v201;
  v137 = v202;
  v139 = v173;
  (*(v202 + 16))(v173, v200, v201);
  v140 = (*(v206 + 80) + 16) & ~*(v206 + 80);
  v141 = (v204 + *(v137 + 80) + v140) & ~*(v137 + 80);
  v142 = swift_allocObject();
  outlined init with take of SpecificMedCompletedLogSnippet(v136, v142 + v140);
  v158((v142 + v141), v139, v138);
  v143 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v145 = v187;
  v144 = v188;
  View.componentTapped(isNavigation:perform:)();

  (*(v186 + 8))(v135, v144);
  v223._countAndFlagsBits = v144;
  v223._object = v143;
  swift_getOpaqueTypeConformance2();
  v146 = v190;
  v71 = View.eraseToAnyView()();

  outlined consume of Text.Storage(v170, v169, v168);

  (*(v189 + 8))(v145, v146);
  (*(v196 + 8))(v195, v197);
  (*(v134 + 8))(v199, v194);
  (*(v191 + 8))(v198, v192);
  result = (*(v137 + 8))(v200, v138);
LABEL_8:
  *v207 = v71;
  return result;
}

uint64_t closure #1 in SpecificMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a1;
  v29 = a3;
  v30 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v25 = v5;
  v27 = *(v5 - 8);
  v6 = v27;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  v16 = *(v11 + 16);
  v16(&v25 - v14, a2, v10, v13);
  v17 = *(v6 + 16);
  v17(v9, v29, v5);
  v18 = v30;
  *v30 = v28;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, "DW");
  (v16)(v18 + *(v19 + 48), v15, v10);
  v20 = v18 + *(v19 + 64);
  v22 = v25;
  v21 = v26;
  v17(v20, v26, v25);
  v23 = *(v27 + 8);
  swift_retain_n();
  v23(v21, v22);
  (*(v11 + 8))(v15, v10);
}

void closure #2 in SpecificMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 28);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in SpecificMedCompletedLogSnippet.body.getter@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v94 = a1;
  v112 = a2;
  v3 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  MEMORY[0x28223BE20](v3);
  v107 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StatusIndicatorView();
  v110 = *(v6 - 8);
  v111 = v6;
  v7 = *(v110 + 64);
  MEMORY[0x28223BE20](v6);
  v116 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = v93 - v10;
  v11 = type metadata accessor for SpecificMedCompletedLogSnippet();
  v12 = *(v11 - 8);
  v97 = v11;
  v98 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v99 = v14;
  v100 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FactItemHeroNumberView();
  v102 = *(v15 - 8);
  v103 = v15;
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v15);
  v101 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberC0V_Qo_Md, "XW");
  v105 = *(v18 - 8);
  v106 = v18;
  v19 = *(v105 + 64);
  MEMORY[0x28223BE20](v18);
  v104 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = v93 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v113 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v93 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = v93 - v31;
  v93[1] = v93 - v31;
  v33 = type metadata accessor for SashStandard.Title();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for SashStandard();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = type metadata accessor for SashStandardView();
  v41 = *(v40 - 8);
  v95 = v40;
  v96 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = &a1[*(type metadata accessor for SpecificMedCompletedLogModel() + 52)];
  v46 = v45[1];
  *v37 = *v45;
  v37[1] = v46;
  (*(v34 + 104))(v37, *MEMORY[0x277D62DC0], v33);
  v47 = type metadata accessor for VisualProperty();
  (*(*(v47 - 8) + 56))(v32, 1, 1, v47);
  v48 = type metadata accessor for Color();
  v49 = *(*(v48 - 8) + 56);
  v49(v28, 1, 1, v48);
  v49(v113, 1, 1, v48);
  v134 = 0;
  v132 = 0u;
  v133 = 0u;

  SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)();
  SashStandardView.init(model:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView, MEMORY[0x277D63CA0]);
  v50 = v95;
  v113 = View.eraseToAnyView()();
  (*(v96 + 8))(v44, v50);
  v51 = v94;
  *v94;
  LocalizedStringKey.init(stringLiteral:)();
  v52 = Text.init(_:tableName:bundle:comment:)();
  v54 = v53;
  LOBYTE(v37) = v55;
  v57 = v56;
  *(&v133 + 1) = MEMORY[0x277CE0BD0];
  v134 = MEMORY[0x277D638F0];
  v58 = MEMORY[0x277CE0BD0];
  v59 = MEMORY[0x277D638F0];
  v60 = swift_allocObject();
  *&v132 = v60;
  *(v60 + 16) = v52;
  *(v60 + 24) = v54;
  *(v60 + 32) = v37 & 1;
  *(v60 + 40) = v57;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v61 = v97;
  v62 = v51 + *(v97 + 20);
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v37) = *(v62 + 16);
  v65 = *(v62 + 24);
  v127 = v58;
  v128 = v59;
  v66 = swift_allocObject();
  *(v66 + 16) = v63;
  *(v66 + 24) = v64;
  *(v66 + 32) = v37;
  *(v66 + 40) = v65;
  v67 = v51 + *(v61 + 24);
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = *(v67 + 16);
  v71 = *(v67 + 24);
  v124 = MEMORY[0x277CE0BD0];
  v126 = v66;
  v125 = MEMORY[0x277D638F0];
  v72 = swift_allocObject();
  v123 = v72;
  *(v72 + 16) = v68;
  *(v72 + 24) = v69;
  *(v72 + 32) = v70;
  *(v72 + 40) = v71;
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  outlined copy of Text.Storage(v63, v64, v37);

  outlined copy of Text.Storage(v68, v69, v70);

  v73 = v101;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v74 = v100;
  outlined init with copy of SpecificMedCompletedLogModel(v51, v100, type metadata accessor for SpecificMedCompletedLogSnippet);
  v75 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v76 = swift_allocObject();
  outlined init with take of SpecificMedCompletedLogSnippet(v74, v76 + v75);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v77 = v114;
  v78 = v103;
  View.componentTapped(isNavigation:perform:)();

  (*(v102 + 8))(v73, v78);
  *(&v133 + 1) = MEMORY[0x277D837D0];
  v134 = MEMORY[0x277D63F88];
  *&v132 = 0x646567676F4CLL;
  *(&v132 + 1) = 0xE600000000000000;
  (*(v108 + 104))(v107, *MEMORY[0x277D63D58], v109);
  v79 = v115;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v80 = v104;
  v81 = v105;
  v109 = *(v105 + 16);
  v82 = v106;
  v109(v104, v77, v106);
  v83 = v110;
  v108 = *(v110 + 16);
  v84 = v79;
  v85 = v111;
  (v108)(v116, v84, v111);
  v86 = v112;
  *v112 = v113;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, &_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMR);
  v109(&v86[*(v87 + 48)], v80, v82);
  v88 = &v86[*(v87 + 64)];
  v89 = v116;
  (v108)(v88, v116, v85);
  v90 = *(v83 + 8);

  v90(v115, v85);
  v91 = *(v81 + 8);
  v91(v114, v82);
  v90(v89, v85);
  v91(v80, v82);
}

uint64_t outlined init with copy of SpecificMedCompletedLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #3 in SpecificMedCompletedLogSnippet.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for SpecificMedCompletedLogSnippet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #3 in SpecificMedCompletedLogSnippet.body.getter(v4, a1);
}

uint64_t closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = a1 + *(type metadata accessor for SpecificMedCompletedLogSnippet() + 28);
  v7 = *v6;
  if (*v6)
  {
    v8 = type metadata accessor for SpecificMedCompletedLogModel();
    outlined init with copy of AppPunchout?(a1 + *(v8 + 32), v5, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = type metadata accessor for AppPunchout();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v11 = v7;
      dispatch thunk of Context.perform(appPunchout:)();

      return (*(v10 + 8))(v5, v9);
    }

    __break(1u);
  }

  v13 = *(v6 + 8);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined destroy of SpecificMedCompletedLogModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in SpecificMedCompletedLogSnippet.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for StatusIndicatorView() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in SpecificMedCompletedLogSnippet.body.getter(v7, v1 + v4, v8, a1);
}

void partial apply for closure #2 in SpecificMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for SpecificMedCompletedLogSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in SpecificMedCompletedLogSnippet.body.getter(v0 + v2);
}

void type metadata completion function for SpecificMedCompletedLogSnippet()
{
  type metadata accessor for SpecificMedCompletedLogModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SpecificMedCompletedLogSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = type metadata accessor for SpecificMedCompletedLogModel();
  v10 = v9[8];
  v11 = type metadata accessor for AppPunchout();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = *(v5 + v9[10] + 8);

  v14 = *(v5 + v9[11] + 8);

  v15 = *(v5 + v9[12] + 8);

  v16 = *(v5 + v9[13] + 8);

  v17 = *(v5 + v9[16] + 8);

  v18 = *(v5 + v9[17] + 8);

  v19 = *(v5 + v9[18] + 8);

  v20 = v5 + v9[19];
  v21 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = type metadata accessor for SpeakableString();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = *(v20 + *(v21 + 20) + 8);

    v24 = *(v20 + *(v21 + 24) + 8);
  }

  v25 = v5 + v1[5];
  outlined consume of Text.Storage(*v25, *(v25 + 8), *(v25 + 16));
  v26 = *(v25 + 24);

  v27 = v5 + v1[6];
  outlined consume of Text.Storage(*v27, *(v27 + 8), *(v27 + 16));
  v28 = *(v27 + 24);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for SpecificMedCompletedLogSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter(v2);
}

uint64_t BodyMassQueryModel.averageValue.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for BodyMassQueryModel()
{
  result = type metadata singleton initialization cache for BodyMassQueryModel;
  if (!type metadata singleton initialization cache for BodyMassQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BodyMassQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.maxValue.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BodyMassQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.minValue.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BodyMassQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.value.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BodyMassQueryModel.value.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.averageValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BodyMassQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BodyMassQueryModel.maxValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BodyMassQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BodyMassQueryModel.minValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BodyMassQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BodyMassQueryModel.valueString.getter()
{
  v1 = (v0 + *(type metadata accessor for BodyMassQueryModel() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BodyMassQueryModel.valueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BodyMassQueryModel.init(averageValue:maxValue:minValue:value:unitString:dateLabel:url:headerModel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v74) = a8;
  v70 = a7;
  v69 = a6;
  LODWORD(v68) = a4;
  LODWORD(v66) = a2;
  v76 = a12;
  v77 = a13;
  v75 = a11;
  v78 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - v19;
  v72 = type metadata accessor for AppPunchout();
  v21 = *(v72 - 8);
  v71 = *(v21 + 56);
  v73 = v21 + 56;
  v71(a9, 1, 1, v72);
  Model = type metadata accessor for BodyMassQueryModel();
  v23 = Model[9];
  v65 = v23;
  v24 = type metadata accessor for SpeakableString();
  v25 = *(*(v24 - 8) + 56);
  v25(a9 + v23, 1, 1, v24);
  v26 = Model[14];
  v25(a9 + v26, 1, 1, v24);
  v27 = Model[15];
  v67 = v27;
  v28 = type metadata accessor for SnippetHeaderModel();
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v66;
  if (v66)
  {
    v31 = a1;
  }

  else
  {
    v31 = v29;
  }

  v64 = v31;
  v32 = a9 + Model[5];
  *v32 = v31;
  v63 = v30 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v32 + 8) = v63;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a3;
  }

  else
  {
    v33 = 0;
  }

  v34 = v68;
  if (v68)
  {
    v35 = a3;
  }

  else
  {
    v35 = v33;
  }

  v66 = v35;
  v36 = a9 + Model[6];
  *v36 = v35;
  v62 = v34 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v36 + 8) = v62;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = a5;
  }

  else
  {
    v37 = 0;
  }

  v38 = v69;
  if (v69)
  {
    v39 = a5;
  }

  else
  {
    v39 = v37;
  }

  v68 = v39;
  v40 = a9 + Model[7];
  *v40 = v39;
  v41 = v38 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v40 + 8) = v41;
  v42 = (v70 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v70 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v43 = v70;
  }

  else
  {
    v43 = 0;
  }

  v44 = v74;
  if (v74)
  {
    v45 = v70;
  }

  else
  {
    v45 = v43;
  }

  v70 = v45;
  v46 = a9 + Model[8];
  v47 = (a9 + Model[10]);
  v48 = (a9 + Model[11]);
  v49 = (a9 + Model[12]);
  v74 = (a9 + Model[13]);
  *v46 = v45;
  v50 = (v44 | v42) & 1;
  *(v46 + 8) = v50;
  outlined assign with copy of SpeakableString?(v78, a9 + v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v51 = v75;
  outlined assign with copy of SpeakableString?(v75, a9 + v65, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v52 = v76;
  BodyMassQueryModel.createAppPunchout(url:)(v76);
  v71(v20, 0, 1, v72);
  outlined assign with take of AppPunchout?(v20, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v53 = v77;
  outlined assign with copy of SpeakableString?(v77, a9 + v67, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v47 = GenericQueryModel.roundUp(inputValue:)(v64, v63);
  v47[1] = v54;
  *v48 = GenericQueryModel.roundUp(inputValue:)(v66, v62);
  v48[1] = v55;
  *v49 = GenericQueryModel.roundUp(inputValue:)(v68, v41);
  v49[1] = v56;
  v57 = GenericQueryModel.roundUp(inputValue:)(v70, v50);
  v59 = v58;
  outlined destroy of AppPunchout?(v53, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v51, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v78, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v61 = v74;
  *v74 = v57;
  v61[1] = v59;
  return result;
}

uint64_t BodyMassQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t BodyMassQueryModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72745365756C6176;
    v7 = 0x6972745374696E75;
    if (a1 != 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x65756C615678616DLL;
    if (a1 != 7)
    {
      v9 = 0x65756C61566E696DLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x68636E7550707061;
    v2 = 0x65756C61566E696DLL;
    v3 = 0x65756C6176;
    if (a1 != 4)
    {
      v3 = 0x6562614C65746164;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x5665676172657661;
    if (a1 != 1)
    {
      v4 = 0x65756C615678616DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BodyMassQueryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized BodyMassQueryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BodyMassQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BodyMassQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BodyMassQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v40[31] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    Model = type metadata accessor for BodyMassQueryModel();
    v12 = (v3 + Model[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v40[30] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + Model[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v40[29] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + Model[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v40[28] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + Model[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v40[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = Model[9];
    v40[26] = 5;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = (v3 + Model[10]);
    v26 = *v25;
    v27 = v25[1];
    v40[25] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = (v3 + Model[11]);
    v29 = *v28;
    v30 = v28[1];
    v40[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + Model[12]);
    v32 = *v31;
    v33 = v31[1];
    v40[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v3 + Model[13]);
    v35 = *v34;
    v36 = v34[1];
    v40[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = Model[14];
    v40[13] = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = Model[15];
    v40[12] = 11;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

uint64_t BodyMassQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v74 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = v70 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMR);
  v84 = *(v88 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v88);
  v91 = v70 - v14;
  Model = type metadata accessor for BodyMassQueryModel();
  v16 = (Model - 8);
  v17 = *(*(Model - 8) + 64);
  MEMORY[0x28223BE20](Model);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppPunchout();
  v21 = *(*(v20 - 8) + 56);
  v83 = v20;
  v21(v19, 1, 1);
  v22 = &v19[v16[7]];
  *v22 = 0;
  v82 = v22;
  v22[8] = 1;
  v23 = &v19[v16[8]];
  *v23 = 0;
  v81 = v23;
  v23[8] = 1;
  v24 = &v19[v16[9]];
  *v24 = 0;
  v80 = v24;
  v24[8] = 1;
  v25 = &v19[v16[10]];
  *v25 = 0;
  v79 = v25;
  v25[8] = 1;
  v26 = v16[11];
  v27 = type metadata accessor for SpeakableString();
  v28 = *(*(v27 - 8) + 56);
  v78 = v26;
  v28(&v19[v26], 1, 1, v27);
  v29 = &v19[v16[12]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v77 = v29;
  v30 = &v19[v16[13]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v19[v16[14]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v19[v16[15]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v75 = v16[16];
  v28(&v19[v75], 1, 1, v27);
  v33 = v16[17];
  v34 = type metadata accessor for SnippetHeaderModel();
  v35 = *(*(v34 - 8) + 56);
  v90 = v19;
  v73 = v33;
  v35(&v19[v33], 1, 1, v34);
  v36 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();
  v37 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    v67 = v90;
  }

  else
  {
    v39 = v81;
    v38 = v82;
    v89 = v30;
    v72 = v31;
    v71 = v32;
    v40 = v85;
    v70[1] = v34;
    v41 = v86;
    v42 = v84;
    v104 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    v43 = v87;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v43;
    v46 = v90;
    outlined assign with take of AppPunchout?(v45, v90, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v103 = 1;
    *v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38[8] = v47 & 1;
    v102 = 2;
    *v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39[8] = v48 & 1;
    v101 = 3;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v80;
    *v80 = v49;
    *(v50 + 8) = v51 & 1;
    v100 = 4;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v79;
    *v79 = v52;
    *(v53 + 8) = v54 & 1;
    v99 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v40, v46 + v78, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v98 = 6;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v77;
    *v77 = v55;
    v56[1] = v57;
    v97 = 7;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v89;
    *v89 = v58;
    v59[1] = v60;
    v96 = 8;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v72;
    *v72 = v61;
    v62[1] = v63;
    v95 = 9;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v71;
    *v71 = v64;
    v65[1] = v66;
    v94 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v90;
    outlined assign with take of AppPunchout?(v41, &v90[v75], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v93 = 11;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    v68 = v88;
    v69 = v91;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v42 + 8))(v69, v68);
    outlined assign with take of AppPunchout?(v76, v67 + v73, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of BodyMassQueryModel(v67, v74);
  }

  __swift_destroy_boxed_opaque_existential_1(v92);
  return outlined destroy of BodyMassQueryModel(v67);
}

uint64_t outlined destroy of BodyMassQueryModel(uint64_t a1)
{
  Model = type metadata accessor for BodyMassQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of BodyMassQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BodyMassQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for BodyMassQueryModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized BodyMassQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t PhoneRingsModel.exerciseGoalValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PhoneRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseTotalValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PhoneRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.moveGoalValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PhoneRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.moveTotalValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PhoneRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.standGoalValue.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t PhoneRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.standTotalValue.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t PhoneRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseLabel.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t PhoneRingsModel.exerciseLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t PhoneRingsModel.exerciseValueLabel.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PhoneRingsModel.exerciseValueLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t PhoneRingsModel.exerciseUnitLabel.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t PhoneRingsModel.exerciseUnitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t PhoneRingsModel.moveLabel.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t PhoneRingsModel.moveLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t PhoneRingsModel.moveValueLabel.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t PhoneRingsModel.moveValueLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t PhoneRingsModel.moveUnitLabel.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t PhoneRingsModel.moveUnitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 184);

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t PhoneRingsModel.standLabel.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t PhoneRingsModel.standLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 200);

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t PhoneRingsModel.standValueLabel.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t PhoneRingsModel.standValueLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t PhoneRingsModel.standUnitLabel.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t PhoneRingsModel.standUnitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 232);

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

void __swiftcall PhoneRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:exerciseLabel:exerciseUnitLabel:moveLabel:moveUnitLabel:standLabel:standUnitLabel:isSmartEnabled:)(WellnessUI::PhoneRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue, Swift::String exerciseLabel, Swift::String exerciseUnitLabel, Swift::String moveLabel, Swift::String moveUnitLabel, Swift::String standLabel, Swift::String standUnitLabel, Swift::Bool isSmartEnabled)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  LOBYTE(retstr->exerciseLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseLabel.value._object = standGoalValue;
  LOBYTE(retstr->exerciseValueLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseValueLabel.value._object = standTotalValue;
  LOBYTE(retstr->exerciseUnitLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseUnitLabel.value._object = exerciseLabel;
  if ((*&exerciseTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (exerciseTotalValue <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (exerciseTotalValue >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  object = moveUnitLabel._object;
  countAndFlagsBits = moveUnitLabel._countAndFlagsBits;
  v18 = moveLabel._object;
  v19 = moveLabel._countAndFlagsBits;
  v20 = exerciseUnitLabel._object;
  v21 = exerciseUnitLabel._countAndFlagsBits;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v26;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&exerciseGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (exerciseGoalValue <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (exerciseGoalValue >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743E0A10](v27);

  retstr->moveLabel.value._object = v32;
  retstr->moveValueLabel.value._countAndFlagsBits = v35;
  retstr->moveValueLabel.value._object = v21;
  retstr->moveUnitLabel.value._countAndFlagsBits = v20;
  retstr->moveUnitLabel.value._object = v19;
  retstr->standLabel.value._countAndFlagsBits = v18;
  if ((*&moveTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (moveTotalValue <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (moveTotalValue >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v28;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&moveGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (moveGoalValue <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (moveGoalValue >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743E0A10](v29);

  retstr->standLabel.value._object = v33;
  retstr->standValueLabel.value._countAndFlagsBits = v36;
  retstr->standValueLabel.value._object = countAndFlagsBits;
  retstr->standUnitLabel.value._countAndFlagsBits = object;
  *&retstr->standUnitLabel.value._object = standLabel;
  if ((*&standTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (standTotalValue <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (standTotalValue >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v30;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&standGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (standGoalValue <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (standGoalValue < 9.22337204e18)
  {
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743E0A10](v31);

    *&retstr[1].exerciseGoalValue.value = v34;
    *&retstr[1].exerciseGoalValue.is_nil = v37;
    *(&retstr[1].exerciseTotalValue.value + 7) = standUnitLabel;
    BYTE5(retstr[1].moveTotalValue.value) = isSmartEnabled;
    return;
  }

LABEL_37:
  __break(1u);
}

unint64_t PhoneRingsModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    case 6:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6562614C65766F6DLL;
      break;
    case 10:
      result = 0x756C615665766F6DLL;
      break;
    case 11:
      result = 0x74696E5565766F6DLL;
      break;
    case 12:
      result = 0x62614C646E617473;
      break;
    case 13:
      result = 0x6C6156646E617473;
      break;
    case 14:
      result = 0x696E55646E617473;
      break;
    case 15:
      result = 0x457472616D537369;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneRingsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PhoneRingsModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneRingsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v53 = *(v1 + 24);
  v50 = v1[4];
  v51 = v10;
  v49 = *(v1 + 40);
  v48 = v1[6];
  v47 = *(v1 + 56);
  v46 = v1[8];
  LODWORD(v10) = *(v1 + 72);
  v11 = v1[10];
  v44 = *(v1 + 88);
  v45 = v10;
  v12 = v1[12];
  v42 = v1[13];
  v43 = v11;
  v13 = v1[14];
  v40 = v1[15];
  v41 = v12;
  v14 = v1[16];
  v38 = v1[17];
  v39 = v13;
  v15 = v1[18];
  v36 = v1[19];
  v37 = v14;
  v16 = v1[20];
  v34 = v1[21];
  v35 = v15;
  v17 = v1[23];
  v31 = v1[22];
  v32 = v17;
  v33 = v16;
  v18 = v1[25];
  v29 = v1[24];
  v30 = v18;
  v19 = v1[27];
  v27 = v1[26];
  v28 = v19;
  v20 = v1[29];
  v25 = v1[28];
  v26 = v20;
  v24[3] = *(v1 + 240);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v54 = 0;
  v22 = v52;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v22)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v52 = v4;
  v54 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v54 = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v52 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

uint64_t PhoneRingsModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v137 = v2;
    v75 = 0;
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    v12 = v6;
    LOBYTE(v92) = 0;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v136 = v14 & 1;
    LOBYTE(v92) = 1;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v134 = v16 & 1;
    LOBYTE(v92) = 2;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v132 = v17 & 1;
    LOBYTE(v92) = 3;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v130 = v18 & 1;
    LOBYTE(v92) = 4;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v128 = v19 & 1;
    LOBYTE(v92) = 5;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v126 = v20 & 1;
    LOBYTE(v92) = 6;
    *&v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v69 + 1) = v22;
    LOBYTE(v92) = 7;
    *&v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v68 + 1) = v23;
    v66 = a2;
    LOBYTE(v92) = 8;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v137 = 0;
    v24 = v73;
    v25 = v15;
    v65 = v26;
    LOBYTE(v92) = 9;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v28;
    v137 = 0;
    v29 = v27;
    LOBYTE(v92) = 10;
    *&v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v63 + 1) = v30;
    v137 = 0;
    LOBYTE(v92) = 11;
    *&v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v62 + 1) = v31;
    v137 = 0;
    LOBYTE(v92) = 12;
    *&v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v61 + 1) = v32;
    v137 = 0;
    LOBYTE(v92) = 13;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v75 = v33;
    v137 = 0;
    LOBYTE(v92) = 14;
    *&v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v59 + 1) = v34;
    v137 = 0;
    v124 = 15;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v137 = 0;
    v36 = v35;
    (*(v12 + 8))(v9, v5);
    *&v76 = v13;
    v37 = v136;
    BYTE8(v76) = v136;
    *&v77 = v25;
    v38 = v134;
    BYTE8(v77) = v134;
    *&v78 = v24;
    v54 = v132;
    BYTE8(v78) = v132;
    v39 = v72;
    *&v79 = v72;
    v55 = v130;
    BYTE8(v79) = v130;
    *&v80 = v71;
    v56 = v128;
    BYTE8(v80) = v128;
    *&v81 = v70;
    v57 = v126;
    BYTE8(v81) = v126;
    v82 = v69;
    v83 = v68;
    *&v84 = v67;
    *(&v84 + 1) = v65;
    v58 = v29;
    *&v85 = v29;
    *(&v85 + 1) = v64;
    v86 = v63;
    v87 = v62;
    v88 = v61;
    v40 = *(&v59 + 1);
    *&v89 = v60;
    *(&v89 + 1) = v75;
    v90 = v59;
    v36 &= 1u;
    v41 = v76;
    v42 = v77;
    v43 = v79;
    v44 = v66;
    *(v66 + 32) = v78;
    *(v44 + 48) = v43;
    *v44 = v41;
    *(v44 + 16) = v42;
    v45 = v80;
    v46 = v81;
    v47 = v83;
    *(v44 + 96) = v82;
    *(v44 + 112) = v47;
    *(v44 + 64) = v45;
    *(v44 + 80) = v46;
    v48 = v84;
    v49 = v85;
    v50 = v87;
    *(v44 + 160) = v86;
    *(v44 + 176) = v50;
    *(v44 + 128) = v48;
    *(v44 + 144) = v49;
    v51 = v88;
    v52 = v89;
    v53 = v90;
    *(v44 + 240) = v36;
    *(v44 + 208) = v52;
    *(v44 + 224) = v53;
    *(v44 + 192) = v51;
    v91 = v36;
    outlined init with copy of PhoneRingsModel(&v76, &v92);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v92 = v13;
    v93 = v37;
    *v94 = *v135;
    *&v94[3] = *&v135[3];
    v95 = v25;
    v96 = v38;
    *v97 = *v133;
    *&v97[3] = *&v133[3];
    v98 = v24;
    v99 = v54;
    *v100 = *v131;
    *&v100[3] = *&v131[3];
    v101 = v39;
    v102 = v55;
    *&v103[3] = *&v129[3];
    *v103 = *v129;
    v104 = v71;
    v105 = v56;
    *&v106[3] = *&v127[3];
    *v106 = *v127;
    v107 = v70;
    v108 = v57;
    *v109 = *v125;
    *&v109[3] = *&v125[3];
    v110 = v69;
    v111 = v68;
    v112 = v67;
    v113 = v65;
    v114 = v58;
    v115 = v64;
    v116 = v63;
    v117 = v62;
    v118 = v61;
    v119 = v60;
    v120 = v75;
    v121 = v59;
    v122 = v40;
    v123 = v36;
    return outlined destroy of PhoneRingsModel(&v92);
  }
}

uint64_t specialized PhoneRingsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000273EB1310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB18B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB18D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6562614C65766F6DLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756C615665766F6DLL && a2 == 0xEE006C6562614C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74696E5565766F6DLL && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x62614C646E617473 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6156646E617473 && a2 == 0xEF6C6562614C6575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696E55646E617473 && a2 == 0xEE006C6562614C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
  {

    return 15;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance WellnessUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t specialized WellnessUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  *&v193 = a1;
  *&v192 = type metadata accessor for TemperatureQuerySnippet();
  v1 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v191 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for TemperatureQueryModel();
  v4 = *(*(Model - 8) + 64);
  MEMORY[0x28223BE20](Model - 8);
  v190 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for SpecificMedCompletedLogSnippet();
  v6 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SpecificMedCompletedLogModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v183 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v185 = &v156 - v12;
  Snippet = type metadata accessor for SleepQuerySnippet();
  v13 = *(*(Snippet - 8) + 64);
  MEMORY[0x28223BE20](Snippet);
  v186 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepQueryModel();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v184 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SingleActivitySummarySnippet();
  v18 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v179 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SingleActivitySummaryModel();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v178 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for PhoneRingsSnippet();
  v23 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v181 = (&v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = type metadata accessor for HeightQuerySnippet();
  v25 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v176 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HeightQueryModel();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v175 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for HealthDataLogSnippet();
  v30 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for HealthDataLogModel();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v172 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for GenericQuerySnippet();
  v35 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for GenericQueryModel();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v169 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for GenericMedCompletedLogSnippet();
  v40 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v167 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for GenericMedCompletedLogModel();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v161 = &v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v166 = &v156 - v46;
  v163 = type metadata accessor for GenericButtonSnippet();
  v47 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v162 = &v156 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for GenericButtonModel();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v159 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for CycleTrackingLogSnippet();
  v52 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v164 = &v156 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CycleTrackingLogModel();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v160 = &v156 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for BloodPressureQuerySnippet();
  v57 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v157 = &v156 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for BloodPressureQueryModel();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v156 = &v156 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BloodPressureLogSnippet();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v156 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BloodPressureLogModel();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v69 = &v156 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OxygenSaturationQuerySnippet();
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v156 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OxygenSaturationQueryModel();
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v77 = (&v156 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for WellnessSnippets();
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v156 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WellnessSnippets(v193, v81, type metadata accessor for WellnessSnippets);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v69 = v156;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v156, type metadata accessor for BloodPressureQueryModel);
      v119 = v157;
      outlined init with copy of WellnessSnippets(v69, v157, type metadata accessor for BloodPressureQueryModel);
      v120 = (v119 + *(v158 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v120 = EnvironmentObject.init()();
      v120[1] = v121;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type BloodPressureQuerySnippet and conformance BloodPressureQuerySnippet, type metadata accessor for BloodPressureQuerySnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v119, type metadata accessor for BloodPressureQuerySnippet);
      v89 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_20;
    case 2u:
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v69, type metadata accessor for BloodPressureLogModel);
      outlined init with copy of WellnessSnippets(v69, v65, type metadata accessor for BloodPressureLogModel);
      v104 = &v65[*(v62 + 20)];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v104 = EnvironmentObject.init()();
      v104[1] = v105;
      v106 = *(v62 + 24);
      *&v65[v106] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type BloodPressureLogSnippet and conformance BloodPressureLogSnippet, type metadata accessor for BloodPressureLogSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v65, type metadata accessor for BloodPressureLogSnippet);
      v89 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_20;
    case 3u:
      v69 = v160;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v160, type metadata accessor for CycleTrackingLogModel);
      v109 = v164;
      outlined init with copy of WellnessSnippets(v69, v164, type metadata accessor for CycleTrackingLogModel);
      v110 = v165;
      v111 = (v109 + *(v165 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v111 = EnvironmentObject.init()();
      v111[1] = v112;
      v113 = *(v110 + 24);
      *(v109 + v113) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type CycleTrackingLogSnippet and conformance CycleTrackingLogSnippet, type metadata accessor for CycleTrackingLogSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v109, type metadata accessor for CycleTrackingLogSnippet);
      v89 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_20;
    case 4u:
      v77 = v159;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v159, type metadata accessor for GenericButtonModel);
      v95 = v162;
      outlined init with copy of WellnessSnippets(v77, &v162[*(v163 + 20)], type metadata accessor for GenericButtonModel);
      ActionHandler.init()();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericButtonSnippet and conformance GenericButtonSnippet, type metadata accessor for GenericButtonSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v95, type metadata accessor for GenericButtonSnippet);
      v85 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v122 = *v81;
      v192 = *(v81 + 1);
      v193 = v122;
      v123 = *(v81 + 4);
      v124 = *(v81 + 5);
      v125 = v81[48];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      v126 = EnvironmentObject.init()();
      v194 = v193;
      v195 = v192;
      *&v196 = v123;
      *(&v196 + 1) = v124;
      LOBYTE(v197) = v125;
      *(&v197 + 1) = v126;
      v198 = v127;
      lazy protocol witness table accessor for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet();
      v84 = View.eraseToAnyView()();
      v201 = v196;
      v202 = v197;
      *&v203[0] = v198;
      v199 = v194;
      v200 = v195;
      outlined destroy of GenericBinaryButtonSnippet(&v199);
      return v84;
    case 6u:
      v128 = v166;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v166, type metadata accessor for GenericMedCompletedLogModel);
      v132 = v161;
      outlined init with copy of WellnessSnippets(v128, v161, type metadata accessor for GenericMedCompletedLogModel);
      v133 = v167;
      GenericMedCompletedLogSnippet.init(model:)(v132, v167);
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericMedCompletedLogSnippet and conformance GenericMedCompletedLogSnippet, type metadata accessor for GenericMedCompletedLogSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v133, type metadata accessor for GenericMedCompletedLogSnippet);
      v131 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_16;
    case 7u:
      v69 = v172;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v172, type metadata accessor for HealthDataLogModel);
      v114 = v173;
      outlined init with copy of WellnessSnippets(v69, v173, type metadata accessor for HealthDataLogModel);
      v115 = v174;
      v116 = (v114 + *(v174 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v116 = EnvironmentObject.init()();
      v116[1] = v117;
      v118 = *(v115 + 24);
      *(v114 + v118) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type HealthDataLogSnippet and conformance HealthDataLogSnippet, type metadata accessor for HealthDataLogSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v114, type metadata accessor for HealthDataLogSnippet);
      v89 = type metadata accessor for HealthDataLogModel;
      goto LABEL_20;
    case 8u:
      v69 = v169;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v169, type metadata accessor for GenericQueryModel);
      v152 = v170;
      outlined init with copy of WellnessSnippets(v69, v170, type metadata accessor for GenericQueryModel);
      v153 = (v152 + *(v171 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v153 = EnvironmentObject.init()();
      v153[1] = v154;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericQuerySnippet and conformance GenericQuerySnippet, type metadata accessor for GenericQuerySnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v152, type metadata accessor for GenericQuerySnippet);
      v89 = type metadata accessor for GenericQueryModel;
      goto LABEL_20;
    case 9u:
      v69 = v175;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v175, type metadata accessor for HeightQueryModel);
      v101 = v176;
      outlined init with copy of WellnessSnippets(v69, v176, type metadata accessor for HeightQueryModel);
      v102 = (v101 + *(v177 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v102 = EnvironmentObject.init()();
      v102[1] = v103;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type HeightQuerySnippet and conformance HeightQuerySnippet, type metadata accessor for HeightQuerySnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v101, type metadata accessor for HeightQuerySnippet);
      v89 = type metadata accessor for HeightQueryModel;
      goto LABEL_20;
    case 0xAu:
      v136 = *(v81 + 13);
      v210 = *(v81 + 12);
      v211 = v136;
      v212 = *(v81 + 14);
      v213 = v81[240];
      v137 = *(v81 + 9);
      v206 = *(v81 + 8);
      v207 = v137;
      v138 = *(v81 + 11);
      v208 = *(v81 + 10);
      v209 = v138;
      v139 = *(v81 + 5);
      v203[0] = *(v81 + 4);
      v203[1] = v139;
      v140 = *(v81 + 7);
      v204 = *(v81 + 6);
      v205 = v140;
      v141 = *(v81 + 1);
      v199 = *v81;
      v200 = v141;
      v142 = *(v81 + 3);
      v201 = *(v81 + 2);
      v202 = v142;
      KeyPath = swift_getKeyPath();
      v77 = v181;
      *v181 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
      swift_storeEnumTagMultiPayload();
      v144 = v77 + *(v182 + 20);
      v145 = v211;
      *(v144 + 12) = v210;
      *(v144 + 13) = v145;
      *(v144 + 14) = v212;
      v144[240] = v213;
      v146 = v207;
      *(v144 + 8) = v206;
      *(v144 + 9) = v146;
      v147 = v209;
      *(v144 + 10) = v208;
      *(v144 + 11) = v147;
      v148 = v203[1];
      *(v144 + 4) = v203[0];
      *(v144 + 5) = v148;
      v149 = v205;
      *(v144 + 6) = v204;
      *(v144 + 7) = v149;
      v150 = v200;
      *v144 = v199;
      *(v144 + 1) = v150;
      v151 = v202;
      *(v144 + 2) = v201;
      *(v144 + 3) = v151;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type PhoneRingsSnippet and conformance PhoneRingsSnippet, type metadata accessor for PhoneRingsSnippet);
      v84 = View.eraseToAnyView()();
      v85 = type metadata accessor for PhoneRingsSnippet;
      goto LABEL_18;
    case 0xBu:
      v69 = v178;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v178, type metadata accessor for SingleActivitySummaryModel);
      v90 = v179;
      outlined init with copy of WellnessSnippets(v69, v179, type metadata accessor for SingleActivitySummaryModel);
      v91 = v180;
      v92 = (v90 + *(v180 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v92 = EnvironmentObject.init()();
      v92[1] = v93;
      v94 = (v90 + *(v91 + 24));
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SingleActivitySummarySnippet and conformance SingleActivitySummarySnippet, type metadata accessor for SingleActivitySummarySnippet);
      *v94 = 0;
      v94[1] = 0;
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v90, type metadata accessor for SingleActivitySummarySnippet);
      v89 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_20;
    case 0xCu:
      v69 = v184;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v184, type metadata accessor for SleepQueryModel);
      v96 = v186;
      outlined init with copy of WellnessSnippets(v69, v186, type metadata accessor for SleepQueryModel);
      v97 = Snippet;
      v98 = (v96 + *(Snippet + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v98 = EnvironmentObject.init()();
      v98[1] = v99;
      v100 = (v96 + *(v97 + 24));
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SleepQuerySnippet and conformance SleepQuerySnippet, type metadata accessor for SleepQuerySnippet);
      *v100 = 0;
      v100[1] = 0;
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v96, type metadata accessor for SleepQuerySnippet);
      v89 = type metadata accessor for SleepQueryModel;
      goto LABEL_20;
    case 0xDu:
      v128 = v185;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v185, type metadata accessor for SpecificMedCompletedLogModel);
      v129 = v183;
      outlined init with copy of WellnessSnippets(v128, v183, type metadata accessor for SpecificMedCompletedLogModel);
      v130 = v188;
      SpecificMedCompletedLogSnippet.init(model:)(v129);
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SpecificMedCompletedLogSnippet and conformance SpecificMedCompletedLogSnippet, type metadata accessor for SpecificMedCompletedLogSnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v130, type metadata accessor for SpecificMedCompletedLogSnippet);
      v131 = type metadata accessor for SpecificMedCompletedLogModel;
LABEL_16:
      v134 = v131;
      v135 = v128;
      goto LABEL_21;
    case 0xEu:
      v69 = v190;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v190, type metadata accessor for TemperatureQueryModel);
      v86 = v191;
      outlined init with copy of WellnessSnippets(v69, v191, type metadata accessor for TemperatureQueryModel);
      v87 = (v86 + *(v192 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v87 = EnvironmentObject.init()();
      v87[1] = v88;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type TemperatureQuerySnippet and conformance TemperatureQuerySnippet, type metadata accessor for TemperatureQuerySnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v86, type metadata accessor for TemperatureQuerySnippet);
      v89 = type metadata accessor for TemperatureQueryModel;
LABEL_20:
      v134 = v89;
      v135 = v69;
      goto LABEL_21;
    case 0xFu:
      v107 = *(v81 + 3);
      v201 = *(v81 + 2);
      v202 = v107;
      v203[0] = *(v81 + 4);
      *(v203 + 9) = *(v81 + 73);
      v108 = *(v81 + 1);
      v199 = *v81;
      v200 = v108;
      lazy protocol witness table accessor for type WatchRingsSnippet and conformance WatchRingsSnippet();
      return View.eraseToAnyView()();
    default:
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v81, v77, type metadata accessor for OxygenSaturationQueryModel);
      outlined init with copy of WellnessSnippets(v77, v73, type metadata accessor for OxygenSaturationQueryModel);
      v82 = &v73[*(v70 + 20)];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v82 = EnvironmentObject.init()();
      v82[1] = v83;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type OxygenSaturationQuerySnippet and conformance OxygenSaturationQuerySnippet, type metadata accessor for OxygenSaturationQuerySnippet);
      v84 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v73, type metadata accessor for OxygenSaturationQuerySnippet);
      v85 = type metadata accessor for OxygenSaturationQueryModel;
LABEL_18:
      v134 = v85;
      v135 = v77;
LABEL_21:
      outlined destroy of TemperatureQuerySnippet(v135, v134);
      return v84;
  }
}

unint64_t lazy protocol witness table accessor for type WatchRingsSnippet and conformance WatchRingsSnippet()
{
  result = lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet;
  if (!lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet()
{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet);
  }

  return result;
}

uint64_t _s10WellnessUI21TemperatureQueryModelVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WellnessSnippets(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of TemperatureQuerySnippet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for healthdataGlyphBodymeasurements()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphBodymeasurements);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphBodymeasurements);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000021, 0x8000000273EB1A60, resourceBundle.super.isa);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for healthdataGlyphFitness()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphFitness);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphFitness);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000018, 0x8000000273EB1A40, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphHeart()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphHeart);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphHeart);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000016, 0x8000000273EB1A20, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphMedicationTracking()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphMedicationTracking);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphMedicationTracking);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000023, 0x8000000273EB19F0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphReproductive()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphReproductive);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphReproductive);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD00000000000001DLL, 0x8000000273EB19D0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphRespiratory()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphRespiratory);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphRespiratory);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD00000000000001CLL, 0x8000000273EB19B0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphSleep()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphSleep);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphSleep);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000016, 0x8000000273EB1990, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphVitals()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphVitals);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphVitals);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000017, 0x8000000273EB1970, resourceBundle.super.isa);
}

uint64_t ImageResource.healthdataGlyphBodymeasurements.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.healthdataGlyphBodymeasurements.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v0 = MEMORY[0x282169278]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}