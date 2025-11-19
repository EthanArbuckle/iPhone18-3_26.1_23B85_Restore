uint64_t TextEffectsRenderer._convertToRenderSpace(_:textRange:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v219 = a1;
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v179 - v9;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v202 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v209 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Text.Effect.InteractionMetrics();
  v13 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v208 = (&v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v203);
  v207 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v212 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v211 = &v179 - v19;
  v217 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v222 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v204 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v220 = &v179 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v233 = &v179 - v24;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v227 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v221 = (&v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v7);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v231 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v226 = (&v179 - v31);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v7);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v229 = &v179 - v33;
  v230 = type metadata accessor for TextRenderLayer.Layout(0);
  v34 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v215 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v241 = &v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v232 = &v179 - v40;
  type metadata accessor for (UUID, NSTextLayoutFragment)();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v240 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v44 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v45 = *(v43 + 16);
  v239 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v46 = v44 & 0xFFFFFFFFFFFFFF8;
  v245 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 < 0)
  {
    v46 = v44;
  }

  v206 = v46;
  v243 = v43;

  if (!v45)
  {
    goto LABEL_84;
  }

  v48 = v45;
  v188 = v10;
  v49 = 0;
  v235 = v44 + 32;
  v238 = v37 + 16;
  v236 = v44 & 0xC000000000000001;
  v50 = (v37 + 32);
  v237 = (v37 + 8);
  v228 = (v34 + 48);
  v225 = (v26 + 56);
  v224 = (v26 + 48);
  v193 = (v18 + 8);
  v200 = 0x8000000195CE0530;
  v199 = 0x8000000195CE0560;
  v198 = "Invalid keyframe layout: size=(";
  v51 = *MEMORY[0x1E695F050];
  v197 = *(MEMORY[0x1E695F050] + 16);
  v196 = v51;
  v187 = (v13 + 56);
  v192 = v48 - 1;
  v195 = xmmword_195CC8CF0;
  v194 = xmmword_195CC8D00;
  v52 = a2;
  v210 = a3;
  v53 = v232;
  v54 = v243;
  v242 = v44;
  v186 = v13;
  v234 = v48;
LABEL_5:
  v55 = v49;
  while (v55 < *(v54 + 16))
  {
    (*(v37 + 16))(v53, v54 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v55, v36);
    if (v44 >> 62)
    {
      result = MEMORY[0x19A8BDCD0](v206);
      if (v55 == result)
      {
LABEL_85:

        return (*v237)(v53, v36);
      }
    }

    else
    {
      result = *(v245 + 16);
      if (v55 == result)
      {
        goto LABEL_85;
      }
    }

    if (v236)
    {
      v56 = MEMORY[0x19A8BDB80](v55, v44);
    }

    else
    {
      if (v55 >= *(v245 + 16))
      {
        goto LABEL_87;
      }

      v56 = *(v235 + 8 * v55);
    }

    v244 = v56;
    v57 = *v50;
    v58 = v240;
    (*v50)(v240, v53, v36);
    v59 = v241;
    v57(v241, v58, v36);
    v60 = v239;
    swift_beginAccess();
    v61 = *(v4 + v60);
    if (*(v61 + 16))
    {
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59);
      if (v63)
      {
        v64 = *(*(v61 + 56) + 8 * v62);
        swift_endAccess();
        v65 = *v237;
        v66 = v64;
        v67 = v59;
        v68 = v66;
        v65(v67, v36);
        v69 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        v70 = *&v68[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v71 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
        swift_beginAccess();
        v72 = v70 + v71;
        v73 = v229;
        outlined init with copy of TextRenderLayer.Layout?(v72, v229, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if ((*v228)(v73, 1, v230) == 1)
        {

          result = outlined destroy of TextRenderLayer.Layout?(v73, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
          v53 = v232;
          goto LABEL_7;
        }

        v191 = v68;
        v181 = v4;
        v74 = v73;
        v75 = v215;
        outlined init with take of TextRenderLayer.Layout(v74, v215, type metadata accessor for TextRenderLayer.Layout);
        v76 = *(v70 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
        v182 = *(v70 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
        v179 = v76;
        v77 = *(v70 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
        swift_beginAccess();
        v78 = *(v75 + *(v230 + 24));
        v79 = *(v70 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
        v184 = *(v77 + 112);
        v223 = *(v78 + 16);
        v201 = v79 + 32;

        v183 = v77;

        v218 = v79;

        v216 = v78;

        v80 = 0;
        v180 = v55 + 1;
        v44 = v242;
        while (2)
        {
          if (v80 == v223)
          {
            v88 = 1;
            v80 = v223;
            v89 = v227;
            v90 = v226;
          }

          else
          {
            v89 = v227;
            if ((v80 & 0x8000000000000000) != 0)
            {
              goto LABEL_88;
            }

            if (v80 >= *(v216 + 16))
            {
              goto LABEL_89;
            }

            v91 = v216 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v80;
            v92 = *(v227 + 48);
            v93 = v221;
            *v221 = v80;
            outlined init with copy of Text.Effect.Composition(v91, v93 + v92, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v94 = v93;
            v44 = v242;
            v90 = v226;
            outlined init with take of TextRenderLayer.Layout(v94, v231, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
            v88 = 0;
            ++v80;
          }

          v95 = v231;
          (*v225)(v231, v88, 1, v89);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v95, v90, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          if ((*v224)(v90, 1, v89) == 1)
          {

            v4 = v181;
LABEL_50:
            v53 = v232;
            v54 = v243;
            goto LABEL_51;
          }

          v96 = v90 + *(v89 + 48);
          v97 = *v90;
          outlined init with take of TextRenderLayer.Layout(v96, v233, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if ((v97 & 0x8000000000000000) == 0 && v97 < *(v218 + 2))
          {
            v98 = (v201 + 16 * v97);
            v100 = *v98;
            v99 = v98[1];
            if (v219 && (NSTextRange.textRange.getter(), (v103 & 1) == 0))
            {
              v185 = v102;
              *&v190 = v101;
              v111 = [v244 rangeInElement];
              NSTextRange.textRange.getter();
              *&v189 = v112;
              v114 = v113;

              if ((v114 & 1) == 0)
              {
                result = v190 - v189;
                if (__OFSUB__(v190, v189))
                {
                  goto LABEL_90;
                }

                if (__OFSUB__(v185, v190))
                {
                  goto LABEL_91;
                }

                if (__OFADD__(v185 - v190, result))
                {
                  goto LABEL_92;
                }

                v115 = Text.Layout.CharacterIndex.init(_:)();
                result = Text.Layout.CharacterIndex.init(_:)();
                *&v190 = v115;
                *&v189 = result;
                if (result < v115)
                {
                  goto LABEL_93;
                }

                v116 = v211;
                Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v211);
                v117 = specialized RangeSet.contains(_:)(v190, v189);
                (*v193)(v116, v212);
                if (v117)
                {
                  v201 = v97;
                  v149 = 0;
LABEL_54:

                  v132 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
                  v133 = v191;
                  swift_beginAccess();
                  v52 = v52 + v100 + 0.0;
                  a3 = a3 + v99 + *&v133[v132];
                  v4 = v181;
                  if ((v149 & 1) != 0 || (v134 = v211, Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v211), v135 = specialized RangeSet.contains(_:)(v190, v189), (*v193)(v134, v212), !v135))
                  {
                    outlined destroy of Text.Effect.Composition(v233, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

                    goto LABEL_50;
                  }

                  v136 = *&v191[v69];
                  v137 = *&v136[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
                  v138 = v233;
                  v139 = v204;
                  outlined init with copy of Text.Effect.Composition(v233, v204, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                  if (swift_getEnumCaseMultiPayload() == 2)
                  {
                    v140 = v201;
                    outlined init with take of TextRenderLayer.Layout(v139, v207, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                    v141 = v136;
                    v142 = *(v203 + 24);
                    v143 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
                    swift_beginAccess();
                    v218 = v141;
                    v144 = *&v141[v143];
                    if (*(v144 + 16) && (v145 = specialized __RawDictionaryStorage.find<A>(_:)(v140), (v146 & 1) != 0))
                    {
                      v147 = v208;
                      outlined init with copy of Text.Effect.Composition(*(v144 + 56) + *(v186 + 72) * v145, v208, type metadata accessor for Text.Effect.InteractionMetrics);
                      swift_endAccess();
                      v148 = v218;
                    }

                    else
                    {
                      v216 = v143;
                      v154 = v207 + v142;
                      swift_endAccess();
                      v155 = v208;
                      *v208 = MEMORY[0x1E69E7CC0];
                      v156 = v205;
                      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
                      v157 = v218;
                      RangeSet.init()();
                      *(v155 + *(v156 + 24)) = MEMORY[0x1E69E7CD0];
                      v158 = (v155 + *(v156 + 28));
                      v159 = type metadata accessor for Text.Effect.Composition(0);
                      *v158 = 0;
                      v158[1] = 0;
                      v160 = *(v159 + 24);
                      v223 = v154;
                      v161 = *(v154 + v160);
                      v162 = *(v161 + 16);
                      v163 = v209;
                      v164 = v182;
                      if (v162)
                      {
                        v165 = v161 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
                        v166 = *(v202 + 72);
                        do
                        {
                          outlined init with copy of Text.Effect.Composition(v165, v163, type metadata accessor for Text.Effect.Composition.Run);
                          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v208, v223, v164, v179, v184, v183, v137);
                          v163 = v209;
                          outlined destroy of Text.Effect.Composition(v209, type metadata accessor for Text.Effect.Composition.Operation);
                          v165 += v166;
                          --v162;
                        }

                        while (v162);
                      }

                      v167 = v188;
                      outlined init with copy of Text.Effect.Composition(v208, v188, type metadata accessor for Text.Effect.InteractionMetrics);
                      (*v187)(v167, 0, 1, v205);
                      swift_beginAccess();
                      specialized Dictionary.subscript.setter(v167, v201);
                      swift_endAccess();
                      v4 = v181;
                      v147 = v208;
                    }

                    v168 = *v147;
                    v169 = *(*v147 + 2);
                    v53 = v232;
                    v54 = v243;
                    if (v169)
                    {
                      v170 = (v168 + 88);
                      v171 = *(*v147 + 2);
                      while (v190 < *(v170 - 7) || *(v170 - 6) < v190)
                      {
                        v170 += 12;
                        if (!--v171)
                        {
                          goto LABEL_74;
                        }
                      }

                      v176 = *(v170 - 5);
                      v153 = *(v170 - 4);
                      v177 = *v170;
                      v178 = v170[4];

                      outlined destroy of Text.Effect.Composition(v233, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                      v152 = v176 - v177 + v178;
                    }

                    else
                    {
LABEL_74:
                      v173 = (v147 + *(v205 + 28));
                      v152 = *v173;
                      v153 = v173[1];
                      if (*v173 != 0.0 || (v153 == 0.0 ? (v174 = v169 == 0) : (v174 = 1), v174))
                      {
                      }

                      else
                      {
                        v175 = &v168[96 * v169];
                        v152 = *(v175 - 6);
                        v153 = *(v175 - 5);
                      }

                      outlined destroy of Text.Effect.Composition(v233, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    }

                    outlined destroy of Text.Effect.Composition(v208, type metadata accessor for Text.Effect.InteractionMetrics);
                    outlined destroy of Text.Effect.Composition(v207, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                    v151 = v218;
                  }

                  else
                  {
                    v150 = v136;

                    outlined destroy of Text.Effect.Composition(v138, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v151 = v150;
                    outlined destroy of Text.Effect.Composition(v139, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v152 = 0.0;
                    v153 = 0.0;
                    v53 = v232;
                    v54 = v243;
                  }

                  v52 = v52 + v152;
                  a3 = a3 + v153;
LABEL_51:
                  result = outlined destroy of Text.Effect.Composition(v215, type metadata accessor for TextRenderLayer.Layout);
                  v49 = v180;
                  if (v192 == v55)
                  {
LABEL_84:
                  }

                  goto LABEL_5;
                }
              }
            }

            else
            {
              v104 = (*&v191[v69] + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
              v106 = *v104;
              v105 = v104[1];
              outlined init with copy of Text.Effect.Composition(v233, v220, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (!EnumCaseMultiPayload)
              {
                v190 = *(v220 + 40);
                v189 = *(v220 + 24);

                goto LABEL_23;
              }

              if (EnumCaseMultiPayload == 1)
              {
                v108 = v213;
                outlined init with take of TextRenderLayer.Layout(v220, v213, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
                v109 = (v108 + *(v214 + 32));
                v110 = *v109;
                v190 = v109[1];
                v189 = v110;
                outlined destroy of Text.Effect.Composition(v108, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
LABEL_23:
                v81 = v189;
                v82 = &v216;
              }

              else
              {
                LODWORD(v190) = static os_log_type_t.fault.getter();
                if (one-time initialization token for internalErrorsLog != -1)
                {
                  swift_once();
                }

                *&v189 = static Log.internalErrorsLog;
                type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v118 = swift_allocObject();
                *(v118 + 16) = v195;
                *(v118 + 56) = MEMORY[0x1E69E6158];
                v119 = lazy protocol witness table accessor for type String and conformance String();
                *(v118 + 64) = v119;
                v185 = v119;
                v120 = v200;
                *(v118 + 32) = 0xD00000000000002ELL;
                *(v118 + 40) = v120;
                *&v189 = v189;
                v121 = StaticString.description.getter();
                *(v118 + 96) = MEMORY[0x1E69E6158];
                *(v118 + 104) = v119;
                *(v118 + 72) = v121;
                *(v118 + 80) = v122;
                v247 = 103;
                v123 = dispatch thunk of CustomStringConvertible.description.getter();
                v124 = v185;
                *(v118 + 136) = MEMORY[0x1E69E6158];
                *(v118 + 144) = v124;
                *(v118 + 112) = v123;
                *(v118 + 120) = v125;
                v126 = v189;
                os_log(_:dso:log:_:_:)();

                type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
                *&v190 = swift_allocObject();
                *(v190 + 16) = v194;
                v247 = 0;
                v248 = 0xE000000000000000;
                _StringGuts.grow(_:)(38);

                v247 = 0xD000000000000031;
                v248 = v199;
                v127 = StaticString.description.getter();
                MEMORY[0x19A8BD680](v127);

                MEMORY[0x19A8BD680](58, 0xE100000000000000);
                v246 = 103;
                v128 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x19A8BD680](v128);

                MEMORY[0x19A8BD680](0xD00000000000001CLL, v198 | 0x8000000000000000);
                v129 = v247;
                v130 = v248;
                v131 = v190;
                *(v190 + 56) = MEMORY[0x1E69E6158];
                *(v131 + 32) = v129;
                *(v131 + 40) = v130;
                print(_:separator:terminator:)();

                outlined destroy of Text.Effect.Composition(v220, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                v81 = v196;
                v82 = &v228;
              }

              v83 = *(v82 - 16);
              v84 = v99 + v210;
              v85 = *(&v81 + 1);
              v86 = *(v82 - 31);
              v87 = v81;
              v250 = CGRectOffset(*(&v83 - 1), v100 + v106, v99 + v105);
              v249.x = v100 + v106 + a2;
              v249.y = v84;
              if (CGRectContainsPoint(v250, v249))
              {
                v201 = v97;
                *&v190 = 0;
                *&v189 = 0;
                v149 = 1;
                goto LABEL_54;
              }
            }
          }

          result = outlined destroy of Text.Effect.Composition(v233, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          continue;
        }
      }
    }

    swift_endAccess();

    result = (*v237)(v59, v36);
LABEL_7:
    v44 = v242;
    ++v55;
    v54 = v243;
    if (v234 == v55)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t TextEffectsRenderer.convertToRenderSpace(_:location:affinity:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v246 = a2;
  v266 = a1;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v231 = &v203 - v10;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v230 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v244 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for Text.Effect.InteractionMetrics();
  v13 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v243 = (&v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v242 = type metadata accessor for LayoutDirection();
  v287 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v236 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v237 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v239 = &v203 - v19;
  v247 = type metadata accessor for Text.Layout.Line();
  v280 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v238 = &v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v251 = &v203 - v22;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028], v8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v245 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v253 = &v203 - v26;
  v254 = type metadata accessor for Text.Layout.Run();
  v27 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v250 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v241 = &v203 - v30;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v249 = v31;
  v264 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v248 = &v203 - v32;
  v232 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v232);
  v235 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v257 = (&v203 - v35);
  v256 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v256);
  v255 = (&v203 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v262 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v234 = &v203 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v270 = &v203 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v272 = &v203 - v41;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v252 = v42;
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v261 = (&v203 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v271 = &v203 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v269 = (&v203 - v48);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v8);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v203 - v50;
  v277 = type metadata accessor for TextRenderLayer.Layout(0);
  v52 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v273 = &v203 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v285 = &v203 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v289 = &v203 - v58;
  type metadata accessor for (UUID, NSTextLayoutFragment)();
  MEMORY[0x1EEE9AC00](v59 - 8);
  v284 = &v203 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v62 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v63 = *(v61 + 16);
  v283 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v64 = v62 & 0xFFFFFFFFFFFFFF8;
  v288 = v62 & 0xFFFFFFFFFFFFFF8;
  if (v62 < 0)
  {
    v64 = v62;
  }

  v240 = v64;
  v286 = v61;

  if (!v63)
  {
LABEL_106:
  }

  v66 = v63;
  v67 = v13;
  v68 = 0;
  v279 = v62 + 32;
  v69 = v55 + 16;
  v281 = v62 & 0xC000000000000001;
  v282 = (v55 + 8);
  v274 = (v52 + 48);
  v70 = (v55 + 32);
  v259 = (v43 + 56);
  v258 = (v43 + 48);
  v229 = (v264 + 8);
  v228 = (v27 + 48);
  v226 = (v280 + 8);
  v222 = (v27 + 32);
  v224 = (v27 + 56);
  v225 = (v27 + 8);
  v218 = *MEMORY[0x1E697E7D8];
  v219 = v287 + 104;
  v220 = (v287 + 8);
  v217 = *MEMORY[0x1E697E7D0];
  v216 = (v67 + 56);
  v221 = v66 - 1;
  v215 = v67;
  v71 = v286;
  v72 = v62;
  v280 = v62;
  v268 = v5;
  v267 = v51;
  v278 = v66;
  v276 = v55;
  v275 = (v55 + 32);
  while (2)
  {
    v73 = v68;
    while (1)
    {
      if (v73 >= *(v71 + 16))
      {
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      (*(v55 + 16))(v289, v71 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v73, v54);
      if (v72 >> 62)
      {
        result = MEMORY[0x19A8BDCD0](v240);
        if (v73 == result)
        {
LABEL_107:

          return (*v282)(v289, v54);
        }
      }

      else
      {
        result = *(v288 + 16);
        if (v73 == result)
        {
          goto LABEL_107;
        }
      }

      if (v281)
      {
        v74 = MEMORY[0x19A8BDB80](v73, v72);
      }

      else
      {
        if (v73 >= *(v288 + 16))
        {
          goto LABEL_109;
        }

        v74 = *(v279 + 8 * v73);
      }

      v287 = v74;
      v75 = *v70;
      v76 = v284;
      (*v70)(v284, v289, v54);
      v77 = v285;
      v75(v285, v76, v54);
      v78 = v283;
      swift_beginAccess();
      v79 = *(v5 + v78);
      if (*(v79 + 16))
      {
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
        if (v81)
        {
          break;
        }
      }

      swift_endAccess();

      result = (*v282)(v77, v54);
LABEL_7:
      ++v73;
      v71 = v286;
      v72 = v280;
      if (v278 == v73)
      {
        goto LABEL_106;
      }
    }

    v82 = v69;
    v83 = *(*(v79 + 56) + 8 * v80);
    swift_endAccess();
    v84 = *v282;
    v85 = v83;
    v86 = v54;
    v84(v77, v54);
    v87 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
    v88 = *&v85[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    v89 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    swift_beginAccess();
    outlined init with copy of TextRenderLayer.Layout?(v88 + v89, v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    if ((*v274)(v51, 1, v277) == 1)
    {

      result = outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_23:
      v69 = v82;
      v55 = v276;
      v54 = v86;
      v70 = v275;
      goto LABEL_7;
    }

    v264 = v87;
    v90 = v273;
    outlined init with take of TextRenderLayer.Layout(v51, v273, type metadata accessor for TextRenderLayer.Layout);
    v91 = v287;
    v92 = [v287 rangeInElement];
    NSTextRange.textRange.getter();
    v94 = v93;
    v96 = v95;

    if (v96)
    {

      v97 = v90;
LABEL_22:
      result = outlined destroy of Text.Effect.Composition(v97, type metadata accessor for TextRenderLayer.Layout);
      v5 = v268;
      v51 = v267;
      goto LABEL_23;
    }

    swift_getObjectType();
    v98 = NSTextLocation.characterIndex(relativeTo:)(v94);
    if (v99)
    {

      v97 = v273;
      goto LABEL_22;
    }

    v212 = v98;
    v204 = v85;
    v100 = *&v85[v264];
    v101 = *(v100 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v203 = *(v100 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v102 = *(v100 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v103 = *(v273 + *(v277 + 24));
    v104 = *(v102 + 112);
    v105 = *(v100 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
    v206 = v102;
    v207 = v101;
    v227 = v103[2];
    v211 = v105 + 4;

    v205 = v104;

    v213 = v105;

    v214 = v103;

    v106 = 0;
    v68 = v73 + 1;
    v107 = v272;
    v108 = v252;
    v109 = v269;
    v69 = v82;
    v55 = v276;
    v54 = v86;
    v70 = v275;
    for (i = v73 + 1; ; v68 = i)
    {
      while (1)
      {
        v110 = v271;
        if (v106 == v227)
        {
          v111 = 1;
          v263 = v227;
        }

        else
        {
          if ((v106 & 0x8000000000000000) != 0)
          {
            goto LABEL_110;
          }

          if (v106 >= v214[2])
          {
            goto LABEL_111;
          }

          v112 = (v106 + 1);
          v113 = v214 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v106;
          v114 = *(v108 + 48);
          v115 = v261;
          *v261 = v106;
          outlined init with copy of Text.Effect.Composition(v113, v115 + v114, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v116 = v115;
          v109 = v269;
          outlined init with take of TextRenderLayer.Layout(v116, v271, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          v110 = v271;
          v111 = 0;
          v263 = v112;
        }

        v117 = v110;
        (*v259)(v110, v111, 1, v108);
        outlined init with take of Text.Effect.RangeCoordinateSpace?(v117, v109, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
        if ((*v258)(v109, 1, v108) == 1)
        {

          v5 = v268;
          v51 = v267;
          goto LABEL_73;
        }

        v260 = *v109;
        outlined init with take of TextRenderLayer.Layout(v109 + *(v108 + 48), v107, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v118 = [v287 textLineFragments];
        v223 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextLineFragment);
        v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v119 >> 62)
        {
          if (v119 < 0)
          {
            v146 = v119;
          }

          else
          {
            v146 = v119 & 0xFFFFFFFFFFFFFF8;
          }

          v120 = MEMORY[0x19A8BDCD0](v146);
        }

        else
        {
          v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        outlined init with copy of Text.Effect.Composition(v272, v270, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v122 = v255;
            outlined init with take of TextRenderLayer.Layout(v270, v255, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v123 = *(v122 + *(v256 + 28));
            v124 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
          }

          else
          {
            v122 = v257;
            outlined init with take of TextRenderLayer.Layout(v270, v257, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v123 = *v122;
            v124 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
          }

          outlined destroy of Text.Effect.Composition(v122, v124);
        }

        else
        {
          v123 = *(v270 + 16);
        }

        if (v123 >= v120)
        {
          v107 = v272;
          result = outlined destroy of Text.Effect.Composition(v272, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v109 = v269;
          goto LABEL_29;
        }

        v107 = v272;
        v109 = v269;
        if ((v260 & 0x8000000000000000) != 0 || v260 >= *(v213 + 2))
        {
          result = outlined destroy of Text.Effect.Composition(v272, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          goto LABEL_29;
        }

        v125 = &v211[2 * v260];
        v126 = *v125;
        v127 = v125[1];
        v128 = v248;
        v129 = v272;
        Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v248);
        v130 = v212;
        v131 = specialized RangeSet.contains(_:)(v212, v212);
        (*v229)(v128, v249);
        if (v131)
        {
          break;
        }

        result = outlined destroy of Text.Effect.Composition(v129, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v107 = v129;
        v108 = v252;
        v109 = v269;
        v68 = i;
LABEL_29:
        v106 = v263;
      }

      v132 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      v133 = v251;
      v208 = v132;
      Text.Layout.subscript.getter();
      v134 = v245;
      Text.Layout.Line.run(for:affinity:)(v130, v246, v245);
      v135 = v134;
      v136 = v134;
      v137 = v254;
      v209 = *v228;
      v138 = v209(v136, 1, v254);
      v109 = v269;
      if (v138 == 1)
      {
        v139 = v133;
        outlined destroy of TextRenderLayer.Layout?(v135, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
        result = Text.Layout.endIndex.getter();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_113;
        }

        v108 = v252;
        if (v208 == (result - 1) && v212 >= Text.Layout.Line.characterRange.getter() && v140 >= v212)
        {
          _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          result = v291;
          v141 = v290;
          if (v290 < v291)
          {
            goto LABEL_114;
          }

          v107 = v272;
          v208 = v290;
          if (v291 != v290)
          {
            while (result < v141)
            {
              v143 = result;
              Text.Layout.Line.subscript.getter();
              if (v212 >= Text.Layout.Run.characterRange.getter() && v144 >= v212)
              {
                v208 = *v226;
                v208(v251, v247);
                v137 = v254;
                (*v222)(v253, v250, v254);
                v142 = 0;
                goto LABEL_65;
              }

              (*v225)(v250, v254);
              result = v143 + 1;
              v141 = v208;
              v107 = v272;
              if (v208 == (v143 + 1))
              {
                goto LABEL_55;
              }
            }

            goto LABEL_112;
          }

LABEL_55:
          v208 = *v226;
          v208(v251, v247);
          v142 = 1;
          v137 = v254;
        }

        else
        {
          v208 = *v226;
          v208(v139, v247);
          v142 = 1;
          v137 = v254;
LABEL_65:
          v107 = v272;
        }
      }

      else
      {
        v208 = *v226;
        v208(v133, v247);
        (*v222)(v253, v135, v137);
        v142 = 0;
        v107 = v272;
        v108 = v252;
      }

      v145 = v253;
      (*v224)(v253, v142, 1, v137);
      if (v209(v145, 1, v137) != 1)
      {
        break;
      }

      outlined destroy of Text.Effect.Composition(v107, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      result = outlined destroy of TextRenderLayer.Layout?(v253, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
      v106 = v263;
    }

    (*v222)(v241, v253, v254);
    v147 = [v287 textLineFragments];
    v148 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
    if ((v148 & 0xC000000000000001) != 0)
    {
      v149 = MEMORY[0x19A8BDB80](result, v148);
      v68 = i;
LABEL_79:

      v150 = [v149 characterRange];
      v152 = v151;
      v153 = Text.Layout.CharacterIndex.init(_:)();
      result = v150 + v152;
      if (__OFADD__(v150, v152))
      {
        goto LABEL_117;
      }

      v214 = v149;
      result = Text.Layout.CharacterIndex.init(_:)();
      v213 = v153;
      v263 = result;
      v5 = v268;
      if (result < v153)
      {
        goto LABEL_118;
      }

      Text.Layout.Run.layoutDirection.getter();
      v154 = v237;
      v155 = v242;
      v223 = *v219;
      v223(v237, v218, v242);
      v156 = static LayoutDirection.== infix(_:_:)();
      v227 = *v220;
      (v227)(v154, v155);
      if ((v156 & 1) == 0)
      {
        goto LABEL_85;
      }

      result = Text.Layout.Run.characterRange.getter();
      if (__OFSUB__(v263, 1))
      {
        goto LABEL_119;
      }

      if (v157 == v263 - 1)
      {
        LODWORD(v213) = 1;
      }

      else
      {
LABEL_85:
        if (v213 == v212)
        {
          v158 = v237;
          v159 = v242;
          v223(v237, v217, v242);
          LODWORD(v263) = static LayoutDirection.== infix(_:_:)();
          (v227)(v158, v159);
          v160 = (v263 & 1) == 0;
        }

        else if (v263 == v212)
        {
          v161 = v237;
          v162 = v242;
          v223(v237, v217, v242);
          LODWORD(v263) = static LayoutDirection.== infix(_:_:)();
          (v227)(v161, v162);
          v160 = v263 & 1;
        }

        else
        {
          v160 = 2;
        }

        LODWORD(v213) = v160;
      }

      Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      Text.Layout.subscript.getter();
      v163 = *&v204[v264];
      v164 = *&v163[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
      v263 = v163;
      v165 = Text.Layout.Line.line.getter();
      if (!v165 || (v166 = v165, IsRightToLeft = CTLineIsRightToLeft(), v166, v5 = v268, v168 = v218, (IsRightToLeft & 1) == 0))
      {
        v168 = v217;
      }

      v169 = v236;
      v223(v236, v168, v242);
      v170 = v234;
      outlined init with copy of Text.Effect.Composition(v272, v234, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined init with take of TextRenderLayer.Layout(v170, v235, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v171 = *(v232 + 24);
        v172 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
        v173 = v263;
        swift_beginAccess();
        v223 = v172;
        v174 = *&v173[v172];
        if (*(v174 + 16) && (v175 = specialized __RawDictionaryStorage.find<A>(_:)(v260), (v176 & 1) != 0))
        {
          v177 = *(v174 + 56) + *(v215 + 72) * v175;
          v178 = v243;
          outlined init with copy of Text.Effect.Composition(v177, v243, type metadata accessor for Text.Effect.InteractionMetrics);
          swift_endAccess();
        }

        else
        {
          v183 = v235 + v171;
          swift_endAccess();
          v184 = v243;
          *v243 = MEMORY[0x1E69E7CC0];
          v185 = v233;
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          RangeSet.init()();
          *(v184 + *(v185 + 24)) = MEMORY[0x1E69E7CD0];
          v186 = (v184 + *(v185 + 28));
          v187 = type metadata accessor for Text.Effect.Composition(0);
          *v186 = 0;
          v186[1] = 0;
          v188 = *(v187 + 24);
          v264 = v183;
          v189 = *(v183 + v188);
          v190 = *(v189 + 16);
          v191 = v244;
          if (v190)
          {
            v192 = v189 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
            v193 = *(v230 + 72);
            do
            {
              outlined init with copy of Text.Effect.Composition(v192, v191, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v243, v264, v207, v203, v205, v206, v164);
              v191 = v244;
              outlined destroy of Text.Effect.Composition(v244, type metadata accessor for Text.Effect.Composition.Operation);
              v192 += v193;
              --v190;
            }

            while (v190);
          }

          v194 = v231;
          outlined init with copy of Text.Effect.Composition(v243, v231, type metadata accessor for Text.Effect.InteractionMetrics);
          (*v216)(v194, 0, 1, v233);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(v194, v260);
          swift_endAccess();
          v5 = v268;
          v178 = v243;
        }

        v195 = v236;
        v181 = Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v212, v213, v236);
        v182 = v196;

        outlined destroy of Text.Effect.Composition(v178, type metadata accessor for Text.Effect.InteractionMetrics);
        v197 = v195;
        v198 = v242;
        v199 = v227;
        (v227)(v197, v242);
        v208(v238, v247);
        (v199)(v239, v198);
        (*v225)(v241, v254);
        outlined destroy of Text.Effect.Composition(v272, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.Composition(v235, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      }

      else
      {

        v179 = v169;
        v180 = v227;
        (v227)(v179, v242);
        v208(v238, v247);
        (v180)(v239, v242);
        (*v225)(v241, v254);
        outlined destroy of Text.Effect.Composition(v272, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.Composition(v170, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v181 = 0.0;
        v182 = 0.0;
      }

      v51 = v267;

      v200 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
      v201 = v204;
      swift_beginAccess();
      v202 = *&v201[v200];

      a3 = a3 + v126 + 0.0 + v181;
      a4 = a4 + v182 + v127 + v202;
LABEL_73:
      v72 = v280;
      result = outlined destroy of Text.Effect.Composition(v273, type metadata accessor for TextRenderLayer.Layout);
      v71 = v286;
      if (v221 != v73)
      {
        continue;
      }

      goto LABEL_106;
    }

    break;
  }

  v68 = i;
  if (result < 0)
  {
    goto LABEL_115;
  }

  if (result < *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v149 = *(v148 + 8 * result + 32);
    goto LABEL_79;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

double @objc TextEffectsRenderer.convertToTextAnimationsCoordinateSpace(_:textRange:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  TextEffectsRenderer._convertToRenderSpace(_:textRange:)(a5, a2, a3);
  v12 = v11;

  return v12;
}

void *TextEffectsAnimationController.animator(for:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  swift_beginAccess();
  v3 = *(v1 + 96);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

id TextEffectsAnimationController.animator(for:with:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  v9 = *(v3 + 96);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    if (*&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state])
    {
      *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 0;
      v13 = *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
      v14 = v12;

      v13(v14);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = type metadata accessor for TextAnimator();
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  v17 = &v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase];
  *v17 = 0;
  v17[1] = 0;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration] = 0;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation] = a1;
  v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant] = 0;
  swift_weakAssign();
  v18 = &v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
  *v18 = a2;
  v18[1] = a3;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 1;
  v25.receiver = v16;
  v25.super_class = v15;
  v19 = a1;

  v20 = objc_msgSendSuper2(&v25, sel_init);
  swift_beginAccess();
  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 96);
  *(v4 + 96) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v8, isUniquelyReferenced_nonNull_native);
  *(v4 + 96) = v24;
  swift_endAccess();
  return v21;
}

id TextEffectsAnimationController.staticAnimator(for:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  v5 = *(v1 + 96);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    if (*&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state])
    {
      *&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 0;
      v9 = *&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
      v10 = v8;

      v9(v10);
    }
  }

  else
  {
    swift_endAccess();
  }

  v11 = type metadata accessor for TextAnimator();
  v12 = objc_allocWithZone(v11);
  swift_weakInit();
  v13 = &v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase];
  *v13 = 0;
  v13[1] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation] = a1;
  v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant] = 1;
  swift_weakAssign();
  v14 = &v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
  *v14 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  v14[1] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 1;
  v21.receiver = v12;
  v21.super_class = v11;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  swift_beginAccess();
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 96);
  *(v2 + 96) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 96) = v20;
  swift_endAccess();
  return v17;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextEffectsAnimationController.Duration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void TextEffectsAnimationController.clearDisplayLink()()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  *(v0 + 32) = 0;
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + 48);
  }

  *(v0 + 48) = 0;
}

uint64_t TextEffectsAnimationController.deinit()
{
  TextEffectsAnimationController.clearDisplayLink()();
  MEMORY[0x19A8BEBD0](v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TextEffectsAnimationController.__deallocating_deinit()
{
  TextEffectsAnimationController.deinit();

  return swift_deallocClassInstance();
}

BOOL TextEffectsAnimationController.startExternalDisplayLink()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    swift_unknownObjectRetain();
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *MEMORY[0x1E69792B8];
    v4 = *(MEMORY[0x1E69792B8] + 4);
    v5 = *(MEMORY[0x1E69792B8] + 8);
    v6 = swift_allocObject();
    swift_weakInit();
    v13[4] = partial apply for closure #1 in TextEffectsAnimationController.startExternalDisplayLink();
    v13[5] = v6;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed _NSCustomTextRenderingDisplayLinkInfo) -> ();
    v13[3] = &block_descriptor_134;
    v7 = _Block_copy(v13);

    LODWORD(v8) = v3;
    LODWORD(v9) = v4;
    LODWORD(v10) = v5;
    v11 = [v1 frameRateRequest:v7 block:{v8, v9, v10}];
    swift_unknownObjectRelease();
    _Block_release(v7);
    *(v0 + 32) = v11;
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t closure #1 in TextEffectsAnimationController.startExternalDisplayLink()(void *a1)
{
  [a1 targetTimestamp];
  v2 = v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(1, v2);
  }

  return result;
}

uint64_t TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(char a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 72);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = )
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v6 + 48) + ((i << 9) | (8 * v14)));
      swift_beginAccess();
      v16 = *(v3 + 80);
      if (*(v16 + 16))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if (v18)
        {
          break;
        }
      }

      result = swift_endAccess();
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(*v19 + 88);

    v20(v21);
  }

  while (1)
  {
LABEL_6:
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_10;
    }
  }

  *(v3 + 56) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    TextEffectsRenderer.notifyDisplayLinkObservers(with:)(*&a2);
  }

  v24 = *(v3 + 64);
  v25 = *(*(v3 + 72) + 16);

  v26 = specialized TextEffectsAnimationController.TimingMap.update(at:)(v24, a2);

  v27 = *(*(v3 + 72) + 16);
  if (v25)
  {
    if (!v27)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v27)
  {
    if ((*(v3 + 40) & 1) == 0)
    {
      *(v3 + 40) = 1;
      *(v3 + 56) = CACurrentMediaTime();
      if ((TextEffectsAnimationController.startExternalDisplayLink()() & 1) == 0)
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }

  v28 = specialized _NativeSet.filter(_:)(v26, v3);

  if ((a1 & 1) != 0 && *(v28 + 16))
  {
    v29 = *(*(v3 + 72) + 16);
    closure #1 in TextEffectsAnimationController.removeAnimations(_:)(v28, v3);
    v30 = *(*(v3 + 72) + 16);
    if (v29)
    {
      if (!v30)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v30)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        *(v3 + 40) = 1;
        *(v3 + 56) = CACurrentMediaTime();
        if ((TextEffectsAnimationController.startExternalDisplayLink()() & 1) == 0)
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed _NSCustomTextRenderingDisplayLinkInfo) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void TextEffectsAnimationController.startInternalDisplayLink()()
{
  if (!*(v0 + 48))
  {
    v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_displayLink_];
    v2 = *(v0 + 48);
    *(v0 + 48) = v1;
    v3 = v1;

    if (v3)
    {
      v4 = [objc_opt_self() mainRunLoop];
      [v3 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in TextEffectsAnimationController.invalidateAnimations(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  TextEffectsAnimationController.TimingMap.remove(_:)(a2);
  swift_endAccess();
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_beginAccess();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if (v13)
    {
      v14 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(a1 + 80);
      *(a1 + 80) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v14, v16);
      *(a1 + 80) = v16;
    }

    v7 &= v7 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    specialized TextEffectsRenderer.notifyStateObservers(with:time:)(a2);
  }

  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v24 = &unk_1EAEDF000;
  v25 = &unk_1EAEDF000;
  while (v21)
  {
LABEL_25:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = *(*(a2 + 48) + ((v23 << 9) | (8 * v27)));
    swift_beginAccess();
    v29 = *(a1 + 96);
    if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      swift_endAccess();
      v33 = v24[148];
      if (*&v32[v33])
      {
        *&v32[v33] = 0;
        v34 = v25;
        v35 = *&v32[v25[145]];
        v36 = v32;

        v35(v36);
        v25 = v34;
        v24 = &unk_1EAEDF000;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      return;
    }

    v21 = *(v4 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t TextEffectsAnimationController.TimingMap.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = *(*(a1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = specialized Dictionary.subscript.modify(v26, v12);
    if (*(v14 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v13)(v26, 0);
    v7 &= v7 - 1;
    specialized Set._Variant.remove(_:)(v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if (v15)
    {
      v16 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v28 = *v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v28;
      }

      v19 = *(v18 + 56) + 120 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 48);
      v22 = *(v19 + 16);
      v26[0] = *v19;
      v26[1] = v22;
      v26[2] = v21;
      v26[3] = v20;
      v23 = *(v19 + 64);
      v24 = *(v19 + 80);
      v25 = *(v19 + 96);
      v27 = *(v19 + 112);
      v26[5] = v24;
      v26[6] = v25;
      v26[4] = v23;
      outlined destroy of TextEffectsAnimationController.Timing(v26);
      result = specialized _NativeDictionary._delete(at:)(v16, v18);
      *v2 = v18;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in TextEffectsAnimationController.removeAnimations(_:)(uint64_t a1, void *a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    v12 = a2[8];
    if (*(v12 + 16))
    {
      v13 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v15)
      {
        v16 = *(v12 + 56) + 120 * v14;
        v17 = *(v16 + 16);
        v19 = *(v16 + 32);
        v18 = *(v16 + 48);
        v81[0] = *v16;
        v81[1] = v17;
        v81[2] = v19;
        *v82 = v18;
        v20 = *(v16 + 64);
        v21 = *(v16 + 80);
        v22 = *(v16 + 96);
        v84 = *(v16 + 112);
        *v83 = v21;
        *&v83[16] = v22;
        *&v82[16] = v20;
        if (BYTE8(v19) == 1)
        {
          if ((v83[0] & 1) == 0)
          {
            goto LABEL_21;
          }

          v23 = *&v82[8];
        }

        else
        {
          if ((v84 & 1) == 0)
          {
LABEL_21:
            outlined init with copy of TextEffectsAnimationController.Timing(v81, v80);
            goto LABEL_22;
          }

          v23 = *&v83[8];
        }

        v79 = v23;
        v24 = *(&v23 + 1);
        if (v23)
        {
          v78 = *(*v23 + 104);
          outlined init with copy of TextEffectsAnimationController.Timing(v81, v80);

          if ((v78(v25) & 1) != 0 && !v24)
          {
            goto LABEL_22;
          }

LABEL_28:
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = a2[11];
          a2[11] = 0x8000000000000000;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          v35 = v32[2];
          v36 = (v34 & 1) == 0;
          v37 = __OFADD__(v35, v36);
          v38 = v35 + v36;
          if (v37)
          {
            goto LABEL_72;
          }

          v39 = v34;
          if (v32[3] >= v38)
          {
            v41 = v79;
            if (isUniquelyReferenced_nonNull_native)
            {
              v42 = v32;
              if (v34)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v43 = v33;
              specialized _NativeDictionary.copy()();
              v41 = v79;
              v33 = v43;
              v42 = v32;
              if (v39)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
            v33 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
            if ((v39 & 1) != (v40 & 1))
            {
              goto LABEL_74;
            }

            v41 = v79;
            v42 = v32;
            if (v39)
            {
LABEL_35:
              *(v42[7] + 16 * v33) = v41;

              goto LABEL_39;
            }
          }

          v42[(v33 >> 6) + 8] |= 1 << v33;
          *(v42[6] + 8 * v33) = v13;
          *(v42[7] + 16 * v33) = v41;
          v44 = v42[2];
          v37 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v37)
          {
            goto LABEL_73;
          }

          v42[2] = v45;
LABEL_39:
          a2[11] = v42;
          swift_endAccess();

          outlined destroy of TextEffectsAnimationController.Timing(v81);
        }

        else
        {
          outlined init with copy of TextEffectsAnimationController.Timing(v81, v80);

          if (v24)
          {
            goto LABEL_28;
          }

LABEL_22:
          swift_beginAccess();
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          if (v27)
          {
            v28 = v26;
            v29 = swift_isUniquelyReferenced_nonNull_native();
            v30 = a2[11];
            a2[11] = 0x8000000000000000;
            if (!v29)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)(v28, v30);
            a2[11] = v30;
          }

          swift_endAccess();
          outlined destroy of TextEffectsAnimationController.Timing(v81);
        }
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v11 >= v9)
    {
      break;
    }

    v10 = *(v4 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  TextEffectsAnimationController.TimingMap.remove(_:)(a1);
  swift_endAccess();
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 56);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  while (v48)
  {
LABEL_50:
    v52 = *(*(a1 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
    swift_beginAccess();
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
    if (v54)
    {
      v55 = v53;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v57 = a2[10];
      v80[0] = v57;
      a2[10] = 0x8000000000000000;
      if (!v56)
      {
        specialized _NativeDictionary.copy()();
        v57 = v80[0];
      }

      specialized _NativeDictionary._delete(at:)(v55, v57);
      a2[10] = v57;
    }

    v48 &= v48 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v59 = Strong;
        specialized TextEffectsRenderer.notifyStateObservers(with:time:)(a1);
      }

      v60 = 1 << *(a1 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(a1 + 56);
      v63 = (v60 + 63) >> 6;

      v64 = 0;
      v65 = &unk_1EAEDF000;
      while (v62)
      {
LABEL_64:
        v67 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v68 = *(*(a1 + 48) + ((v64 << 9) | (8 * v67)));
        swift_beginAccess();
        v69 = a2[12];
        if (*(v69 + 16) && (v70 = specialized __RawDictionaryStorage.find<A>(_:)(v68), (v71 & 1) != 0))
        {
          v72 = *(*(v69 + 56) + 8 * v70);
          swift_endAccess();
          v73 = v65[148];
          if (*&v72[v73] != 1)
          {
            *&v72[v73] = 1;
            v74 = v65;
            v75 = *&v72[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
            v76 = v72;

            v75(v76);
            v65 = v74;
          }
        }

        else
        {
          swift_endAccess();
        }
      }

      while (1)
      {
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_71;
        }

        if (v66 >= v63)
        {
        }

        v62 = *(v4 + 8 * v66);
        ++v64;
        if (v62)
        {
          v64 = v66;
          goto LABEL_64;
        }
      }
    }

    v48 = *(v4 + 8 * v51);
    ++v50;
    if (v48)
    {
      v50 = v51;
      goto LABEL_50;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TextEffectsAnimationController.currentPhaseConfiguration(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 120 * v5;
    v8 = *(v7 + 56);
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v8, *(v7 + 64), *(v7 + 72), *(v7 + 80));
  }

  else
  {
    swift_beginAccess();
    v9 = *(v2 + 88);
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) != 0))
    {
      v8 = *(*(v9 + 56) + 16 * v10);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      return 0;
    }
  }

  return v8;
}

uint64_t TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v4 + 112));
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v4 + 88);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 16 * v11);
    }

    else
    {
      v13 = 1;
    }

    v14 = swift_endAccess();
    v15 = MEMORY[0x1E69E7D40];
    if (a3)
    {
      a2 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x80))(a2, a3);
    }

    else
    {
      if (v13 == 1 || (v14 = , (v16 = v13) == 0))
      {
        v14 = (*((*v15 & *v9) + 0x88))(v14);
        v16 = v14;
      }

      a2 = (*(*v16 + 112))(v14);
    }

    if (a4)
    {
      (*((*v15 & *v9) + 0x90))(a4);

      outlined consume of Text.Effect.BasePhaseConfiguration?(v13);
    }

    else
    {

      if (v13 != 1)
      {
      }
    }
  }

  else
  {
  }

  return a2;
}

void TextEffectsAnimationController.pauseAnimation(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1 + 72;
  v5 = *(*(v1 + 72) + 16);
  v6 = CACurrentMediaTime();
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 120 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v13 = *(v10 + 48);
      v32 = *(v10 + 32);
      v33 = v13;
      v31[0] = v11;
      v31[1] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v37 = *(v10 + 112);
      v35 = v15;
      v36 = v16;
      v34 = v14;
      v17 = BYTE8(v32);
      v18 = *v10;
      v19 = *(v10 + 16);
      v20 = *(v10 + 48);
      v40 = *(v10 + 32);
      v41 = v20;
      v38 = v18;
      v39 = v19;
      v21 = *(v10 + 64);
      v22 = *(v10 + 80);
      v23 = *(v10 + 96);
      v45 = *(v10 + 112);
      v43 = v22;
      v44 = v23;
      v42 = v21;
      outlined init with copy of TextEffectsAnimationController.Timing(v31, v46);
      TextEffectsAnimationController.Timing.endAnimationInterval()();
      if (v17 != 1)
      {
        v24 = *(v31 + 1);
        if (*(v31 + 1) < v6)
        {
          v24 = v6;
        }

        *&v40 = v24;
        BYTE8(v40) = 0;
      }

      v46[4] = v42;
      v46[5] = v43;
      v46[6] = v44;
      v47 = v45;
      v46[0] = v38;
      v46[1] = v39;
      v46[2] = v40;
      v46[3] = v41;
      v25 = BYTE8(v40);
      outlined init with copy of TextEffectsAnimationController.Timing(v46, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 64) = *&v29[0];
      if (v17)
      {
        if (!v25)
        {
          specialized Set._Variant.remove(_:)(a1);
        }
      }

      else if (v25)
      {
        specialized Set._Variant.insert(_:)(&v28, a1);
      }

      v29[4] = v42;
      v29[5] = v43;
      v29[6] = v44;
      v30 = v45;
      v29[0] = v38;
      v29[1] = v39;
      v29[2] = v40;
      v29[3] = v41;
      outlined destroy of TextEffectsAnimationController.Timing(v29);
    }
  }

  swift_endAccess();
  v27 = *(*v4 + 16);
  if (v5)
  {
    if (!v27)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v27)
  {
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

void TextEffectsAnimationController.resumeAnimation(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1 + 72;
  v5 = *(*(v1 + 72) + 16);
  v6 = CACurrentMediaTime();
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 120 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v13 = *(v10 + 48);
      v33 = *(v10 + 32);
      v34 = v13;
      v32[0] = v11;
      v32[1] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v38 = *(v10 + 112);
      v36 = v15;
      v37 = v16;
      v35 = v14;
      v17 = *&v33;
      v18 = BYTE8(v33);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 48);
      v41 = *(v10 + 32);
      v42 = v21;
      v39 = v19;
      v40 = v20;
      v22 = *(v10 + 64);
      v23 = *(v10 + 80);
      v24 = *(v10 + 96);
      v46 = *(v10 + 112);
      v44 = v23;
      v45 = v24;
      v43 = v22;
      outlined init with copy of TextEffectsAnimationController.Timing(v32, v47);
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
      if (!v18)
      {
        if (v6 >= v17)
        {
          v25 = v6;
        }

        else
        {
          v25 = v17;
        }

        v39 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v25 - v17), 0), v32[0]);
        *&v41 = 0;
        BYTE8(v41) = 2;
      }

      v47[4] = v43;
      v47[5] = v44;
      v47[6] = v45;
      v48 = v46;
      v47[0] = v39;
      v47[1] = v40;
      v47[2] = v41;
      v47[3] = v42;
      v26 = BYTE8(v41);
      outlined init with copy of TextEffectsAnimationController.Timing(v47, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 64) = *&v30[0];
      if (v18)
      {
        if (!v26)
        {
          specialized Set._Variant.remove(_:)(a1);
        }
      }

      else if (v26)
      {
        specialized Set._Variant.insert(_:)(&v29, a1);
      }

      v30[4] = v43;
      v30[5] = v44;
      v30[6] = v45;
      v31 = v46;
      v30[0] = v39;
      v30[1] = v40;
      v30[2] = v41;
      v30[3] = v42;
      outlined destroy of TextEffectsAnimationController.Timing(v30);
    }
  }

  swift_endAccess();
  v28 = *(*v4 + 16);
  if (v5)
  {
    if (!v28)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v28)
  {
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

double TextEffectsAnimationController.delay(with:variant:trigger:)(uint64_t a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 120 * v7, (*(v9 + 24) & 1) == 0))
  {
    v11 = *(v9 + 16);
  }

  else
  {
    swift_beginAccess();
    v10 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v3 + 112));
    v11 = 1.0;
    if (v10)
    {
      v12 = v10;
      v13 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(a1);
      v15 = v14;
      v47 = v16;
      v18 = v17;
      v45 = a1;
      v19 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, 0, 0, 0);
      v44 = v21;
      v50 = v22;
      v23 = 0;
      v24 = 0;
      v46 = v18;
      if (v18)
      {
        v25 = v19;
        v26 = v20;

        v20 = v26;
        v19 = v25;
        v23 = v13;
        v24 = v15;
      }

      v42 = v19;
      v43 = v24;
      v48 = v15;
      v49 = v13;
      v41 = v20;
      if (v50)
      {
        v27 = v19;
        v28 = v20;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v29 = *(v3 + 112);
      v30 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x78);

      v31 = v30(v23, v43, v27, v28, a2 & 1, v40, 0, v29, v3);
      v33 = v32;
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v42, v41, v44, v50 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v49, v48, v47, v46 & 1);

      a1 = v45;
      if ((v33 & 1) == 0)
      {
        v11 = *&v31;
      }
    }
  }

  swift_beginAccess();
  v34 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v3 + 112));
  if (v34)
  {
    v35 = v34;
    v36 = (*((*MEMORY[0x1E69E7D40] & *v34) + 0xB8))(v11);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      return *&v36;
    }
  }

  return v11;
}

uint64_t TextEffectsAnimationController.TimingMap.cancel(_:at:)(uint64_t result, double a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v6 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v7)
    {
      v8 = *(v4 + 56) + 120 * result;
      v9 = *(v8 + 16);
      v11 = *(v8 + 32);
      v10 = *(v8 + 48);
      v36[0] = *v8;
      v36[1] = v9;
      v36[2] = v11;
      v36[3] = v10;
      v12 = *(v8 + 64);
      v13 = *(v8 + 80);
      v14 = *(v8 + 96);
      v37 = *(v8 + 112);
      v36[5] = v13;
      v36[6] = v14;
      v36[4] = v12;
      v15 = BYTE8(v11);
      v16 = *(v8 + 16);
      v43 = *v8;
      v44 = v16;
      v17 = *&v11;
      v18 = *(v8 + 41);
      v19 = *(v8 + 57);
      v20 = *(v8 + 73);
      v21 = *(v8 + 89);
      v42 = *(v8 + 105);
      v40 = v20;
      v41 = v21;
      v38 = v18;
      v39 = v19;
      if (v15 == 1)
      {
        v22 = v17;
      }

      else
      {
        v22 = a2;
      }

      v23 = *(v8 + 16);
      v45[0] = *v8;
      v45[1] = v23;
      v46 = v22;
      v47 = 1;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v52 = v42;
      v48 = v38;
      outlined init with copy of TextEffectsAnimationController.Timing(v36, &v27);
      outlined init with copy of TextEffectsAnimationController.Timing(v45, &v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v27 = *v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v6, isUniquelyReferenced_nonNull_native);
      *v3 = v27;
      if (v15)
      {
        v27 = v43;
        v28 = v44;
        v25 = v38;
        v32 = v39;
        v33 = v40;
        v34 = v41;
        v29 = v22;
        v30 = 1;
      }

      else
      {
        specialized Set._Variant.insert(_:)(&v26, v6);
        v27 = v43;
        v28 = v44;
        v29 = a2;
        v25 = v38;
        v32 = v39;
        v33 = v40;
        v30 = 1;
        v34 = v41;
      }

      v35 = v42;
      v31 = v25;
      return outlined destroy of TextEffectsAnimationController.Timing(&v27);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(v7 + 16))
  {
    v12 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v13)
    {
      v14 = *(v7 + 56) + 120 * result;
      v16 = *v14;
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v43 = *(v14 + 48);
      v19 = *(v14 + 80);
      v18 = *(v14 + 96);
      v20 = *(v14 + 112);
      v44 = *(v14 + 64);
      v45 = v19;
      v42[1] = v15;
      v42[2] = v17;
      v42[0] = v16;
      v47 = v20;
      v46 = v18;
      v21 = *(&v43 + 1);
      v22 = v44;
      v23 = v19;
      v32 = BYTE8(v17);
      v24 = *v14;
      v25 = *(v14 + 16);
      v26 = *(v14 + 32);
      v54 = *(v14 + 48);
      v52 = v25;
      v53 = v26;
      v51 = v24;
      v27 = *(v14 + 97);
      v48 = *(v14 + 81);
      v49 = v27;
      v28 = a5 & 1;
      v50 = v28;
      outlined init with copy of TextEffectsAnimationController.Timing(v42, v55);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(a2, a3, a4, v28);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v21, v22, *(&v22 + 1), v23);
      v55[1] = v52;
      v55[2] = v53;
      v55[0] = v51;
      v61 = v48;
      v56 = v54;
      v57 = a2;
      v58 = a3;
      v59 = a4;
      v29 = v50;
      v60 = v50;
      v62 = v49;
      v30 = BYTE8(v53);
      outlined init with copy of TextEffectsAnimationController.Timing(v55, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = *v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v12, isUniquelyReferenced_nonNull_native);
      *v6 = *&v34[0];
      if (v32)
      {
        if (!v30)
        {
          specialized Set._Variant.remove(_:)(v12);
        }
      }

      else if (v30)
      {
        specialized Set._Variant.insert(_:)(&v33, v12);
      }

      v34[0] = v51;
      v34[1] = v52;
      v34[2] = v53;
      v40 = v48;
      v35 = v54;
      v36 = a2;
      v37 = a3;
      v38 = a4;
      v39 = v29;
      v41 = v49;
      return outlined destroy of TextEffectsAnimationController.Timing(v34);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(v7 + 16))
  {
    v12 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v13)
    {
      v14 = *(v7 + 56) + 120 * result;
      v15 = *(v14 + 112);
      v16 = *(v14 + 96);
      v17 = *(v14 + 64);
      v44 = *(v14 + 80);
      v45 = v16;
      v46 = v15;
      v18 = *v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 48);
      v41 = *(v14 + 32);
      v42 = v20;
      v40[0] = v18;
      v40[1] = v19;
      v43 = v17;
      v21 = *(&v44 + 1);
      v22 = v45;
      v23 = v15;
      v32 = BYTE8(v41);
      v24 = *(v14 + 16);
      v48 = *v14;
      v49 = v24;
      v25 = *(v14 + 32);
      v26 = *(v14 + 48);
      v27 = *(v14 + 64);
      v53 = *(v14 + 80);
      v51 = v26;
      v52 = v27;
      v50 = v25;
      v28 = a5 & 1;
      v47 = v28;
      outlined init with copy of TextEffectsAnimationController.Timing(v40, v54);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(a2, a3, a4, v28);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v21, v22, *(&v22 + 1), v23);
      v54[2] = v50;
      v54[3] = v51;
      v54[4] = v52;
      v54[0] = v48;
      v54[1] = v49;
      v55 = v53;
      v56 = a2;
      v57 = a3;
      v58 = a4;
      v29 = v47;
      v59 = v47;
      v30 = BYTE8(v50);
      outlined init with copy of TextEffectsAnimationController.Timing(v54, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = *v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v12, isUniquelyReferenced_nonNull_native);
      *v6 = *&v34[0];
      if (v32)
      {
        if (!v30)
        {
          specialized Set._Variant.remove(_:)(v12);
        }
      }

      else if (v30)
      {
        specialized Set._Variant.insert(_:)(&v33, v12);
      }

      v34[2] = v50;
      v34[3] = v51;
      v34[4] = v52;
      v34[0] = v48;
      v34[1] = v49;
      v35 = v53;
      v36 = a2;
      v37 = a3;
      v38 = a4;
      v39 = v29;
      return outlined destroy of TextEffectsAnimationController.Timing(v34);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:duration:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(v5 + 16))
  {
    v8 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v9)
    {
      v10 = *(v5 + 56) + 120 * result;
      v11 = *(v10 + 16);
      v13 = *(v10 + 32);
      v12 = *(v10 + 48);
      v37[0] = *v10;
      v37[1] = v11;
      v37[2] = v13;
      v37[3] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v38 = *(v10 + 112);
      v37[5] = v15;
      v37[6] = v16;
      v37[4] = v14;
      v17 = BYTE8(v13);
      v18 = *v10;
      v19 = *(v10 + 41);
      v39 = *(v10 + 25);
      v40 = v19;
      v20 = *(v10 + 57);
      v21 = *(v10 + 73);
      v22 = *(v10 + 89);
      v44 = *(v10 + 105);
      v42 = v21;
      v43 = v22;
      v41 = v20;
      v23 = a3 & 1;
      v45 = v23;
      v24 = *v10;
      v46 = v18;
      v47 = v24;
      v48 = a2;
      v49 = v23;
      v52 = v41;
      v53 = v21;
      v54 = v22;
      v55 = v44;
      v50 = v39;
      v51 = v40;
      v25 = HIBYTE(v39);
      outlined init with copy of TextEffectsAnimationController.Timing(v37, &v28);
      outlined init with copy of TextEffectsAnimationController.Timing(&v47, &v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = *v4;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v47, v8, isUniquelyReferenced_nonNull_native);
      *v4 = v28;
      if (v17)
      {
        if (!v25)
        {
          specialized Set._Variant.remove(_:)(v8);
        }
      }

      else if (v25)
      {
        specialized Set._Variant.insert(_:)(&v27, v8);
      }

      v28 = v46;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31 = v39;
      v29 = a2;
      v30 = v23;
      v36 = v44;
      v32 = v40;
      return outlined destroy of TextEffectsAnimationController.Timing(&v28);
    }
  }

  return result;
}

Swift::Void __swiftcall TextEffectsAnimationController.Timing.beginAnimationInterval()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  if (!*(v0 + 48))
  {
    if (one-time initialization token for textEffects != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v9, static OSSignposter.textEffects);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v10 = OSSignposter.logHandle.getter();
    v11 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_195BC6000, v10, v11, v13, "Animation", "isAnimation=YES", v12, 2u);
      MEMORY[0x19A8BEB40](v12, -1, -1);
    }

    (*(v3 + 16))(v5, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v14 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v8, v2);
    *(v1 + 48) = v14;
  }
}

Swift::Void __swiftcall TextEffectsAnimationController.Timing.endAnimationInterval()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 48))
  {
    v10 = one-time initialization token for textEffects;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v11, static OSSignposter.textEffects);
    v12 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v17 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_195BC6000, v12, v17, v15, "Animation", v13, v14, 2u);
      MEMORY[0x19A8BEB40](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);

    *(v1 + 48) = 0;
  }
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t TextEffectsAnimationController.animatorToPhase(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    swift_beginAccess();
    v16 = *(v2 + 88);
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 16 * v17);

      swift_retain_n();
      swift_endAccess();
      outlined consume of Text.Effect.BasePhaseConfiguration?(v19);
      if (v19)
      {
        v20 = *(*v19 + 112);

        v22 = v20(v21);

        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v23 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (!v23)
    {
      v27 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
      if (!v27)
      {
        return 0;
      }

      v28 = v27;
      v29 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x88))();
      v14 = (*(*v29 + 80))();

LABEL_16:

      return v14;
    }

    v24 = v23;
    v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x88))();
    v22 = (*(*v25 + 112))(v25);

LABEL_13:

    v14 = (*(*v22 + 80))(v26);
    goto LABEL_16;
  }

  v7 = *(v4 + 56) + 120 * v5;
  v8 = *(v7 + 112);
  v9 = *(v7 + 96);
  v10 = *(v7 + 64);
  v38 = *(v7 + 80);
  v39 = v9;
  v40 = v8;
  v12 = *(v7 + 32);
  v11 = *(v7 + 48);
  v13 = *(v7 + 16);
  v37[0] = *v7;
  v37[1] = v13;
  v37[2] = v12;
  v37[3] = v11;
  v37[4] = v10;
  v14 = *(&v38 + 1);
  if ((v8 & 1) == 0)
  {
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v38 + 1), v39, *(&v39 + 1), 0);

    return v14;
  }

  if (!*(&v38 + 1))
  {
    swift_beginAccess();
    v30 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (v30)
    {
      v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x88);
      v32 = v30;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v39, *(&v39 + 1), 1);
      v33 = outlined init with copy of TextEffectsAnimationController.Timing(v37, &v36);
      v34 = v31(v33);
      v14 = (*(*v34 + 80))();

      outlined destroy of TextEffectsAnimationController.Timing(v37);

      return v14;
    }

    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v39, *(&v39 + 1), 1);

    return 0;
  }

  v15 = (*(**(&v38 + 1) + 80))();
  outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v38 + 1), v39, *(&v39 + 1), 1);

  return v15;
}

uint64_t TextEffectsAnimationController.animatorFromPhase(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    swift_beginAccess();
    v16 = *(v2 + 88);
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 16 * v17);

      swift_retain_n();
      swift_endAccess();
      v20 = outlined consume of Text.Effect.BasePhaseConfiguration?(v19);
      if (v19)
      {
        v14 = (*(*v19 + 80))(v20);
        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v21 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (!v21)
    {
      return 0;
    }

    v22 = v21;
    v23 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x88))();
    v14 = (*(*v23 + 80))();

LABEL_13:

    return v14;
  }

  v7 = *(v4 + 56) + 120 * v5;
  v9 = *v7;
  v8 = *(v7 + 16);
  v10 = *(v7 + 32);
  v32 = *(v7 + 48);
  v12 = *(v7 + 80);
  v11 = *(v7 + 96);
  v13 = *(v7 + 112);
  v33 = *(v7 + 64);
  v34 = v12;
  v31[1] = v8;
  v31[2] = v10;
  v31[0] = v9;
  v36 = v13;
  v35 = v11;
  v14 = *(&v32 + 1);
  if ((v12 & 1) == 0)
  {
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v32 + 1), v33, *(&v33 + 1), 0);

    return v14;
  }

  if (!*(&v32 + 1))
  {
    swift_beginAccess();
    v24 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (v24)
    {
      v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x88);
      v26 = v24;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v33, *(&v33 + 1), 1);
      v27 = outlined init with copy of TextEffectsAnimationController.Timing(v31, &v30);
      v28 = v25(v27);
      v14 = (*(*v28 + 80))();

      outlined destroy of TextEffectsAnimationController.Timing(v31);

      return v14;
    }

    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v33, *(&v33 + 1), 1);

    return 0;
  }

  v15 = (*(**(&v32 + 1) + 80))();
  outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v32 + 1), v33, *(&v33 + 1), 1);

  return v15;
}

uint64_t TextEffectsAnimationController.invalidateAnimator(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, a1);
  swift_endAccess();
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = a1;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  if (*(v5 + 16))
  {
    swift_beginAccess();
    v6 = *(*(v1 + 72) + 16);
    closure #1 in TextEffectsAnimationController.removeAnimations(_:)(v5, v2);
    v7 = *(*(v2 + 72) + 16);
    if (v6)
    {
      if (!v7)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v7)
    {
      if ((*(v2 + 40) & 1) == 0)
      {
        *(v2 + 40) = 1;
        *(v2 + 56) = CACurrentMediaTime();
        if (!TextEffectsAnimationController.startExternalDisplayLink()())
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }
  }
}

void TextAnimator.start()()
{
  v84 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    v1 = v0;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_43:
      v64 = (v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
      *v64 = 0;
      v64[1] = 0;

      *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = 0;

      if (*(v1 + v84) != 2)
      {
        *(v1 + v84) = 2;
        v65 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

        v65(v1);
      }

      return;
    }

    v3 = Strong;
    v4 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    v77 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
    v5 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
    v7 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);
    if (v7)
    {
    }

    else
    {
      swift_weakLoadStrong();
    }

    v8 = CACurrentMediaTime();
    swift_beginAccess();
    v75 = *(*(v3 + 72) + 16);
    v83 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v4);
    v10 = v9;
    *(&v74 + 1) = v11;
    v13 = v12;
    v81 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v4, v5, v6, v7);
    v82 = v14;
    v79 = v15;
    v17 = v16;

    swift_beginAccess();
    *&v74 = v10;
    v76 = Text.Effect.Keyframes.validAnimation(_:)(v4, *(v3 + 112));
    v80 = v13;
    v78 = v17;
    if (!v76)
    {
      v21 = 0;
LABEL_17:
      swift_beginAccess();
      v27 = *(v3 + 80);
      if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        swift_endAccess();
        v31 = *(*v30 + 104);

        v31(v32);
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v33 = *(v3 + 64);
      v34 = 0uLL;
      v35 = 0.0;
      if (*(v33 + 16))
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        if (v37)
        {
          v38 = *(v33 + 56) + 120 * v36;
          v39 = *v38;
          v41 = *(v38 + 32);
          v40 = *(v38 + 48);
          *&v101[16] = *(v38 + 16);
          *&v101[32] = v41;
          *v101 = v39;
          v42 = *(v38 + 64);
          v43 = *(v38 + 80);
          v44 = *(v38 + 96);
          v45 = *(v38 + 112);
          v103 = v45;
          *&v102[32] = v43;
          *&v102[48] = v44;
          *v102 = v40;
          *&v102[16] = v42;
          v35 = *v101;
          v71 = *&v101[24];
          v73 = *&v101[8];
          v46 = *&v101[40];
          v47 = v40;
          v67 = *&v102[24];
          v69 = *&v102[8];
          v66 = *&v102[40];
          v48 = *(&v44 + 1);
          outlined init with copy of TextEffectsAnimationController.Timing(v101, &v91);
          v50 = v66;
          v49 = v67;
          v52 = v69;
          v51 = v71;
          v34 = v73;
          v53 = v35;
          if (v47 != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = 0;
          v48 = 0;
          v46 = 0;
          v51 = 0uLL;
          v52 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          v34 = 0uLL;
        }
      }

      else
      {
        v45 = 0;
        v48 = 0;
        v46 = 0;
        v51 = 0uLL;
        v52 = 0uLL;
        v49 = 0uLL;
        v50 = 0uLL;
      }

      v47 = 1;
      v53 = v8;
LABEL_28:
      v91 = v35;
      v92 = v34;
      v93 = v51;
      v94 = v46;
      v95 = v47;
      v96 = v52;
      v97 = v49;
      v98 = v50;
      v99 = v48;
      v100 = v45;
      outlined destroy of TextEffectsAnimationController.Timing?(&v91, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
      v54 = specialized Dictionary.subscript.modify(v101, v4);
      if (*(v55 + 48) != 1)
      {
        TextEffectsAnimationController.Timing.endAnimationInterval()();
      }

      (v54)(v101, 0);
      specialized Set._Variant.remove(_:)(v4);
      specialized Dictionary.removeValue(forKey:)(v4, v101);
      v86[4] = *&v102[16];
      v86[5] = *&v102[32];
      v86[6] = *&v102[48];
      v87 = v103;
      v86[0] = *v101;
      v86[1] = *&v101[16];
      v86[2] = *&v101[32];
      v86[3] = *v102;
      outlined destroy of TextEffectsAnimationController.Timing?(v86, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
      v90 = v76 == 0;
      v89 = v80 & 1;
      v88 = v17 & 1;
      *v101 = v53;
      *&v101[8] = v8;
      *&v101[16] = v21;
      v101[24] = v76 == 0;
      v101[25] = v77;
      *&v101[32] = 0;
      v101[40] = 2;
      *v102 = 0;
      *&v102[8] = v83;
      *&v102[16] = v74;
      v102[32] = v80 & 1;
      *&v102[40] = v81;
      *&v102[48] = v82;
      *&v102[56] = v79;
      v103 = v17 & 1;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v83, v74, *(&v74 + 1), v80 & 1);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v81, v82, v79, v17 & 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = *(v3 + 64);
      *(v3 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v4, isUniquelyReferenced_nonNull_native);
      *(v3 + 64) = v85[0];
      v57 = specialized Dictionary.subscript.modify(v85, v4);
      if (*(v58 + 48) != 1)
      {
        TextEffectsAnimationController.Timing.beginAnimationInterval()();
      }

      (v57)(v85, 0);
      specialized Set._Variant.insert(_:)(v85, v4);
      swift_endAccess();
      type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_195CC8D00;
      *(v59 + 32) = v4;
      v60 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v59);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        v62 = v61;
        specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v60);

        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v81, v82, v79, v78 & 1);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v83, v74, *(&v74 + 1), v80 & 1);
      }

      else
      {

        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v81, v82, v79, v78 & 1);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v83, v74, *(&v74 + 1), v80 & 1);
      }

      v63 = *(*(v3 + 72) + 16);
      if (v75)
      {
        if (!v63)
        {
          TextEffectsAnimationController.clearDisplayLink()();
        }
      }

      else if (v63)
      {
        if ((*(v3 + 40) & 1) == 0)
        {
          *(v3 + 40) = 1;
          *(v3 + 56) = CACurrentMediaTime();
          if (!TextEffectsAnimationController.startExternalDisplayLink()())
          {
            TextEffectsAnimationController.startInternalDisplayLink()();
          }
        }
      }

      goto LABEL_43;
    }

    v72 = v4;
    if (v13)
    {

      v18 = v10;
      v68 = v0;
      if ((v17 & 1) == 0)
      {
LABEL_9:
        v19 = 0;
        v20 = 0;
LABEL_13:
        v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v23 = *(v3 + 112);
        v24 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x78);

        v25 = v24(v70, v18, v19, v20, v77, v22, 0, v23, v3);
        LOBYTE(v24) = v26;

        if (v24)
        {
          v21 = 0x3FF0000000000000;
        }

        else
        {
          v21 = v25;
        }

        v17 = v78;
        v4 = v72;
        v1 = v68;
        goto LABEL_17;
      }
    }

    else
    {
      v70 = 0;
      v18 = 0;
      v68 = v0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v82;

    v19 = v81;

    goto LABEL_13;
  }
}

void TextAnimator.start(duration:)(double a1)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    v3 = v1;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_29:
      v57 = (v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
      *v57 = 0;
      v57[1] = 0;

      *(v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = 0;

      if (*(v3 + v2) != 2)
      {
        *(v3 + v2) = 2;
        v58 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

        v58(v3);
      }

      return;
    }

    v6 = Strong;
    v65 = v2;
    v7 = *(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    v64 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
    v8 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v9 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
    v10 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);

    v11 = CACurrentMediaTime();
    swift_beginAccess();
    v67 = *(*(v6 + 72) + 16);
    v71 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v7);
    *&v66 = v12;
    v14 = v13;
    v70 = v15;
    v68 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v7, v8, v9, v10);
    *&v69 = v16;
    *(&v69 + 1) = v17;
    v19 = v18;

    swift_beginAccess();
    v20 = *(v6 + 80);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(*v23 + 104);

      v24(v25);
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v6 + 64);
    v27 = 0uLL;
    v28 = 0.0;
    *(&v66 + 1) = v14;
    if (*(v26 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v30)
      {
        v31 = *(v26 + 56) + 120 * v29;
        v32 = *v31;
        v34 = *(v31 + 32);
        v33 = *(v31 + 48);
        *&v88[16] = *(v31 + 16);
        *&v88[32] = v34;
        *v88 = v32;
        v35 = *(v31 + 64);
        v36 = *(v31 + 80);
        v37 = *(v31 + 96);
        v38 = *(v31 + 112);
        v90 = v38;
        *&v89[32] = v36;
        *&v89[48] = v37;
        *v89 = v33;
        *&v89[16] = v35;
        v28 = *v88;
        v62 = *&v88[24];
        v63 = *&v88[8];
        v40 = *&v88[40];
        v39 = v33;
        v60 = *&v89[24];
        v61 = *&v89[8];
        v59 = *&v89[40];
        v41 = *(&v37 + 1);
        outlined init with copy of TextEffectsAnimationController.Timing(v88, &v78);
        v43 = v59;
        v42 = v60;
        v45 = v61;
        v44 = v62;
        v27 = v63;
        v46 = v28;
        if (v39 != 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v38 = 0;
        v41 = 0;
        v40 = 0;
        v44 = 0uLL;
        v45 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        v27 = 0uLL;
      }
    }

    else
    {
      v38 = 0;
      v41 = 0;
      v40 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
    }

    v39 = 1;
    v46 = v11;
LABEL_14:
    v78 = v28;
    v79 = v27;
    v80 = v44;
    v81 = v40;
    v82 = v39;
    v83 = v45;
    v84 = v42;
    v85 = v43;
    v86 = v41;
    v87 = v38;
    outlined destroy of TextEffectsAnimationController.Timing?(&v78, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v47 = specialized Dictionary.subscript.modify(v88, v7);
    if (*(v48 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v47)(v88, 0);
    specialized Set._Variant.remove(_:)(v7);
    specialized Dictionary.removeValue(forKey:)(v7, v88);
    v73[4] = *&v89[16];
    v73[5] = *&v89[32];
    v73[6] = *&v89[48];
    v74 = v90;
    v73[0] = *v88;
    v73[1] = *&v88[16];
    v73[2] = *&v88[32];
    v73[3] = *v89;
    outlined destroy of TextEffectsAnimationController.Timing?(v73, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v77 = 0;
    v76 = v70 & 1;
    v75 = v19 & 1;
    *v88 = v46;
    *&v88[8] = v11;
    *&v88[16] = a1;
    v88[24] = 0;
    v88[25] = v64;
    *&v88[32] = 0;
    v88[40] = 2;
    *v89 = 0;
    *&v89[8] = v71;
    *&v89[16] = v66;
    v89[32] = v70 & 1;
    *&v89[40] = v68;
    *&v89[48] = v69;
    v90 = v19 & 1;
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v71, v66, *(&v66 + 1), v70 & 1);
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v68, v69, *(&v69 + 1), v19 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = *(v6 + 64);
    *(v6 + 64) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v7, isUniquelyReferenced_nonNull_native);
    *(v6 + 64) = v72[0];
    v50 = specialized Dictionary.subscript.modify(v72, v7);
    if (*(v51 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
    }

    (v50)(v72, 0);
    specialized Set._Variant.insert(_:)(v72, v7);
    swift_endAccess();
    type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_195CC8D00;
    *(v52 + 32) = v7;
    v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v52);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v54;
      specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v53);

      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v68, v69, *(&v69 + 1), v19 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v71, v66, *(&v66 + 1), v70 & 1);
    }

    else
    {

      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v68, v69, *(&v69 + 1), v19 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v71, v66, *(&v66 + 1), v70 & 1);
    }

    v56 = *(*(v6 + 72) + 16);
    v2 = v65;
    if (v67)
    {
      if (!v56)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v56)
    {
      if ((*(v6 + 40) & 1) == 0)
      {
        *(v6 + 40) = 1;
        *(v6 + 56) = CACurrentMediaTime();
        if (!TextEffectsAnimationController.startExternalDisplayLink()())
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }

    goto LABEL_29;
  }
}

void TextAnimator.pause()()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.pauseAnimation(with:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }

    if (*(v0 + v1) != 3)
    {
      *(v0 + v1) = 3;
      v2 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v2(v0);
    }
  }
}

void TextAnimator.resume()()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.resumeAnimation(with:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }

    if (*(v0 + v1) != 2)
    {
      *(v0 + v1) = 2;
      v2 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v2(v0);
    }
  }
}

void TextAnimator.invalidate()()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state) = 0;
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.invalidateAnimator(with:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }
  }
}

double TextAnimator.duration.getter()
{
  Strong = swift_weakLoadStrong();
  v2 = 0.0;
  if (!Strong)
  {
    return v2;
  }

  v3 = Strong;
  v4 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v5 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
  v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
  v7 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);
  v8 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
  swift_beginAccess();
  v9 = *(v3 + 64);
  if (*(v9 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if (v11)
    {
      v12 = *(v9 + 56) + 120 * v10;
      if ((*(v12 + 24) & 1) == 0)
      {
        v2 = *(v12 + 16);
        goto LABEL_15;
      }
    }
  }

  swift_beginAccess();
  v13 = Text.Effect.Keyframes.validAnimation(_:)(v4, *(v3 + 112));
  if (!v13)
  {
LABEL_15:

    return v2;
  }

  v14 = v13;
  v38 = v8;
  v15 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v4);
  v17 = v16;
  v40 = v18;
  v20 = v19;

  v21 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v4, v5, v6, v7);
  v23 = v22;
  v35 = v24;
  v42 = v25;

  v39 = v20;
  if (v20)
  {

    v36 = v17;
    v37 = v15;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v41 = v15;
  if (v42)
  {

    v26 = v21;
    v27 = v23;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v28 = *(v3 + 112);
  v29 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x78);

  v30 = v29(v37, v36, v26, v27, v38, v34, 0, v28, v3);
  v32 = v31;

  outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v21, v23, v35, v42 & 1);
  outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v41, v17, v40, v39 & 1);

  v2 = 1.0;
  if ((v32 & 1) == 0)
  {
    return *&v30;
  }

  return v2;
}

uint64_t TextAnimator.toPhase.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v3 = v1;
  }

  else
  {
    if (!swift_weakLoadStrong())
    {
      return 0;
    }

    v2 = TextEffectsAnimationController.animatorToPhase(with:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    v3 = v5;

    if (!v3)
    {
      return 0;
    }
  }

  v4 = MEMORY[0x19A8BD5F0](v2, v3);

  return v4;
}

uint64_t TextAnimator.fromPhase.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = TextEffectsAnimationController.animatorFromPhase(with:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    v4 = v3;

    if (v4)
    {
      v5 = MEMORY[0x19A8BD5F0](v2, v4);

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TextAnimator.stateSnapshot.getter()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    swift_beginAccess();
    v4 = Text.Effect.Keyframes.validAnimation(_:)(v3, *(v2 + 112));
    if (v4)
    {
      v5 = v4;
      v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xC0))(v2);

      return v6;
    }
  }

  return 0;
}

uint64_t TextAnimator.stateSnapshot.setter(uint64_t result)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (!*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    goto LABEL_7;
  }

  if (!result)
  {
    return result;
  }

  type metadata accessor for Text.Effect.AnyStateSnapshot();
  v3 = swift_dynamicCastClass();
  if (v3 && (v4 = v3, (Strong = swift_weakLoadStrong()) != 0))
  {
    v6 = Strong;
    v20 = v1;
    v7 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation);
    v8 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
    v9 = *(v7 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    swift_beginAccess();
    v10 = Text.Effect.Keyframes.validAnimation(_:)(v9, *(v6 + 112));
    if (v10)
    {
      v11 = v10;
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19 = v7;
      v13 = *(v6 + 112);
      v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0xC8);

      v14(v4, v12, 0, v13, v6);

      v7 = v19;
    }

    else
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v6 + 104);
      *(v6 + 104) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v9, isUniquelyReferenced_nonNull_native);
      *(v6 + 104) = v21;
      swift_endAccess();
    }

    TextEffectsAnimationController.state(for:time:)(*(v7 + v8), v22, *(v6 + 56));
    outlined destroy of Text.Effect.State(v22);
    v16 = 3;
    if (v23 != 3)
    {
      v16 = 1;
    }

    v17 = 2;
    if (v23 != 2)
    {
      v17 = v16;
    }

    if (*(v20 + v2) != v17)
    {
      *(v20 + v2) = v17;
      v18 = *(v20 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v18(v20);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:

    return swift_unknownObjectRelease();
  }
}

void TextAnimator.nextAnimationTriggerDelay.getter()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.delay(with:variant:trigger:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id), *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant));
    }
  }
}

void TextAnimator.cancel()()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      v1 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
      v2 = CACurrentMediaTime();
      swift_beginAccess();
      TextEffectsAnimationController.TimingMap.cancel(_:at:)(v1, v2);
      swift_endAccess();
    }
  }
}

id Text.Effect.AnyStateSnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Text.Effect.AnyStateSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for TextRenderLayer.SegmentLayer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextRenderLayer.SegmentLayer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawTextLayout(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RawTextLayout(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags()
{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey()
{
  result = lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags()
{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

uint64_t one-time initialization function for textEffects()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v4, static OSSignposter.textEffects);
  __swift_project_value_buffer(v4, static OSSignposter.textEffects);
  if (one-time initialization token for textEffects != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static Log.textEffects);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.textEffects);
  __swift_project_value_buffer(v0, static Log.textEffects);
  return Logger.init(subsystem:category:)();
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a2);
  MEMORY[0x19A8BDE60](a3);
  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2)
      {
        v13 = v12[1];
        if (__OFSUB__(a3, v13))
        {
          __break(1u);
          return result;
        }

        if (v13 == a3)
        {
          result = 0;
          goto LABEL_9;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  result = 1;
LABEL_9:
  *a1 = a2;
  a1[1] = a3;
  return result;
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex);
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](a2);
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = result & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v11 + 48) + 8 * v14);
      if (__OFSUB__(a2, v16))
      {
        break;
      }

      if (v16 == a2)
      {
        result = 0;
        goto LABEL_8;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
LABEL_8:
    *a1 = a2;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x19A8BDE40](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v18);
      MEMORY[0x19A8BDE60](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = MEMORY[0x19A8BDE40](*(v4 + 40), v16);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  type metadata accessor for _SetStorage<UUID>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v7 = *v5;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      Hasher.init(_seed:)();
      a5(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = specialized _NativeSet.copy()();
      a3 = v9;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v6);
  MEMORY[0x19A8BDE60](a2);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v6)
      {
        v14 = v13[1];
        if (__OFSUB__(a2, v14))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        if (v14 == a2)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v6;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    goto LABEL_18;
  }

  *(v15 + 16) = v19;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5, a6, MEMORY[0x1E69E7560]);
    }

    else
    {
      if (v9 > v8)
      {
        v10 = a2;
        result = specialized _NativeSet.copy()(a4, a5, a6);
        a2 = v10;
        goto LABEL_13;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5, a6, MEMORY[0x1E69E7560]);
    }

    v11 = *v6;
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE60](v7);
    result = Hasher._finalize()();
    v12 = -1 << *(v11 + 32);
    a2 = result & ~v12;
    if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = *(*(v11 + 48) + 8 * a2);
        if (__OFSUB__(v7, v14))
        {
          break;
        }

        if (v14 == v7)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v13;
        if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_13:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x19A8BDE40](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<UUID>();
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *specialized _NativeSet.copy()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a1, a2, a3, MEMORY[0x1E69E6A10]);
  v5 = *v3;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + 8 * v17) = *(*(v5 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v17);
      MEMORY[0x19A8BDE60](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = MEMORY[0x19A8BDE40](*(v4 + 40), v15);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  type metadata accessor for _SetStorage<UUID>();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v7 = *v5;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      Hasher.init(_seed:)();
      a5(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v5;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x19A8BEB40](v11, -1, -1);
  }

  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI4TextV0K16AnimationSupportE6EffectO10IdentifierVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i3UI4k5V0H16lm2E6n3O10O5V_TG5APxSbs5Error_pRi_zRi0_zlyAOIsgndzo_Tf1nc_n04_s20kl123Support0a7EffectsB10ControllerC17displayLinkUpdate33_EB92A35C21DD52D72B91A53CA7419194LL2at14removeFinishedyAA4TimeV_SbtFSb7i10UI0A0VAAE6nzO7VXEfU0_AK0k7EffectsL10ControllerCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v32);
      result = Hasher._finalize()();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return specialized _NativeSet.extractSubset(using:count:)(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v15);
      result = Hasher._finalize()();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE80](v17);
    result = Hasher._finalize()();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x2E8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 728) = v3;
  *(v8 + 720) = a2;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 113) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 736) = v11;
  if (v17)
  {
    memmove((v9 + 240), (*(*v4 + 56) + 120 * v11), 0x71uLL);
  }

  else
  {
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 288) = 1;
    *(v9 + 296) = 0u;
    *(v9 + 312) = 0u;
    *(v9 + 328) = 0u;
    *(v9 + 337) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 360);
  v4 = *(*a1 + 320);
  v3[4] = *(*a1 + 304);
  v3[5] = v4;
  v3[6] = *(v2 + 336);
  *(v2 + 472) = *(v2 + 352);
  v5 = *(v2 + 256);
  *v3 = *(v2 + 240);
  v3[1] = v5;
  v6 = *(v2 + 288);
  v3[2] = *(v2 + 272);
  v3[3] = v6;
  v7 = *(v2 + 408);
  if (a2)
  {
    if (v7 != 1)
    {
      v8 = *(v2 + 736);
      v9 = *(v2 + 728);
      if ((*(v2 + 113) & 1) == 0)
      {
        v10 = *(v2 + 720);
        v11 = *v9;
        v12 = *(v2 + 320);
        *(v2 + 64) = *(v2 + 304);
        *(v2 + 80) = v12;
        *(v2 + 96) = *(v2 + 336);
        *(v2 + 112) = *(v2 + 352);
        v13 = *(v2 + 256);
        *v2 = *(v2 + 240);
        *(v2 + 16) = v13;
        v14 = *(v2 + 288);
        *(v2 + 32) = *(v2 + 272);
        *(v2 + 48) = v14;
        v15 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v8, v10, v15, v11);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v7 != 1)
  {
    v8 = *(v2 + 736);
    v9 = *(v2 + 728);
    if ((*(v2 + 113) & 1) == 0)
    {
      v11 = *v9;
      v16 = *(v2 + 320);
      *(v2 + 184) = *(v2 + 304);
      *(v2 + 200) = v16;
      *(v2 + 216) = *(v2 + 336);
      v17 = *(v2 + 256);
      *(v2 + 120) = *(v2 + 240);
      *(v2 + 136) = v17;
      v18 = *(v2 + 288);
      *(v2 + 152) = *(v2 + 272);
      v10 = *(v2 + 720);
      *(v2 + 232) = *(v2 + 352);
      *(v2 + 168) = v18;
      v15 = v2 + 120;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v9 + 56) + 120 * v8), (v2 + 240), 0x71uLL);
    goto LABEL_12;
  }

  if (*(v2 + 113))
  {
    specialized _NativeDictionary._delete(at:)(*(v2 + 736), **(v2 + 728));
  }

LABEL_12:
  v19 = *(v2 + 320);
  *(v2 + 544) = *(v2 + 304);
  *(v2 + 560) = v19;
  *(v2 + 576) = *(v2 + 336);
  *(v2 + 592) = *(v2 + 352);
  v20 = *(v2 + 256);
  *(v2 + 480) = *(v2 + 240);
  *(v2 + 496) = v20;
  v21 = *(v2 + 288);
  *(v2 + 512) = *(v2 + 272);
  *(v2 + 528) = v21;
  outlined init with copy of TextEffectsAnimationController.Timing?(v3, v2 + 600, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  outlined destroy of TextEffectsAnimationController.Timing?(v2 + 480, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Effect.BasePhaseConfiguration?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>);
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
  result = MEMORY[0x19A8BD810](v2, &type metadata for Text.Effect.Identifier, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized TextEffectsRenderer.notifyStateObservers(with:time:)(uint64_t a1)
{
  v48 = a1;
  v49 = type metadata accessor for UUID();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  v10 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v41[1] = v2 + 32;
  v41[2] = v2 + 16;
  v45 = v2;
  v46 = v11;
  v47 = (v2 + 8);

  v18 = 0;
  v42 = v9;
  v43 = v6;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v25 = v45;
      v24 = v46;
      v26 = v44;
      v27 = v49;
      (*(v45 + 16))(v44, *(v46 + 48) + *(v45 + 72) * v23, v49);
      v28 = *(*(v24 + 56) + 8 * v23);
      type metadata accessor for (key: UUID, value: TextRenderSurface)();
      v30 = v29;
      v31 = *(v29 + 48);
      v32 = *(v25 + 32);
      v6 = v43;
      v32(v43, v26, v27);
      *&v6[v31] = v28;
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
      v33 = v28;
      v21 = v19;
      v9 = v42;
LABEL_13:
      outlined init with take of Text.Effect.RangeCoordinateSpace?(v6, v9, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
      type metadata accessor for (key: UUID, value: TextRenderSurface)();
      if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
      {
      }

      v34 = *&v9[*(v30 + 48)];
      v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v36 = *&v35[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers];
      v37 = v35;

      v38 = v48;

      v39 = specialized _NativeSet.intersection(_:)(v36, v38);

      TextRenderLayer.updateActive(animations:)(v39);

      result = (*v47)(v9, v49);
      v18 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        type metadata accessor for (key: UUID, value: TextRenderSurface)();
        v30 = v40;
        (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v90 = a5;
  v96 = a3;
  v91 = a1;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v80 - v17;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v80 - v24;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v85 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - v33;
  v35 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(a4 + v35, v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v36 = *(v12 + 48);
  v93 = v11;
  v95 = v12 + 48;
  v94 = v36;
  LODWORD(v11) = v36(v34, 1, v11);
  result = outlined destroy of TextRenderLayer.Layout?(v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v11 == 1)
  {
    return result;
  }

  v38 = a4;
  v39 = TextRenderLayer.textMarkers(for:)(a2);
  if (!v39)
  {
    closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v96, v90);
    v47 = v92;
    v48 = v91;
    v49 = v93;
    goto LABEL_24;
  }

  v40 = v39;
  v81 = a2;
  v82 = a4;
  v41 = type metadata accessor for Text.Effect.InteractionMetrics();
  v42 = *(*(v41 - 8) + 56);
  v43 = v86;
  v42(v86, 1, 1, v41);
  if (!*(v40 + 16))
  {
    v44 = &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?;
    v45 = type metadata accessor for Text.Effect.InteractionMetrics;
    v46 = v43;
    goto LABEL_8;
  }

  outlined init with copy of TextRenderLayer.Layout?(v82 + v35, v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v94(v31, 1, v93) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v44 = &lazy cache variable for type metadata for TextRenderLayer.Layout?;
    v45 = type metadata accessor for TextRenderLayer.Layout;
    v46 = v31;
LABEL_8:
    outlined destroy of TextRenderLayer.Layout?(v46, v44, v45);
    v48 = v91;
LABEL_9:
    v50 = v88;
    closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v96, v90);
    v47 = v92;
    v49 = v93;
    goto LABEL_10;
  }

  v52 = v84;
  outlined init with take of TextRenderLayer.Layout(v31, v84, type metadata accessor for TextRenderLayer.Layout);

  v48 = v91;
  v53 = Text.Layout.Line.textLineFragment.getter();
  if (!v53)
  {

    outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v52, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_9;
  }

  v54 = v53;
  v55 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v48, v43, *(v52 + *(v93 + 44)), v40);

  v80 = &v80;
  LOBYTE(v100) = 0;
  MEMORY[0x1EEE9AC00](v56);
  *(&v80 - 6) = &v100;
  *(&v80 - 5) = v54;
  *(&v80 - 4) = a6;
  *(&v80 - 3) = a7;
  v78 = v55;
  GraphicsContext.withCGContext(content:)();

  outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v52, type metadata accessor for TextRenderLayer.Layout);
  LOBYTE(v54) = v100;
  closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v96, v90);
  if (v54)
  {

    v47 = v92;
    v48 = v91;
    v49 = v93;
    goto LABEL_22;
  }

  v47 = v92;
  v48 = v91;
  v49 = v93;
  v50 = v88;
LABEL_10:
  v42(v50, 1, 1, v41);
  if (!*(v40 + 16))
  {

    outlined destroy of TextRenderLayer.Layout?(v50, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
LABEL_22:
    v38 = v82;
    goto LABEL_23;
  }

  v38 = v82;
  v51 = v85;
  outlined init with copy of TextRenderLayer.Layout?(v82 + v35, v85, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v94(v51, 1, v49) != 1)
  {
    v57 = v83;
    outlined init with take of TextRenderLayer.Layout(v51, v83, type metadata accessor for TextRenderLayer.Layout);
    v58 = Text.Layout.Line.textLineFragment.getter();
    if (v58)
    {
      v59 = v58;
      v60 = v88;
      v61 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v48, v88, *(v57 + *(v49 + 44)), v40);

      MEMORY[0x1EEE9AC00](v62);
      *(&v80 - 4) = v59;
      *(&v80 - 3) = a6;
      v78 = *&a7;
      v79 = v61;
      GraphicsContext.withCGContext(content:)();

      v63 = v60;
    }

    else
    {

      v63 = v88;
    }

    outlined destroy of TextRenderLayer.Layout?(v63, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v57, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_22;
  }

  outlined destroy of TextRenderLayer.Layout?(v88, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_23:
  a2 = v81;
LABEL_24:
  v64 = v89;
  v65 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v65 - 8) + 56))(v47, 1, 1, v65);
  outlined init with copy of TextRenderLayer.Layout?(v38 + v35, v64, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v94(v64, 1, v49) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v47, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    return outlined destroy of TextRenderLayer.Layout?(v64, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v66 = v64;
  v67 = v87;
  outlined init with take of TextRenderLayer.Layout(v66, v87, type metadata accessor for TextRenderLayer.Layout);
  v68 = TextRenderLayer.correctionMarkers(for:)(a2);
  if (!v68)
  {
    goto LABEL_38;
  }

  if (!*(v68 + 2))
  {

LABEL_38:
    outlined destroy of TextRenderLayer.Layout?(v47, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v77 = v67;
    return outlined destroy of Text.Effect.Composition(v77, type metadata accessor for TextRenderLayer.Layout);
  }

  v69 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v48, v47, *(v67 + *(v49 + 44)), v68);
  v70 = v69;
  v71 = *(v69 + 2);
  if (!v71)
  {
LABEL_36:

    outlined destroy of TextRenderLayer.Layout?(v92, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

    v77 = v87;
    return outlined destroy of Text.Effect.Composition(v77, type metadata accessor for TextRenderLayer.Layout);
  }

  v72 = 0;
  v73 = (v69 + 32);
  v74 = *(v69 + 2);
  while (v72 < v74)
  {
    if (v71 == v72)
    {
      goto LABEL_43;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v73, &v100);
    if (v101 == 1)
    {
      v75 = v100;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v102, &v97, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v98)
      {
        goto LABEL_44;
      }

      v76 = outlined init with take of Any(&v97, v99);
      MEMORY[0x1EEE9AC00](v76);
      *(&v80 - 4) = v75;
      *(&v80 - 3) = v99;
      v78 = &v100;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v99);
    }

    ++v72;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v100);
    v74 = *(v70 + 2);
    v73 += 96;
    if (v72 == v74)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  outlined destroy of TextEffectsAnimationController.Timing?(&v97, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);

  LODWORD(v79) = 0;
  v78 = 1243;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized TextRenderLayer.drawContent(_:)(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v12 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  result = swift_beginAccess();
  if (*(*(v12 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = swift_unknownObjectWeakLoadStrong();

          if (v18)
          {
            v8 = swift_allocObject();
            *(v8 + 16) = partial apply for closure #1 in TextLinesLayer.draw(in:);
            *(v8 + 24) = v21;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v26 = v8;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_84;
            v19 = _Block_copy(aBlock);
            a4 = v26;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v18, v15, v19);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v19);
            LODWORD(v19) = swift_isEscapingClosureAtFileLocation();

            if (!v19)
            {
              return result;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v20 = [a3 contentsScale];
    MEMORY[0x1EEE9AC00](v20);
    *&v21[-16] = a3;
    *&v21[-8] = a4;
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v12 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  result = swift_beginAccess();
  if (*(*(v12 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = swift_unknownObjectWeakLoadStrong();

          if (v18)
          {
            v8 = swift_allocObject();
            *(v8 + 16) = partial apply for closure #1 in TextRunsLayer.draw(in:);
            *(v8 + 24) = v21;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v26 = v8;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_105;
            v19 = _Block_copy(aBlock);
            a3 = v26;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v18, v15, v19);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v19);
            LODWORD(v19) = swift_isEscapingClosureAtFileLocation();

            if (!v19)
            {
              return result;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v20 = [a3 contentsScale];
    MEMORY[0x1EEE9AC00](v20);
    *&v21[-16] = a4;
    *&v21[-8] = a3;
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void type metadata accessor for (Text.Layout.Line, CGPoint)()
{
  if (!lazy cache variable for type metadata for (Text.Layout.Line, CGPoint))
  {
    type metadata accessor for Text.Layout.Line();
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Layout.Line, CGPoint));
    }
  }
}

uint64_t outlined init with copy of TextEffectsAnimationController.Timing?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [Text.Effect.Identifier](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TextEffectsAnimationController.Timing?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [Text.Effect.Identifier](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void partial apply for closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1)
{
  partial apply for closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(a1);
}

{
  closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 48));
}

uint64_t objectdestroy_86Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void specialized TextRenderLayer.drawContent(_:)(char *a1, char *isEscapingClosureAtFileLocation, uint64_t *a3)
{
  v6 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v9 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v9 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = swift_unknownObjectWeakLoadStrong();

          if (v14)
          {
            a3 = swift_allocObject();
            a3[2] = closure #1 in DynamicEffectLayer.draw(in:)partial apply;
            a3[3] = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v24 = a3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_169;
            v15 = _Block_copy(aBlock);
            v8 = v24;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v14, v11, v15);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v15);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v16 = [isEscapingClosureAtFileLocation superlayer];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        v18 = &isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content];
        swift_beginAccess();
        v19 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
        outlined init with copy of Text.Effect.Composition(&v18[*(v19 + 24)], v8, type metadata accessor for Text.Effect.Composition);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v8, *&isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex], a3);

        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.Composition);
      }

      else
      {
      }
    }
  }
}

{
  v6 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v9 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v9 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = swift_unknownObjectWeakLoadStrong();

          if (v14)
          {
            a3 = swift_allocObject();
            a3[2] = partial apply for closure #1 in StaticEffectLayer.draw(in:);
            a3[3] = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v24 = a3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_116;
            v15 = _Block_copy(aBlock);
            v8 = v24;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v14, v11, v15);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v15);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v16 = [isEscapingClosureAtFileLocation superlayer];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        v18 = &isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content];
        swift_beginAccess();
        v19 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
        outlined init with copy of Text.Effect.Composition(&v18[*(v19 + 24)], v8, type metadata accessor for Text.Effect.Composition);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v8, *&isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex], a3);

        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.Composition);
      }

      else
      {
      }
    }
  }
}

void specialized TextRenderLayer.drawContent(_:)(char *a1, void *a2, uint64_t *a3)
{
  v3 = a3;
  v4 = a2;
  v15[2] = a2;
  v15[3] = a3;
  v6 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v6 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          v11 = swift_unknownObjectWeakLoadStrong();

          if (v11)
          {
            v3 = swift_allocObject();
            v3[2] = partial apply for closure #1 in SharedDynamicLayer.draw(in:);
            v3[3] = v15;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            aBlock[5] = v3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_161;
            v4 = _Block_copy(aBlock);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v11, v8, v4);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v4);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v13 = [v4 superlayer];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        TextRenderLayer.drawShared(in:)(v3);
      }
    }
  }
}

double partial apply for closure #1 in TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:)()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  return v1;
}

void type metadata accessor for (UUID, NSTextLayoutFragment)()
{
  if (!lazy cache variable for type metadata for (UUID, NSTextLayoutFragment))
  {
    type metadata accessor for UUID();
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSTextLayoutFragment);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID, NSTextLayoutFragment));
    }
  }
}

void specialized TextRenderLayer.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment) = 0;
  v1 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v2 = type metadata accessor for TextRenderLayer.Layout(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags) = 0;
  v4 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics) = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices) = v4;
  v6 = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version) = -1;
  RangeSet.init()();
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements) = v5;
  v7 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets);
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement);
  *v9 = 0u;
  v9[1] = 0u;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers) = v6;
  v10 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  *(v0 + v10) = CACurrentMediaTime();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TextEffectsAnimationController.TimingMap.update(at:)(uint64_t a1, double a2)
{
  v17 = MEMORY[0x1E69E7CD0];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(a1 + 56) + 120 * v13;
    if ((*(v14 + 24) & 1) == 0)
    {
      if (*(v14 + 40))
      {
        v15 = a2;
        if (*(v14 + 40) == 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = *(v14 + 32);
      }

      if (*(v14 + 16) <= v15 - *(v14 + 8))
      {
LABEL_4:
        result = specialized Set._Variant.insert(_:)(&v16, *(*(a1 + 48) + 8 * v13));
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v17;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (2)
  {
    v25 = v6;
    while (1)
    {
      if (!v11)
      {
        v14 = v7;
        while (1)
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_20;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(a3 + 48) + 8 * v16);
      swift_beginAccess();
      v18 = *(a4 + 80);
      if (!*(v18 + 16))
      {
        break;
      }

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      v22 = swift_endAccess();
      result = (*(*v21 + 96))(v22);
      if (result)
      {
        goto LABEL_17;
      }
    }

    result = swift_endAccess();
LABEL_17:
    *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v6 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:

  return specialized _NativeSet.extractSubset(using:count:)(v24, a2, v25, a3);
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v28 = swift_slowAlloc();

      v26 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI4TextV0K16AnimationSupportE6EffectO10IdentifierVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i3UI4k5V0H16lm2E6n3O10O5V_TG5APxSbs5Error_pRi_zRi0_zlyAOIsgndzo_Tf1nc_n04_s20kl123Support0a7EffectsB10ControllerC17displayLinkUpdate33_EB92A35C21DD52D72B91A53CA74191942at14removeFinishedyAA4TimeV_SbtFSb7i10UI0A0VAAE6nzO7VXEfU0_AK0k7EffectsL10ControllerCTf1nnc_n(v28, v8, a1, a2);

      MEMORY[0x19A8BEB40](v28, -1, -1);

      return v26;
    }
  }

  v30 = v8;
  v31 = v3;
  v29[1] = v29;
  MEMORY[0x1EEE9AC00](v10);
  v32 = v29 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v32, v9);
  v11 = 0;
  v12 = 0;
  v3 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v8 = (v13 + 63) >> 6;
  while (2)
  {
    v33 = v11;
    while (1)
    {
      if (!v15)
      {
        v17 = v12;
        while (1)
        {
          v12 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            goto LABEL_21;
          }

          v18 = *(v3 + 8 * v12);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v15 = (v18 - 1) & v18;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(*(a1 + 48) + 8 * v19);
      swift_beginAccess();
      v9 = *(a2 + 80);
      if (!v9[2])
      {
        break;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v9 = *(v9[7] + 8 * v21);
      v23 = swift_endAccess();
      if ((*(*v9 + 96))(v23))
      {
        goto LABEL_18;
      }
    }

    swift_endAccess();
LABEL_18:
    v24 = v33;
    *&v32[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    v25 = __OFADD__(v24, 1);
    v11 = v24 + 1;
    if (!v25)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v26 = specialized _NativeSet.extractSubset(using:count:)(v32, v30, v33, a1);

  return v26;
}

void type metadata accessor for _SetStorage<UUID>()
{
  if (!lazy cache variable for type metadata for _SetStorage<UUID>)
  {
    type metadata accessor for UUID();
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<UUID>);
    }
  }
}

void specialized TextEffectsRenderer.externalDisplayLink.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
  *(v2 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v2 + 40) == 1)
  {
    TextEffectsAnimationController.clearDisplayLink()();
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

uint64_t outlined assign with copy of Text.Effect.RenderSegmentation.Effect(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _NativeDictionary<Text.Effect.Identifier, Set<Int>>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<Text.Effect.Identifier, Set<Int>>)
  {
    type metadata accessor for RangeSet<Int>(255, &lazy cache variable for type metadata for Set<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<Text.Effect.Identifier, Set<Int>>);
    }
  }
}

void type metadata accessor for _SetStorage<Text.Effect.Identifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6EC8]);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
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
      *(v3[7] + 8 * result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, [String : CGFloat]>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
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
      *(v3[7] + 8 * result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Text.Effect.Composition(v4, &v11, type metadata accessor for (CFStringRef, Any));
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for _DictionaryStorage<CFStringRef, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>)
  {
    type metadata accessor for CFStringRef(255);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (CFStringRef, Any)()
{
  if (!lazy cache variable for type metadata for (CFStringRef, Any))
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CFStringRef, Any));
    }
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for TextEffectsAnimationController.Timing.State(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for TextEffectsAnimationController.Timing.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Duration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Duration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t getEnumTag for TextEffectsAnimationController.Duration(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TextEffectsAnimationController.Duration(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

char *specialized Text.Effect.Tokenizer.init(_:range:)(CFStringRef string, CFRange range)
{
  v2 = CFStringTokenizerCreate(0, string, range, 0, 0);
  Token = CFStringTokenizerAdvanceToNextToken(v2);
  v4 = MEMORY[0x1E69E7CC0];
  if (Token)
  {
    while (1)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v2);
      v6 = Text.Layout.CharacterIndex.init(_:)();
      result = (CurrentTokenRange.location + CurrentTokenRange.length);
      if (__OFADD__(CurrentTokenRange.location, CurrentTokenRange.length))
      {
        break;
      }

      result = Text.Layout.CharacterIndex.init(_:)();
      if (result < v6)
      {
        goto LABEL_11;
      }

      v8 = result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      if (!CFStringTokenizerAdvanceToNextToken(v2))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    return v4;
  }

  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

Swift::Int specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE80](a1);
    MEMORY[0x19A8BDE60](a2);
    result = Hasher._finalize()();
    v7 = -1 << *(a3 + 32);
    v8 = result & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = (*(a3 + 48) + 16 * v8);
        if (*v10 == a1)
        {
          v11 = v10[1];
          if (__OFSUB__(a2, v11))
          {
            __break(1u);
            return result;
          }

          if (v11 == a2)
          {
            return 1;
          }
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  return 0;
}

Swift::Int specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](a1);
  result = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = result & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    if (__OFSUB__(a1, v8))
    {
      break;
    }

    result = v8 == a1;
    if (v8 != a1)
    {
      v6 = (v6 + 1) & v7;
      if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t Text.Effect.AttributeTracker.needsUpdate(for:state:interval:consideringRestart:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (*(a2 + 40))
  {
    swift_beginAccess();
    if (*(*(v6 + 56) + 16))
    {
      *(v6 + 56) = MEMORY[0x1E69E7CD0];
    }

    if ((a5 & 1) == 0)
    {
      v14 = v11 - v10;
      if (v11 - v10 < 0.0)
      {
        v14 = 0.0;
      }

      if (v14 < *&a3 || v14 > *&a4)
      {
        if ((a6 & 1) == 0 || (swift_beginAccess(), *(v6 + 48) != 2))
        {
          swift_beginAccess();
          v16 = *(v6 + 40);
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
            if (v19)
            {
              LOBYTE(v17) = *(*(v16 + 56) + 8 * v18) != 0;
              return v17 & 1;
            }

LABEL_23:
            LOBYTE(v17) = 0;
            return v17 & 1;
          }

          return v17 & 1;
        }
      }
    }

LABEL_20:
    LOBYTE(v17) = 1;
    return v17 & 1;
  }

  swift_beginAccess();
  v21 = specialized Set.contains(_:)(a1, *(v6 + 56));
  swift_beginAccess();
  v22 = *(v6 + 40);
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v24)
    {
      if (*(*(v22 + 56) + 8 * v23))
      {
        goto LABEL_20;
      }
    }
  }

  if (a5)
  {
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = v11 - v10;
    if (v11 - v10 < 0.0)
    {
      v25 = 0.0;
    }

    if ((v25 < *&a3) | v21 & 1)
    {
      goto LABEL_23;
    }
  }

  v26 = *(a2 + 64);
  v27 = *(a2 + 80);
  v28 = (v26 | v27) == 0;
  if (v26 && v27)
  {
    v29 = *(*v26 + 88);

    v28 = v29(v27);
  }

  LOBYTE(v17) = v28 ^ 1;
  return v17 & 1;
}

uint64_t Text.Effect.AttributeTracker.ValueBox.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v4 = type metadata accessor for Text.Effect.AttributeTracker.Value();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t Text.Effect.AttributeTracker.ValueBox.copy.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for Text.Effect.AttributeTracker.Value();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, &v0[*(v1 + 120)], v3);
  swift_allocObject();
  return Text.Effect.AttributeTracker.ValueBox.init(_:)(v5);
}

BOOL Text.Effect.AttributeTracker.ValueBox.isSettled.getter()
{
  v1 = v0 + *(*v0 + 120);
  v2 = type metadata accessor for Text.Effect.AttributeTracker.Value();
  v3 = v1 + *(v2 + 48);
  if (*(v3 + 8))
  {
    return 1;
  }

  v4 = v1 + *(v2 + 52);
  return (*(v4 + 8) & 1) != 0 || *v4 <= *v3;
}

uint64_t Text.Effect.AttributeTracker.ValueBox.__ivar_destroyer()
{
  v1 = *(*v0 + 120);
  v2 = type metadata accessor for Text.Effect.AttributeTracker.Value();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t Text.Effect.AttributeTracker.ValueBox.deinit()
{
  v1 = *(*v0 + 120);
  v2 = type metadata accessor for Text.Effect.AttributeTracker.Value();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Text.Effect.AttributeTracker.ValueBox.__deallocating_deinit()
{
  Text.Effect.AttributeTracker.ValueBox.deinit();

  return swift_deallocClassInstance();
}

void Text.Effect.AttributeTracker.Key.hash(into:)()
{
  MEMORY[0x19A8BDE60](*v0);
  MEMORY[0x19A8BDE60](*(v0 + 8));
  MEMORY[0x19A8BDE60](*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v1);
  }

  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v2);
  }
}

Swift::Int Text.Effect.AttributeTracker.Key.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  MEMORY[0x19A8BDE60](v4);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v3);
  }

  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = v0[5];
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.AttributeTracker.Key()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  MEMORY[0x19A8BDE60](v4);
  if (v5 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v3);
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x19A8BDE60](v6);
  return Hasher._finalize()();
}