uint64_t MetricTextWithAccessory.accessibilityLabel.getter()
{
  if (v0[8])
  {
    v1 = v0[7];

    return v1;
  }

  else
  {
    v2 = v0[4];
    if (v0[5])
    {
      lazy protocol witness table accessor for type String and conformance String();
      v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    }

    else
    {
      v3 = 0;
    }

    v4 = v0[1];
    v19 = *v0;
    v20 = v4;
    v5 = v0[3];
    v21 = v0[2];
    v22 = v5;
    v23 = v2;
    v24 = v3;

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_7:
    if (v7 <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 + 1;
    v11 = 16 * v7 + 40;
    while (1)
    {
      if (v7 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        swift_arrayDestroy();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        v1 = BidirectionalCollection<>.joined(separator:)();

        return v1;
      }

      if (v10 == ++v7)
      {
        break;
      }

      v12 = v11 + 16;
      v13 = *&v18[v11];
      v11 += 16;
      if (v13)
      {
        v14 = *&v18[v12 - 24];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t MetricTextWithAccessory.redactionReasons.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  outlined init with copy of LegibilityWeight?(v2 + *(a1 + 44), &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for RedactionReasons();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void MetricTextWithAccessory.workoutViewStyle.getter(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 48);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t MetricTextWithAccessory.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v180 = type metadata accessor for AccessibilityChildBehavior();
  v179 = *(v180 - 1);
  MEMORY[0x28223BE20](v180);
  v178 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAFyAFyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAMySSGG_Qo_Md);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMd);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
  v7 = *(a1 + 2);
  v8 = a1;
  v188 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd);
  v10 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>();
  v220 = v9;
  v221 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?();
  v13 = lazy protocol witness table accessor for type Text? and conformance <A> A?(&lazy protocol witness table cache variable for type Text? and conformance <A> A?, &_s7SwiftUI4TextVSgMd);
  v14 = *(v8 + 3);
  v176 = v4;
  v220 = v4;
  v221 = v5;
  v173 = v5;
  v222 = v6;
  v223 = v7;
  v15 = v7;
  v165 = OpaqueTypeConformance2;
  v224 = OpaqueTypeConformance2;
  v225 = v12;
  v164 = v12;
  v226 = v13;
  v227 = v14;
  v16 = type metadata accessor for MetricTextiOSPlatter();
  v175 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v171 = &v151 - v17;
  v200 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
  v18 = type metadata accessor for ModifiedContent();
  v172 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v170 = &v151 - v19;
  v177 = v16;
  WitnessTable = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
  v161 = WitnessTable;
  v218 = WitnessTable;
  v219 = v21;
  v198 = MEMORY[0x277CDFAD8];
  v22 = swift_getWitnessTable();
  v220 = v18;
  v221 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v166 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v163 = &v151 - v24;
  swift_getTupleTypeMetadata2();
  v25 = type metadata accessor for TupleView();
  v174 = v18;
  v220 = v18;
  v221 = v22;
  v162 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = swift_getWitnessTable();
  v197 = OpaqueTypeMetadata2;
  v220 = OpaqueTypeMetadata2;
  v221 = v25;
  v199 = v26;
  v222 = v26;
  v223 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v169 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v168 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v167 = &v151 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMd);
  v33 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v156 = v32;
  v220 = v32;
  v221 = v6;
  v183 = v6;
  v222 = v6;
  v223 = v15;
  v34 = v15;
  v155 = v33;
  v224 = v33;
  v225 = v13;
  v182 = v13;
  v226 = v13;
  v227 = v14;
  v194 = v14;
  type metadata accessor for MetricTextWatchOS();
  v35 = type metadata accessor for ModifiedContent();
  v158 = swift_getWitnessTable();
  v216 = v158;
  v217 = v21;
  v36 = swift_getWitnessTable();
  v220 = v35;
  v221 = v25;
  v196 = v25;
  v200 = v36;
  v222 = v36;
  v223 = v27;
  v195 = v27;
  v37 = swift_getOpaqueTypeMetadata2();
  v187 = v28;
  v38 = type metadata accessor for _ConditionalContent();
  v186 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v184 = &v151 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16LegibilityWeightOSgMd);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v151 - v41;
  v43 = *(v34 - 8);
  MEMORY[0x28223BE20](v44);
  v181 = &v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = swift_checkMetadataState();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v47 = &v151 - v46;
  v48 = swift_checkMetadataState();
  v154 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v151 - v49;
  v185 = v37;
  v159 = *(v37 - 8);
  MEMORY[0x28223BE20](v51);
  v157 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v160 = &v151 - v54;
  v192 = v38;
  v55 = v188;
  v56 = type metadata accessor for _ConditionalContent();
  v191 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v190 = &v151 - v57;
  v58 = v189;
  MetricTextWithAccessory.workoutViewStyle.getter(v55, &v215);
  v198 = v48;
  if (((1 << v215) & 0xCFC) != 0)
  {
    v159 = &v151;
    MEMORY[0x28223BE20](v59);
    v160 = v56;
    v60 = v194;
    MEMORY[0x28223BE20](v61);
    v63 = MEMORY[0x28223BE20](v62);
    v147 = v34;
    v148 = v60;
    v149 = v58;
    v64 = v58 + *(v55 + 40);
    v65 = v181;
    (*(v43 + 16))(v181, v64, v34, v63);
    v66 = *(v58 + 49);
    v150 = v60;
    v149 = v182;
    v148 = v164;
    v147 = v165;
    v67 = v171;
    MetricTextiOSPlatter.init(value:unit:description:accessoryView:includesSlashes:)(partial apply for closure #5 in MetricTextWithAccessory.body.getter, partial apply for closure #6 in MetricTextWithAccessory.body.getter, partial apply for closure #7 in MetricTextWithAccessory.body.getter, v65, v66, v171, v176, v173, v183, v34);
    swift_getKeyPath();
    v68 = *MEMORY[0x277CDFB78];
    v69 = type metadata accessor for LegibilityWeight();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v42, v68, v69);
    (*(v70 + 56))(v42, 0, 1, v69);
    v71 = v170;
    v72 = v177;
    View.environment<A>(_:_:)();

    outlined destroy of LegibilityWeight?(v42, &_s7SwiftUI16LegibilityWeightOSgMd);
    (*(v175 + 8))(v67, v72);
    v73 = v178;
    static AccessibilityChildBehavior.combine.getter();
    v74 = v163;
    v75 = v174;
    View.accessibilityElement(children:)();
    (v179[1])(v73, v180);
    v76 = (*(v172 + 8))(v71, v75);
    MEMORY[0x28223BE20](v76);
    v147 = v34;
    v148 = v60;
    v149 = v58;
    v77 = swift_checkMetadataState();
    v78 = v168;
    v79 = v197;
    v80 = v199;
    v81 = v195;
    View.accessibilityLabel<A>(content:)();
    (*(v166 + 8))(v74, v79);
    v220 = v79;
    v221 = v77;
    v222 = v80;
    v223 = v81;
    v82 = swift_getOpaqueTypeConformance2();
    v83 = v167;
    v84 = v187;
    static ViewBuilder.buildExpression<A>(_:)(v78, v187, v82);
    v85 = *(v169 + 8);
    v85(v78, v84);
    static ViewBuilder.buildBlock<A>(_:)(v83, v84, v82);
    v220 = v198;
    v221 = v77;
    v222 = v200;
    v223 = v81;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = v184;
    static ViewBuilder.buildEither<A, B>(second:)(v78, v185, v84);
    v203 = v86;
    v204 = v82;
    v88 = v192;
    swift_getWitnessTable();
    v89 = v190;
    static ViewBuilder.buildEither<A, B>(first:)(v87, v88);
    (*(v186 + 8))(v87, v88);
    v90 = v78;
    v91 = v199;
    v85(v90, v84);
    v92 = v83;
    v93 = v196;
    v94 = v84;
    v56 = v160;
    v85(v92, v94);
    v95 = v197;
  }

  else if (((1 << v215) & 0x301) != 0)
  {
    v180 = &v151;
    MEMORY[0x28223BE20](v59);
    v179 = &v146;
    v96 = v58;
    MEMORY[0x28223BE20](v97);
    v99 = MEMORY[0x28223BE20](v98);
    v100 = v34;
    v147 = v34;
    v148 = v101;
    v102 = v101;
    v149 = v58;
    LODWORD(v178) = *(v58 + 72);
    v104 = *(v43 + 16);
    v105 = v58 + *(v103 + 40);
    v106 = v181;
    v188 = v50;
    v107 = v100;
    v104(v181, v105, v99);
    v150 = v102;
    v148 = v182;
    v149 = v182;
    v147 = v155;
    v108 = v107;
    MetricTextWatchOS.init(value:unit:description:accessoryAsSuffix:accessoryView:)(partial apply for closure #1 in MetricTextWithAccessory.body.getter, partial apply for closure #2 in MetricTextWithAccessory.body.getter, partial apply for closure #3 in MetricTextWithAccessory.body.getter, v178, v106, v47, v156, v183, v183, v107);
    swift_getKeyPath();
    v109 = *MEMORY[0x277CDFB78];
    v110 = v56;
    v111 = type metadata accessor for LegibilityWeight();
    v112 = *(v111 - 8);
    (*(v112 + 104))(v42, v109, v111);
    v113 = v111;
    v56 = v110;
    (*(v112 + 56))(v42, 0, 1, v113);
    v114 = v188;
    v115 = v153;
    View.environment<A>(_:_:)();

    outlined destroy of LegibilityWeight?(v42, &_s7SwiftUI16LegibilityWeightOSgMd);
    v116 = (*(v152 + 8))(v47, v115);
    MEMORY[0x28223BE20](v116);
    v147 = v108;
    v148 = v194;
    v149 = v96;
    v93 = v196;
    v117 = swift_checkMetadataState();
    v118 = v157;
    v119 = v198;
    v120 = v117;
    v189 = v117;
    v121 = v200;
    v122 = v195;
    View.accessibilityLabel<A>(content:)();
    (*(v154 + 8))(v114, v119);
    v220 = v119;
    v221 = v120;
    v222 = v121;
    v223 = v122;
    v123 = swift_getOpaqueTypeConformance2();
    v124 = v160;
    v125 = v185;
    static ViewBuilder.buildExpression<A>(_:)(v118, v185, v123);
    v194 = v159[1];
    v194(v118, v125);
    static ViewBuilder.buildBlock<A>(_:)(v124, v125, v123);
    v126 = v197;
    v220 = v197;
    v221 = v189;
    v222 = v199;
    v223 = v122;
    v127 = swift_getOpaqueTypeConformance2();
    v128 = v184;
    static ViewBuilder.buildEither<A, B>(first:)(v118, v125);
    v201 = v123;
    v202 = v127;
    v129 = v192;
    swift_getWitnessTable();
    v89 = v190;
    static ViewBuilder.buildEither<A, B>(first:)(v128, v129);
    (*(v186 + 8))(v128, v129);
    v130 = v118;
    v95 = v126;
    v131 = v194;
    v194(v130, v125);
    v131(v160, v125);
    v91 = v199;
    v81 = v195;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v150) = 256;
    v149 = 0;
    v132 = Text.init(_:tableName:bundle:comment:)();
    v134 = v133;
    v194 = v135;
    v220 = v132;
    v221 = v133;
    v137 = v136 & 1;
    LOBYTE(v222) = v136 & 1;
    v223 = v135;
    v93 = v196;
    v211 = v48;
    v212 = v196;
    v138 = v195;
    v213 = v200;
    v214 = v195;
    v139 = swift_getOpaqueTypeConformance2();
    v95 = v197;
    v211 = v197;
    v212 = v93;
    v213 = v199;
    v214 = v138;
    v91 = v199;
    v140 = swift_getOpaqueTypeConformance2();
    v209 = v139;
    v210 = v140;
    v81 = v138;
    v141 = v192;
    swift_getWitnessTable();
    v89 = v190;
    static ViewBuilder.buildEither<A, B>(second:)(&v220, v141, MEMORY[0x277CE0BD8]);
    outlined consume of Text.Storage(v132, v134, v137);
  }

  v220 = v198;
  v221 = v93;
  v222 = v200;
  v223 = v81;
  v142 = swift_getOpaqueTypeConformance2();
  v220 = v95;
  v221 = v93;
  v222 = v91;
  v223 = v81;
  v143 = swift_getOpaqueTypeConformance2();
  v207 = v142;
  v208 = v143;
  v205 = swift_getWitnessTable();
  v206 = MEMORY[0x277CE0BC8];
  v144 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<A>(_:)(v89, v56, v144);
  return (*(v191 + 8))(v89, v56);
}

uint64_t closure #1 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 48);
  v12 = 1.0;
  if (v11 == 1)
  {
    v12 = *(a1 + *(type metadata accessor for MetricTextWithAccessory() + 52));
  }

  result = static Animation.default.getter();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = result;
  *(a2 + 48) = v11;
  return result;
}

uint64_t closure #2 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedLowercase.getter();
    result = Text.init<A>(_:)();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t closure #5 in MetricTextWithAccessory.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for RedactionReasons();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for MetricTextWithAccessory();
  MetricTextWithAccessory.redactionReasons.getter(v9, v8);
  static RedactionReasons.privacy.getter();
  lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    v12 = 0xE400000000000000;
    v13 = 757935405;
  }

  else
  {
    v13 = *a1;
  }

  *&v32[0] = v13;
  *(&v32[0] + 1) = v12;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(a1 + 48);
  v22 = 1.0;
  if (v21 == 1)
  {
    v22 = *(a1 + *(v9 + 52));
  }

  v23 = static Animation.default.getter();
  v25 = *a1;
  v24 = *(a1 + 8);
  v33 = v18 & 1;
  *&v27 = v14;
  *(&v27 + 1) = v16;
  LOBYTE(v28) = v18 & 1;
  *(&v28 + 1) = v20;
  *&v29 = v22;
  *(&v29 + 1) = v23;
  LOBYTE(v30) = v21;
  *(&v30 + 1) = 0;
  *&v31 = v25;
  *(&v31 + 1) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>();
  View.privacySensitive(_:)();
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  v32[0] = v27;
  v32[1] = v28;
  return outlined destroy of LegibilityWeight?(v32, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd);
}

uint64_t closure #6 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Text.Scale();
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  if (v9)
  {
    v26 = v6;
    v27 = v5;
    v30[0] = *(a1 + 16);
    v30[1] = v9;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = StringProtocol.localizedUppercase.getter();
    v29 = v10;
    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    v16 = type metadata accessor for MetricTextWithAccessory();
    MetricTextWithAccessory.workoutViewStyle.getter(v16, v30);
    if (LOBYTE(v30[0]) == 4)
    {
      static Text.Scale.default.getter();
    }

    else
    {
      static Text.Scale.secondary.getter();
    }

    v17 = Text.textScale(_:isEnabled:)();
    v18 = v22;
    v25 = v23;
    v19 = v24;
    outlined consume of Text.Storage(v11, v13, v15 & 1);

    (*(v26 + 8))(v8, v27);
    if (one-time initialization token for scaleFactorForEnclosedText != -1)
    {
      swift_once();
    }

    v21 = static MetricUnitFont.scaleFactorForEnclosedText;
    result = swift_getKeyPath();
    v9 = v25 & 1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    result = 0;
    v21 = 0;
  }

  *a2 = v17;
  a2[1] = v18;
  a2[2] = v9;
  a2[3] = v19;
  a2[4] = result;
  a2[5] = v21;
  return result;
}

uint64_t closure #3 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedUppercase.getter();
    result = Text.init<A>(_:)();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t closure #4 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v25[0] = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for MetricTextWithAccessory();
  v27 = MetricTextWithAccessory.accessibilityLabel.getter();
  v28 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static ViewBuilder.buildExpression<A>(_:)(a2 + *(v13 + 40), a3, a4);
  v27 = v15;
  v28 = v17;
  v19 &= 1u;
  v29 = v19;
  v30 = v21;
  v31[0] = &v27;
  v22 = v25[0];
  (*(v8 + 16))(v25[0], v12, a3);
  v31[1] = v22;
  outlined copy of Text.Storage(v15, v17, v19);

  v26[0] = MEMORY[0x277CE0BD8];
  v26[1] = a3;
  v25[2] = MEMORY[0x277CE0BC8];
  v25[3] = a4;
  static ViewBuilder.buildBlock<each A>(_:)(v31, 2uLL, v26);
  outlined consume of Text.Storage(v15, v17, v19);

  v23 = *(v8 + 8);
  v23(v12, a3);
  v23(v22, a3);
  outlined consume of Text.Storage(v27, v28, v29);
}

uint64_t MetricText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMd);
  v6 = v5[11];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[12];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(a1 + v5[13]) = 0x3FD6666666666666;
  *(a1 + 64) = *(v1 + 64);
  v8 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v8;
  v9 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 72) = 0;
  return outlined init with copy of MetricTextDescriptor(v12, v11);
}

uint64_t protocol witness for View.body.getter in conformance MetricText@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMd);
  v6 = v5[11];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[12];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(a1 + v5[13]) = 0x3FD6666666666666;
  *(a1 + 64) = *(v1 + 64);
  v8 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v8;
  v9 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 72) = 0;
  return outlined init with copy of MetricTextDescriptor(v12, v11);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<String> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for MetricTextWithAccessory()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<RedactionReasons>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<WorkoutViewStyle>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricTextWithAccessory(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for RedactionReasons() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 73) & ~v11) + *(v6 + 64) + v12) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v22 = *(v6 + 48);

      return v22((a1 + v11 + 73) & ~v11, v7, v5);
    }

    else
    {
      v21 = *(a1 + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

double storeEnumTagSinglePayload for MetricTextWithAccessory(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for RedactionReasons() - 8);
  v13 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v13 = *(v11 + 64);
  }

  v14 = *(v8 + 80);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v13 + ((((v14 + 73) & ~v14) + *(v8 + 64) + v15) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v19 = 0;
    v20 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = a3 - v10 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if ((v9 & 0x80000000) != 0)
      {
        v22 = *(v23 + 56);

        v22(&a1[v14 + 73] & ~v14, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 56) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return result;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    bzero(a1, v16);
    *a1 = ~v10 + a2;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *&a1[v16] = v21;
    }

    else
    {
      *&a1[v16] = v21;
    }
  }

  else if (v19)
  {
    a1[v16] = v21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricTextDescriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricTextDescriptor(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for MetricTextWatchOS()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricTextWatchOS(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a3[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v15 <= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v22 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + v16;
  v24 = a2 - v22;
  if (a2 > v22)
  {
    v25 = v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + 1;
    v26 = 8 * v25;
    if (v25 > 3)
    {
      goto LABEL_15;
    }

    v28 = ((v24 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v28 >= 2)
    {
LABEL_15:
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_35;
      }

LABEL_22:
      v29 = (v27 - 1) << v26;
      if (v25 > 3)
      {
        v29 = 0;
      }

      if (v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) == -1)
      {
        v31 = 0;
      }

      else
      {
        if (v25 <= 3)
        {
          v30 = v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + 1;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      v38 = v22 + (v31 | v29);
      return (v38 + 1);
    }
  }

LABEL_35:
  if (v6 != v22)
  {
    v34 = (a1 + v23) & ~v16;
    if (v9 == v22)
    {
      v35 = *(v8 + 48);
      v36 = *(v8 + 84);
      v37 = a3[3];

      return v35(v34, v36, v37);
    }

    v34 = (v34 + v17 + v18) & ~v18;
    if (v12 == v22)
    {
      v35 = *(v11 + 48);
      v36 = *(v11 + 84);
      v37 = a3[4];

      return v35(v34, v36, v37);
    }

    v34 = (v34 + v19 + v20) & ~v20;
    if (v15 == v22)
    {
      v35 = *(v14 + 48);
      v36 = *(v14 + 84);
      v37 = a3[5];

      return v35(v34, v36, v37);
    }

    v39 = *(v34 + v21);
    if (v39 < 2)
    {
      return 0;
    }

    v38 = (v39 + 2147483646) & 0x7FFFFFFF;
    return (v38 + 1);
  }

  v32 = *(v5 + 48);

  return v32();
}

char *storeEnumTagSinglePayload for MetricTextWatchOS(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v7 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = v16 + v17;
  v25 = v22 + ((v20 + v21 + ((v18 + v19 + ((v16 + v17) & ~v17)) & ~v19)) & ~v21) + 1;
  v26 = a3 >= v23;
  v27 = a3 - v23;
  if (v27 != 0 && v26)
  {
    if (v25 <= 3)
    {
      v32 = ((v27 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v32))
      {
        v28 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v28 = v33;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v23 < a2)
  {
    v29 = ~v23 + a2;
    if (v25 < 4)
    {
      v31 = (v29 >> (8 * v25)) + 1;
      if (v25)
      {
        v34 = v29 & ~(-1 << (8 * v25));
        v35 = result;
        bzero(result, v25);
        result = v35;
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v35 = v34;
            if (v28 > 1)
            {
LABEL_59:
              if (v28 == 2)
              {
                *&result[v25] = v31;
              }

              else
              {
                *&result[v25] = v31;
              }

              return result;
            }
          }

          else
          {
            *v35 = v29;
            if (v28 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v35 = v34;
        v35[2] = BYTE2(v34);
      }

      if (v28 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v30 = result;
      bzero(result, v25);
      result = v30;
      *v30 = v29;
      v31 = 1;
      if (v28 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v28)
    {
      result[v25] = v31;
    }

    return result;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&result[v25] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_39;
    }

    *&result[v25] = 0;
LABEL_38:
    if (!a2)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (!v28)
  {
    goto LABEL_38;
  }

  result[v25] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_39:
  if (v6 != v23)
  {
    result = (&result[v24] & ~v17);
    if (v9 == v23)
    {
      v37 = *(v8 + 56);
    }

    else
    {
      result = (&result[v18 + v19] & ~v19);
      if (v12 == v23)
      {
        v37 = *(v11 + 56);
      }

      else
      {
        result = (&result[v20 + v21] & ~v21);
        if (v15 != v23)
        {
          result[v22] = a2 + 1;
          return result;
        }

        v37 = *(v14 + 56);
      }
    }

    return v37(result);
  }

  v36 = *(v5 + 56);

  return v36();
}

void type metadata completion function for MetricTextiOSPlatter()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<WorkoutViewStyle>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricTextiOSPlatter(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a3[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v15 <= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v22 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + v16;
  if (v22 < a2)
  {
    v24 = ((((((((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + v21) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = a2 - v22;
    v26 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = v25 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v29)
    {
      v30 = *(a1 + v24);
      if (v30)
      {
LABEL_28:
        v31 = v30 - 1;
        if (v26)
        {
          v31 = 0;
          v32 = *a1;
        }

        else
        {
          v32 = 0;
        }

        v39 = v22 + (v32 | v31);
        return (v39 + 1);
      }
    }
  }

  if (v6 != v22)
  {
    v35 = (a1 + v23) & ~v16;
    if (v9 == v22)
    {
      v36 = *(v8 + 48);
      v37 = *(v8 + 84);
      v38 = a3[3];

      return v36(v35, v37, v38);
    }

    v35 = (v35 + v17 + v18) & ~v18;
    if (v12 == v22)
    {
      v36 = *(v11 + 48);
      v37 = *(v11 + 84);
      v38 = a3[4];

      return v36(v35, v37, v38);
    }

    v35 = (v35 + v19 + v20) & ~v20;
    if (v15 == v22)
    {
      v36 = *(v14 + 48);
      v37 = *(v14 + 84);
      v38 = a3[5];

      return v36(v35, v37, v38);
    }

    v40 = *(v35 + v21);
    if (v40 >= 2)
    {
      v39 = (v40 + 2147483646) & 0x7FFFFFFF;
      return (v39 + 1);
    }

    return 0;
  }

  v33 = *(v5 + 48);

  return v33();
}

_DWORD *storeEnumTagSinglePayload for MetricTextiOSPlatter(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = a4[4];
  v7 = *(v5 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v6 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = v16 + v17;
  v25 = ((((((((v20 + v21 + ((v18 + v19 + ((v16 + v17) & ~v17)) & ~v19)) & ~v21) + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23 >= a3)
  {
    v29 = 0;
    v30 = a2 - v23;
    if (a2 <= v23)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (v25)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    if (v25)
    {
      v32 = ~v23 + a2;
      v33 = result;
      bzero(result, v25);
      result = v33;
      *v33 = v32;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(result + v25) = v31;
      }

      else
      {
        *(result + v25) = v31;
      }
    }

    else if (v29)
    {
      *(result + v25) = v31;
    }

    return result;
  }

  v26 = a3 - v23;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = a2 - v23;
  if (a2 > v23)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *(result + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v25) = 0;
LABEL_40:
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!v29)
  {
    goto LABEL_40;
  }

  *(result + v25) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v7 != v23)
  {
    result = ((result + v24) & ~v17);
    if (v9 == v23)
    {
      v35 = *(v8 + 56);
    }

    else
    {
      result = ((result + v18 + v19) & ~v19);
      if (v12 == v23)
      {
        v35 = *(v11 + 56);
      }

      else
      {
        result = ((result + v20 + v21) & ~v21);
        if (v15 != v23)
        {
          *(result + v22) = a2 + 1;
          return result;
        }

        v35 = *(v14 + 56);
      }
    }

    return v35(result);
  }

  v34 = *(v5 + 56);

  return v34();
}

uint64_t associated type witness table accessor for View.Body : View in MetricTextWatchOS<A, B, C, D>()
{
  return associated type witness table accessor for View.Body : View in MetricTextWatchOS<A, B, C, D>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t lazy protocol witness table accessor for type Text? and conformance <A> A?(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont()
{
  result = lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont;
  if (!lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of LegibilityWeight?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of LegibilityWeight?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PickerEditingStateHandler.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PickerEditingStateHandler.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t PickerEditingStateHandler.state.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t key path getter for PickerEditingStateHandler.state : PickerEditingStateHandler@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t PickerEditingStateHandler.state.setter(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t PickerEditingStateHandler.bindings.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t key path getter for PickerEditingStateHandler.bindings : PickerEditingStateHandler@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t key path setter for PickerEditingStateHandler.bindings : PickerEditingStateHandler()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in PickerEditingStateHandler.bindings.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t PickerEditingStateHandler.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI25PickerEditingStateHandlerC0G0O_05SwiftD07BindingVySbGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  ObservationRegistrar.init()();
  v2 = 0;
  while (1)
  {
    v4 = outlined read-only object #0 of static PickerEditingStateHandler.State.allCases.getter[v2 + 32];
    if (!outlined read-only object #0 of static PickerEditingStateHandler.State.allCases.getter[v2 + 32])
    {
      goto LABEL_4;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = v1;
    *(v5 + 40) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v1;
    *(v6 + 40) = v4;
    swift_retain_n();
    Binding.init(get:set:)();
    swift_getKeyPath();
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      v17 = v8;
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v21;
    v17 = v8;
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v17[(v9 >> 6) + 8] |= 1 << v9;
      *(v17[6] + v9) = v4;
      v18 = v17[7] + 24 * v9;
      *v18 = v23;
      *(v18 + 8) = v24;
      *(v18 + 16) = v25;
      v19 = v17[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_18;
      }

      v17[2] = v20;
      goto LABEL_3;
    }

LABEL_2:
    v3 = v17[7] + 24 * v9;
    *v3 = v23;
    *(v3 + 8) = v24;
    *(v3 + 16) = v25;

LABEL_3:
    *(v1 + 24) = v17;
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_4:
    if (++v2 == 8)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PickerEditingStateHandler.init()@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(a1 + 16) == a2;
  return result;
}

_BYTE *closure #2 in closure #1 in PickerEditingStateHandler.init()(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5;
  if (*result == 1)
  {
    if (*(a4 + 16) != a5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a4 + 16) == v6)
    {
      if (v6)
      {
        v8 = swift_getKeyPath();
        MEMORY[0x28223BE20](v8);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(a4 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t PickerEditingStateHandler.mode(_:)(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 24 * v4);

    return v6;
  }

  else
  {
    static Binding.constant(_:)();
    return v8;
  }
}

uint64_t PickerEditingStateHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI25PickerEditingStateHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PickerEditingStateHandler()
{
  result = type metadata singleton initialization cache for PickerEditingStateHandler;
  if (!type metadata singleton initialization cache for PickerEditingStateHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PickerEditingStateHandler()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerEditingStateHandler.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerEditingStateHandler.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PickerEditingStateHandler.State] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI25PickerEditingStateHandlerC0E0OGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State()
{
  result = lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State;
  if (!lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler()
{
  result = lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler;
  if (!lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler)
  {
    type metadata accessor for PickerEditingStateHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler);
  }

  return result;
}

uint64_t objectdestroyTm_86()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void closure #1 in PickerEditingStateHandler.state.setterpartial apply()
{
  partial apply for closure #1 in PickerEditingStateHandler.state.setter();
}

{
  partial apply for closure #1 in PickerEditingStateHandler.state.setter();
}

uint64_t MockWheelchairUseProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ElevationChangeMetricView.init(metricType:elevationChange:formattingManager:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  v11 = a2;
  *a5 = a1;
  if (a3)
  {
    v11 = 0.0;
  }

  *(a5 + 8) = v11;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t ElevationChangeMetricView.descriptionString.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*v0 == 53)
  {
    if (*(v0 + 32))
    {
      v7 = *(v0 + 24);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v7) = v26;
    }

    if (v7 <= 9u && ((1 << v7) & 0x301) != 0)
    {
      v10 = "_METRIC_DESCRIPTION_FULL";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD000000000000023;
    }

    else
    {
      if (v6)
      {
        v20 = v5;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v22 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
        (*(v2 + 8))(v4, v1);
        v20 = v26;
      }

      if (v20 == 2)
      {
        v10 = "ION_ONE_LINE_FULL";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = WorkoutUIBundle.super.isa;
        v24 = 0xE000000000000000;
        v12 = 0xD000000000000028;
      }

      else
      {
        v10 = "ionChangeMetricView";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = WorkoutUIBundle.super.isa;
        v24 = 0xE000000000000000;
        v12 = 0xD000000000000031;
      }
    }

    goto LABEL_13;
  }

  if (*v0 == 10)
  {
    if (*(v0 + 32))
    {
      v8 = *(v0 + 24);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v26;
    }

    if (v8 <= 9u && ((1 << v8) & 0x301) != 0)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v13 = 0x800000020CBA3510;
      v12 = 0xD000000000000021;
      goto LABEL_20;
    }

    if (v6)
    {
      v21 = v5;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      v21 = v26;
    }

    if (v21 == 2)
    {
      v10 = "ETRIC_DESCRIPTION_ONE_LINE_FULL";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD000000000000026;
    }

    else
    {
      v10 = "_METRIC_DESCRIPTION";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD00000000000002FLL;
    }

LABEL_13:
    v13 = v10 | 0x8000000000000000;
LABEL_20:
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v15, v11, v16, *(&v24 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id ElevationChangeMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = [v3 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:*(v1 + 8)];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  result = [v3 unitManager];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = [result userDistanceUnitForDistanceType_];

  result = [v3 localizedShortUnitStringForDistanceUnit:v9 textCase:0];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    result = ElevationChangeMetricView.descriptionString.getter();
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    *(a1 + 32) = result;
    *(a1 + 40) = v14;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ElevationChangeMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for ElevationChangeMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static DependenciesWrapper.workout(wheelchairStatusProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized static DependenciesWrapper.workout(wheelchairStatusProvider:)(a1);
}

id specialized static DependenciesWrapper.workout(wheelchairStatusProvider:)(uint64_t a1)
{
  type metadata accessor for Dependencies();
  type metadata accessor for OS_dispatch_queue();
  v2 = static OS_dispatch_queue.main.getter();
  v3 = specialized static Dependencies.workout(wheelchairStatusProvider:queue:)(a1, v2);

  v4 = type metadata accessor for DependenciesWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SMDependencies_dependencies] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t getEnumTagSinglePayload for CountdownTopOverlay(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CountdownTopOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CountdownTopOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = objc_opt_self();
  v8 = v3;
  v19 = v4;
  v9 = [v7 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  v11 = qword_20CB89898[v10];
  v12 = [v7 currentDevice];
  LOBYTE(v9) = specialized UIDevice.screenType.getter();

  v13 = qword_20CB898F0[v9];
  v14 = static VerticalAlignment.top.getter();
  v15 = swift_allocObject();
  v16 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 32);
  *a1 = v8;
  *(a1 + 8) = v19;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 & 1;
  *(a1 + 25) = 1;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = partial apply for closure #1 in CountdownTopOverlay.body.getter;
  *(a1 + 64) = v15;
  v17 = v8;

  return v19;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CountdownIconView, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CountdownIconView, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CountdownIconView, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CountdownIconViewVAA25_AlignmentWritingModifierVGMd);
    lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CountdownIconView, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatPickerPhone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RepeatPickerPhone(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v38 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4ListVys5NeverOAGyAA7SectionVyAA05EmptyG0VAGyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAqAE0Q14Representation14representationQrqd__yXE_tAaPRd__lFQOyACyAqAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA0_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyA8_yAOGAA0T18AttachmentModifierVGQo_tGG_Qo_AA01_D13ShapeModifierVyAA9RectangleVGG_Qo__AqAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAqAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAOSiAA7ForEachVySaySiGSiAqAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA0__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideH12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAOG_AMyAoCyA49_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAqAE0Q7ActionsyQrqd__yXEAaPRd__lFQOyACyAqAEAuVQrAX_tFQOyAZyAGyA59_14WorkoutStepRowV_A2_ACyAA5ImageVA18_GtGG_Qo_A22_G_AGyA9_Sg_A85_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAOGSgtGG_A2_ACyACyA8_yACyA0_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA59_31PinnedBottomButtonModifierPhoneVGSgtGGA14_yAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA4ListVys5NeverOAJyAA7SectionVyAA05EmptyC0VAJyAcAE12onTapGesture5count7performQrSi_yyctFQOyAFyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAJyAA4TextV_AA6SpacerVAcAE0S14Representation14representationQrqd__yXE_tAaBRd__lFQOyAFyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA1_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AFyA9_yARGAA0V18AttachmentModifierVGQo_tGG_Qo_AA01_G13ShapeModifierVyAA9RectangleVGG_Qo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAFyAcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyARSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA1__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideJ12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGARG_APyArFyA50_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAcAE0S7ActionsyQrqd__yXEAaBRd__lFQOyAFyAcAEAvWQrAY_tFQOyA_yAJyA60_14WorkoutStepRowV_A3_AFyAA5ImageVA19_GtGG_Qo_A23_G_AJyA10_Sg_A86_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGARGSgtGG_A3_AFyAFyA9_yAFyA1_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA60_31PinnedBottomButtonModifierPhoneVGSgtGGA15_yAA13AnyShapeStyleVSgGG_SSQo_Md);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA4ListVys5NeverOAOyAA7SectionVyAA05EmptyC0VAOyAcAE12onTapGesture5count7performQrSi_yyctFQOyAKyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAOyAA4TextV_AA6SpacerVAcAE0X14Representation14representationQrqd__yXE_tAaBRd__lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA6_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyA14_yAWGAA31AccessibilityAttachmentModifierVGQo_tGG_Qo_AA01_L13ShapeModifierVyAA9RectangleVGG_Qo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAKyAcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAWSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideO12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAWG_AUyAwKyA55_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAcAE0X7ActionsyQrqd__yXEAaBRd__lFQOyAKyAcAEA_A0_QrA2__tFQOyA4_yAOyA65_14WorkoutStepRowV_A8_AKyAA5ImageVA24_GtGG_Qo_A28_G_AOyA15_Sg_A91_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAWGSgtGG_A8_AKyAKyA14_yAKyA6_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA65_31PinnedBottomButtonModifierPhoneVGSgtGGA20_yAA13AnyShapeStyleVSgGG_SSQo__Qo_Md);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4ListVys5NeverOAIyAA7SectionVyAA05EmptyD0VAIyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAIyAA4TextV_AA6SpacerVAsAE0T14Representation14representationQrqd__yXE_tAaRRd__lFQOyAXyAsAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA4_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyA12_yAQGAA0W18AttachmentModifierVGQo_tGG_Qo_AA01_S13ShapeModifierVyAA9RectangleVGG_Qo__AsAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAXyAsAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAQSiAA7ForEachVySaySiGSiAsAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA4__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideI12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAQG_AOyAqXyA53_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAsAE0T7ActionsyQrqd__yXEAaRRd__lFQOyAXyAsAEAyZQrA0__tFQOyA2_yAIyA63_14WorkoutStepRowV_A6_AXyAA5ImageVA22_GtGG_Qo_A26_G_AIyA13_Sg_A89_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAQGSgtGG_A6_AXyAXyA12_yAXyA4_AA010_FlexFrameG0VGGAA32_EnvironmentKeyTransformModifierVySbGGA63_31PinnedBottomButtonModifierPhoneVGSgtGGMd) + 44)];
  v39 = v2;
  closure #1 in RepeatPickerPhone.body.getter(v2, v15);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v16 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v41._countAndFlagsBits = v16;
  v18 = AnyShapeStyle.init<A>(_:)();
  v19 = &v8[*(v6 + 36)];
  *v19 = KeyPath;
  v19[1] = v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v44._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._object = 0x800000020CBA3540;
  v22._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v44);

  v41 = v24;
  v25 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v26 = lazy protocol witness table accessor for type String and conformance String();
  v27 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v8, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4ListVys5NeverOAGyAA7SectionVyAA05EmptyG0VAGyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAqAE0Q14Representation14representationQrqd__yXE_tAaPRd__lFQOyACyAqAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA0_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyA8_yAOGAA0T18AttachmentModifierVGQo_tGG_Qo_AA01_D13ShapeModifierVyAA9RectangleVGG_Qo__AqAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAqAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAOSiAA7ForEachVySaySiGSiAqAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA0__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideH12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAOG_AMyAoCyA49_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAqAE0Q7ActionsyQrqd__yXEAaPRd__lFQOyACyAqAEAuVQrAX_tFQOyAZyAGyA59_14WorkoutStepRowV_A2_ACyAA5ImageVA18_GtGG_Qo_A22_G_AGyA9_Sg_A85_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAOGSgtGG_A2_ACyACyA8_yACyA0_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA59_31PinnedBottomButtonModifierPhoneVGSgtGGA14_yAA13AnyShapeStyleVSgGGMd);
  v28 = v38;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v38);
  v41._countAndFlagsBits = v6;
  v41._object = v27;
  v42 = v25;
  v43 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v35;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v28);
  v31 = (*(v34 + 8))(v11, v30);
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AA012_ConditionalE0VyAyeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GtGMd);
  v41._countAndFlagsBits = v30;
  v41._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, _ConditionalContent<<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0, <<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AA012_ConditionalE0VyAyeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GtGMd);
  v32 = v37;
  View.toolbar<A>(content:)();
  return (*(v36 + 8))(v14, v32);
}

uint64_t closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGMd);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAGyAA0F0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAmAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAmAE0P14Representation14representationQrqd__yXE_tAaLRd__lFQOyARyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAZG_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ARyA6_yAKGAA0S18AttachmentModifierVGQo_tGG_Qo_AA01_O13ShapeModifierVyAA9RectangleVGG_Qo__AmAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAmAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAKSiAA7ForEachVySaySiGSiAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZ_SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideC12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAKG_AIyAkRyA47_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAmAE0P7ActionsyQrqd__yXEAaLRd__lFQOyARyAmAEAsTQrAV_tFQOyAXyAGyA57_14WorkoutStepRowV_A0_ARyAA5ImageVA16_GtGG_Qo_A20_G_AGyA7_Sg_A83_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAKGSgtGGMd);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VACyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAiAE0N14Representation14representationQrqd__yXE_tAaHRd__lFQOyANyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAVG_AA014BorderedButtonZ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ANyA2_yAGGAA0Q18AttachmentModifierVGQo_tGG_Qo_AA01_M13ShapeModifierVyAA9RectangleVGG_Qo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyANyAiAE06pickerZ0yQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAGSiAA7ForEachVySaySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_SiQo_GG_AA011WheelPickerZ0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAGG_AEyAgNyA43_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAiAE0N7ActionsyQrqd__yXEAaHRd__lFQOyANyAiAEAoPQrAR_tFQOyATyACyA53_14WorkoutStepRowV_AxNyAA5ImageVA12_GtGG_Qo_A16_G_ACyA3_Sg_A79_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAGGSgtGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VACyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAiAE0N14Representation14representationQrqd__yXE_tAaHRd__lFQOyANyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAVG_AA014BorderedButtonZ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ANyA2_yAGGAA0Q18AttachmentModifierVGQo_tGG_Qo_AA01_M13ShapeModifierVyAA9RectangleVGG_Qo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyANyAiAE06pickerZ0yQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAGSiAA7ForEachVySaySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_SiQo_GG_AA011WheelPickerZ0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAGG_AEyAgNyA43_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAiAE0N7ActionsyQrqd__yXEAaHRd__lFQOyANyAiAEAoPQrAR_tFQOyATyACyA53_14WorkoutStepRowV_AxNyAA5ImageVA12_GtGG_Qo_A16_G_ACyA3_Sg_A79_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAGGSgtGMd);
  v20 = v19;
  List<>.init(content:)();
  if (*(a1 + 104))
  {
    v48 = v5;
    v49 = v7;
    v21 = swift_allocObject();
    *(v21 + 128) = *(a1 + 112);
    v22 = *(a1 + 80);
    *(v21 + 80) = *(a1 + 64);
    *(v21 + 96) = v22;
    *(v21 + 112) = *(a1 + 96);
    v23 = *(a1 + 16);
    *(v21 + 16) = *a1;
    *(v21 + 32) = v23;
    v24 = *(a1 + 48);
    *(v21 + 48) = *(a1 + 32);
    *(v21 + 64) = v24;
    MEMORY[0x28223BE20](v21);
    *(&v47 - 2) = a1;
    outlined init with copy of RepeatPickerPhone(a1, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    v63[0] = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
    State.wrappedValue.getter();
    v25 = v62;
    if (v25 == WorkoutBlock.repetitions.getter())
    {
      v63[0] = *(a1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
      State.wrappedValue.getter();
      v26 = v62;
      v27 = WorkoutBlock.steps.getter();
      v28 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B4StepC_Tt1g5(v26, v27);
    }

    else
    {
      v28 = 0;
    }

    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = v28 & 1;
    v32 = v52;
    (*(v53 + 32))(v52, v4, v54);
    v33 = (v32 + *(v48 + 36));
    *v33 = KeyPath;
    v33[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_19;
    v33[2] = v31;
    v34 = v51;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v32, v51, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v35 = v34;
    v36 = v50;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v35, v50, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGMd);
    outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v36, v15, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGMd);
    v29 = 0;
    v7 = v49;
  }

  else
  {
    v29 = 1;
  }

  (*(v59 + 56))(v15, v29, 1, v7);
  v37 = v55;
  v38 = *(v55 + 16);
  v39 = v57;
  v40 = v56;
  v38(v57, v19, v56);
  v41 = v58;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v15, v58, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGSgMd);
  v42 = v60;
  v38(v60, v39, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAGyAA0F0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAmAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAmAE0P14Representation14representationQrqd__yXE_tAaLRd__lFQOyARyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAZG_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ARyA6_yAKGAA0S18AttachmentModifierVGQo_tGG_Qo_AA01_O13ShapeModifierVyAA9RectangleVGG_Qo__AmAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAmAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAKSiAA7ForEachVySaySiGSiAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZ_SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideC12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAKG_AIyAkRyA47_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAmAE0P7ActionsyQrqd__yXEAaLRd__lFQOyARyAmAEAsTQrAV_tFQOyAXyAGyA57_14WorkoutStepRowV_A0_ARyAA5ImageVA16_GtGG_Qo_A20_G_AGyA7_Sg_A83_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAKGSgtGG_A0_ARyARyA6_yARyAzA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA57_31PinnedBottomButtonModifierPhoneVGSgtMd);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v41, &v42[*(v43 + 64)], &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v15, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGSgMd);
  v45 = *(v37 + 8);
  v45(v20, v40);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v41, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG07WorkoutB0012PinnedBottomeM5PhoneVGSgMd);
  return (v45)(v39, v40);
}

uint64_t closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAiAE0N14Representation14representationQrqd__yXE_tAaHRd__lFQOyANyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAVG_AA014BorderedButtonZ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ANyA2_yAEGAA0Q18AttachmentModifierVGQo_tGG_Qo_AA01_M13ShapeModifierVyAA9RectangleVGG_Qo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyANyAiAE06pickerZ0yQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAESiAA7ForEachVySaySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_SiQo_GG_AA011WheelPickerZ0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAEGMd);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAeAE0L14Representation14representationQrqd__yXE_tAaDRd__lFQOyAJyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA0Z0VyARG_AA08BorderedzX0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AJyAZyAA05EmptyD0VGAA0O18AttachmentModifierVGQo_tGG_Qo_AA01_K13ShapeModifierVyAA9RectangleVGG_Qo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAJyAeAE06pickerX0yQrqd__AA06PickerX0Rd__lFQOyAA6PickerVyA11_SiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAR_SiQo_GG_AA011WheelPickerX0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAeAE0L14Representation14representationQrqd__yXE_tAaDRd__lFQOyAJyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA0Z0VyARG_AA08BorderedzX0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AJyAZyAA05EmptyD0VGAA0O18AttachmentModifierVGQo_tGG_Qo_AA01_K13ShapeModifierVyAA9RectangleVGG_Qo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAJyAeAE06pickerX0yQrqd__AA06PickerX0Rd__lFQOyAA6PickerVyA11_SiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAR_SiQo_GG_AA011WheelPickerX0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  v17 = v16;
  Section<>.init(content:)();
  v18 = WorkoutBlock.steps.getter();
  if (v18 >> 62)
  {
    v24 = __CocoaSet.count.getter();

    if (v24)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 1;
    v22 = v11;
    goto LABEL_6;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x28223BE20](v20);
  *(&v34 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleL0Vy0gB00gI3RowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0Q18AttachmentModifierVG_AWyAA6ButtonVyAA4TextVGSg_A21_tGSgQo_GAA21_TraitWritingModifierVyAA011OnMoveTraitZ0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>();
  v21 = v35;
  Section<>.init(content:)();
  v22 = v11;
  (*(v4 + 32))(v11, v21, v3);
  v23 = 0;
LABEL_6:
  (*(v4 + 56))(v22, v23, 1, v3);
  v25 = v36;
  v26 = v37;
  v27 = *(v36 + 16);
  v28 = v38;
  v27(v38, v17, v37);
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v22, v8, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgMd);
  v29 = v8;
  v30 = v39;
  v27(v39, v28, v26);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAiAE0N14Representation14representationQrqd__yXE_tAaHRd__lFQOyANyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAVG_AA014BorderedButtonZ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ANyA2_yAEGAA0Q18AttachmentModifierVGQo_tGG_Qo_AA01_M13ShapeModifierVyAA9RectangleVGG_Qo__AiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyANyAiAE06pickerZ0yQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAESiAA7ForEachVySaySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_SiQo_GG_AA011WheelPickerZ0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAEG_ACyAeNyA43_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAiAE0N7ActionsyQrqd__yXEAaHRd__lFQOyANyAiAEAoPQrAR_tFQOyATyAGyA53_14WorkoutStepRowV_AxNyAA5ImageVA12_GtGG_Qo_A16_G_AGyA3_Sg_A79_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgtMd);
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v29, &v30[*(v31 + 48)], &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v22, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgMd);
  v32 = *(v25 + 8);
  v32(v17, v26);
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v29, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDVAA0E0PAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy0jB00jL3RowV_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0S18AttachmentModifierVG_A_yAA6ButtonVyAA4TextVGSg_A25_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAEGSgMd);
  return (v32)(v28, v26);
}

uint64_t closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v54 = type metadata accessor for WheelPickerStyle();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v46 - v9;
  v57 = type metadata accessor for AccessibilityChildBehavior();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA0E0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAA15ModifiedContentVyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AOyASyAA05EmptyE0VGAA023AccessibilityAttachmentU0VGQo_tGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAOG_AA08BordereduS0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAWyAA05EmptyE0VGAA0i10AttachmentZ0VGQo_tGG_Qo_AA01_d5ShapeZ0VyAA9RectangleVGGMd);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAcAE0K14Representation14representationQrqd__yXE_tAaBRd__lFQOyAHyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA0Z0VyARG_AA08BorderedzX0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AHyAZyAA05EmptyC0VGAA0N18AttachmentModifierVGQo_tGG_Qo_AA01_J13ShapeModifierVyAA9RectangleVGG_Qo_Md);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA0D0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaNRd__lFQOyAA15ModifiedContentVyAoAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAKG_AA08BorderedsQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ASyAWyAA05EmptyD0VGAA023AccessibilityAttachmentX0VGQo_tGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(a1, &v15[*(v23 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA0E0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAA15ModifiedContentVyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AOyASyAA05EmptyE0VGAA023AccessibilityAttachmentU0VGQo_tGGMd);
  View.accessibilityElement(children:)();
  (*(v10 + 8))(v12, v57);
  v24 = 1;
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA0E0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAA15ModifiedContentVyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AOyASyAA05EmptyE0VGAA023AccessibilityAttachmentU0VGQo_tGGMd);
  v18[*(v16 + 36)] = 0;
  v25 = swift_allocObject();
  v26 = *(a1 + 80);
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = v26;
  *(v25 + 112) = *(a1 + 96);
  *(v25 + 128) = *(a1 + 112);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  v28 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v28;
  outlined init with copy of RepeatPickerPhone(a1, &v63);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  v57 = v22;
  v29 = v55;
  View.onTapGesture(count:perform:)();

  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v18, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAOG_AA08BordereduS0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAWyAA05EmptyE0VGAA0i10AttachmentZ0VGQo_tGG_Qo_AA01_d5ShapeZ0VyAA9RectangleVGGMd);
  v63 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v62 == 1)
  {
    v62 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
    State.projectedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v30 = v47;
    Picker.init(selection:label:content:)();
    v31 = v52;
    WheelPickerStyle.init()();
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    v32 = v48;
    v33 = v51;
    v34 = v54;
    View.pickerStyle<A>(_:)();
    (*(v53 + 8))(v31, v34);
    (*(v50 + 8))(v30, v33);
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>();
    View.listRowInsets(_:_:)();
    outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v32, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    v24 = 0;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_Md);
  (*(*(v35 - 8) + 56))(v29, v24, 1, v35);
  v36 = v56;
  v37 = *(v56 + 16);
  v39 = v58;
  v38 = v59;
  v40 = v57;
  v37(v58, v57, v59);
  v41 = v60;
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v29, v60, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  v42 = v61;
  v37(v61, v39, v38);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAcAE0K14Representation14representationQrqd__yXE_tAaBRd__lFQOyAHyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA0Z0VyARG_AA08BorderedzX0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AHyAZyAA05EmptyC0VGAA0N18AttachmentModifierVGQo_tGG_Qo_AA01_J13ShapeModifierVyAA9RectangleVGG_Qo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAHyAcAE06pickerX0yQrqd__AA06PickerX0Rd__lFQOyAA6PickerVyA11_SiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAR_SiQo_GG_AA011WheelPickerX0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtMd);
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v41, &v42[*(v43 + 48)], &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v29, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  v44 = *(v36 + 8);
  v44(v40, v38);
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v41, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  return (v44)(v39, v38);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v47 = type metadata accessor for BorderedButtonStyle();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v37 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v46);
  v7 = &v37 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyAA4TextVG_AA08BorderedlJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAKyAA05EmptyC0VGAA023AccessibilityAttachmentR0VGQo_Md);
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v37 - v11;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v13 = Text.init(_:tableName:bundle:comment:)();
  v38 = v14;
  v39 = v15;
  v40 = v16;
  v17 = swift_allocObject();
  *(v17 + 128) = *(a1 + 112);
  v18 = *(a1 + 80);
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(a1 + 96);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v20 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v20;
  MEMORY[0x28223BE20](v17);
  outlined init with copy of RepeatPickerPhone(a1, v51);
  Button.init(action:label:)();
  v21 = v44;
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v22 = v43;
  v23 = v47;
  View.buttonStyle<A>(_:)();
  (*(v45 + 8))(v21, v23);
  (*(v42 + 8))(v5, v22);
  KeyPath = swift_getKeyPath();
  v25 = &v7[*(v46 + 36)];
  *v25 = KeyPath;
  v25[1] = 0;
  MEMORY[0x28223BE20](KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Button<EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v26 = v50;
  View.accessibilityRepresentation<A>(representation:)();
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v7, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v27 = *(v8 + 16);
  v28 = v48;
  v29 = v49;
  v27(v48, v26, v49);
  v30 = v13;
  v31 = v41;
  *v41 = v13;
  v32 = v38;
  v31[1] = v38;
  v33 = v39 & 1;
  *(v31 + 16) = v39 & 1;
  v31[3] = v40;
  v31[4] = 0;
  *(v31 + 40) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaFRd__lFQOyAA15ModifiedContentVyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACG_AA08BorderednL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyAOyAA05EmptyE0VGAA023AccessibilityAttachmentS0VGQo_tMd);
  v27(v31 + *(v34 + 64), v28, v29);
  outlined copy of Text.Storage(v30, v32, v33);
  v35 = *(v8 + 8);

  v35(v50, v29);
  v35(v28, v29);
  outlined consume of Text.Storage(v30, v32, v33);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.wrappedValue.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  LocalizedStringKey.init(stringInterpolation:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v18 == 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
    Color.init(uiColor:)();
  }

  else
  {
    static Color.white.getter();
  }

  v10 = Text.foregroundStyle<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  outlined consume of Text.Storage(v5, v7, v9 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9EmptyViewVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = swift_allocObject();
  v8 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(a1 + 96);
  *(v7 + 128) = *(a1 + 112);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  outlined init with copy of RepeatPickerPhone(a1, v15);
  Button.init(action:label:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  v15[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.wrappedValue.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<EmptyView> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9EmptyViewVGMd);
  View.accessibilityValue(_:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter()
{
  specialized _copySequenceToContiguousArray<A>(_:)(2, 99, 1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *a1;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v5;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  v4 = swift_allocObject();
  v5 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = *(a1 + 112);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v7;
  outlined init with copy of RepeatPickerPhone(a1, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA15ModifiedContentVyAcAE0D7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0Vy07WorkoutB00O7StepRowV_AA6SpacerVAFyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0j10AttachmentW0VG_ANyAA6ButtonVyAA4TextVGSg_A12_tGSgQo_Md);
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  v10 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v11 = lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v20 = v10;
  v21 = v11;
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  ForEach<>.init(_:content:)();
  v12 = swift_allocObject();
  v13 = *(a1 + 80);
  *(v12 + 80) = *(a1 + 64);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(a1 + 96);
  *(v12 + 128) = *(a1 + 112);
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  v15 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #2 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter;
  *(v16 + 24) = v12;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleL0Vy0gB00gI3RowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0Q18AttachmentModifierVG_AWyAA6ButtonVyAA4TextVGSg_A21_tGSgQo_GAA21_TraitWritingModifierVyAA011OnMoveTraitZ0VGGMd) + 36));
  *v17 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ();
  v17[1] = v16;
  return outlined init with copy of RepeatPickerPhone(a1, &v19);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v26 = a3;
  v22 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0Vy07WorkoutB00L7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_Md);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
  MEMORY[0x28223BE20](v25);
  v13 = &v19 - v12;
  v21 = *a1;
  v14 = static VerticalAlignment.center.getter();
  v32 = 1;
  closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(a2, &v40);
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v33 = v40;
  v34 = v41;
  v38[2] = v42;
  v38[3] = v43;
  v39 = v44;
  v38[0] = v40;
  v38[1] = v41;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v33, &v29, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v38, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd);
  *(v31 + 7) = v33;
  *(&v31[3] + 7) = v36;
  *(&v31[2] + 7) = v35;
  *(&v31[1] + 7) = v34;
  *(&v30[1] + 1) = v31[1];
  *(&v30[2] + 1) = v31[2];
  *(&v31[4] + 7) = v37;
  *(&v30[3] + 1) = v31[3];
  v30[4] = *(&v31[3] + 15);
  v29 = v14;
  LOBYTE(v30[0]) = v32;
  *(v30 + 1) = v31[0];
  static AccessibilityChildBehavior.combine.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v16 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(WorkoutStepRow, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v22);
  v42 = v30[1];
  v43 = v30[2];
  v44 = v30[3];
  v45 = v30[4];
  v40 = v29;
  v41 = v30[0];
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v40, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  *&v29 = v15;
  *(&v29 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v23;
  View.accessibilityAddTraits(uiTraits:)();
  (*(v24 + 8))(v11, v17);
  v27 = v20;
  v28 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  View.accessibilityActions<A>(_:)();
  return outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v13, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  type metadata accessor for WorkoutStep();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v4 = v3;

  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v8 = Image.init(systemName:)();
  v9 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v4;
  *(a2 + 40) = 1;
  *(a2 + 48) = v8;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v9;
}

uint64_t closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v68 = *(a1 + 32);
  v66[0] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  v19 = specialized Collection<>.firstIndex(of:)(a2, v67);
  v21 = v20;

  if (v21)
  {
    v22 = 1;
    return (*(v62 + 56))(a3, v22, 1, v63);
  }

  if (__OFADD__(v19, 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v66[0] = v68;
  State.wrappedValue.getter();
  if (v67 >> 62)
  {
LABEL_18:
    v23 = __CocoaSet.count.getter();
    goto LABEL_6;
  }

  v23 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v56 = a3;
  if (v23 >= v19 + 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = WorkoutUIBundle.super.isa;
    v69._object = 0xE000000000000000;
    v27._object = 0xEC0000004E574F44;
    v27._countAndFlagsBits = 0x5F45564F4D5F5841;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v69);

    v65 = v30;
    v31 = swift_allocObject();
    v32 = *(a1 + 80);
    *(v31 + 80) = *(a1 + 64);
    *(v31 + 96) = v32;
    *(v31 + 112) = *(a1 + 96);
    v33 = *(a1 + 112);
    v34 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v34;
    v35 = *(a1 + 48);
    *(v31 + 48) = *(a1 + 32);
    *(v31 + 64) = v35;
    *(v31 + 128) = v33;
    *(v31 + 136) = v19;
    outlined init with copy of RepeatPickerPhone(a1, v66);
    lazy protocol witness table accessor for type String and conformance String();
    v36 = v60;
    Button<>.init<A>(_:action:)();
    v25 = v61;
    (*(v61 + 32))(v18, v36, v7);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v25 = v61;
  }

  v37 = *(v25 + 56);
  v38 = 1;
  v37(v18, v24, 1, v7);
  if (v19 >= 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = WorkoutUIBundle.super.isa;
    v70._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0x5F45564F4D5F5841;
    v40._object = 0xEA00000000005055;
    v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v41.value._object = 0xEB00000000656C62;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v70._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v70);

    v64 = v43;
    v44 = swift_allocObject();
    v45 = *(a1 + 80);
    *(v44 + 80) = *(a1 + 64);
    *(v44 + 96) = v45;
    *(v44 + 112) = *(a1 + 96);
    v46 = *(a1 + 112);
    v47 = *(a1 + 16);
    *(v44 + 16) = *a1;
    *(v44 + 32) = v47;
    v48 = *(a1 + 48);
    *(v44 + 48) = *(a1 + 32);
    *(v44 + 64) = v48;
    *(v44 + 128) = v46;
    *(v44 + 136) = v19;
    outlined init with copy of RepeatPickerPhone(a1, v66);
    lazy protocol witness table accessor for type String and conformance String();
    v49 = v60;
    Button<>.init<A>(_:action:)();
    (*(v61 + 32))(v15, v49, v7);
    v38 = 0;
  }

  v37(v15, v38, 1, v7);
  v50 = v57;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v18, v57, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v51 = v58;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v15, v58, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v52 = v59;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v50, v59, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSg_AGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v51, v52 + *(v53 + 48), &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v15, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v18, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v51, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(v50, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  a3 = v56;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(v52, v56, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
  v22 = 0;
  return (*(v62 + 56))(a3, v22, 1, v63);
}

void closure #1 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v34 = v3;
    v35 = v2;
    v27 = a2;
    v28 = v2;
    v29 = v3;
    v26 = v6;
    outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v35, &v31, &_sSay11WorkoutCore0A4StepCGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v34, &v31, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
    State.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v26);
    v31 = v2;
    v32 = v3;
    v30 = v33;
    State.wrappedValue.setter();
    outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v35, &_sSay11WorkoutCore0A4StepCGMd);
    outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v34, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v36._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4445564F4D5F5841;
  v11._object = 0xEE00574F4C45425FLL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20CB5DA70;
  v31 = v2;
  v32 = v3;
  State.wrappedValue.getter();
  if ((v33 & 0xC000000000000001) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) > v27)
    {

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x20F30C990](v27, v33);
LABEL_7:

  v15 = WorkoutStep.displayString.getter();
  v17 = v16;

  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = static String.localizedStringWithFormat(_:_:)();
  v20 = v19;

  v21 = *MEMORY[0x277D76438];
  v22 = MEMORY[0x20F30BAD0](v18, v20);
  UIAccessibilityPostNotification(v21, v22);

  v23 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v24 = v23;
    UIAccessibilityPostNotification(v21, v24);

    return;
  }

LABEL_14:
  __break(1u);
}

void closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v34 = v3;
    v35 = v2;
    v27 = a2;
    v28 = v2;
    v29 = v3;
    v26 = v6;
    outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v35, &v31, &_sSay11WorkoutCore0A4StepCGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v34, &v31, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
    State.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v26);
    v31 = v2;
    v32 = v3;
    v30 = v33;
    State.wrappedValue.setter();
    outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v35, &_sSay11WorkoutCore0A4StepCGMd);
    outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v34, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v36._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4445564F4D5F5841;
  v11._object = 0xEE0045564F42415FLL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20CB5DA70;
  v31 = v2;
  v32 = v3;
  State.wrappedValue.getter();
  if ((v33 & 0xC000000000000001) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) > v27)
    {

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x20F30C990](v27, v33);
LABEL_7:

  v15 = WorkoutStep.displayString.getter();
  v17 = v16;

  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = static String.localizedStringWithFormat(_:_:)();
  v20 = v19;

  v21 = *MEMORY[0x277D76438];
  v22 = MEMORY[0x20F30BAD0](v18, v20);
  UIAccessibilityPostNotification(v21, v22);

  v23 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v24 = v23;
    UIAccessibilityPostNotification(v21, v24);

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t closure #2 in closure #2 in closure #1 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v3 = *(a3 + 40);
  v7 = v3;
  v8 = v4;
  v6[2] = v4;
  v6[3] = v3;
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v8, v6, &_sSay11WorkoutCore0A4StepCGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v7, v6, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  MutableCollection.move(fromOffsets:toOffset:)();
  v6[0] = v4;
  v6[1] = v3;
  State.wrappedValue.setter();
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v8, &_sSay11WorkoutCore0A4StepCGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(&v7, &_s7SwiftUI11AnyLocationCySay11WorkoutCore0E4StepCGGSgMd);
}

__n128 closure #3 in closure #1 in RepeatPickerPhone.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 104))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v18 = 0xE000000000000000;
    v4 = 0x425F455441445055;
    v5 = 0xED00004E4F545455;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v18 = 0xE000000000000000;
    v4 = 0x5455425F454E4F44;
    v5 = 0xEB000000004E4F54;
  }

  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, v6, v3, v7, *(&v18 - 1));

  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 96) = v22;
  *(a2 + 112) = v23;
  *(a2 + 128) = v24;
  *(a2 + 32) = v9;
  *(a2 + 48) = v19;
  result = v21;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  return result;
}

uint64_t closure #2 in RepeatPickerPhone.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AA012_ConditionalD0VyAwcDyQrxAaERzlFZQOy_AGyytAIyAKyAA07DefaultJ5LabelVGAPyAA13AnyShapeStyleVSgGGGQo_GtMd);
  MEMORY[0x28223BE20](v71);
  v70 = &v61 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v61 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA07ToolbarD7BuilderV10buildBlockyQrxAA0eD0RzlFZQOy_AA0E4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GMd);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v61 - v9;
  v10 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v61 - v20);
  v22 = a1[11];
  v66 = v12;
  if (!v22)
  {
    (*(v75 + 56))(v17, 1, 1, v8, v19);
    v47 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v77 = v76;
    v78 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v17, v8, OpaqueTypeConformance2);
    outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v17, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    v30 = a1[13];
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_5:
    v49 = static ToolbarItemPlacement.confirmationAction.getter();
    MEMORY[0x28223BE20](v49);
    *(&v61 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    v50 = v63;
    ToolbarItem<>.init(placement:content:)();
    v51 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
    v52 = v62;
    v53 = v68;
    MEMORY[0x20F3098F0](v50, v68, v51);
    v54 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v77 = v76;
    v78 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v77 = v53;
    v78 = v51;
    v56 = swift_getOpaqueTypeConformance2();
    v46 = v69;
    v57 = v67;
    MEMORY[0x20F309910](v52, v8, v67, v55, v56);
    v65[1](v52, v57);
    (*(v64 + 8))(v50, v53);
    goto LABEL_6;
  }

  v61 = a1[12];
  v23 = v61;

  v24 = static ToolbarItemPlacement.cancellationAction.getter();
  MEMORY[0x28223BE20](v24);
  *(&v61 - 2) = v22;
  *(&v61 - 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v25 = v76;
  ToolbarItem<>.init(placement:content:)();
  v26 = v73;
  v27 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  MEMORY[0x20F3098F0](v14, v25, v27);
  v28 = v75;
  (*(v75 + 16))(v17, v26, v8);
  (*(v28 + 56))(v17, 0, 1, v8);
  v77 = v25;
  v78 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F309920](v17, v8, v29);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22);
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v17, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  (*(v28 + 8))(v26, v8);
  (*(v74 + 8))(v14, v25);
  v30 = a1[13];
  if (!v30)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = a1[14];

  v32 = static ToolbarItemPlacement.destructiveAction.getter();
  v64 = v8;
  v65 = v21;
  MEMORY[0x28223BE20](v32);
  *(&v61 - 2) = v30;
  *(&v61 - 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v33 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v34 = v73;
  v35 = v76;
  MEMORY[0x20F3098F0](v14, v76, v33);
  v77 = v35;
  v78 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v75;
  v38 = v14;
  v39 = v36;
  v40 = lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  v77 = v68;
  v78 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v69;
  v43 = v64;
  MEMORY[0x20F309900](v34, v64, v67, v39, v41);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
  v44 = v34;
  v21 = v65;
  (*(v37 + 8))(v44, v43);
  v45 = v35;
  v46 = v42;
  (*(v74 + 8))(v38, v45);
LABEL_6:
  v58 = v70;
  v59 = *(v71 + 48);
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v21, v70, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(v46, v58 + v59, &_s7SwiftUI19_ConditionalContentVyAA07ToolbarD7BuilderV10buildBlockyQrxAA0eD0RzlFZQOy_AA0E4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GMd);
  TupleToolbarContent.init(_:)();
  outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v46, &_s7SwiftUI19_ConditionalContentVyAA07ToolbarD7BuilderV10buildBlockyQrxAA0eD0RzlFZQOy_AA0E4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA07DefaultK5LabelVGARyAA13AnyShapeStyleVSgGGGQo_GMd);
  return outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v21, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
}

uint64_t closure #2 in closure #1 in closure #2 in RepeatPickerPhone.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in closure #2 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = Button.init(action:label:)();
  v10 = a3(v9);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v13 = (a4 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t closure #2 in closure #2 in closure #2 in RepeatPickerPhone.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #3 in closure #2 in RepeatPickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  v7 = swift_allocObject();
  v8 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(a1 + 96);
  *(v7 + 128) = *(a1 + 112);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  outlined init with copy of RepeatPickerPhone(a1, v17);
  MEMORY[0x20F30AF90](v6, partial apply for closure #1 in closure #3 in closure #2 in RepeatPickerPhone.body.getter, v7);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v11 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v17[0] = v11;
  v13 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  return result;
}

uint64_t closure #2 in closure #1 in RepeatPickerPhone.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  WorkoutBlock.steps.setter();
  v2 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.wrappedValue.getter();
  return v2();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4ListVys5NeverOAGyAA7SectionVyAA05EmptyG0VAGyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAqAE0Q14Representation14representationQrqd__yXE_tAaPRd__lFQOyACyAqAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA0_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyA8_yAOGAA0T18AttachmentModifierVGQo_tGG_Qo_AA01_D13ShapeModifierVyAA9RectangleVGG_Qo__AqAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAqAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAOSiAA7ForEachVySaySiGSiAqAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA0__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideH12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAOG_AMyAoCyA49_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAqAE0Q7ActionsyQrqd__yXEAaPRd__lFQOyACyAqAEAuVQrAX_tFQOyAZyAGyA59_14WorkoutStepRowV_A2_ACyAA5ImageVA18_GtGG_Qo_A22_G_AGyA9_Sg_A85_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAOGSgtGG_A2_ACyACyA8_yACyA0_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA59_31PinnedBottomButtonModifierPhoneVGSgtGGA14_yAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4ListVys5NeverOAEyAA7SectionVyAA05EmptyE0VAEyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAoAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAEyAA4TextV_AA6SpacerVAoAE0Q14Representation14representationQrqd__yXE_tAaNRd__lFQOyATyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA0_G_AA19BorderedButtonStyleVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ATyA8_yAMGAA0T18AttachmentModifierVGQo_tGG_Qo_AA01_P13ShapeModifierVyAA9RectangleVGG_Qo__AoAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyATyAoAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAMSiAA7ForEachVySaySiGSiAoAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA0__SiQo_GG_AA16WheelPickerStyleVQo_07WorkoutB004HideF12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGAMG_AKyAmTyA49_ySay11WorkoutCore11WorkoutStepCG10Foundation4UUIDVAoAE0Q7ActionsyQrqd__yXEAaNRd__lFQOyATyAoAEAuVQrAX_tFQOyAZyAEyA59_14WorkoutStepRowV_A2_ATyAA5ImageVA18_GtGG_Qo_A22_G_AEyA9_Sg_A85_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGAMGSgtGG_A2_ATyATyA8_yATyA0_AA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGGA59_31PinnedBottomButtonModifierPhoneVGSgtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleL0Vy0gB00gI3RowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0Q18AttachmentModifierVG_AWyAA6ButtonVyAA4TextVGSg_A21_tGSgQo_GAA21_TraitWritingModifierVyAA011OnMoveTraitZ0VGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaKRd__lFQOyAA15ModifiedContentVyAlAE0K7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleJ0Vy0eB00eG3RowV_AA6SpacerVAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0Q18AttachmentModifierVG_AWyAA6ButtonVyAA4TextVGSg_A21_tGSgQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAOG_AA08BordereduS0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAWyAA05EmptyE0VGAA0i10AttachmentZ0VGQo_tGG_Qo_AA01_d5ShapeZ0VyAA9RectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA0E0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAA15ModifiedContentVyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AOyASyAA05EmptyE0VGAA023AccessibilityAttachmentU0VGQo_tGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA0E0PAAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAA15ModifiedContentVyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AOyASyAA05EmptyE0VGAA023AccessibilityAttachmentU0VGQo_tGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9EmptyViewVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<EmptyView> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9EmptyViewVGMd);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<EmptyView>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_12Tm_1()
{

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

void one-time initialization function for iconHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB89CE8[v2];
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

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static RacePlatterConstants.iconHeight = *&v3;
}

void one-time initialization function for iconWidth()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB89D40[v2];
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

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static RacePlatterConstants.iconWidth = *&v3;
}

void one-time initialization function for graphContentHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB89D98[v2];
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

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static RacePlatterConstants.graphContentHeight = *&v3;
}

void one-time initialization function for graphTopPadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB89DF0[v2];
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

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static RacePlatterConstants.graphTopPadding = *&v3;
}

void one-time initialization function for graphBottomPadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB89E48[v2];
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

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static RacePlatterConstants.graphBottomPadding = *&v3;
}

uint64_t DistancePickerWatch.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DistancePickerWatch();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DistancePickerWatch);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of DistancePickerWatch(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DistancePickerWatch);
  *a1 = partial apply for closure #1 in DistancePickerWatch.body.getter;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for DistancePickerWatch()
{
  result = type metadata singleton initialization cache for DistancePickerWatch;
  if (!type metadata singleton initialization cache for DistancePickerWatch)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for DistancePickerWatch();
  v4 = v3 - 8;
  v41 = *(v3 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = v5;
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA6HStackVyAGyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAV_AA012_ConditionalD0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AGyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGA12_GA15_yAA0T9DirectionOGGMd);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAA6VStackVyAA05TupleC0VyAHyAHyAHyAHyAA6HStackVyALyAA6PickerVyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_ALyAY_AA012_ConditionalI0VyAPyARSiATySnySiGSiAZGGA5_GtGSgtGGAA16_FlexFrameLayoutVGAA01_wX0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA24_ForegroundStyleModifierVyAA14TintShapeStyleVGG_AcAE5sheet11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAYG_07WorkoutB015UnitButtonStyleVQo__ALyA43_013LapLengthUnitM0VSg_A43_012DistanceUnitM0VtGQo_tGGA15_GA18_yAA0X9DirectionOGG_SiQo_Md);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v45 = &v34 - v11;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6HStackVyAIyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AIyAZ_AA012_ConditionalJ0VyAOyAQSiASySnySiGSiA_GGA6_GtGSgtGGAA010_FlexFrameG0VGAA01_vG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleZ0VyAA14TintShapeStyleVGG_AvAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyAvAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAZG_07WorkoutB015UnitButtonStyleVQo__AIyA44_013LapLengthUnitL0VSg_A44_012DistanceUnitL0VtGQo_tGGMd);
  closure #1 in closure #1 in DistancePickerWatch.body.getter(a1, &v8[*(v12 + 44)]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA6HStackVyAGyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAV_AA012_ConditionalD0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AGyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGA12_GMd) + 36)];
  v14 = v52;
  *v13 = v51;
  *(v13 + 1) = v14;
  *(v13 + 2) = v53;
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v18 = *MEMORY[0x277CDFA88];
  v19 = type metadata accessor for LayoutDirection();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v38 = *(v4 + 28);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  v20 = a1;
  Bindable.wrappedValue.getter();
  v21 = v46;
  swift_getKeyPath();
  v46 = v21;
  v37 = lazy protocol witness table accessor for type DistancePickerViewModel and conformance DistancePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v22 = *(v21 + 56);

  v46 = v22;
  v35 = type metadata accessor for DistancePickerWatch;
  v23 = v40;
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v20, v40, type metadata accessor for DistancePickerWatch);
  v24 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v25 = swift_allocObject();
  outlined init with take of DistancePickerWatch(v23, v25 + v24, type metadata accessor for DistancePickerWatch);
  v26 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
  v27 = v39;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA6HStackVyAGyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAV_AA012_ConditionalD0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AGyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGA12_GA15_yAA0T9DirectionOGGMd);
  Bindable.wrappedValue.getter();
  v28 = v46;
  swift_getKeyPath();
  v46 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v29 = *(v28 + 64);

  v50 = v29;
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v20, v23, v35);
  v30 = swift_allocObject();
  outlined init with take of DistancePickerWatch(v23, v30 + v24, type metadata accessor for DistancePickerWatch);
  v46 = v27;
  v47 = MEMORY[0x277D83B88];
  v48 = v26;
  v49 = MEMORY[0x277D83BA8];
  swift_getOpaqueTypeConformance2();
  v31 = v42;
  v32 = v45;
  View.onChange<A>(of:initial:_:)();

  return (*(v43 + 8))(v32, v31);
}

void closure #1 in closure #1 in DistancePickerWatch.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v84 = a2;
  v76 = type metadata accessor for DistancePickerWatch();
  v89 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v94 = v2;
  v91 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v73 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_07WorkoutB004UnitfE0VQo_Md);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v92 = &v73 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA06ButtonL0Rd__lFQOyAA0M0VyAA4TextVG_07WorkoutB004UnitmL0VQo__AA05TupleC0VyAS09LapLengthP6PickerVSg_AS08DistancepT0VtGQo_Md);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v73 - v9;
  v88 = type metadata accessor for Font.TextStyle();
  v11 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AEyAR_AA19_ConditionalContentVyAGyAISiAKySnySiGSiASGGAZGtGSgtGGMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGMd);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGMd);
  MEMORY[0x28223BE20](v85);
  v22 = &v73 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v87);
  v24 = &v73 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
  MEMORY[0x28223BE20](v86);
  v74 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v29);
  v93 = &v73 - v30;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AIyAV_AA19_ConditionalContentVyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGMd);
  closure #1 in closure #1 in closure #1 in DistancePickerWatch.body.getter(v95, &v16[*(v31 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v16, v20, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AEyAR_AA19_ConditionalContentVyAGyAISiAKySnySiGSiASGGAZGtGSgtGGMd);
  v32 = &v20[*(v18 + 44)];
  v33 = v107;
  *(v32 + 4) = v106;
  *(v32 + 5) = v33;
  *(v32 + 6) = v108;
  v34 = v103;
  *v32 = v102;
  *(v32 + 1) = v34;
  v35 = v105;
  *(v32 + 2) = v104;
  *(v32 + 3) = v35;
  if (one-time initialization token for distancePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v20, v22, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGMd);
  v36 = &v22[*(v85 + 36)];
  v37 = v110;
  *v36 = v109;
  *(v36 + 1) = v37;
  *(v36 + 2) = v111;
  v38 = v88;
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A80], v88);
  v39 = *MEMORY[0x277CE09A0];
  v40 = type metadata accessor for Font.Design();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v10, v39, v40);
  (*(v41 + 56))(v10, 0, 1, v40);
  v42 = static Font.system(_:design:weight:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_13(v10, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v11 + 8))(v13, v38);
  KeyPath = swift_getKeyPath();
  outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v22, v24, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGMd);
  v44 = &v24[*(v87 + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  TintShapeStyle.init()();
  outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v24, v28, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v28, v93, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
  v45 = v95;
  v46 = v91;
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v95, v91, type metadata accessor for DistancePickerWatch);
  v47 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v48 = swift_allocObject();
  v49 = outlined init with take of DistancePickerWatch(v46, v48 + v47, type metadata accessor for DistancePickerWatch);
  MEMORY[0x28223BE20](v49);
  v50 = v90;
  Button.init(action:label:)();
  v51 = [objc_opt_self() distanceColors];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 nonGradientTextColor];

    if (v53)
    {
      v96 = Color.init(uiColor:)();
      v54 = lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
      v55 = lazy protocol witness table accessor for type UnitButtonStyle and conformance UnitButtonStyle();
      v56 = v77;
      View.buttonStyle<A>(_:)();

      (*(v75 + 8))(v50, v56);
      v57 = v45 + *(v76 + 24);
      v58 = *v57;
      v59 = *(v57 + 8);
      v100 = v58;
      v101 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.projectedValue.getter();
      _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v45, v46, type metadata accessor for DistancePickerWatch);
      v60 = swift_allocObject();
      outlined init with take of DistancePickerWatch(v46, v60 + v47, type metadata accessor for DistancePickerWatch);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB019LapLengthUnitPickerVSg_AD08DistancehI0VtGMd);
      v96 = v56;
      v97 = &type metadata for UnitButtonStyle;
      v98 = v54;
      v99 = v55;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type TupleView<(LapLengthUnitPicker?, DistanceUnitPicker)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB019LapLengthUnitPickerVSg_AD08DistancehI0VtGMd);
      v61 = v79;
      v62 = v80;
      v63 = v92;
      View.sheet<A>(isPresented:onDismiss:content:)();

      (*(v78 + 8))(v63, v62);
      v64 = v93;
      v65 = v74;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v93, v74, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
      v66 = v82;
      v67 = *(v82 + 16);
      v68 = v81;
      v69 = v83;
      v67(v81, v61, v83);
      v70 = v84;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v65, v84, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_ApAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaORd__lFQOyApAE06buttonZ0yQrqd__AA06ButtonZ0Rd__lFQOyAA6ButtonVyATG_07WorkoutB0010UnitButtonZ0VQo__AGyA38_013LapLengthUnitH0VSg_A38_012DistanceUnitH0VtGQo_tMd);
      v67((v70 + *(v71 + 48)), v68, v69);
      v72 = *(v66 + 8);
      v72(v61, v69);
      outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v64, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
      v72(v68, v69);
      outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v65, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAT_AA012_ConditionalD0VyAIyAKSiAMySnySiGSiAUGGA0_GtGSgtGGAA16_FlexFrameLayoutVGAA01_rS0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGGMd);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGMd);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = (&v61 - v4);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0H0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAU_GMd);
  MEMORY[0x28223BE20](v62);
  v64 = &v61 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGASGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v61 - v10;
  v71 = type metadata accessor for Locale();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x28223BE20](v21);
  v73 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  type metadata accessor for DistancePickerWatch();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v69 = *(v18 + 8);
  v69(v20, v17);
  v81 = a1;
  v84 = v86;
  v85 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GACyxq_q0_GAae2aER0_rlWlTm_0(&lazy protocol witness table cache variable for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  v72 = v25;
  Picker.init(selection:label:content:)();
  Bindable.wrappedValue.getter();
  v26 = DistancePickerViewModel.showsFractional.getter();

  if ((v26 & 1) == 0)
  {
    v40 = 1;
    v41 = v76;
LABEL_13:
    (*(v78 + 56))(v41, v40, 1, v79);
    v53 = v73;
    v52 = v74;
    v54 = *(v74 + 16);
    v55 = v72;
    v56 = v75;
    v54(v73, v72, v75);
    v57 = v77;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v41, v77, &_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGSgMd);
    v58 = v80;
    v54(v80, v53, v56);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05TupleE0VyAN_AA19_ConditionalContentVyACyAESiAGySnySiGSiAOGGAXGtGSgtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v57, &v58[*(v59 + 48)], &_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v41, &_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGSgMd);
    v60 = *(v52 + 8);
    v60(v55, v56);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v57, &_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGSgMd);
    return (v60)(v53, v56);
  }

  static Locale.current.getter();
  v27 = Locale.decimalSeparator.getter();
  v29 = v28;
  (*(v70 + 8))(v12, v71);
  v30 = 46;
  if (v29)
  {
    v30 = v27;
  }

  v71 = v30;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE100000000000000;
  }

  Bindable.wrappedValue.getter();
  v32 = v86;
  swift_getKeyPath();
  *&v86 = v32;
  lazy protocol witness table accessor for type DistancePickerViewModel and conformance DistancePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v33 = *(v32 + 56);

  Bindable.wrappedValue.getter();
  v34 = DistancePickerViewModel.minimumIntegralValue.getter();

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  if (v33 != v34)
  {
    Bindable<A>.subscript.getter();

    v42 = (v69)(v20, v17);
    v43 = v84;
    MEMORY[0x28223BE20](v42);
    v82 = v43;
    v83 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GACyxq_q0_GAae2aER0_rlWlTm_0(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    v39 = v61;
    Picker.init(selection:label:content:)();

    goto LABEL_12;
  }

  Bindable<A>.subscript.getter();

  v69(v20, v17);
  v35 = v84;
  v36 = v85;
  Bindable.wrappedValue.getter();
  v37 = DistancePickerViewModel.minimumFractionalValue.getter();

  if (v37 <= 100)
  {
    MEMORY[0x28223BE20](result);
    v82 = v35;
    v83 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GACyxq_q0_GAae2aER0_rlWlTm_0(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    v39 = v61;
    Picker.init(selection:label:content:)();

LABEL_12:
    v45 = v63;
    v46 = v65;
    (*(v63 + 16))(v64, v39, v65);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    v47 = v66;
    _ConditionalContent<>.init(storage:)();
    (*(v45 + 8))(v39, v46);
    v48 = v67;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v47, v67, &_s7SwiftUI19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGASGMd);
    v49 = v68;
    v50 = v71;
    *v68 = v71;
    *(v49 + 8) = v31;
    *(v49 + 16) = 0;
    *(v49 + 24) = MEMORY[0x277D84F90];
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0H0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAC_SiQo_GGASGtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(v48, v49 + *(v51 + 48), &_s7SwiftUI19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGASGMd);
    outlined copy of Text.Storage(v50, v31, 0);

    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v47, &_s7SwiftUI19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGASGMd);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(v48, &_s7SwiftUI19_ConditionalContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGASGMd);
    outlined consume of Text.Storage(v50, v31, 0);

    v41 = v76;
    outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(v49, v76, &_s7SwiftUI9TupleViewVyAA4TextV_AA19_ConditionalContentVyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GGAUGtGMd);
    v40 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in DistancePickerWatch.body.getter()
{
  type metadata accessor for DistancePickerWatch();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  v0 = DistancePickerViewModel.minimumIntegralValue.getter();
  v1 = DistancePickerViewModel.maxValue.getter();
  result = DistancePickerViewModel.increment.getter();
  if (result)
  {
    specialized _copySequenceToContiguousArray<A>(_:)(v0, v1, result);

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for pickerFormatter != -1)
  {
    swift_once();
  }

  v4 = static PickerFormatters.pickerFormatter;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in DistancePickerWatch.body.getter()
{
  type metadata accessor for DistancePickerWatch();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

id closure #3 in closure #1 in closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - v3;
  type metadata accessor for DistancePickerWatch();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  v5 = v29;
  v6 = *(v29 + 16);
  swift_getKeyPath();
  v29 = v5;
  lazy protocol witness table accessor for type DistancePickerViewModel and conformance DistancePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v5 + 72);
  v8 = NSUnitLength.hkUnit.getter();

  v9 = MEMORY[0x20F30D2C0](v8);
  result = [v6 localizedLongUnitStringForDistanceUnit:v9 distanceInUnit:1 textCase:99.0];
  if (result)
  {
    v11 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v28[1] = v12;
    v28[2] = v14;
    lazy protocol witness table accessor for type String and conformance String();
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    if (one-time initialization token for labelFontSize != -1)
    {
      swift_once();
    }

    static Font.Weight.medium.getter();
    v20 = type metadata accessor for Font.Design();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    static Font.system(size:weight:design:)();
    _s7SwiftUI4FontV6DesignOSgWOhTm_13(v4, &_s7SwiftUI4FontV6DesignOSgMd);
    v21 = Text.font(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    outlined consume of Text.Storage(v15, v17, v19 & 1);

    *a1 = v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v25 & 1;
    *(a1 + 24) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in closure #1 in DistancePickerWatch.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = type metadata accessor for DistanceUnitPicker();
  MEMORY[0x28223BE20](v34);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  *&v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for LapLengthUnitPicker();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19LapLengthUnitPickerVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v32 - v19;
  v21 = *a1;
  if ([*a1 effectiveTypeIdentifier] == 46 && objc_msgSend(v21, sel_swimmingLocationType) == 1)
  {
    v32[0] = *(type metadata accessor for DistancePickerWatch() + 20);
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v32[1] = a1;
    Bindable<A>.subscript.getter();

    (*(v33 + 8))(v9, v7);
    v22 = v38;
    v33 = v39;
    Bindable.wrappedValue.getter();
    v23 = *(v37 + 16);

    *&v13[v10[5]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    *v13 = v22;
    *(v13 + 8) = v33;
    *&v13[v10[6]] = v23;
    v24 = v10[7];
    if (one-time initialization token for allowedLapUnits != -1)
    {
      swift_once();
    }

    *&v13[v24] = static SwimmingDistancePickerViewModel.allowedLapUnits;
    outlined init with take of DistancePickerWatch(v13, v20, type metadata accessor for LapLengthUnitPicker);
    (*(v11 + 56))(v20, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  type metadata accessor for DistancePickerWatch();
  Bindable.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  v25 = *(v38 + 16);

  KeyPath = swift_getKeyPath();
  v27 = v34;
  *&v6[*(v34 + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DistancePickerViewModel();
  lazy protocol witness table accessor for type DistancePickerViewModel and conformance DistancePickerViewModel();
  Bindable<A>.init(wrappedValue:)();
  *&v6[*(v27 + 24)] = v25;
  outlined init with copy of LapLengthUnitPicker?(v20, v16);
  v28 = v36;
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v6, v36, type metadata accessor for DistanceUnitPicker);
  v29 = v35;
  outlined init with copy of LapLengthUnitPicker?(v16, v35);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19LapLengthUnitPickerVSg_AA08DistanceeF0VtMd);
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v28, v29 + *(v30 + 48), type metadata accessor for DistanceUnitPicker);
  outlined destroy of DistanceUnitPicker(v6);
  _s7SwiftUI4FontV6DesignOSgWOhTm_13(v20, &_s9WorkoutUI19LapLengthUnitPickerVSgMd);
  outlined destroy of DistanceUnitPicker(v28);
  return _s7SwiftUI4FontV6DesignOSgWOhTm_13(v16, &_s9WorkoutUI19LapLengthUnitPickerVSgMd);
}

uint64_t closure #2 in closure #1 in DistancePickerWatch.body.getter()
{
  type metadata accessor for DistancePickerWatch();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  DistancePickerViewModel.updateDistanceGoal()();
}

uint64_t protocol witness for View.body.getter in conformance DistancePickerWatch@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  _s9WorkoutUI19DistancePickerWatchVWOcTm_0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DistancePickerWatch);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of DistancePickerWatch(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DistancePickerWatch);
  *a2 = closure #1 in DistancePickerWatch.body.getterpartial apply;
  a2[1] = v7;
  return result;
}

void type metadata completion function for DistancePickerWatch()
{
  type metadata accessor for FIUIWorkoutActivityType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bindable<DistancePickerViewModel>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<Bool>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t partial apply for closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DistancePickerWatch() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in DistancePickerWatch.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA6HStackVyAGyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAV_AA012_ConditionalD0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AGyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGA12_GA15_yAA0T9DirectionOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA6HStackVyAGyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AGyAV_AA012_ConditionalD0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AGyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGA12_GMd);
    lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6HStackVyAEyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AEyAV_AA012_ConditionalG0VyAKyAMSiAOySnySiGSiAWGGA2_GtGSgtGGAA16_FlexFrameLayoutVGAA01_sT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_ArAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyArAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAVG_07WorkoutB015UnitButtonStyleVQo__AEyA40_013LapLengthUnitI0VSg_A40_012DistanceUnitI0VtGQo_tGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in DistancePickerWatch.body.getter()
{
  type metadata accessor for DistancePickerWatch();

  return closure #2 in closure #1 in closure #1 in DistancePickerWatch.body.getter();
}

uint64_t objectdestroyTm_87()
{
  v1 = (type metadata accessor for DistancePickerWatch() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in closure #1 in closure #1 in DistancePickerWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DistancePickerWatch() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #4 in closure #1 in closure #1 in DistancePickerWatch.body.getter(v4, a1);
}

uint64_t outlined init with copy of LapLengthUnitPicker?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19LapLengthUnitPickerVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9WorkoutUI19DistancePickerWatchVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DistanceUnitPicker(uint64_t a1)
{
  v2 = type metadata accessor for DistanceUnitPicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_13(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of DistancePickerWatch(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GACyxq_q0_GAae2aER0_rlWlTm_0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>, _FlexFrameLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of HStack<TupleView<(Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, TupleView<(Text, _ConditionalContent<Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>>)>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutConfigurationPresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationPresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance WorkoutConfigurationCapabilities(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance WorkoutConfigurationCapabilities@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance WorkoutConfigurationCapabilities@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutConfigurationCapabilities@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance WorkoutConfigurationCapabilities@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationCapabilities and conformance WorkoutConfigurationCapabilities);
  }

  return result;
}

uint64_t FIUIWorkoutActivityType.symbolNameForDisclaimer.getter()
{
  v1 = [v0 symbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id @objc FIUIWorkoutActivityType.symbolName.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.symbolName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = MEMORY[0x20F30BAD0](v2, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t FIUIWorkoutActivityType.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = [v1 effectiveTypeIdentifier] - 1;
  result = 0;
  switch(v10)
  {
    case 0uLL:
    case 0x10uLL:
      return 0xD000000000000018;
    case 1uLL:
      return 0x612E657275676966;
    case 2uLL:
    case 0x3BuLL:
    case 0x53uLL:
      return 0xD00000000000001ALL;
    case 3uLL:
    case 0x35uLL:
    case 0x37uLL:
      return 0xD000000000000010;
    case 4uLL:
    case 0x39uLL:
      return 0x622E657275676966;
    case 5uLL:
    case 0xFuLL:
    case 0x15uLL:
    case 0x32uLL:
    case 0x40uLL:
    case 0x4EuLL:
      return 0xD000000000000011;
    case 6uLL:
      return 0x622E657275676966;
    case 7uLL:
      return 0x622E657275676966;
    case 8uLL:
    case 9uLL:
    case 0x4FuLL:
      return 0x632E657275676966;
    case 0xAuLL:
      return 0xD000000000000015;
    case 0xBuLL:
      return 0x632E657275676966;
    case 0xCuLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0xD000000000000014;
      }

    case 0xDuLL:
    case 0xEuLL:
    case 0x4CuLL:
      return 0x642E657275676966;
    case 0x11uLL:
    case 0x12uLL:
      return 0x662E657275676966;
    case 0x13uLL:
      return 0xD000000000000022;
    case 0x14uLL:
      return 0x672E657275676966;
    case 0x16uLL:
    case 0x17uLL:
      return 0x682E657275676966;
    case 0x18uLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000011;
      }

      else
      {
        return 0xD000000000000013;
      }

    case 0x19uLL:
      return 0x682E657275676966;
    case 0x1AuLL:
      return 0x6C2E657275676966;
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x2EuLL:
    case 0x42uLL:
    case 0x48uLL:
    case 0x49uLL:
      return 0xD000000000000013;
    case 0x1CuLL:
      return 0xD000000000000014;
    case 0x1EuLL:
      return 0x72632E322E72616FLL;
    case 0x1FuLL:
    case 0x41uLL:
      return 0x702E657275676966;
    case 0x20uLL:
      return 0x722E657275676966;
    case 0x21uLL:
    case 0x3DuLL:
    case 0x4AuLL:
    case 0x4DuLL:
      return 0xD000000000000012;
    case 0x22uLL:
    case 0x28uLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000014;
      }

      else
      {
        return 0xD000000000000015;
      }

    case 0x23uLL:
    case 0x45uLL:
      return 0x722E657275676966;
    case 0x24uLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000014;
      }

      else
      {
        return 0x722E657275676966;
      }

    case 0x25uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2CuLL:
    case 0x43uLL:
      return 0x732E657275676966;
    case 0x26uLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0x732E657275676966;
      }

    case 0x27uLL:
      return 0x6B616C66776F6E73;
    case 0x2BuLL:
      return 0xD000000000000014;
    case 0x2DuLL:
      v15 = [v1 swimmingLocationType];
      if (v15 < 2)
      {
        return 0xD000000000000010;
      }

      if (v15 == 2)
      {
        return 0xD000000000000016;
      }

      static WOLog.app.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20C66F000, v16, v17, "Unknown default swimming location type, no sf symbol", v19, 2u);
        MEMORY[0x20F30E080](v19, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      return 0;
    case 0x2FuLL:
    case 0x47uLL:
      return 0x742E657275676966;
    case 0x30uLL:
    case 0x3CuLL:
      return 0xD000000000000016;
    case 0x31uLL:
      return 0xD000000000000023;
    case 0x33uLL:
      if ([v1 isIndoor])
      {
        return 0xD000000000000015;
      }

      else
      {
        return 0x772E657275676966;
      }

    case 0x34uLL:
      return 0xD000000000000014;
    case 0x36uLL:
      return 0x61772E7265746177;
    case 0x38uLL:
      return 0x792E657275676966;
    case 0x3AuLL:
      return 0xD000000000000014;
    case 0x3EuLL:
      return 0xD000000000000025;
    case 0x3FuLL:
      return 0x6A2E657275676966;
    case 0x44uLL:
      return 0xD000000000000014;
    case 0x46uLL:
      return 0xD000000000000017;
    case 0x4BuLL:
      return 0x746E6F63656D6167;
    case 0x51uLL:
      return result;
    case 0x52uLL:
      return 0x656C637269632E74;
    default:
      static WOLog.app.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20C66F000, v12, v13, "Unknown HKWorkoutType type for sf symbol", v14, 2u);
        MEMORY[0x20F30E080](v14, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
  }
}

uint64_t WorkoutNotificationTranscriptView.init(units:formattingManager:resetIdleTimerHandler:dismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *(a7 + 40) = a6;
  *(a7 + 48) = result;
  *(a7 + 56) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  return result;
}

uint64_t WorkoutNotificationTranscriptView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGGMd);
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v30 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19onScrollPhaseChangeyQryAA0eF0O_AFtcFQOyAA0eC0VyAA05TupleC0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGASyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGG_Qo_Md);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v30 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB00j16NotificationUnitH0V_ANtGG_ANtGGAA0H0PAAE19onScrollPhaseChangeyQryAA0nO0O_AWtcFQOyAA0nH0VyAIyAA7ForEachVySnySiGSiAA08ModifiedD0VyA2_yAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGA6_yAA4FontVSgGGSgG_AL26SessionExtraControlsButtonVtGG_Qo__GMd);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  v60 = *v1;
  v61 = v11;
  v62[0] = v1[2];
  *(v62 + 9) = *(v1 + 41);
  v64 = *(v1 + 56);
  v12 = *(v1 + 6);
  v63 = v12;
  if (v64 == 1)
  {
    if (v12 != 11)
    {
LABEL_3:
      MEMORY[0x28223BE20](v8);
      *(&v30 - 2) = &v60;
      static Axis.Set.vertical.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGALyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGMd);
      lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGALyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGMd);
      v13 = v31;
      ScrollView.init(_:showsIndicators:content:)();
      v14 = swift_allocObject();
      v15 = v61;
      v14[1] = v60;
      v14[2] = v15;
      v14[3] = v62[0];
      *(v14 + 57) = *(v62 + 9);
      outlined init with copy of WorkoutNotificationTranscriptView(&v60, v58);
      v16 = lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ScrollView<TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGGMd);
      v17 = v33;
      v18 = v36;
      View.onScrollPhaseChange(_:)();

      (*(v32 + 8))(v13, v18);
      v19 = v34;
      v20 = v37;
      (*(v34 + 16))(v5, v17, v37);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB00g16NotificationUnitE0V_AJtGG_AJtGGMd);
      lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB00g16NotificationUnitE0V_AJtGG_AJtGGMd);
      *&v58[0] = v18;
      *(&v58[0] + 1) = v16;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v19 + 8))(v17, v20);
    }
  }

  else
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_2(&v63, v58, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(&v63, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    v8 = (*(v7 + 8))(v10, v6);
    if (LOBYTE(v58[0]) != 11)
    {
      goto LABEL_3;
    }
  }

  v23 = static HorizontalAlignment.center.getter();
  v49 = 1;
  closure #1 in WorkoutNotificationTranscriptView.body.getter(&v60, &v40);
  v55 = v45;
  v56 = v46;
  v57[0] = v47[0];
  *(v57 + 9) = *(v47 + 9);
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v50 = v40;
  v51 = v41;
  v58[5] = v45;
  v58[6] = v46;
  v59[0] = v47[0];
  *(v59 + 9) = *(v47 + 9);
  v58[2] = v42;
  v58[3] = v43;
  v58[4] = v44;
  v58[0] = v40;
  v58[1] = v41;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_2(&v50, &v39, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB00f16NotificationUnitD0V_AHtGG_AHtGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(v58, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB00f16NotificationUnitD0V_AHtGG_AHtGMd);
  *(&v48[6] + 7) = v56;
  *(&v48[5] + 7) = v55;
  *(&v48[2] + 7) = v52;
  *(&v48[1] + 7) = v51;
  *(&v48[7] + 7) = v57[0];
  v48[8] = *(v57 + 9);
  *(&v48[3] + 7) = v53;
  *(&v48[4] + 7) = v54;
  *(v48 + 7) = v50;
  v24 = v48[4];
  *(v5 + 97) = v48[5];
  v25 = v48[7];
  *(v5 + 113) = v48[6];
  *(v5 + 129) = v25;
  *(v5 + 145) = v48[8];
  v26 = v48[0];
  *(v5 + 33) = v48[1];
  v27 = v48[3];
  *(v5 + 49) = v48[2];
  *(v5 + 65) = v27;
  *(v5 + 81) = v24;
  v28 = v49;
  *v5 = v23;
  *(v5 + 1) = 0;
  v5[16] = v28;
  *(v5 + 17) = v26;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB00g16NotificationUnitE0V_AJtGG_AJtGGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB00g16NotificationUnitE0V_AJtGG_AJtGGMd);
  v29 = lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ScrollView<TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGGMd);
  *&v40 = v36;
  *(&v40 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t closure #1 in WorkoutNotificationTranscriptView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = static VerticalAlignment.center.getter();
  LOBYTE(v35[0]) = 1;
  closure #1 in closure #1 in WorkoutNotificationTranscriptView.body.getter(a1, &v37);
  v31 = v39;
  v32[0] = v40[0];
  *(v32 + 9) = *(v40 + 9);
  v29 = v37;
  v30 = v38;
  v33[2] = v39;
  v34[0] = v40[0];
  *(v34 + 9) = *(v40 + 9);
  v33[0] = v37;
  v33[1] = v38;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_2(&v29, v43, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(v33, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGMd);
  *(&v28[1] + 7) = v30;
  *(&v28[2] + 7) = v31;
  *(&v28[3] + 7) = v32[0];
  v28[4] = *(v32 + 9);
  *(v28 + 7) = v29;
  HIDWORD(v25) = LOBYTE(v35[0]);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v50._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CBA3BE0;
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v50);

  (*(v5 + 104))(v7, *MEMORY[0x277D7DB28], v4);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  v12 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v13 = *(a1 + 8);
  v14 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v16 = v26;
  v35[0] = v26;
  v35[1] = 0;
  v17 = BYTE4(v25);
  v36[0] = BYTE4(v25);
  *&v36[1] = v28[0];
  *&v36[17] = v28[1];
  *&v36[65] = v28[4];
  *&v36[49] = v28[3];
  *&v36[33] = v28[2];
  v37 = v26;
  v38 = *v36;
  LOBYTE(v42) = HIBYTE(v28[4]);
  v40[1] = *&v36[48];
  v41 = *&v36[64];
  v39 = *&v36[16];
  v40[0] = *&v36[32];
  v27 = 0;
  v18 = *v36;
  *a2 = v26;
  *(a2 + 16) = v18;
  v19 = v39;
  v20 = v40[0];
  v21 = v41;
  v22 = v42;
  *(a2 + 64) = v40[1];
  *(a2 + 80) = v21;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 96) = v22;
  *(a2 + 104) = v12;
  *(a2 + 112) = v13;
  *(a2 + 120) = v14;
  *(a2 + 128) = KeyPath;
  *(a2 + 136) = 0;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_2(v35, v43, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGGMd);

  v23 = v13;

  outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

  outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
  v43[0] = v16;
  v43[1] = 0;
  v44 = v17;
  v46 = v28[1];
  v47 = v28[2];
  v48 = v28[3];
  v49 = v28[4];
  v45 = v28[0];
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(v43, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGGMd);
}

uint64_t closure #1 in closure #1 in WorkoutNotificationTranscriptView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277D7DB08];
  v23 = *(v5 + 104);
  v23(v8, v9, v4, v6);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  v25 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v10 = *(a1 + 8);
  v11 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CBA3C10;
  v14._countAndFlagsBits = 0xD00000000000002CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v28);

  (v23)(v8, *MEMORY[0x277D7DB28], v4);
  swift_allocObject();
  v16 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v17 = static Color.primary.getter();
  v18 = swift_getKeyPath();
  v27 = 0;
  v26 = 0;
  v19 = KeyPath;
  *a2 = v25;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v10;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = 0;

  v20 = v10;

  outlined copy of Environment<WorkoutViewStyle>.Content(v19, 0);

  v21 = v20;

  outlined copy of Environment<WorkoutViewStyle>.Content(v18, 0);

  outlined consume of Environment<WorkoutViewStyle>.Content(v18, 0);

  return outlined consume of Environment<WorkoutViewStyle>.Content(v19, 0);
}

uint64_t closure #2 in WorkoutNotificationTranscriptView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA15ModifiedContentVyAFyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAJyAA4FontVSgGGSgGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v43 - v13;
  v14 = *a1;
  v15 = *a1 >> 62;
  v48 = v16;
  v47 = a2;
  v46 = v5;
  v49 = v11;
  if (!v15)
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  v17 = __CocoaSet.count.getter();
  if ((v17 & 0x8000000000000000) == 0)
  {
LABEL_3:
    v52 = 0;
    v53 = v17;
    swift_getKeyPath();
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    v18[1] = *a1;
    v18[2] = v19;
    v18[3] = *(a1 + 32);
    *(v18 + 57) = *(a1 + 41);
    outlined init with copy of WorkoutNotificationTranscriptView(a1, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGSgMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?();
    ForEach<>.init(_:id:content:)();
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v67._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x5F5353494D534944;
  v21._object = 0xEE004E4F54545542;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v67._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v67);
  countAndFlagsBits = v24._countAndFlagsBits;
  object = v24._object;

  v43 = static Color.white.getter();
  v25 = v46;
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v4, static SessionViewColors.buttonBackground);
  (*(v25 + 16))(v7, v26, v4);
  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  v28[1] = *a1;
  v28[2] = v29;
  v28[3] = *(a1 + 32);
  *(v28 + 57) = *(a1 + 41);
  v30 = v9;
  v31 = *(v9 + 16);
  v32 = v49;
  v33 = v48;
  v31(v49, v50, v48);
  v34 = v47;
  v31(v47, v32, v33);
  v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA15ModifiedContentVyAFyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAJyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtMd) + 48)];
  v56 = 0uLL;
  v36 = countAndFlagsBits;
  v37 = object;
  *&v57 = countAndFlagsBits;
  *(&v57 + 1) = object;
  v38 = v43;
  *&v58 = v43;
  *(&v58 + 1) = v27;
  LOWORD(v59) = 0;
  *(&v59 + 2) = v54;
  WORD3(v59) = v55;
  *(&v59 + 1) = partial apply for closure #2 in closure #2 in WorkoutNotificationTranscriptView.body.getter;
  v60 = v28;
  *(v35 + 8) = v28;
  v39 = v57;
  *v35 = v56;
  *(v35 + 1) = v39;
  v40 = v59;
  *(v35 + 2) = v58;
  *(v35 + 3) = v40;
  outlined init with copy of WorkoutNotificationTranscriptView(a1, v51);
  outlined init with copy of SessionExtraControlsButton(&v56, v51);
  v41 = *(v30 + 8);
  v41(v50, v33);
  v61[0] = 0;
  v61[1] = 0;
  v61[2] = v36;
  v61[3] = v37;
  v61[4] = v38;
  v61[5] = v27;
  v62 = 0;
  v63 = v54;
  v64 = v55;
  v65 = partial apply for closure #2 in closure #2 in WorkoutNotificationTranscriptView.body.getter;
  v66 = v28;
  outlined destroy of SessionExtraControlsButton(v61);
  return (v41)(v49, v33);
}

unint64_t closure #1 in closure #2 in WorkoutNotificationTranscriptView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Font.Leading();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  v19 = *a2;
  v20 = (*a2 & 0xC000000000000001) == 0;
  v40 = v6;
  if (v20)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return result;
  }

  MEMORY[0x20F30C990](result, v15);
LABEL_6:
  v21 = dispatch thunk of WorkoutNotificationUnit.stringLiteral.getter();
  if (v22)
  {
    v41 = v21;
    v42 = v22;
    lazy protocol witness table accessor for type String and conformance String();
    v23 = Text.init<A>(_:)();
    v37 = v24;
    v38 = v23;
    v39 = v25;
    v36 = v26;
    KeyPath = swift_getKeyPath();
    (*(v14 + 104))(v17, *MEMORY[0x277CE0A70], v13);
    v28 = type metadata accessor for Font.Design();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    static Font.Weight.medium.getter();
    static Font.system(_:design:weight:)();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(v12, &_s7SwiftUI4FontV6DesignOSgMd);
    (*(v14 + 8))(v17, v13);
    v29 = v40;
    (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v40);
    v30 = Font.leading(_:)();

    (*(v7 + 8))(v9, v29);
    result = swift_getKeyPath();
    v32 = v36;
    v31 = v37;
    v33 = v38;
    LOBYTE(v41) = v39 & 1;
    v43 = 1;
    v34 = v39 & 1;
    v35 = 1;
  }

  else
  {

    v33 = 0;
    v31 = 0;
    v32 = 0;
    KeyPath = 0;
    result = 0;
    v30 = 0;
    v35 = 0;
    v34 = 0;
  }

  *a3 = v33;
  a3[1] = v31;
  a3[2] = v34;
  a3[3] = v32;
  a3[4] = KeyPath;
  a3[5] = 0;
  a3[6] = v35;
  a3[7] = result;
  a3[8] = v30;
  return result;
}

uint64_t partial apply for closure #3 in WorkoutNotificationTranscriptView.body.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationTranscriptView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationTranscriptView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>>, <<opaque return type of View.onScrollPhaseChange(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>>, <<opaque return type of View.onScrollPhaseChange(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>>, <<opaque return type of View.onScrollPhaseChange(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy07WorkoutB00i16NotificationUnitG0V_ALtGG_ALtGGAA0G0PAAE19onScrollPhaseChangeyQryAA0mN0O_AUtcFQOyAA0mG0VyAGyAA7ForEachVySnySiGSiAA08ModifiedD0VyA0_yAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGA4_yAA4FontVSgGGSgG_AJ26SessionExtraControlsButtonVtGG_Qo_GMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB00g16NotificationUnitE0V_AJtGG_AJtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ScrollView<TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA7ForEachVySnySiGSiAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGSgG_07WorkoutB026SessionExtraControlsButtonVtGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>>, WorkoutNotificationUnitView)>>, <<opaque return type of View.onScrollPhaseChange(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>?>, SessionExtraControlsButton)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_88()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  outlined consume of Environment<WorkoutViewStyle>.Content(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #2 in WorkoutNotificationTranscriptView.body.getter()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t SeymourAvailability.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SeymourAvailability and conformance SeymourAvailability()
{
  result = lazy protocol witness table cache variable for type SeymourAvailability and conformance SeymourAvailability;
  if (!lazy protocol witness table cache variable for type SeymourAvailability and conformance SeymourAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeymourAvailability and conformance SeymourAvailability);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SeymourAvailability()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SeymourAvailability()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance SeymourAvailability@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

void SwimmingDistancePickerPhone.valuesChanged()()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v7 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo12NSUnitLengthCGMd);
  State.wrappedValue.getter();
  v2 = NSUnitLength.hkUnit.getter();
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:{*&v8, v7}];

  v4 = *(v1 + 56);

  v5 = v4;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo10HKQuantityCGMd);
  Binding.wrappedValue.setter();
}

uint64_t SwimmingDistancePickerPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyARyAA0M0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_GA1_tGG_AA08BorderedmK0VQo__Qo__AeAE0E6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyARyALyAeAE06pickerK0yQrqd__AA06PickerK0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAN_SdQo_GG_AA011WheelPickerK0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAeAEA8_A9_A10__Qrqd___SbyyctSQRd__lFQOyAeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAeAEA11_yQrqd__AAA12_Rd__lFQOyA14_yA16_So12NSUnitLengthCA18_ySayA45_GA45_AeAEA20__A21_Qrqd___SbtSHRd__lFQOyAN_A45_Qo_GG_A26_Qo_A31_G_Qo__A45_Qo_SgtGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyARyAA0M0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_GA1_tGG_AA08BorderedmK0VQo__Qo__AeAE0E6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyARyALyAeAE06pickerK0yQrqd__AA06PickerK0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAN_SdQo_GG_AA011WheelPickerK0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAeAEA8_A9_A10__Qrqd___SbyyctSQRd__lFQOyAeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAeAEA11_yQrqd__AAA12_Rd__lFQOyA14_yA16_So12NSUnitLengthCA18_ySayA45_GA45_AeAEA20__A21_Qrqd___SbtSHRd__lFQOyAN_A45_Qo_GG_A26_Qo_A31_G_Qo__A45_Qo_SgtGMd);
  Section<>.init(content:)();
  v13 = *(v1 + 16);
  v14[0] = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  v3 = v11;
  v11 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v4 = v13;
  v5 = v14[0];
  v11 = *(v1 + 88);
  State.projectedValue.getter();
  v6 = v13;
  v7 = v14[0];
  v13 = v3;
  v14[0] = v12;
  *&v14[8] = v4;
  v14[24] = v5;
  v15 = v6;
  v16 = v7;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA6HStackVyAIyAA4TextV_AA6SpacerVACyACyAA0Q0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA3_GA5_tGG_AA08BorderedqO0VQo__Qo__AkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyARyAkAE06pickerO0yQrqd__AA06PickerO0Rd__lFQOyAA6PickerVyAGSdAA7ForEachVySaySdGSdAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAT_SdQo_GG_AA011WheelPickerO0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAkAEA12_A13_A14__Qrqd___SbyyctSQRd__lFQOyAkAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAkAEA15_yQrqd__AAA16_Rd__lFQOyA18_yAGSo12NSUnitLengthCA20_ySayA47_GA47_AkAEA22__A23_Qrqd___SbtSHRd__lFQOyAT_A47_Qo_GG_A28_Qo_A33_G_Qo__A47_Qo_SgtGAGGA31_25PickerEditModeCoordinatorVGMd) + 36);
  *(v8 + 32) = *&v14[16];
  *(v8 + 48) = v6;
  *(v8 + 64) = v16;
  v9 = *v14;
  *v8 = v13;
  *(v8 + 16) = v9;
  outlined init with copy of PickerEditModeCoordinator(&v13, &v11);
}

uint64_t closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v86 = type metadata accessor for WheelPickerStyle();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v78 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSo12NSUnitLengthCAA7ForEachVySayAMGAmeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AMQo_GG_AA05WheelhG0VQo_07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAVGAvcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AVQo_GG_AA05WheelpO0VQo_07WorkoutB0012AdjustedListE16SeparatorLeadingVG_Qo_Md);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_SgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v78 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA05EmptyF0VSdAA7ForEachVySaySdGSdAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheeliH0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
  MEMORY[0x28223BE20](v78);
  v79 = (&v78 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v78 - v15;
  v16 = type metadata accessor for BorderedButtonStyle();
  v101 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAKyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATGAVtGGMd);
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAOyAA0G0VyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXGAZtGG_AA08BorderedgE0VQo_Md);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v23 = &v78 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyARyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_GA1_tGG_AA08BorderedlJ0VQo__Qo_Md);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = (&v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = (&v78 - v26);
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAOyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXGAZtGGMd);
  closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter(a1, &v21[*(v28 + 44)]);
  BorderedButtonStyle.init()();
  v29 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAKyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATGAVtGGMd);
  v30 = _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  View.buttonStyle<A>(_:)();
  v101[1](v18, v16);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v21, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAKyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATGAVtGGMd);
  v31 = swift_allocObject();
  v32 = *(a1 + 80);
  *(v31 + 80) = *(a1 + 64);
  *(v31 + 96) = v32;
  *(v31 + 112) = *(a1 + 96);
  v33 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v33;
  v34 = *(a1 + 48);
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = v34;
  outlined init with copy of SwimmingDistancePickerPhone(a1, v103);
  *v103 = v19;
  *&v103[8] = v16;
  *&v103[16] = v29;
  v104 = v30;
  swift_getOpaqueTypeConformance2();
  v101 = v27;
  v35 = v91;
  View.onTapGesture(count:perform:)();

  v36 = v23;
  v37 = v100;
  (*(v92 + 8))(v36, v35);
  *v103 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v38 = 1;
  if (v105 == 1)
  {
    v39 = static VerticalAlignment.center.getter();
    v40 = v79;
    *v79 = v39;
    *(v40 + 8) = 0;
    *(v40 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA0D0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyD0VSdAA7ForEachVySaySdGSdAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheeljI0VQo_GMd);
    closure #3 in closure #1 in SwimmingDistancePickerPhone.body.getter(a1);
    *(v40 + *(v78 + 36)) = 0;
    *v103 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
    State.wrappedValue.getter();
    v41 = swift_allocObject();
    v42 = *(a1 + 80);
    *(v41 + 80) = *(a1 + 64);
    *(v41 + 96) = v42;
    *(v41 + 112) = *(a1 + 96);
    v43 = *(a1 + 16);
    *(v41 + 16) = *a1;
    *(v41 + 32) = v43;
    v44 = *(a1 + 48);
    *(v41 + 48) = *(a1 + 32);
    *(v41 + 64) = v44;
    outlined init with copy of SwimmingDistancePickerPhone(a1, v103);
    lazy protocol witness table accessor for type ModifiedContent<HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0>, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>();
    View.onChange<A>(of:initial:_:)();

    outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v40, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA05EmptyF0VSdAA7ForEachVySaySdGSdAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheeliH0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    v38 = 0;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_Md);
  v46 = 1;
  (*(*(v45 - 8) + 56))(v37, v38, 1, v45);
  *v103 = *(a1 + 88);
  State.wrappedValue.getter();
  v47 = v99;
  if (v105 == 1)
  {
    v105 = *(a1 + 56);
    v102 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo12NSUnitLengthCGMd);
    v48 = State.projectedValue.getter();
    *&v49 = MEMORY[0x28223BE20](v48);
    *v103 = v50;
    *&v103[8] = v49;
    v92 = type metadata accessor for NSUnitLength();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AEQo_GMd);
    _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject, type metadata accessor for NSUnitLength);
    lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v51 = v80;
    Picker.init(selection:label:content:)();
    v52 = v84;
    WheelPickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, NSUnitLength, ForEach<[NSUnitLength], NSUnitLength, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
    v53 = v81;
    v54 = v83;
    v55 = v86;
    View.pickerStyle<A>(_:)();
    (*(v85 + 8))(v52, v55);
    (*(v82 + 8))(v51, v54);
    v56 = v87;
    *(v53 + *(v87 + 36)) = 0;
    static Edge.Set.top.getter();
    v57 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>();
    v58 = v88;
    View.listRowInsets(_:_:)();
    outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v53, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSo12NSUnitLengthCAA7ForEachVySayAMGAmeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AMQo_GG_AA05WheelhG0VQo_07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    *v103 = v105;
    State.wrappedValue.getter();
    v59 = v102;
    v60 = swift_allocObject();
    v61 = *(a1 + 80);
    *(v60 + 80) = *(a1 + 64);
    *(v60 + 96) = v61;
    *(v60 + 112) = *(a1 + 96);
    v62 = *(a1 + 16);
    *(v60 + 16) = *a1;
    *(v60 + 32) = v62;
    v63 = *(a1 + 48);
    *(v60 + 48) = *(a1 + 32);
    *(v60 + 64) = v63;
    outlined init with copy of SwimmingDistancePickerPhone(a1, v103);
    *v103 = v56;
    *&v103[8] = v57;
    v47 = v99;
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject, type metadata accessor for NSUnitLength);
    v64 = v90;
    View.onChange<A>(of:initial:_:)();

    (*(v89 + 8))(v58, v64);
    v46 = 0;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_Md);
  (*(*(v65 - 8) + 56))(v47, v46, 1, v65);
  v66 = v94;
  v67 = v47;
  v68 = *(v94 + 16);
  v69 = v93;
  v70 = v95;
  v68(v93, v101, v95);
  v71 = v37;
  v72 = v96;
  outlined init with copy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v71, v96, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgMd);
  v73 = v97;
  outlined init with copy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v47, v97, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_SgMd);
  v74 = v98;
  v68(v98, v69, v70);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyARyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_GA1_tGG_AA08BorderedlJ0VQo__Qo__AcAE0D6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyARyAJyAcAE06pickerJ0yQrqd__AA06PickerJ0Rd__lFQOyAA6PickerVyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAN_SdQo_GG_AA011WheelPickerJ0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAcAEA8_A9_A10__Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAcAEA11_yQrqd__AAA12_Rd__lFQOyA14_yA16_So12NSUnitLengthCA18_ySayA45_GA45_AcAEA20__A21_Qrqd___SbtSHRd__lFQOyAN_A45_Qo_GG_A26_Qo_A31_G_Qo__A45_Qo_SgtMd);
  outlined init with copy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v72, &v74[*(v75 + 48)], &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgMd);
  outlined init with copy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v73, &v74[*(v75 + 64)], &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_SgMd);
  outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v67, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_SgMd);
  outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v100, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgMd);
  v76 = *(v66 + 8);
  v76(v101, v70);
  outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v73, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerS0Rd__lFQOyAA0T0VyAA05EmptyC0VSo12NSUnitLengthCAA7ForEachVySayAYGAycAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AYQo_GG_AA05WheeltS0VQo_07WorkoutB0012AdjustedListI16SeparatorLeadingVG_Qo__AYQo_SgMd);
  outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(v72, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6HStackVyAcAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyC0VSdAA7ForEachVySaySdGSdAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelmL0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgMd);
  return (v76)(v69, v70);
}

uint64_t closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v61[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v61[-v5];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v76);
  v67 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v61[-v9];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  MEMORY[0x28223BE20](v75);
  v73 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v72 = &v61[-v13];
  MEMORY[0x28223BE20](v14);
  v66 = &v61[-v15];
  MEMORY[0x28223BE20](v16);
  v71 = &v61[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v61[-v19];
  MEMORY[0x28223BE20](v21);
  v77 = &v61[-v22];
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = WorkoutUIBundle.super.isa;
  v65 = Text.init(_:tableName:bundle:comment:)();
  v63 = v24;
  v62 = v25;
  v74 = v26;
  v27 = swift_allocObject();
  *(v27 + 112) = *(a1 + 96);
  v28 = *(a1 + 80);
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = v28;
  v29 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v29;
  v30 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v30;
  MEMORY[0x28223BE20](v27);
  outlined init with copy of SwimmingDistancePickerPhone(a1, v79);
  Button.init(action:label:)();
  v79[0] = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v78 == 1)
  {
    v31 = *(*(a1 + 8) + 24);
  }

  else
  {
    v31 = static Color.white.getter();
  }

  v32 = v69;
  KeyPath = swift_getKeyPath();
  v34 = *(v32 + 32);
  v35 = v6;
  v36 = v70;
  v34(v10, v35, v70);
  v37 = &v10[*(v76 + 36)];
  *v37 = KeyPath;
  v37[1] = v31;
  v38 = swift_getKeyPath();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGWObTm_0(v10, v20, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v39 = &v20[*(v75 + 36)];
  *v39 = v38;
  v39[1] = 0;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGWObTm_0(v20, v77, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  v40 = swift_allocObject();
  *(v40 + 112) = *(a1 + 96);
  v41 = *(a1 + 80);
  *(v40 + 80) = *(a1 + 64);
  *(v40 + 96) = v41;
  v42 = *(a1 + 16);
  *(v40 + 16) = *a1;
  *(v40 + 32) = v42;
  v43 = *(a1 + 48);
  *(v40 + 48) = *(a1 + 32);
  *(v40 + 64) = v43;
  MEMORY[0x28223BE20](v40);
  outlined init with copy of SwimmingDistancePickerPhone(a1, v79);
  v44 = v68;
  Button.init(action:label:)();
  v79[0] = *(a1 + 88);
  State.wrappedValue.getter();
  if (v78 == 1)
  {
    v45 = *(*(a1 + 8) + 24);
  }

  else
  {
    v45 = static Color.white.getter();
  }

  v46 = swift_getKeyPath();
  v47 = v67;
  v34(v67, v44, v36);
  v48 = &v47[*(v76 + 36)];
  *v48 = v46;
  v48[1] = v45;
  v49 = swift_getKeyPath();
  v50 = v47;
  v51 = v66;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGWObTm_0(v50, v66, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v52 = &v51[*(v75 + 36)];
  *v52 = v49;
  v52[1] = 0;
  v53 = v71;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGWObTm_0(v51, v71, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  v54 = v72;
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(v77, v72, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  v55 = v73;
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(v53, v73, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  v56 = v65;
  v57 = v64;
  v58 = v63;
  *v64 = v65;
  v57[1] = v58;
  LOBYTE(v51) = v62 & 1;
  *(v57 + 16) = v62 & 1;
  v57[3] = v74;
  v57[4] = 0;
  *(v57 + 40) = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAGyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAPGARtMd);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(v54, v57 + *(v59 + 64), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(v55, v57 + *(v59 + 80), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  outlined copy of Text.Storage(v56, v58, v51);

  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v53, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v77, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v55, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v54, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANGMd);
  outlined consume of Text.Storage(v56, v58, v51);
}

uint64_t closure #1 in closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2[1] = *(a1 + 72);
  v4 = *(&v3 + 1);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #2 in closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  specialized static PickerFormatters.formattedSwimmingNumber(_:formattingManager:)(v6);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2[1] = *(a1 + 88);
  v4 = *(&v3 + 1);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #4 in closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo12NSUnitLengthCGMd);
  State.wrappedValue.getter();
  NSUnitLength.localizedName(formattingManager:)(*(v3 + 16));

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in SwimmingDistancePickerPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #2 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2[1] = *(a1 + 72);
  v4 = *(&v3 + 1);
  _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #3 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WheelPickerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  v13 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.projectedValue.getter();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd);
  lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  WheelPickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGMd);
  View.pickerStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in closure #3 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  v7[13] = *(*(a1 + 8) + 32);
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;

  outlined init with copy of SwimmingDistancePickerPhone(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_Md);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd);
  v7[0] = MEMORY[0x277CE0BD8];
  v7[1] = MEMORY[0x277D839F8];
  v7[2] = MEMORY[0x277CE0BC8];
  v7[3] = MEMORY[0x277D83A18];
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized static PickerFormatters.formattedSwimmingNumber(_:formattingManager:)(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #5 in closure #1 in SwimmingDistancePickerPhone.body.getter(uint64_t a1)
{
  if (one-time initialization token for allowedLapUnits != -1)
  {
    swift_once();
  }

  v9[13] = static SwimmingDistancePickerViewModel.allowedLapUnits;
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;

  outlined init with copy of SwimmingDistancePickerPhone(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_So12NSUnitLengthCQo_Md);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd);
  v6 = _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject, type metadata accessor for NSUnitLength);
  v7 = type metadata accessor for NSUnitLength();
  v9[0] = MEMORY[0x277CE0BD8];
  v9[1] = v7;
  v9[2] = MEMORY[0x277CE0BC8];
  v9[3] = v6;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

id closure #1 in closure #5 in closure #1 in SwimmingDistancePickerPhone.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  NSUnitLength.localizedName(formattingManager:)(*(*(a2 + 8) + 16));
  lazy protocol witness table accessor for type String and conformance String();
  *a3 = Text.init<A>(_:)();
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 & 1;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = 1;

  return v8;
}

uint64_t specialized SwimmingDistancePickerPhone.init(viewModel:editMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  State.init(wrappedValue:)();
  v7 = v26;
  v8 = v27;
  LOBYTE(v25) = 0;
  State.init(wrappedValue:)();
  v9 = v26;
  v10 = v27;
  type metadata accessor for SwimmingDistancePickerViewModel();
  _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SwimmingDistancePickerViewModel and conformance SwimmingDistancePickerViewModel, type metadata accessor for SwimmingDistancePickerViewModel);

  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo10HKQuantityCGMd);
  MEMORY[0x20F30B100](&v25);
  v15 = v25;
  [v25 _value];
  v17 = v16;

  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  MEMORY[0x20F30B100](&v25, v14);
  v18 = v25;
  v19 = [v25 _unit];

  v20 = HKUnit.unitLength.getter();

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = v17;
  *(a5 + 48) = 0;
  *(a5 + 56) = v20;
  *(a5 + 64) = 0;
  *(a5 + 72) = v7;
  *(a5 + 80) = v8;
  *(a5 + 88) = v9;
  *(a5 + 96) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for SwimmingDistancePickerPhone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for SwimmingDistancePickerPhone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSo12NSUnitLengthCAA7ForEachVySayAMGAmeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AMQo_GG_AA05WheelhG0VQo_07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
    type metadata accessor for WheelPickerStyle();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, NSUnitLength, ForEach<[NSUnitLength], NSUnitLength, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AdjustedListRowSeparatorLeading and conformance AdjustedListRowSeparatorLeading();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSo12NSUnitLengthCAA05TupleE0VyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AMQo__ATtGG_AA05WheelhG0VQo_07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA05TupleE0VyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo__APtGGMd);
    type metadata accessor for WheelPickerStyle();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, NSUnitLength, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSo12NSUnitLengthCAA05TupleE0VyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo__APtGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AdjustedListRowSeparatorLeading and conformance AdjustedListRowSeparatorLeading();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI31SwimmingDistancePickerViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0>, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0>, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0>, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA05EmptyF0VSdAA7ForEachVySaySdGSdAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheeliH0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerF0Rd__lFQOyAA0G0VyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GG_AA05WheelgF0VQo_GMd);
    lazy protocol witness table accessor for type AdjustedListRowSeparatorLeading and conformance AdjustedListRowSeparatorLeading();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<<<opaque return type of View.pickerStyle<A>(_:)>>.0>, AdjustedListRowSeparatorLeading> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_89()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI11AnyLocationCySbGSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(Text, Spacer, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView>, PickerEditModeCoordinator> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView>, PickerEditModeCoordinator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView>, PickerEditModeCoordinator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA6HStackVyAIyAA4TextV_AA6SpacerVACyACyAA0Q0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA3_GA5_tGG_AA08BorderedqO0VQo__Qo__AkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyARyAkAE06pickerO0yQrqd__AA06PickerO0Rd__lFQOyAA6PickerVyAGSdAA7ForEachVySaySdGSdAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAT_SdQo_GG_AA011WheelPickerO0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAkAEA12_A13_A14__Qrqd___SbyyctSQRd__lFQOyAkAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACyAkAEA15_yQrqd__AAA16_Rd__lFQOyA18_yAGSo12NSUnitLengthCA20_ySayA47_GA47_AkAEA22__A23_Qrqd___SbtSHRd__lFQOyAT_A47_Qo_GG_A28_Qo_A33_G_Qo__A47_Qo_SgtGAGGA31_25PickerEditModeCoordinatorVGMd);
    lazy protocol witness table accessor for type Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>();
    lazy protocol witness table accessor for type PickerEditModeCoordinator and conformance PickerEditModeCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView>, PickerEditModeCoordinator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAGyAA4TextV_AA6SpacerVAA15ModifiedContentVyAVyAA0O0VyARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA3_GA5_tGG_AA08BorderedoM0VQo__Qo__AiAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAVyAPyAiAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA6PickerVyAESdAA7ForEachVySaySdGSdAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAR_SdQo_GG_AA011WheelPickerM0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAiAEA12_A13_A14__Qrqd___SbyyctSQRd__lFQOyAiAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAVyAiAEA15_yQrqd__AAA16_Rd__lFQOyA18_yAESo12NSUnitLengthCA20_ySayA47_GA47_AiAEA22__A23_Qrqd___SbtSHRd__lFQOyAR_A47_Qo_GG_A28_Qo_A33_G_Qo__A47_Qo_SgtGAEGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyARyAA0M0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_GA1_tGG_AA08BorderedmK0VQo__Qo__AeAE0E6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyARyALyAeAE06pickerK0yQrqd__AA06PickerK0Rd__lFQOyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAN_SdQo_GG_AA011WheelPickerK0VQo_G07WorkoutB031AdjustedListRowSeparatorLeadingVG_SdQo_SgAeAEA8_A9_A10__Qrqd___SbyyctSQRd__lFQOyAeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyARyAeAEA11_yQrqd__AAA12_Rd__lFQOyA14_yA16_So12NSUnitLengthCA18_ySayA45_GA45_AeAEA20__A21_Qrqd___SbtSHRd__lFQOyAN_A45_Qo_GG_A26_Qo_A31_G_Qo__A45_Qo_SgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t WorkoutFigure.init(activityType:useSmallerIcon:color:animating:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WorkoutFigure.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v36);
  v3 = &v33 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy07WorkoutB008AnimatedG5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentL0VGAGyAH0G9TypeImageVAUG_GMd);
  MEMORY[0x28223BE20](v33);
  v35 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - v8;
  v10 = *v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (*(v1 + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = 3;
  }

  v14 = FIUIWorkoutSupportsAnimatedIcon();
  v15 = v10;
  v16 = v15;
  if (v14)
  {
    AnimatedWorkoutGlyph.init(activityType:iconSize:animated:)(v15, v12, v7);
    v17 = v11;
    v18 = Color.init(uiColor:)();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGMd) + 36)] = v18;
    *&v7[*(v5 + 36)] = 257;
    v19 = [v16 localizedName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v40 = v20;
    v41 = v22;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    outlined destroy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(v7, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGMd);
    v23 = &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd;
    outlined init with copy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(v9, v35, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage);
    _ConditionalContent<>.init(storage:)();
    v24 = v9;
  }

  else
  {
    v25 = v11;
    v26 = Color.init(uiColor:)();
    v40 = v16;
    v41 = v13;
    v42 = v26;
    v27 = [v16 localizedName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v38 = v28;
    v39 = v30;
    lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    v31 = v40;

    v23 = &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd;
    outlined init with copy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(v3, v35, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage);
    _ConditionalContent<>.init(storage:)();
    v24 = v3;
  }

  return outlined destroy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(v24, v23);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type AnimatedWorkoutGlyph and conformance AnimatedWorkoutGlyph(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph and conformance AnimatedWorkoutGlyph, type metadata accessor for AnimatedWorkoutGlyph);
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatedWorkoutGlyph and conformance AnimatedWorkoutGlyph(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type AnimatedWorkoutGlyph and conformance AnimatedWorkoutGlyph(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for WorkoutFigure(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for WorkoutFigure(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy07WorkoutB008AnimatedF5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentK0VGAEyAF0F9TypeImageVASGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB008AnimatedE5GlyphVAA24_ForegroundStyleModifierVyAA5ColorVGGAA16_FixedSizeLayoutVGAA023AccessibilityAttachmentJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _ForegroundStyleModifier<Color>>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, ModifiedContent<WorkoutTypeImage, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void closure #1 in static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)(uint64_t a1, void (*a2)(id))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  outlined init with copy of AppleExertionScale?(a1, &v11 - v5);
  v7 = type metadata accessor for AppleExertionScale();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AppleExertionScale?(v6);
    v9 = [objc_opt_self() appleEffortScoreUnit];
    v10 = [objc_opt_self() quantityWithUnit:v9 doubleValue:0.0];
  }

  else
  {
    v10 = AppleExertionScale.quantity.getter();
    (*(v8 + 8))(v6, v7);
  }

  a2(v10);
}

uint64_t static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:cancel:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a5;
  v14 = type metadata accessor for EffortNavigationView();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  if (a2)
  {
    v23 = a2;
    AppleExertionScale.init(quantity:)();
  }

  else
  {
    v24 = type metadata accessor for AppleExertionScale();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  }

  outlined init with copy of AppleExertionScale?(v22, v19);
  v25 = swift_allocObject();
  *(v25 + 16) = a8;
  *(v25 + 24) = a9;
  v26 = v14[11];
  *&v16[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *v16 = a1 & 1;
  outlined init with copy of AppleExertionScale?(v19, &v16[v14[5]]);
  v27 = &v16[v14[7]];
  *v27 = partial apply for closure #1 in static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:);
  v27[1] = v25;
  v28 = &v16[v14[8]];
  *v28 = a6;
  v28[1] = a7;
  v16[v14[6]] = v37 & 1;
  v16[v14[9]] = 0;

  Prompt = FIShouldShowTrackTrainingLoadPrompt();
  v30 = &v16[v14[10]];
  v38 = Prompt;
  State.init(wrappedValue:)();
  outlined destroy of AppleExertionScale?(v19);
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView();
  AnyView.init<A>(_:)();
  v32 = _makeUIHostingController(_:)();

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    outlined destroy of AppleExertionScale?(v22);
    return v34;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for EffortNavigationView();
  MEMORY[0x28223BE20](v12);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v34[-v19];
  if (a2)
  {
    v21 = a2;
    AppleExertionScale.init(quantity:)();
  }

  else
  {
    v22 = type metadata accessor for AppleExertionScale();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  outlined init with copy of AppleExertionScale?(v20, v17);
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v24 = v12[11];
  *&v14[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *v14 = a1 & 1;
  outlined init with copy of AppleExertionScale?(v17, &v14[v12[5]]);
  v25 = &v14[v12[7]];
  *v25 = closure #1 in static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)partial apply;
  v25[1] = v23;
  v26 = &v14[v12[8]];
  *v26 = closure #1 in static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:completion:);
  v26[1] = 0;
  v14[v12[6]] = a5 & 1;
  v14[v12[9]] = 0;

  Prompt = FIShouldShowTrackTrainingLoadPrompt();
  v28 = &v14[v12[10]];
  v34[15] = Prompt;
  State.init(wrappedValue:)();
  outlined destroy of AppleExertionScale?(v17);
  v29 = v35;
  *v28 = v34[16];
  *(v28 + 1) = v29;
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView();
  AnyView.init<A>(_:)();
  v30 = _makeUIHostingController(_:)();

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    outlined destroy of AppleExertionScale?(v20);
    return v32;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id EffortUIController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffortUIController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffortUIController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EffortUIController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffortUIController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)(char a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a3;
  v38 = a4;
  v14 = type metadata accessor for EffortNavigationView();
  MEMORY[0x28223BE20](v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v36[-v21];
  if (a2)
  {
    v23 = a2;
    AppleExertionScale.init(quantity:)();
  }

  else
  {
    v24 = type metadata accessor for AppleExertionScale();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  }

  outlined init with copy of AppleExertionScale?(v22, v19);
  v25 = swift_allocObject();
  *(v25 + 16) = a7;
  *(v25 + 24) = a8;
  v26 = v14[11];
  *&v16[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *v16 = a1 & 1;
  outlined init with copy of AppleExertionScale?(v19, &v16[v14[5]]);
  v27 = &v16[v14[7]];
  *v27 = closure #1 in static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)partial apply;
  v27[1] = v25;
  v28 = &v16[v14[8]];
  *v28 = a5;
  v28[1] = a6;
  v16[v14[6]] = v37 & 1;
  v16[v14[9]] = v38 & 1;

  Prompt = FIShouldShowTrackTrainingLoadPrompt();
  v30 = &v16[v14[10]];
  v39 = Prompt;
  State.init(wrappedValue:)();
  outlined destroy of AppleExertionScale?(v19);
  v31 = v41;
  *v30 = v40;
  *(v30 + 1) = v31;
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView();
  AnyView.init<A>(_:)();
  v32 = _makeUIHostingController(_:)();

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    outlined destroy of AppleExertionScale?(v22);
    return v34;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView()
{
  result = lazy protocol witness table cache variable for type EffortNavigationView and conformance EffortNavigationView;
  if (!lazy protocol witness table cache variable for type EffortNavigationView and conformance EffortNavigationView)
  {
    type metadata accessor for EffortNavigationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortNavigationView and conformance EffortNavigationView);
  }

  return result;
}

void TimeInZoneMetricView.init(elapsedTime:isStale:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  v11 = dbl_20CB8AC98[v10];
  v12 = objc_opt_self();
  v13 = [v12 mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = [v12 mainScreen];
  [v16 nativeScale];
  v18 = v17;

  if (v15 != v18)
  {
    v19 = [v12 mainScreen];
    [v19 scale];
    v21 = v20;

    v22 = [v12 mainScreen];
    [v22 nativeScale];
    v24 = v23;

    v11 = v11 * (v21 / v24 * 0.95);
  }

  *(a4 + 32) = v11;
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = a3 & 1;
}

uint64_t TimeInZoneMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v37[-v3];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6VStackVyAA9TupleViewVyAA6SpacerV_AGy07WorkoutB0015ElapsedTimeOrNomI0VAA13_OffsetEffectVGAGyAGyAGyAA4TextVAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAN0S3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGAGyAGyAA6HStackVyAKyAGyApA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGG_AGyAGyA0_A13_yAU4CaseOSgGGAA31AccessibilityAttachmentModifierVGtGGA10_GA17_G_GMd);
  MEMORY[0x28223BE20](v41);
  v43 = &v37[-v5];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd);
  MEMORY[0x28223BE20](v42);
  v7 = &v37[-v6];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 16);
  v68[0] = *v1;
  v68[1] = v12;
  v69 = *(v1 + 32);
  if (BYTE8(v12))
  {
    v13 = v12;
    v67 = v12;
  }

  else
  {
    outlined init with copy of TimeInZoneMetricView(v68, v66);
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TimeInZoneMetricView(v68);
    (*(v9 + 8))(v11, v8);
    v13 = v67;
  }

  if ((v13 - 5) > 1)
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNomD0VAA21_TraitWritingModifierVyAA0g8PriorityP3KeyVGG_AKyAKyAKyAKyAA4TextVAL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmenttqR0VyAV4CaseOSgGGAA023AccessibilityAttachmentR0VGtGGMd);
    closure #2 in TimeInZoneMetricView.body.getter(v68, &v4[*(v29 + 44)]);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGMd) + 36)] = 0;
    KeyPath = swift_getKeyPath();
    v31 = &v4[*(v2 + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd) + 28);
    v33 = *MEMORY[0x277CDFB78];
    v34 = type metadata accessor for LegibilityWeight();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v31 + v32, v33, v34);
    (*(v35 + 56))(v31 + v32, 0, 1, v34);
    *v31 = KeyPath;
    v27 = &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v4, v43, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v28 = v4;
  }

  else
  {
    v40 = static HorizontalAlignment.leading.getter();
    v56 = 0;
    closure #1 in TimeInZoneMetricView.body.getter(v68, &v46);
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v59 = v48;
    v60 = v49;
    v61 = v50;
    v62 = v51;
    v57 = v46;
    v58 = v47;
    v66[6] = v52;
    v66[7] = v53;
    v66[8] = v54;
    v66[2] = v48;
    v66[3] = v49;
    v66[4] = v50;
    v66[5] = v51;
    v66[0] = v46;
    v66[1] = v47;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(&v57, &v45, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNojD0VAA13_OffsetEffectVGAGyAGyAGyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGMd);
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v66, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNojD0VAA13_OffsetEffectVGAGyAGyAGyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGMd);
    *&v55[87] = v62;
    *&v55[103] = v63;
    *&v55[119] = v64;
    *&v55[135] = v65;
    *&v55[23] = v58;
    *&v55[39] = v59;
    *&v55[55] = v60;
    *&v55[71] = v61;
    *&v55[7] = v57;
    v38 = v56;
    v15 = swift_getKeyPath();
    v16 = &v7[*(v42 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd) + 28);
    v18 = *MEMORY[0x277CDFB78];
    v19 = type metadata accessor for LegibilityWeight();
    v20 = *(v19 - 8);
    v39 = v2;
    v21 = v20;
    (*(v20 + 104))(v16 + v17, v18, v19);
    (*(v21 + 56))(v16 + v17, 0, 1, v19);
    *v16 = v15;
    v22 = *&v55[112];
    *(v7 + 113) = *&v55[96];
    *(v7 + 129) = v22;
    *(v7 + 145) = *&v55[128];
    v23 = *&v55[48];
    *(v7 + 49) = *&v55[32];
    *(v7 + 65) = v23;
    v24 = *&v55[80];
    *(v7 + 81) = *&v55[64];
    *(v7 + 97) = v24;
    v25 = *&v55[16];
    *(v7 + 17) = *v55;
    *v7 = v40;
    *(v7 + 1) = 0;
    v7[16] = v38;
    v26 = *&v55[143];
    *(v7 + 33) = v25;
    *(v7 + 20) = v26;
    *(v7 + 21) = 0;
    v27 = &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v7, v43, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v28 = v7;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v28, v27);
}

uint64_t closure #2 in TimeInZoneMetricView.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
  v36[1] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA023AccessibilityAttachmentZ0VGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v38 = *a1;
  v37 = *(a1 + 8);
  v12 = *(a1 + 1);
  v46 = *a1;
  v47 = v12;
  v48 = a1[4];
  v44 = TimeInZoneMetricView.description.getter();
  v45 = v13;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  specialized View.metricDescriptionFont(multiline:)(1, v14, v15, v17 & 1, v19, v49);
  outlined consume of Text.Storage(v14, v16, v18 & 1);

  v20 = &v5[*(v3 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
  v22 = *MEMORY[0x277CE0B48];
  v23 = type metadata accessor for Text.Case();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v20 + v21, v22, v23);
  (*(v24 + 56))(v20 + v21, 0, 1, v23);
  *v20 = swift_getKeyPath();
  v25 = v49[1];
  *v5 = v49[0];
  *(v5 + 1) = v25;
  v5[80] = v50;
  v26 = v49[4];
  *(v5 + 3) = v49[3];
  *(v5 + 4) = v26;
  *(v5 + 2) = v49[2];
  v27 = *(a1 + 1);
  v46 = *a1;
  v47 = v27;
  v48 = a1[4];
  v44 = TimeInZoneMetricView.description.getter();
  v45 = v28;
  v42 = 10;
  v43 = 0xE100000000000000;
  v40 = 32;
  v41 = 0xE100000000000000;
  v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v31 = v30;

  *&v46 = v29;
  *(&v46 + 1) = v31;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v11, v8, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA023AccessibilityAttachmentZ0VGMd);
  v32 = v39;
  *v39 = v38;
  *(v32 + 8) = v37;
  v32[2] = 0x3FF0000000000000;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNoG4ViewVAA21_TraitWritingModifierVyAA014LayoutPriorityK3KeyVGG_ACyACyACyACyAA4TextVAD25MetricDescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentplM0VyAN4CaseOSgGGAA023AccessibilityAttachmentM0VGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v8, v33 + *(v34 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA023AccessibilityAttachmentZ0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v11, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA023AccessibilityAttachmentZ0VGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v8, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA023AccessibilityAttachmentZ0VGMd);
}

uint64_t TimeInZoneMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = *(v0 + 16);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v16[8];
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  if (v6 == 5)
  {
    v8 = "TIME_IN_ZONE_DESCRIPTION";
  }

  else
  {
    v8 = "Time_Empty_Value";
  }

  if (v6 == 5)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v17._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._object = (v8 | 0x8000000000000000);
  v12._countAndFlagsBits = v9;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v17)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t closure #1 in TimeInZoneMetricView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  if ((FIUICurrentLanguageNeedsExtendedLineSpacing() & 1) == 0)
  {
    v4 = *(a1 + 4);
  }

  v6 = *(a1 + 8);
  v7 = a1[1];
  v51 = *a1;
  v5 = v51;
  v52 = v7;
  *&v53 = *(a1 + 4);
  *&v45 = TimeInZoneMetricView.description.getter();
  *(&v45 + 1) = v8;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.localizedUppercase.getter();
  v11 = v10;

  v30 = v9;
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  specialized View.metricDescriptionFont(multiline:)(0, v12, v13, v15 & 1, v17, &v39);
  outlined consume of Text.Storage(v12, v14, v16 & 1);

  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = Color.init(uiColor:)();
  v33 = v39;
  v34 = v40;
  LOBYTE(v38) = v44;
  v36 = v42;
  v37 = v43;
  v35 = v41;
  v20 = v39;
  v21 = v40;
  v45 = v39;
  v46 = v40;
  v23 = v42;
  v22 = v43;
  v48 = v42;
  v49 = v43;
  v24 = v41;
  v47 = v41;
  v25 = v38;
  *&v50 = v38;
  *(&v50 + 1) = v19;
  *(a2 + 40) = v4;
  v26 = v46;
  *(a2 + 48) = v45;
  *(a2 + 64) = v26;
  v27 = v50;
  *(a2 + 112) = v49;
  *(a2 + 128) = v27;
  v28 = v48;
  *(a2 + 80) = v47;
  *(a2 + 96) = v28;
  v32 = 1;
  v31 = v6;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  v51 = v20;
  v52 = v21;
  v54 = v23;
  v55 = v22;
  v53 = v24;
  v56 = v25;
  v57 = v19;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(&v45, &v30, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(&v51, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

void one-time initialization function for elapsedTimeViewTitle()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA3CF0;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static ElapsedTimeOrNoTimeView.elapsedTimeViewTitle = v4;
}

uint64_t ElapsedTimeOrNoTimeView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015ElapsedTimeViewVAA08ModifiedD0VyAJyAA4TextVAF15MetricValueFontVGAA31AccessibilityAttachmentModifierVG_GMd);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  if (a2)
  {
    if (one-time initialization token for elapsedTimeViewTitle != -1)
    {
      swift_once();
    }

    v26[1] = a3;
    v34[0] = static ElapsedTimeOrNoTimeView.elapsedTimeViewTitle;
    lazy protocol witness table accessor for type String and conformance String();

    v12 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    KeyPath = swift_getKeyPath();
    v33 = v16 & 1;
    v32 = 0;
    *&v28 = v12;
    *(&v28 + 1) = v14;
    LOBYTE(v29) = v16 & 1;
    *(&v29 + 1) = v18;
    LOWORD(v30) = 256;
    *(&v30 + 1) = KeyPath;
    v31 = 0;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = WorkoutUIBundle.super.isa;
    v36._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x41565F4F4E5F5841;
    v21._object = 0xEB0000000045554CLL;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR, lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont);
    View.accessibilityLabel<A>(_:)();

    v34[0] = v28;
    v34[1] = v29;
    v34[2] = v30;
    v35 = v31;
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v34, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v8, v11, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA31AccessibilityAttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA31AccessibilityAttachmentModifierVGMd);
  }

  else
  {
    *v11 = a1;
    v11[8] = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNokE0VAA13_OffsetEffectVGAIyAIyAIyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015ElapsedTimeOrNojE0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_AGyAGyAGyAGyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGMd);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeInZoneMetricView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeInZoneMetricView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA6SpacerV_AEy07WorkoutB0015ElapsedTimeOrNolH0VAA13_OffsetEffectVGAEyAEyAEyAA4TextVAL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAL0R3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGAEyAEyAA6HStackVyAIyAEyAnA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGG_AEyAEyAZA11_yAS4CaseOSgGGAA31AccessibilityAttachmentModifierVGtGGA8_GA15_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy07WorkoutB0015ElapsedTimeOrNokG0VAA13_OffsetEffectVGACyACyACyAA4TextVAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGAJ0Q3RowVGAA30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy07WorkoutB0015ElapsedTimeOrNojG0VAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyACyACyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA012_EnvironmentrnO0VyAR4CaseOSgGGAA023AccessibilityAttachmentO0VGtGGAH0T3RowVGA_yAA16LegibilityWeightOSgGGMR, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElapsedTimeOrNoTimeView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ElapsedTimeOrNoTimeView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView()
{
  result = lazy protocol witness table cache variable for type ElapsedTimeView and conformance ElapsedTimeView;
  if (!lazy protocol witness table cache variable for type ElapsedTimeView and conformance ElapsedTimeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ElapsedTimeView and conformance ElapsedTimeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR, lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ElapsedTimeOrNoTimeView, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ElapsedTimeOrNoTimeView, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _EnvironmentKeyWritingModifier<Text.Case?>>, AccessibilityAttachmentModifier>)>>, MetricRow>, _EnvironmentKeyWritingModifier<LegibilityWeight?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ElapsedTimeView, ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ElapsedTimeView, ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ElapsedTimeView, ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015ElapsedTimeViewVAA08ModifiedD0VyAHyAA4TextVAD15MetricValueFontVGAA31AccessibilityAttachmentModifierVGGMd);
    lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ElapsedTimeView, ModifiedContent<ModifiedContent<Text, MetricValueFont>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadDayViewLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainingLoadDayViewLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance TrainingLoadDayViewLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance TrainingLoadDayViewLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance TrainingLoadDayViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance TrainingLoadDayViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance TrainingLoadDayViewLayout(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance TrainingLoadDayViewLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance TrainingLoadDayViewLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type TrainingLoadDayViewLayout and conformance TrainingLoadDayViewLayout()
{
  result = lazy protocol witness table cache variable for type TrainingLoadDayViewLayout and conformance TrainingLoadDayViewLayout;
  if (!lazy protocol witness table cache variable for type TrainingLoadDayViewLayout and conformance TrainingLoadDayViewLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadDayViewLayout and conformance TrainingLoadDayViewLayout);
  }

  return result;
}

uint64_t specialized TrainingLoadDayViewLayout.placeSubviews(in:proposal:subviews:cache:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v107 = COERCE_DOUBLE(type metadata accessor for TrainingLoadBand());
  v106 = *(*&v107 - 8);
  MEMORY[0x28223BE20](*&v107);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for LayoutSubview();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v16 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v104 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v104 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v104 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v104 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v104 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v104 - v33;
  MEMORY[0x28223BE20](v35);
  v113 = v104 - v36;
  LayoutSubviews.subscript.getter();
  v114 = v34;
  LayoutSubviews.subscript.getter();
  LayoutSubviews.subscript.getter();
  LayoutSubviews.subscript.getter();
  v116 = v25;
  v37 = v16;
  LayoutSubviews.subscript.getter();
  v117 = v22;
  LayoutSubviews.subscript.getter();
  v118 = v19;
  LayoutSubviews.subscript.getter();
  LayoutSubviews.subscript.getter();
  v119 = v28;
  if (a8 > 2u)
  {
    v111 = a4 * 0.28 * 0.45;
    v108 = a4 * 0.28;
    if (a8 > 4u)
    {
      v38 = v112;
      v57 = v31;
      if (a8 != 5)
      {
        v109 = a4 * 0.7;
        static ProposedViewSize.zero.getter();
        v97 = v96;
        v99 = v98;
        static UnitPoint.topLeading.getter();
        v121 = v97 & 1;
        v120 = v99 & 1;
        v85 = v113;
        LayoutSubview.place(at:anchor:proposal:)();
        static ProposedViewSize.zero.getter();
        v101 = v100;
        v103 = v102;
        static UnitPoint.topLeading.getter();
        v121 = v101 & 1;
        v120 = v103 & 1;
        v90 = v114;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v91 = v57;
        LayoutSubview.place(at:anchor:proposal:)();
        v110 = a3;
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v92 = v116;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v93 = v117;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v48 = v118;
        LayoutSubview.place(at:anchor:proposal:)();
        v121 = 0;
        v120 = 0;
        LayoutSubview.sizeThatFits(_:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        goto LABEL_15;
      }

      v107 = a4 * 0.54;
      v109 = a5;
      v106 = a4 * 0.03 + a4 * 0.03 + a4 * 0.22 + a4 * 0.1 + a4 * 0.04 + a4 * 0.04 + a2;
      v105 = a4 * 0.03;
      static ProposedViewSize.zero.getter();
      v59 = v58;
      v61 = v60;
      static UnitPoint.topLeading.getter();
      v121 = v59 & 1;
      v120 = v61 & 1;
      v85 = v113;
      LayoutSubview.place(at:anchor:proposal:)();
      static ProposedViewSize.zero.getter();
      v63 = v62;
      v65 = v64;
      static UnitPoint.topLeading.getter();
      v121 = v63 & 1;
      v120 = v65 & 1;
      v90 = v114;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v91 = v57;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v92 = v116;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v93 = v117;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v48 = v118;
      LayoutSubview.place(at:anchor:proposal:)();
    }

    else
    {
      v109 = a5;
      v110 = a3;
      v38 = v112;
      v39 = v31;
      v105 = a4 * 0.03;
      if (a8 != 3)
      {
        static ProposedViewSize.zero.getter();
        v82 = v81;
        v84 = v83;
        static UnitPoint.topLeading.getter();
        v121 = v82 & 1;
        v120 = v84 & 1;
        v85 = v113;
        LayoutSubview.place(at:anchor:proposal:)();
        static ProposedViewSize.zero.getter();
        v87 = v86;
        v89 = v88;
        static UnitPoint.topLeading.getter();
        v121 = v87 & 1;
        v120 = v89 & 1;
        v90 = v114;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v91 = v39;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v92 = v116;
        LayoutSubview.place(at:anchor:proposal:)();
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v93 = v117;
        LayoutSubview.place(at:anchor:proposal:)();
LABEL_13:
        static UnitPoint.topLeading.getter();
        v121 = 0;
        v120 = 0;
        v48 = v118;
        LayoutSubview.place(at:anchor:proposal:)();
        goto LABEL_14;
      }

      v104[0] = a4 * 0.16 + a2;
      TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)();
      TrainingLoadBand.valueRangeForBand(baseline:)();
      (*(*&v106 + 8))(v14, COERCE_DOUBLE(*&v107));
      static ProposedViewSize.zero.getter();
      v41 = v40;
      v43 = v42;
      static UnitPoint.topLeading.getter();
      v121 = v41 & 1;
      v120 = v43 & 1;
      v85 = v113;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v90 = v114;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v91 = v39;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v92 = v116;
      LayoutSubview.place(at:anchor:proposal:)();
      static ProposedViewSize.zero.getter();
      v45 = v44;
      v47 = v46;
      static UnitPoint.topLeading.getter();
      v121 = v45 & 1;
      v120 = v47 & 1;
      v93 = v117;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v48 = v118;
      LayoutSubview.place(at:anchor:proposal:)();
    }

    goto LABEL_14;
  }

  v107 = a4 * 0.04;
  v110 = a3;
  if (a8)
  {
    v109 = a5;
    v111 = a4 * 0.28 * 0.45;
    v92 = v116;
    v38 = v112;
    v85 = v113;
    v91 = v31;
    if (a8 != 1)
    {
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      v90 = v114;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      v121 = 0;
      v120 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      static ProposedViewSize.zero.getter();
      v74 = v73;
      v76 = v75;
      static UnitPoint.topLeading.getter();
      v121 = v74 & 1;
      v120 = v76 & 1;
      LayoutSubview.place(at:anchor:proposal:)();
      static ProposedViewSize.zero.getter();
      v78 = v77;
      v80 = v79;
      static UnitPoint.topLeading.getter();
      v121 = v78 & 1;
      v120 = v80 & 1;
      v93 = v117;
      LayoutSubview.place(at:anchor:proposal:)();
      goto LABEL_13;
    }

    v106 = a4 * 0.54;
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
    v90 = v114;
    LayoutSubview.place(at:anchor:proposal:)();
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    static ProposedViewSize.zero.getter();
    v50 = v49;
    v52 = v51;
    static UnitPoint.topLeading.getter();
    v121 = v50 & 1;
    v120 = v52 & 1;
    LayoutSubview.place(at:anchor:proposal:)();
    static ProposedViewSize.zero.getter();
    v54 = v53;
    v56 = v55;
    static UnitPoint.topLeading.getter();
    v121 = v54 & 1;
    v120 = v56 & 1;
    v93 = v117;
    LayoutSubview.place(at:anchor:proposal:)();
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
    v48 = v118;
    LayoutSubview.place(at:anchor:proposal:)();
LABEL_14:
    static UnitPoint.topLeading.getter();
    v121 = 0;
    v120 = 0;
LABEL_15:
    LayoutSubview.place(at:anchor:proposal:)();
    goto LABEL_16;
  }

  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  v104[1] = a2;
  v85 = v113;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  v66 = v114;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  v91 = v31;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  v90 = v66;
  LayoutSubview.place(at:anchor:proposal:)();
  static ProposedViewSize.zero.getter();
  v68 = v67;
  LOBYTE(v66) = v69;
  static UnitPoint.topLeading.getter();
  v121 = v68 & 1;
  v120 = v66 & 1;
  v92 = v116;
  LayoutSubview.place(at:anchor:proposal:)();
  static ProposedViewSize.zero.getter();
  v71 = v70;
  LOBYTE(v66) = v72;
  static UnitPoint.topLeading.getter();
  v121 = v71 & 1;
  v120 = v66 & 1;
  v93 = v117;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  v48 = v118;
  LayoutSubview.place(at:anchor:proposal:)();
  v121 = 0;
  v120 = 0;
  LayoutSubview.sizeThatFits(_:)();
  static UnitPoint.topLeading.getter();
  v121 = 0;
  v120 = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  v38 = v112;
LABEL_16:
  v94 = *(v115 + 8);
  v94(v37, v38);
  v94(v48, v38);
  v94(v93, v38);
  v94(v92, v38);
  v94(v119, v38);
  v94(v91, v38);
  v94(v90, v38);
  return (v94)(v85, v38);
}

uint64_t getEnumTagSinglePayload for IntervalStyledButton(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalStyledButton(uint64_t result, int a2, int a3)
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

uint64_t protocol witness for View.body.getter in conformance IntervalStyledButton@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];
  v8 = v1[5];
  v7 = v1[6];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v8;
}

unint64_t lazy protocol witness table accessor for type TintedButton and conformance TintedButton()
{
  result = lazy protocol witness table cache variable for type TintedButton and conformance TintedButton;
  if (!lazy protocol witness table cache variable for type TintedButton and conformance TintedButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TintedButton and conformance TintedButton);
  }

  return result;
}