void *storeEnumTagSinglePayload for ReorderButton(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[1] = 0;
        result[2] = 0;
        *result = a2 & 0x7FFFFFFF;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t type metadata instantiation function for ReorderPicker()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation8IndexSetVSiSbIegnyd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ReorderPicker(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ReorderPicker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ReorderPicker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
  v3 = a1[2];
  type metadata accessor for Array();
  v19 = a1[5];
  v20 = v3;
  v18[1] = swift_getAssociatedTypeWitness();
  v23 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v21 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  v4 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v32 = _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  v5 = swift_getWitnessTable();
  v34 = MEMORY[0x277D84A98];
  v35 = v4;
  v36 = MEMORY[0x277D84AA8];
  v37 = v5;
  type metadata accessor for List();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  *&v13 = v24[4];
  *(&v13 + 1) = v19;
  *&v14 = v20;
  *(&v14 + 1) = v23;
  v27 = v14;
  v28 = v13;
  v29 = v24[6];
  v30 = v25;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v15);
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildBlock<A>(_:)(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t closure #1 in ReorderPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v48 = a4;
  v49 = a1;
  v52 = a7;
  type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v47 = a3;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v50 = a5;
  v46 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  v10 = type metadata accessor for ModifiedContent();
  v57[4] = swift_getOpaqueTypeConformance2();
  v57[2] = swift_getWitnessTable();
  v57[3] = _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  WitnessTable = swift_getWitnessTable();
  v58 = MEMORY[0x277D84A98];
  v59 = v10;
  v60 = MEMORY[0x277D84AA8];
  v61 = WitnessTable;
  v43 = type metadata accessor for List();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = v42 - v15;
  static Platform.current.getter();
  v16 = Platform.rawValue.getter();
  v17 = Platform.rawValue.getter();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v16 == v17)
  {
    v42[1] = WitnessTable;
    AssociatedTypeWitness = v10;
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = WorkoutUIBundle.super.isa;
    LOWORD(v41) = 2;
    v40 = 55;
    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
    static Font.headline.getter();
    v18 = Text.font(_:)();
    v19 = v28;
    v30 = v29;
    v21 = v31;

    outlined consume of Text.Storage(v23, v25, v27 & 1);

    v20 = v30 & 1;
    outlined copy of Text.Storage(v18, v19, v30 & 1);
  }

  AssociatedTypeWitness = v20;
  MEMORY[0x28223BE20](v17);
  v32 = v47;
  v42[-6] = v46;
  v42[-5] = v32;
  v33 = v50;
  v42[-4] = v48;
  v42[-3] = v33;
  v40 = v51;
  v41 = v49;
  List<>.init(content:)();
  v34 = v43;
  v35 = swift_getWitnessTable();
  v36 = v45;
  static ViewBuilder.buildExpression<A>(_:)(v13, v34, v35);
  v37 = v44;
  v38 = *(v44 + 8);
  v38(v13, v34);
  v58 = v18;
  v59 = v19;
  v60 = AssociatedTypeWitness;
  v61 = v21;
  v57[0] = &v58;
  (*(v37 + 16))(v13, v36, v34);
  v57[1] = v13;
  v56[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  v56[1] = v34;
  v54 = lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v55 = v35;
  static ViewBuilder.buildBlock<each A>(_:)(v57, 2uLL, v56);
  outlined consume of Text?(v18, v19, AssociatedTypeWitness, v21);
  v38(v36, v34);
  v38(v13, v34);
  return outlined consume of Text?(v58, v59, v60, v61);
}

uint64_t closure #1 in closure #1 in ReorderPicker.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a4;
  v60 = a6;
  v57 = a7;
  v58 = a3;
  v10 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  v49 = MEMORY[0x277CDEAD8];
  v45 = swift_getOpaqueTypeMetadata2();
  v47 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = a5;
  v46 = AssociatedTypeWitness;
  v65 = v10;
  v66 = AssociatedTypeWitness;
  v67 = v45;
  v68 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ForEach();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  v43 = type metadata accessor for ModifiedContent();
  v56 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v42 - v18;
  v19 = v58;
  v20 = v59;
  v65 = a2;
  v66 = v58;
  v67 = v59;
  v68 = v12;
  v21 = v60;
  AssociatedConformanceWitness = v60;
  v22 = type metadata accessor for ReorderPicker();
  v70 = ReorderPicker.items.getter();
  v23 = swift_allocObject();
  v24 = *a1;
  *(v23 + 72) = a1[1];
  v25 = a1[3];
  *(v23 + 88) = a1[2];
  *(v23 + 104) = v25;
  *(v23 + 16) = a2;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  *(v23 + 40) = v12;
  v26 = v12;
  *(v23 + 48) = v21;
  *(v23 + 120) = *(a1 + 8);
  *(v23 + 56) = v24;
  v27 = *(*(v22 - 8) + 16);
  v27(&v65, a1, v22);
  v65 = OpaqueTypeMetadata2;
  v66 = v52;
  v67 = OpaqueTypeConformance2;
  v68 = v50;
  v28 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v29 = swift_allocObject();
  v30 = *a1;
  *(v29 + 72) = a1[1];
  v31 = a1[3];
  *(v29 + 88) = a1[2];
  *(v29 + 104) = v31;
  v33 = v58;
  v32 = v59;
  *(v29 + 16) = a2;
  *(v29 + 24) = v33;
  *(v29 + 32) = v32;
  *(v29 + 40) = v26;
  *(v29 + 48) = v60;
  *(v29 + 120) = *(a1 + 8);
  *(v29 + 56) = v30;
  v27(&v65, a1, v22);
  v64 = v28;
  swift_getWitnessTable();
  v34 = v48;
  DynamicViewContent.onMove(perform:)();

  (*(v55 + 8))(v15, v13);
  v63 = v28;
  v35 = swift_getWitnessTable();
  v36 = _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  v61 = v35;
  v62 = v36;
  v37 = v43;
  v38 = swift_getWitnessTable();
  v39 = v54;
  static ViewBuilder.buildExpression<A>(_:)(v34, v37, v38);
  v40 = *(v56 + 8);
  v40(v34, v37);
  static ViewBuilder.buildBlock<A>(_:)(v39, v37, v38);
  return (v40)(v39, v37);
}

uint64_t closure #1 in closure #1 in closure #1 in ReorderPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v44 = a6;
  v59 = a5;
  v41 = a3;
  v43 = a2;
  v60 = a1;
  v64 = a8;
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v13 = a4;
  v42 = a4;
  swift_getTupleTypeMetadata3();
  v55 = type metadata accessor for TupleView();
  swift_getWitnessTable();
  v14 = type metadata accessor for HStack();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v41 - v15;
  WitnessTable = swift_getWitnessTable();
  v79 = v14;
  v80 = WitnessTable;
  v17 = WitnessTable;
  v45 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = OpaqueTypeMetadata2;
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = &v41 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  v50 = v20;
  v79 = v14;
  v80 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = OpaqueTypeConformance2;
  v48 = lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  v79 = OpaqueTypeMetadata2;
  v80 = v20;
  v81 = OpaqueTypeConformance2;
  v82 = v48;
  v52 = MEMORY[0x277CDEAD8];
  v22 = swift_getOpaqueTypeMetadata2();
  v53 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v46 = &v41 - v26;
  v72 = a3;
  v73 = v13;
  v27 = v59;
  v74 = v59;
  v75 = a6;
  v28 = v57;
  v76 = v57;
  v77 = a2;
  v29 = v60;
  v78 = v60;
  static VerticalAlignment.center.getter();
  v30 = v54;
  HStack.init(alignment:spacing:content:)();
  v31 = v61;
  static AccessibilityChildBehavior.combine.getter();
  v32 = v47;
  View.accessibilityElement(children:)();
  (*(v62 + 8))(v31, v63);
  (*(v58 + 8))(v30, v14);
  v65 = v41;
  v66 = v42;
  v67 = v27;
  v68 = v44;
  v69 = v28;
  v70 = v43;
  v71 = v29;
  v33 = v51;
  v34 = v50;
  v35 = v49;
  v36 = v48;
  View.accessibilityActions<A>(_:)();
  (*(v56 + 8))(v32, v33);
  v79 = v33;
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v46;
  static ViewBuilder.buildExpression<A>(_:)(v24, v22, v37);
  v39 = *(v53 + 8);
  v39(v24, v22);
  static ViewBuilder.buildBlock<A>(_:)(v38, v22, v37);
  return (v39)(v38, v22);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ReorderPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  (*(v13 + 24))(v14, v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  v15 = *(v6 + 8);
  v15(v8, a2);
  v16 = Image.init(systemName:)();
  v17 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  (*(v6 + 16))(v8, v12, a2);
  v22[2] = v17;
  v23 = 0;
  v24 = 1;
  v25[0] = v8;
  v25[1] = &v23;
  v22[0] = v16;
  v22[1] = KeyPath;
  v25[2] = v22;

  v21[0] = a2;
  v21[1] = MEMORY[0x277CE1180];
  v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v20[2] = a3;
  v20[3] = MEMORY[0x277CE1170];
  v20[4] = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(v25, 3uLL, v21);

  v15(v12, a2);

  return (v15)(v8, a2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in ReorderPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v84 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v69 - v14;
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v19 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v76 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v69 - v24;
  MEMORY[0x28223BE20](v25);
  v69 = &v69 - v26;
  MEMORY[0x28223BE20](v27);
  v80 = a6;
  v81 = &v69 - v28;
  v85 = a2;
  v86 = a3;
  v77 = a3;
  v87 = a4;
  v88 = a5;
  v79 = a5;
  v89 = a6;
  v29 = type metadata accessor for ReorderPicker();
  v90 = ReorderPicker.items.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v78 = a4;
  Collection<>.firstIndex(of:)();

  if (v86)
  {
    v31 = 1;
    v32 = v84;
    return (*(v82 + 56))(v32, v31, 1, v83);
  }

  v33 = v85;
  v34 = v85 + 2;
  if (!__OFADD__(v85, 2))
  {
    ReorderPicker.items.getter();
    v35 = MEMORY[0x20F30BD60]();

    if (v35 >= v34)
    {
      String.LocalizationValue.init(stringLiteral:)();
      type metadata accessor for WorkoutUIBundlePlaceholder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      static Locale.current.getter();
      v90 = String.init(localized:table:bundle:locale:comment:)();
      v91 = v41;
      v42 = swift_allocObject();
      v43 = v77;
      v44 = v78;
      *(v42 + 16) = a2;
      *(v42 + 24) = v43;
      v46 = v79;
      v45 = v80;
      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      *(v42 + 48) = v45;
      *(v42 + 56) = v33;
      v47 = *(a1 + 48);
      *(v42 + 96) = *(a1 + 32);
      *(v42 + 112) = v47;
      *(v42 + 128) = *(a1 + 64);
      v48 = *(a1 + 16);
      *(v42 + 64) = *a1;
      *(v42 + 80) = v48;
      (*(*(v29 - 8) + 16))(&v85, a1, v29);
      lazy protocol witness table accessor for type String and conformance String();
      v49 = v76;
      Button<>.init<A>(_:action:)();
      v38 = v81;
      v50 = v49;
      v37 = v70;
      (*(v19 + 32))(v81, v50, v70);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v37 = v70;
      v38 = v81;
    }

    v51 = 1;
    v70 = *(v19 + 56);
    (v70)(v38, v36, 1, v37);
    if (v33 < 1)
    {
      v63 = v69;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      type metadata accessor for WorkoutUIBundlePlaceholder();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() byte_277DA843B];
      static Locale.current.getter();
      v90 = String.init(localized:table:bundle:locale:comment:)();
      v91 = v54;
      v55 = swift_allocObject();
      v56 = v77;
      v57 = v78;
      *(v55 + 16) = a2;
      *(v55 + 24) = v56;
      v59 = v79;
      v58 = v80;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      *(v55 + 48) = v58;
      *(v55 + 56) = v33;
      v60 = *(a1 + 48);
      *(v55 + 96) = *(a1 + 32);
      *(v55 + 112) = v60;
      *(v55 + 128) = *(a1 + 64);
      v61 = *(a1 + 16);
      *(v55 + 64) = *a1;
      *(v55 + 80) = v61;
      (*(*(v29 - 8) + 16))(&v85, a1, v29);
      lazy protocol witness table accessor for type String and conformance String();
      v62 = v76;
      Button<>.init<A>(_:action:)();
      v63 = v69;
      (*(v19 + 32))(v69, v62, v37);
      v51 = 0;
    }

    (v70)(v63, v51, 1, v37);
    v64 = v81;
    v65 = v71;
    _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(v81, v71, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    v66 = v72;
    _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(v63, v72, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    v67 = v73;
    _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(v65, v73, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSg_AGtMd);
    _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(v66, v67 + *(v68 + 48), &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    _s7SwiftUI5StateVySbGWOhTm_0(v63, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    _s7SwiftUI5StateVySbGWOhTm_0(v64, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    _s7SwiftUI5StateVySbGWOhTm_0(v66, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    _s7SwiftUI5StateVySbGWOhTm_0(v65, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
    v32 = v84;
    outlined init with take of TupleView<(Button<Text>?, Button<Text>?)>(v67, v84);
    v31 = 0;
    return (*(v82 + 56))(v32, v31, 1, v83);
  }

  __break(1u);
  return result;
}

void closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ReorderPicker.body.getter(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFADD__(a1, 2))
  {
    __break(1u);
  }

  else
  {
    IndexSet.init(integer:)();
    v8 = a2[5];
    if (v8 && (, v9 = v8(v7, a1 + 2), outlined consume of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(v8), (v9 & 1) == 0))
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v11 = *a2;
      v10 = a2[1];
      v16 = v4;
      v12 = a2[2];
      v20 = v12;
      v21 = v11;
      v18[3] = v11;
      v18[4] = v10;
      v18[5] = v12;
      outlined init with copy of Transaction(&v21, v18);

      v13 = type metadata accessor for Array();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v18, &v20, v13);
      type metadata accessor for Binding();
      MEMORY[0x20F30B100](&v19);
      swift_getWitnessTable();
      MutableCollection.move(fromOffsets:toOffset:)();
      v18[0] = v11;
      v18[1] = v10;
      v18[2] = v12;
      v17 = v19;
      Binding.wrappedValue.setter();
      (*(v5 + 8))(v7, v16);
      outlined destroy of Transaction(&v21);

      (*(v14 + 8))(&v20, v13);
    }
  }
}

void closure #2 in closure #2 in closure #1 in closure #1 in closure #1 in ReorderPicker.body.getter(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    IndexSet.init(integer:)();
    v8 = a2[5];
    if (v8 && (, v9 = v8(v7, a1 - 1), outlined consume of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(v8), (v9 & 1) == 0))
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v11 = *a2;
      v10 = a2[1];
      v16 = v4;
      v12 = a2[2];
      v20 = v12;
      v21 = v11;
      v18[3] = v11;
      v18[4] = v10;
      v18[5] = v12;
      outlined init with copy of Transaction(&v21, v18);

      v13 = type metadata accessor for Array();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v18, &v20, v13);
      type metadata accessor for Binding();
      MEMORY[0x20F30B100](&v19);
      swift_getWitnessTable();
      MutableCollection.move(fromOffsets:toOffset:)();
      v18[0] = v11;
      v18[1] = v10;
      v18[2] = v12;
      v17 = v19;
      Binding.wrappedValue.setter();
      (*(v5 + 8))(v7, v16);
      outlined destroy of Transaction(&v21);

      (*(v14 + 8))(&v20, v13);
    }
  }
}

uint64_t closure #2 in closure #1 in closure #1 in ReorderPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[5];
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6(a1, a2))
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(v6);
LABEL_4:
    v8 = *a3;
    v7 = a3[1];
    v9 = a3[2];
    v17 = v9;
    v18 = v8;
    *&v14 = v8;
    *(&v14 + 1) = v7;
    v15 = v9;
    outlined init with copy of Transaction(&v18, v13);

    v10 = type metadata accessor for Array();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v13, &v17, v10);
    type metadata accessor for Binding();
    MEMORY[0x20F30B100](&v16);
    swift_getWitnessTable();
    MutableCollection.move(fromOffsets:toOffset:)();
    v13[0] = v8;
    v13[1] = v7;
    v13[2] = v9;
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(&v18);

    return (*(v11 + 8))(&v17, v10);
  }

  v14 = *(a3 + 7);
  v18 = *(&v14 + 1);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(&v18, &v17, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  LOBYTE(v17) = (v17 & 1) == 0;
  State.wrappedValue.setter();
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(v6);
  return _s7SwiftUI5StateVySbGWOhTm_0(&v14, &_s7SwiftUI5StateVySbGMd);
}

unint64_t lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
    _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(Button<Text>?, Button<Text>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t _s7SwiftUI11AnyLocationCySbGSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI5StateVySbGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TupleView<(Button<Text>?, Button<Text>?)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SegmentDurationMetricView.init(segmentIndex:segmentDuration:workoutPaused:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = swift_getKeyPath();
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t SegmentDurationMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = static VerticalAlignment.lastTextBaseline.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy07WorkoutB0011ElapsedTimeD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingP0VyAA0g8PriorityR3KeyVGG_AKyAA6SpacerVAA06_FrameG0VGSgAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_EnvironmentusP0VyAA4FontVSgGGAA023AccessibilityAttachmentP0VGA18_GtGGMd);
  closure #1 in SegmentDurationMetricView.body.getter(v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACy07WorkoutB0011ElapsedTimeG0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingM0VyAA014LayoutPriorityO3KeyVGG_ACyAA6SpacerVAA06_FrameQ0VGSgAA012_ConditionalD0VyACyACyAA5ImageVAA012_EnvironmentspM0VyAA4FontVSgGGAA023AccessibilityAttachmentM0VGA14_GtGGAH9MetricRowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void closure #1 in SegmentDurationMetricView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v63 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentK0VGAS_GMd);
  MEMORY[0x28223BE20](v77);
  v76 = &v63 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v75);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAQGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  v19 = [objc_opt_self() splitsColors];
  v20 = [v19 valueDisplayColor];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v73 = Color.init(uiColor:)();
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v74 = v11;
  if (v22)
  {
    v92 = v21;
    if (v21 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    MetricPlatterConstants.init()(&v79);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v71 = 0;
    v72 = v79;
    v70 = v81;
    v69 = v83;
    v68 = v84;
    LOBYTE(v88) = 1;
    LOBYTE(v86) = v80;
    v85 = v82;
    v65 = 1;
    v66 = v80;
    v67 = v82;
    LOBYTE(v89) = 0;
    if (v22)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  outlined init with copy of SegmentDurationMetricView(a1, &v79);
  static os_log_type_t.fault.getter();
  v23 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined destroy of SegmentDurationMetricView(a1);
  (*(v15 + 8))(v17, v14);
  if (v92 == 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v72 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v71 = 1;
  if ((v22 & 1) == 0)
  {
LABEL_8:
    outlined init with copy of SegmentDurationMetricView(a1, &v89);
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of SegmentDurationMetricView(a1);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v21) = v88;
  }

LABEL_9:
  if (v21 <= 9u && ((1 << v21) & 0x301) != 0)
  {
    v25 = *a1;
    v88 = *a1;
    v26 = MEMORY[0x277D83B88];
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v27;
    MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
    v28 = Image.init(systemName:)();
    v29 = static Font.title2.getter();
    KeyPath = swift_getKeyPath();
    v89 = v28;
    v90 = KeyPath;
    v91 = v29;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = WorkoutUIBundle.super.isa;
    v93._object = 0xE000000000000000;
    v32._object = 0x800000020CB9C080;
    v32._countAndFlagsBits = 0xD00000000000001FLL;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v33.value._object = 0xEB00000000656C62;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v93._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v93);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_20CB5DA70;
    v36 = MEMORY[0x277D83C10];
    *(v35 + 56) = v26;
    *(v35 + 64) = v36;
    *(v35 + 32) = v25;
    v37 = static String.localizedStringWithFormat(_:_:)();
    v39 = v38;

    v86 = v37;
    v87 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  else
  {
    v40 = *a1;
    v88 = *a1;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v41;
    MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
    v42 = Image.init(systemName:)();
    v43 = type metadata accessor for Font.Design();
    v44 = v64;
    (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
    v45 = static Font.system(size:weight:design:)();
    _s7SwiftUI4FontV6DesignOSgWOhTm_9(v44, &_s7SwiftUI4FontV6DesignOSgMd);
    v46 = swift_getKeyPath();
    v64 = v42;
    v89 = v42;
    v90 = v46;
    v91 = v45;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v47 = WorkoutUIBundle.super.isa;
    v94._object = 0xE000000000000000;
    v48._object = 0x800000020CB9C080;
    v48._countAndFlagsBits = 0xD00000000000001FLL;
    v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v49.value._object = 0xEB00000000656C62;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v94);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20CB5DA70;
    v52 = MEMORY[0x277D83C10];
    *(v51 + 56) = MEMORY[0x277D83B88];
    *(v51 + 64) = v52;
    *(v51 + 32) = v40;
    v53 = static String.localizedStringWithFormat(_:_:)();
    v55 = v54;

    v86 = v53;
    v87 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v8, v76, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v56 = v78;
  _ConditionalContent<>.init(storage:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_9(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  v57 = v74;
  outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v56, v74, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAQGMd);
  *a2 = v18;
  *(a2 + 8) = 0;
  *(a2 + 16) = v73;
  *(a2 + 24) = 0x3FF0000000000000;
  v58 = v65;
  *(a2 + 32) = 0;
  *(a2 + 40) = v58;
  v59 = v66;
  *(a2 + 48) = v72;
  *(a2 + 56) = v59;
  v60 = v67;
  *(a2 + 64) = v70;
  *(a2 + 72) = v60;
  v61 = v68;
  *(a2 + 80) = v69;
  *(a2 + 88) = v61;
  *(a2 + 96) = v71;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingK0VyAA014LayoutPriorityM3KeyVGG_ACyAA6SpacerVAA06_FrameO0VGSgAA012_ConditionalD0VyACyACyAA5ImageVAA012_EnvironmentqnK0VyAA4FontVSgGGAA023AccessibilityAttachmentK0VGA10_GtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v57, a2 + *(v62 + 64), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAQGMd);

  _s7SwiftUI4FontV6DesignOSgWOhTm_9(v56, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAQGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_9(v57, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAQGMd);
}

uint64_t protocol witness for View.body.getter in conformance SegmentDurationMetricView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = static VerticalAlignment.lastTextBaseline.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy07WorkoutB0011ElapsedTimeD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingP0VyAA0g8PriorityR3KeyVGG_AKyAA6SpacerVAA06_FrameG0VGSgAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_EnvironmentusP0VyAA4FontVSgGGAA023AccessibilityAttachmentP0VGA18_GtGGMd);
  closure #1 in SegmentDurationMetricView.body.getter(v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACy07WorkoutB0011ElapsedTimeG0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingM0VyAA014LayoutPriorityO3KeyVGG_ACyAA6SpacerVAA06_FrameQ0VGSgAA012_ConditionalD0VyACyACyAA5ImageVAA012_EnvironmentspM0VyAA4FontVSgGGAA023AccessibilityAttachmentM0VGA14_GtGGAH9MetricRowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for SegmentDurationMetricView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentDurationMetricView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACy07WorkoutB0011ElapsedTimeG0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingM0VyAA014LayoutPriorityO3KeyVGG_ACyAA6SpacerVAA06_FrameQ0VGSgAA012_ConditionalD0VyACyACyAA5ImageVAA012_EnvironmentspM0VyAA4FontVSgGGAA023AccessibilityAttachmentM0VGA14_GtGGAH9MetricRowVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0011ElapsedTimeE0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA013_TraitWritingM0VyAA014LayoutPriorityO3KeyVGG_AGyAA6SpacerVAA06_FrameQ0VGSgAA012_ConditionalG0VyAGyAGyAA5ImageVAA012_EnvironmentspM0VyAA4FontVSgGGAA023AccessibilityAttachmentM0VGA14_GtGGMd);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FrameLayout>?, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_9(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for VoiceCompanionSettingsErrorView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceCompanionSettingsErrorView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t VoiceCompanionSettingsErrorView.body.getter@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = VoiceCompanionSettingsErrorView.unavailabilityStringKey.getter(a1, a2 & 1);
  v6 = v5;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7.super.isa = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = v4;
  v9._object = v6;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v28);

  lazy protocol witness table accessor for type String and conformance String();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v7.super.isa) = v14;
  static Font.footnote.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  outlined consume of Text.Storage(v11, v13, v7.super.isa & 1);

  static Color.gray.getter();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24 & 1;
  *(a3 + 24) = v26;
  return result;
}

id VoiceCompanionSettingsErrorView.unavailabilityStringKey.getter(void *a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(a1, 0);
    (*(v11 + 8))(v13, v10);
    v14 = v42;
  }

  v16 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v17 = WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v16);
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result isStandalonePhoneFitnessMode];

  v21 = *MEMORY[0x277D7DCB8];
  v22 = *(v7 + 104);
  v22(v9, v21, v6);
  v23 = specialized Set.contains(_:)(v9, v17);
  v24 = *(v7 + 8);
  v24(v9, v6);
  if (v23)
  {
    v22(v9, *MEMORY[0x277D7DCA0], v6);
    v25 = specialized Set.contains(_:)(v9, v17);
    v24(v9, v6);
    if (v25 & 1) != 0 || (v22(v9, *MEMORY[0x277D7DCA8], v6), v26 = specialized Set.contains(_:)(v9, v17), v24(v9, v6), (v26))
    {

      if (v20)
      {
        return 0xD00000000000003DLL;
      }

      else
      {
        return 0xD000000000000038;
      }
    }
  }

  v22(v9, v21, v6);
  v27 = specialized Set.contains(_:)(v9, v17);
  v24(v9, v6);
  if (v27)
  {

    if (!v20)
    {
      return 0xD00000000000002FLL;
    }

    return 0xD000000000000034;
  }

  v22(v9, *MEMORY[0x277D7DCA0], v6);
  v28 = specialized Set.contains(_:)(v9, v17);
  v24(v9, v6);
  if (v28 & 1) != 0 || (v22(v9, *MEMORY[0x277D7DCA8], v6), v29 = specialized Set.contains(_:)(v9, v17), v24(v9, v6), (v29))
  {

    if (v20)
    {
      return 0xD000000000000026;
    }

    else
    {
      return 0xD000000000000021;
    }
  }

  else
  {
    v22(v9, *MEMORY[0x277D7DCC0], v6);
    v30 = specialized Set.contains(_:)(v9, v17);
    v24(v9, v6);
    if (v30)
    {

      return 0xD000000000000032;
    }

    v22(v9, *MEMORY[0x277D7DCC8], v6);
    v31 = specialized Set.contains(_:)(v9, v17);
    v24(v9, v6);
    if (v31)
    {

      if (v20)
      {
        return 0xD000000000000039;
      }

      return 0xD000000000000034;
    }

    v32 = v39;
    static WOLog.workoutVoice.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd);
      lazy protocol witness table accessor for type Set<WorkoutVoiceAvailabilityProvider.UnavailabilityError> and conformance <> Set<A>();
      swift_allocError();
      *v37 = v17;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_20C66F000, v33, v34, "Unexpectedly did not catch an error key for reasons: %@", v35, 0xCu);
      outlined destroy of NSObject?(v36);
      MEMORY[0x20F30E080](v36, -1, -1);
      MEMORY[0x20F30E080](v35, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v32, v41);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type Set<WorkoutVoiceAvailabilityProvider.UnavailabilityError> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<WorkoutVoiceAvailabilityProvider.UnavailabilityError> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<WorkoutVoiceAvailabilityProvider.UnavailabilityError> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<WorkoutVoiceAvailabilityProvider.UnavailabilityError> and conformance <> Set<A>);
  }

  return result;
}

uint64_t SessionChart.init(data:chartProperties:chartColors:faking:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v51 = a4;
  v48 = a1;
  v49 = a2;
  v50 = type metadata accessor for SessionChartState(0) - 8;
  MEMORY[0x28223BE20](v50);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font._StylisticAlternative();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = *a3;
  v46 = *(a3 + 3);
  v17 = a3[6];
  v45 = a3[5];
  v43 = v16;
  v44 = v17;
  v18 = type metadata accessor for SessionChart(0);
  v19 = a5 + v18[9];
  v52 = 0;
  v53 = 0;
  v54 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySdGSgMd);
  State.init(wrappedValue:)();
  v47 = v55;
  v41 = v18[11];
  FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static Font.Weight.medium.getter();
  v20 = type metadata accessor for Font.Design();
  v21 = *(*(v20 - 8) + 56);
  v42 = *(a3 + 1);
  v21(v15, 1, 1, v20);
  static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v15, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v10 + 104))(v12, *MEMORY[0x277CE0940], v9);
  v22 = Font._stylisticAlternative(_:)();

  (*(v10 + 8))(v12, v9);
  *(a5 + v41) = v22;
  v23 = v48;
  v24 = v49;
  stateFor(data:chartProperties:)(v48, v49, v8);
  *a5 = v23;
  v25 = v18[5];
  v26 = type metadata accessor for WorkoutChartProperties();
  v27 = *(v26 - 8);
  v28 = a5 + v25;
  v29 = v24;
  (*(v27 + 16))(v28, v24, v26);
  v30 = a5 + v18[6];
  *v30 = v43;
  v31 = v42;
  *(v30 + 8) = v42;
  *(v30 + 24) = v46;
  v32 = v44;
  *(v30 + 5) = v45;
  *(v30 + 6) = v32;
  v33 = v31;
  v34 = Color.init(uiColor:)();
  (*(v27 + 8))(v29, v26);
  *(a5 + v18[7]) = v34;
  v35 = a5 + v18[8];
  _sSNy10Foundation4DateVGWOcTm_0(v8, v35, &_sSNy10Foundation4DateVGMd);
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd) + 28)) = 0;
  v36 = &v8[*(v50 + 28)];
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v34) = v36[16];
  outlined destroy of SessionChartState(v8);

  *v19 = v37;
  *(v19 + 1) = v38;
  v19[16] = v34;
  *(v19 + 3) = 0;
  *(a5 + v18[10]) = v51;
  return result;
}

uint64_t type metadata accessor for SessionChartState(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SessionChart.gradient.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionChart(0) + 24);
  v4 = *(v3 + 32);
  if (v4 && (v5 = *(v3 + 40)) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20CB5DA80;
    v7 = v4;
    v8 = v5;
    Color.init(uiColor:)();
    *(v6 + 32) = Gradient.Stop.init(color:location:)();
    *(v6 + 40) = v9;
    v10 = v8;
    Color.init(uiColor:)();
    *(v6 + 48) = Gradient.Stop.init(color:location:)();
    *(v6 + 56) = v11;
    Gradient.init(stops:)();
    static UnitPoint.bottom.getter();
    static UnitPoint.top.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();

    *a1 = v12;
    *(a1 + 16) = v13;
    *(a1 + 32) = v14;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t stateFor(data:chartProperties:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v110 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v99[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v109 = &v99[-v9];
  v10 = type metadata accessor for WorkoutChartProperties.ChartType();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v103 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Date();
  v112 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v99[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v99[-v16];
  MEMORY[0x28223BE20](v18);
  v106 = &v99[-v19];
  MEMORY[0x28223BE20](v20);
  v107 = &v99[-v21];
  MEMORY[0x28223BE20](v22);
  v108 = &v99[-v23];
  MEMORY[0x28223BE20](v24);
  v26 = &v99[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v99[-v28];
  WorkoutChartProperties.minimumValueRange.getter();
  v31 = v30;
  v111 = a2;
  v32 = WorkoutChartProperties.hasNegativeValues.getter();
  v33 = a1;
  v34 = v32;
  if (!(v33 >> 62))
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_36:
    Date.init()();
    WorkoutChartProperties.timeWindow.getter();
    v89 = v112;
    (*(v112 + 16))(v14, v26, v12);
    Date.init(timeInterval:since:)();
    lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v90 = *(v89 + 32);
      v91 = v109;
      v90(v109, v17, v12);
      v90((v91 + *(v5 + 48)), v26, v12);
      _sSNy10Foundation4DateVGWOcTm_0(v91, v7, &_s10Foundation4DateV5lower_AC5uppertMd);
      v92 = v89;
      v93 = v5;
      v94 = *(v5 + 48);
      v95 = v110;
      v90(v110, v7, v12);
      v96 = *(v92 + 8);
      v96(&v7[v94], v12);
      outlined init with take of (lower: Date, upper: Date)(v91, v7);
      v97 = *(v93 + 48);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
      v90(&v95[*(v98 + 36)], &v7[v97], v12);
      v96(v7, v12);
      result = type metadata accessor for SessionChartState(0);
      v77 = &v95[*(result + 20)];
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v87 = v33;
  v88 = __CocoaSet.count.getter();
  v33 = v87;
  v35 = v88;
  if (!v88)
  {
    goto LABEL_36;
  }

LABEL_3:
  v36 = v33;
  static Date.distantFuture.getter();
  v114 = v35;
  if (v35 < 1)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v100 = v34;
  v37 = v29;
  v101 = v5;
  v102 = v7;
  v38 = 0;
  v39 = v36;
  v40 = v36 & 0xC000000000000001;
  v115 = (v112 + 8);
  v113 = (v112 + 32);
  v41 = INFINITY;
  v42 = -INFINITY;
  v43 = v36;
  v44 = v114;
  do
  {
    if (v40)
    {
      v45 = MEMORY[0x20F30C990](v38, v39);
    }

    else
    {
      v45 = *(v39 + 8 * v38 + 32);
    }

    v46 = v45;
    dispatch thunk of WorkoutChartDataElement.date.getter();
    v47 = Date.compare(_:)();
    v48 = *v115;
    (*v115)(v26, v12);
    if (v47 == 1)
    {
      dispatch thunk of WorkoutChartDataElement.date.getter();
      v48(v37, v12);
      v44 = v114;
      (*v113)(v37, v26, v12);
    }

    dispatch thunk of WorkoutChartDataElement.value.getter();
    if (v49 < v41)
    {
      dispatch thunk of WorkoutChartDataElement.value.getter();
      v41 = v50;
    }

    dispatch thunk of WorkoutChartDataElement.value.getter();
    if (v42 < v51)
    {
      dispatch thunk of WorkoutChartDataElement.value.getter();
      v42 = v52;
    }

    ++v38;

    v39 = v43;
  }

  while (v44 != v38);
  if (v41 > v42)
  {
    goto LABEL_40;
  }

  if (v42 - v41 >= v31)
  {
LABEL_20:
    v55 = v112;
    v57 = v107;
    v56 = v108;
    v58 = v37;
    goto LABEL_24;
  }

  v53 = (v41 + v42) * 0.5;
  v54 = v31 * 0.5;
  v55 = v112;
  v57 = v107;
  v56 = v108;
  v58 = v37;
  if (v100)
  {
    v41 = v53 - v54;
    v42 = v54 + v53;
    if (v53 - v54 <= v54 + v53)
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_20;
  }

  v59 = v54 - v53;
  if (v54 <= v53)
  {
    v59 = 0.0;
  }

  v41 = v53 - v54 + v59;
  v42 = v54 + v53 + v59;
  if (v41 > v42)
  {
    goto LABEL_44;
  }

LABEL_24:
  Date.init()();
  WorkoutChartProperties.timeWindow.getter();
  v60 = *(v55 + 16);
  v61 = v56;
  v60(v26, v56, v12);
  Date.init(timeInterval:since:)();
  v62 = v103;
  WorkoutChartProperties.chartType.getter();
  v63 = (*(v104 + 88))(v62, v105);
  if (v63 == *MEMORY[0x277D7DA98])
  {
    static Date.distantFuture.getter();
    v64 = static Date.== infix(_:_:)();
    v48(v26, v12);
    v65 = v57;
    if ((v64 & 1) == 0)
    {
      lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        v65 = v57;
      }

      else
      {
        v65 = v58;
      }
    }

    goto LABEL_30;
  }

  v65 = v57;
  if (v63 == *MEMORY[0x277D7DA90])
  {
LABEL_30:
    v66 = v106;
    v60(v106, v65, v12);
    lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v67 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v48(v57, v12);
    v48(v58, v12);
    if (v41 <= v42)
    {
      if (v67)
      {
        v78 = *v113;
        v79 = v109;
        (*v113)(v109, v66, v12);
        v80 = v101;
        v78(v79 + *(v101 + 48), v61, v12);
        v81 = v102;
        _sSNy10Foundation4DateVGWOcTm_0(v79, v102, &_s10Foundation4DateV5lower_AC5uppertMd);
        v82 = *(v80 + 48);
        v83 = v110;
        v78(v110, v81, v12);
        v48((v81 + v82), v12);
        outlined init with take of (lower: Date, upper: Date)(v79, v81);
        v84 = *(v80 + 48);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
        v78(&v83[*(v85 + 36)], (v81 + v84), v12);
        v48(v81, v12);
        result = type metadata accessor for SessionChartState(0);
        v86 = &v83[*(result + 20)];
        *v86 = v41;
        *(v86 + 1) = v42;
        v86[16] = 0;
        return result;
      }

      goto LABEL_43;
    }

    if (v67)
    {
      v68 = *v113;
      v69 = v109;
      (*v113)(v109, v66, v12);
      v70 = v101;
      v68(v69 + *(v101 + 48), v61, v12);
      v71 = v102;
      _sSNy10Foundation4DateVGWOcTm_0(v69, v102, &_s10Foundation4DateV5lower_AC5uppertMd);
      v72 = *(v70 + 48);
      v73 = v110;
      v68(v110, v71, v12);
      v48((v71 + v72), v12);
      outlined init with take of (lower: Date, upper: Date)(v69, v71);
      v74 = *(v70 + 48);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
      v68(&v73[*(v75 + 36)], (v71 + v74), v12);
      v48(v71, v12);
      result = type metadata accessor for SessionChartState(0);
      v77 = &v73[*(result + 20)];
LABEL_38:
      *v77 = 0;
      *(v77 + 1) = 0;
      v77[16] = 1;
      return result;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of SessionChartState(uint64_t a1)
{
  v2 = type metadata accessor for SessionChartState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v95 = type metadata accessor for SessionChart(0);
  v84 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v85 = v2;
  v86 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9ScaleTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v69 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v93);
  v7 = v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = v69 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0mJ11DataElementCGSiAH12BuilderTupleVyAH0jH0PAHE28alignsMarkStylesWithPlotAreayQrSbFQOyAtHE15foregroundStyleyQrqd__AA05ShapeZ0Rd__lFQOyAH0xT0V_AA14LinearGradientVQo__Qo__AtHE04lineZ0yQrAA06StrokeZ0VFQOyAtHEAVyQrqd__AaWRd__lFQOyAH04LineT0V_AA5ColorVQo__Qo_AtHEAVyQrqd__AaWRd__lFQOyAtHE10symbolSizeyQr0N8Graphics7CGFloatVFQOyAtHE6symbolyQrqd__AH0J11SymbolShapeRd__lFQOyAH05PointT0V_AA6CircleVQo__Qo__A8_Qo_QPGGGAJyALyAPSiAtHEA2_yQrA4_FQOyAtHEAVyQrqd__AaWRd__lFQOyAH04RuleT0V_A8_Qo__Qo_GGG_AGyAA4TextVA33_GQo_Md);
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v69 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartXScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA19_ConditionalContentVyAD5ChartVyAA7ForEachVySay11WorkoutCore0tQ11DataElementCGSiAD12BuilderTupleVyAD0qP0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A_ADE9lineStyleyQrAA11StrokeStyleVFQOyA_ADEA1_yQrqd__AAA2_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A_ADEA1_yQrqd__AAA2_Rd__lFQOyA_ADE10symbolSizeyQr0U8Graphics7CGFloatVFQOyA_ADE6symbolyQrqd__AD0Q11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A15_Qo_QPGGGAQyASyAWSiA_ADEA9_yQrA11_FQOyA_ADEA1_yQrqd__AAA2_Rd__lFQOyAD8RuleMarkV_A15_Qo__Qo_GGG_AOyAA4TextVA40_GQo__SNy10Foundation4DateVGQo_Md);
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = v69 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6XScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0M6DomainRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalI0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0wT11DataElementCGSiAD12BuilderTupleVyAD0tI0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA2_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A2_ADE9lineStyleyQrAA11StrokeStyleVFQOyA2_ADEA4_yQrqd__AAA5_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A2_ADEA4_yQrqd__AAA5_Rd__lFQOyA2_ADE10symbolSizeyQr0X8Graphics7CGFloatVFQOyA2_ADE6symbolyQrqd__AD0T11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A18_Qo_QPGGGATyAVyAZSiA2_ADEA12_yQrA14_FQOyA2_ADEA4_yQrqd__AAA5_Rd__lFQOyAD8RuleMarkV_A18_Qo__Qo_GGG_ARyAA4TextVA43_GQo__SNy10Foundation4DateVGQo__AD0H5MarksVyAD07BuilderS0VyA56_yA0_yAD0H4MarkPADEA4_yQrqd__AAA5_Rd__lFQOyA58_ADE4fontyQrAA4FontVSgFQOyAD0H10ValueLabelVyA45_G_Qo__A18_Qo__A58_ADEA4_yQrqd__AAA5_Rd__lFQOyAD0H8GridLineV_A18_Qo_SgQPGA67_GA71_GGQo_Md);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v96 = v69 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5XAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6XScaleAfGQrqd___AJtAdKRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalO0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0xU11DataElementCGSiAD12BuilderTupleVyAD0uO0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA3_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A3_ADE9lineStyleyQrAA11StrokeStyleVFQOyA3_ADEA5_yQrqd__AAA6_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A3_ADEA5_yQrqd__AAA6_Rd__lFQOyA3_ADE10symbolSizeyQr0Y8Graphics7CGFloatVFQOyA3_ADE6symbolyQrqd__AD0U11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A19_Qo_QPGGGAUyAWyA_SiA3_ADEA13_yQrA15_FQOyA3_ADEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A19_Qo__Qo_GGG_ASyAA4TextVA44_GQo__SNy10Foundation4DateVGQo__AD0N5MarksVyAD07BuilderT0VyA57_yA1_yAD0N4MarkPADEA5_yQrqd__AAA6_Rd__lFQOyA59_ADE4fontyQrAA4FontVSgFQOyAD0N10ValueLabelVyA46_G_Qo__A19_Qo__A59_ADEA5_yQrqd__AAA6_Rd__lFQOyAD0N8GridLineV_A19_Qo_SgQPGA68_GA72_GGQo__SNySdGQo_Md);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v69 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0M6DomainRd__lFQOyAcDE0E5XAxisAFQrqd__yXE_tAdGRd__lFQOyAcDE0E6XScaleAiJQrqd___AMtAdNRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalI0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0yV11DataElementCGSiAD12BuilderTupleVyAD0vI0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA4_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A4_ADE9lineStyleyQrAA11StrokeStyleVFQOyA4_ADEA6_yQrqd__AAA7_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A4_ADEA6_yQrqd__AAA7_Rd__lFQOyA4_ADE10symbolSizeyQr0Z8Graphics7CGFloatVFQOyA4_ADE6symbolyQrqd__AD0V11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A20_Qo_QPGGGAVyAXyA0_SiA4_ADEA14_yQrA16_FQOyA4_ADEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A20_Qo__Qo_GGG_ATyAA4TextVA45_GQo__SNy10Foundation4DateVGQo__AD0H5MarksVyAD07BuilderU0VyA58_yA2_yAD0H4MarkPADEA6_yQrqd__AAA7_Rd__lFQOyA60_ADE4fontyQrAA4FontVSgFQOyAD0H10ValueLabelVyA47_G_Qo__A20_Qo__A60_ADEA6_yQrqd__AAA7_Rd__lFQOyAD0H8GridLineV_A20_Qo_SgQPGA69_GA73_GGQo__SNySdGQo__A56_yA60_ADEA6_yQrqd__AAA7_Rd__lFQOyA60_ADEA61_yQrA64_FQOyA66_ys5NeverOG_Qo__A20_Qo_GQo_Md);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = v69 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAC6ChartsE10chartYAxis7contentQrqd__yXE_tAG11AxisContentRd__lFQOyAcGE0I6YScale6domain4typeQrqd___AG9ScaleTypeVSgtAG0Q6DomainRd__lFQOyAcGE0I5XAxisAIQrqd__yXE_tAgJRd__lFQOyAcGE0I6XScaleAlMQrqd___APtAgQRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalM0VyAG5ChartVyAA7ForEachVySay11WorkoutCore07WorkoutZ11DataElementCGSiAG12BuilderTupleVyAG0zM0PAGE28alignsMarkStylesWithPlotAreayQrSbFQOyA7_AGE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAG8AreaMarkV_AA14LinearGradientVQo__Qo__A7_AGE9lineStyleyQrAA11StrokeStyleVFQOyA7_AGEA9_yQrqd__AAA10_Rd__lFQOyAG8LineMarkV_AA5ColorVQo__Qo_A7_AGEA9_yQrqd__AAA10_Rd__lFQOyA7_AGE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyA7_AGE6symbolyQrqd__AG0Z11SymbolShapeRd__lFQOyAG9PointMarkV_AA6CircleVQo__Qo__A23_Qo_QPGGGAYyA_yA3_SiA7_AGEA17_yQrA19_FQOyA7_AGEA9_yQrqd__AAA10_Rd__lFQOyAG8RuleMarkV_A23_Qo__Qo_GGG_AWyAA4TextVA48_GQo__SNy10Foundation4DateVGQo__AG0L5MarksVyAG07BuilderY0VyA61_yA5_yAG0L4MarkPAGEA9_yQrqd__AAA10_Rd__lFQOyA63_AGE4fontyQrAA4FontVSgFQOyAG0L10ValueLabelVyA50_G_Qo__A23_Qo__A63_AGEA9_yQrqd__AAA10_Rd__lFQOyAG0L8GridLineV_A23_Qo_SgQPGA72_GA76_GGQo__SNySdGQo__A59_yA63_AGEA9_yQrqd__AAA10_Rd__lFQOyA63_AGEA64_yQrA67_FQOyA69_ys5NeverOG_Qo__A23_Qo_GQo__A3_Qo_Md);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v69 - v16;
  SessionChart.chart.getter(v10);
  v99 = v1;
  v97 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVACy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0jG11DataElementCGSiAF12BuilderTupleVyAF0gD0PAFE28alignsMarkStylesWithPlotAreayQrSbFQOyArFE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAF0uQ0V_AA14LinearGradientVQo__Qo__ArFE04lineW0yQrAA06StrokeW0VFQOyArFEATyQrqd__AaURd__lFQOyAF04LineQ0V_AA5ColorVQo__Qo_ArFEATyQrqd__AaURd__lFQOyArFE10symbolSizeyQr0K8Graphics7CGFloatVFQOyArFE6symbolyQrqd__AF0g6SymbolX0Rd__lFQOyAF05PointQ0V_AA6CircleVQo__Qo__A6_Qo_QPGGGAHyAJyANSiArFEA0_yQrA2_FQOyArFEATyQrqd__AaURd__lFQOyAF04RuleQ0V_A6_Qo__Qo_GGGGMd);
  v18 = lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
  v19 = lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>();
  View.accessibilityRepresentation<A>(representation:)();
  outlined destroy of _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>(v10, &_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
  SessionChart.xDomainRange.getter(v7);
  v20 = type metadata accessor for ScaleType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v71 = v20;
  v70 = v22;
  v69[1] = v21 + 56;
  (v22)(v5, 1, 1);
  *&v104 = v8;
  *(&v104 + 1) = v17;
  v105 = v18;
  v106 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &_sSNy10Foundation4DateVGMd);
  v25 = v89;
  v26 = v90;
  v27 = v93;
  v28 = v88;
  View.chartXScale<A>(domain:type:)();
  v72 = v5;
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v5, &_s6Charts9ScaleTypeVSgMd);
  v29 = v97;
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v7, &_sSNy10Foundation4DateVGMd);
  (*(v92 + 8))(v28, v26);
  v98 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9AxisMarksVyAA18BuilderConditionalVyAEyAA0D5TupleVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0B10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0B8GridLineV_AXQo_SgQPGAYGA1_GGMd);
  *&v104 = v26;
  *(&v104 + 1) = v27;
  v105 = OpaqueTypeConformance2;
  v106 = v24;
  v31 = v91;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA18BuilderConditionalVyAEyAA0D5TupleVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0B10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0B8GridLineV_AXQo_SgQPGAYGA1_GGMd);
  View.chartXAxis<A>(content:)();
  v34 = v95;
  (*(v94 + 8))(v25, v31);
  v35 = (v29 + *(v34 + 36));
  v36 = *(v35 + 16);
  v37 = *(v35 + 3);
  v104 = *v35;
  LOBYTE(v105) = v36;
  v106 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNySdGSgGMd);
  State.wrappedValue.getter();
  if (v103 != 1)
  {
    v40 = v101;
    v39 = v102;
    goto LABEL_5;
  }

  result = WorkoutChartProperties.minimumValueRange.getter();
  if (v39 >= 0.0)
  {
    v40 = 0;
LABEL_5:
    v101 = v40;
    v102 = v39;
    v41 = v72;
    v70(v72, 1, 1, v71);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySdGMd);
    *&v104 = v31;
    *(&v104 + 1) = v30;
    v105 = v32;
    v106 = v33;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &_sSNySdGMd);
    v45 = v75;
    v46 = v74;
    v47 = v96;
    View.chartYScale<A>(domain:type:)();
    _s7SwiftUI4FontV6DesignOSgWOhTm_10(v41, &_s6Charts9ScaleTypeVSgMd);
    v48 = (*(v73 + 8))(v47, v46);
    v96 = v69;
    MEMORY[0x28223BE20](v48);
    v49 = v97;
    v69[-2] = v97;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9AxisMarksVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo__AG5ColorVQo_GMd);
    *&v104 = v46;
    *(&v104 + 1) = v42;
    v105 = v43;
    v106 = v44;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo__AG5ColorVQo_GMd);
    v52 = v79;
    v53 = v77;
    View.chartYAxis<A>(content:)();
    (*(v76 + 8))(v45, v53);
    v100 = *v49;
    v54 = v86;
    outlined init with copy of SessionChart(v49, v86);
    v55 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v56 = swift_allocObject();
    outlined init with take of SessionChart(v54, v56 + v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd);
    *&v104 = v53;
    *(&v104 + 1) = v95;
    v105 = v50;
    v106 = v51;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance <A> [A]();
    v57 = v78;
    v58 = v83;
    View.onChange<A>(of:initial:_:)();

    (*(v82 + 8))(v52, v58);
    LOBYTE(v49) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v87;
    (*(v80 + 32))(v87, v57, v81);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAE6ChartsE10chartYAxis7contentQrqd__yXE_tAI04AxisD0Rd__lFQOyAeIE0K6YScale6domain4typeQrqd___AI9ScaleTypeVSgtAI0R6DomainRd__lFQOyAeIE0K5XAxisAKQrqd__yXE_tAiLRd__lFQOyAeIE0K6XScaleAnOQrqd___ARtAiSRd__lFQOyAeAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAA012_ConditionalD0VyAI5ChartVyAA7ForEachVySay11WorkoutCore23WorkoutChartDataElementCGSiAI12BuilderTupleVyAI05ChartD0PAIE28alignsMarkStylesWithPlotAreayQrSbFQOyA9_AIE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAI8AreaMarkV_AA14LinearGradientVQo__Qo__A9_AIE9lineStyleyQrAA11StrokeStyleVFQOyA9_AIEA11_yQrqd__AAA12_Rd__lFQOyAI8LineMarkV_AA5ColorVQo__Qo_A9_AIEA11_yQrqd__AAA12_Rd__lFQOyA9_AIE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyA9_AIE6symbolyQrqd__AI16ChartSymbolShapeRd__lFQOyAI9PointMarkV_AA6CircleVQo__Qo__A25_Qo_QPGGGA_yA1_yA5_SiA9_AIEA19_yQrA21_FQOyA9_AIEA11_yQrqd__AAA12_Rd__lFQOyAI8RuleMarkV_A25_Qo__Qo_GGG_AYyAA4TextVA50_GQo__SNy10Foundation4DateVGQo__AI0N5MarksVyAI07BuilderZ0VyA63_yA7_yAI0N4MarkPAIEA11_yQrqd__AAA12_Rd__lFQOyA65_AIE4fontyQrAA4FontVSgFQOyAI0N10ValueLabelVyA52_G_Qo__A25_Qo__A65_AIEA11_yQrqd__AAA12_Rd__lFQOyAI0N8GridLineV_A25_Qo_SgQPGA74_GA78_GGQo__SNySdGQo__A61_yA65_AIEA11_yQrqd__AAA12_Rd__lFQOyA65_AIEA66_yQrA69_FQOyA71_ys5NeverOG_Qo__A25_Qo_GQo__A5_Qo_AA14_PaddingLayoutVGMd);
    v68 = v67 + *(result + 36);
    *v68 = v49;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SessionChart.chart.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA0B7ContentPAAE9lineStyleyQrAD06StrokeM0VFQOyAlAE010foregroundM0yQrqd__AD05ShapeM0Rd__lFQOyAA8RuleMarkV_AD5ColorVQo__Qo_GGMd);
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v29 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0jG11DataElementCGSiAF12BuilderTupleVyAF0gD0PAFE28alignsMarkStylesWithPlotAreayQrSbFQOyArFE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAF0uQ0V_AA14LinearGradientVQo__Qo__ArFE04lineW0yQrAA06StrokeW0VFQOyArFEATyQrqd__AaURd__lFQOyAF04LineQ0V_AA5ColorVQo__Qo_ArFEATyQrqd__AaURd__lFQOyArFE10symbolSizeyQr0K8Graphics7CGFloatVFQOyArFE6symbolyQrqd__AF0g6SymbolX0Rd__lFQOyAF05PointQ0V_AA6CircleVQo__Qo__A6_Qo_QPGGGAHyAJyANSiArFEA0_yQrA2_FQOyArFEATyQrqd__AaURd__lFQOyAF04RuleQ0V_A6_Qo__Qo_GG_GMd);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - v4;
  v5 = type metadata accessor for SessionChart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA12BuilderTupleVyAA0B7ContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAnAE15foregroundStyleyQrqd__AD05ShapeU0Rd__lFQOyAA0sO0V_AD14LinearGradientVQo__Qo__AnAE04lineU0yQrAD06StrokeU0VFQOyAnAEAPyQrqd__AdQRd__lFQOyAA04LineO0V_AD5ColorVQo__Qo_AnAEAPyQrqd__AdQRd__lFQOyAnAE10symbolSizeyQr0H8Graphics7CGFloatVFQOyAnAE6symbolyQrqd__AA0b6SymbolV0Rd__lFQOyAA05PointO0V_AD6CircleVQo__Qo__A2_Qo_QPGGGMd);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for WorkoutChartProperties.ChartType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutChartProperties.chartType.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D7DA98])
  {
    v36 = *v1;
    outlined init with copy of SessionChart(v1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    outlined init with take of SessionChart(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAeAE15foregroundStyleyQrqd__7SwiftUI05ShapeM0Rd__lFQOyAA0kG0V_AH14LinearGradientVQo__Qo__AeAE04lineM0yQrAH06StrokeM0VFQOyAeAEAGyQrqd__AhIRd__lFQOyAA04LineG0V_AH5ColorVQo__Qo_AeAEAGyQrqd__AhIRd__lFQOyAeAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAeAE0W0yQrqd__AA0d6SymbolP0Rd__lFQOyAA05PointG0V_AH6CircleVQo__Qo__AVQo_QPGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance [A], &_sSay11WorkoutCore0A16ChartDataElementCGMd);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type WorkoutChartDataElement and conformance WorkoutChartDataElement, MEMORY[0x277D7DAC0]);
    Chart.init<A, B>(_:content:)();
    v18 = v29;
    (*(v29 + 16))(v32, v10, v8);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA12BuilderTupleVyAA0B7ContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAnAE15foregroundStyleyQrqd__AD05ShapeU0Rd__lFQOyAA0sO0V_AD14LinearGradientVQo__Qo__AnAE04lineU0yQrAD06StrokeU0VFQOyAnAEAPyQrqd__AdQRd__lFQOyAA04LineO0V_AD5ColorVQo__Qo_AnAEAPyQrqd__AdQRd__lFQOyAnAE10symbolSizeyQr0H8Graphics7CGFloatVFQOyAnAE6symbolyQrqd__AA0b6SymbolV0Rd__lFQOyAA05PointO0V_AD6CircleVQo__Qo__A2_Qo_QPGGGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA0B7ContentPAAE9lineStyleyQrAD06StrokeM0VFQOyAlAE010foregroundM0yQrqd__AD05ShapeM0Rd__lFQOyAA8RuleMarkV_AD5ColorVQo__Qo_GGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v10, v8);
  }

  else
  {
    v20 = v6;
    v29 = v8;
    v21 = v32;
    if (v15 == *MEMORY[0x277D7DA90])
    {
      v40 = *v2;
      outlined init with copy of SessionChart(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v23 = swift_allocObject();
      outlined init with take of SessionChart(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
      lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance [A], &_sSay11WorkoutCore0A16ChartDataElementCGMd);
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
      v36 = type metadata accessor for RuleMark();
      v37 = MEMORY[0x277CE0F78];
      v38 = MEMORY[0x277CBB450];
      v39 = MEMORY[0x277CE0F60];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v36 = v24;
      v37 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type WorkoutChartDataElement and conformance WorkoutChartDataElement, MEMORY[0x277D7DAC0]);
      v26 = v30;
      Chart.init<A, B>(_:content:)();
      v27 = v31;
      v28 = v34;
      (*(v31 + 16))(v21, v26, v34);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA12BuilderTupleVyAA0B7ContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAnAE15foregroundStyleyQrqd__AD05ShapeU0Rd__lFQOyAA0sO0V_AD14LinearGradientVQo__Qo__AnAE04lineU0yQrAD06StrokeU0VFQOyAnAEAPyQrqd__AdQRd__lFQOyAA04LineO0V_AD5ColorVQo__Qo_AnAEAPyQrqd__AdQRd__lFQOyAnAE10symbolSizeyQr0H8Graphics7CGFloatVFQOyAnAE6symbolyQrqd__AA0b6SymbolV0Rd__lFQOyAA05PointO0V_AD6CircleVQo__Qo__A2_Qo_QPGGGMd);
      lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA0B7ContentPAAE9lineStyleyQrAD06StrokeM0VFQOyAlAE010foregroundM0yQrqd__AD05ShapeM0Rd__lFQOyAA8RuleMarkV_AD5ColorVQo__Qo_GGMd);
      _ConditionalContent<>.init(storage:)();
      return (*(v27 + 8))(v26, v28);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in SessionChart.body.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVACy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0kH11DataElementCGSiAH12BuilderTupleVyAH0hD0PAHE28alignsMarkStylesWithPlotAreayQrSbFQOyAtHE15foregroundStyleyQrqd__AA05ShapeX0Rd__lFQOyAH0vR0V_AA14LinearGradientVQo__Qo__AtHE04lineX0yQrAA06StrokeX0VFQOyAtHEAVyQrqd__AaWRd__lFQOyAH04LineR0V_AA5ColorVQo__Qo_AtHEAVyQrqd__AaWRd__lFQOyAtHE10symbolSizeyQr0L8Graphics7CGFloatVFQOyAtHE6symbolyQrqd__AH0h6SymbolY0Rd__lFQOyAH05PointR0V_AA6CircleVQo__Qo__A8_Qo_QPGGGAJyALyAPSiAtHEA2_yQrA4_FQOyAtHEAVyQrqd__AaWRd__lFQOyAH04RuleR0V_A8_Qo__Qo_GGG_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (*a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    SessionChart.chart.getter(v4);
    outlined init with copy of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v4, v7, &_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>(v4, &_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x41565F4F4E5F5841;
  v10._object = 0xEB0000000045554CLL;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v19);

  v18 = v13;
  lazy protocol witness table accessor for type String and conformance String();
  *v7 = Text.init<A>(_:)();
  *(v7 + 1) = v14;
  v7[16] = v15 & 1;
  *(v7 + 3) = v16;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA12BuilderTupleVyAA0B7ContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAnAE15foregroundStyleyQrqd__AD05ShapeU0Rd__lFQOyAA0sO0V_AD14LinearGradientVQo__Qo__AnAE04lineU0yQrAD06StrokeU0VFQOyAnAEAPyQrqd__AdQRd__lFQOyAA04LineO0V_AD5ColorVQo__Qo_AnAEAPyQrqd__AdQRd__lFQOyAnAE10symbolSizeyQr0H8Graphics7CGFloatVFQOyAnAE6symbolyQrqd__AA0b6SymbolV0Rd__lFQOyAA05PointO0V_AD6CircleVQo__Qo__A2_Qo_QPGGGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySay11WorkoutCore0gB11DataElementCGSiAA0B7ContentPAAE9lineStyleyQrAD06StrokeM0VFQOyAlAE010foregroundM0yQrqd__AD05ShapeM0Rd__lFQOyAA8RuleMarkV_AD5ColorVQo__Qo_GGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVACy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0jG11DataElementCGSiAF12BuilderTupleVyAF0gD0PAFE28alignsMarkStylesWithPlotAreayQrSbFQOyArFE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAF0uQ0V_AA14LinearGradientVQo__Qo__ArFE04lineW0yQrAA06StrokeW0VFQOyArFEATyQrqd__AaURd__lFQOyAF04LineQ0V_AA5ColorVQo__Qo_ArFEATyQrqd__AaURd__lFQOyArFE10symbolSizeyQr0K8Graphics7CGFloatVFQOyArFE6symbolyQrqd__AF0g6SymbolX0Rd__lFQOyAF05PointQ0V_AA6CircleVQo__Qo__A6_Qo_QPGGGAHyAJyANSiArFEA0_yQrA2_FQOyArFEATyQrqd__AaURd__lFQOyAF04RuleQ0V_A6_Qo__Qo_GGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t SessionChart.xDomainRange.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  if (*(v1 + *(type metadata accessor for SessionChart(0) + 40)) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
    return State.wrappedValue.getter();
  }

  v33 = a1;
  v16 = *v1;
  if (v16 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_29;
    }

LABEL_4:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x20F30C990](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v17 = *(v16 + 32);
    }

    v32 = v17;
    if (v16 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
      goto LABEL_28;
    }

    v20 = __OFSUB__(v18, 1);
    v21 = v18 - 1;
    if (!v20)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x20F30C990](v21, v16);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v21 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_27:
          __break(1u);
LABEL_28:

          goto LABEL_29;
        }

        v22 = *(v16 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v32;
      dispatch thunk of WorkoutChartDataElement.date.getter();
      dispatch thunk of WorkoutChartDataElement.date.getter();
      lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v25 = dispatch thunk of static Comparable.<= infix(_:_:)();

      if (v25)
      {
        v26 = *(v10 + 32);
        v26(v8, v15, v9);
        v26(&v8[*(v3 + 48)], v12, v9);
        _sSNy10Foundation4DateVGWOcTm_0(v8, v5, &_s10Foundation4DateV5lower_AC5uppertMd);
        v27 = *(v3 + 48);
        v28 = v33;
        v26(v33, v5, v9);
        v29 = *(v10 + 8);
        v29(&v5[v27], v9);
        outlined init with take of (lower: Date, upper: Date)(v8, v5);
        v30 = *(v3 + 48);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
        v26(&v28[*(v31 + 36)], &v5[v30], v9);
        return (v29)(v5, v9);
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_29:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #2 in SessionChart.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for SessionChart(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  SessionChart.xAxisValues.getter();
  outlined init with copy of SessionChart(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of SessionChart(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0E10ValueLabelVyAI4TextVG_Qo__AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAA0E8GridLineV_AVQo_SgQPGAWGA_GMd);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?> and conformance <> BuilderConditional<A, B>();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #3 in SessionChart.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for SessionChart(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  SessionChart.yAxisValues.getter();
  outlined init with copy of SessionChart(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of SessionChart(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE4fontyQrAE4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo__AE5ColorVQo_Md);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo_Md);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts14AxisValueLabelVys5NeverOGMd);
  v11 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVys5NeverOGMd);
  v14 = v10;
  v15 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v9;
  v15 = MEMORY[0x277CE0F78];
  v16 = OpaqueTypeConformance2;
  v17 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t closure #4 in SessionChart.body.getter(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SessionChartState(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = type metadata accessor for SessionChart(0);
  stateFor(data:chartProperties:)(v15, a3 + *(v16 + 20), v14);
  _sSNy10Foundation4DateVGWOcTm_0(v14, v10, &_sSNy10Foundation4DateVGMd);
  _sSNy10Foundation4DateVGWOcTm_0(v10, v7, &_sSNy10Foundation4DateVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
  State.wrappedValue.setter();
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v10, &_sSNy10Foundation4DateVGMd);
  v17 = &v14[*(v12 + 28)];
  v18 = v17[16];
  v19 = (a3 + *(v16 + 36));
  v20 = *(v19 + 16);
  v21 = *(v19 + 3);
  v25 = *v19;
  v26 = v20;
  v27 = v21;
  v23 = *v17;
  v24 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNySdGSgGMd);
  State.wrappedValue.setter();
  outlined destroy of SessionChartState(v14);
}

uint64_t outlined init with copy of SessionChart(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionChart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SessionChart(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionChart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in SessionChart.body.getter(uint64_t a1, unint64_t *a2)
{
  v5 = *(type metadata accessor for SessionChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #4 in SessionChart.body.getter(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd);
    lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type WorkoutChartDataElement and conformance NSObject, MEMORY[0x277D7DAC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance <A> [A]);
  }

  return result;
}

uint64_t SessionChart.pointMark(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v117 = type metadata accessor for PointMark();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v112 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolyQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_7SwiftUI6CircleVQo_Md);
  v116 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v114 = &v94 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAcAE0D0yQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_7SwiftUI6CircleVQo__Qo_Md);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v94 - v5;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAcAE0I0yQrqd__AA0b6SymbolH0Rd__lFQOyAA9PointMarkV_AE6CircleVQo__Qo__AE5ColorVQo_Md);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v94 - v8;
  v107 = type metadata accessor for LineMark();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8LineMarkV_AE5ColorVQo_Md);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v94 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8LineMarkV_AE5ColorVQo__Qo_Md);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v138 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v14 - 8);
  v134 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &v94 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v22 - 8);
  v132 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v99 = type metadata accessor for AreaMark();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE14LinearGradientVQo_Md);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v94 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeK0Rd__lFQOyAA0iE0V_AF14LinearGradientVQo__Qo_Md);
  v110 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v140 = &v94 - v31;
  LocalizedStringKey.init(stringLiteral:)();
  v141 = a1;
  dispatch thunk of WorkoutChartDataElement.date.getter();
  v96 = v26;
  static PlottableValue.value(_:_:)();

  v32 = *(v19 + 8);
  v130 = v21;
  v133 = v18;
  v131 = v19 + 8;
  v129 = v32;
  v32(v21, v18);
  LocalizedStringKey.init(stringLiteral:)();
  v33 = type metadata accessor for SessionChart(0);
  v34 = v139;
  v35 = (v139 + *(v33 + 36));
  v36 = *(v35 + 16);
  v37 = *(v35 + 3);
  v150 = *v35;
  LOBYTE(v151) = v36;
  *(&v151 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNySdGSgGMd);
  State.wrappedValue.getter();
  if (v148 == 1)
  {
    WorkoutChartProperties.minimumValueRange.getter();
    v38 = 0;
    if (v39 >= 0.0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v38 = v147;
LABEL_5:
  *&v150 = v38;
  static PlottableValue.value(_:_:)();

  v128 = v34 + *(v33 + 20);
  *&v150 = WorkoutChartProperties.valuesName.getter();
  *(&v150 + 1) = v40;
  dispatch thunk of WorkoutChartDataElement.value.getter();
  *&v147 = v41;
  v127 = lazy protocol witness table accessor for type String and conformance String();
  v95 = v33;
  static PlottableValue.value<A>(_:_:)();

  v42 = v97;
  v43 = v133;
  AreaMark.init<A, B>(x:yStart:yEnd:)();
  SessionChart.gradient.getter(&v147);
  v150 = v147;
  v151 = v148;
  v152 = v149;
  v44 = MEMORY[0x277CDF838];
  v45 = MEMORY[0x277CBB408];
  v46 = MEMORY[0x277CDF828];
  v47 = v98;
  v48 = v99;
  ChartContent.foregroundStyle<A>(_:)();
  outlined destroy of LinearGradient(&v147);
  (*(v100 + 8))(v42, v48);
  *&v150 = v48;
  *(&v150 + 1) = v44;
  *&v151 = v45;
  *(&v151 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v102;
  ChartContent.alignsMarkStylesWithPlotArea(_:)();
  (*(v101 + 8))(v47, v49);
  LocalizedStringKey.init(stringLiteral:)();
  v50 = v130;
  dispatch thunk of WorkoutChartDataElement.date.getter();
  static PlottableValue.value(_:_:)();

  v129(v50, v43);
  *&v150 = WorkoutChartProperties.valuesName.getter();
  *(&v150 + 1) = v51;
  dispatch thunk of WorkoutChartDataElement.value.getter();
  v143 = v52;
  static PlottableValue.value<A>(_:_:)();

  v53 = v104;
  LineMark.init<A, B>(x:y:)();
  v54 = *(v34 + *(v95 + 24) + 48);
  if (!v54)
  {
    v55 = [objc_opt_self() whiteColor];
    v54 = 0;
  }

  v56 = v109;
  v57 = v108;
  v58 = v54;
  *&v150 = Color.init(uiColor:)();
  v59 = MEMORY[0x277CBB438];
  v60 = v106;
  v61 = v107;
  v62 = MEMORY[0x277CE0F78];
  v63 = MEMORY[0x277CE0F60];
  ChartContent.foregroundStyle<A>(_:)();

  (*(v105 + 8))(v53, v61);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v143 = v61;
  v144 = v62;
  v145 = v59;
  v146 = v63;
  swift_getOpaqueTypeConformance2();
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v150);
  (*(v57 + 8))(v60, v56);
  LocalizedStringKey.init(stringLiteral:)();
  v64 = v130;
  v65 = v141;
  dispatch thunk of WorkoutChartDataElement.date.getter();
  v66 = v133;
  static PlottableValue.value(_:_:)();

  v129(v64, v66);
  v143 = WorkoutChartProperties.valuesName.getter();
  v144 = v67;
  dispatch thunk of WorkoutChartDataElement.value.getter();
  v142 = v68;
  static PlottableValue.value<A>(_:_:)();

  v69 = v112;
  PointMark.init<A, B>(x:y:)();
  v70 = lazy protocol witness table accessor for type Circle and conformance Circle();
  v71 = MEMORY[0x277CE1120];
  v72 = MEMORY[0x277CBB468];
  v73 = v114;
  v74 = v117;
  ChartContent.symbol<A>(_:)();
  (*(v115 + 8))(v69, v74);
  WorkoutChartProperties.markWidth.getter();
  v143 = v74;
  v144 = v71;
  v145 = v72;
  v146 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v118;
  v77 = v120;
  ChartContent.symbolSize(_:)();
  (*(v116 + 8))(v73, v77);
  v142 = SessionChart.markColor(_:)(v65);
  v143 = v77;
  v144 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v78 = v119;
  v79 = v122;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v121 + 8))(v76, v79);
  v80 = v110;
  v81 = v135;
  (*(v110 + 16))(v135, v140, v136);
  v143 = v81;
  v82 = v111;
  v83 = v138;
  v84 = v137;
  v85 = v113;
  (*(v111 + 16))(v138, v137, v113);
  v144 = v83;
  v86 = v124;
  v87 = v123;
  v88 = v125;
  (*(v124 + 16))(v123, v78, v125);
  v145 = v87;
  _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAfAE15foregroundStyleyQrqd__7SwiftUI05ShapeN0Rd__lFQOyAA0lH0V_AI14LinearGradientVQo__Qo__AfAE04lineN0yQrAI06StrokeN0VFQOyAfAEAHyQrqd__AiJRd__lFQOyAA04LineH0V_AI5ColorVQo__Qo_AfAEAHyQrqd__AiJRd__lFQOyAfAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAfAE0X0yQrqd__AA0b6SymbolQ0Rd__lFQOyAA05PointH0V_AI6CircleVQo__Qo__AWQo_QP_Tt1g5(&v143, v126);
  v89 = *(v86 + 8);
  v89(v78, v88);
  v90 = *(v82 + 8);
  v90(v84, v85);
  v91 = *(v80 + 8);
  v92 = v136;
  v91(v140, v136);
  v89(v87, v88);
  v90(v138, v85);
  return (v91)(v135, v92);
}

uint64_t SessionChart.barMark(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37[1] = v37 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v37 - v14;
  v42 = type metadata accessor for RuleMark();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
  v43 = *(v17 - 8);
  v44 = v17;
  MEMORY[0x28223BE20](v17);
  v41 = v37 - v18;
  LocalizedStringKey.init(stringLiteral:)();
  v45 = a1;
  dispatch thunk of WorkoutChartDataElement.date.getter();
  v37[2] = v15;
  static PlottableValue.value(_:_:)();

  (*(v10 + 8))(v12, v9);
  v19 = type metadata accessor for SessionChart(0);
  v51 = WorkoutChartProperties.valuesName.getter();
  v52 = v20;
  v21 = (v3 + *(v19 + 36));
  v22 = *(v21 + 16);
  v23 = *(v21 + 3);
  v53 = *v21;
  v54 = v22;
  v55 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNySdGSgGMd);
  State.wrappedValue.getter();
  if (v49 != 1)
  {
    goto LABEL_4;
  }

  WorkoutChartProperties.minimumValueRange.getter();
  v24 = 0;
  if (v25 < 0.0)
  {
    __break(1u);
LABEL_4:
    v24 = v47;
  }

  *&v53 = v24;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  *&v53 = WorkoutChartProperties.valuesName.getter();
  *(&v53 + 1) = v26;
  v27 = v45;
  dispatch thunk of WorkoutChartDataElement.value.getter();
  v47 = v28;
  static PlottableValue.value<A>(_:_:)();

  v29 = v38;
  RuleMark.init<A, B>(x:yStart:yEnd:)();
  *&v53 = SessionChart.markColor(_:)(v27);
  v30 = MEMORY[0x277CE0F78];
  v31 = MEMORY[0x277CBB450];
  v32 = MEMORY[0x277CE0F60];
  v34 = v41;
  v33 = v42;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v39 + 8))(v29, v33);
  WorkoutChartProperties.markWidth.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v47 = v33;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v53);
  return (*(v43 + 8))(v34, v35);
}

unint64_t SessionChart.markColor(_:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + *(type metadata accessor for SessionChart(0) + 24));
  if (!v4)
  {
  }

  v5 = v4;
  if ((WorkoutChartProperties.highlightLatestSample.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = *v1;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_5:
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else if ((v6 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v6 + 8 * result + 32);
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x20F30C990](result, v6);
LABEL_10:
  v11 = v10;
  type metadata accessor for WorkoutChartDataElement();
  v12 = a1;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  return Color.init(uiColor:)();
}

char *SessionChart.xAxisValues.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v46);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v45 = *(v2 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CB5DA70;
  v47 = type metadata accessor for SessionChart(0);
  v49 = *(v47 + 32);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
  State.wrappedValue.getter();
  v19 = *(v3 + 16);
  v44 = v17;
  v51 = v18;
  v19(v18 + v17, v16, v1);
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v16, &_sSNy10Foundation4DateVGMd);
  WorkoutChartProperties.timeWindow.getter();
  v20 = v19;
  WorkoutChartProperties.horizontalSections.getter();
  v47 = v0;
  State.wrappedValue.getter();
  v19(v9, v16, v1);
  v43 = v16;
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v16, &_sSNy10Foundation4DateVGMd);
  Date.addingTimeInterval(_:)();
  v23 = *(v3 + 8);
  v22 = v3 + 8;
  v21 = v23;
  v23(v9, v1);
  v41 = v19;
  v42 = (v22 + 24);
  while (1)
  {
    v24 = v43;
    State.wrappedValue.getter();
    v20(v9, v24 + *(v46 + 36), v1);
    _s7SwiftUI4FontV6DesignOSgWOhTm_10(v24, &_sSNy10Foundation4DateVGMd);
    v25 = static Date.< infix(_:_:)();
    v21(v9, v1);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = v22;
    v20(v50, v12, v1);
    v27 = v51;
    v29 = v51[2];
    v28 = v51[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v51);
    }

    v27[2] = v29 + 1;
    v51 = v27;
    v30 = v27 + v44 + v29 * v45;
    v31 = *v42;
    (*v42)(v30, v50, v1);
    Date.addingTimeInterval(_:)();
    v21(v12, v1);
    v31(v12, v9, v1);
    v22 = v26;
    v20 = v41;
  }

  v32 = v39;
  State.wrappedValue.getter();
  v33 = v40;
  v20(v40, v32 + *(v46 + 36), v1);
  _s7SwiftUI4FontV6DesignOSgWOhTm_10(v32, &_sSNy10Foundation4DateVGMd);
  v34 = v51;
  v36 = v51[2];
  v35 = v51[3];
  if (v36 >= v35 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v51);
  }

  v21(v12, v1);
  *(v34 + 2) = v36 + 1;
  (*v42)(&v34[v44 + v36 * v45], v33, v1);
  return v34;
}

uint64_t closure #1 in SessionChart.xAxisMarks.getter@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0E10ValueLabelVyAI4TextVG_Qo__AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAA0E8GridLineV_AVQo_SgQPGAWGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v35 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE4fontyQrAE4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo__AE5ColorVQo__AcAEADyQrqd__AeFRd__lFQOyAA0B8GridLineV_ARQo_SgtMd);
  MEMORY[0x28223BE20](v37);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0D10ValueLabelVyAG4TextVG_Qo__AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAA0D8GridLineV_ATQo_SgQPGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE4fontyQrAE4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo__AE5ColorVQo_Md);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v22 = AxisValue.index.getter();
  if (!v22)
  {
    SessionChart.timeAgoAxisLabel.getter(v21);
    SessionChart.gridLine.getter(v14);
    v29 = *(v16 + 16);
    v29(v18, v21, v15);
    v36 = v11;
    v38 = v8;
    outlined init with copy of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v14, v11, &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
    v29(v5, v18, v15);
    lazy protocol witness table accessor for type (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)? and conformance <A> A?();
    v30 = v37;
    v31 = *(v37 + 48);
    outlined init with copy of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v11, &v5[v31], &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
    v32 = v38;
    (*(v16 + 32))(v38, v5, v15);
    outlined init with take of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(&v5[v31], v32 + *(v30 + 48), &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
    outlined destroy of _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>(v14, &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
    v33 = *(v16 + 8);
    v33(v21, v15);
    outlined destroy of _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>(v36, &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
    v33(v18, v15);
    v34 = v39;
    outlined init with take of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v32, v39, &_s6Charts12BuilderTupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0D10ValueLabelVyAG4TextVG_Qo__AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAA0D8GridLineV_ATQo_SgQPGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0F10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0F8GridLineV_AXQo_SgQPGAY_GMd);
    swift_storeEnumTagMultiPayload();
    v27 = v34;
    v28 = v40;
    goto LABEL_6;
  }

  v23 = v22;
  v24 = v39;
  v25 = v40;
  result = AxisValue.count.getter();
  if (!__OFSUB__(result, 1))
  {
    if (result - 1 != v23)
    {
      SessionChart.gridLine.getter(v14);
      outlined init with take of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v14, v25, &_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_SgMd);
      goto LABEL_8;
    }

    SessionChart.nowAxisLabel.getter(v21);
    (*(v16 + 32))(v24, v21, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0F10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0F8GridLineV_AXQo_SgQPGAY_GMd);
    swift_storeEnumTagMultiPayload();
    v27 = v24;
    v28 = v25;
LABEL_6:
    outlined init with take of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(v27, v28, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0E10ValueLabelVyAI4TextVG_Qo__AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAA0E8GridLineV_AVQo_SgQPGAWGMd);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0F10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0F8GridLineV_AXQo_SgQPGAYGA1__GMd);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t SessionChart.timeAgoAxisLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo_Md);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - v8;
  v66 = type metadata accessor for Date();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for WorkoutChartProperties.ChartType();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SessionChart(0);
  v24 = v1;
  v65 = *(v23 + 20);
  WorkoutChartProperties.chartType.getter();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == *MEMORY[0x277D7DA98])
  {
    v65 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
    v64 = v1;
    State.wrappedValue.getter();
    v26 = *(v13 + 36);
    v27 = v68;
    v28 = v68 + 16;
    v29 = *(v68 + 16);
    v30 = v66;
    (v29)(v12, &v18[v26], v66);
    _s7SwiftUI4FontV6DesignOSgWOhTm_10(v18, &_sSNy10Foundation4DateVGMd);
    v31 = v64;
    State.wrappedValue.getter();
    v32 = v67;
    (v29)(v67, v15, v30);
    _s7SwiftUI4FontV6DesignOSgWOhTm_10(v15, &_sSNy10Foundation4DateVGMd);
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v36 = *(v27 + 8);
    v24 = v27 + 8;
    v35 = v36;
    (v36)(v32, v30);
    (v36)(v12, v30);
    v37 = round(v34 / 60.0);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v24 = v31;
          v28 = v37;
          v35 = "ELLIGENCE_VEGA_DISABLED_ERROR";
          if (one-time initialization token for WorkoutUIBundle == -1)
          {
LABEL_6:
            swift_beginAccess();
            v38 = WorkoutUIBundle.super.isa;
            v82._object = 0xE000000000000000;
            v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v39.value._object = 0xEB00000000656C62;
            v40._object = (v35 | 0x8000000000000000);
            v40._countAndFlagsBits = 0xD000000000000016;
            v41._countAndFlagsBits = 0;
            v41._object = 0xE000000000000000;
            v81._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v81);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v42 = swift_allocObject();
            v43 = MEMORY[0x277D83B88];
            *(v42 + 16) = xmmword_20CB5DA70;
            v44 = MEMORY[0x277D83C10];
            *(v42 + 56) = v43;
            *(v42 + 64) = v44;
            *(v42 + 32) = v28;
            static String.localizedStringWithFormat(_:_:)();

            v29 = v65;
LABEL_13:
            MEMORY[0x28223BE20](v45);
            static AxisValueLabelCollisionResolution.automatic.getter();
            static AxisValueLabelOrientation.automatic.getter();
            v62 = MEMORY[0x277CE0BC8];
            v61[1] = v61;
            v82._object = MEMORY[0x277CE0BD8];
            v61[0] = partial apply for closure #1 in SessionChart.timeAgoAxisLabel.getter;
            v53 = v71;
            AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

            v54 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
            v56 = v73;
            v55 = v74;
            AxisMark.font(_:)();
            (*(v72 + 8))(v53, v55);
            v57 = *(v24 + *(v29 + 24) + 24);
            v58 = Color.init(uiColor:)();
            v79 = v54;
            v80 = v58;
            v78 = v55;
            swift_getOpaqueTypeConformance2();
            v59 = v76;
            AxisMark.foregroundStyle<A>(_:)();

            return (*(v75 + 8))(v56, v59);
          }

LABEL_21:
          swift_once();
          goto LABEL_6;
        }

        goto LABEL_19;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v25 == *MEMORY[0x277D7DA90])
  {
    v32 = "ELLIGENCE_VEGA_DISABLED_ERROR";
    v29 = v23;
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_9:
      swift_beginAccess();
      v46 = WorkoutUIBundle.super.isa;
      v82._object = 0xE000000000000000;
      v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v47.value._object = 0xEB00000000656C62;
      v48._object = (v32 | 0x8000000000000000);
      v48._countAndFlagsBits = 0xD000000000000016;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v82._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v47, v46, v49, v82);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_20CB5DA70;
      v35 = v24 + v65;
      WorkoutChartProperties.timeWindow.getter();
      v51 = round(v50 / 60.0);
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v51 > -9.22337204e18)
        {
          if (v51 < 9.22337204e18)
          {
            v52 = MEMORY[0x277D83C10];
            *(v28 + 56) = MEMORY[0x277D83B88];
            *(v28 + 64) = v52;
            *(v28 + 32) = v51;
            static String.localizedStringWithFormat(_:_:)();

            goto LABEL_13;
          }

          goto LABEL_20;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t SessionChart.gridLine.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for AxisGridLine();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA0B8GridLineV_AE5ColorVQo_Md);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - v7;
  v8 = type metadata accessor for WorkoutChartProperties.ChartType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for SessionChart(0);
  v26 = v1;
  WorkoutChartProperties.chartType.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D7DA98], v8);
  v16 = static WorkoutChartProperties.ChartType.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v34 = v31;
    v35 = v32;
    v36 = v33;
    AxisGridLine.init(centered:stroke:)();
    v18 = *(v26 + *(v15 + 24) + 16);
    v30 = Color.init(uiColor:)();
    v19 = v25;
    v20 = v28;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v27 + 8))(v4, v20);
    v21 = v29;
    (*(v6 + 32))(v29, v19, v5);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v23 = v29;
  }

  return (*(v6 + 56))(v23, v22, 1, v5);
}

uint64_t SessionChart.nowAxisLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo_Md);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v30._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._object = 0x800000020CB9C2D0;
  v12._countAndFlagsBits = 0xD000000000000011;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v30);

  v29 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedUppercase.getter();

  MEMORY[0x28223BE20](v15);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v23 = MEMORY[0x277CE0BC8];
  v22[1] = v22;
  v30._object = MEMORY[0x277CE0BD8];
  v22[0] = partial apply for closure #1 in SessionChart.nowAxisLabel.getter;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

  v16 = type metadata accessor for SessionChart(0);
  v17 = v26;
  v18 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
  AxisMark.font(_:)();
  (*(v4 + 8))(v6, v3);
  v19 = *(v17 + *(v16 + 24) + 24);
  v28 = Color.init(uiColor:)();
  v29._countAndFlagsBits = v3;
  v29._object = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  AxisMark.foregroundStyle<A>(_:)();

  return (*(v24 + 8))(v9, v20);
}

uint64_t closure #1 in SessionChart.timeAgoAxisLabel.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t SessionChart.yAxisValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB5DA80;
  type metadata accessor for SessionChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNySdGSgGMd);
  State.wrappedValue.getter();
  if (v7 == 1)
  {
    WorkoutChartProperties.minimumValueRange.getter();
    v1 = 0;
    if (v2 >= 0.0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v1 = v5;
LABEL_5:
  *(v0 + 32) = v1;
  State.wrappedValue.getter();
  if (v7 != 1)
  {
LABEL_8:
    v3 = v6;
    goto LABEL_9;
  }

  WorkoutChartProperties.minimumValueRange.getter();
  if (v3 < 0.0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  *(v0 + 40) = v3;
  return v0;
}

uint64_t closure #1 in SessionChart.yAxisMarks.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14AxisValueLabelVys5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo_Md);
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - v10;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v12 = type metadata accessor for SessionChart(0);
  v13 = lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVys5NeverOGMd);
  AxisMark.font(_:)();
  (*(v6 + 8))(v8, v5);
  v14 = *(a1 + *(v12 + 24) + 24);
  v15 = Color.init(uiColor:)();
  v22 = v13;
  v23 = v15;
  v21 = v5;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  AxisMark.foregroundStyle<A>(_:)();

  return (*(v9 + 8))(v11, v16);
}

void type metadata completion function for SessionChart()
{
  type metadata accessor for [WorkoutChartDataElement]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutChartProperties();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<ClosedRange<Date>>(319, &lazy cache variable for type metadata for State<ClosedRange<Date>>, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for State<ClosedRange<Date>>(319, &lazy cache variable for type metadata for State<ClosedRange<Double>?>, &_sSNySdGSgMd, &_sSNySdGSgMR, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [WorkoutChartDataElement]()
{
  if (!lazy cache variable for type metadata for [WorkoutChartDataElement])
  {
    type metadata accessor for WorkoutChartDataElement();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [WorkoutChartDataElement]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAE6ChartsE10chartYAxis7contentQrqd__yXE_tAI04AxisD0Rd__lFQOyAeIE0K6YScale6domain4typeQrqd___AI9ScaleTypeVSgtAI0R6DomainRd__lFQOyAeIE0K5XAxisAKQrqd__yXE_tAiLRd__lFQOyAeIE0K6XScaleAnOQrqd___ARtAiSRd__lFQOyAeAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAA012_ConditionalD0VyAI5ChartVyAA7ForEachVySay11WorkoutCore23WorkoutChartDataElementCGSiAI12BuilderTupleVyAI05ChartD0PAIE28alignsMarkStylesWithPlotAreayQrSbFQOyA9_AIE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAI8AreaMarkV_AA14LinearGradientVQo__Qo__A9_AIE9lineStyleyQrAA11StrokeStyleVFQOyA9_AIEA11_yQrqd__AAA12_Rd__lFQOyAI8LineMarkV_AA5ColorVQo__Qo_A9_AIEA11_yQrqd__AAA12_Rd__lFQOyA9_AIE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyA9_AIE6symbolyQrqd__AI16ChartSymbolShapeRd__lFQOyAI9PointMarkV_AA6CircleVQo__Qo__A25_Qo_QPGGGA_yA1_yA5_SiA9_AIEA19_yQrA21_FQOyA9_AIEA11_yQrqd__AAA12_Rd__lFQOyAI8RuleMarkV_A25_Qo__Qo_GGG_AYyAA4TextVA50_GQo__SNy10Foundation4DateVGQo__AI0N5MarksVyAI07BuilderZ0VyA63_yA7_yAI0N4MarkPAIEA11_yQrqd__AAA12_Rd__lFQOyA65_AIE4fontyQrAA4FontVSgFQOyAI0N10ValueLabelVyA52_G_Qo__A25_Qo__A65_AIEA11_yQrqd__AAA12_Rd__lFQOyAI0N8GridLineV_A25_Qo_SgQPGA74_GA78_GGQo__SNySdGQo__A61_yA65_AIEA11_yQrqd__AAA12_Rd__lFQOyA65_AIEA66_yQrA69_FQOyA71_ys5NeverOG_Qo__A25_Qo_GQo__A5_Qo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0M6DomainRd__lFQOyAcDE0E5XAxisAFQrqd__yXE_tAdGRd__lFQOyAcDE0E6XScaleAiJQrqd___AMtAdNRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalI0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0yV11DataElementCGSiAD12BuilderTupleVyAD0vI0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA4_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A4_ADE9lineStyleyQrAA11StrokeStyleVFQOyA4_ADEA6_yQrqd__AAA7_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A4_ADEA6_yQrqd__AAA7_Rd__lFQOyA4_ADE10symbolSizeyQr0Z8Graphics7CGFloatVFQOyA4_ADE6symbolyQrqd__AD0V11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A20_Qo_QPGGGAVyAXyA0_SiA4_ADEA14_yQrA16_FQOyA4_ADEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A20_Qo__Qo_GGG_ATyAA4TextVA45_GQo__SNy10Foundation4DateVGQo__AD0H5MarksVyAD07BuilderU0VyA58_yA2_yAD0H4MarkPADEA6_yQrqd__AAA7_Rd__lFQOyA60_ADE4fontyQrAA4FontVSgFQOyAD0H10ValueLabelVyA47_G_Qo__A20_Qo__A60_ADEA6_yQrqd__AAA7_Rd__lFQOyAD0H8GridLineV_A20_Qo_SgQPGA69_GA73_GGQo__SNySdGQo__A56_yA60_ADEA6_yQrqd__AAA7_Rd__lFQOyA60_ADEA61_yQrA64_FQOyA66_ys5NeverOG_Qo__A20_Qo_GQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5XAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6XScaleAfGQrqd___AJtAdKRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalO0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0xU11DataElementCGSiAD12BuilderTupleVyAD0uO0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA3_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A3_ADE9lineStyleyQrAA11StrokeStyleVFQOyA3_ADEA5_yQrqd__AAA6_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A3_ADEA5_yQrqd__AAA6_Rd__lFQOyA3_ADE10symbolSizeyQr0Y8Graphics7CGFloatVFQOyA3_ADE6symbolyQrqd__AD0U11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A19_Qo_QPGGGAUyAWyA_SiA3_ADEA13_yQrA15_FQOyA3_ADEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A19_Qo__Qo_GGG_ASyAA4TextVA44_GQo__SNy10Foundation4DateVGQo__AD0N5MarksVyAD07BuilderT0VyA57_yA1_yAD0N4MarkPADEA5_yQrqd__AAA6_Rd__lFQOyA59_ADE4fontyQrAA4FontVSgFQOyAD0N10ValueLabelVyA46_G_Qo__A19_Qo__A59_ADEA5_yQrqd__AAA6_Rd__lFQOyAD0N8GridLineV_A19_Qo_SgQPGA68_GA72_GGQo__SNySdGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts9AxisMarksVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo__AG5ColorVQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E6XScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0M6DomainRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA012_ConditionalI0VyAD5ChartVyAA7ForEachVySay11WorkoutCore0wT11DataElementCGSiAD12BuilderTupleVyAD0tI0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA2_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A2_ADE9lineStyleyQrAA11StrokeStyleVFQOyA2_ADEA4_yQrqd__AAA5_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A2_ADEA4_yQrqd__AAA5_Rd__lFQOyA2_ADE10symbolSizeyQr0X8Graphics7CGFloatVFQOyA2_ADE6symbolyQrqd__AD0T11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A18_Qo_QPGGGATyAVyAZSiA2_ADEA12_yQrA14_FQOyA2_ADEA4_yQrqd__AAA5_Rd__lFQOyAD8RuleMarkV_A18_Qo__Qo_GGG_ARyAA4TextVA43_GQo__SNy10Foundation4DateVGQo__AD0H5MarksVyAD07BuilderS0VyA56_yA0_yAD0H4MarkPADEA4_yQrqd__AAA5_Rd__lFQOyA58_ADE4fontyQrAA4FontVSgFQOyAD0H10ValueLabelVyA45_G_Qo__A18_Qo__A58_ADEA4_yQrqd__AAA5_Rd__lFQOyAD0H8GridLineV_A18_Qo_SgQPGA67_GA71_GGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySdGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE11chartXScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA19_ConditionalContentVyAD5ChartVyAA7ForEachVySay11WorkoutCore0tQ11DataElementCGSiAD12BuilderTupleVyAD0qP0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyA_ADE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA14LinearGradientVQo__Qo__A_ADE9lineStyleyQrAA11StrokeStyleVFQOyA_ADEA1_yQrqd__AAA2_Rd__lFQOyAD8LineMarkV_AA5ColorVQo__Qo_A_ADEA1_yQrqd__AAA2_Rd__lFQOyA_ADE10symbolSizeyQr0U8Graphics7CGFloatVFQOyA_ADE6symbolyQrqd__AD0Q11SymbolShapeRd__lFQOyAD9PointMarkV_AA6CircleVQo__Qo__A15_Qo_QPGGGAQyASyAWSiA_ADEA9_yQrA11_FQOyA_ADEA1_yQrqd__AAA2_Rd__lFQOyAD8RuleMarkV_A15_Qo__Qo_GGG_AOyAA4TextVA40_GQo__SNy10Foundation4DateVGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts9AxisMarksVyAA18BuilderConditionalVyAEyAA0D5TupleVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0B10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0B8GridLineV_AXQo_SgQPGAYGA1_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0mJ11DataElementCGSiAH12BuilderTupleVyAH0jH0PAHE28alignsMarkStylesWithPlotAreayQrSbFQOyAtHE15foregroundStyleyQrqd__AA05ShapeZ0Rd__lFQOyAH0xT0V_AA14LinearGradientVQo__Qo__AtHE04lineZ0yQrAA06StrokeZ0VFQOyAtHEAVyQrqd__AaWRd__lFQOyAH04LineT0V_AA5ColorVQo__Qo_AtHEAVyQrqd__AaWRd__lFQOyAtHE10symbolSizeyQr0N8Graphics7CGFloatVFQOyAtHE6symbolyQrqd__AH0J11SymbolShapeRd__lFQOyAH05PointT0V_AA6CircleVQo__Qo__A8_Qo_QPGGGAJyALyAPSiAtHEA2_yQrA4_FQOyAtHEAVyQrqd__AaWRd__lFQOyAH04RuleT0V_A8_Qo__Qo_GGG_AGyAA4TextVA33_GQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNy10Foundation4DateVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0iF11DataElementCGSiAD12BuilderTupleVyAD0fD0PADE28alignsMarkStylesWithPlotAreayQrSbFQOyApDE15foregroundStyleyQrqd__AA05ShapeV0Rd__lFQOyAD0tP0V_AA14LinearGradientVQo__Qo__ApDE04lineV0yQrAA06StrokeV0VFQOyApDEARyQrqd__AaSRd__lFQOyAD04LineP0V_AA5ColorVQo__Qo_ApDEARyQrqd__AaSRd__lFQOyApDE10symbolSizeyQr0J8Graphics7CGFloatVFQOyApDE6symbolyQrqd__AD0f6SymbolW0Rd__lFQOyAD05PointP0V_AA6CircleVQo__Qo__A4_Qo_QPGGGAFyAHyALSiApDEAZyQrA0_FQOyApDEARyQrqd__AaSRd__lFQOyAD04RuleP0V_A4_Qo__Qo_GGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVACy6Charts5ChartVyAA7ForEachVySay11WorkoutCore0jG11DataElementCGSiAF12BuilderTupleVyAF0gD0PAFE28alignsMarkStylesWithPlotAreayQrSbFQOyArFE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAF0uQ0V_AA14LinearGradientVQo__Qo__ArFE04lineW0yQrAA06StrokeW0VFQOyArFEATyQrqd__AaURd__lFQOyAF04LineQ0V_AA5ColorVQo__Qo_ArFEATyQrqd__AaURd__lFQOyArFE10symbolSizeyQr0K8Graphics7CGFloatVFQOyArFE6symbolyQrqd__AF0g6SymbolX0Rd__lFQOyAF05PointQ0V_AA6CircleVQo__Qo__A6_Qo_QPGGGAHyAJyANSiArFEA0_yQrA2_FQOyArFEATyQrqd__AaURd__lFQOyAF04RuleQ0V_A6_Qo__Qo_GGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &_sSNy10Foundation4DateVGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA18BuilderConditionalVyAEyAA0D5TupleVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeI0Rd__lFQOyAiAE4fontyQrAK4FontVSgFQOyAA0B10ValueLabelVyAK4TextVG_Qo__AK5ColorVQo__AiAEAJyQrqd__AkLRd__lFQOyAA0B8GridLineV_AXQo_SgQPGAYGA1_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &_sSNySdGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B4MarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0B10ValueLabelVys5NeverOG_Qo__AG5ColorVQo_GMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance <A> [A]();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for SessionChartState()
{
  type metadata accessor for ClosedRange<Date>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<ClosedRange<Date>>(319, &lazy cache variable for type metadata for ClosedRange<Double>?, &_sSNySdGMd, &_sSNySdGMR, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ClosedRange<Date>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

void type metadata accessor for State<ClosedRange<Date>>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm_54()
{
  v1 = (type metadata accessor for SessionChart(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = type metadata accessor for WorkoutChartProperties();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = (v2 + v1[8]);

  v6 = v2 + v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  v8(v6 + *(v9 + 36), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SessionChart.yAxisMarks.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SessionChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0E10ValueLabelVyAI4TextVG_Qo__AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAA0E8GridLineV_AVQo_SgQPGAWGA_GMd);
    lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    lazy protocol witness table accessor for type (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0>, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAgAE4fontyQrAI4FontVSgFQOyAA0E10ValueLabelVyAI4TextVG_Qo__AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAA0E8GridLineV_AVQo_SgQPGAWGMd);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}>, <<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA8AxisMarkPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAeAE4fontyQrAG4FontVSgFQOyAA0D10ValueLabelVyAG4TextVG_Qo__AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAA0D8GridLineV_ATQo_SgQPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts8AxisMarkPAAE4fontyQr7SwiftUI4FontVSgFQOyAA0B10ValueLabelVyAE4TextVG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
    lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI4TextVGMd);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0, (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t outlined destroy of _ConditionalContent<Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>>, Chart<ForEach<[WorkoutChartDataElement], Int, <<opaque return type of ChartContent.lineStyle(_:)>>.0>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (<<opaque return type of AxisMark.foregroundStyle<A>(_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Chart<ForEach<[WorkoutChartDataElement], Int, BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance Chart<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutChartDataElement and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAeAE15foregroundStyleyQrqd__7SwiftUI05ShapeM0Rd__lFQOyAA0kG0V_AH14LinearGradientVQo__Qo__AeAE04lineM0yQrAH06StrokeM0VFQOyAeAEAGyQrqd__AhIRd__lFQOyAA04LineG0V_AH5ColorVQo__Qo_AeAEAGyQrqd__AhIRd__lFQOyAeAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAeAE0W0yQrqd__AA0d6SymbolP0Rd__lFQOyAA05PointG0V_AH6CircleVQo__Qo__AVQo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE14LinearGradientVQo_Md);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8LineMarkV_AE5ColorVQo_Md);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAcAE0D0yQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_7SwiftUI6CircleVQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE6symbolyQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_7SwiftUI6CircleVQo_Md);
    type metadata accessor for PointMark();
    lazy protocol witness table accessor for type Circle and conformance Circle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.alignsMarkStylesWithPlotArea(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

Swift::Int VoiceCompanionSettingsConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoiceCompanionSettingsConfiguration()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoiceCompanionSettingsConfiguration()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type VoiceCompanionSettingsConfiguration and conformance VoiceCompanionSettingsConfiguration()
{
  result = lazy protocol witness table cache variable for type VoiceCompanionSettingsConfiguration and conformance VoiceCompanionSettingsConfiguration;
  if (!lazy protocol witness table cache variable for type VoiceCompanionSettingsConfiguration and conformance VoiceCompanionSettingsConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCompanionSettingsConfiguration and conformance VoiceCompanionSettingsConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCompanionSettingsConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VoiceCompanionSettingsConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static LayoutUtilities.deviceDependentValue<A>(compact38:regular42:junior40:senior44:aloeSmall41:aloeBig45:agave49:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = [objc_opt_self() currentDevice];
  v18 = specialized UIDevice.screenType.getter();

  if (v18 == 9)
  {
    v19 = a6;
  }

  else
  {
    v19 = a7;
  }

  if (v18 == 8)
  {
    v19 = a4;
  }

  if (v18 - 5 >= 2)
  {
    v20 = a2;
  }

  else
  {
    v20 = a5;
  }

  if (v18 <= 7u)
  {
    v19 = v20;
  }

  if (v18 >= 3u)
  {
    v21 = a3;
  }

  else
  {
    v21 = a1;
  }

  if (v18 <= 4u)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  v23 = *(*(a8 - 8) + 16);

  return v23(a9, v22, a8);
}

double static LayoutUtilities.layoutMetric(compact38:regular42:junior40:senior44:aloeSmall41:aloeBig45:agave49:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  v16 = specialized UIDevice.screenType.getter();

  if (v16 <= 4u)
  {
    if (v16 >= 3u)
    {
      a1 = a3;
    }
  }

  else if (v16 > 7u)
  {
    a1 = a4;
    if (v16 != 8)
    {
      a1 = a6;
      if (v16 != 9)
      {
        a1 = a7;
      }
    }
  }

  else
  {
    a1 = a5;
    if (v16 != 5 && v16 != 6)
    {
      a1 = a2;
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = [v17 mainScreen];
  [v21 nativeScale];
  v23 = v22;

  if (v20 != v23)
  {
    v24 = [v17 mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = [v17 mainScreen];
    [v27 nativeScale];
    v29 = v28;

    return a1 * (v26 / v29 * 0.95);
  }

  return a1;
}

BOOL UIDevice.isLargeDisplayZoomEnabled.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  return v3 != v6;
}

uint64_t specialized UIDevice.screenType.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  Height = CGRectGetHeight(v26);
  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = Height / v13;
  if (Height / v13 >= 0.0 && v14 <= 480.0)
  {
    return 0;
  }

  if (v14 >= 481.0 && v14 <= 568.0)
  {
    return 1;
  }

  if (v14 >= 569.0 && v14 <= 693.0)
  {
    return 2;
  }

  if (v14 >= 694.0 && v14 <= 736.0)
  {
    return 3;
  }

  if (v14 >= 737.0 && v14 <= 812.0)
  {
    return 4;
  }

  if (v14 >= 813.0 && v14 <= 844.0)
  {
    return 5;
  }

  if (v14 >= 845.0 && v14 <= 847.0)
  {
    return 6;
  }

  if (v14 >= 848.0 && v14 <= 852.0)
  {
    return 7;
  }

  if (v14 >= 853.0 && v14 <= 896.0)
  {
    return 8;
  }

  if (v14 > 926.0 || v14 < 897.0)
  {
    return 10;
  }

  else
  {
    return 9;
  }
}

double specialized static LayoutUtilities.layoutMetric(regular42:)(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  specialized UIDevice.screenType.getter();

  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    return v13 / v16 * 0.95 * a1;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for LayoutUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LayoutUtilities(_WORD *result, int a2, int a3)
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

void GuidedActivityItemDetailView.init(item:onSubtitleTapped:makeArtworkView:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v12 = EnvironmentObject.init()();
  v14 = v13;
  v15 = [objc_opt_self() keyColors];
  if (!v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 nonGradientTextColor];

  if (!v17)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = Color.init(uiColor:)();
  v19 = a1;
  v20 = GuidedFeaturedActivityPickerItem.mediaType.getter();

  if (v20 <= 1u)
  {
    if (v20)
    {
      if (one-time initialization token for guidedWalk != -1)
      {
        swift_once();
      }

      v21 = &static WorkoutAccessibilityIdentifier.ActivityPicker.guidedWalk;
    }

    else
    {
      if (one-time initialization token for guidedRun != -1)
      {
        swift_once();
      }

      v21 = &static WorkoutAccessibilityIdentifier.ActivityPicker.guidedRun;
    }
  }

  else
  {
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v21 = &static WorkoutAccessibilityIdentifier.ActivityPicker.guided;
  }

  v22 = *v21;

  *a6 = v12;
  a6[1] = v14;
  a6[2] = v19;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  a6[7] = v22;
  a6[8] = v23;
  a6[9] = v18;
}

uint64_t GuidedActivityItemDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyANSgGGAUyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGACyACyAA4TextV07WorkoutB006DetailgkP0VGAUy12CoreGraphics7CGFloatVGGAkAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA17_AA016_ForegroundStyleP0VyAZGGG_AA16PlainButtonStyleVQo__AGyA13__A28_yAA05EmptyG0VGtGQo_AItGGAA08_PaddingW0VGMd);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA6SpacerV_AIyAIyAIyAcAE10fontWeightyQrAA4FontV0P0VSgFQOyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyARSgGGAYyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAIyAIyAA4TextV07WorkoutB006DetailcqV0VGAYy12CoreGraphics7CGFloatVGGAcAE0D14Representation14representationQrqd__yXE_tAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyA21_AA016_ForegroundStyleV0VyA2_GGG_AA16PlainButtonStyleVQo__AMyA17__A32_yAA05EmptyC0VGtGQo_AOtGGAA14_PaddingLayoutVG_Qo_Md);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  v16 = v3[3];
  v27[2] = v3[2];
  v27[3] = v16;
  v27[4] = v3[4];
  v17 = v3[1];
  v27[0] = *v3;
  v27[1] = v17;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMyAA0D0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyARSgGGAYyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA010_FlexFrameG0VGAA14_OpacityEffectVGAMyAMyAA4TextV07WorkoutB006DetaildnS0VGAYy12CoreGraphics7CGFloatVGGAoAE27accessibilityRepresentation14representationQrqd__yXE_tAaNRd__lFQOyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyA21_AA016_ForegroundStyleS0VyA2_GGG_AA16PlainButtonStyleVQo__AIyA17__A32_yAA05EmptyD0VGtGQo_AKtGGMd);
  closure #1 in GuidedActivityItemDetailView.body.getter(v27, *(a1 + 16), *(a1 + 24), &v11[*(v18 + 44)]);
  LOBYTE(v3) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v11[*(v9 + 36)];
  *v19 = v3;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v24 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v5);
  outlined destroy of ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout>(v11, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyANSgGGAUyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGACyACyAA4TextV07WorkoutB006DetailgkP0VGAUy12CoreGraphics7CGFloatVGGAkAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA17_AA016_ForegroundStyleP0VyAZGGG_AA16PlainButtonStyleVQo__AGyA13__A28_yAA05EmptyG0VGtGQo_AItGGAA08_PaddingW0VGMd);
  v26[2] = v9;
  v26[3] = v24;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in GuidedActivityItemDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, void *a4@<X8>)
{
  v95 = a2;
  v96 = a3;
  v92 = a4;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  MEMORY[0x28223BE20](v5);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB022DetailViewFontModifierVGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
  v9 = *(v8 - 8);
  v85 = v8;
  v86 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextV07WorkoutB006DetailC12FontModifierVGAA011_ForegroundeN0VyAA5ColorVGGG_AA05PlaingE0VQo_Md);
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v76 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB006DetailC12FontModifierVGAA011_ForegroundhQ0VyAA5ColorVGGG_AA05PlainjH0VQo__AA05TupleC0VyAM_AIyAA05EmptyC0VGtGQo_Md);
  v100 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v99 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = &v76 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGMd) - 8;
  MEMORY[0x28223BE20](v78);
  v18 = &v76 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGMd) - 8;
  MEMORY[0x28223BE20](v80);
  v79 = &v76 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd) - 8;
  MEMORY[0x28223BE20](v94);
  v97 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v76 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v101 = &v76 - v25;
  v26 = a1;
  v77 = a1;
  v93 = *(a1 + 16);
  v27 = [v93 symbolName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = Image.init(_internalSystemName:)();
  v29 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v31 = *(v26 + 72);
  v32 = swift_getKeyPath();
  *&v113 = v28;
  *(&v113 + 1) = KeyPath;
  *&v114 = v29;
  *(&v114 + 1) = v32;
  *&v115 = v31;

  static Font.Weight.medium.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v18[*(v78 + 44)] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v79;
  outlined init with take of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>(v18, v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGMd);
  v34 = (v33 + *(v80 + 44));
  v35 = v118;
  v34[4] = v117;
  v34[5] = v35;
  v34[6] = v119;
  v36 = v114;
  *v34 = v113;
  v34[1] = v36;
  v37 = v116;
  v34[2] = v115;
  v34[3] = v37;
  v38 = v77;
  v39 = v77[3];
  v110 = v77[2];
  v111 = v39;
  v112 = v77[4];
  v40 = v77[1];
  v108 = *v77;
  v109 = v40;
  v42 = v95;
  v41 = v96;
  v43 = type metadata accessor for GuidedActivityItemDetailView();
  specialized GuidedActivityItemDetailView.navigationModel.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (static ScrollPhase.== infix(_:_:)())
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = v81;
  outlined init with take of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>(v33, v81, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGMd);
  *(v45 + *(v94 + 44)) = v44;
  outlined init with take of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>(v45, v101, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
  *&v108 = GuidedFeaturedActivityPickerItem.title.getter();
  *(&v108 + 1) = v46;
  lazy protocol witness table accessor for type String and conformance String();
  v80 = Text.init<A>(_:)();
  v93 = v47;
  v94 = v48;
  LODWORD(v81) = v49;
  v79 = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  *(v50 + 24) = v41;
  v51 = v38[3];
  *(v50 + 64) = v38[2];
  *(v50 + 80) = v51;
  *(v50 + 96) = v38[4];
  v52 = v38[1];
  *(v50 + 32) = *v38;
  *(v50 + 48) = v52;
  v105 = v42;
  v106 = v41;
  v107 = v38;
  (*(*(v43 - 8) + 16))(&v108, v38, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB022DetailViewFontModifierVGAA016_ForegroundStyleJ0VyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v53 = v82;
  Button.init(action:label:)();
  v54 = v84;
  PlainButtonStyle.init()();
  v55 = lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB022DetailViewFontModifierVGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
  v56 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v57 = v83;
  v58 = v85;
  v59 = v87;
  View.buttonStyle<A>(_:)();
  (*(v88 + 8))(v54, v59);
  (*(v86 + 8))(v53, v58);
  v102 = v95;
  v103 = v96;
  v104 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA6ButtonVyAA05EmptyD0VGtGMd);
  *&v108 = v58;
  *(&v108 + 1) = v59;
  *&v109 = v55;
  *(&v109 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(Text, Button<EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6ButtonVyAA05EmptyD0VGtGMd);
  v60 = v98;
  v61 = v90;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v91 + 8))(v57, v61);
  v62 = v97;
  sub_20C68A92C(v101, v97);
  v63 = v99;
  v96 = *(v100 + 16);
  v64 = v89;
  v96(v99, v60, v89);
  v65 = v92;
  *v92 = 0;
  *(v65 + 8) = 1;
  v66 = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJSgGGAQyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAEyAEyAA4TextV07WorkoutB006DetailfiN0VGAQy12CoreGraphics7CGFloatVGGAgAE27accessibilityRepresentation14representationQrqd__yXE_tAaFRd__lFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA13_AA016_ForegroundStyleN0VyAVGGG_AA16PlainButtonStyleVQo__AA05TupleF0VyA9__A24_yAA05EmptyF0VGtGQo_ACtMd);
  sub_20C68A92C(v62, v66 + v67[12]);
  v68 = v66 + v67[16];
  v69 = v79;
  v70 = v80;
  v71 = v93;
  v72 = v94;
  *v68 = v80;
  *(v68 + 8) = v71;
  LODWORD(v95) = v81 & 1;
  *(v68 + 16) = v81 & 1;
  *(v68 + 24) = v72;
  *(v68 + 32) = 0;
  *(v68 + 40) = v69;
  *(v68 + 48) = 0x3FE999999999999ALL;
  v96(v66 + v67[20], v63, v64);
  v73 = v66 + v67[24];
  *v73 = 0;
  *(v73 + 8) = 1;
  LOBYTE(v63) = v95;
  outlined copy of Text.Storage(v70, v71, v95);
  v74 = *(v100 + 8);

  v74(v98, v64);
  outlined destroy of ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout>(v101, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
  v74(v99, v64);
  outlined consume of Text.Storage(v70, v93, v63);

  return outlined destroy of ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout>(v97, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyANSgGGAUyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGACyACyAA4TextV07WorkoutB006DetailgkP0VGAUy12CoreGraphics7CGFloatVGGAkAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA17_AA016_ForegroundStyleP0VyAZGGG_AA16PlainButtonStyleVQo__AGyA13__A28_yAA05EmptyG0VGtGQo_AItGGAA08_PaddingW0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA0E0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyANSgGGAUyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAIyAIyAA4TextV07WorkoutB006DetailekP0VGAUy12CoreGraphics7CGFloatVGGAkAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyA17_AA016_ForegroundStyleP0VyAZGGG_AA16PlainButtonStyleVQo__AEyA13__A28_yAA05EmptyE0VGtGQo_AGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void closure #2 in closure #1 in GuidedActivityItemDetailView.body.getter(uint64_t a1@<X8>)
{
  v14 = GuidedFeaturedActivityPickerItem.subtitle.getter();
  v15 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() keyColors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 nonGradientTextColor];

    if (v12)
    {
      v13 = Color.init(uiColor:)();
      *a1 = v3;
      *(a1 + 8) = v5;
      *(a1 + 16) = v7 & 1;
      *(a1 + 24) = v9;
      *(a1 + 32) = 1;
      *(a1 + 40) = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #3 in closure #1 in GuidedActivityItemDetailView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9EmptyViewVGMd);
  v29 = *(v34 - 8);
  v8 = v29;
  MEMORY[0x28223BE20](v34);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v35[0] = GuidedFeaturedActivityPickerItem.subtitle.getter();
  v35[1] = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = a1[3];
  *(v19 + 64) = a1[2];
  *(v19 + 80) = v20;
  *(v19 + 96) = a1[4];
  v21 = a1[1];
  *(v19 + 32) = *a1;
  *(v19 + 48) = v21;
  v22 = type metadata accessor for GuidedActivityItemDetailView();
  (*(*(v22 - 8) + 16))(v35, a1, v22);
  v30 = v13;
  Button.init(action:label:)();
  v23 = *(v8 + 16);
  v24 = v34;
  v23(v10, v13, v34);
  v25 = v31;
  *a4 = v15;
  *(a4 + 8) = v25;
  LOBYTE(a1) = v32 & 1;
  *(a4 + 16) = v32 & 1;
  *(a4 + 24) = v33;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6ButtonVyAA9EmptyViewVGtMd);
  v23((a4 + *(v26 + 48)), v10, v24);
  outlined copy of Text.Storage(v15, v25, a1);
  v27 = *(v29 + 8);

  v27(v30, v24);
  v27(v10, v24);
  outlined consume of Text.Storage(v15, v25, a1);
}

uint64_t type metadata instantiation function for GuidedActivityItemDetailView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for GuidedActivityItemDetailView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidedActivityItemDetailView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized GuidedActivityItemDetailView.navigationModel.getter()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB022DetailViewFontModifierVGAA016_ForegroundStyleJ0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, DetailViewFontModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, DetailViewFontModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, DetailViewFontModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, DetailViewFontModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB022DetailViewFontModifierVGMd);
    lazy protocol witness table accessor for type DetailViewFontModifier and conformance DetailViewFontModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, DetailViewFontModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_55()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in GuidedActivityItemDetailView.body.getter()
{
  v1 = *(v0 + 56);
  v2 = GuidedFeaturedActivityPickerItem.identifier.getter();
  v1(v2);
}

uint64_t getEnumTagSinglePayload for MirrorRaceOnRouteView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for MirrorRaceOnRouteView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in MirrorRaceOnRouteView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v90 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v87);
  v88 = &v70 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v82);
  v83 = &v70 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v76);
  v6 = (&v70 - v5);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v78);
  v77 = &v70 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v81);
  v80 = &v70 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MEMORY[0x28223BE20](v79);
  v89 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v70 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  MEMORY[0x28223BE20](v74);
  v91 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  RacePositionStatePublisher.secondsAheadOfGhost.getter();
  v17 = v16;
  RacePositionStatePublisher.secondsAheadOfGhost.getter();
  specialized static RaceWorkoutConfiguration.performanceColorFor(_:)(v18);
  v86 = Color.init(uiColor:)();
  v19 = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  v20 = v19;
  RacePositionStatePublisher.racePosition.getter();
  RacePositionStatePublisher.positionOnRoute.getter();
  v22 = v21;
  RacePositionStatePublisher.ghostPositionOnRoute.getter();
  v24 = v23;
  v25 = *(a1 + 48);
  v75 = a1;
  v26 = v25;
  v27 = RaceInformationPublisher.routePoints.getter();
  type metadata accessor for RaceElevationChartProperties();
  swift_allocObject();
  v28 = specialized RaceElevationChartProperties.init(activityType:chartPoints:)(v26, v27);

  v29 = type metadata accessor for RaceElevationMetricView();
  v30 = v15;
  v31 = &v15[v29[9]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v29[10];
  if (one-time initialization token for iconWidth != -1)
  {
    swift_once();
  }

  *(v30 + v32) = *&static RacePlatterConstants.iconWidth * 0.5;
  *(v30 + v29[11]) = 0x4014000000000000;
  *(v30 + v29[5]) = v22;
  *(v30 + v29[7]) = v24;
  *(v30 + v29[8]) = v28;
  *(v30 + v29[6]) = v20;
  v72 = v20;
  v33 = v30;
  v34 = static Edge.Set.bottom.getter();
  MetricPlatterConstants.init()(&v101);
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGMd) + 36);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  v44 = swift_getKeyPath();
  v45 = v30 + *(v74 + 36);
  v71 = v30;
  *v45 = v44;
  *(v45 + 8) = 2;
  RacePositionStatePublisher.remainingRouteDistance.getter();
  v47 = v46;
  v74 = FIUIDistanceTypeForActivityType();
  v73 = swift_getKeyPath();
  MetricsPublisher.currentPace.getter();
  v49 = v48;
  MetricsPublisher.workoutStatePublisher.getter();
  v50 = WorkoutStatePublisher.gpsUnavailable.getter();

  v51 = swift_getKeyPath();
  *&v105 = v20;
  *(&v105 + 1) = 4;
  *&v106 = v26;
  *(&v106 + 1) = v51;
  LOBYTE(v107) = 0;
  *(&v107 + 1) = v49;
  LOBYTE(v108) = v50 & 1;
  v109 = 0;
  v110 = 0;
  v103 = v107;
  v104[0] = v108;
  *&v104[1] = 0;
  v101 = v105;
  v102 = v106;
  v111 = 1;
  BYTE8(v104[1]) = 1;
  outlined init with copy of PaceMetricView(&v105, &v92);
  lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v103 = v94;
  v104[0] = *v95;
  *(v104 + 9) = *&v95[9];
  v101 = v92;
  v102 = v93;
  v112 = 0;
  BYTE9(v104[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_1(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v94 = v99;
  *v95 = v100[0];
  *&v95[10] = *(v100 + 10);
  v92 = v97;
  v93 = v98;
  v113 = 0;
  v96 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v52 = v104[0];
  v6[2] = v103;
  v6[3] = v52;
  *(v6 + 59) = *(v104 + 11);
  v53 = v102;
  *v6 = v101;
  v6[1] = v53;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v54 = v77;
  _ConditionalContent<>.init(storage:)();
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v54, v83, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v55 = v80;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v54, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v55, v88, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  v56 = v85;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v105);
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v55, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v57 = swift_getKeyPath();
  v58 = v56 + *(v79 + 36);
  *v58 = v57;
  *(v58 + 8) = 5;
  v59 = v91;
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v33, v91, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  v60 = v89;
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v56, v89, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  v61 = v90;
  *v90 = v17;
  v62 = v72;
  v61[1] = v86;
  v61[2] = v62;
  *(v61 + 24) = 0;
  v61[4] = KeyPath;
  *(v61 + 40) = 3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB033RaceSecondsAheadOfGhostMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eL5StyleOGG_ACyACyAD0f9ElevationkL0VAA14_PaddingLayoutVGAKGACyAD0f17RemainingDistancekL0VAKGACyAA012_ConditionalD0VyAWyAWyAWyAWyAWyAD06EnergykL0VAYGAWyAD09HeartRatekL0VAD0yz9AggregatekL0VGGAWyAWyA2_AD04ZonekL0VGAWyAD010TimeInZonekL0VA6_GGGAWyAWyAWyA9_AD04PacekL0VGAWyA14_A14_GGAWyA16_AWyAD0vkL0VAD04LapskL0VGGGGAWyAWyAWyAWyAWyAWyAD07CadencekL0VAA05EmptyL0VGA27_GA27_GAWyAD0r6ChangekL0VAD07CurrentrkL0VGGAWyAWyAD05PowerkL0VA40_GAWyA40_AD014FlightsClimbedkL0VGGGAWyAWyAWyAD015SegmentDurationkL0VAD0v6DetailkL0VGAWyA14_AYGGAWyAWyAYA40_GAWyA40_ACyACyAD0e4TimeL0VAD0K6DetailVGAA011_ForegroundqP0VyAA5ColorVGGGGGGGAWyAWyAWyAWyA50_A14_GAWyAD012StrideLengthkL0VA73_GGAWyAWyAD019VerticalOscillationkL0VA77_GAWyAD017GroundContactTimekL0VA80_GGGAWyAWyA34_AD016DownhillRunCountkL0VGAWyA29_AA6HStackVyAA05TupleL0VyACyAA4TextVAD0K9ValueFontVG_ACyACyA92_AD0K19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAKGtMd);
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v59, v61 + v63[12], &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  v64 = v61 + v63[16];
  *v64 = v47;
  v64[8] = 0;
  v66 = v73;
  v65 = v74;
  *(v64 + 2) = v62;
  *(v64 + 3) = v65;
  *(v64 + 4) = v66;
  v64[40] = 5;
  _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(v60, v61 + v63[20], &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);

  v67 = v62;

  v68 = v67;

  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v56, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v71, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v60, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);

  outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v91, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023RaceElevationMetricViewVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
}

uint64_t protocol witness for View.body.getter in conformance MirrorRaceOnRouteView@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return closure #1 in MirrorRaceOnRouteView.body.getter(v5, a1);
}

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_5(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t SeymourSubscriptionStatus.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SeymourSubscriptionStatus and conformance SeymourSubscriptionStatus()
{
  result = lazy protocol witness table cache variable for type SeymourSubscriptionStatus and conformance SeymourSubscriptionStatus;
  if (!lazy protocol witness table cache variable for type SeymourSubscriptionStatus and conformance SeymourSubscriptionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeymourSubscriptionStatus and conformance SeymourSubscriptionStatus);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SeymourSubscriptionStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SeymourSubscriptionStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance SeymourSubscriptionStatus@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MirrorRaceMetricPlatterView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for MirrorRaceMetricPlatterView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 MirrorRaceMetricPlatterView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v158 = a1;
  v2 = type metadata accessor for RacePosition();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 8);
  MetricsPublisher.racePositionStatePublisher.getter();

  RacePositionStatePublisher.racePosition.getter();

  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == *MEMORY[0x277D7DF68])
  {
    v10 = v8;
    MetricsPublisher.racePositionStatePublisher.getter();
    MetricsPublisher.raceInformationPublisher.getter();

    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v11 = v7;
    v12 = v6;
    v13 = ObservedObject.init(wrappedValue:)();
    v15 = v14;
    type metadata accessor for RacePositionStatePublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type RacePositionStatePublisher and conformance RacePositionStatePublisher, MEMORY[0x277D7E5C8]);
    v16 = ObservedObject.init(wrappedValue:)();
    v18 = v17;
    type metadata accessor for RaceInformationPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type RaceInformationPublisher and conformance RaceInformationPublisher, MEMORY[0x277D7E4B0]);
    v19 = ObservedObject.init(wrappedValue:)();
    *&v159 = v13;
    *(&v159 + 1) = v15;
    v160.n128_u64[0] = v16;
    v160.n128_u64[1] = v18;
    *&v161 = v19;
    *(&v161 + 1) = v20;
    *&v162 = v11;
    *(&v162 + 1) = v12;
    v173 = v159;
    v174 = v160;
    *v175 = v161;
    *&v175[16] = v162;
    v163 = 1;
    v175[32] = 1;
    outlined init with copy of MirrorRaceOnRouteView(&v159, &v168);
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView();
    _ConditionalContent<>.init(storage:)();
    *v175 = v170[0];
    *&v175[16] = v170[1];
    v175[32] = v171;
    v173 = v168;
    v174 = v169;
    v176 = 0;
    v175[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg8CompleteK0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v170[0] = v166[0];
    v170[1] = v166[1];
    v171 = v167;
    v168 = v164;
    v169 = v165;
    v177 = 0;
    v172 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of MirrorRaceOnRouteView(&v159);
    v180 = *v175;
    v181[0] = *&v175[16];
    *(v181 + 15) = *&v175[31];
    v178 = v173;
    v179 = v174;
    goto LABEL_20;
  }

  if (v9 == *MEMORY[0x277D7DF58])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D7DF78])
  {
    v53 = one-time initialization token for WorkoutUIBundle;
    v54 = v8;
    v157.n128_u64[1] = v7;
    v55 = v6;
    if (v53 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v56 = WorkoutUIBundle.super.isa;
    v57._countAndFlagsBits = 0xD000000000000016;
    v183._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v58.value._object = 0xEB00000000656C62;
    v57._object = 0x800000020CB9C3F0;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    v183._countAndFlagsBits = 0;
    v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v183);
    v157.n128_u64[0] = v60._countAndFlagsBits;

    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v61 = ObservedObject.init(wrappedValue:)();
    v63 = v62;
    v64 = objc_opt_self();
    v65 = [v64 currentDevice];
    v66 = specialized UIDevice.screenType.getter();

    v67 = dbl_20CB7A570[v66];
    v68 = objc_opt_self();
    v69 = [v68 mainScreen];
    [v69 scale];
    v71 = v70;

    v72 = [v68 mainScreen];
    [v72 nativeScale];
    v74 = v73;

    if (v71 != v74)
    {
      v75 = [v68 mainScreen];
      [v75 scale];
      v77 = v76;

      v78 = [v68 mainScreen];
      [v78 nativeScale];
      v80 = v79;

      v67 = v67 * (v77 / v80 * 0.95);
    }

    v163 = 0;
    *&v173 = v61;
    *(&v173 + 1) = v63;
    v81 = v157.n128_u64[1];
    v174.n128_u64[0] = v157.n128_u64[1];
    v174.n128_u64[1] = v55;
    *v175 = v157.n128_u64[0];
    *&v175[8] = v60._object;
    *&v175[16] = v67;
    v175[24] = 0;
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView();
    v82 = v63;
    v83 = v81;
    v84 = v55;

    _ConditionalContent<>.init(storage:)();
    v173 = v168;
    v174 = v169;
    *v175 = v170[0];
    *&v175[9] = *(v170 + 9);
    v176 = 1;
    v175[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg8CompleteK0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v170[0] = v166[0];
    v170[1] = v166[1];
    v171 = v167;
    v168 = v164;
    v169 = v165;
    v177 = 0;
    v172 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

LABEL_15:
LABEL_18:
    v180 = *v175;
    v181[0] = *&v175[16];
LABEL_19:
    *(v181 + 15) = *&v175[31];
    v178 = v173;
    v179 = v174;
    goto LABEL_20;
  }

  if (v9 == *MEMORY[0x277D7DF80])
  {
    v85 = v8;
    MetricsPublisher.racePositionStatePublisher.getter();
    MetricsPublisher.raceInformationPublisher.getter();

    type metadata accessor for RacePositionStatePublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type RacePositionStatePublisher and conformance RacePositionStatePublisher, MEMORY[0x277D7E5C8]);
    v86 = v7;
    v87 = v6;
    v88 = ObservedObject.init(wrappedValue:)();
    v90 = v89;
    type metadata accessor for RaceInformationPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type RaceInformationPublisher and conformance RaceInformationPublisher, MEMORY[0x277D7E4B0]);
    v91 = ObservedObject.init(wrappedValue:)();
    v176 = 1;
    *&v173 = v88;
    *(&v173 + 1) = v90;
    v174.n128_u64[0] = v91;
    v174.n128_u64[1] = v92;
    *v175 = v86;
    *&v175[8] = v87;
    v175[24] = 1;
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView();
    v93 = v86;
    v94 = v87;

    _ConditionalContent<>.init(storage:)();
    v173 = v168;
    v174 = v169;
    *v175 = v170[0];
    *&v175[9] = *(v170 + 9);
    v177 = 1;
    v175[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg8CompleteK0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v170[0] = v166[0];
    v170[1] = v166[1];
    v171 = v167;
    v168 = v164;
    v169 = v165;
    LOBYTE(v159) = 0;
    v172 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_18;
  }

  if (v9 == *MEMORY[0x277D7DF70])
  {
LABEL_4:
    v21 = one-time initialization token for WorkoutUIBundle;
    v22 = v8;
    v157.n128_u64[1] = v7;
    v23 = v6;
    if (v21 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = WorkoutUIBundle.super.isa;
    v182._object = 0xE000000000000000;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._object = 0x800000020CB9C3B0;
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v182._countAndFlagsBits = 0;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v182);
    v157.n128_u64[0] = v28._countAndFlagsBits;

    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v29 = ObservedObject.init(wrappedValue:)();
    v31 = v30;
    v32 = objc_opt_self();
    v33 = [v32 currentDevice];
    v34 = specialized UIDevice.screenType.getter();

    v35 = dbl_20CB7A570[v34];
    v36 = objc_opt_self();
    v37 = [v36 mainScreen];
    [v37 scale];
    v39 = v38;

    v40 = [v36 mainScreen];
    [v40 nativeScale];
    v42 = v41;

    if (v39 != v42)
    {
      v43 = [v36 mainScreen];
      [v43 scale];
      v45 = v44;

      v46 = [v36 mainScreen];
      [v46 nativeScale];
      v48 = v47;

      v35 = v35 * (v45 / v48 * 0.95);
    }

    v163 = 0;
    *&v173 = v29;
    *(&v173 + 1) = v31;
    v49 = v157.n128_u64[1];
    v174.n128_u64[0] = v157.n128_u64[1];
    v174.n128_u64[1] = v23;
    *v175 = v157.n128_u64[0];
    *&v175[8] = v28._object;
    *&v175[16] = v35;
    v175[32] = 0;
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView();
    v50 = v31;
    v51 = v49;
    v52 = v23;

    _ConditionalContent<>.init(storage:)();
    *v175 = v170[0];
    *&v175[16] = v170[1];
    v175[32] = v171;
    v173 = v168;
    v174 = v169;
    v176 = 0;
    v175[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg8CompleteK0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v170[0] = v166[0];
    v170[1] = v166[1];
    v171 = v167;
    v168 = v164;
    v169 = v165;
    v177 = 0;
    v172 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v180 = *v175;
    v181[0] = *&v175[16];
    goto LABEL_19;
  }

  v98 = *MEMORY[0x277D7DF60];
  v99 = one-time initialization token for WorkoutUIBundle;
  v100 = v9;
  v101 = v8;
  v157.n128_u64[0] = v7;
  v157.n128_u64[1] = v6;
  if (v100 == v98)
  {
    if (v99 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v102 = WorkoutUIBundle.super.isa;
    v103._countAndFlagsBits = 0xD000000000000019;
    v184._object = 0xE000000000000000;
    v103._object = 0x800000020CB9C3D0;
    v104.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v104.value._object = 0xEB00000000656C62;
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    v184._countAndFlagsBits = 0;
    v106 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v184);
    v156._object = v106._countAndFlagsBits;

    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v107 = ObservedObject.init(wrappedValue:)();
    v109 = v108;
    v110 = objc_opt_self();
    v111 = [v110 currentDevice];
    v112 = specialized UIDevice.screenType.getter();

    v113 = dbl_20CB7A570[v112];
    v114 = objc_opt_self();
    v115 = [v114 mainScreen];
    [v115 scale];
    v117 = v116;

    v118 = [v114 mainScreen];
    [v118 nativeScale];
    v120 = v119;

    if (v117 != v120)
    {
      v121 = [v114 mainScreen];
      [v121 scale];
      v123 = v122;

      v124 = [v114 mainScreen];
      [v124 nativeScale];
      v126 = v125;

      v113 = v113 * (v123 / v126 * 0.95);
    }

    v176 = 0;
    *&v173 = v107;
    *(&v173 + 1) = v109;
    v127 = v157;
    v174 = v157;
    *v175 = v156._object;
    *&v175[8] = v106._object;
    *&v175[16] = v113;
    v175[24] = 0;
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    v82 = v109;
    v83 = v127.n128_u64[0];
    v128 = v127.n128_u64[1];

    _ConditionalContent<>.init(storage:)();
    v168 = v164;
    v169 = v165;
    v170[0] = v166[0];
    *(v170 + 9) = *(v166 + 9);
    v177 = 1;
    v172 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_15;
  }

  if (v99 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v129 = WorkoutUIBundle.super.isa;
  v185._object = 0xE000000000000000;
  v130._object = 0x800000020CB9C3B0;
  v130._countAndFlagsBits = 0xD00000000000001DLL;
  v131.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v131.value._object = 0xEB00000000656C62;
  v132._countAndFlagsBits = 0;
  v132._object = 0xE000000000000000;
  v185._countAndFlagsBits = 0;
  v156 = NSLocalizedString(_:tableName:bundle:value:comment:)(v130, v131, v129, v132, v185);

  type metadata accessor for MetricsPublisher();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
  v155 = ObservedObject.init(wrappedValue:)();
  v134 = v133;
  v135 = objc_opt_self();
  v136 = [v135 currentDevice];
  v137 = specialized UIDevice.screenType.getter();

  v138 = dbl_20CB7A570[v137];
  v139 = objc_opt_self();
  v140 = [v139 mainScreen];
  [v140 scale];
  v142 = v141;

  v143 = [v139 mainScreen];
  [v143 nativeScale];
  v145 = v144;

  if (v142 != v145)
  {
    v146 = [v139 mainScreen];
    [v146 scale];
    v148 = v147;

    v149 = [v139 mainScreen];
    [v149 nativeScale];
    v151 = v150;

    v138 = v138 * (v148 / v151 * 0.95);
  }

  v176 = 1;
  *&v173 = v155;
  *(&v173 + 1) = v134;
  v152 = v157;
  v174 = v157;
  *v175 = v156;
  *&v175[16] = v138;
  v175[24] = 1;
  lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
  v156._countAndFlagsBits = v134;
  v153 = v152.n128_u64[0];
  v154 = v152.n128_u64[1];

  _ConditionalContent<>.init(storage:)();
  v168 = v164;
  v169 = v165;
  v170[0] = v166[0];
  *(v170 + 9) = *(v166 + 9);
  v177 = 1;
  v172 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();

  v180 = *v175;
  v181[0] = *&v175[16];
  *(v181 + 15) = *&v175[31];
  v178 = v173;
  v179 = v174;
  (*(v3 + 8))(v5, v2);
LABEL_20:
  v95 = v181[0];
  v96 = v158;
  *(v158 + 32) = v180;
  *(v96 + 48) = v95;
  *(v96 + 63) = *(v181 + 15);
  result = v179;
  *v96 = v178;
  *(v96 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView()
{
  result = lazy protocol witness table cache variable for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView;
  if (!lazy protocol witness table cache variable for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGMd);
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView()
{
  result = lazy protocol witness table cache variable for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView;
  if (!lazy protocol witness table cache variable for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorRaceOnRouteView and conformance MirrorRaceOnRouteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg8CompleteK0VGMd);
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    lazy protocol witness table accessor for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView()
{
  result = lazy protocol witness table cache variable for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView;
  if (!lazy protocol witness table cache variable for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorRaceCompleteView and conformance MirrorRaceCompleteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB032MirrorRaceMessageWithMetricsViewVAFGMd);
    lazy protocol witness table accessor for type MirrorRaceMessageWithMetricsView and conformance MirrorRaceMessageWithMetricsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB032MirrorRaceMessageWithMetricsViewVAD0fg7OnRouteK0VGACyAfD0fg8CompleteK0VGGACyA2FGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceOnRouteView>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceCompleteView>>, _ConditionalContent<MirrorRaceMessageWithMetricsView, MirrorRaceMessageWithMetricsView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirrorRaceCompleteView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for MirrorRaceCompleteView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double MirrorRaceCompleteView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.leading.getter();
  v23 = 1;
  closure #1 in MirrorRaceCompleteView.body.getter(v2, &v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(&v24, &v11, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AH012RaceCompleter10TimeMetricD0VAH0r19SecondsAheadOfGhostuD0VAA6SpacerVtGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(v34, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AH012RaceCompleter10TimeMetricD0VAH0r19SecondsAheadOfGhostuD0VAA6SpacerVtGMd);
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[39] = v26;
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[7] = v24;
  v22[151] = v33;
  *&v22[23] = v25;
  LOBYTE(v2) = v23;
  KeyPath = swift_getKeyPath();
  v6 = *&v22[112];
  *(a1 + 113) = *&v22[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = *&v22[128];
  v7 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  *(a1 + 65) = v7;
  v8 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v8;
  result = *v22;
  v10 = *&v22[16];
  *(a1 + 17) = *v22;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 161) = *&v22[144];
  *(a1 + 33) = v10;
  *(a1 + 176) = KeyPath;
  *(a1 + 184) = 2;
  return result;
}

uint64_t closure #1 in MirrorRaceCompleteView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v35._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000020CB9C410;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v35);

  static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(2, &v27);

  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v19 = v27;
  v20 = v28;
  RacePositionStatePublisher.raceFinishTime.getter();
  v9 = v8;
  RacePositionStatePublisher.raceFinishTime.getter();
  RacePositionStatePublisher.secondsAheadOfGhost.getter();
  v11 = v10 >= 0.0;
  RacePositionStatePublisher.secondsAheadOfGhost.getter();
  v13 = v12;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v14 = Color.init(uiColor:)();
  v15 = *(a1 + 40);
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = v21;
  v27 = v19;
  v28 = v20;
  LOBYTE(v32) = v24;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 80) = v32;
  v16 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v16;
  *(a2 + 32) = v29;
  *(a2 + 88) = v9;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  *(a2 + 128) = 1;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v17 = v15;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(v25, v33, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(v33, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AJ012RaceCompletes10TimeMetricG0VAJ0s19SecondsAheadOfGhostvG0VAA6SpacerVtGGAOyAJ0iG5StyleOGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AJ012RaceCompletes10TimeMetricE0VAJ0s19SecondsAheadOfGhostvE0VAA6SpacerVtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, RaceCompleteRaceTimeMetricView, RaceSecondsAheadOfGhostMetricView, Spacer)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepGoalValueView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalStepGoalValueView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntervalStepGoalValueView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = *(v1 + 1);
  swift_retain_n();
  v4 = WorkoutStep.goal.getter();
  v5 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

  outlined destroy of ObservedObject<WorkoutStep>(&v63);
  v6 = v2[4];
  if (v5)
  {
    v64 = *(v2 + 5);
    LOBYTE(v65) = *(v2 + 56);
    v49 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.projectedValue.getter();
    v7 = v51;
    v47 = v52;
    v62 = v2[8];
    outlined init with copy of WorkoutBlock?(&v62, &v64);
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v8 = EnvironmentObject.init()();
    v10 = v9;
    type metadata accessor for WorkoutStep();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

    v11 = ObservedObject.init(wrappedValue:)();
    v13 = v12;
    v14 = WorkoutStep.goal.getter();
    if ([v14 goalTypeIdentifier] == 2)
    {
      v15 = [v14 requiredDistance];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v15];
        outlined destroy of ObservedObject<WorkoutStep>(&v63);
        *&v51 = v8;
        *(&v51 + 1) = v10;
        v52 = v11;
        v53 = v13;
        v54 = v17;
        v55 = v14;
        v56 = v7;
        v57 = v47;
        v58 = v16;
        v59 = v49;
        v60 = v62;
        _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB035IntervalStepDistanceAndTimeGoalViewVAA08ModifiedD0VyAF0gh6Singlel5ValueM0VAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGG_GWOi_(&v51);
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB031IntervalStepSingleGoalValueViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
        lazy protocol witness table accessor for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView();
        lazy protocol witness table accessor for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
        result = _ConditionalContent<>.init(storage:)();
        v32 = v71;
        *(a1 + 96) = v70;
        *(a1 + 112) = v32;
        *(a1 + 128) = v72;
        v33 = v67;
        *(a1 + 32) = v66;
        *(a1 + 48) = v33;
        v34 = v69;
        *(a1 + 64) = v68;
        *(a1 + 80) = v34;
        v35 = v65;
        *a1 = v64;
        *(a1 + 16) = v35;
        return result;
      }
    }

    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x20F30BC00](0xD00000000000004ELL, 0x800000020CB9C470);
    v36 = [v14 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    MEMORY[0x20F30BC00](v37, v39);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v64 = *(v2 + 5);
    LOBYTE(v65) = *(v2 + 56);
    v50 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.projectedValue.getter();
    v45 = *(&v51 + 1);
    v46 = v51;
    v44 = v52;
    v18 = v2[8];
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v48 = v18;

    v19 = EnvironmentObject.init()();
    v41 = v20;
    v42 = v19;
    v21 = FocusState.init<>()();
    v43 = v22;
    v40 = v23;
    type metadata accessor for WorkoutStep();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
    v24 = ObservedObject.init(wrappedValue:)();
    v26 = v25;
    v27 = [objc_opt_self() mileUnit];
    v28 = [objc_opt_self() quantityWithUnit:v27 doubleValue:3.4];

    *&v51 = v28;
    type metadata accessor for HKQuantity();
    State.init(wrappedValue:)();
    v29 = *v2;
    if (*v2)
    {
      v30 = v64;

      *&v51 = v42;
      *(&v51 + 1) = v41;
      v52 = v24;
      v53 = v26;
      *&v54 = v50;
      *(&v54 + 1) = v46;
      *&v55 = v45;
      BYTE8(v55) = v44;
      LOBYTE(v56) = v21 & 1;
      *(&v56 + 1) = v43;
      v57 = v40 & 1;
      v58 = v30;
      v59 = v48;
      v60 = static ObservableObject.environmentStore.getter();
      v61 = v29;
      _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB035IntervalStepDistanceAndTimeGoalViewVAA08ModifiedD0VyAF0gh6Singlel5ValueM0VAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGG_GWOi0_(&v51);
      goto LABEL_7;
    }
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined destroy of ObservedObject<WorkoutStep>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore0E4StepCGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for HKQuantity()
{
  result = lazy cache variable for type metadata for HKQuantity;
  if (!lazy cache variable for type metadata for HKQuantity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKQuantity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView()
{
  result = lazy protocol witness table cache variable for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView;
  if (!lazy protocol witness table cache variable for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB031IntervalStepSingleGoalValueViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type IntervalStepSingleGoalValueView and conformance IntervalStepSingleGoalValueView();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepSingleGoalValueView and conformance IntervalStepSingleGoalValueView()
{
  result = lazy protocol witness table cache variable for type IntervalStepSingleGoalValueView and conformance IntervalStepSingleGoalValueView;
  if (!lazy protocol witness table cache variable for type IntervalStepSingleGoalValueView and conformance IntervalStepSingleGoalValueView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepSingleGoalValueView and conformance IntervalStepSingleGoalValueView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutBlock?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A5BlockCSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IntervalStepDistanceAndTimeGoalView, ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IntervalStepDistanceAndTimeGoalView, ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IntervalStepDistanceAndTimeGoalView, ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB035IntervalStepDistanceAndTimeGoalViewVAA08ModifiedD0VyAD0fg6Singlek5ValueL0VAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGGMd);
    lazy protocol witness table accessor for type IntervalStepDistanceAndTimeGoalView and conformance IntervalStepDistanceAndTimeGoalView();
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IntervalStepDistanceAndTimeGoalView, ModifiedContent<IntervalStepSingleGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t MetricPlatter.displayName.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for MetricPlatterType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E1E8] || v6 == *MEMORY[0x277D7E1A8] || v6 == *MEMORY[0x277D7E1E0] || v6 == *MEMORY[0x277D7E1A0] || v6 == *MEMORY[0x277D7E1B8] || v6 == *MEMORY[0x277D7E1B0] || v6 == *MEMORY[0x277D7E1D8] || v6 == *MEMORY[0x277D7E190] || v6 == *MEMORY[0x277D7E1D0] || v6 == *MEMORY[0x277D7E1C8] || v6 == *MEMORY[0x277D7E198] || v6 == *MEMORY[0x277D7E178] || v6 == *MEMORY[0x277D7E1C0] || v6 == *MEMORY[0x277D7E180] || v6 == *MEMORY[0x277D7E1F0] || v6 == *MEMORY[0x277D7E188])
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL Array<A>.shouldCompressLayout.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v2++;
      v6 = v7;
      if (v7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        *(v3 + 8 * v5 + 32) = v6;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v3 + 16);

  return v8 > 4;
}

uint64_t MetricPlatter.editable.getter()
{
  v0 = type metadata accessor for MetricPlatterType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4 == *MEMORY[0x277D7E1E8] || v4 == *MEMORY[0x277D7E1A8];
  v6 = v5;
  if (v5 || v4 == *MEMORY[0x277D7E1E0] || v4 == *MEMORY[0x277D7E1A0] || v4 == *MEMORY[0x277D7E1B8] || v4 == *MEMORY[0x277D7E1B0] || v4 == *MEMORY[0x277D7E1D8] || v4 == *MEMORY[0x277D7E190] || v4 == *MEMORY[0x277D7E1D0] || v4 == *MEMORY[0x277D7E1C8] || v4 == *MEMORY[0x277D7E198] || v4 == *MEMORY[0x277D7E178] || v4 == *MEMORY[0x277D7E1C0] || v4 == *MEMORY[0x277D7E180] || v4 == *MEMORY[0x277D7E1F0] || v4 == *MEMORY[0x277D7E188])
  {
    return v6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MetricPlatter.excludable.getter()
{
  v0 = type metadata accessor for MetricPlatterType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7E1E8])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D7E1A8])
  {
    return 1;
  }

  v6 = v4 == *MEMORY[0x277D7E1E0] || v4 == *MEMORY[0x277D7E1A0];
  if (v6 || v4 == *MEMORY[0x277D7E1B8] || v4 == *MEMORY[0x277D7E1B0])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D7E1D8] || v4 == *MEMORY[0x277D7E190])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277D7E1D0])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D7E1C8] || v4 == *MEMORY[0x277D7E198])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277D7E178])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D7E1C0] || v4 == *MEMORY[0x277D7E180] || v4 == *MEMORY[0x277D7E1F0])
  {
    return 1;
  }

  v6 = v4 == *MEMORY[0x277D7E188];
  result = 1;
  if (!v6)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t MetricPlatter.disabledText.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for MetricPlatterType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D7E198])
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

Swift::String_optional __swiftcall MetricPlatter.footerText(platterSupported:)(Swift::Bool platterSupported)
{
  v1 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for MetricPlatterType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D7E198] || v7 == *MEMORY[0x277D7E180])
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    v10 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v10 = 0;
    v11 = 0;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::Void __swiftcall MetricPlatter.footerAction()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v117 = v0;
  v118 = v1;
  MEMORY[0x28223BE20](v0);
  v116 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v115 = &v108 - v4;
  MEMORY[0x28223BE20](v5);
  v114 = &v108 - v6;
  MEMORY[0x28223BE20](v7);
  v113 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v108 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v108 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v108 - v21;
  MEMORY[0x28223BE20](v23);
  v110 = &v108 - v24;
  MEMORY[0x28223BE20](v25);
  v109 = &v108 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v108 - v28;
  v30 = type metadata accessor for MetricPlatterType();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 != *MEMORY[0x277D7E198])
  {
    if (v34 != *MEMORY[0x277D7E180])
    {
      goto LABEL_27;
    }

    URL.init(string:)();
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      outlined destroy of URL?(v11);
      goto LABEL_27;
    }

    v14 = v22;
    (*(v16 + 32))(v22, v11, v15);
    v58 = [objc_opt_self() defaultWorkspace];
    if (v58)
    {
      v60 = v58;
      URL._bridgeToObjectiveC()(v59);
      v62 = v61;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v64 = [v60 openSensitiveURL:v62 withOptions:isa];

      v65 = (v16 + 16);
      if (v64)
      {
        v66 = v115;
        static WOLog.app.getter();
        v67 = v111;
        (*v65)(v111, v22, v15);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v119 = v71;
          *v70 = 136315138;
          v72 = URL.absoluteString.getter();
          v73 = v67;
          v75 = v74;
          v76 = *(v16 + 8);
          v76(v73, v15);
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, &v119);
          v78 = v14;
          v79 = v77;

          *(v70 + 4) = v79;
          _os_log_impl(&dword_20C66F000, v68, v69, "Opened Settings link: %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x20F30E080](v71, -1, -1);
          MEMORY[0x20F30E080](v70, -1, -1);

          (*(v118 + 8))(v115, v117);
          v76(v78, v15);
        }

        else
        {

          v106 = *(v16 + 8);
          v106(v67, v15);
          (*(v118 + 8))(v66, v117);
          v106(v14, v15);
        }
      }

      else
      {
        v92 = v116;
        static WOLog.app.getter();
        v93 = v112;
        (*v65)(v112, v22, v15);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119 = v97;
          *v96 = 136315138;
          v98 = URL.absoluteString.getter();
          v99 = v93;
          v101 = v100;
          v102 = *(v16 + 8);
          v102(v99, v15);
          v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v101, &v119);

          *(v96 + 4) = v103;
          _os_log_impl(&dword_20C66F000, v94, v95, "Failed to open Settings link: %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x20F30E080](v97, -1, -1);
          MEMORY[0x20F30E080](v96, -1, -1);

          (*(v118 + 8))(v116, v117);
          v102(v22, v15);
        }

        else
        {

          v107 = *(v16 + 8);
          v107(v93, v15);
          (*(v118 + 8))(v92, v117);
          v107(v22, v15);
        }
      }

      return;
    }

    goto LABEL_23;
  }

  URL.init(string:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_24:
    outlined destroy of URL?(v14);
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v35 = v16;
  (*(v16 + 32))(v29, v14, v15);
  v36 = [objc_opt_self() defaultWorkspace];
  if (!v36)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v36;
  URL._bridgeToObjectiveC()(v37);
  v40 = v39;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v41 = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = [v38 openSensitiveURL:v40 withOptions:v41];

  v43 = (v16 + 16);
  if (v42)
  {
    v44 = v113;
    static WOLog.app.getter();
    v45 = v109;
    (*v43)(v109, v29, v15);
    v46 = Logger.logObject.getter();
    v47 = v29;
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v116 = v47;
      v50 = v49;
      v51 = v45;
      v52 = swift_slowAlloc();
      v119 = v52;
      *v50 = 136315138;
      v53 = URL.absoluteString.getter();
      v55 = v54;
      v56 = *(v16 + 8);
      v56(v51, v15);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v119);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_20C66F000, v46, v48, "Opened Settings link: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x20F30E080](v52, -1, -1);
      MEMORY[0x20F30E080](v50, -1, -1);

      (*(v118 + 8))(v113, v117);
      v56(v116, v15);
      return;
    }

    v104 = *(v16 + 8);
    v104(v45, v15);
    (*(v118 + 8))(v44, v117);
    v105 = v47;
  }

  else
  {
    v80 = v114;
    static WOLog.app.getter();
    v81 = v110;
    (*v43)(v110, v29, v15);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v81;
      v86 = swift_slowAlloc();
      v119 = v86;
      *v84 = 136315138;
      v87 = URL.absoluteString.getter();
      v89 = v88;
      v108 = v15;
      v90 = *(v35 + 8);
      v90(v85, v15);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v119);

      *(v84 + 4) = v91;
      _os_log_impl(&dword_20C66F000, v82, v83, "Failed to open Settings link: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x20F30E080](v86, -1, -1);
      MEMORY[0x20F30E080](v84, -1, -1);

      (*(v118 + 8))(v114, v117);
      v90(v29, v108);
      return;
    }

    v104 = *(v16 + 8);
    v104(v81, v15);
    (*(v118 + 8))(v80, v117);
    v105 = v29;
  }

  v104(v105, v15);
}

uint64_t MetricPlatter.metricsBindingWrapper.getter()
{
  result = MetricPlatter.metrics.getter();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t (*MetricPlatter.metricsBindingWrapper.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = MetricPlatter.metrics.getter();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v4 = v3;
  }

  *a1 = v4;
  return MetricPlatter.metricsBindingWrapper.modify;
}

uint64_t MetricPlatter.metricsBindingWrapper.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MetricPlatter.metrics.setter();
  }

  MetricPlatter.metrics.setter();
}

uint64_t getEnumTagSinglePayload for IntervalStepDistanceAndTimeGoalView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalStepDistanceAndTimeGoalView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntervalStepDistanceAndTimeGoalView.body.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAEyAGyAH04TimeK0V_ACyAlAEAMyQrAQFQOyAA6ButtonVyAUG_Qo_AH012PinnedBottomT13ModifierPhoneVGtGGAH0kgW0VGGA1_G_Qo_AA024_EnvironmentKeyTransformW0VySbGGtGGA6_GMd);
  MEMORY[0x28223BE20](v2);
  v4 = v24 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB022SwimmingDistancePickerV_AA15ModifiedContentVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyANyAA14NavigationLinkVyAA4TextVANyAA0F0VyAIyAJ04TimeL0V_ANyApAEAQyQrAUFQOyAA6ButtonVyAYG_Qo_AJ012PinnedBottomW13ModifierPhoneVGtGGAJ0ldZ0VGGA7_G_Qo_AA024_EnvironmentKeyTransformZ0VySbGGtGGMd);
  closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter(v0, &v4[*(v5 + 44)]);
  v26 = *(v0 + 32);
  v24[0] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo21NLSessionActivityGoalCGMd);
  State.wrappedValue.getter();
  v6 = v25;
  [v25 goalTypeIdentifier];

  v7 = _HKWorkoutGoalType.displayName(formattingManager:)();
  v9 = v8;
  v24[0] = v26;
  State.wrappedValue.getter();
  v10 = v25;
  v11 = [v25 goalTypeIdentifier];

  _HKWorkoutGoalType.colorForCurrentContrastMode.getter(v11);
  v12 = Color.init(uiColor:)();
  v24[0] = v26;
  State.wrappedValue.getter();
  v13 = v25;
  v14 = [v25 goalTypeIdentifier];

  _HKWorkoutGoalType.color.getter(v14);
  v15 = Color.init(uiColor:)();
  v16 = static Edge.Set.vertical.getter();
  v17 = &v4[*(v2 + 36)];
  *v17 = v7;
  *(v17 + 1) = v9;
  *(v17 + 2) = v12;
  *(v17 + 3) = v15;
  v17[32] = v16;
  v24[0] = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo10HKQuantityCGMd);
  State.wrappedValue.getter();
  v18 = v25;
  v19 = swift_allocObject();
  v20 = *(v1 + 80);
  *(v19 + 80) = *(v1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(v1 + 96);
  *(v19 + 128) = *(v1 + 112);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  v22 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v22;
  outlined init with copy of IntervalStepDistanceAndTimeGoalView(v1, v24);
  type metadata accessor for HKQuantity();
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
  _sSo10HKQuantityCSo8NSObjectCSQ10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type HKQuantity and conformance NSObject, type metadata accessor for HKQuantity);
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v4, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAEyAGyAH04TimeK0V_ACyAlAEAMyQrAQFQOyAA6ButtonVyAUG_Qo_AH012PinnedBottomT13ModifierPhoneVGtGGAH0kgW0VGGA1_G_Qo_AA024_EnvironmentKeyTransformW0VySbGGtGGA6_GMd);
}

void closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v5 - 8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_AH012PinnedBottomO13ModifierPhoneVGtGGAH0jgS0VGMd);
  MEMORY[0x28223BE20](v61);
  v7 = &v54[-v6];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_ACyAA0J0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAGG_Qo_AL012PinnedBottomR13ModifierPhoneVGtGGAL0mjU0VGGA_GMd);
  MEMORY[0x28223BE20](v60);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA14NavigationLinkVyAA4TextVAJyAA6VStackVyAA05TupleC0Vy07WorkoutB010TimePickerV_AJyAcAEADyQrAHFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qcU0VGGA_G_Qo_Md);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v54[-v11];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);
  MEMORY[0x28223BE20](v63);
  v68 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v62 = &v54[-v14];
  MEMORY[0x28223BE20](v15);
  v67 = &v54[-v16];
  v17 = *(a1 + 104);
  v72 = *(a1 + 88);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo10HKQuantityCGMd);
  State.projectedValue.getter();
  v19 = v70;
  v20 = v71;
  v21 = [objc_opt_self() distanceColors];
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v21 nonGradientTextColor];

  if (!v23)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v24 = Color.init(uiColor:)();
  LOBYTE(v72) = 0;
  static Binding.constant(_:)();
  v57 = *(&v70 + 1);
  v58 = v70;
  v55 = v71;
  type metadata accessor for SwimmingDistancePickerViewModel();
  swift_allocObject();
  v56 = specialized SwimmingDistancePickerViewModel.init(formattingManager:lapLength:tintColor:)(v18, v19, *(&v19 + 1), v20, v24);

  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB010TimePickerV_AA15ModifiedContentVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_AJ012PinnedBottomR13ModifierPhoneVGtGGMd);
  closure #1 in closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter(a1, &v7[*(v25 + 44)]);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v29;
  v70 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo21NLSessionActivityGoalCGMd);
  State.wrappedValue.getter();
  v31 = v72;
  v32 = [v72 goalTypeIdentifier];

  _HKWorkoutGoalType.colorForCurrentContrastMode.getter(v32);
  v33 = Color.init(uiColor:)();
  v70 = *(a1 + 48);
  State.wrappedValue.getter();
  v34 = v72;
  v35 = [v72 goalTypeIdentifier];

  _HKWorkoutGoalType.color.getter(v35);
  v36 = Color.init(uiColor:)();
  v37 = static Edge.Set.vertical.getter();
  v38 = &v7[*(v61 + 36)];
  *v38 = v28;
  *(v38 + 1) = v30;
  *(v38 + 2) = v33;
  *(v38 + 3) = v36;
  v38[32] = v37;
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
  NavigationLink.init(destination:label:)();
  static Edge.Set.horizontal.getter();
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>();
  v39 = v64;
  View.scenePadding(_:)();
  outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v9, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_ACyAA0J0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAGG_Qo_AL012PinnedBottomR13ModifierPhoneVGtGGAL0mjU0VGGA_GMd);
  v70 = *(a1 + 32);
  State.wrappedValue.getter();
  v40 = v72;
  v41 = [v72 value];

  if (v41)
  {
    [v41 _value];
    v43 = v42;

    v44 = v43 == 0.0;
  }

  else
  {
    v44 = 0;
  }

  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v62;
  (*(v65 + 32))(v62, v39, v66);
  v48 = (v47 + *(v63 + 36));
  *v48 = KeyPath;
  v48[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_14;
  v48[2] = v46;
  v49 = v67;
  sub_20C68AA44(v47, v67);
  v50 = v68;
  outlined init with copy of ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>(v49, v68, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);
  v51 = v69;
  v52 = v58;
  *v69 = v56;
  v51[1] = v52;
  v51[2] = v57;
  *(v51 + 24) = v55;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22SwimmingDistancePickerV_05SwiftB015ModifiedContentVyAD4ViewPADE12scenePaddingyQrAD4EdgeO3SetVFQOyAFyAD14NavigationLinkVyAD4TextVAFyAD6VStackVyAD05TupleI0VyAA04TimeE0V_AFyAhDEAIyQrAMFQOyAD6ButtonVyAQG_Qo_AA012PinnedBottomT13ModifierPhoneVGtGGAA0eiW0VGGA1_G_Qo_AD024_EnvironmentKeyTransformW0VySbGGtMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>(v50, v51 + *(v53 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);

  outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v49, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v50, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);
}

uint64_t closure #1 in closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v36[1] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v6 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_07WorkoutB0012PinnedBottomJ13ModifierPhoneVGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = v36 - v12;
  v13 = *(a1 + 104);
  v58 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo21NLSessionActivityGoalCGMd);
  State.projectedValue.getter();
  v14 = v44;
  v15 = v45;
  v16 = v46;
  LOBYTE(v58) = 0;
  static Binding.constant(_:)();
  v39 = v44;
  v38 = v45;
  v37 = v46;
  type metadata accessor for TimePickerViewModel();
  swift_allocObject();

  v17 = v16;
  *&v58 = TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v13, v14, v15, v17, 1, 1, 0, 1, 0.0);

  State.init(wrappedValue:)();

  v18 = v44;
  v19 = v45;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  *&v58 = String.init(localized:table:bundle:locale:comment:)();
  *(&v58 + 1) = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 80);
  *(v23 + 80) = *(a1 + 64);
  *(v23 + 96) = v24;
  *(v23 + 112) = *(a1 + 96);
  *(v23 + 128) = *(a1 + 112);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  v26 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v26;
  outlined init with copy of IntervalStepDistanceAndTimeGoalView(a1, &v44);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  static Edge.Set.horizontal.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  v27 = v40;
  v28 = v42;
  View.scenePadding(_:)();
  (*(v43 + 8))(v8, v28);
  v29 = v41;
  outlined init with copy of ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>(v27, v41, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_07WorkoutB0012PinnedBottomJ13ModifierPhoneVGMd);
  *&v58 = v18;
  *(&v58 + 1) = v19;
  v30 = v19;
  v31 = v39;
  v32 = v38;
  *&v59 = v39;
  *(&v59 + 1) = v38;
  LOBYTE(v14) = v37;
  LOBYTE(v60) = v37;
  *(&v60 + 1) = *v57;
  DWORD1(v60) = *&v57[3];
  BYTE8(v60) = 0;
  HIDWORD(v60) = *&v56[3];
  *(&v60 + 9) = *v56;
  *v62 = 0;
  *&v62[8] = 0;
  v61 = 0;
  v62[16] = 1;
  v33 = v59;
  a2[2] = v60;
  a2[3] = 0u;
  *a2 = v58;
  a2[1] = v33;
  *(a2 + 57) = *&v62[1];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI10TimePickerV_05SwiftB015ModifiedContentVyAD4ViewPADE12scenePaddingyQrAD4EdgeO3SetVFQOyAD6ButtonVyAD4TextVG_Qo_AA012PinnedBottomM13ModifierPhoneVGtMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>(v29, a2 + *(v34 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_07WorkoutB0012PinnedBottomJ13ModifierPhoneVGMd);
  outlined init with copy of TimePicker(&v58, &v44);
  outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v27, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_07WorkoutB0012PinnedBottomJ13ModifierPhoneVGMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(v29, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_07WorkoutB0012PinnedBottomJ13ModifierPhoneVGMd);
  v44 = v18;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v14;
  *v49 = *v57;
  *&v49[3] = *&v57[3];
  v50 = 0;
  *v51 = *v56;
  *&v51[3] = *&v56[3];
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 1;
  return outlined destroy of TimePicker(&v44);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter(uint64_t a1)
{
  v11 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo21NLSessionActivityGoalCGMd);
  State.wrappedValue.getter();
  v2 = [v13 value];

  if (!v2)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  v11 = *(a1 + 48);
  State.wrappedValue.getter();
  v11 = *(a1 + 32);
  State.wrappedValue.getter();
  v3 = [v13 value];

  [v13 setRequiredDistance_];
  v4 = *(a1 + 24);
  v5 = v13;
  WorkoutStep.goal.setter();
  if (!*a1)
  {
LABEL_8:
    type metadata accessor for ConfigurationNavigationModel();
    _sSo10HKQuantityCSo8NSObjectCSQ10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = *(a1 + 112);
  if (v11 != 2 || v6)
  {
    ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(v4, v6);
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v13 = *(a1 + 64);
  *&v11 = v13;
  *(&v11 + 1) = v7;
  v12 = v8;
  v10[15] = 0;
  outlined init with copy of Transaction(&v13, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.setter();

  outlined destroy of Transaction(&v13);
}

uint64_t closure #2 in closure #1 in IntervalStepDistanceAndTimeGoalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #2 in IntervalStepDistanceAndTimeGoalView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo10HKQuantityCGMd);
  State.wrappedValue.getter();
  [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo21NLSessionActivityGoalCGMd);
  return State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAEyAGyAH04TimeK0V_ACyAlAEAMyQrAQFQOyAA6ButtonVyAUG_Qo_AH012PinnedBottomT13ModifierPhoneVGtGGAH0kgW0VGGA1_G_Qo_AA024_EnvironmentKeyTransformW0VySbGGtGGA6_GMd);
    lazy protocol witness table accessor for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AA15ModifiedContentVyAA0E0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAJyAA14NavigationLinkVyAA4TextVAJyACyAEyAF04TimeI0V_AJyAlAEAMyQrAQFQOyAA6ButtonVyAUG_Qo_AF012PinnedBottomT13ModifierPhoneVGtGGAF0ieW0VGGA1_G_Qo_AA024_EnvironmentKeyTransformW0VySbGGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_AH012PinnedBottomO13ModifierPhoneVGtGGAH0jgS0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_AA15ModifiedContentVyAA0E0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAA4TextVG_Qo_AF012PinnedBottomO13ModifierPhoneVGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_ACyAA0J0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAGG_Qo_AL012PinnedBottomR13ModifierPhoneVGtGGAL0mjU0VGGA_GMd);
    lazy protocol witness table accessor for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA4TextVAA15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB010TimePickerV_AGyAA0J0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6ButtonVyAEG_Qo_AL012PinnedBottomR13ModifierPhoneVGtGGAL0mjU0VGGMd);
    lazy protocol witness table accessor for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<Text, ModifiedContent<VStack<TupleView<(TimePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_56()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo10HKQuantityCSo8NSObjectCSQ10ObjectiveCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MirrorRaceMessageWithMetricsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MirrorRaceMessageWithMetricsView(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in MirrorRaceMessageWithMetricsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGA109_GMd);
  MEMORY[0x28223BE20](v54);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  MEMORY[0x28223BE20](v53);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(2, &v73);
  v62 = v75;
  v63 = v76;
  v64 = v77;
  LOBYTE(v65) = v78;
  v60 = v73;
  v61 = v74;
  KeyPath = swift_getKeyPath();
  MetricsPublisher.racePositionStatePublisher.getter();
  RacePositionStatePublisher.racePosition.getter();

  MetricsPublisher.racePositionStatePublisher.getter();
  RacePositionStatePublisher.positionOnRoute.getter();
  v13 = v12;

  MetricsPublisher.racePositionStatePublisher.getter();
  RacePositionStatePublisher.ghostPositionOnRoute.getter();
  v15 = v14;

  v16 = *(a1 + 16);
  MetricsPublisher.raceInformationPublisher.getter();
  v17 = RaceInformationPublisher.routePoints.getter();

  type metadata accessor for RaceElevationChartProperties();
  swift_allocObject();
  v18 = specialized RaceElevationChartProperties.init(activityType:chartPoints:)(v16, v17);

  v55 = a1;
  v19 = *(a1 + 24);
  v20 = type metadata accessor for RaceElevationMetricView();
  v21 = &v11[v20[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v20[10];
  v23 = one-time initialization token for iconWidth;
  v24 = v19;
  if (v23 != -1)
  {
    v52 = v24;
    swift_once();
    v24 = v52;
  }

  *&v11[v22] = *&static RacePlatterConstants.iconWidth * 0.5;
  *&v11[v20[11]] = 0x4014000000000000;
  *&v11[v20[5]] = v13;
  *&v11[v20[7]] = v15;
  *&v11[v20[8]] = v18;
  *&v11[v20[6]] = v24;
  v25 = swift_getKeyPath();
  v26 = &v11[*(v53 + 36)];
  *v26 = v25;
  v26[8] = 2;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x401C000000000000;
  v7[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy07WorkoutB0027RaceRemainingDistanceMetricD0V_AA19_ConditionalContentVyANyANyANyANyANyAJ06EnergymD0VAPGANyAJ09HeartRatemD0VAJ0qr9AggregatemD0VGGANyANyAuJ04ZonemD0VGANyAJ06TimeIntmD0VAYGGGANyANyANyA0_AJ04PacemD0VGANyA5_A5_GGANyA7_ANyAJ0lmD0VAJ04LapsmD0VGGGGANyANyANyANyANyANyAJ07CadencemD0VAA05EmptyD0VGA18_GA18_GANyAJ015ElevationChangemD0VAJ016CurrentElevationmD0VGGANyANyAJ05PowermD0VA31_GANyA31_AJ014FlightsClimbedmD0VGGGANyANyANyAJ015SegmentDurationmD0VAJ0l6DetailmD0VGANyA5_APGGANyANyAPA31_GANyA31_AA08ModifiedO0VyA47_yAJ0iuD0VAJ0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGANyANyANyANyA41_A5_GANyAJ012StrideLengthmD0VA66_GGANyANyAJ019VerticalOscillationmD0VA70_GANyAJ013GroundContactumD0VA73_GGGANyANyA25_AJ016DownhillRunCountmD0VGANyA20_AA0F0VyAIyA47_yAA4TextVAJ0M9ValueFontVG_A47_yA47_yA83_AJ0M19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGMd);
  closure #1 in closure #1 in MirrorRaceMessageWithMetricsView.body.getter(v55, &v7[*(v27 + 44)]);
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGMd) + 36)] = 0x3FF0000000000000;
  v28 = swift_getKeyPath();
  v29 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGMd) + 36)];
  *v29 = v28;
  v29[8] = 5;
  LOBYTE(v28) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGMd) + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(v28) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v39 = &v7[*(v54 + 36)];
  *v39 = v28;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = v56;
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v11, v56, &_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  v45 = v57;
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v7, v57, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGA109_GMd);
  v68 = v62;
  v69 = v63;
  v70 = v64;
  v66 = v60;
  v67 = v61;
  *&v71 = v65;
  *(&v71 + 1) = KeyPath;
  LOBYTE(v72) = 2;
  DWORD1(v72) = *&v59[3];
  *(&v72 + 1) = *v59;
  *(&v72 + 1) = 0x3FF0000000000000;
  v46 = v71;
  *(a2 + 64) = v64;
  *(a2 + 80) = v46;
  v47 = v67;
  *a2 = v66;
  *(a2 + 16) = v47;
  v48 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v48;
  *(a2 + 96) = v72;
  *(a2 + 112) = 0x4000000000000000;
  *(a2 + 120) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAKyAF0F9ViewStyleOGGAA06_TraitkL0VyAA014LayoutPriorityrJ0VGG_AA6SpacerVACyAF019RaceElevationMetricP0VAVGA3_ACyACyACyACyAA6HStackVyAA05TupleP0VyAF0v17RemainingDistancexP0V_AA012_ConditionalD0VyA14_yA14_yA14_yA14_yA14_yAF06EnergyxP0VA16_GA14_yAF09HeartRatexP0VAF018HeartRateAggregatexP0VGGA14_yA14_yA21_AF04ZonexP0VGA14_yAF010TimeInZonexP0VA25_GGGA14_yA14_yA14_yA28_AF04PacexP0VGA14_yA33_A33_GGA14_yA35_A14_yAF08DistancexP0VAF04LapsxP0VGGGGA14_yA14_yA14_yA14_yA14_yA14_yAF07CadencexP0VAA05EmptyP0VGA46_GA46_GA14_yAF0w6ChangexP0VAF07CurrentwxP0VGGA14_yA14_yAF05PowerxP0VA59_GA14_yA59_AF014FlightsClimbedxP0VGGGA14_yA14_yA14_yAF015SegmentDurationxP0VAF014DistanceDetailxP0VGA14_yA33_A16_GGA14_yA14_yA16_A59_GA14_yA59_ACyACyAF0f4TimeP0VAF0X6DetailVGAA011_ForegroundqL0VyAA5ColorVGGGGGGGA14_yA14_yA14_yA14_yA69_A33_GA14_yAF012StrideLengthxP0VA92_GGA14_yA14_yAF019VerticalOscillationxP0VA96_GA14_yAF017GroundContactTimexP0VA99_GGGA14_yA14_yA53_AF016DownhillRunCountxP0VGA14_yA48_A8_yA10_yACyAeF0x5ValueH0VG_ACyACyAeF0x11DescriptionmH0VGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGA0_GAVGAA08_PaddingS0VGA127_GtMd);
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v44, a2 + v49[16], &_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  v50 = a2 + v49[20];
  *v50 = 0x4000000000000000;
  *(v50 + 8) = 0;
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v45, a2 + v49[24], &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGA109_GMd);
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(&v66, &v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAKyAF0F9ViewStyleOGGAA06_TraitkL0VyAA014LayoutPriorityrJ0VGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v7, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGA109_GMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v11, &_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v45, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB0027RaceRemainingDistanceMetricG0V_AA012_ConditionalD0VyALyALyALyALyALyAH06EnergylG0VANGALyAH09HeartRatelG0VAH0op9AggregatelG0VGGALyALyAsH04ZonelG0VGALyAH06TimeInrlG0VAWGGGALyALyALyAzH04PacelG0VGALyA3_A3_GGALyA5_ALyAH0klG0VAH04LapslG0VGGGGALyALyALyALyALyALyAH07CadencelG0VAA05EmptyG0VGA16_GA16_GALyAH015ElevationChangelG0VAH07CurrentylG0VGGALyALyAH05PowerlG0VA29_GALyA29_AH014FlightsClimbedlG0VGGGALyALyALyAH015SegmentDurationlG0VAH0k6DetaillG0VGALyA3_ANGGALyALyANA29_GALyA29_ACyACyAH0hsG0VAH0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGALyALyALyALyA39_A3_GALyAH012StrideLengthlG0VA62_GGALyALyAH019VerticalOscillationlG0VA66_GALyAH013GroundContactslG0VA69_GGGALyALyA23_AH016DownhillRunCountlG0VGALyA18_AEyAGyACyAA4TextVAH0L9ValueFontVG_ACyACyA77_AH0L19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA14_PaddingLayoutVGA109_GMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v44, &_s7SwiftUI15ModifiedContentVy07WorkoutB023RaceElevationMetricViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd);
  v75 = v62;
  v76 = v63;
  v77 = v64;
  v73 = v60;
  v74 = v61;
  v78 = v65;
  v79 = KeyPath;
  v80 = 2;
  *v81 = *v59;
  *&v81[3] = *&v59[3];
  v82 = 0x3FF0000000000000;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(&v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAKyAF0F9ViewStyleOGGAA06_TraitkL0VyAA014LayoutPriorityrJ0VGGMd);
}

void closure #1 in closure #1 in MirrorRaceMessageWithMetricsView.body.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v52);
  v53 = &v41 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v44);
  v6 = (&v41 - v5);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v45);
  v42 = &v41 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v41 - v12;
  v13 = type metadata accessor for RacePosition();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  MetricsPublisher.racePositionStatePublisher.getter();
  RacePositionStatePublisher.racePosition.getter();

  (*(v14 + 104))(v16, *MEMORY[0x277D7DF58], v13);
  lazy protocol witness table accessor for type RacePosition and conformance RacePosition(&lazy protocol witness table cache variable for type RacePosition and conformance RacePosition, MEMORY[0x277D7DF88]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  v22 = 0;
  v43 = v20;
  if ((v20 & 1) == 0)
  {
    MetricsPublisher.racePositionStatePublisher.getter();
    RacePositionStatePublisher.remainingRouteDistance.getter();
    v22 = v23;
  }

  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v26 = v24;
  v27 = FIUIDistanceTypeForActivityType();
  MetricsPublisher.currentPace.getter();
  v29 = v28;
  MetricsPublisher.workoutStatePublisher.getter();
  v30 = WorkoutStatePublisher.gpsUnavailable.getter();

  KeyPath = swift_getKeyPath();
  *&v68 = v25;
  *(&v68 + 1) = 4;
  *&v69 = v26;
  *(&v69 + 1) = KeyPath;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v29;
  LOBYTE(v71) = v30 & 1;
  v72 = 0;
  v73 = 0;
  v66 = v70;
  v67[0] = v71;
  *&v67[1] = 0;
  v64 = v68;
  v65 = v69;
  v74 = 1;
  BYTE8(v67[1]) = 1;
  outlined init with copy of PaceMetricView(&v68, &v55);
  lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v66 = v57;
  v67[0] = *v58;
  *(v67 + 9) = *&v58[9];
  v64 = v55;
  v65 = v56;
  v75 = 0;
  BYTE9(v67[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_2(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v57 = v62;
  *v58 = v63[0];
  *&v58[10] = *(v63 + 10);
  v55 = v60;
  v56 = v61;
  v76 = 0;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v32 = v67[0];
  v6[2] = v66;
  v6[3] = v32;
  *(v6 + 59) = *(v67 + 11);
  v33 = v65;
  *v6 = v64;
  v6[1] = v33;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v34 = v42;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v34, v49, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v35 = v46;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v34, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v35, v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  v36 = v50;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v68);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v35, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v37 = v51;
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v36, v51, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v38 = v54;
  *v54 = v22;
  *(v38 + 8) = v43 & 1;
  v38[2] = v25;
  v38[3] = v27;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI31RaceRemainingDistanceMetricViewV_05SwiftB019_ConditionalContentVyAFyAFyAFyAFyAFyAA06EnergyfG0VAHGAFyAA09HeartRatefG0VAA0lm9AggregatefG0VGGAFyAFyAmA04ZonefG0VGAFyAA06TimeInofG0VAQGGGAFyAFyAFyAtA04PacefG0VGAFyA2YGGAFyA_AFyAA0efG0VAA04LapsfG0VGGGGAFyAFyAFyAFyAFyAFyAA07CadencefG0VAD05EmptyG0VGA10_GA10_GAFyAA015ElevationChangefG0VAA07CurrentvfG0VGGAFyAFyAA05PowerfG0VA23_GAFyA23_AA014FlightsClimbedfG0VGGGAFyAFyAFyAA015SegmentDurationfG0VAA0e6DetailfG0VGAFyAyHGGAFyAFyAHA23_GAFyA23_AD08ModifiedJ0VyA39_yAA0apG0VAA0F6DetailVGAD24_ForegroundStyleModifierVyAD5ColorVGGGGGGGAFyAFyAFyAFyA33_AYGAFyAA012StrideLengthfG0VA58_GGAFyAFyAA019VerticalOscillationfG0VA62_GAFyAA013GroundContactpfG0VA65_GGGAFyAFyA17_AA016DownhillRunCountfG0VGAFyA12_AD6HStackVyAD05TupleG0VyA39_yAD4TextVAA0F9ValueFontVG_A39_yA39_yA77_AA0F19DescriptionCoreFontVGAA26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtMd);
  outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v37, v38 + *(v39 + 48), &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v40 = v25;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v36, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(RaceRemainingDistanceMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChan(v37, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
}

uint64_t protocol witness for View.body.getter in conformance MirrorRaceMessageWithMetricsView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGASySiSgGGASyAN0lD5StyleOGGAA06_TraitqR0VyAA0g8PrioritywP0VGG_AA6SpacerVAKyAN019RaceElevationMetricD0VA2_GA11_AKyAKyAKyAKyAA6HStackVyAIyAN0z23RemainingDistanceMetricD0V_AA012_ConditionalJ0VyA20_yA20_yA20_yA20_yA20_yAN012EnergyMetricD0VA22_GA20_yAN015HeartRateMetricD0VAN024HeartRateAggregateMetricD0VGGA20_yA20_yA27_AN010ZoneMetricD0VGA20_yAN016TimeInZoneMetricD0VA31_GGGA20_yA20_yA20_yA34_AN010PaceMetricD0VGA20_yA39_A39_GGA20_yA41_A20_yAN014DistanceMetricD0VAN010LapsMetricD0VGGGGA20_yA20_yA20_yA20_yA20_yA20_yAN013CadenceMetricD0VAA05EmptyD0VGA52_GA52_GA20_yAN021ElevationChangeMetricD0VAN022CurrentElevationMetricD0VGGA20_yA20_yAN011PowerMetricD0VA65_GA20_yA65_AN020FlightsClimbedMetricD0VGGGA20_yA20_yA20_yAN021SegmentDurationMetricD0VAN020DistanceDetailMetricD0VGA20_yA39_A22_GGA20_yA20_yA22_A65_GA20_yA65_AKyAKyAN0l4TimeD0VAN12MetricDetailVGAA011_ForegroundvR0VyAA5ColorVGGGGGGGA20_yA20_yA20_yA20_yA75_A39_GA20_yAN018StrideLengthMetricD0VA98_GGA20_yA20_yAN025VerticalOscillationMetricD0VA102_GA20_yAN023GroundContactTimeMetricD0VA105_GGGA20_yA20_yA59_AN022DownhillRunCountMetricD0VGA20_yA54_A16_yAIyAKyAmN011MetricValueN0VG_AKyAKyAmN017MetricDescriptionsN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGtGGA8_GA2_GAA08_PaddingG0VGA133_GtGGMd);
  return closure #1 in MirrorRaceMessageWithMetricsView.body.getter(v6, a1 + *(v4 + 44));
}

uint64_t lazy protocol witness table accessor for type RacePosition and conformance RacePosition(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<RaceElevationMetricView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_6(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RaceWorkoutConfigurationRow.init(workoutConfiguration:activityMoveMode:formattingManager:healthStore:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *a4 = EnvironmentObject.init()();
  *(a4 + 8) = v8;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *(a4 + 16) = EnvironmentObject.init()();
  *(a4 + 24) = v9;
  State.init(wrappedValue:)();
  *(a4 + 72) = v12;
  *(a4 + 80) = v13;
  type metadata accessor for RaceWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  result = ObservedObject.init(wrappedValue:)();
  *(a4 + 32) = result;
  *(a4 + 40) = v11;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t RaceWorkoutConfigurationRow.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AGyAA6VStackVyAEyAA4TextV_AA0E0PAAE10fontWeightyQrAW6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA17_A9_G_A17_tGGAYGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAUySiSgGGAA6SpacerVAA6ButtonVyAGyAGyAGy07WorkoutB0021RaceCroppedMapPlatterE0VAQGAA11_ClipEffectVyAA9RectangleVGGA51_yAA16RoundedRectangleVGGGtGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAA6HStackVyAKyAGyAA6SpacerVAA12_FrameLayoutVG_AA0I0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAKyAGyAGyAA14NavigationLinkVyAA05EmptyI0VAGyAGy07WorkoutB004Raceu13ConfigurationI0VAA30_EnvironmentKeyWritingModifierVy0U4Core0uW10DataSourceCSgGGA5_yA1_0wR5ModelCSgGGGAA15_HiddenModifierVGAQG_AGyAGyAGyAA5ImageVA5_yAA4FontVSgGGA5_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainqO0VQo_tGG_AGyAIyAKyAA4TextV_AtAE10fontWeightyQrA25_6WeightVSgFQOyAGyAGyAA5GroupVyAKyAGyA48_A32_G_A48_tGGA27_GAA011_ForegroundO8ModifierVyAA017HierarchicalShapeO0VGG_Qo_tGGA5_ySiSgGGtGGAA08_PaddingM0VGAMyAKyAGyAGyAGyAGyAGyACyACyA23_A23_GAGyAGyA23_AA012_AspectRatioM0VGAQGGA27_GA5_yA23_5ScaleOGGAA17_FlipForRTLEffectVGA32_GAA31AccessibilityAttachmentModifierVG_A70_AoXyAGyAGyAGyA1_0v17CroppedMapPlatterI0VAQGA35_yAA9RectangleVGGA35_yAA16RoundedRectangleVGGGtGG_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA6SpacerVAA12_FrameLayoutVG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyACyACyAA14NavigationLinkVyAA05EmptyG0VACyACy07WorkoutB004Races13ConfigurationG0VAA30_EnvironmentKeyWritingModifierVy0S4Core0sU10DataSourceCSgGGA1_yAY0uP5ModelCSgGGGAA07_HiddenY0VGAMG_ACyACyACyAA5ImageVA1_yAA4FontVSgGGA1_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainoM0VQo_tGG_ACyAEyAGyAA4TextV_ApAE10fontWeightyQrA21_6WeightVSgFQOyACyACyAA5GroupVyAGyACyA44_A28_G_A44_tGGA23_GAA011_ForegroundmY0VyAA017HierarchicalShapeM0VGG_Qo_tGGA1_ySiSgGGtGGAA08_PaddingK0VGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *(v0 + 48);
  v22[2] = *(v0 + 32);
  v22[3] = v10;
  v22[4] = *(v0 + 64);
  v23 = *(v0 + 80);
  v11 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v11;
  if (static Platform.current.getter())
  {
    *v9 = static HorizontalAlignment.leading.getter();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAIyAMyAMyAA14NavigationLinkVyAA05EmptyD0VAMyAMy07WorkoutB004Raceu13ConfigurationD0VAA30_EnvironmentKeyWritingModifierVy0U4Core0uW10DataSourceCSgGGA5_yA1_0wR5ModelCSgGGGAA15_HiddenModifierVGAQG_AMyAMyAMyAA5ImageVA5_yAA4FontVSgGGA5_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainqO0VQo_tGG_AMyAA0F0VyAIyAA4TextV_AtAE10fontWeightyQrA25_6WeightVSgFQOyAMyAMyAA5GroupVyAIyAMyA50_A32_G_A50_tGGA27_GAA011_ForegroundO8ModifierVyAA017HierarchicalShapeO0VGG_Qo_tGGA5_ySiSgGGtGGMd);
    closure #1 in RaceWorkoutConfigurationRow.body.getter(v22, &v9[*(v12 + 44)]);
    if (one-time initialization token for insets != -1)
    {
      swift_once();
    }

    v20 = *&qword_27C7EB300;
    v21 = static RowLayoutConstants.insets;
    v13 = static Edge.Set.all.getter();
    v14 = &v9[*(v7 + 36)];
    *v14 = v13;
    v15 = v21;
    *(v14 + 24) = v20;
    *(v14 + 8) = v15;
    v14[40] = 0;
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v9, v6, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA6SpacerVAA12_FrameLayoutVG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyACyACyAA14NavigationLinkVyAA05EmptyG0VACyACy07WorkoutB004Races13ConfigurationG0VAA30_EnvironmentKeyWritingModifierVy0S4Core0sU10DataSourceCSgGGA1_yAY0uP5ModelCSgGGGAA07_HiddenY0VGAMG_ACyACyACyAA5ImageVA1_yAA4FontVSgGGA1_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainoM0VQo_tGG_ACyAEyAGyAA4TextV_ApAE10fontWeightyQrA21_6WeightVSgFQOyACyACyAA5GroupVyAGyACyA44_A28_G_A44_tGGA23_GAA011_ForegroundmY0VyAA017HierarchicalShapeM0VGG_Qo_tGGA1_ySiSgGGtGGAA08_PaddingK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AGyAA6VStackVyAEyAA4TextV_AA0E0PAAE10fontWeightyQrAW6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA17_A9_G_A17_tGGAYGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAUySiSgGGAA6SpacerVAA6ButtonVyAGyAGyAGy07WorkoutB0021RaceCroppedMapPlatterE0VAQGAA11_ClipEffectVyAA9RectangleVGGA51_yAA16RoundedRectangleVGGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    v16 = v9;
    v17 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA6SpacerVAA12_FrameLayoutVG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyACyACyAA14NavigationLinkVyAA05EmptyG0VACyACy07WorkoutB004Races13ConfigurationG0VAA30_EnvironmentKeyWritingModifierVy0S4Core0sU10DataSourceCSgGGA1_yAY0uP5ModelCSgGGGAA07_HiddenY0VGAMG_ACyACyACyAA5ImageVA1_yAA4FontVSgGGA1_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainoM0VQo_tGG_ACyAEyAGyAA4TextV_ApAE10fontWeightyQrA21_6WeightVSgFQOyACyACyAA5GroupVyAGyACyA44_A28_G_A44_tGGA23_GAA011_ForegroundmY0VyAA017HierarchicalShapeM0VGG_Qo_tGGA1_ySiSgGGtGGAA08_PaddingK0VGMd;
  }

  else
  {
    *v3 = static VerticalAlignment.center.getter();
    *(v3 + 1) = 0x4020000000000000;
    v3[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AKyAA6VStackVyAIyAA4TextV_AA0D0PAAE10fontWeightyQrA_6WeightVSgFQOyAKyAKyAA5GroupVyAIyAKyA21_A13_G_A21_tGGA1_GAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAYySiSgGGAA6SpacerVAA6ButtonVyAKyAKyAKy07WorkoutB0021RaceCroppedMapPlatterD0VAUGAA11_ClipEffectVyAA9RectangleVGGA55_yAA16RoundedRectangleVGGGtGGMd);
    closure #2 in RaceWorkoutConfigurationRow.body.getter(v22, &v3[*(v18 + 44)]);
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v3, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AGyAA6VStackVyAEyAA4TextV_AA0E0PAAE10fontWeightyQrAW6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA17_A9_G_A17_tGGAYGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAUySiSgGGAA6SpacerVAA6ButtonVyAGyAGyAGy07WorkoutB0021RaceCroppedMapPlatterE0VAQGAA11_ClipEffectVyAA9RectangleVGGA51_yAA16RoundedRectangleVGGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AGyAA6VStackVyAEyAA4TextV_AA0E0PAAE10fontWeightyQrAW6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA17_A9_G_A17_tGGAYGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAUySiSgGGAA6SpacerVAA6ButtonVyAGyAGyAGy07WorkoutB0021RaceCroppedMapPlatterE0VAQGAA11_ClipEffectVyAA9RectangleVGGA51_yAA16RoundedRectangleVGGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    v16 = v3;
    v17 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AGyAA6VStackVyAEyAA4TextV_AA0E0PAAE10fontWeightyQrAW6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA17_A9_G_A17_tGGAYGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAUySiSgGGAA6SpacerVAA6ButtonVyAGyAGyAGy07WorkoutB0021RaceCroppedMapPlatterE0VAQGAA11_ClipEffectVyAA9RectangleVGGA51_yAA16RoundedRectangleVGGGtGGMd;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v16, v17);
}

uint64_t closure #1 in RaceWorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  *v16 = static VerticalAlignment.top.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAIyAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKy07WorkoutB004Racet13ConfigurationD0VAA30_EnvironmentKeyWritingModifierVy0T4Core0tV10DataSourceCSgGGA3_yA_0vQ5ModelCSgGGGAA07_HiddenZ0VGAOG_AKyAKyAKyAA5ImageVA3_yAA4FontVSgGGA3_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainpN0VQo_tGGMd);
  closure #1 in closure #1 in RaceWorkoutConfigurationRow.body.getter(a1, &v16[*(v17 + 44)]);
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAA5GroupVyAIyAUyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKtGGAYyAPSgGGAA016_ForegroundStyleS0VyAA017HierarchicalShapeV0VGG_Qo_tGGMd);
  closure #1 in RaceWorkoutConfigurationRow.routeDetail()(a1, &v10[*(v18 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(v5 + 44)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v16, v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v13, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGGMd);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGG_AGyAA6VStackVyAEyAA4TextV_AnAE10fontWeightyQrA19_6WeightVSgFQOyAGyAGyAA5GroupVyAEyAGyA44_A26_G_A44_tGGA21_GAA011_ForegroundlX0VyAA017HierarchicalShapeL0VGG_Qo_tGGA_ySiSgGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v7, a2 + *(v21 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v10, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v16, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v7, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAEyAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racer13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0R4Core0rT10DataSourceCSgGGA_yAW0tO5ModelCSgGGGAA07_HiddenX0VGAKG_AGyAGyAGyAA5ImageVA_yAA4FontVSgGGA_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainnL0VQo_tGGMd);
}

uint64_t closure #1 in closure #1 in RaceWorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = type metadata accessor for PlainButtonStyle();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racek13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGAPyAL0mH5ModelCSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AGyAGyAGyAA5ImageVAPyAA4FontVSgGGAPyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGGMd);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA05TupleC0VyAA15ModifiedContentVyAKyAA14NavigationLinkVyAA05EmptyC0VAKyAKy07WorkoutB004Racen13ConfigurationC0VAA30_EnvironmentKeyWritingModifierVy0N4Core0nP10DataSourceCSgGGATyAP0pK5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVG_AKyAKyAKyAA5ImageVATyAA4FontVSgGGATyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlaingE0VQo_Md);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v29 - v11;
  specialized RaceRowConstants.init()(v44);
  static Platform.current.getter();
  v12 = Platform.rawValue.getter();
  if (v12 == Platform.rawValue.getter())
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = v44[8];
  v31 = v46;
  v30 = v48;
  v29 = v49;
  v43 = 1;
  v42 = v45;
  v41 = v47;
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  MEMORY[0x28223BE20](v14);
  *(&v29 - 2) = a1;
  outlined init with copy of RaceWorkoutConfigurationRow(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEy07WorkoutB004Racej13ConfigurationD0VAA30_EnvironmentKeyWritingModifierVy0J4Core0jL10DataSourceCSgGGANyAJ0lG5ModelCSgGGGAA07_HiddenP0VGAA12_FrameLayoutVG_AEyAEyAEyAA5ImageVANyAA4FontVSgGGANyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEy07WorkoutB004Racej13ConfigurationD0VAA30_EnvironmentKeyWritingModifierVy0J4Core0jL10DataSourceCSgGGANyAJ0lG5ModelCSgGGGAA07_HiddenP0VGAA12_FrameLayoutVG_AEyAEyAEyAA5ImageVANyAA4FontVSgGGANyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGMd);
  Button.init(action:label:)();
  v17 = v37;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGy07WorkoutB004Racek13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGAPyAL0mH5ModelCSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AGyAGyAGyAA5ImageVAPyAA4FontVSgGGAPyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGGMd);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v18 = v33;
  v19 = v36;
  v20 = v39;
  View.buttonStyle<A>(_:)();
  (*(v38 + 8))(v17, v20);
  (*(v34 + 8))(v6, v19);
  v21 = v43;
  v22 = v42;
  LOBYTE(v20) = v41;
  v23 = *(v8 + 16);
  v24 = v35;
  v23(v35, v18, v7);
  *a2 = 0;
  *(a2 + 8) = v21;
  *(a2 + 16) = v32;
  *(a2 + 24) = v22;
  *(a2 + 32) = v31;
  *(a2 + 40) = v20;
  v25 = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyAA05TupleH0VyACyACyAA14NavigationLinkVyAA05EmptyH0VACyACy07WorkoutB004Raceq13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0Q4Core0qS10DataSourceCSgGGAYyAU0sN5ModelCSgGGGAA07_HiddenW0VGAGG_ACyACyACyAA5ImageVAYyAA4FontVSgGGAYyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainlJ0VQo_tMd);
  v23((a2 + *(v26 + 48)), v24, v7);
  v27 = *(v8 + 8);
  v27(v18, v7);
  return (v27)(v24, v7);
}

uint64_t closure #2 in closure #1 in closure #1 in RaceWorkoutConfigurationRow.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB004Racei13ConfigurationF0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kC5ModelCSgGGGMd);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGMd);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v72 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v89);
  v96 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v95 = &v72 - v18;
  v121 = *(a1 + 2);
  v19 = *(&v121 + 1);
  v21 = a1[7];
  v20 = a1[8];
  v87 = a1[6];
  outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(&v121, &v101, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  type metadata accessor for WorkoutConfigurationDataSource();
  v22 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v85 = v21;
  v23 = v20;
  v80 = v22;
  v84 = EnvironmentObject.init()();
  v83 = v24;
  v25 = type metadata accessor for ConfigurationNavigationModel();
  v26 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v82 = v25;
  v81 = v26;
  v79 = EnvironmentObject.init()();
  v78 = v27;
  LOBYTE(v99) = 0;
  State.init(wrappedValue:)();
  v75 = v101;
  v74 = *(&v101 + 1);
  LOBYTE(v99) = 0;
  State.init(wrappedValue:)();
  v77 = v101;
  v76 = *(&v101 + 1);
  type metadata accessor for RaceWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  v28 = v19;
  v73 = ObservedObject.init(wrappedValue:)();
  v72 = v29;
  type metadata accessor for RaceElevationViewModel();
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel__state;
  v99 = 0;
  outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(&v121, &v101, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  v32 = v23;
  Published.init(initialValue:)();
  (*(v8 + 32))(v30 + v31, v10, v7);
  v33 = type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v34 = v32;
  v35 = RaceRouteDataStore.init(healthStore:)();
  v36 = (v30 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore);
  v37 = MEMORY[0x277D7E2D8];
  v36[3] = v33;
  v36[4] = v37;
  *v36 = v35;
  *(v30 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_workoutConfiguration) = v28;

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RaceElevationViewModel and conformance RaceElevationViewModel, type metadata accessor for RaceElevationViewModel);
  v38 = ObservedObject.init(wrappedValue:)();
  v40 = v39;
  v41 = v28;
  v42 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v43 = MEMORY[0x20F3059A0]();

  v86 = v41;
  v44 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(&v121, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  v45 = static TargetZoneStorage.heartRateTargetZone(activityType:)();
  outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(&v121, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);

  v46 = a1[2];
  if (v46 && (v47 = v46, v48 = static ObservableObject.environmentStore.getter(), (v49 = *a1) != 0))
  {
    v50 = v48;

    v51 = static ObservableObject.environmentStore.getter();
    *&v101 = v84;
    *(&v101 + 1) = v83;
    *&v102 = v79;
    *(&v102 + 1) = v78;
    *&v103 = v73;
    *(&v103 + 1) = v72;
    v104 = v75;
    v105 = v74;
    v106 = v43;
    v107 = 0;
    v108 = v45;
    v109 = 0;
    v110 = v85;
    v111 = v34;
    v112 = v87;
    v113 = v38;
    v114 = v40;
    v115 = v77;
    v116 = v76;
    v117 = v50;
    v118 = v46;
    v119 = v51;
    v120 = v49;
    v100 = *(a1 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004RaceE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHyAD0G15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    v52 = v90;
    NavigationLink.init(destination:isActive:label:)();
    v53 = v91;
    (*(v92 + 32))(v91, v52, v93);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v54 = v53;
    v55 = v88;
    outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>(v54, v88, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGMd);
    v56 = (v55 + *(v89 + 36));
    v57 = v102;
    *v56 = v101;
    v56[1] = v57;
    v56[2] = v103;
    v58 = v95;
    outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>(v55, v95, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);
    Image.init(systemName:)();
    v59 = v94;
    static SymbolRenderingMode.hierarchical.getter();
    v60 = type metadata accessor for SymbolRenderingMode();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = Image.symbolRenderingMode(_:)();

    outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v59, &_s7SwiftUI19SymbolRenderingModeVSgMd);
    if (one-time initialization token for ellipsisSize != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Font.Design();
    v63 = v97;
    (*(*(v62 - 8) + 56))(v97, 1, 1, v62);
    v64 = static Font.system(size:weight:design:)();
    outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v63, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    WorkoutConfiguration.displayColor.getter();
    v66 = Color.init(uiColor:)();
    v67 = swift_getKeyPath();
    v68 = v96;
    outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(v58, v96, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);
    v69 = v98;
    outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(v68, v98, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);
    v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVG_ACyACyACyAA5ImageVALyAA4FontVSgGGALyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtMd) + 48);
    *v70 = v61;
    *(v70 + 8) = KeyPath;
    *(v70 + 16) = v64;
    *(v70 + 24) = v67;
    *(v70 + 32) = v66;
    *(v70 + 40) = 256;

    outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v58, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);

    return outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v68, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACy07WorkoutB004Racei13ConfigurationH0VAA30_EnvironmentKeyWritingModifierVy0I4Core0iK10DataSourceCSgGGALyAH0kE5ModelCSgGGGAA07_HiddenO0VGAA12_FrameLayoutVGMd);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in RaceWorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA9RectangleVGGAMyAA07RoundedP0VGGGMd);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v53 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd) - 8;
  MEMORY[0x28223BE20](v57);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = (&v53 - v8);
  v56 = type metadata accessor for AccessibilityTraits();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v54);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v53 - v16;
  WorkoutConfiguration.displaySymbolName.getter();
  *&v72 = Image.init(_internalSystemName:)();
  BYTE8(v72) = 0;

  _ConditionalContent<>.init(storage:)();
  v71 = BYTE8(v68[0]);
  v70 = 0;
  *&v72 = *&v68[0];
  BYTE8(v72) = BYTE8(v68[0]);
  v75[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  _ConditionalContent<>.init(storage:)();

  v74 = v68[2];
  *v75 = v69[0];
  *&v75[9] = *(v69 + 9);
  v72 = v68[0];
  v73 = v68[1];
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v21 = *MEMORY[0x277CE1048];
  v22 = type metadata accessor for Image.Scale();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  v23 = *&v75[16];
  *(v12 + 3) = *v75;
  *(v12 + 4) = v23;
  v24 = v74;
  *(v12 + 1) = v73;
  *(v12 + 2) = v24;
  *v12 = v72;
  *(v12 + 10) = KeyPath;
  *(v12 + 11) = v17;
  v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd) + 36)] = 0;
  WorkoutConfiguration.displayColor.getter();
  v25 = Color.init(uiColor:)();
  v26 = swift_getKeyPath();
  v27 = v54;
  v28 = &v12[*(v54 + 36)];
  *v28 = v26;
  v28[1] = v25;
  static AccessibilityTraits.isSelected.getter();
  v29 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v30 = v63;
  MEMORY[0x20F30AA50](v10, v27, v29);
  (*(v55 + 8))(v10, v56);
  outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v12, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  v31 = static HorizontalAlignment.leading.getter();
  v32 = v64;
  *v64 = v31;
  v32[1] = 0;
  *(v32 + 16) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAA5GroupVyAIyAUyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKtGGAYyAPSgGGAA016_ForegroundStyleS0VyAA017HierarchicalShapeV0VGG_Qo_tGGMd);
  closure #1 in RaceWorkoutConfigurationRow.routeDetail()(a1, (v32 + *(v33 + 44)));
  v34 = swift_getKeyPath();
  v35 = v32 + *(v57 + 44);
  *v35 = v34;
  *(v35 + 1) = 1;
  v35[16] = 0;
  v36 = swift_allocObject();
  v37 = *(a1 + 48);
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(a1 + 64);
  *(v36 + 96) = *(a1 + 80);
  v38 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v38;
  v67 = a1;
  outlined init with copy of RaceWorkoutConfigurationRow(a1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA9RectangleVGGAKyAA07RoundedO0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v39 = v66;
  Button.init(action:label:)();
  v40 = v65;
  outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(v30, v65, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v41 = v58;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v32, v58, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  v42 = v60;
  v43 = *(v60 + 16);
  v44 = v59;
  v45 = v39;
  v46 = v61;
  v43(v59, v45, v61);
  v47 = v40;
  v48 = v62;
  outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(v47, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_ACyAA6VStackVyAA9TupleViewVyAA4TextV_AA0Y0PAAE10fontWeightyQrAS6WeightVSgFQOyACyACyAA5GroupVyA13_yACyA15_A5_G_A15_tGGAUGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGG_Qo_tGGAQySiSgGGAA6SpacerVAA6ButtonVyACyACyACy07WorkoutB0021RaceCroppedMapPlatterY0VAMGAA11_ClipEffectVyAA9RectangleVGGA49_yAA16RoundedRectangleVGGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v41, v48 + v49[12], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  v50 = v48 + v49[16];
  *v50 = 0;
  *(v50 + 8) = 1;
  v43((v48 + v49[20]), v44, v46);
  v51 = *(v42 + 8);
  v51(v66, v46);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v64, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v51(v44, v46);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(v41, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5GroupVyAGyACyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAUyANSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeS0VGG_Qo_tGGAUySiSgGGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v65, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA6SpacerVAA12_FrameLayoutVG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyACyACyAA14NavigationLinkVyAA05EmptyG0VACyACy07WorkoutB004Races13ConfigurationG0VAA30_EnvironmentKeyWritingModifierVy0S4Core0sU10DataSourceCSgGGA1_yAY0uP5ModelCSgGGGAA07_HiddenY0VGAMG_ACyACyACyAA5ImageVA1_yAA4FontVSgGGA1_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainoM0VQo_tGG_ACyAEyAGyAA4TextV_ApAE10fontWeightyQrA21_6WeightVSgFQOyACyACyAA5GroupVyAGyACyA44_A28_G_A44_tGGA23_GAA011_ForegroundmY0VyAA017HierarchicalShapeM0VGG_Qo_tGGA1_ySiSgGGtGGAA08_PaddingK0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAEyAIyAIyAA14NavigationLinkVyAA05EmptyE0VAIyAIy07WorkoutB004Races13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVy0S4Core0sU10DataSourceCSgGGA1_yAY0uP5ModelCSgGGGAA07_HiddenY0VGAMG_AIyAIyAIyAA5ImageVA1_yAA4FontVSgGGA1_yAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGtGG_AA05PlainoM0VQo_tGG_AIyACyAEyAA4TextV_ApAE10fontWeightyQrA21_6WeightVSgFQOyAIyAIyAA5GroupVyAEyAIyA44_A28_G_A44_tGGA23_GAA011_ForegroundmY0VyAA017HierarchicalShapeM0VGG_Qo_tGGA1_ySiSgGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #2 in RaceWorkoutConfigurationRow.body.getter(uint64_t a1)
{
  if (*a1)
  {
    v6 = *(a1 + 32);
    v5 = *(&v6 + 1);
    swift_getKeyPath();
    swift_getKeyPath();

    outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(&v6, v4, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
    v1 = static Published.subscript.modify();
    type metadata accessor for WorkoutConfiguration();
    v2 = MEMORY[0x277D7DA50];
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, v2);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, v2);
    NavigationPath.append<A>(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(&v6, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
    v1(v4, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double closure #2 in closure #2 in RaceWorkoutConfigurationRow.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = RaceWorkoutConfiguration.routeSnapshotData.getter();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithData_];

  outlined consume of Data._Representation(v2, v4);
  if (v7)
  {
    v8 = Image.init(uiImage:)();
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();
    v8 = Image.init(_internalSystemName:)();
  }

  v9 = v8;
  specialized RaceRowConstants.init()(v25);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA9RectangleVGGAKyAA07RoundedO0VGGMd) + 36));
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #15.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v19 = v25[1];
  *(a1 + 8) = v25[0];
  *(a1 + 24) = v19;
  v20 = v25[3];
  *(a1 + 40) = v25[2];
  *(a1 + 56) = v20;
  *(a1 + 72) = v22;
  *a1 = v9;
  *(a1 + 88) = v23;
  result = *&v24;
  *(a1 + 104) = v24;
  *(a1 + 120) = 0;
  return result;
}

uint64_t closure #1 in RaceWorkoutConfigurationRow.routeDetail()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA5GroupVyAA05TupleC0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AQtGGASyAFSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGG_Qo_Md);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - v6;
  v43 = a1;
  *&v57[0] = WorkoutConfiguration.displayName(formattingManager:)();
  *(&v57[0] + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  LODWORD(v57[0]) = static HierarchicalShapeStyle.primary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Font.Weight.bold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  LOBYTE(v10) = v21;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  static Font.body.getter();
  v22 = Text.font(_:)();
  v40 = v23;
  v41 = v24;
  v42 = v25;

  outlined consume of Text.Storage(v18, v20, v10 & 1);

  closure #1 in closure #1 in RaceWorkoutConfigurationRow.routeDetail()(v56);
  v26 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v28 = static HierarchicalShapeStyle.primary.getter();
  v51 = v56[2];
  v52 = v56[3];
  v53 = v56[4];
  v49 = v56[0];
  v50 = v56[1];
  *&v54 = KeyPath;
  *(&v54 + 1) = v26;
  v55 = v28;
  static Font.Weight.regular.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeP0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
  v29 = v47;
  View.fontWeight(_:)();
  v57[4] = v53;
  v57[5] = v54;
  v58 = v55;
  v57[0] = v49;
  v57[1] = v50;
  v57[2] = v51;
  v57[3] = v52;
  outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(v57, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeP0VGGMd);
  v30 = v44;
  v31 = v45;
  v32 = *(v45 + 16);
  v33 = v46;
  v32(v44, v29, v46);
  v34 = v48;
  v35 = v40;
  *v48 = v22;
  v34[1] = v35;
  LOBYTE(v26) = v41 & 1;
  *(v34 + 16) = v41 & 1;
  v34[3] = v42;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA4ViewPAAE10fontWeightyQrAA4FontV0F0VSgFQOyAA15ModifiedContentVyAMyAA5GroupVyAA05TupleD0VyAMyAcA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACtGGASyAHSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGG_Qo_tMd);
  v32(v48 + *(v36 + 48), v30, v33);
  outlined copy of Text.Storage(v22, v35, v26);
  v37 = *(v31 + 8);

  v37(v47, v33);
  v37(v30, v33);
  outlined consume of Text.Storage(v22, v35, v26);
}

uint64_t closure #1 in closure #1 in RaceWorkoutConfigurationRow.routeDetail()@<X0>(uint64_t a1@<X8>)
{
  RaceWorkoutConfigurationRow.routeDescription()(v15);
  v2 = v15[1];
  v14 = v15[0];
  v3 = v16;
  v4 = v17;
  WorkoutConfiguration.displayColor.getter();
  v5 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  RaceWorkoutConfigurationRow.dateString()();
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  LOBYTE(v15[0]) = v3;
  v11 = v10 & 1;
  *a1 = v14;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10 & 1;
  *(a1 + 72) = v12;
  outlined copy of Text.Storage(v14, v2, v3);

  outlined copy of Text.Storage(v7, v9, v11);

  outlined consume of Text.Storage(v7, v9, v11);

  outlined consume of Text.Storage(v14, v2, v3);
}

uint64_t RaceWorkoutConfigurationRow.routeDescription()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RaceFilter();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  v8 = RaceWorkoutConfiguration.routeTitle.getter();
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xE000000000000000;
  }

  if (v11)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    (*(v4 + 104))(v6, *MEMORY[0x277D7DE20], v3);
    v49 = v7;
    v50 = RaceWorkoutConfiguration.displayDistanceFor(_:formatter:)();
    v52 = v51;

    (*(v4 + 8))(v6, v3);
    v69 = v50;
    v70 = v52;
    lazy protocol witness table accessor for type String and conformance String();
    v53 = Text.init<A>(_:)();
    v55 = v54;
    v57 = v56;
    static Font.body.getter();
    Font.lowercaseSmallCaps()();

    v42 = Text.font(_:)();
    v44 = v58;
    v46 = v59;
    v48 = v60;

    outlined consume of Text.Storage(v53, v55, v57 & 1);
    goto LABEL_11;
  }

  v66 = a1;
  (*(v4 + 104))(v6, *MEMORY[0x277D7DE20], v3);
  v13 = v7;
  v14 = RaceWorkoutConfiguration.displayDistanceFor(_:formatter:)();
  v16 = v15;

  (*(v4 + 8))(v6, v3);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v71._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB9C950;
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CB5DA70;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  v22 = String.init(format:_:)();
  v24 = v23;

  v67 = v22;
  v68 = v24;
  lazy protocol witness table accessor for type String and conformance String();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.body.getter();
  Font.lowercaseSmallCaps()();

  v65 = Text.font(_:)();
  v63 = v30;
  v64 = v31;

  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v32 = v13;
  v33 = RaceWorkoutConfiguration.routeTitle.getter();
  v35 = v34;

  v67 = v33;
  v68 = v35;
  v36 = Text.init<A>(_:)();
  v38 = v37;
  v40 = v39;
  v41 = v65;
  v42 = static Text.+ infix(_:_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  outlined consume of Text.Storage(v36, v38, v40 & 1);

  outlined consume of Text.Storage(v41, v63, v64 & 1);
  a1 = v66;
LABEL_11:

  *a1 = v42;
  *(a1 + 8) = v44;
  *(a1 + 16) = v46 & 1;
  *(a1 + 24) = v48;
  return result;
}

Swift::String __swiftcall RaceWorkoutConfigurationRow.dateString()()
{
  v1 = type metadata accessor for Calendar.Component();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = &countAndFlagsBits - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &countAndFlagsBits - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &countAndFlagsBits - v6;
  v8 = type metadata accessor for Calendar();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RaceFilter();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &countAndFlagsBits - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 40);
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  type metadata accessor for FIUIWorkoutActivityType();
  v17 = v16;
  v18 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v19 = static NSObject.== infix(_:_:)();

  if (v19)
  {
    v20 = "RACE_ROW_CYCLE_DATE_FORMAT";
    v21 = 0xD00000000000001CLL;
  }

  else
  {
    v17 = v17;
    v22 = static FIUIWorkoutActivityType.outdoorCycle.getter();
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v20 = "RACE_ROW_VULCAN_DATE_FORMAT";
      v21 = 0xD00000000000001ALL;
    }

    else
    {
      v24 = static FIUIWorkoutActivityType.outdoorWheelchairRun.getter();
      static NSObject.== infix(_:_:)();

      v20 = " nil timeGoal value.";
      v17 = v24;
      v21 = 0xD00000000000001BLL;
    }
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = WorkoutUIBundle.super.isa;
  v54._object = 0xE000000000000000;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._object = (v20 | 0x8000000000000000);
  v27._countAndFlagsBits = v21;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v54)._countAndFlagsBits;

  (*(v12 + 104))(v14, *MEMORY[0x277D7DE20], v11);
  v29 = v15;
  v30 = RaceWorkoutConfiguration.displayDateFor(_:)(v14);
  v32 = v31;

  (*(v12 + 8))(v14, v11);
  static Calendar.current.getter();
  v33 = v29;
  RaceWorkoutConfiguration.lastWorkoutDate.getter();

  v34 = v48;
  static Date.now.getter();
  v36 = v52;
  v35 = v53;
  v37 = v49;
  (*(v52 + 104))(v49, *MEMORY[0x277CC9940], v53);
  LOBYTE(v33) = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v36 + 8))(v37, v35);
  v38 = v51;
  v39 = *(v50 + 8);
  v39(v34, v51);
  v39(v7, v38);
  (*(v46 + 8))(v10, v47);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20CB5DA70;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v30;
    *(v40 + 40) = v32;
    v30 = String.init(format:_:)();
    v32 = v41;
  }

  v42 = v30;
  v43 = v32;
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceWorkoutConfigurationRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceWorkoutConfigurationRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeP0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGAKyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AItGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004RaceE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHyAD0G15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB004RaceE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMd);
    lazy protocol witness table accessor for type RaceWorkoutConfigurationView and conformance RaceWorkoutConfigurationView();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<RaceWorkoutConfigurationView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA5ImageVAEGAA08ModifiedD0VyAHyAeA18_AspectRatioLayoutVGAA06_FrameI0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_57()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA9RectangleVGGAKyAA07RoundedO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025RaceCroppedMapPlatterViewVAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type RaceCroppedMapPlatterView and conformance RaceCroppedMapPlatterView);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceCroppedMapPlatterView, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceCroppedMapPlatterView and conformance RaceCroppedMapPlatterView()
{
  result = lazy protocol witness table cache variable for type RaceCroppedMapPlatterView and conformance RaceCroppedMapPlatterView;
  if (!lazy protocol witness table cache variable for type RaceCroppedMapPlatterView and conformance RaceCroppedMapPlatterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceCroppedMapPlatterView and conformance RaceCroppedMapPlatterView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, ModifiedContent<VStack<TupleView<(Text, <<opaque return type of View.fontWeight(_:)>>.0)>>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ObservedObject<RaceWorkoutConfiguration>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Group<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MediaTagStringBuilderOptions.workoutWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v22[0] = a4;
  v22[1] = a7;
  v12 = type metadata accessor for MediaTagStringBuilderOptions();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MediaTagStringBuilderOptions.highlightColorOverride.getter();
    if (a2)
    {
LABEL_3:
      v16 = a1;
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v18 = a1;
  MediaTagStringBuilderOptions.fallbackHighlightColor.getter();
  if (a3)
  {
LABEL_4:
    v17 = a2;
    MediaTagStringBuilderOptions.lineHeightMultiple.getter();
    if ((a5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v19 = a2;
  if ((a5 & 1) == 0)
  {
LABEL_5:
    if (a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  MediaTagStringBuilderOptions.lineSpacing.getter();
  if (a6)
  {
    goto LABEL_12;
  }

LABEL_11:
  MediaTagStringBuilderOptions.nonHighlightedColor.getter();
LABEL_12:
  v20 = a6;
  MediaTagStringBuilderOptions.textAlignment.getter();
  MediaTagStringBuilderOptions.lineBreakMode.getter();
  MediaTagStringBuilderOptions.init(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_0D2UI0d11ChartLinearfB0Vs5NeverOTg503_s9d8UI17Racei73ProviderC15allocateBuckets33_7334F19A8E76DF0ADBDA5F96BB1BF101LLyyFAA0aD17jfb19VSd3key_0A4Core0aQ6G15C5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v28;
    v5 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v26 = v2;
    v27 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 48) + 8 * v6);

      dispatch thunk of WorkoutDataBucket.average()();
      v14 = v13;

      v15 = v4;
      v29 = v4;
      v16 = *(v4 + 16);
      v17 = *(v15 + 24);
      if (v16 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v16 + 1;
      v18 = v15 + 16 * v16;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v19 = *(v5 + 8 * v11);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v15;
      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v26;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (a1 + 72 + 8 * v11);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = outlined consume of [Double : WorkoutDataBucket].Index._Variant(v6, v27, 0);
            v10 = v26;
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = outlined consume of [Double : WorkoutDataBucket].Index._Variant(v6, v27, 0);
        v10 = v26;
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id RaceChartProvider.minDataAltitude.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RaceChartPoint();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v13;
  v16 = *(v1 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints);
  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v11;
    v32 = v1;
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v35 = *(v3 + 16);
    v36 = v16;
    v33 = &v31 - v13;
    v34 = v16 + v18;
    result = v35(v8, v14);
    if (v17 != 1)
    {
      v26 = 1;
      while (v26 < *(v36 + 16))
      {
        (v35)(v5, v34 + *(v3 + 72) * v26, v2);
        RaceChartPoint.altitude_m.getter();
        v28 = v27;
        RaceChartPoint.altitude_m.getter();
        v29 = *(v3 + 8);
        if (v28 >= v30)
        {
          result = v29(v5, v2);
        }

        else
        {
          v29(v8, v2);
          result = (*(v3 + 32))(v8, v5, v2);
        }

        if (v17 == ++v26)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_17;
    }

LABEL_3:
    v15 = v33;
    (*(v3 + 32))(v33, v8, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v11 = v31;
    v1 = v32;
  }

  else
  {
    (*(v3 + 56))(&v31 - v13, 1, 1, v2, v14);
  }

  outlined init with copy of RaceChartPoint?(v15, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    outlined destroy of RaceChartPoint?(v11);
    v20 = 0.0;
  }

  else
  {
    RaceChartPoint.altitude_m.getter();
    v20 = v21;
    (*(v3 + 8))(v11, v2);
  }

  v22 = [objc_opt_self() meterUnit];
  v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v20];

  result = [*(v1 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) unitManager];
  if (result)
  {
    v24 = result;
    v25 = [result userDistanceHKUnitForDistanceType_];

    [v23 doubleValueForUnit_];
    return outlined destroy of RaceChartPoint?(v15);
  }

LABEL_17:
  __break(1u);
  return result;
}