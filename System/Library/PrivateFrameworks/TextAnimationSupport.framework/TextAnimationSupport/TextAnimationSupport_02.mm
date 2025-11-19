uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v16 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    v36[0] = v17;
    v36[1] = v18;
    a2(v35, v36);
    v20 = v35[0];
    v19 = v35[1];
    v21 = *v37;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v22;
        specialized _NativeDictionary.copy()();
        v22 = v31;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a4 & 1);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v30 = *v37;
    if (v28)
    {
      v12 = (v30[7] + 8 * v22);
      v14 = *v12 + v19;
      if (__OFADD__(*v12, v19))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + 8 * v22) = v20;
      *(v30[7] + 8 * v22) = v19;
      v13 = v30[2];
      v12 = v30 + 2;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }
    }

    v9 &= v9 - 1;
    *v12 = v14;
    a4 = 1;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = specialized Set._Variant.remove(_:)(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t TextRenderLayer.segmentIndices(for:)(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v15 = MEMORY[0x1E69E7CD0];
  if ((*(v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags) & 8) == 0)
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices;
    v8 = (v4 + 63) >> 6;

    for (i = 0; v6; result = specialized Set.formUnion<A>(_:)(v14))
    {
LABEL_11:
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = *(*(a1 + 48) + ((i << 9) | (8 * v11)));
        swift_beginAccess();
        if (*(*(v1 + v7) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if (v13)
          {
            break;
          }
        }

        result = swift_endAccess();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      swift_endAccess();
    }

LABEL_7:
    while (1)
    {
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v15;
      }

      v6 = *(a1 + 56 + 8 * v10);
      ++i;
      if (v6)
      {
        i = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Set.formSymmetricDifference(_:)(uint64_t result)
{
  v2 = result;
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
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.remove(_:)(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v11);
        v13 = Hasher._finalize()();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      result = specialized Set._Variant.insert(_:)(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + 8 * v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t Text.Effect.Keyframes.Storage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void TextRenderLayer.displaceSublayers()()
{
  v1 = type metadata accessor for Text.Layout.Line();
  v162 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v164 = v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v157 - v4;
  v181 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v181);
  v180 = v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v179);
  v178 = v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v171 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v168 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v183 = v157 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v170 = v157 - v12;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v157 - v14;
  v16 = type metadata accessor for TextRenderLayer.Layout(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v200 = v0;
  outlined init with copy of TextRenderLayer.Layout?(&v0[v20], v15, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v15, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v15, v19, type metadata accessor for TextRenderLayer.Layout);
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v25 = v19;
  v26 = *&v19[*(v16 + 24)];
  v27 = *(v26 + 16);
  if (!v27)
  {
    v32 = *(MEMORY[0x1E695F050] + 16);
    v176 = *(MEMORY[0x1E695F050] + 24);
LABEL_63:
    v216.origin.x = v21;
    v216.origin.y = v22;
    v216.size.width = v32;
    v123 = v176;
    v216.size.height = v176;
    IsNull = CGRectIsNull(v216);
    v125 = v200;
    v126 = &v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
    v127 = *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
    v128 = *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8];
    if (IsNull)
    {
      v129 = v126[2];
      v130 = v126[3];
      v202.f64[0] = *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
      v201.f64[0] = v128;
      v199 = v129;
      v198.f64[0] = v130;
    }

    else
    {
      v202.f64[0] = CGRect.outset(by:)(*&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets], *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets + 8], *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets + 16], *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets + 24], v21 + v127, v22 + v128, v32, v123);
      v201.f64[0] = v131;
      v199 = v132;
      v198.f64[0] = v133;
      v127 = *&v125[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
      v128 = *&v125[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8];
      v129 = *&v125[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 16];
      v130 = *&v125[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 24];
    }

    v134 = v127;
    v135 = v128;
    v136 = v129;
    v137 = v130;
    *&v197 = CGRectGetMinY(*&v127);
    v138 = v202.f64[0];
    v217.origin.x = v202.f64[0];
    v139 = v201.f64[0];
    v217.origin.y = v201.f64[0];
    v140 = v199;
    v217.size.width = v199;
    v141 = v198.f64[0];
    v217.size.height = v198.f64[0];
    *&v197 = *&v197 - CGRectGetMinY(v217);
    v218.origin.x = v134;
    v218.origin.y = v128;
    v218.size.width = v129;
    v218.size.height = v130;
    MinX = CGRectGetMinX(v218);
    v219.origin.x = v138;
    v219.origin.y = v139;
    v219.size.width = v140;
    v219.size.height = v141;
    MinX = MinX - CGRectGetMinX(v219);
    v220.origin.x = v138;
    v220.origin.y = v139;
    v220.size.width = v140;
    v220.size.height = v141;
    *&v195 = CGRectGetMaxY(v220);
    v221.origin.x = v134;
    v221.origin.y = v128;
    v221.size.width = v129;
    v221.size.height = v130;
    v142 = *&v195 - CGRectGetMaxY(v221);
    v222.origin.x = v138;
    v143 = v142;
    v222.origin.y = v139;
    v222.size.width = v140;
    v222.size.height = v141;
    MaxX = CGRectGetMaxX(v222);
    v223.origin.x = v134;
    v145 = MinX;
    v223.origin.y = v128;
    v223.size.width = v129;
    v146 = v197;
    v223.size.height = v130;
    v147 = MaxX - CGRectGetMaxX(v223);
    v148 = &v125[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement];
    if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
    {
      *v148 = v146;
      v148[1] = v145;
      v148[2] = v143;
      v148[3] = v147;
      if ([v125 delegate])
      {
        type metadata accessor for TextRenderSurface();
        if (swift_dynamicCastClass())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v150 = Strong;
            TextEffectsRenderer.updateDisplacementAndBounds(changed:)(0);
          }
        }

        swift_unknownObjectRelease();
        v125 = v200;
      }
    }

    if (![v125 delegate])
    {
      goto LABEL_81;
    }

    type metadata accessor for TextRenderSurface();
    if (swift_dynamicCastClass())
    {
      v151 = swift_unknownObjectWeakLoadStrong();
      if (v151)
      {
        v152 = v151;
        v153 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags;
        v154 = v151[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags];
        v151[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags] = v154 | 2;
        if ((v154 & 1) == 0)
        {
          v155 = swift_unknownObjectWeakLoadStrong();
          _NSTextCustomRenderingDelegateInvalidateInteractionGeometry(v155);
          swift_unknownObjectRelease();
          if ((v152[v153] & 4) != 0)
          {
            v156 = swift_unknownObjectWeakLoadStrong();
            _NSTextCustomRenderingDelegateSetNeedsFrameUpdate(v156);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v152[v153] = 0;

          goto LABEL_81;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_81:
    outlined destroy of Text.Effect.Composition(v25, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  v191 = v16;
  v167 = &v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
  v177 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  v199 = *&OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v28 = *&v200[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  v175 = v26 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
  v163 = v23;
  swift_beginAccess();
  v29 = 0;
  *&v195 = 0;
  v30 = v24;
  v31 = 0.0;
  v161 = v21;
  v160 = v22;
  v159 = v30;
  v32 = v30;
  v176 = v163;
  v166 = v1;
  v185 = v26;
  v169 = v27;
  v188 = v28;
  v193 = v25;
  v158 = v5;
  v165 = (v162 + 8);
  v157[1] = v162 + 16;
  while ((v29 & 0x8000000000000000) == 0)
  {
    if (v29 >= *(v26 + 16))
    {
      goto LABEL_91;
    }

    v173 = v22;
    v174 = v21;
    v33 = *(v171 + 72);
    v34 = v170;
    outlined init with copy of Text.Effect.Composition(v175 + v33 * v29, v170, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v35 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
    v36 = outlined destroy of Text.Effect.Composition(v34, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    MEMORY[0x1EEE9AC00](v36);
    v157[-2] = v25;
    v157[-1] = v35;
    v172 = v35;
    v37 = v27;
    v38 = v195;
    v40 = specialized Collection.prefix(while:)(partial apply for closure #1 in TextRenderLayer.displaceSublayers(), &v157[-4], v29, v37);
    v29 = v39;
    v41 = *v167;
    v187 = *(v167 + 1);
    v42 = *(v28 + 112);
    v190 = v41;
    v189 = v42;
    v192 = v40;
    v186 = v33;
    if (v40 != v39)
    {
      if (v39 < v40)
      {
        goto LABEL_94;
      }

      if (v40 >= v39)
      {
        goto LABEL_95;
      }

      v44 = v40;
      v45 = v175 + v40 * v33;
      v46 = 0uLL;
      v47 = 0.0;
      v48 = 0.0;
      v49 = 0uLL;
      v50 = v183;
      v182 = v29;
      while ((v44 & 0x8000000000000000) == 0)
      {
        if (v44 >= *(v26 + 16))
        {
          goto LABEL_83;
        }

        v201 = v49;
        v202 = v46;
        outlined init with copy of Text.Effect.Composition(v45, v50, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v52 = v178;
            outlined init with take of TextRenderLayer.Layout(v50, v178, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v53 = v52 + *(v179 + 36);
            if (v48 <= *v53)
            {
              v48 = *v53;
            }

            if (v47 <= *v53)
            {
              v47 = *v53;
            }

            v198 = *(v53 + 8);
            outlined destroy of Text.Effect.Composition(v52, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v49 = vbslq_s8(vcgeq_f64(v198, v201), v198, v201);
            v46 = vbslq_s8(vcgeq_f64(v198, v202), v198, v202);
          }

          else
          {
            v54 = v180;
            outlined init with take of TextRenderLayer.Layout(v50, v180, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v55 = v54 + *(v181 + 24);
            v56 = type metadata accessor for Text.Effect.Composition(0);
            MinX = COERCE_DOUBLE(v157);
            v57 = *(v55 + *(v56 + 24));
            MEMORY[0x1EEE9AC00](v56);
            v58 = v190;
            v157[-6] = v55;
            v157[-5] = v58;
            v59 = v187;
            v60 = v189;
            v157[-4] = v187;
            v157[-3] = v60;
            v61 = v188;
            v157[-2] = v188;
            v63 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.lineBreakingMetrics(context:), 0.0, 0.0, 0.0, 0.0, &v157[-8], v57);
            v198 = v64;
            v197 = v65;
            MinX = COERCE_DOUBLE(v157);
            if (v48 <= v63)
            {
              v48 = v63;
            }

            v157[-6] = MEMORY[0x1EEE9AC00](v62).n128_u64[0];
            v157[-5] = v55;
            v157[-4] = v58;
            v33 = v186;
            v157[-3] = v59;
            v157[-2] = v60;
            v29 = v182;
            v157[-1] = v61;
            v66 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.metrics(at:context:), 0.0, 0.0, 0.0, 0.0, &v157[-8], v57);
            v195 = v67;
            v194 = v68;
            v50 = v183;
            v69 = v54;
            v26 = v185;
            outlined destroy of Text.Effect.Composition(v69, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            if (v47 <= v66)
            {
              v47 = v66;
            }

            v70.f64[0] = v198.f64[0];
            *&v70.f64[1] = v197;
            *&v71.f64[0] = v195;
            *&v71.f64[1] = v194;
            v49 = vbslq_s8(vcgeq_f64(v70, v201), v70, v201);
            v46 = vbslq_s8(vcgeq_f64(v71, v202), v71, v202);
          }
        }

        else
        {
          outlined destroy of Text.Effect.Composition(v50, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v46 = v202;
          v49 = v201;
        }

        ++v44;
        v45 += v33;
        if (v29 == v44)
        {
          v201 = v49;
          v202 = v46;
          v43 = v47 - v48;
          v25 = v193;
          v40 = v192;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v202 = 0u;
    v43 = 0.0;
    v201 = 0u;
LABEL_29:
    v204[0] = v31 + v43;
    v203 = 0.0;
    v72 = v200;
    v73 = [v200 sublayers];
    if (!v73)
    {
      goto LABEL_100;
    }

    v74 = v73;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
    MinX = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

    MEMORY[0x1EEE9AC00](v75);
    v157[-8] = &v203;
    v157[-7] = v204;
    v157[-6] = v25;
    v76 = v190;
    v157[-5] = v72;
    v157[-4] = v76;
    v77 = v189;
    v157[-3] = v187;
    v157[-2] = v77;
    v157[-1] = v188;
    v78 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7CGPointVs5NeverOTg5(partial apply for closure #2 in TextRenderLayer.displaceSublayers(), &v157[-10], v40, v29);
    v79 = v78;
    *&v195 = v38;
    if (v40 != v29)
    {
      if (v29 < v40)
      {
        goto LABEL_96;
      }

      v89 = 0;
      v90 = 0;
      *&v198.f64[0] = v78 + 32;
      *&v197 = *&MinX & 0xC000000000000001;
      v91 = *&MinX & 0xFFFFFFFFFFFFFF8;
      v92 = *&MinX + 32;
      v93 = 16 * v40;
      v94 = v40;
      while (v29 != v94)
      {
        v95 = *(v79 + 16);
        if (v90 == v95)
        {
          goto LABEL_31;
        }

        if (v90 >= v95)
        {
          goto LABEL_85;
        }

        if (v40 < 0)
        {
          goto LABEL_86;
        }

        v96 = *&v200[*&v199];
        if (v94 >= *(v96 + 16))
        {
          goto LABEL_87;
        }

        v98 = *(*&v198.f64[0] + v89);
        v97 = *(*&v198.f64[0] + v89 + 8);
        v99 = v96 + v93 + v89;
        v100 = *(v99 + 32);
        v101 = *(v99 + 40);
        v102 = v203;
        v103 = *(v193 + *(v191 + 20));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v199;
        v106 = v200;
        *&v200[*&v199] = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
          v105 = v199;
          v106 = v200;
          v96 = v115;
        }

        if (v94 >= *(v96 + 16))
        {
          goto LABEL_88;
        }

        v107 = v98 - v102 * v103;
        v108 = v96 + v93 + v89;
        *(v108 + 32) = v107;
        *(v108 + 40) = v97;
        *&v106[*&v105] = v96;
        if (v197)
        {
          v109 = MEMORY[0x19A8BDB80](v94, *&MinX);
        }

        else
        {
          if (v94 >= *(v91 + 16))
          {
            goto LABEL_89;
          }

          v109 = *(v92 + 8 * v94);
        }

        v110 = v109;
        ++v94;
        [v109 frame];
        v113 = v107 + v111 - v100;
        v114 = v97 + v112 - v101;
        [v110 frame];
        [v110 setFrame_];

        v89 += 16;
        ++v90;
        v40 = v192;
        if (v29 == v94)
        {
          goto LABEL_31;
        }
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      break;
    }

LABEL_31:

    v80 = v166;
    v81 = v168;
    v26 = v185;
    v27 = v169;
    if (__OFSUB__(v29, v40))
    {
      goto LABEL_92;
    }

    v25 = v193;
    v28 = v188;
    if (v29 - v40 != 1)
    {
      goto LABEL_38;
    }

    if (v40 == v29)
    {
      goto LABEL_97;
    }

    if (v40 < 0)
    {
      goto LABEL_98;
    }

    if (v40 >= *(v185 + 16))
    {
      goto LABEL_99;
    }

    outlined init with copy of Text.Effect.Composition(v175 + v40 * v186, v168, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Text.Effect.Composition(v81, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
LABEL_38:
      v82 = v164;
      Text.Layout.subscript.getter();
      Text.Layout.Line.typographicBounds.getter();
      (*v165)(v82, v80);
      y = v208 - v210;
      height = v210 + v211;
      x = v207 - *(v25 + *(v191 + 20)) * v203;
      width = v209 + v203;
      goto LABEL_39;
    }

    v116 = *v81;
    v198.f64[0] = *(v81 + 8);
    v117 = *(v116 + 16);
    x = v161;
    y = v160;
    width = v159;
    height = v163;
    v118 = v158;
    v119 = v165;
    if (v117)
    {
      v120 = v116 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v121 = *(v162 + 72);
      v122 = *(v162 + 16);
      x = v161;
      y = v160;
      width = v159;
      height = v163;
      do
      {
        v122(v118, v120, v80);
        Text.Layout.Line.typographicBounds.getter();
        v225.origin.x = v204[4];
        v225.size.width = v204[6];
        v225.origin.y = v204[5] - v205;
        v225.size.height = v205 + v206;
        v214.origin.x = x;
        v214.origin.y = y;
        v214.size.width = width;
        v214.size.height = height;
        v215 = CGRectUnion(v214, v225);
        x = v215.origin.x;
        y = v215.origin.y;
        width = v215.size.width;
        height = v215.size.height;
        (*v119)(v118, v80);
        v120 += v121;
        --v117;
      }

      while (v117);
    }

    v25 = v193;
    v26 = v185;
    v27 = v169;
    v28 = v188;
LABEL_39:
    v224.origin.y = v31 + y;
    v87 = v202.f64[0] - v201.f64[0] + v204[0];
    v224.size.height = height + v87 - v31;
    v212.origin.x = v174;
    v212.origin.y = v173;
    v212.size.width = v32;
    v212.size.height = v176;
    v224.origin.x = x;
    v224.size.width = width;
    v213 = CGRectUnion(v212, v224);
    v21 = v213.origin.x;
    v22 = v213.origin.y;
    v32 = v213.size.width;
    v88 = v213.size.height;

    if (v27 < v29)
    {
      goto LABEL_93;
    }

    v176 = v88;
    v31 = v202.f64[1] - v201.f64[1] + v87;
    if (v29 == v27)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

Swift::Void __swiftcall TextRenderLayer.layoutSublayers()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Text.Effect.Composition.Run(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v375 = v358 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v377);
  v367 = v358 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v404 = v358 - v8;
  v9 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v370 = v358 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v397 = v358 - v12;
  v13 = type metadata accessor for LayoutDirection();
  v380 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v369 = v358 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v368 = v358 - v16;
  v396 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v383 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v399 = v358 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v401 = v358 - v19;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v21 = v20;
  v378 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v382 = (v358 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v407 = v358 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v398 = (v358 - v27);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v23);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v358 - v29;
  v388 = type metadata accessor for TextRenderLayer.Layout(0);
  v400 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388);
  v387 = v358 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v33 = v32;
  v391 = *(v32 - 8);
  *&v34 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v390 = v358 - v35;
  v420.receiver = v1;
  v420.super_class = ObjectType;
  objc_msgSendSuper2(&v420, sel_layoutSublayers, v34);
  v36 = *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  v37 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags;
  if (*(*(v36 + 112) + 56) != *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = 0;
    [v1 setSublayers_];
    v47 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
    swift_beginAccess();
    *&v1[v47] = MEMORY[0x1E69E7CC0];

    return;
  }

  v364 = v33;
  v38 = v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags];
  if (v38 < 0)
  {
    v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = v38 & 0x7F;
    if ([v1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      if (swift_dynamicCastClass())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (Strong)
        {
          TextEffectsRenderer.refreshRenderingAttributes()();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v394 = v21;
  v39 = v1[v37];
  v385 = v30;
  if ((v39 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v1[v37] = v39 & 0xDF;
  v40 = *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment];
  v41 = v40;
  specialized Text.Effect.Markers.init(fragment:)(v40);
  v43 = v42;
  v44 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers;
  if (!*&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers])
  {
    if (!v42)
    {
      goto LABEL_16;
    }

LABEL_14:
    *&v1[v44] = v43;

    if ((v1[v37] & 0x10) == 0)
    {
      v1[v37] |= 0x10u;
    }

    goto LABEL_16;
  }

  if (!v42)
  {
    goto LABEL_14;
  }

  v46 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO7MarkersV6MarkerV_Tt1g5(v45, v43);

  if ((v46 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  v49 = v1[v37];
  if ((v49 & 1) == 0)
  {
    *&v50 = 0.0;
    if ((v1[v37] & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v363 = v13;
  v365 = v4;
  v389 = v36;
  v393 = TextRenderLayer.displayScale.getter();
  v51 = v1[v37];
  if ((v51 & 0x4B) != 2)
  {
    v1[v37] = ~v51 & 2 | v51 & 0xB6;
  }

  v362 = v37;
  v52 = MEMORY[0x1E69E7CC0];
  *&v418 = MEMORY[0x1E69E7CC0];
  v419 = MEMORY[0x1E69E7CC0];
  v416 = MEMORY[0x1E69E7CC0];
  v417 = MEMORY[0x1E69E7CC0];
  v53 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  swift_beginAccess();
  v54 = *&v1[v53];
  v55 = *(v54 + 16);
  v402 = v1;
  v56 = v401;
  v57 = v394;
  v395 = v53;
  if (v55)
  {

    v58 = MEMORY[0x1E69E7CC0];
    v59 = 32;
    v403 = MEMORY[0x1E69E7CC0];
    v405 = MEMORY[0x1E69E7CC0];
    v406 = MEMORY[0x1E69E7CC0];
    do
    {
      v62 = *(v54 + v59);
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v65 = (v62 & 0x3FFFFFFFFFFFFFFFLL);
          MEMORY[0x19A8BD720]();
          if (*((v416 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v416 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v57 = v394;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v58 = v416;
        }

        else
        {
          v66 = (v62 & 0x3FFFFFFFFFFFFFFFLL);
          MEMORY[0x19A8BD720]();
          if (*((v417 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v417 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v57 = v394;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v403 = v417;
        }
      }

      else if (v63)
      {
        v64 = (v62 & 0x3FFFFFFFFFFFFFFFLL);
        MEMORY[0x19A8BD720]();
        if (*((v418 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v418 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v394;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v406 = *&v418;
      }

      else
      {
        v60 = (v62 & 0x3FFFFFFFFFFFFFFFLL);
        v61 = v62;
        MEMORY[0x19A8BD720]();
        if (*((v419 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v419 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v405 = v419;
        v56 = v401;
      }

      v59 += 8;
      --v55;
    }

    while (v55);
    v384 = *&v58;

    v1 = v402;
  }

  else
  {
    v403 = *&v52;
    v405 = *&v52;
    v406 = v52;
    v384 = v52;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = *&v1[v395];
  v37 = v362;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v75 + 16));
  }

  else
  {
    v76 = v395;
    *&v1[v76] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20TextAnimationSupport0H11RenderLayerC07SegmentL033_EB92A35C21DD52D72B91A53CA7419194LLO_Tt1g5(0, *(v75 + 24) >> 1);
  }

  swift_endAccess();
  v77 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices;
  swift_beginAccess();
  if (*(*&v1[v77] + 16))
  {
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v415 = *&v1[v77];
    *&v1[v77] = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<Text.Effect.Identifier, Set<Int>>();
    _NativeDictionary.removeAll(isUnique:)(v78);
    *&v1[v77] = v415;
  }

  swift_endAccess();
  v79 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v79;
  v82 = *&v1[v79];
  v408 = v77;
  v392 = v81;
  if (v80)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v82 + 16));
  }

  else
  {
    *&v1[v81] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7CGPointV_Tt1g5(0, *(v82 + 24) >> 1);
  }

  v83 = v364;
  v84 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
  v85 = v390;
  RangeSet.init()();
  v86 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v87 = *(v391 + 40);
  v358[1] = v86;
  v87(&v1[v86], v85, v83);
  swift_endAccess();
  v88 = *v84;
  v386 = v84[1];
  v89 = *(v389 + 112);
  v90 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v50 = v385;
  outlined init with copy of TextRenderLayer.Layout?(&v1[v90], v385, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v91 = v388;
  v92 = &unk_1ED790000;
  if ((*(v400 + 48))(v50, 1, v388) == 1)
  {

    outlined destroy of TextRenderLayer.Layout?(v50, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    *&v381 = 0.0;
    goto LABEL_268;
  }

  v93 = v91;
  v94 = v387;
  outlined init with take of TextRenderLayer.Layout(v50, v387, type metadata accessor for TextRenderLayer.Layout);
  v95 = *(v94 + *(v93 + 24));
  v96 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers;
  v358[0] = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  v376 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_geometryObserver;
  v385 = v88;

  v384 = *&v89;

  v403 = v95;

  v366 = v96;
  swift_beginAccess();
  *&v381 = 0.0;
  v379 = 0;
  v97 = 0;
  v390 = (v378 + 48);
  v391 = v378 + 56;
  v361 = *MEMORY[0x1E697E7D0];
  v359 = (v380 + 8);
  v360 = (v380 + 104);
  v98 = *MEMORY[0x1E695F050];
  v373 = *(MEMORY[0x1E695F050] + 8);
  v374 = v98;
  v99 = *(MEMORY[0x1E695F050] + 16);
  v371 = *(MEMORY[0x1E695F050] + 24);
  v372 = v99;
  while (1)
  {
    v100 = v399;
    v101 = *(v403 + 16);
    v69 = v407;
    if (v97 == v101)
    {
      v102 = 1;
    }

    else
    {
      if (v97 >= v101)
      {
        goto LABEL_215;
      }

      v103 = v382;
      v104 = v403 + ((*(v383 + 80) + 32) & ~*(v383 + 80)) + *(v383 + 72) * v97;
      v105 = *(v57 + 48);
      *v382 = v97;
      outlined init with copy of Text.Effect.Composition(v104, v103 + v105, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with take of TextRenderLayer.Layout(v103, v407, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
      v102 = 0;
      ++v97;
      v69 = v407;
    }

    (*v391)(v69, v102, 1, v57);
    v106 = v69;
    v107 = v398;
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v106, v398, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    if ((*v390)(v107, 1, v57) == 1)
    {

      v325 = v419;
      if (v419 >> 62)
      {
        if (v419 < 0)
        {
          v331 = v419;
        }

        else
        {
          v331 = v419 & 0xFFFFFFFFFFFFFF8;
        }

        v326 = MEMORY[0x19A8BDCD0](v331);
        if (!v326)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v326 = *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v326)
        {
          goto LABEL_228;
        }
      }

      if (v326 < 1)
      {
        goto LABEL_278;
      }

      for (i = 0; i != v326; ++i)
      {
        if ((v325 & 0xC000000000000001) != 0)
        {
          v328 = MEMORY[0x19A8BDB80](i, v325);
        }

        else
        {
          v328 = *(v325 + 8 * i + 32);
        }

        v329 = v328;
        [v328 removeFromSuperlayer];
      }

LABEL_228:
      v332 = v418;
      if (v418 >> 62)
      {
        if (v418 < 0)
        {
          v337 = v418;
        }

        else
        {
          v337 = v418 & 0xFFFFFFFFFFFFFF8;
        }

        v333 = MEMORY[0x19A8BDCD0](v337);
        if (!v333)
        {
          goto LABEL_240;
        }
      }

      else
      {
        v333 = *((v418 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v333)
        {
          goto LABEL_240;
        }
      }

      if (v333 < 1)
      {
        goto LABEL_279;
      }

      for (j = 0; j != v333; ++j)
      {
        if ((v332 & 0xC000000000000001) != 0)
        {
          v335 = MEMORY[0x19A8BDB80](j, v332);
        }

        else
        {
          v335 = *(v332 + 8 * j + 32);
        }

        v336 = v335;
        [v335 removeFromSuperlayer];
      }

LABEL_240:
      v338 = v417;
      if (v417 >> 62)
      {
        if (v417 < 0)
        {
          v343 = v417;
        }

        else
        {
          v343 = v417 & 0xFFFFFFFFFFFFFF8;
        }

        v339 = MEMORY[0x19A8BDCD0](v343);
        if (!v339)
        {
          goto LABEL_252;
        }
      }

      else
      {
        v339 = *((v417 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v339)
        {
          goto LABEL_252;
        }
      }

      if (v339 < 1)
      {
        goto LABEL_280;
      }

      for (k = 0; k != v339; ++k)
      {
        if ((v338 & 0xC000000000000001) != 0)
        {
          v341 = MEMORY[0x19A8BDB80](k, v338);
        }

        else
        {
          v341 = *(v338 + 8 * k + 32);
        }

        v342 = v341;
        [v341 removeFromSuperlayer];
      }

LABEL_252:
      v344 = v416;

      if (v344 >> 62)
      {
        if (v344 < 0)
        {
          v349 = v344;
        }

        else
        {
          v349 = v344 & 0xFFFFFFFFFFFFFF8;
        }

        v345 = MEMORY[0x19A8BDCD0](v349);
        v37 = v362;
        if (v345)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v345 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v37 = v362;
        if (v345)
        {
LABEL_254:
          if (v345 < 1)
          {
            goto LABEL_281;
          }

          for (m = 0; m != v345; ++m)
          {
            if ((v344 & 0xC000000000000001) != 0)
            {
              v347 = MEMORY[0x19A8BDB80](m, v344);
            }

            else
            {
              v347 = *(v344 + 8 * m + 32);
            }

            v348 = v347;
            [v347 removeFromSuperlayer];
          }
        }
      }

      outlined destroy of Text.Effect.Composition(v387, type metadata accessor for TextRenderLayer.Layout);
      if (v379)
      {
        v92 = &unk_1ED790000;
        v350 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer;
        v1 = v402;
        swift_beginAccess();
        if (*&v1[v350])
        {
          goto LABEL_271;
        }

        v351 = [objc_allocWithZone(type metadata accessor for SharedDynamicLayer()) init];
        [v351 setDelegate_];
        [v351 setContentsScale_];
        v352 = *&v1[v350];
        *&v1[v350] = v351;
        v92 = &unk_1ED790000;
        goto LABEL_270;
      }

      v1 = v402;
      v92 = &unk_1ED790000;
LABEL_268:
      v353 = v92[447];
      swift_beginAccess();
      v354 = *&v1[v353];
      if (!v354)
      {
        goto LABEL_271;
      }

      [v354 removeFromSuperlayer];
      v352 = *&v1[v353];
      *&v1[v353] = 0;
LABEL_270:

LABEL_271:
      TextRenderLayer.updateSharedDrawingBounds()();
      v355 = v92[447];
      swift_beginAccess();
      v356 = *&v1[v355];
      if (v356)
      {
        v357 = v356;
        [v1 addSublayer_];
      }

      v49 = v1[v37];
      if ((v49 & 0x10) != 0)
      {
        v49 &= ~0x10u;
        v1[v37] = v49;
      }

      v50 = v381;
      if ((v49 & 4) == 0)
      {
LABEL_19:
        if ((v49 & 2) != 0)
        {
          v1[v37] = v49 & 0xFD;
          TextRenderLayer.displaceSublayers()();
          v49 = v1[v37];
          if ((v49 & 0x40) == 0)
          {
LABEL_21:
            if ((v49 & 0x10) == 0)
            {
LABEL_223:
              _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v50);
              return;
            }

LABEL_45:
            v1[v37] = v49 & 0xEF;
            v67 = [v1 sublayers];
            if (!v67)
            {
              goto LABEL_223;
            }

            v68 = v67;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
            *&v69 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

            if (v69 >> 62)
            {
              goto LABEL_218;
            }

            v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v70)
            {
              goto LABEL_222;
            }

            goto LABEL_48;
          }
        }

        else if ((v49 & 0x40) == 0)
        {
          goto LABEL_21;
        }

        v1[v37] = v49 & 0xBF;
        TextRenderLayer.updateClippingBounds()();
        TextRenderLayer.updateSharedDrawingBounds()();
        v49 = v1[v37];
        if ((v49 & 0x10) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_45;
      }

LABEL_18:
      v1[v37] = v49 & 0xFB;
      TextRenderLayer.computeLayoutBoundsNaturalOutsets()();
      v49 = v1[v37];
      goto LABEL_19;
    }

    v50 = *v107;
    outlined init with take of TextRenderLayer.Layout(v107 + *(v57 + 48), v56, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with copy of Text.Effect.Composition(v56, v100, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v400 = v97;
      v113 = *v100;
      v112 = v100[1];
      v114 = v100[2];
      v116 = v100[3];
      v115 = v100[4];
      v118 = v100[5];
      v117 = v100[6];
      if (v419 >> 62)
      {
        if (v419 < 0)
        {
          v224 = v419;
        }

        else
        {
          v224 = v419 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x19A8BDCD0](v224))
        {
          goto LABEL_79;
        }
      }

      else if (*((v419 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_79:
        v119 = specialized RangeReplaceableCollection.removeFirst()(specialized Array.replaceSubrange<A>(_:with:));
        v120 = &v119[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
        *v120 = v113;
        *(v120 + 1) = v112;
        *(v120 + 2) = v114;
        *(v120 + 3) = v116;
        *(v120 + 4) = v115;
        *(v120 + 5) = v118;
        *(v120 + 6) = v117;
        v121 = v119;

        goto LABEL_142;
      }

      v225 = type metadata accessor for TextLinesLayer();
      v226 = objc_allocWithZone(v225);
      v227 = &v226[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
      *v227 = v113;
      *(v227 + 1) = v112;
      *(v227 + 2) = v114;
      *(v227 + 3) = v116;
      *(v227 + 4) = v115;
      *(v227 + 5) = v118;
      *(v227 + 6) = v117;
      v409.receiver = v226;
      v409.super_class = v225;
      v121 = objc_msgSendSuper2(&v409, sel_init);
      [v121 setOpaque_];
LABEL_142:
      [v121 setNeedsDisplay];
      v228 = v395;
      swift_beginAccess();
      v229 = *&v1[v228];
      v230 = v121;
      v231 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v228] = v229;
      v97 = v400;
      v56 = v401;
      if (v231)
      {
        v232 = v228;
      }

      else
      {
        v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v229 + 2) + 1, 1, v229);
        v232 = v395;
        v229 = v266;
        *&v1[v395] = v266;
      }

      v234 = *(v229 + 2);
      v233 = *(v229 + 3);
      if (v234 >= v233 >> 1)
      {
        v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1, v229);
        v232 = v395;
        v229 = v267;
      }

      *(v229 + 2) = v234 + 1;
      *&v229[8 * v234 + 32] = v230;
      *&v1[v232] = v229;
      swift_endAccess();
      v185 = v230;
      v430.origin.x = Text.Effect.RenderSegmentation.Segment.boundingRect.getter();
      x = v430.origin.x;
      y = v430.origin.y;
      width = v430.size.width;
      height = v430.size.height;
      v239 = (v387 + *(v388 + 40));
      v240 = *v239;
      v241 = v239[1];
      v243 = v239[2];
      v242 = v239[3];
      if (!CGRectIsNull(v430))
      {
        v406 = v243;
        v431.origin.x = x;
        v431.origin.y = y;
        v431.size.width = width;
        v431.size.height = height;
        v432 = CGRectStandardize(v431);
        v244 = v242;
        if (v241 != v242)
        {
          v50 = v360;
          v245 = *v360;
          v246 = v368;
          v247 = v361;
          v248 = v363;
          v249 = v432.size.height;
          v250 = v432.size.width;
          v251 = v432.origin.x;
          v252 = v432.origin.y;
          (*v360)(v368, v361, v363);
          v253 = v369;
          v245(v369, v247, v248);
          LOBYTE(v245) = static LayoutDirection.== infix(_:_:)();
          v254 = *v359;
          (*v359)(v253, v248);
          v255 = v246;
          v56 = v401;
          v254(v255, v248);
          v97 = v400;
          v432.origin.y = v252;
          v432.origin.x = v251;
          v432.size.width = v250;
          v432.size.height = v249;
          if (v245)
          {
            v244 = v241;
          }

          else
          {
            v244 = v242;
          }
        }

        v256 = v432.origin.x + v244;
        v257 = v240;
        v258 = v240 + v432.origin.y;
        v259 = v432.size.width - (v241 + v242);
        v260 = v432.size.height - (v257 + v406);
        v433.origin.x = v256;
        v433.origin.y = v258;
        v433.size.width = v259;
        v433.size.height = v260;
        v261 = CGRectGetWidth(v433);
        y = v373;
        x = v374;
        height = v371;
        width = v372;
        if (v261 >= 0.0)
        {
          v434.origin.x = v256;
          v434.origin.y = v258;
          v434.size.width = v259;
          v434.size.height = v260;
          if (CGRectGetHeight(v434) >= 0.0)
          {
            x = v256;
            y = v258;
            width = v259;
            height = v260;
          }

          else
          {
            y = v373;
            x = v374;
            height = v371;
            width = v372;
          }
        }
      }

      v262 = 1.0;
      if ([v1 delegate])
      {
        type metadata accessor for TextRenderSurface();
        if (swift_dynamicCastClass())
        {
          v263 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectRelease();
          if (v263)
          {
            v262 = *&v263[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];

            v264 = 1.0;
            if (v262 == 0.0)
            {
              goto LABEL_162;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v264 = 1.0 / v262;
LABEL_162:
      v435.origin.x = x;
      v435.origin.y = y;
      v435.size.width = width;
      v435.size.height = height;
      v216 = v264 * floor(CGRectGetMinX(v435) / v264);
      v436.origin.x = x;
      v436.origin.y = y;
      v436.size.width = width;
      v436.size.height = height;
      v265 = v264 * ceil(CGRectGetMaxX(v436) / v264);
      v437.origin.x = x;
      v437.origin.y = y;
      v437.size.width = width;
      v437.size.height = height;
      v218 = v264 * floor(CGRectGetMinY(v437) / v264);
      v438.origin.x = x;
      v438.origin.y = y;
      v438.size.width = width;
      v438.size.height = height;
      v219 = v265 - v216;
      v220 = v264 * ceil(CGRectGetMaxY(v438) / v264) - v218;
      [v185 setContentsScale_];

      v221 = 0;
      goto LABEL_194;
    }

    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of TextRenderLayer.Layout(v100, v397, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      if (v418 >> 62)
      {
        if (v418 < 0)
        {
          v173 = v418;
        }

        else
        {
          v173 = v418 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x19A8BDCD0](v173))
        {
          goto LABEL_76;
        }
      }

      else if (*((v418 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_76:
        v109 = specialized RangeReplaceableCollection.removeFirst()(specialized Array.replaceSubrange<A>(_:with:));
        v110 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
        swift_beginAccess();
        v111 = v109;
        outlined assign with copy of Text.Effect.RenderSegmentation.Effect(v397, v109 + v110, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        swift_endAccess();
        [v111 setNeedsDisplay];
        goto LABEL_115;
      }

      v174 = v370;
      outlined init with copy of Text.Effect.Composition(v397, v370, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v175 = type metadata accessor for TextRunsLayer(0);
      v176 = objc_allocWithZone(v175);
      outlined init with copy of Text.Effect.Composition(v174, v176 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v410.receiver = v176;
      v410.super_class = v175;
      v177 = objc_msgSendSuper2(&v410, sel_init);
      [v177 setOpaque_];
      [v177 setNeedsDisplay];

      outlined destroy of Text.Effect.Composition(v174, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v111 = v177;
LABEL_115:
      v178 = v395;
      swift_beginAccess();
      v179 = *&v1[v178];
      v180 = v111;
      v181 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v178] = v179;
      if (v181)
      {
        v182 = v178;
      }

      else
      {
        v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v179 + 2) + 1, 1, v179);
        v182 = v395;
        v179 = v222;
        *&v1[v395] = v222;
      }

      v184 = *(v179 + 2);
      v183 = *(v179 + 3);
      if (v184 >= v183 >> 1)
      {
        v223 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, v179);
        v182 = v395;
        v179 = v223;
      }

      *(v179 + 2) = v184 + 1;
      *&v179[8 * v184 + 32] = v180 | 0x4000000000000000;
      *&v1[v182] = v179;
      swift_endAccess();
      v185 = v180;
      v421.origin.x = Text.Effect.RenderSegmentation.Segment.boundingRect.getter();
      v186 = v421.origin.x;
      v187 = v421.origin.y;
      v188 = v421.size.width;
      v189 = v421.size.height;
      v190 = (v387 + *(v388 + 40));
      v191 = *v190;
      v192 = v190[1];
      v194 = v190[2];
      v193 = v190[3];
      if (!CGRectIsNull(v421))
      {
        v406 = v194;
        v422.origin.x = v186;
        v422.origin.y = v187;
        v422.size.width = v188;
        v422.size.height = v189;
        v423 = CGRectStandardize(v422);
        v195 = v193;
        if (v192 != v193)
        {
          v400 = v97;
          v50 = v360;
          v196 = *v360;
          v197 = v368;
          v198 = v361;
          v199 = v363;
          v200 = v423.size.height;
          v201 = v423.size.width;
          v202 = v423.origin.x;
          v203 = v423.origin.y;
          (*v360)(v368, v361, v363);
          v204 = v369;
          v196(v369, v198, v199);
          LOBYTE(v196) = static LayoutDirection.== infix(_:_:)();
          v205 = *v359;
          (*v359)(v204, v199);
          v206 = v197;
          v56 = v401;
          v205(v206, v199);
          v97 = v400;
          v423.origin.y = v203;
          v423.origin.x = v202;
          v423.size.width = v201;
          v423.size.height = v200;
          if (v196)
          {
            v195 = v192;
          }

          else
          {
            v195 = v193;
          }
        }

        v207 = v423.origin.x + v195;
        v208 = v191;
        v209 = v191 + v423.origin.y;
        v210 = v423.size.width - (v192 + v193);
        v211 = v423.size.height - (v208 + v406);
        v424.origin.x = v207;
        v424.origin.y = v209;
        v424.size.width = v210;
        v424.size.height = v211;
        v212 = CGRectGetWidth(v424);
        v187 = v373;
        v186 = v374;
        v189 = v371;
        v188 = v372;
        if (v212 >= 0.0)
        {
          v425.origin.x = v207;
          v425.origin.y = v209;
          v425.size.width = v210;
          v425.size.height = v211;
          if (CGRectGetHeight(v425) >= 0.0)
          {
            v186 = v207;
            v187 = v209;
            v188 = v210;
            v189 = v211;
          }

          else
          {
            v187 = v373;
            v186 = v374;
            v189 = v371;
            v188 = v372;
          }
        }
      }

      v213 = 1.0;
      if ([v1 delegate])
      {
        type metadata accessor for TextRenderSurface();
        if (swift_dynamicCastClass())
        {
          v214 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectRelease();
          if (v214)
          {
            v213 = *&v214[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];

            v215 = 1.0;
            if (v213 == 0.0)
            {
              goto LABEL_135;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v215 = 1.0 / v213;
LABEL_135:
      v426.origin.x = v186;
      v426.origin.y = v187;
      v426.size.width = v188;
      v426.size.height = v189;
      v216 = v215 * floor(CGRectGetMinX(v426) / v215);
      v427.origin.x = v186;
      v427.origin.y = v187;
      v427.size.width = v188;
      v427.size.height = v189;
      v217 = v215 * ceil(CGRectGetMaxX(v427) / v215);
      v428.origin.x = v186;
      v428.origin.y = v187;
      v428.size.width = v188;
      v428.size.height = v189;
      v218 = v215 * floor(CGRectGetMinY(v428) / v215);
      v429.origin.x = v186;
      v429.origin.y = v187;
      v429.size.width = v188;
      v429.size.height = v189;
      v219 = v217 - v216;
      v220 = v215 * ceil(CGRectGetMaxY(v429) / v215) - v218;
      [v185 setContentsScale_];

      outlined destroy of Text.Effect.Composition(v397, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v221 = 0;
      goto LABEL_194;
    }

    v122 = v404;
    outlined init with take of TextRenderLayer.Layout(v100, v404, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v123 = v122 + *(v377 + 24);
    Text.Effect.Composition.useSharedDrawing(context:)(v385, v386, *&v384, v389);
    LODWORD(v378) = v124;
    v125 = MEMORY[0x1E69E7CD0];
    v413[0] = MEMORY[0x1E69E7CD0];
    v126 = *(type metadata accessor for Text.Effect.Composition(0) + 24);
    v380 = v123;
    v127 = *(v123 + v126);
    v128 = *(v127 + 16);
    v400 = v97;
    v406 = *&v50;
    if (v128)
    {
      v129 = v127 + ((*(v365 + 80) + 32) & ~*(v365 + 80));
      v130 = *(v365 + 72);
      v131 = v375;
      do
      {
        outlined init with copy of Text.Effect.Composition(v129, v131, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendIdentifiers(to:)(v413);
        outlined destroy of Text.Effect.Composition(v131, type metadata accessor for Text.Effect.Composition.Operation);
        v129 += v130;
        --v128;
      }

      while (v128);
      v132 = v413[0];
    }

    else
    {
      v132 = v125;
    }

    *&v50 = 0.0;
    v133 = v132 + 56;
    v134 = 1 << *(v132 + 32);
    v135 = v134 < 64 ? ~(-1 << v134) : -1;
    v136 = v135 & *(v132 + 56);
    v137 = (v134 + 63) >> 6;
    v69 = v381;
    v405 = v132;
    while (v136)
    {
LABEL_95:
      v139 = *(*(v132 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v136)))));
      v140 = v408;
      swift_beginAccess();
      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v69);
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v1;
      v143 = v141;
      v414[0] = *&v142[v140];
      v69 = v414[0];
      *&v142[v140] = 0x8000000000000000;
      v145 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
      v146 = *(v69 + 16);
      v147 = (v144 & 1) == 0;
      v148 = v146 + v147;
      if (__OFADD__(v146, v147))
      {
        goto LABEL_214;
      }

      v149 = v144;
      if (*(v69 + 24) >= v148)
      {
        if ((v143 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v69 = v414[0];
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v148, v143);
        v69 = v414[0];
        v150 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
        if ((v149 & 1) != (v151 & 1))
        {
          goto LABEL_282;
        }

        v145 = v150;
      }

      v1 = v402;
      *&v402[v408] = *&v69;
      if ((v149 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v145, v139, MEMORY[0x1E69E7CD0], v69);
      }

      v136 &= v136 - 1;
      specialized Set._Variant.insert(_:)(v414, *&v406);
      swift_endAccess();
      *&v69 = COERCE_DOUBLE(specialized thunk for @callee_guaranteed () -> (@owned Set<Int>));
      v132 = v405;
    }

    while (1)
    {
      v138 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }

      if (v138 >= v137)
      {
        break;
      }

      v136 = *(v133 + 8 * v138);
      ++v50;
      if (v136)
      {
        v50 = v138;
        goto LABEL_95;
      }
    }

    v381 = v69;

    *&v50 = v406;
    TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v380, *&v406, 0);
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v159 = v158;
    Text.Effect.Composition.useSharedDrawing(context:)(v385, v386, *&v384, v389);
    v161 = v160;
    v162 = v379 | v160;
    v163 = *&v1[v366];

    v164 = Text.Effect.RenderSegmentation.Effect.identifiers.getter();
    v165 = specialized _NativeSet.intersection(_:)(v164, v163);

    v166 = *(v165 + 16);

    v379 = v162;
    if (v166)
    {
      break;
    }

    v97 = v400;
    if (v417 >> 62)
    {
      if (v417 < 0)
      {
        v290 = v417;
      }

      else
      {
        v290 = v417 & 0xFFFFFFFFFFFFFF8;
      }

      v291 = MEMORY[0x19A8BDCD0](v290);
      v56 = v401;
      if (!v291)
      {
LABEL_188:
        v292 = v367;
        outlined init with copy of Text.Effect.Composition(v404, v367, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v293 = type metadata accessor for StaticEffectLayer(0);
        v294 = objc_allocWithZone(v293);
        outlined init with copy of Text.Effect.Composition(v292, &v294[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        *&v294[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex] = *&v50;
        v411.receiver = v294;
        v411.super_class = v293;
        v295 = objc_msgSendSuper2(&v411, sel_init);
        [v295 setOpaque_];
        [v295 setNeedsDisplay];

        outlined destroy of Text.Effect.Composition(v292, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v172 = v295;
        goto LABEL_189;
      }
    }

    else
    {
      v56 = v401;
      if (!*((v417 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_188;
      }
    }

    v170 = specialized RangeReplaceableCollection.removeFirst()(specialized Array.replaceSubrange<A>(_:with:));
    v171 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content;
    swift_beginAccess();
    v172 = v170;
    outlined assign with copy of Text.Effect.RenderSegmentation.Effect(v404, v170 + v171, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    swift_endAccess();
    *&v172[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex] = *&v50;
    [v172 setNeedsDisplay];
LABEL_189:
    v296 = v395;
    swift_beginAccess();
    v297 = *&v1[v296];
    v298 = v172;
    v299 = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v296] = v297;
    if (v299)
    {
      v300 = v296;
    }

    else
    {
      v323 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v297 + 2) + 1, 1, v297);
      v300 = v395;
      v297 = v323;
      *&v1[v395] = v323;
    }

    v302 = *(v297 + 2);
    v301 = *(v297 + 3);
    if (v302 >= v301 >> 1)
    {
      v324 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v301 > 1), v302 + 1, 1, v297);
      v300 = v395;
      v297 = v324;
    }

    *(v297 + 2) = v302 + 1;
    *&v297[8 * v302 + 32] = v298 | 0xC000000000000000;
    *&v1[v300] = v297;
    swift_endAccess();
    v185 = v298;
    [v185 setContentsScale_];
    TextRenderLayer.pixelLength.getter();
    v304 = v303;
    v443.origin.x = v153;
    v443.origin.y = v155;
    v443.size.width = v157;
    v443.size.height = v159;
    v216 = v304 * floor(CGRectGetMinX(v443) / v304);
    v444.origin.x = v153;
    v444.origin.y = v155;
    v444.size.width = v157;
    v444.size.height = v159;
    v305 = v304 * ceil(CGRectGetMaxX(v444) / v304);
    v445.origin.x = v153;
    v445.origin.y = v155;
    v445.size.width = v157;
    v445.size.height = v159;
    v218 = v304 * floor(CGRectGetMinY(v445) / v304);
    v446.origin.x = v153;
    v446.origin.y = v155;
    v446.size.width = v157;
    v446.size.height = v159;
    MaxY = CGRectGetMaxY(v446);

    v307 = v304 * ceil(MaxY / v304);
    outlined destroy of Text.Effect.Composition(v404, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v219 = v305 - v216;
    v220 = v307 - v218;
    v221 = v378;
LABEL_194:
    [v185 setDelegate_];
    [v1 addSublayer_];

    if (v221)
    {
      v308 = swift_unknownObjectWeakLoadStrong();
      if (v308)
      {
        v309 = v308;
        LayerGeometryObserver.clip(bounds:for:)(v185, v216, v218, v219, v220);
        v216 = v310;
        v218 = v311;
        v219 = v312;
        v220 = v313;
      }
    }

    [v185 setFrame_];
    [v185 setBounds_];
    v314 = v392;
    v315 = *&v1[v392];
    v316 = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v314] = v315;
    if (v316)
    {
      v317 = v314;
    }

    else
    {
      v321 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v315 + 2) + 1, 1, v315);
      v317 = v392;
      v315 = v321;
      *&v1[v392] = v321;
    }

    v319 = *(v315 + 2);
    v318 = *(v315 + 3);
    if (v319 >= v318 >> 1)
    {
      v322 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v318 > 1), v319 + 1, 1, v315);
      v317 = v392;
      v315 = v322;
    }

    *(v315 + 2) = v319 + 1;
    v320 = &v315[16 * v319];
    *(v320 + 4) = 0;
    *(v320 + 5) = 0;
    *&v1[v317] = v315;

    outlined destroy of Text.Effect.Composition(v56, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v57 = v394;
  }

  v97 = v400;
  if (v416 >> 62)
  {
    if (v416 < 0)
    {
      v268 = v416;
    }

    else
    {
      v268 = v416 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x19A8BDCD0](v268))
    {
      goto LABEL_168;
    }

LABEL_106:
    v167 = specialized RangeReplaceableCollection.removeFirst()(specialized Array.replaceSubrange<A>(_:with:));
    v168 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content;
    swift_beginAccess();
    v169 = v167;
    outlined assign with copy of Text.Effect.RenderSegmentation.Effect(v404, v167 + v168, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    swift_endAccess();
    *&v169[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex] = *&v50;
    [v169 setNeedsDisplay];
  }

  else
  {
    if (*((v416 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_106;
    }

LABEL_168:
    v269 = v367;
    outlined init with copy of Text.Effect.Composition(v404, v367, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v270 = type metadata accessor for DynamicEffectLayer(0);
    v271 = objc_allocWithZone(v270);
    outlined init with copy of Text.Effect.Composition(v269, &v271[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *&v271[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex] = *&v50;
    v412.receiver = v271;
    v412.super_class = v270;
    v272 = objc_msgSendSuper2(&v412, sel_init);
    [v272 setOpaque_];
    [v272 setNeedsDisplay];

    outlined destroy of Text.Effect.Composition(v269, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v169 = v272;
    [v169 setContentsScale_];
  }

  v273 = v395;
  swift_beginAccess();
  v274 = *&v1[v273];
  v275 = v169;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  *&v1[v273] = v274;
  if (v276)
  {
    v277 = v273;
  }

  else
  {
    v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v274 + 2) + 1, 1, v274);
    v277 = v395;
    v274 = v288;
    *&v1[v395] = v288;
  }

  v279 = *(v274 + 2);
  v278 = *(v274 + 3);
  if (v279 >= v278 >> 1)
  {
    v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v278 > 1), v279 + 1, 1, v274);
    v277 = v395;
    v274 = v289;
  }

  *(v274 + 2) = v279 + 1;
  *&v274[8 * v279 + 32] = v275 | 0x8000000000000000;
  *&v1[v277] = v274;
  swift_endAccess();
  v185 = v275;
  [v185 setContentsScale_];
  if ((v161 & 1) == 0)
  {
    [v185 setHidden_];
    v283 = 16.0;
    v56 = v401;
    v221 = v378;
LABEL_182:
    v439.origin.x = v153;
    v439.origin.y = v155;
    v439.size.width = v157;
    v439.size.height = v159;
    v216 = v283 * floor(CGRectGetMinX(v439) / v283);
    v440.origin.x = v153;
    v440.origin.y = v155;
    v440.size.width = v157;
    v440.size.height = v159;
    v285 = v159;
    v286 = v283 * ceil(CGRectGetMaxX(v440) / v283);
    v441.origin.x = v153;
    v441.origin.y = v155;
    v441.size.width = v157;
    v441.size.height = v285;
    v218 = v283 * floor(CGRectGetMinY(v441) / v283);
    v442.origin.x = v153;
    v442.origin.y = v155;
    v442.size.width = v157;
    v442.size.height = v285;
    v287 = CGRectGetMaxY(v442);

    outlined destroy of Text.Effect.Composition(v404, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v219 = v286 - v216;
    v220 = v283 * ceil(v287 / v283) - v218;
    goto LABEL_194;
  }

  v69 = v380;
  Text.Effect.Composition.needsUpdate(at:context:)(v385, v386, *&v384, v389, *&v1[v358[0]]);
  v221 = v378;
  if ((v280 & 1) == 0)
  {
    [v185 setHidden_];
    TextRenderLayer.pixelLength.getter();
    v283 = v284;
    v56 = v401;
    goto LABEL_182;
  }

  swift_beginAccess();
  v281 = v50 + 1;
  v56 = v401;
  if (__OFADD__(v50, 1))
  {
    goto LABEL_216;
  }

  if (v281 >= v50)
  {
    v413[4] = v50;
    v413[5] = v50 + 1;
    if (v50 != v281)
    {
      v282 = RangeSet._ranges.modify();
      type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
      RangeSet.Ranges._insert(contentsOf:)();
      v282(v413, 0);
    }

    swift_endAccess();
    [v185 setHidden_];

    outlined destroy of Text.Effect.Composition(v404, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v216 = 0.0;
    v218 = 0.0;
    v219 = 0.0;
    v220 = 0.0;
    goto LABEL_194;
  }

LABEL_217:
  __break(1u);
LABEL_218:
  if (v69 < 0)
  {
    v330 = v69;
  }

  else
  {
    v330 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v70 = MEMORY[0x19A8BDCD0](v330);
  if (!v70)
  {
LABEL_222:

    goto LABEL_223;
  }

LABEL_48:
  if (v70 >= 1)
  {
    for (n = 0; n != v70; ++n)
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x19A8BDB80](n, v69);
      }

      else
      {
        v72 = *(v69 + 8 * n + 32);
      }

      v73 = v72;
      [v72 setNeedsDisplay];
    }

    goto LABEL_222;
  }

  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t TextRenderLayer.computeLayoutBoundsNaturalOutsets()()
{
  v1 = v0;
  v2 = type metadata accessor for Text.Layout.Line();
  v58 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout>();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v1 + v15, v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = outlined destroy of TextRenderLayer.Layout?(v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    v17 = (v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets);
    *v17 = 0u;
    v17[1] = 0u;
  }

  else
  {
    v57 = v1;
    outlined init with take of TextRenderLayer.Layout(v10, v14, type metadata accessor for TextRenderLayer.Layout);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v22 = type metadata accessor for Text.Layout();
    (*(*(v22 - 8) + 16))(v7, v14, v22);
    v23 = *(v59 + 9);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090]);
    v59 = v14;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v23] != v60[0])
    {
      v24 = (*&v58 + 16);
      v25 = (*&v58 + 8);
      do
      {
        v26 = dispatch thunk of Collection.subscript.read();
        (*v24)(v4);
        v26(v60, 0);
        dispatch thunk of Collection.formIndex(after:)();
        Text.Layout.Line.typographicBounds.getter();
        (*v25)(v4, v2);
        *&v73.origin.x = v60[7];
        *&v73.size.width = v60[9];
        v73.origin.y = *&v60[8] - v61;
        v73.size.height = v61 + v62;
        v63.origin.x = x;
        v63.origin.y = y;
        v63.size.width = width;
        v63.size.height = height;
        v64 = CGRectUnion(v63, v73);
        x = v64.origin.x;
        y = v64.origin.y;
        width = v64.size.width;
        height = v64.size.height;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v7[v23] != v60[0]);
    }

    outlined destroy of Text.Effect.Composition(v7, type metadata accessor for IndexingIterator<Text.Layout>);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    IsNull = CGRectIsNull(v65);
    v28 = 0.0;
    if (IsNull)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = width;
    }

    if (IsNull)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = height;
    }

    v53 = v30;
    if (IsNull)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = y;
    }

    if (!IsNull)
    {
      v28 = x;
    }

    v32 = v57;
    v33 = *(v57 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
    v34 = *(v57 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8);
    v37 = *(v57 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 16);
    v38 = *(v57 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 24);
    v39 = v28 + v33;
    v35 = v39;
    v40 = v31 + v34;
    v36 = v40;
    v41 = v29;
    v55 = v29;
    MinY = CGRectGetMinY(*(&v29 - 2));
    v66.origin.x = v33;
    v66.origin.y = v34;
    v66.size.width = v37;
    v66.size.height = v38;
    v58 = MinY - CGRectGetMinY(v66);
    v67.origin.x = v35;
    v54 = v35;
    v67.origin.y = v36;
    v67.size.width = v41;
    v43 = v53;
    v67.size.height = v53;
    MinX = CGRectGetMinX(v67);
    v68.origin.x = v33;
    v68.origin.y = v34;
    v68.size.width = v37;
    v68.size.height = v38;
    v56 = MinX - CGRectGetMinX(v68);
    v69.origin.x = v33;
    v69.origin.y = v34;
    v69.size.width = v37;
    v69.size.height = v38;
    MaxY = CGRectGetMaxY(v69);
    v70.origin.x = v35;
    v70.origin.y = v36;
    v46 = v55;
    v70.size.width = v55;
    v70.size.height = v43;
    v47 = MaxY - CGRectGetMaxY(v70);
    v71.origin.x = v33;
    v71.origin.y = v34;
    v71.size.width = v37;
    v71.size.height = v38;
    MaxX = CGRectGetMaxX(v71);
    v72.origin.x = v54;
    v72.origin.y = v36;
    v72.size.width = v46;
    v72.size.height = v43;
    v49 = CGRectGetMaxX(v72);
    result = outlined destroy of Text.Effect.Composition(v59, type metadata accessor for TextRenderLayer.Layout);
    v50 = (v32 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets);
    v51 = v56;
    *v50 = v58;
    v50[1] = v51;
    v50[2] = v47;
    v50[3] = MaxX - v49;
  }

  return result;
}

void specialized Text.Effect.Markers.init(fragment:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = &off_1E744B000;
    v3 = [v1 rangeInElement];
    NSTextRange.textRange.getter();
    v30 = v5;
    v31 = v4;
    v7 = v6;

    if (v7)
    {

      return;
    }

    v8 = [v1 rangeInElement];
    v9 = [v8 endLocation];

    v10 = swift_allocObject();
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    v11 = v10 + 16;
    v12 = [v1 textLayoutManager];
    v13 = &unk_195CCA000;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = v12;
    v29 = v9;
    v15 = [v1 textLineFragments];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextLineFragment);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v23 = v16;
      }

      else
      {
        v23 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x19A8BDCD0](v23);
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_7:
        if (v17 < 1)
        {
          goto LABEL_26;
        }

        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x19A8BDB80](v18, v16);
          }

          else
          {
            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          ++v18;
          v21 = swift_allocObject();
          v21[2] = v31;
          v21[3] = v30;
          v21[4] = v10;
          v36 = partial apply for closure #1 in Text.Effect.Markers.init(fragment:);
          v37 = v21;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @guaranteed [NSAttributedStringKey : Any]?) -> ();
          v35 = &block_descriptor_12;
          v22 = _Block_copy(&aBlock);

          _NSMarkedTextAttributes(v14, v20, v22);
          _Block_release(v22);
        }

        while (v17 != v18);

        v11 = v10 + 16;
        v9 = v29;
        v2 = &off_1E744B000;
        goto LABEL_19;
      }
    }

    v9 = v29;
LABEL_19:
    v13 = &unk_195CCA000;
LABEL_20:
    v24 = [v1 v2[305]];
    v25 = [v24 location];

    v26 = swift_allocObject();
    v26[2] = v9;
    v26[3] = v31;
    v26[4] = v30;
    v26[5] = v11;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #2 in Text.Effect.Markers.init(fragment:);
    *(v27 + 24) = v26;
    v36 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutManager, @guaranteed [NSAttributedStringKey : Any], @guaranteed NSTextRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v37 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v33 = v13[284];
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutManager, @guaranteed [NSAttributedStringKey : Any], @guaranteed NSTextRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v35 = &block_descriptor;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v1 enumerateRenderingAttributesFromLocation:v25 reverse:0 usingBlock:v28];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      swift_beginAccess();
      if (*(*v11 + 16))
      {
      }

      else
      {
      }

      return;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_195BE92A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195BE92E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_195BE9328()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void TextRenderLayer.updateSharedDrawingBounds()()
{
  v1 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v2 = *(v1 - 8);
  v83 = v1;
  v84 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v81);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator();
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v71 - v13;
  v79 = type metadata accessor for TextRenderLayer.Layout(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer;
  swift_beginAccess();
  v24 = *&v0[v23];
  if (!v24)
  {
    return;
  }

  v82 = v6;
  v74 = v15;
  v25 = v0;
  v26 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v73 = *(v18 + 16);
  v73(v22, &v0[v26], v17);
  v27 = v24;
  v28 = RangeSet.isEmpty.getter();
  v72 = *(v18 + 8);
  v72(v22, v17);
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  if (v28)
  {
    goto LABEL_27;
  }

  v33 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v34 = &v25[v33];
  v35 = v80;
  outlined init with copy of TextRenderLayer.Layout?(v34, v80, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v78 + 48))(v35, 1, v79) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v35, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_25:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v65 = Strong;
      LayerGeometryObserver.clip(bounds:for:)(v25, v29, v30, v31, v32);
      v29 = v66;
      v30 = v67;
      v31 = v68;
      v32 = v69;
    }

LABEL_27:
    v70 = v27;
    [v70 bounds];
    v98.origin.x = v29;
    v98.origin.y = v30;
    v98.size.width = v31;
    v98.size.height = v32;
    if (!CGRectEqualToRect(v95, v98))
    {
      [v70 setBounds_];
      [v70 setNeedsDisplay];
    }

    [v70 frame];
    v99.origin.x = v29;
    v99.origin.y = v30;
    v99.size.width = v31;
    v99.size.height = v32;
    if (!CGRectEqualToRect(v96, v99))
    {
      [v70 setFrame_];
    }

    return;
  }

  v71 = v27;
  outlined init with take of TextRenderLayer.Layout(v35, v74, type metadata accessor for TextRenderLayer.Layout);
  v36 = *MEMORY[0x1E695F050];
  v37 = *(MEMORY[0x1E695F050] + 8);
  v38 = *(MEMORY[0x1E695F050] + 16);
  v39 = *(MEMORY[0x1E695F050] + 24);
  v80 = v25;
  v40 = v73;
  v73(v22, &v25[v26], v17);
  v41 = v75;
  v40(v75, v22, v17);
  v42 = v77;
  RangeSet.ranges.getter();
  v43 = v41;
  v44 = v72;
  v72(v43, v17);
  v44(v22, v17);
  v45 = *(v76 + 48);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
  (*(*(v46 - 8) + 32))(&v11[v45], v42, v46);
  *v11 = 0;
  *(v11 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
LABEL_22:
    outlined destroy of Text.Effect.Composition(v11, type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator);
    v90.origin.x = v36;
    v90.origin.y = v37;
    v90.size.width = v38;
    v90.size.height = v39;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    if (!CGRectIsNull(v90))
    {
      v91.origin.x = v36;
      v91.origin.y = v37;
      v91.size.width = v38;
      v91.size.height = v39;
      v29 = floor(CGRectGetMinX(v91) * 0.0625) * 16.0;
      v92.origin.x = v36;
      v92.origin.y = v37;
      v92.size.width = v38;
      v92.size.height = v39;
      v84 = ceil(CGRectGetMaxX(v92) * 0.0625) * 16.0;
      v93.origin.x = v36;
      v93.origin.y = v37;
      v93.size.width = v38;
      v93.size.height = v39;
      v30 = floor(CGRectGetMinY(v93) * 0.0625) * 16.0;
      v94.origin.x = v36;
      v94.origin.y = v37;
      v94.size.width = v38;
      v94.size.height = v39;
      MaxY = CGRectGetMaxY(v94);
      v31 = v84 - v29;
      v32 = ceil(MaxY * 0.0625) * 16.0 - v30;
    }

    outlined destroy of Text.Effect.Composition(v74, type metadata accessor for TextRenderLayer.Layout);
    v25 = v80;
    v27 = v71;
    goto LABEL_25;
  }

  v47 = 0;
  v48 = 0;
  v49 = *&v74[*(v79 + 24)];
  v78 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v50 = v49 + ((*(*&v84 + 80) + 32) & ~*(*&v84 + 80));
  v79 = v50;
  while (1)
  {
    RangeSet.Ranges.subscript.getter();
    v51 = v85 + v47;
    if (__OFADD__(v85, v47))
    {
      break;
    }

    if (__OFADD__(v47++, 1))
    {
      goto LABEL_34;
    }

    *(v11 + 1) = v47;
    RangeSet.Ranges.subscript.getter();
    if (__OFSUB__(v86, v85))
    {
      goto LABEL_35;
    }

    if (v47 >= v86 - v85)
    {
      v47 = 0;
      *v11 = ++v48;
      *(v11 + 1) = 0;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (v51 >= *(v49 + 16))
    {
      goto LABEL_37;
    }

    outlined init with copy of Text.Effect.Composition(v50 + *(*&v84 + 72) * v51, v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v53 = v49;
      v54 = v82;
      outlined init with take of TextRenderLayer.Layout(v4, v82, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v55 = v80;
      TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v54 + *(v81 + 24), v51, 1);
      x = v87.origin.x;
      y = v87.origin.y;
      width = v87.size.width;
      height = v87.size.height;
      if (CGRectIsNull(v87))
      {
        v60 = v54;
      }

      else
      {
        v61 = *(v55 + v78);
        if (v51 >= *(v61 + 16))
        {
          goto LABEL_38;
        }

        v62 = v61 + 16 * v51;
        v97.origin.x = x + *(v62 + 32);
        v97.origin.y = y + *(v62 + 40);
        v88.origin.x = v36;
        v88.origin.y = v37;
        v88.size.width = v38;
        v88.size.height = v39;
        v97.size.width = width;
        v97.size.height = height;
        v89 = CGRectUnion(v88, v97);
        v36 = v89.origin.x;
        v37 = v89.origin.y;
        v38 = v89.size.width;
        v39 = v89.size.height;
        v60 = v82;
      }

      outlined destroy of Text.Effect.Composition(v60, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v49 = v53;
      v50 = v79;
    }

    else
    {
      outlined destroy of Text.Effect.Composition(v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    }

    if (v48 >= RangeSet.Ranges.count.getter())
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void _NSMarkedTextAttributes(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 textLineFragmentRange];
  [v6 markedTextAttributesForRange:v7 usingBlock:v5];
}

void _NSTextCustomRenderingDelegateInvalidateInteractionGeometry(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _invalidateInteractionGeometry];
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, void (*a6)(void), void (*a7)(void))
{
  v45 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  while (v11)
  {
    v42 = a4;
    v17 = v13;
LABEL_14:
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v11)));
    v20 = *(*(a1 + 48) + v19);
    v21 = *(*(a1 + 56) + v19);
    v44[0] = v20;
    v44[1] = v21;
    v22 = v21;
    a2(v43, v44);

    v23 = v43[0];
    v24 = v43[1];
    v25 = *v45;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v43[0]);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = v26;
    if (v25[3] >= v28 + v29)
    {
      if ((v42 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v27 = v31;
    }

    v11 &= v11 - 1;
    v33 = *v45;
    if (v30)
    {
      v14 = *(v33[7] + 8 * v27);

      v15 = v33[7];
      v16 = *(v15 + 8 * v27);
      *(v15 + 8 * v27) = v14;
    }

    else
    {
      v33[(v27 >> 6) + 8] |= 1 << v27;
      *(v33[6] + 8 * v27) = v23;
      *(v33[7] + 8 * v27) = v24;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v13 = v17;
  }

  v18 = v13;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
    }

    v11 = *(v8 + 8 * v17);
    ++v18;
    if (v11)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TextRenderLayer.updateEffect(identifiers:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers;
  v12 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers);

  specialized Set.formSymmetricDifference(_:)(v4);
  v5 = v12;
  *(v1 + v3) = a1;

  TextRenderLayer.updateActive(animations:)(v12);
  if (*(*(v1 + v3) + 16) <= *(v12 + 16) >> 3)
  {

    specialized Set._subtract<A>(_:)(v10);

    if (*(v12 + 16))
    {
LABEL_3:
      v7 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
      swift_beginAccess();
      v8 = *(*(v7 + 72) + 16);
      closure #1 in TextEffectsAnimationController.invalidateAnimations(_:)(v7, v5);
      v9 = *(*(v7 + 72) + 16);
      if (v8)
      {
        if (!v9)
        {
          TextEffectsAnimationController.clearDisplayLink()();
        }
      }

      else if (v9)
      {
        if ((*(v7 + 40) & 1) == 0)
        {
          *(v7 + 40) = 1;
          *(v7 + 56) = CACurrentMediaTime();
          if (!TextEffectsAnimationController.startExternalDisplayLink()())
          {
            TextEffectsAnimationController.startInternalDisplayLink()();
          }
        }
      }
    }
  }

  else
  {

    v5 = specialized _NativeSet.subtracting<A>(_:)(v6, v12);

    if (*(v5 + 16))
    {
      goto LABEL_3;
    }
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<UUID>();
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
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
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6A10]);
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE80](v16);
    result = Hasher._finalize()();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

double TextRenderLayer.displayScale.getter()
{
  v1 = 1.0;
  if ([v0 delegate])
  {
    type metadata accessor for TextRenderSurface();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (Strong)
      {
        v1 = *&Strong[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7CGPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 80);
    *v32 = *(a1 + 64);
    *&v32[16] = v3;
    v4 = *(a1 + 112);
    *&v32[32] = *(a1 + 96);
    v33 = v4;
    v5 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v5;
    v6 = *(a2 + 80);
    *v36 = *(a2 + 64);
    *&v36[16] = v6;
    v7 = *(a2 + 112);
    *&v36[32] = *(a2 + 96);
    v37 = v7;
    v8 = *(a2 + 48);
    v34 = *(a2 + 32);
    v35 = v8;
    if (v30 == v34)
    {
      v9 = (a1 + 128);
      v10 = (a2 + 128);
      while (1)
      {
        v11 = *(&v30 + 1);
        v13 = v31;
        v12 = *v32;
        v14 = *(&v34 + 1);
        v16 = v35;
        v15 = *v36;
        outlined init with copy of TextModel.Cluster(&v30, v29);
        outlined init with copy of TextModel.Cluster(&v34, v29);
        v44.origin.x = v11;
        *&v44.origin.y = v13;
        v44.size.height = v12;
        v45.origin.x = v14;
        *&v45.origin.y = v16;
        v45.size.height = v15;
        if (!CGRectEqualToRect(v44, v45))
        {
          break;
        }

        v17 = v33;
        v38 = *&v32[8];
        v39 = *&v32[24];
        v40 = v32[40];
        v18 = v37;
        v41 = *&v36[8];
        v42 = *&v36[24];
        v43 = v36[40];
        v19 = static Path.== infix(_:_:)();
        outlined destroy of TextModel.Cluster(&v34);
        outlined destroy of TextModel.Cluster(&v30);
        if ((v19 & 1) != 0 && *&v17 == *&v18 && *(&v17 + 1) == *(&v18 + 1))
        {
          if (!--v2)
          {
            return 1;
          }

          v20 = v9[3];
          *v32 = v9[2];
          *&v32[16] = v20;
          v21 = v9[5];
          *&v32[32] = v9[4];
          v33 = v21;
          v22 = *v9;
          v23 = v9[1];
          v9 += 6;
          v30 = v22;
          v31 = v23;
          v24 = v10[3];
          *v36 = v10[2];
          *&v36[16] = v24;
          v25 = v10[5];
          *&v36[32] = v10[4];
          v37 = v25;
          v26 = *v10;
          v27 = v10[1];
          v10 += 6;
          v34 = v26;
          v35 = v27;
          if (v30 == v26)
          {
            continue;
          }
        }

        return 0;
      }

      outlined destroy of TextModel.Cluster(&v34);
      outlined destroy of TextModel.Cluster(&v30);
    }
  }

  return 0;
}

void type metadata completion function for TextWipeTransitionModifier.FadeInCluster()
{
  type metadata accessor for UnitCurve();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Color?(319, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for Text.Effect.InteractionMetrics()
{
  result = type metadata singleton initialization cache for Text.Effect.InteractionMetrics;
  if (!type metadata singleton initialization cache for Text.Effect.InteractionMetrics)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Text.Effect.InteractionMetrics()
{
  type metadata accessor for [Text.Effect.InteractionMetrics.Element](319, &lazy cache variable for type metadata for [Text.Effect.InteractionMetrics.Element], &type metadata for Text.Effect.InteractionMetrics.Element, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_1(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    if (v1 <= 0x3F)
    {
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_1(319, &lazy cache variable for type metadata for Set<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E64E8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Text.Effect.InteractionMetrics.Element](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey()
{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey);
  }

  return result;
}

void type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment))
  {
    type metadata accessor for Text.Effect.RenderSegmentation.Segment(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    }
  }
}

void type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator()
{
  if (!lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v0 = type metadata accessor for RangeSet<>.IndexSequence.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator);
    }
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void NSTextRange.textRange.getter()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    v5 = [v3 range];
    v7 = v6;
    v8 = Text.Layout.CharacterIndex.init(_:)();
    if (__OFADD__(v5, v7))
    {
      __break(1u);
    }

    else
    {
      v9 = Text.Layout.CharacterIndex.init(_:)();

      if (v9 >= v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v10 = [objc_msgSend(v0 location)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v10)
  {
LABEL_6:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_195CC8D00;
    _StringGuts.grow(_:)(38);

    _StringGuts.grow(_:)(55);
    MEMORY[0x19A8BD680](0xD000000000000035, 0x8000000195CDF120);
    v12 = [v1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    MEMORY[0x19A8BD680](v13, v15);

    MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
    v16 = StaticString.description.getter();
    MEMORY[0x19A8BD680](v16);

    MEMORY[0x19A8BD680](58, 0xE100000000000000);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v17);

    MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();

    return;
  }

  v18 = [v0 location];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v20 = [v19 range];
  v22 = v21;
  v23 = Text.Layout.CharacterIndex.init(_:)();
  if (__OFADD__(v20, v22))
  {
    goto LABEL_14;
  }

  v1 = Text.Layout.CharacterIndex.init(_:)();
  swift_unknownObjectRelease();
  if (v1 < v23)
  {
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for RangeSet<Int><>.IndexSequence()
{
  if (!lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v0 = type metadata accessor for RangeSet<>.IndexSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence);
    }
  }
}

uint64_t TextEffectsAnimationController.updateKeyframes(version:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 112) + 56) != a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = *(v1 + 112);
      type metadata accessor for Text.Effect.Keyframes.Storage();
      swift_allocObject();
      *(v1 + 112) = specialized Text.Effect.Keyframes.Storage.init(_:)(v3);
    }

    *(*(v1 + 112) + 56) = a1;
  }

  return swift_endAccess();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TextWipeTransitionModifier.MorphClusterView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView();

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

void type metadata completion function for TextWipeTransitionModifier.FadeOutCluster()
{
  type metadata accessor for UnitCurve();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>))
  {
    type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>();
    type metadata accessor for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>(255, &lazy cache variable for type metadata for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>));
    }
  }
}

void type metadata accessor for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Color?(255, &lazy cache variable for type metadata for ArraySlice<TextModel.Cluster>, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6948]);
    a3(255);
    lazy protocol witness table accessor for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>(&lazy protocol witness table cache variable for type ArraySlice<TextModel.Cluster> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<TextModel.Cluster>, &type metadata for TextModel.Cluster);
    v5 = type metadata accessor for ForEach();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>)
  {
    type metadata accessor for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>(255, &lazy cache variable for type metadata for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [EditWithAnimationInfo<Int>] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [EditWithAnimationInfo<Int>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [EditWithAnimationInfo<Int>] and conformance [A])
  {
    type metadata accessor for [EditWithAnimationInfo<Int>](255, &lazy cache variable for type metadata for [EditWithAnimationInfo<Int>], &lazy cache variable for type metadata for EditWithAnimationInfo<Int>, type metadata accessor for EditWithAnimationInfo, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [EditWithAnimationInfo<Int>] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Edit<Int> and conformance <> Edit<A>()
{
  result = lazy protocol witness table cache variable for type Edit<Int> and conformance <> Edit<A>;
  if (!lazy protocol witness table cache variable for type Edit<Int> and conformance <> Edit<A>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for Edit<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], type metadata accessor for Edit);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edit<Int> and conformance <> Edit<A>);
  }

  return result;
}

void TextModel.sizeOfCharacter.getter()
{
  v1 = type metadata accessor for TextModel.ClusterData(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - v6;
  type metadata accessor for (TextModel.ClusterData, TextModel.Cluster)();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = *v0;
  v39 = *(*v0 + 16);
  if (v39)
  {
    v15 = 0;
    v16 = v0[1];
    v17 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v37 = *(v2 + 72);
    v38 = v16;
    v18 = (v16 + 32);
    v19 = 0.0;
    while (1)
    {
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v17, v40, type metadata accessor for TextModel.ClusterData);
      v20 = *(v38 + 16);
      if (v15 == v20)
      {
        outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v40, type metadata accessor for TextModel.ClusterData);
        return;
      }

      if (v15 >= v20)
      {
        break;
      }

      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[5];
      v46 = v18[4];
      v47 = v23;
      v45 = v22;
      v24 = v18[1];
      v42 = *v18;
      v43 = v24;
      v44 = v21;
      v25 = &v13[*(v8 + 48)];
      outlined init with take of TextWipeTransitionModifier(v40, v13, type metadata accessor for TextModel.ClusterData);
      v26 = v45;
      *(v25 + 2) = v44;
      *(v25 + 3) = v26;
      v27 = v47;
      *(v25 + 4) = v46;
      *(v25 + 5) = v27;
      v28 = v43;
      *v25 = v42;
      *(v25 + 1) = v28;
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v13, v10, type metadata accessor for (TextModel.ClusterData, TextModel.Cluster));
      v29 = &v10[*(v8 + 48)];
      v30 = *(v29 + 5);
      v52 = *(v29 + 4);
      v53 = v30;
      v31 = *(v29 + 3);
      v50 = *(v29 + 2);
      v51 = v31;
      v32 = *(v29 + 1);
      v48 = *v29;
      v49 = v32;
      outlined init with take of TextWipeTransitionModifier(v10, v4, type metadata accessor for TextModel.ClusterData);
      v33 = v4[1];
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = *v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        outlined init with copy of TextModel.Cluster(&v42, v41);
        v35 = String.count.getter();
        outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v13, type metadata accessor for (TextModel.ClusterData, TextModel.Cluster));
        outlined destroy of TextModel.Cluster(&v48);
        v36 = *(&v49 + 1);
        if (v19 > *(&v49 + 1))
        {
          v36 = v19;
        }

        v19 = 1.0 / v35 * v36;
      }

      else
      {
        outlined init with copy of TextModel.Cluster(&v42, v41);
        outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v13, type metadata accessor for (TextModel.ClusterData, TextModel.Cluster));
        outlined destroy of TextModel.Cluster(&v48);
      }

      ++v15;
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v4, type metadata accessor for TextModel.ClusterData);
      v17 += v37;
      v18 += 6;
      if (v39 == v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

void type metadata accessor for (TextModel.ClusterData, TextModel.Cluster)()
{
  if (!lazy cache variable for type metadata for (TextModel.ClusterData, TextModel.Cluster))
  {
    type metadata accessor for TextModel.ClusterData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextModel.ClusterData, TextModel.Cluster));
    }
  }
}

uint64_t outlined init with copy of [EditWithAnimationInfo<Int>](uint64_t a1, uint64_t a2)
{
  type metadata accessor for [EditWithAnimationInfo<Int>](0, &lazy cache variable for type metadata for [EditWithAnimationInfo<Int>], &lazy cache variable for type metadata for EditWithAnimationInfo<Int>, type metadata accessor for EditWithAnimationInfo, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Edit<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Edit<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t Edit<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19A8BDE60](*v3);
  v6 = type metadata accessor for Range();
  MEMORY[0x19A8BD940](a1, v6, a3);
  return MEMORY[0x19A8BD940](a1, v6, a3);
}

void storeEnumTagSinglePayload for Edit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = ((((v9 + 1) | v9) + v10) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_55:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v20 = (&a1[v9 + 1] & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type TextModel.Cluster and conformance TextModel.Cluster()
{
  result = lazy protocol witness table cache variable for type TextModel.Cluster and conformance TextModel.Cluster;
  if (!lazy protocol witness table cache variable for type TextModel.Cluster and conformance TextModel.Cluster)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextModel.Cluster and conformance TextModel.Cluster);
  }

  return result;
}

uint64_t static Edit.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Edit();
  if ((static Range.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Range.== infix(_:_:)();
}

void type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>()
{
  if (!lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for KeyframeTrack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for KeyframeTrack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress>, lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress, &unk_1F0A2D008, MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress>, lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress, &unk_1F0A2D008, MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>()
{
  result = lazy protocol witness table cache variable for type LinearKeyframe<Double> and conformance LinearKeyframe<A>;
  if (!lazy protocol witness table cache variable for type LinearKeyframe<Double> and conformance LinearKeyframe<A>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearKeyframe<Double> and conformance LinearKeyframe<A>);
  }

  return result;
}

void type metadata accessor for _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>()
{
  if (!lazy cache variable for type metadata for _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>)
  {
    type metadata accessor for ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>();
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, lazy protocol witness table accessor for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>);
    v0 = type metadata accessor for _MaskAlignmentEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<LinearGradient>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980480]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<LinearGradient>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TextWipeTransitionModifier.MorphClusterView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView();

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Path, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Path, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Path, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Path, _FrameLayout>, MEMORY[0x1E6980F80], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type Path and conformance Path();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Path, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TextModel.Cluster(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a2 + 80);
  v4 = *(a2 + 88);
  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v7 = static Path.== infix(_:_:)() & (v3 == v5);
    if (v2 == v4)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double protocol witness for View.body.getter in conformance TextWipeTransitionModifier.ClusterView@<D0>(uint64_t a1@<X8>)
{
  Path.offsetBy(dx:dy:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void TextWipeTransitionModifier.FadeOutCluster.body.getter(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = *(v1 + *(v5 + 52) + 8);
  v24 = 0;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v22 = v21;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v6, type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  v7 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
  v17 = v8;
  v19 = MEMORY[0x1E697E830];
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  v9 = v20;
  KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)();
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  v10 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  type metadata accessor for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>(0);
  v12 = (v9 + *(v11 + 36));
  *v12 = partial apply for closure #3 in TextWipeTransitionModifier.FadeOutCluster.body.getter;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect>, type metadata accessor for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, MEMORY[0x1E697E278], v19);
  v16 = (v9 + *(v15 + 36));
  *v16 = v13;
  v16[1] = v14;
}

double protocol witness for View.body.getter in conformance TextWipeTransitionModifier.MorphClusterView@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 9);
  v35 = *(v1 + 8);
  v36 = v3;
  v4 = *(v1 + 11);
  v37 = *(v1 + 10);
  v38 = v4;
  v5 = *(v1 + 5);
  v31 = *(v1 + 4);
  v32 = v5;
  v6 = *(v1 + 7);
  v33 = *(v1 + 6);
  v34 = v6;
  v7 = *(v1 + 1);
  v27 = *v1;
  v28 = v7;
  v8 = *(v1 + 3);
  v29 = *(v1 + 2);
  v30 = v8;
  TextModel.MorphCluster.mix(by:)(v18, v1[24]);
  v24 = v21;
  v25 = v22;
  v26 = v23;
  Path.offsetBy(dx:dy:)();
  v9 = v19;
  v10 = v20;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  outlined destroy of TextModel.Cluster(v18);
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  return result;
}

void TextWipeTransitionModifier.FadeInCluster.body.getter(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = 0;
  v34 = 0;
  v6 = v1 + *(v5 + 52);
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v29) = v7;
  v30 = v8;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v27 = type metadata accessor for TextWipeTransitionModifier.FadeInCluster;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v9, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  v10 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  type metadata accessor for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
  v24[2] = v11;
  type metadata accessor for <<opaque return type of View.onChange<A>(of:initial:_:)>>.0();
  v24[1] = v12;
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
  v25 = MEMORY[0x1E697E830];
  type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
  v14 = v13;
  v15 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  v29 = v14;
  v30 = MEMORY[0x1E69E6370];
  v31 = v15;
  v32 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v16 = v28;
  KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)();
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v17 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v9, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  type metadata accessor for ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>(0);
  v19 = (v16 + *(v18 + 36));
  *v19 = partial apply for closure #3 in TextWipeTransitionModifier.FadeInCluster.body.getter;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect>, type metadata accessor for ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, MEMORY[0x1E697E278], v25);
  v23 = (v16 + *(v22 + 36));
  *v23 = v20;
  v23[1] = v21;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.tintColor : EnvironmentValues()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor();

  return EnvironmentValues.subscript.setter();
}

uint64_t keypath_get_2Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = EnvironmentValues.subscript.getter();
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_animateContentChanges and conformance EnvironmentValues.__Key_animateContentChanges()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_animateContentChanges and conformance EnvironmentValues.__Key_animateContentChanges;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_animateContentChanges and conformance EnvironmentValues.__Key_animateContentChanges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_animateContentChanges and conformance EnvironmentValues.__Key_animateContentChanges);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_dynamicFont and conformance EnvironmentValues.__Key_dynamicFont()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_dynamicFont and conformance EnvironmentValues.__Key_dynamicFont;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_dynamicFont and conformance EnvironmentValues.__Key_dynamicFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_dynamicFont and conformance EnvironmentValues.__Key_dynamicFont);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_reduceTransparency and conformance EnvironmentValues.__Key_reduceTransparency()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_reduceTransparency and conformance EnvironmentValues.__Key_reduceTransparency;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_reduceTransparency and conformance EnvironmentValues.__Key_reduceTransparency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_reduceTransparency and conformance EnvironmentValues.__Key_reduceTransparency);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScaleRippleTextEffect.Timing.ClusterTiming(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScaleRippleTextEffect.Timing.ClusterTiming(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *_sSo34NSTextLayoutManagerSegmentCategoryVSYSCSY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo21NSAttributedStringKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s7SwiftUI17EnvironmentValuesV20TextAnimationSupportE27__Key_animateContentChanges33_5BB6BA5906EF51728AE44082969295EDLLVAA0cH0AdaHP12_valuesEqualySb5ValueQz_ALtFZTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_195BED670()
{
  type metadata accessor for AODProgressProxy(255);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_195BED790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 320);
    if (v4 >= 0xFFFFFFFF)
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

  else
  {
    type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for Environment<LayoutDirection>, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_195BED87C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 320) = a2;
  }

  else
  {
    type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for Environment<LayoutDirection>, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_195BED954(uint64_t a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_195BEDA34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_195BEDB44()
{

  return MEMORY[0x1EEE6BDD0](v0, 544, 7);
}

uint64_t sub_195BEDBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnitCurve();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_195BEDC94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnitCurve();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_195BEDD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnitCurve();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_195BEDE18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnitCurve();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_195BEDED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnitCurve();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_195BEDFA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnitCurve();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = a2;
  }

  return result;
}

uint64_t sub_195BEE06C()
{
  type metadata accessor for <<opaque return type of View.backdropGroup_temp(_:name:)>>.0();
  type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>();
  lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>, lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void protocol witness for Collection.indices.getter in conformance Text.Effect.RenderSegmentation(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t sub_195BEE2A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEE2E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_195BEE330()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEE398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_195BEE404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_195BEE474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_195BEE4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_195BEE568(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_195BEE650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.GlyphIndex(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO15DrawableContentVy__xGSlADSl5index_8offsetBy07limitedK05IndexQzSgAN_SiANtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVSkADSk5index_8offsetBy5IndexQzAL_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195BEE8AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_195BEE994(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_195BEEB48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEEB80()
{

  if (*(v0 + 144) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_195BEEC00()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Text.Effect.DrawingState.InteractionFlags(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

id _sxq_xq_Iegnnrr_x3key_q_5valuetx_q_tIegnr_SHRzr0_lTR7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_AF03AnyeH0CTG5068_sSD5merge_16uniquingKeysWithySDyxq_Gn_q_q__q_tKXEtKFx_q_tx_q_tcfU_7c3UI4e5V0G16fg2E6h3O10I16V_AG03AnygJ0CTG5Tf3nnpf_n_0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return v3;
}

uint64_t sub_195BEED34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_195BEEDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_195BEEE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEEE58()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEEEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEEEFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEEF64()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEEFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_195BEF090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s20TextAnimationSupport0A15EffectsRendererC11NotifyFlagsVs25ExpressibleByArrayLiteralAAsAFP05arrayK0x0jK7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_195BEF1B4()
{
  outlined consume of Text.Effect.Markers.MarkerType(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEF208()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195BEF240()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195BEF278()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_195BEF2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_195BEF3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = -a2;
  }
}

uint64_t sub_195BEF4CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEF534()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_195BEF5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Text.Effect.Composition(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_195BEF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Text.Effect.Composition(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_195BEF698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_195BEF7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Text.Layout.Line();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_195BEF95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_195BEFA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Text.Layout.Line();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_195BEFB80()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_195BEFBE0()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEFC48()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEFCB0()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t _s20TextAnimationSupport07GlimmerA6EffectV7SwiftUI0A0VAAE0E0O4BaseAahIP13animatorPhase4fromSS08AnimatorJ0Qz_tFZTW_0(_BYTE *a1)
{
  if (*a1)
  {
    return 28271;
  }

  else
  {
    return 6710895;
  }
}

uint64_t _s20TextAnimationSupport07StretchA6EffectV7SwiftUI0A0VAAE0E0O4BaseAahIP13animatorPhase4from08AnimatorJ0QzSgSS_tFZTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = 0x746C7561666564;
  if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {
    v7 = 0;
  }

  else
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = result ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_195BEFE44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_195BEFE8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BEFEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195BEFF14()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BEFF80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195BEFFB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BF0018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_195BF008C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_195BF0104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = AssociatedTypeWitness;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RangeSet.Ranges();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_195BF0228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = AssociatedTypeWitness;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for RangeSet.Ranges();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 48);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_195BF0358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Spring();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_195BF03D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Spring();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO23ClusterDurationFunctionVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO23ClusterDurationFunctionVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO23ClusterDurationFunctionV7StorageOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO23ClusterDurationFunctionV7StorageOwug_0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO23ClusterDurationFunctionV7StorageOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_195BF051C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_195BF0594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_195BF0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_195BF06CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Layout.Line();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_195BF0784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Operation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_195BF07F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Operation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_195BF0864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_195BF0924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Layout.Line();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_195BF09E4()
{

  if (*(v0 + 256) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 264, 7);
}

uint64_t sub_195BF0A64()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BF0B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BF0B70()
{

  if (*(v0 + 216) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_195BF0BF0()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_195BF0C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BF0CAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BF0CE4()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextV0C16AnimationSupportE6EffectO16TransformContextV11DrawingMode33_FAC5D554CFF6FEF8E1F8513C0F00676CLLO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_195BF0D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Cluster();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_195BF0E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Layout.Cluster();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_195BF0EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195BF0F20()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_195BF0F70()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance Text.Effect.KeyframeLayout.Flags@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance Text.Effect.KeyframeLayout.Flags@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void *CGColorForCoreColor(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 CGColor];
  }

  return a1;
}

void _NSTextLayoutManagerRequiresCTLine(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 setRequiresCTLineRef:1];
  }
}

uint64_t _SwiftUIIsAppleInternalBuild()
{
  if (_SwiftUIIsAppleInternalBuild_once != -1)
  {
    _SwiftUIIsAppleInternalBuild_cold_1();
  }

  return _SwiftUIIsAppleInternalBuild_isInternal;
}

id _NSTextLayoutFragmentLayoutFragmentWithKeyframe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 layoutFragmentWithKeyframe:v4];
    [v5 layout];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

void _NSTextCustomRenderingDelegateWillDraw(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v7 _willDrawContentOfSurface:v5 withBlock:v6];
  }

  else
  {
    v6[2](v6);
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSTextLayoutManagerSegmentCategory(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance NSTextLayoutManagerSegmentCategory@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance NSTextLayoutManagerSegmentCategory@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x19A8BD6C0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x19A8BD5F0](v2);

  *a1 = v3;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance NSTextLayoutManagerSegmentCategory@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x19A8BD5F0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for internalErrorsLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.internalErrorsLog = result;
  return result;
}

uint64_t specialized static Log.internalError(_:)(uint64_t *a1)
{
  static os_log_type_t.fault.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  v2 = static Log.internalErrorsLog;
  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_195CC8CF0;
  v4 = v2;
  _StringGuts.grow(_:)(41);

  v5 = Double.description.getter();
  MEMORY[0x19A8BD680](v5);

  MEMORY[0x19A8BD680](44, 0xE100000000000000);
  v6 = Double.description.getter();
  MEMORY[0x19A8BD680](v6);

  MEMORY[0x19A8BD680](657961, 0xE300000000000000);
  v7 = *a1;
  v8 = a1[1];

  MEMORY[0x19A8BD680](v7, v8);

  v9 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v10;
  *(v3 + 32) = 0xD00000000000001FLL;
  *(v3 + 40) = 0x8000000195CDEE30;
  v11 = StaticString.description.getter();
  *(v3 + 96) = v9;
  *(v3 + 104) = v10;
  *(v3 + 72) = v11;
  *(v3 + 80) = v12;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 112) = v13;
  *(v3 + 120) = v14;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for _ContiguousArrayStorage<Any>();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_195CC8D00;
  _StringGuts.grow(_:)(38);

  _StringGuts.grow(_:)(41);

  v16 = Double.description.getter();
  MEMORY[0x19A8BD680](v16);

  MEMORY[0x19A8BD680](44, 0xE100000000000000);
  v17 = Double.description.getter();
  MEMORY[0x19A8BD680](v17);

  MEMORY[0x19A8BD680](657961, 0xE300000000000000);
  v19 = *a1;
  v18 = a1[1];

  MEMORY[0x19A8BD680](v19, v18);

  MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
  v20 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v20);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v21);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  *(v15 + 56) = v9;
  *(v15 + 32) = 0xD00000000000001FLL;
  *(v15 + 40) = 0x8000000195CDEE30;
  print(_:separator:terminator:)();
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>)
  {
    type metadata accessor for CVarArg();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    }
  }
}

unint64_t type metadata accessor for CVarArg()
{
  result = lazy cache variable for type metadata for CVarArg;
  if (!lazy cache variable for type metadata for CVarArg)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CVarArg);
  }

  return result;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
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

uint64_t specialized static Log.internalError(_:)(uint64_t (*a1)(void))
{
  static os_log_type_t.fault.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  v2 = static Log.internalErrorsLog;
  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_195CC8CF0;
  v4 = v2;
  v5 = a1();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v9 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v10 = StaticString.description.getter();
  *(v3 + 96) = v8;
  *(v3 + 104) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  *(v3 + 112) = v12;
  *(v3 + 120) = v13;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for _ContiguousArrayStorage<Any>();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_195CC8D00;
  _StringGuts.grow(_:)(38);

  v20 = (a1)(v15);
  v21 = v16;
  MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
  v17 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v17);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v18);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  *(v14 + 56) = v8;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  print(_:separator:terminator:)();
}

uint64_t Text.textGlassWipeTransition()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = static HorizontalAlignment.center.getter();

  return Text.textGlassWipeTransition(alignment:)(v10, a1, a2, a3 & 1, a4, a5);
}

uint64_t View.textGlassWipeTransitionTint(color:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.tintColor.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_tintColor and conformance EnvironmentValues.__Key_tintColor();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t EnvironmentValues.animateContentChanges.getter(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

uint64_t View.textGlassWipeTransitionFrost(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

unint64_t EnvironmentValues.frost.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_frost and conformance EnvironmentValues.__Key_frost();
  EnvironmentValues.subscript.getter();
  return v1 | (v2 << 32);
}

uint64_t View.textGlassWipeTransitionAODProgressProxy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AODProgressProxy(0);
  v7 = lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);

  return MEMORY[0x1EEDE37D0](a1, a2, v6, a3, v7);
}

uint64_t View.textGlassWipeTransitionGlassSubvariant(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.glassSubvariant.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path setter for EnvironmentValues.glassSubvariant : EnvironmentValues()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant();

  return EnvironmentValues.subscript.setter();
}

uint64_t AODProgressProxy.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t AODProgressProxy.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t AODProgressProxy.progress.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t key path getter for AODProgressProxy.progress : AODProgressProxy@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t AODProgressProxy.progress.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = *&a1;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*AODProgressProxy.progress.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20TextAnimationSupport16AODProgressProxy___observationRegistrar;
  *v4 = v1;
  v4[5] = lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return AODProgressProxy.progress.modify;
}

void AODProgressProxy.progress.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t AODProgressProxy.deinit()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupport16AODProgressProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AODProgressProxy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupport16AODProgressProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_tintColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Color? and conformance <A> A?();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_frost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Float? and conformance <A> A?, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t TextGlassWipeTransitionModifier.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of [TextModel.MorphCluster](&v9, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0], type metadata accessor for Color?);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t TextGlassWipeTransitionModifier.animatedContentChanges.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 24);
  v5 = *(v0 + 16);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v9, &lazy cache variable for type metadata for Environment<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t TextGlassWipeTransitionModifier.dynamicFont.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  v5 = *(v0 + 32);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v9, &lazy cache variable for type metadata for Environment<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t TextGlassWipeTransitionModifier.tintColor.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 56);
  v5 = *(v0 + 48);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v10, &lazy cache variable for type metadata for Environment<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t TextGlassWipeTransitionModifier.reduceTransparency.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 72);
  v5 = *(v0 + 64);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v9, &lazy cache variable for type metadata for Environment<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

unint64_t TextGlassWipeTransitionModifier.frost.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 88);
  v5 = *(v0 + 80);
  v11 = v5;
  if (v12 == 1)
  {
    v6 = HIDWORD(v5) & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v11, &lazy cache variable for type metadata for Environment<Float?>, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    (*(v2 + 8))(v4, v1);
    LODWORD(v5) = v9[2];
    LOBYTE(v6) = v10;
  }

  return v5 | (v6 << 32);
}

uint64_t TextGlassWipeTransitionModifier.aodProgressProxy.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 104);
  v5 = *(v0 + 96);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of GlassMaterialProvider.Subvariant?(&v10, &lazy cache variable for type metadata for Environment<AODProgressProxy?>, type metadata accessor for AODProgressProxy?, MEMORY[0x1E697DCC0]);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t TextGlassWipeTransitionModifier.glassSubvariant.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 128);
  v9 = *(v0 + 112);
  v5 = v9;
  if (v10 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<String?>(&v9, &lazy cache variable for type metadata for Environment<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_glassSubvariant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t TextGlassWipeTransitionModifier.glassProvider()@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for GlassMaterialProvider.Options();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v48 - v5;
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for GlassMaterialProvider.Subvariant?, MEMORY[0x1E6999C70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v48 - v7;
  v53 = type metadata accessor for GlassMaterialProvider.Subvariant();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  v54 = type metadata accessor for GlassMaterialProvider.Size();
  v12 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GlassMaterialProvider.Configuration();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v48 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = 1.0;
  if ((TextGlassWipeTransitionModifier.isLuminanceReduced.getter() & 1) == 0)
  {
    v28 = TextGlassWipeTransitionModifier.reduceTransparency.getter();
    if (v28 == 2 || (v28 & 1) == 0)
    {
      v29 = TextGlassWipeTransitionModifier.aodProgressProxy.getter();
      if (v29)
      {
        v30 = v29;
        swift_getKeyPath();
        v49 = v3;
        v63[0] = v30;
        lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AODProgressProxy and conformance AODProgressProxy, type metadata accessor for AODProgressProxy);
        ObservationRegistrar.access<A, B>(_:keyPath:)();
        v3 = v49;

        swift_beginAccess();
        v27 = *(v30 + 16);
        v31 = *(v30 + 24);

        if (v31)
        {
          v27 = 0.0;
        }
      }

      else
      {
        v27 = 0.0;
      }
    }
  }

  TextGlassWipeTransitionModifier.tintColor.getter();
  TextGlassWipeTransitionModifier.frost.getter();
  LOBYTE(v63[0]) = 1;
  static GlassMaterialProvider.Configuration.text(tint:frost:normalizedFactor:)();

  (*(v12 + 104))(v14, *MEMORY[0x1E6999D58], v54);
  GlassMaterialProvider.Configuration.size.setter();
  TextGlassWipeTransitionModifier.glassSubvariant.getter();
  v32 = v62;
  if (v33)
  {
    v34 = v52;
    GlassMaterialProvider.Subvariant.init(_:)();
    v35 = v53;
    if ((*(v8 + 48))(v34, 1, v53) == 1)
    {
      outlined destroy of GlassMaterialProvider.Subvariant?(v34, &lazy cache variable for type metadata for GlassMaterialProvider.Subvariant?, MEMORY[0x1E6999C70], MEMORY[0x1E69E6720]);
    }

    else
    {
      v36 = v50;
      (*(v8 + 32))(v50, v34, v35);
      (*(v8 + 16))(v51, v36, v35);
      GlassMaterialProvider.Configuration.subvariant.setter();
      (*(v8 + 8))(v36, v35);
    }
  }

  v37 = *(v16 + 16);
  v37(v32, v26, v15);
  static GlassMaterialProvider.Options.forceSubdued.getter();
  v38 = GlassMaterialProvider.Configuration.options.modify();
  v39 = v55;
  specialized OptionSet<>.insert(_:)(v55, v3);
  v40 = *(v59 + 8);
  v41 = v3;
  v42 = v60;
  v40(v41, v60);
  v40(v39, v42);
  v38(v63, 0);
  if (v27 <= 0.0)
  {
    v43 = v56;
    v37(v56, v26, v15);
    v44 = v62;
  }

  else
  {
    v43 = v56;
    v44 = v62;
    if (v27 >= 1.0)
    {
      v37(v56, v62, v15);
    }

    else
    {
      GlassMaterialProvider.Configuration.mix(with:by:)();
    }
  }

  v45 = v57;
  (*(v16 + 32))(v57, v43, v15);
  v37(v58, v45, v15);
  GlassMaterialProvider.init(configuration:)();
  v46 = *(v16 + 8);
  v46(v45, v15);
  v46(v44, v15);
  return (v46)(v26, v15);
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  type metadata accessor for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(0, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for GlassMaterialProvider.Options();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x1E6999DB8];
  v26[1] = lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, MEMORY[0x1E6999DB8]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v28;
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, v19);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    (v17)(&v8[v22], a2, v9);
    (v17)(v12, a2, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v23 = v29;
  outlined init with take of (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(v8, v29, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v24 = *v23;
  (*(v10 + 32))(v30, &v23[*(v20 + 48)], v9);
  return v24;
}

uint64_t TextGlassWipeTransitionModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v44 = a2;
  v43 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TimeDataSource<Date>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36[-v10];
  v11 = type metadata accessor for TextWipeTransitionModifier(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>();
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>(0);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (TextGlassWipeTransitionModifier.isLuminanceReduced.getter())
  {
    v37 = 0;
  }

  else
  {
    v20 = TextGlassWipeTransitionModifier.animatedContentChanges.getter();
    v37 = (v20 == 2) | v20;
  }

  v21 = TextGlassWipeTransitionModifier.dynamicFont.getter();
  v22 = 0;
  v23 = 0.5;
  v24 = 0x3FA999999999999ALL;
  v25 = 0x3FB999999999999ALL;
  v26 = 0.1;
  v27 = 0;
  if (v21 != 2 && (v21 & 1) == 0)
  {
    v26 = 0.5;
    v27 = 0x3FBEB851EB851EB8;
    v22 = 0x3FB999999999999ALL;
    v23 = 0.85;
    v24 = 0x3FDCCCCCCCCCCCCDLL;
    v25 = 0x3FE199999999999ALL;
  }

  v28 = *(v2 + 136);
  *(v13->i64 + *(v11 + 36)) = swift_getKeyPath();
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for Environment<LayoutDirection>.Content, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOi1_(v47);
  memcpy(v46, v47, sizeof(v46));
  v45 = 0;
  State.init(wrappedValue:)();
  memcpy(v13, v48, 0x148uLL);
  v13[20].i64[1] = v25;
  v13[21].i64[0] = 0x3FF770A3D70A3D71;
  v13[21].i64[1] = v24;
  v13[22] = vdupq_n_s64(0x3FAC28F5C28F5C29uLL);
  *v13[23].i64 = v23;
  v13[23].i64[1] = v22;
  *v13[24].i64 = v26;
  v13[24].i64[1] = 0x3FF0000000000000;
  v13[25] = xmmword_195CC8D60;
  v13[26].i64[0] = 0x3FF0000000000000;
  v13[26].i64[1] = 0;
  v13[27].i64[0] = 0;
  v13[27].i64[1] = 0;
  v13[28].i64[0] = 0x3FF0000000000000;
  v13[28].i64[1] = v27;
  v13[29].i64[0] = 0x3FC1EB851EB851ECLL;
  v13[29].i64[1] = v28;
  v13[30].i8[0] = v37 & 1;
  v13[30].i64[1] = 0x3FE58F5C28F5C290;
  type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<TextGlassWipeTransitionModifier>, lazy protocol witness table accessor for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier, &type metadata for TextGlassWipeTransitionModifier, MEMORY[0x1E697FDE8]);
  (*(*(v29 - 8) + 16))(v16, v40, v29);
  outlined init with take of TextWipeTransitionModifier(v13, &v16[*(v38 + 36)], type metadata accessor for TextWipeTransitionModifier);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Date();
  static TimeDataSource.currentDate.getter();
  static Duration.seconds(_:)();
  v31 = v41;
  TimeDataSource.offset(by:)();
  (*(v6 + 8))(v8, v5);
  v32 = &v19[*(v39 + 36)];
  type metadata accessor for _EnvironmentKeyWritingModifier<TimeDataSource<Date>>(0);
  (*(v6 + 32))(v32 + *(v33 + 28), v31, v5);
  *v32 = KeyPath;
  outlined init with take of TextWipeTransitionModifier(v16, v19, type metadata accessor for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>);
  TextGlassWipeTransitionModifier.glassProvider()(v42);
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, type metadata accessor for _ForegroundStyleModifier<Material>, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider, MEMORY[0x1E6999DF8]);
  v34 = v44;
  Material.init<A>(provider:)();
  return outlined init with take of TextWipeTransitionModifier(v19, v34, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>);
}

uint64_t Array<A>.findMinAndMaxY()(uint64_t a1)
{
  v2 = type metadata accessor for ClusterWithPath(0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = &v6[*(v3 + 28)];
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = INFINITY;
    v12 = -INFINITY;
    do
    {
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v9, v6, type metadata accessor for ClusterWithPath);
      v13 = *(v8 + 1);
      v25[0] = *v8;
      v25[1] = v13;
      v26 = v8[32];
      Path.boundingRect.getter();
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        MinY = CGRectGetMinY(*&v14);
        if (MinY < v11)
        {
          v11 = MinY;
        }

        v27.origin.x = v18;
        v27.origin.y = v19;
        v27.size.width = v20;
        v27.size.height = v21;
        MaxY = CGRectGetMaxY(v27);
        if (v12 <= MaxY)
        {
          v12 = MaxY;
        }
      }

      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v6, type metadata accessor for ClusterWithPath);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = -INFINITY;
    v11 = INFINITY;
  }

  result = *&v11;
  if ((~*&v11 & 0x7FF0000000000000) == 0 || (~*&v12 & 0x7FF0000000000000) == 0)
  {
    return 0;
  }

  if (v11 > v12)
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance OffsetPath(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if ((static Path.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4)
  {
    return v3 == v5;
  }

  return 0;
}

void TextModel.ClusterData.hash(into:)()
{
  v1 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69685B0];
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  String.hash(into:)();
  MEMORY[0x19A8BDE60](*(v0 + 16));
  v10 = type metadata accessor for TextModel.ClusterData(0);
  outlined init with copy of Environment<LayoutDirection>.Content(v0 + *(v10 + 24), v9, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v5, v6);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v9, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int TextModel.ClusterData.hashValue.getter()
{
  v1 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69685B0];
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x19A8BDE60](*(v0 + 16));
  v10 = type metadata accessor for TextModel.ClusterData(0);
  outlined init with copy of Environment<LayoutDirection>.Content(v0 + *(v10 + 24), v9, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v5, v6);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v9, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextModel.ClusterData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69685B0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x19A8BDE60](*(v2 + 16));
  outlined init with copy of Environment<LayoutDirection>.Content(v2 + *(a2 + 24), v12, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v8, v9);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v12, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t TextModel.MorphCluster.mix(by:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 9);
  *&v43[32] = *(v2 + 8);
  *&v43[48] = v4;
  v5 = *(v2 + 11);
  *&v43[64] = *(v2 + 10);
  v44 = v5;
  v6 = *(v2 + 7);
  *v43 = *(v2 + 6);
  *&v43[16] = v6;
  if (v43[72] == 255)
  {
    v7 = *(v2 + 3);
    *&v35[32] = *(v2 + 2);
    *&v35[48] = v7;
    v8 = *(v2 + 5);
    *&v35[64] = *(v2 + 4);
    v36 = v8;
    v9 = *(v2 + 1);
    *v35 = *v2;
    *&v35[16] = v9;
    result = outlined init with copy of TextModel.Cluster(v35, v33);
    v11 = *v35;
    v12 = *&v35[24];
    v13 = *&v35[8];
    v14 = *&v35[40];
    v15 = *&v35[56];
    v16 = v35[72];
    LODWORD(v33[0]) = *&v35[73];
    *(v33 + 3) = *&v35[76];
    v18 = *(&v36 + 1);
    v17 = *&v36;
LABEL_5:
    *a1 = v11;
    *(a1 + 24) = v12;
    *(a1 + 8) = v13;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    *(a1 + 72) = v16;
    *(a1 + 73) = v33[0];
    *(a1 + 76) = *(v33 + 3);
    *(a1 + 80) = v17;
    *(a1 + 88) = v18;
    return result;
  }

  v19 = v44;
  v20 = *(v2 + 9);
  *&v35[32] = *(v2 + 8);
  *&v35[48] = v20;
  v21 = *(v2 + 11);
  *&v35[64] = *(v2 + 10);
  v36 = v21;
  v22 = *(v2 + 7);
  *v35 = *(v2 + 6);
  *&v35[16] = v22;
  v11 = *v2;
  v28 = *&v43[8];
  v29 = *&v43[24];
  v30 = *(v2 + 1);
  v31 = *(v2 + 3);
  v23 = *(v2 + 10);
  v24 = *(v2 + 11);
  v25 = *(v2 + 7);
  v37 = *(v2 + 5);
  v38 = v25;
  v39 = *(v2 + 72);
  v40 = *&v43[40];
  v41 = *&v43[56];
  v42 = v43[72];
  outlined init with copy of TextModel.Cluster(v35, v33);
  result = Path.mix(with:by:)();
  v16 = v34;
  if (v34 != 255)
  {
    v26 = v33[0];
    v27 = v33[1];
    v18 = v24 + (*(&v19 + 1) - v24) * a2;
    v17 = v23 + (*&v19 - v23) * a2;
    result = outlined destroy of [TextModel.MorphCluster](v43, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
    v12 = vaddq_f64(v31, vmulq_n_f64(vsubq_f64(v29, v31), a2));
    v13 = vaddq_f64(v30, vmulq_n_f64(vsubq_f64(v28, v30), a2));
    v14 = v26;
    v15 = v27;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextModel.MorphCluster(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return specialized static TextModel.MorphCluster.== infix(_:_:)(v15, v16);
}

uint64_t TextModel.combineVisuals(with:)(uint64_t *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    result = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*v1, *a1);
    if (result)
    {
      v4 = v1[1];
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = 0;
        v7 = (v4 + 32);
        v8 = (v2 + 32);
        do
        {
          v9 = *v7;
          v53 = v7[1];
          v10 = v7[2];
          v11 = v7[3];
          v12 = v7[5];
          *&v54[32] = v7[4];
          v55 = v12;
          *v54 = v10;
          *&v54[16] = v11;
          v52 = v9;
          v13 = *(v2 + 16);
          if (v6 == v13)
          {
            break;
          }

          if (v6 >= v13)
          {
            __break(1u);
            return result;
          }

          v14 = v8[1];
          v36 = *v8;
          v37 = v14;
          v15 = v8[2];
          v16 = v8[3];
          v17 = v8[5];
          *&v38[32] = v8[4];
          v39 = v17;
          *v38 = v15;
          *&v38[16] = v16;
          v42 = *v54;
          v43 = *&v54[16];
          v44 = *&v54[32];
          v45 = v55;
          v40 = v52;
          v41 = v53;
          v48 = v15;
          v49 = v16;
          v50 = *&v38[32];
          v51 = v17;
          v46 = v36;
          v47 = v37;
          v59 = *&v54[8];
          v60 = *&v54[24];
          v61 = v54[40];
          v56 = *&v38[8];
          v57 = *&v38[24];
          v58 = v38[40];
          outlined init with copy of TextModel.Cluster(&v52, v35);
          outlined init with copy of TextModel.Cluster(&v36, v35);
          v18 = Path.canMix(with:)();
          result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(&v40, type metadata accessor for (TextModel.Cluster, TextModel.Cluster));
          if ((v18 & 1) == 0)
          {
            return 0;
          }

          ++v6;
          v7 += 6;
          v8 += 6;
        }

        while (v5 != v6);
      }

      return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay20TextAnimationSupport0F5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterVGANG_AK05MorphO0Vs5NeverOTg504_s20fg19Support0A5Model33_5jklm6EDLLV7o6VAfD05p19J0VIgggo_AF_AFtAHs5q21OIegnrzr_TR04_s20ab19stU83_5efgh33EDLLV14combineVisuals4withSayAD12kJ28VGSgADSg_tFAhD0N0V_AMtXEfU1_Tf3nnnpf_nTf1cn_n(v4, v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = v1[1];
    v21 = *(v20 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      *&v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v19 = v36;
      v22 = (v20 + 32);
      do
      {
        v23 = v22[1];
        v40 = *v22;
        v41 = v23;
        v24 = v22[2];
        v25 = v22[3];
        v26 = v22[5];
        v44 = v22[4];
        v45 = v26;
        v42 = v24;
        v43 = v25;
        outlined init with copy of TextModel.Cluster(&v40, &v52);
        *&v36 = v19;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v19 = v36;
        }

        *v54 = v42;
        *&v54[16] = v43;
        *&v54[32] = v44;
        v55 = v45;
        v29 = v40;
        v52 = v40;
        v53 = v41;
        *(v19 + 16) = v28 + 1;
        v30 = v19 + 192 * v28;
        v32 = *&v54[32];
        v31 = v55;
        v33 = *&v54[16];
        *(v30 + 64) = *v54;
        *(v30 + 80) = v33;
        *(v30 + 96) = v32;
        *(v30 + 112) = v31;
        v34 = v53;
        *(v30 + 32) = v29;
        *(v30 + 48) = v34;
        *(v30 + 128) = 0u;
        *(v30 + 144) = 0u;
        *(v30 + 160) = 0u;
        *(v30 + 176) = 0u;
        *(v30 + 192) = 0;
        *(v30 + 200) = 255;
        v22 += 6;
        *(v30 + 208) = 0;
        *(v30 + 216) = 0;
        --v21;
      }

      while (v21);
    }
  }

  return v19;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay20TextAnimationSupport0F5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterVGANG_AK05MorphO0Vs5NeverOTg504_s20fg19Support0A5Model33_5jklm6EDLLV7o6VAfD05p19J0VIgggo_AF_AFtAHs5q21OIegnrzr_TR04_s20ab19stU83_5efgh33EDLLV14combineVisuals4withSayAD12kJ28VGSgADSg_tFAhD0N0V_AMtXEfU1_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v73 = *(a2 + 16);
  v74 = *(a1 + 16);
  if (v73 >= v74)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v135 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v135;
  v71 = v3;
  v72 = a2;
  if (!v4)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v70 = a2 + 32;

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (v9)
    {
      _s20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_AFtSgWOi0_(&v111);
      v131 = v119;
      v132 = v120;
      v133 = v121;
      v134 = v122;
      v127 = v115;
      v128 = v116;
      v129 = v117;
      v130 = v118;
      v123 = v111;
      v124 = v112;
      v10 = v113;
      v11 = v114;
      v9 = 1;
LABEL_13:
      v125 = v10;
      v126 = v11;
      goto LABEL_14;
    }

    v12 = v74;
    if (v7 == v74)
    {
      goto LABEL_12;
    }

    if (v7 >= v74)
    {
      goto LABEL_41;
    }

    v13 = (v3 + 32 + 96 * v7);
    v14 = v13[3];
    v113 = v13[2];
    v114 = v14;
    v15 = v13[5];
    v115 = v13[4];
    v116 = v15;
    v16 = v13[1];
    v111 = *v13;
    v112 = v16;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_42;
    }

    if (v8 == v73)
    {
LABEL_12:
      _s20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_AFtSgWOi0_(&v111);
      v131 = v119;
      v132 = v120;
      v133 = v121;
      v134 = v122;
      v127 = v115;
      v128 = v116;
      v129 = v117;
      v130 = v118;
      v123 = v111;
      v124 = v112;
      v10 = v113;
      v11 = v114;
      v9 = 1;
      v7 = v12;
      goto LABEL_13;
    }

    if (v8 >= v73)
    {
      goto LABEL_43;
    }

    v29 = (v70 + 96 * v8);
    v30 = v29[3];
    v101 = v29[2];
    v102 = v30;
    v31 = v29[5];
    v103 = v29[4];
    v104 = v31;
    v32 = v29[1];
    v99 = *v29;
    v100 = v32;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_44;
    }

    v34 = v13[3];
    v125 = v13[2];
    v126 = v34;
    v35 = v13[5];
    v127 = v13[4];
    v128 = v35;
    v36 = v13[1];
    v123 = *v13;
    v124 = v36;
    v37 = v29[3];
    v131 = v29[2];
    v132 = v37;
    v38 = v29[5];
    v133 = v29[4];
    v134 = v38;
    v39 = v29[1];
    v129 = *v29;
    v130 = v39;
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(&v123);
    outlined init with copy of TextModel.Cluster(&v111, &v75);
    outlined init with copy of TextModel.Cluster(&v99, &v75);
    v9 = 0;
    ++v7;
LABEL_14:
    v119 = v131;
    v120 = v132;
    v121 = v133;
    v122 = v134;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v118 = v130;
    v111 = v123;
    v112 = v124;
    v113 = v125;
    v114 = v126;
    result = _s20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_AFtSgWOg(&v111);
    if (result == 1)
    {
      goto LABEL_45;
    }

    v89 = v125;
    v90 = v126;
    v91 = v127;
    v92 = v128;
    v87 = v123;
    v88 = v124;
    v95 = v131;
    v96 = v132;
    v97 = v133;
    v98 = v134;
    v93 = v129;
    v94 = v130;
    v101 = v125;
    v102 = v126;
    v99 = v123;
    v100 = v124;
    v105 = v129;
    v106 = v130;
    v103 = v127;
    v104 = v128;
    v109 = v133;
    v110 = v134;
    v107 = v131;
    v108 = v132;
    outlined init with copy of TextModel.Cluster(&v93, &v75);
    outlined init with copy of TextModel.Cluster(&v87, &v75);
    result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(&v99, type metadata accessor for (TextModel.Cluster, TextModel.Cluster));
    v135 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v5 = v135;
    }

    v83 = v95;
    v84 = v96;
    v85 = v97;
    v86 = v98;
    v81 = v93;
    v82 = v94;
    v79 = v91;
    v80 = v92;
    v77 = v89;
    v78 = v90;
    v75 = v87;
    v76 = v88;
    *(v5 + 16) = v18 + 1;
    v19 = (v5 + 192 * v18);
    v20 = v83;
    v21 = v84;
    v22 = v86;
    v19[12] = v85;
    v19[13] = v22;
    v19[10] = v20;
    v19[11] = v21;
    v23 = v75;
    v24 = v76;
    v25 = v78;
    v19[4] = v77;
    v19[5] = v25;
    v19[2] = v23;
    v19[3] = v24;
    v26 = v79;
    v27 = v80;
    v28 = v82;
    v19[8] = v81;
    v19[9] = v28;
    v19[6] = v26;
    v19[7] = v27;
    --v4;
  }

  while (v4);
  if (v9)
  {
LABEL_26:

    return v5;
  }

LABEL_25:
  v40 = v74;
  if (v7 == v74)
  {
    goto LABEL_26;
  }

  v41 = 96 * v8 + 32;
  v42 = 96 * v7 + 32;
  while (v7 < v40)
  {
    v43 = (v3 + v42);
    v44 = *(v3 + v42 + 48);
    v101 = *(v3 + v42 + 32);
    v102 = v44;
    v45 = *(v3 + v42 + 80);
    v103 = *(v3 + v42 + 64);
    v104 = v45;
    v46 = *(v3 + v42 + 16);
    v99 = *(v3 + v42);
    v100 = v46;
    v47 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_38;
    }

    if (v73 == v8)
    {
      goto LABEL_26;
    }

    if (v8 >= v73)
    {
      goto LABEL_39;
    }

    v48 = (v72 + v41);
    v49 = *(v72 + v41 + 48);
    v77 = *(v72 + v41 + 32);
    v78 = v49;
    v50 = *(v72 + v41 + 80);
    v79 = *(v72 + v41 + 64);
    v80 = v50;
    v51 = *(v72 + v41 + 16);
    v75 = *(v72 + v41);
    v76 = v51;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_40;
    }

    v52 = v43[3];
    v125 = v43[2];
    v126 = v52;
    v53 = v43[5];
    v127 = v43[4];
    v128 = v53;
    v54 = v43[1];
    v123 = *v43;
    v124 = v54;
    v55 = v48[3];
    v131 = v48[2];
    v132 = v55;
    v56 = v48[5];
    v133 = v48[4];
    v134 = v56;
    v57 = v48[1];
    v129 = *v48;
    v130 = v57;
    outlined init with copy of TextModel.Cluster(&v99, &v111);
    outlined init with copy of TextModel.Cluster(&v75, &v111);
    outlined init with copy of TextModel.Cluster(&v75, &v111);
    outlined init with copy of TextModel.Cluster(&v99, &v111);
    result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(&v123, type metadata accessor for (TextModel.Cluster, TextModel.Cluster));
    v135 = v5;
    v59 = *(v5 + 16);
    v58 = *(v5 + 24);
    if (v59 >= v58 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
      v5 = v135;
    }

    v119 = v77;
    v120 = v78;
    v121 = v79;
    v122 = v80;
    v117 = v75;
    v118 = v76;
    v115 = v103;
    v116 = v104;
    v113 = v101;
    v114 = v102;
    v111 = v99;
    v112 = v100;
    *(v5 + 16) = v59 + 1;
    v60 = (v5 + 192 * v59);
    v61 = v119;
    v62 = v120;
    v63 = v122;
    v60[12] = v121;
    v60[13] = v63;
    v60[10] = v61;
    v60[11] = v62;
    v64 = v111;
    v65 = v112;
    v66 = v114;
    v60[4] = v113;
    v60[5] = v66;
    v60[2] = v64;
    v60[3] = v65;
    v67 = v115;
    v68 = v116;
    v69 = v118;
    v60[8] = v117;
    v60[9] = v69;
    ++v8;
    v41 += 96;
    ++v7;
    v42 += 96;
    v60[6] = v67;
    v60[7] = v68;
    v40 = v74;
    v3 = v71;
    if (v47 == v74)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay20TextAnimationSupport4EditVySiGGSayAH0iG4InfoVGG_AH0i4WithgJ0VySiGs5NeverOTg504_s20fg8Support4i11VySiGAA0dB4j13VAA0d4WithbE0op17GIgyyd_AD_AFtAIs5l163OIegnrzr_TR04_s20ab133Support10Transition33_5BB6BA5906EF51728AE44082969295EDLLV5build4from2to8deadline6timingAdA0A5ModelACLLV_AKSdAA0a4WipeD6TimingVtFZAA08df2B4e23op6GAA0R0oP27G_AA0rbT0Z6XEfU4_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v51 = *(a2 + 16);
  if (v51 >= v2)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v54 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  result = v54;
  if (v3)
  {
    v6 = a2;
    v5 = v51;
    v7 = a1;
    if (!v2)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v8 = v3;
    v9 = v2;
    v10 = 0;
    v11 = (a1 + 32);
    v12 = (a2 + 48);
    while (v10 < v9)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      if (v5 == v10)
      {
        goto LABEL_38;
      }

      if (v10 >= v5)
      {
        goto LABEL_32;
      }

      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_33;
      }

      v15 = *v11;
      v16 = *(v11 + 8);
      v17 = *(v11 + 24);
      v18 = *v12;
      v19 = *(v12 - 8);
      v20 = *(v12 - 2);
      v55 = result;
      v22 = *(result + 16);
      v21 = *(result + 24);
      if (v22 >= v21 >> 1)
      {
        v42 = v8;
        v45 = v9;
        v39 = *(v11 + 24);
        v40 = *(v11 + 8);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v17 = v39;
        v16 = v40;
        v8 = v42;
        v7 = a1;
        v6 = a2;
        v5 = v51;
        v14 = v10 + 1;
        v9 = v45;
        result = v55;
      }

      *(result + 16) = v22 + 1;
      v23 = result + (v22 << 6);
      *(v23 + 32) = v15;
      *(v23 + 33) = *v53;
      *(v23 + 36) = *&v53[3];
      *(v23 + 40) = v16;
      *(v23 + 56) = v17;
      *(v23 + 72) = v20;
      *(v23 + 80) = v19;
      *(v23 + 84) = *&v52[3];
      *(v23 + 81) = *v52;
      *(v23 + 88) = v18;
      if (v8 == ++v10)
      {
        goto LABEL_18;
      }

      v11 += 40;
      v12 += 3;
      if (v13 == v9)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_31:
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
    __break(1u);
    goto LABEL_38;
  }

  v14 = 0;
  v13 = 0;
  v9 = v2;
  v6 = a2;
  v5 = v51;
  v7 = a1;
LABEL_18:
  if (v13 != v9)
  {
    v24 = 0;
    v25 = (v7 + 40 * v13 + 56);
    v26 = (v6 + 24 * v14 + 48);
    v27 = v5 - v14;
    while (1)
    {
      v28 = v13 + v24;
      if (v13 + v24 >= v9)
      {
        goto LABEL_34;
      }

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_35;
      }

      if (v27 == v24)
      {
        return result;
      }

      if (v14 + v24 >= v5)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v14 + v24, 1))
      {
        goto LABEL_37;
      }

      v30 = *(v25 - 24);
      v31 = *(v25 - 1);
      v32 = *v25;
      v33 = *(v26 - 2);
      v34 = *v26;
      v35 = *(v26 - 8);
      v56 = result;
      v37 = *(result + 16);
      v36 = *(result + 24);
      if (v37 >= v36 >> 1)
      {
        v44 = v14;
        v46 = v9;
        v50 = v27;
        v48 = *(v25 - 1);
        v43 = *v25;
        v41 = *(v26 - 8);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v35 = v41;
        v32 = v43;
        v31 = v48;
        v27 = v50;
        v5 = v51;
        v14 = v44;
        v9 = v46;
        result = v56;
      }

      *(result + 16) = v37 + 1;
      v38 = result + (v37 << 6);
      *(v38 + 32) = v30;
      *(v38 + 33) = *v53;
      *(v38 + 36) = *&v53[3];
      *(v38 + 40) = v31;
      *(v38 + 56) = v32;
      *(v38 + 72) = v33;
      *(v38 + 80) = v35;
      *(v38 + 84) = *&v52[3];
      *(v38 + 81) = *v52;
      *(v38 + 88) = v34;
      ++v24;
      v25 = (v25 + 40);
      v26 += 3;
      if (v29 == v9)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextModel(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = a2[1];
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v2, v7) & 1) == 0)
  {
    return 0;
  }

  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  return CGRectEqualToRect(v13, v14);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TextWipeTransitionTiming.Bezier()
{
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnitPoint.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextWipeTransitionTiming.Bezier()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextWipeTransitionTiming.Bezier()
{
  UnitPoint.hash(into:)();

  return UnitPoint.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextWipeTransitionTiming.Bezier()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextWipeTransitionTiming.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v7);
  v8 = v0[7];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v8);
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  v9 = v0[16];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v9);
  v10 = v0[17];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x19A8BDE80](*&v10);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextWipeTransitionTiming(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return specialized static TextWipeTransitionTiming.== infix(_:_:)(v11, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextWipeTransitionTiming()
{
  Hasher.init(_seed:)();
  TextWipeTransitionTiming.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextWipeTransitionTiming()
{
  Hasher.init(_seed:)();
  TextWipeTransitionTiming.hash(into:)();
  return Hasher._finalize()();
}

uint64_t EditAnimationInfo.hash(into:)(double a1, double a2, uint64_t a3, char a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&a1);
  Hasher._combine(_:)(a4 & 1);
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  return MEMORY[0x19A8BDE80](*&v6);
}

uint64_t static EditWithAnimationInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((static Edit.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for EditWithAnimationInfo() + 36);
  v5 = *&a1[v4];
  v6 = a1[v4 + 8];
  v7 = *&a1[v4 + 16];
  v8 = &a2[v4];
  v9 = *(v8 + 2);
  v10 = (v5 == *v8) & ~(v6 ^ v8[8]);
  if (v7 == v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance EditAnimationInfo(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EditAnimationInfo()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  EditAnimationInfo.hash(into:)(v1, v3, v5, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditAnimationInfo()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  EditAnimationInfo.hash(into:)(v1, v3, v5, v2);
  return Hasher._finalize()();
}

double TextWipeTransitionTiming.heroTimeForSplitClock.getter()
{
  v1 = v0[3];
  v2 = v0[1] + v0[2];
  if (*v0 > v2)
  {
    v2 = *v0;
  }

  v3 = v0[4];
  v4 = v2 - (*v0 + *v0);
  v5 = (v3 + v1 + v1 + v2 - v4) * 0.5;
  if (v5 <= 0.0)
  {
    v5 = 0.0;
  }

  v6 = v1 + v5;
  v7 = (v3 + v1 * 3.0 + v2 - v4) * 0.5;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  return v6 + (v7 - v6) * 0.5;
}

uint64_t specialized Collection<>.animationInfoGroup1Of2(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
LABEL_23:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = a2;
  v4 = specialized Collection<>.animationInfo(_:)(a1, a2);
  v5 = v4;
  v6 = *(v2 + 32);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v9 = (v6 + 32);
  do
  {
    v10 = *v9;
    v11 = __OFADD__(v8, v10);
    v8 += v10;
    if (v11)
    {
      __break(1u);
LABEL_21:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      goto LABEL_9;
    }

    v9 += 40;
    --v7;
  }

  while (v7);
  if (v8 != 1)
  {
    goto LABEL_13;
  }

  v2 = *(v4 + 16);
  if (!v2)
  {
    goto LABEL_13;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v2 > *(v5 + 2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = *(a1 + 24);
  v13 = 0;
  v14 = v2 - 1;
  if (v2 == 1)
  {
    goto LABEL_11;
  }

  v18 = !is_mul_ok(v14, 0x18uLL);
  if (&v5[24 * v14 + 32] < v5 + 32)
  {
    goto LABEL_11;
  }

  if (v18)
  {
    goto LABEL_11;
  }

  v13 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v19 = (v5 + 56);
  v20 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v21 = v12 + *v19;
    *(v19 - 3) = v12 + *(v19 - 3);
    *v19 = v21;
    v19 += 6;
    v20 -= 2;
  }

  while (v20);
  if (v2 != v13)
  {
LABEL_11:
    v15 = v2 - v13;
    v16 = 24 * v13 + 32;
    do
    {
      *&v5[v16] = v12 + *&v5[v16];
      v16 += 24;
      --v15;
    }

    while (v15);
  }

LABEL_13:
  TextWipeTransitionTiming.heroTimeForSplitClock.getter();
  return v5;
}

uint64_t specialized Collection<>.animationInfoGroup2Of2(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v3 = specialized Collection<>.animationInfo(_:)(a1, a2);
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_9:
      TextWipeTransitionTiming.heroTimeForSplitClock.getter();
      return v3;
    }

    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    if (v4 <= *(v3 + 16))
    {
      v7 = v5 + v5 + v6;
      v8 = 0;
      v9 = v4 - 1;
      if (v4 == 1)
      {
        goto LABEL_7;
      }

      v13 = !is_mul_ok(v9, 0x18uLL);
      if (v3 + 32 + 24 * v9 < v3 + 32)
      {
        goto LABEL_7;
      }

      if (v13)
      {
        goto LABEL_7;
      }

      v8 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v14 = (v3 + 56);
      v15 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v16 = v7 + *v14;
        *(v14 - 3) = v7 + *(v14 - 3);
        *v14 = v16;
        v14 += 6;
        v15 -= 2;
      }

      while (v15);
      if (v4 != v8)
      {
LABEL_7:
        v10 = v4 - v8;
        v11 = 24 * v8 + 32;
        do
        {
          *(v3 + v11) = v7 + *(v3 + v11);
          v11 += 24;
          --v10;
        }

        while (v10);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}