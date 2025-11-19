BOOL protocol witness for static Equatable.== infix(_:_:) in conformance RawTextLayout(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport03RawB6Layout33_EB92A35C21DD52D72B91A53CA7419194LLV8FragmentV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  v12.origin.x = v6;
  v12.origin.y = v7;
  v12.size.width = v8;
  v12.size.height = v9;
  return CGRectEqualToRect(v11, v12);
}

uint64_t Text.Layout.Line.run(for:affinity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Text.Layout.Run();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v11 = v18;
  v10 = v19;
  if (v18 < v19)
  {
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v19 == v18)
    {
      v12 = 1;
    }

    else
    {
      v17 = a3;
      do
      {
        Text.Layout.Line.subscript.getter();
        v13 = Text.Layout.Run.characterRange.getter();
        if (a2 == 1)
        {
          if (v13 <= a1 && v14 > a1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (a2)
          {
            goto LABEL_17;
          }

          if (v13 <= a1 && v14 >= a1)
          {
LABEL_13:
            a3 = v17;
            (*(v7 + 32))(v17, v9, v6);
            v12 = 0;
            return (*(v7 + 56))(a3, v12, 1, v6);
          }
        }

        ++v10;
        (*(v7 + 8))(v9, v6);
      }

      while (v11 != v10);
      v12 = 1;
      a3 = v17;
    }

    return (*(v7 + 56))(a3, v12, 1, v6);
  }

  return result;
}

id Text.Layout.Line.paragraphStyle.getter()
{
  v0 = type metadata accessor for Text.Layout.Run();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() >= 1)
  {
    Text.Layout.Line.subscript.getter();
    if (one-time initialization token for kitParagraphStyle != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    (*(v1 + 8))(v3, v0);
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      outlined destroy of TextEffectsAnimationController.Timing?(v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }
  }

  v5 = [objc_opt_self() defaultParagraphStyle];

  return v5;
}

double Text.Layout.Line.horizontalAlignmentFactor.getter()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = Text.Layout.Line.paragraphStyle.getter();
  v8 = [v7 horizontalAlignment];

  result = 0.0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      return 1.0;
    }

    else if (v8 == 4)
    {
      return 0.5;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      Text.Layout.Line.baseWritingDirection.getter(v6);
      (*(v1 + 104))(v3, *MEMORY[0x1E697E7D0], v0);
      v10 = static LayoutDirection.== infix(_:_:)();
      v11 = *(v1 + 8);
      v11(v3, v0);
      v11(v6, v0);
      result = 0.0;
      if (v10)
      {
        return 1.0;
      }
    }
  }

  else
  {
    Text.Layout.Line.baseWritingDirection.getter(v6);
    (*(v1 + 104))(v3, *MEMORY[0x1E697E7D0], v0);
    v12 = static LayoutDirection.== infix(_:_:)();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);
    result = 1.0;
    if (v12)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t TextLinesLayer.init(layer:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(a1, v15);
  if (swift_dynamicCast())
  {
    v5 = v14;
    v6 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 8];
    v7 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 16];
    v8 = &v2[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
    v9 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 24];
    v10 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content + 40];
    *v8 = *&v14[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content];
    *(v8 + 1) = v6;
    *(v8 + 2) = v7;
    *(v8 + 24) = v9;
    *(v8 + 40) = v10;
    v13.receiver = v2;
    v13.super_class = ObjectType;

    v11 = objc_msgSendSuper2(&v13, sel_initWithLayer_, v5);
    [v11 setOpaque_];
    [v11 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TextLinesLayer.draw(in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v12 = a2;
  v13 = a3;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in closure #1 in TextLinesLayer.draw(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a3;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v41 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v34 - v6;
  v7 = type metadata accessor for Text.Layout.Line();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v34 - v12;
  type metadata accessor for (Text.Layout.Line, CGPoint)();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content;
  v17 = *(a2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919414TextLinesLayer_content);
  v16 = *(v15 + 8);
  v18 = *(v17 + 16);

  v45 = v16;

  v38 = v18;
  if (v18)
  {
    v20 = 0;
    v21 = (v8 + 32);
    v35 = (v5 + 8);
    v36 = (v8 + 8);
    v37 = v8 + 16;
    v22 = (v45 + 40);
    while (v20 < *(v17 + 16))
    {
      v23 = v17;
      v24 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20;
      v25 = v44;
      result = (*(v8 + 16))(v44, v24, v7);
      v26 = *(v45 + 16);
      if (v20 == v26)
      {

        return (*v36)(v25, v7);
      }

      if (v20 >= v26)
      {
        goto LABEL_10;
      }

      ++v20;
      v27 = *(v22 - 1);
      v28 = *v22;
      v29 = *v21;
      v30 = v40;
      (*v21)(v40, v25, v7);
      v29(v10, v30, v7);
      v46 = Text.Layout.Line.characterRange.getter();
      v47 = v31;
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
      v32 = v39;
      v33 = RangeSet.init(_:)();
      MEMORY[0x1EEE9AC00](v33);
      *(&v34 - 2) = v10;
      TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(v10, v32, v42, partial apply for closure #1 in closure #1 in closure #1 in TextLinesLayer.draw(in:), (&v34 - 4), v27, v28);
      (*v35)(v32, v41);
      result = (*v36)(v10, v7);
      v22 += 2;
      v17 = v23;
      if (v38 == v20)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

uint64_t TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6, double a7)
{
  v93 = a5;
  v94 = a4;
  v101 = a3;
  v96 = a1;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v83 - v17;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v97 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v83 - v24;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v95 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v7 + v35, v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v36 = *(v12 + 48);
  v98 = v11;
  v100 = v12 + 48;
  v99 = v36;
  LODWORD(v11) = v36(v34, 1, v11);
  result = outlined destroy of TextRenderLayer.Layout?(v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v11 == 1)
  {
    return result;
  }

  v38 = TextRenderLayer.textMarkers(for:)(a2);
  v39 = v7;
  if (!v38)
  {
    v94(v101);
    v48 = v97;
    v49 = v96;
LABEL_7:
    v44 = v98;
    goto LABEL_21;
  }

  v40 = v38;
  v85 = a2;
  v86 = v7;
  v41 = type metadata accessor for Text.Effect.InteractionMetrics();
  v42 = *(*(v41 - 8) + 56);
  v43 = v90;
  v84 = v41;
  v42(v90, 1, 1);
  v44 = v98;
  if (!*(v40 + 16))
  {
    v45 = &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?;
    v46 = type metadata accessor for Text.Effect.InteractionMetrics;
    v47 = v43;
    goto LABEL_9;
  }

  outlined init with copy of TextRenderLayer.Layout?(v86 + v35, v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v99(v31, 1, v44) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v45 = &lazy cache variable for type metadata for TextRenderLayer.Layout?;
    v46 = type metadata accessor for TextRenderLayer.Layout;
    v47 = v31;
LABEL_9:
    outlined destroy of TextRenderLayer.Layout?(v47, v45, v46);
    v49 = v96;
LABEL_10:
    v94(v101);
    v48 = v97;
    goto LABEL_11;
  }

  v53 = v87;
  outlined init with take of TextRenderLayer.Layout(v31, v87, type metadata accessor for TextRenderLayer.Layout);

  v49 = v96;
  v54 = Text.Layout.Line.textLineFragment.getter();
  if (!v54)
  {

    outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v53, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_10;
  }

  v55 = v54;
  v56 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v43, *(v53 + *(v44 + 44)), v40);

  LOBYTE(v105) = 0;
  MEMORY[0x1EEE9AC00](v57);
  *(&v83 - 6) = &v105;
  *(&v83 - 5) = v55;
  *(&v83 - 4) = a6;
  *(&v83 - 3) = a7;
  v81 = v56;
  GraphicsContext.withCGContext(content:)();

  outlined destroy of TextRenderLayer.Layout?(v43, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v53, type metadata accessor for TextRenderLayer.Layout);
  v58 = v105;
  v94(v101);
  if (v58)
  {

    v48 = v97;
    v49 = v96;
    v39 = v86;
    v44 = v98;
    goto LABEL_18;
  }

  v48 = v97;
  v49 = v96;
  v44 = v98;
LABEL_11:
  v50 = v92;
  (v42)(v92, 1, 1, v84);
  if (!*(v40 + 16))
  {

    outlined destroy of TextRenderLayer.Layout?(v50, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v39 = v86;
LABEL_18:
    a2 = v85;
    goto LABEL_21;
  }

  v39 = v86;
  v51 = v89;
  outlined init with copy of TextRenderLayer.Layout?(v86 + v35, v89, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v52 = v99(v51, 1, v44);
  a2 = v85;
  if (v52 == 1)
  {

    outlined destroy of TextRenderLayer.Layout?(v50, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_21;
  }

  v59 = v51;
  v60 = v88;
  outlined init with take of TextRenderLayer.Layout(v59, v88, type metadata accessor for TextRenderLayer.Layout);
  v61 = Text.Layout.Line.textLineFragment.getter();
  if (!v61)
  {

    outlined destroy of TextRenderLayer.Layout?(v92, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v60, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_7;
  }

  v62 = v61;
  v63 = v60;
  v64 = v98;
  v65 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v92, *(v63 + *(v98 + 44)), v40);

  MEMORY[0x1EEE9AC00](v66);
  *(&v83 - 4) = v62;
  *(&v83 - 3) = a6;
  v81 = *&a7;
  v82 = v65;
  GraphicsContext.withCGContext(content:)();

  v44 = v64;
  a2 = v85;

  outlined destroy of TextRenderLayer.Layout?(v92, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v88, type metadata accessor for TextRenderLayer.Layout);
LABEL_21:
  v67 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v67 - 8) + 56))(v48, 1, 1, v67);
  v68 = v39 + v35;
  v69 = v95;
  outlined init with copy of TextRenderLayer.Layout?(v68, v95, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v99(v69, 1, v44) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v48, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    return outlined destroy of TextRenderLayer.Layout?(v69, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v70 = v91;
  outlined init with take of TextRenderLayer.Layout(v69, v91, type metadata accessor for TextRenderLayer.Layout);
  v71 = TextRenderLayer.correctionMarkers(for:)(a2);
  if (!v71)
  {
    goto LABEL_35;
  }

  if (!*(v71 + 2))
  {

LABEL_35:
    outlined destroy of TextRenderLayer.Layout?(v48, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v80 = v70;
    return outlined destroy of Text.Effect.Composition(v80, type metadata accessor for TextRenderLayer.Layout);
  }

  v72 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v48, *(v70 + *(v44 + 44)), v71);
  v73 = v72;
  v74 = *(v72 + 2);
  if (!v74)
  {
LABEL_33:

    outlined destroy of TextRenderLayer.Layout?(v97, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

    v80 = v91;
    return outlined destroy of Text.Effect.Composition(v80, type metadata accessor for TextRenderLayer.Layout);
  }

  v75 = 0;
  v76 = (v72 + 32);
  v77 = *(v72 + 2);
  while (v75 < v77)
  {
    if (v74 == v75)
    {
      goto LABEL_42;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v76, &v105);
    if (v106 == 1)
    {
      v78 = v105;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v107, &v102, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v103)
      {
        goto LABEL_43;
      }

      v79 = outlined init with take of Any(&v102, v104);
      MEMORY[0x1EEE9AC00](v79);
      *(&v83 - 4) = v78;
      *(&v83 - 3) = v104;
      v81 = &v105;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v104);
    }

    ++v75;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v105);
    v77 = *(v73 + 2);
    v76 += 96;
    if (v75 == v77)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  outlined destroy of TextEffectsAnimationController.Timing?(&v102, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  LODWORD(v82) = 0;
  v81 = 1243;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TextRunsLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v14);
  if (swift_dynamicCast())
  {
    v7 = v13;
    v8 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(v7 + v8, v6, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    outlined init with take of TextRenderLayer.Layout(v6, v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel_initWithLayer_, v7);
    [v9 setOpaque_];
    [v9 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TextRunsLayer.draw(in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v12 = a3;
  v13 = a2;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in closure #1 in TextRunsLayer.draw(in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a1;
  v25 = a2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Layout.Line();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = (v17 + *(v10 + 28));
  v19 = *v18;
  v20 = v18[1];
  outlined init with copy of Text.Effect.Composition(v17, v12, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  Text.Layout.Line.characterRanges(runIndices:)();
  outlined destroy of Text.Effect.Composition(v12, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v21 = a3;
  specialized TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(v16, v8, v24, v25, v21, v19, v20);

  (*(v6 + 8))(v8, v5);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v50 = type metadata accessor for Text.Layout.Run();
  v42 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v48 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Text.Layout.Line();
  v45 = *(v13 - 8);
  v14 = v45;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0) - 8;
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919413TextRunsLayer_content;
  swift_beginAccess();
  outlined init with copy of Text.Effect.Composition(a2 + v22, v20, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v23 = *(v14 + 16);
  v24 = v20;
  v44 = v20;
  v23(v16, v20, v13);
  v25 = *(v8 + 16);
  v26 = &v24[*(v18 + 32)];
  v27 = v12;
  v28 = v12;
  v29 = v48;
  v25(v28, v26, v48);
  v23(v51, v16, v13);
  v30 = v47;
  v25(v47, v27, v29);
  RangeSet.ranges.getter();
  v31 = *(v8 + 8);
  v31(v30, v29);
  v31(v27, v29);
  (*(v45 + 8))(v16, v13);
  outlined destroy of Text.Effect.Composition(v44, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v32 = &v51[*(v46 + 28)];
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator();
  v34 = *(v33 + 48);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
  (*(*(v35 - 8) + 32))(&v32[v34], v49, v35);
  *v32 = 0;
  *(v32 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
    return outlined destroy of Text.Effect.Composition(v51, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
  }

  v36 = 0;
  v37 = 0;
  v38 = (v42 + 8);
  while (1)
  {
    result = RangeSet.Ranges.subscript.getter();
    if (__OFADD__(v52, v36))
    {
      break;
    }

    if (__OFADD__(v36++, 1))
    {
      goto LABEL_12;
    }

    result = RangeSet.Ranges.subscript.getter();
    if (__OFSUB__(v53, v52))
    {
      goto LABEL_13;
    }

    if (v36 >= v53 - v52)
    {
      v36 = 0;
      *v32 = ++v37;
    }

    Text.Layout.Line.subscript.getter();
    GraphicsContext.draw(_:options:)();
    (*v38)(v4, v50);
    if (v37 >= RangeSet.Ranges.count.getter())
    {
      *(v32 + 1) = v36;
      return outlined destroy of Text.Effect.Composition(v51, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void @objc TextLinesLayer.draw(in:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, id, id, uint64_t))
{
  v6 = a3;
  v12 = a1;
  v7 = [v12 superlayer];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for TextRenderLayer(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = v6;
      v6 = v12;
      v12 = v8;
      a4(v10, v11, v6, v10);

      v8 = v12;
    }

    v6 = v12;
    v12 = v8;
  }
}

uint64_t type metadata completion function for TextRunsLayer()
{
  result = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(319);
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

id DynamicEffectLayer.draw(inDisplayList:)(void *a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  result = [v1 bounds];
  if (v6 > 0.0 && v5 > 0.0)
  {
    v7 = a1;
    EnvironmentValues.init()();
    v13 = GraphicsContext.init(displayList:environment:)();
    v8 = [v1 superlayer];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TextRenderLayer(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v1;
        specialized TextRenderLayer.drawContent(_:)(v11, v12, &v13);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t TextRenderLayer.draw(composition:segmentIndex:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v152 = a3;
  v147 = a2;
  v5 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v149 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v158 = &v128 - v9;
  v155 = type metadata accessor for TextRenderLayer.Layout(0);
  v157 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v134 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v128 - v12;
  v13 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v128 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v128 - v19;
  v151 = type metadata accessor for Text.Effect.InteractionMetrics();
  v148 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v146 = (&v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v145 = v21;
  v144 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v128 - v22;
  v23 = type metadata accessor for Text.Effect.Composition.Run(0);
  v153 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v128 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v13);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v143 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v137 = &v128 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v128 - v37;
  v39 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v140 = v39;
  outlined init with copy of TextRenderLayer.Layout?(v3 + v39, v38, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v40 = *(v157 + 48);
  v157 += 48;
  v139 = v40;
  LODWORD(v39) = v40(v38, 1, v155);
  result = outlined destroy of TextRenderLayer.Layout?(v38, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v39 != 1)
  {
    v150 = v3;
    TextRenderLayer.drawingContext(_:time:)(0.0, 1, &v161);
    v133 = type metadata accessor for Text.Effect.Composition(0);
    v42 = *(a1 + *(v133 + 24));
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = v42 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v45 = v153[9];
      do
      {
        outlined init with copy of Text.Effect.Composition(v44, v31, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(a1, &v161);
        outlined destroy of Text.Effect.Composition(v31, type metadata accessor for Text.Effect.Composition.Operation);
        v44 += v45;
        --v43;
      }

      while (v43);
    }

    v135 = a1;
    v46 = v161;
    v47 = *(v161 + 16);
    swift_beginAccess();
    v48 = *(v47 + 16);
    *(v47 + 16) = MEMORY[0x1E69E7CC0];
    v49 = v150;
    v50 = *(v150 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
    if (!v50 || !*(v50 + 16))
    {
      v69 = *(v150 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
      v70 = *(v46 + 16);
      v71 = v70[4];
      v163 = v70[3];
      v164 = v71;
      v162 = v70[2];
      v160 = v162;
      v167 = v163;
      v168 = *(&v71 + 1);
      v159 = v71;
      v72 = *(v48 + 16);
      if (v72)
      {
        v73 = v149;
        v74 = v48 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v160, &v166);
        outlined init with copy of Text.Effect.Keyframes(&v167, &v166);

        outlined init with copy of [Int : CGFloat](&v159, &v166);
        outlined init with copy of Text.Effect.Composition(&v168, &v166, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
        v75 = *(v73 + 72);
        v76 = v152;
        do
        {
          outlined init with copy of Text.Effect.Composition(v74, v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
          Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(&v162, 0, 0, 1, v76, v69);
          outlined destroy of Text.Effect.Composition(v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
          v74 += v75;
          --v72;
        }

        while (v72);
      }

      else
      {
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v160, &v166);
        outlined init with copy of Text.Effect.Keyframes(&v167, &v166);

        outlined init with copy of [Int : CGFloat](&v159, &v166);
        outlined init with copy of Text.Effect.Composition(&v168, &v166, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
      }

      outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v160);
      outlined destroy of Text.Effect.Keyframes(&v167);

      outlined destroy of [Int : CGFloat](&v159);
      outlined destroy of Text.Effect.Composition(&v168, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
    }

    v131 = v48;
    v132 = v46;
    v51 = lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    v52 = v154;
    v156 = v51;
    RangeSet.init()();
    v53 = *(v42 + 16);
    v54 = v135;
    if (v53)
    {
      v55 = v42 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v56 = v153[9];
      do
      {
        outlined init with copy of Text.Effect.Composition(v55, v28, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v54, v52);
        outlined destroy of Text.Effect.Composition(v28, type metadata accessor for Text.Effect.Composition.Operation);
        v55 += v56;
        --v53;
      }

      while (v53);
    }

    v130 = v42;
    v57 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    v58 = *(v49 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v60 = *(v49 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v59 = *(v49 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v61 = *(v49 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v62 = *(v61 + 112);
    v63 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    swift_beginAccess();
    v64 = *(v49 + v63);
    if (*(v64 + 16) && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v147), (v66 & 1) != 0))
    {
      v67 = v146;
      outlined init with copy of Text.Effect.Composition(*(v64 + 56) + *(v148 + 72) * v65, v146, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
      v68 = v150;
    }

    else
    {
      v128 = v63;
      v129 = v57;
      swift_endAccess();
      v77 = v146;
      *v146 = MEMORY[0x1E69E7CC0];
      v78 = v151;

      RangeSet.init()();
      *(v77 + *(v78 + 24)) = MEMORY[0x1E69E7CD0];
      v79 = v59;
      v80 = v77;
      v81 = (v77 + *(v78 + 28));
      *v81 = 0;
      v81[1] = 0;
      v82 = *(v130 + 16);
      v83 = v135;
      v84 = v60;
      v156 = v61;
      if (v82)
      {
        v85 = v130 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v86 = v153[9];
        do
        {
          outlined init with copy of Text.Effect.Composition(v85, v25, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v80, v83, v84, v79, v62, v156, v58);
          outlined destroy of Text.Effect.Composition(v25, type metadata accessor for Text.Effect.Composition.Operation);
          v85 += v86;
          --v82;
        }

        while (v82);
      }

      v87 = v141;
      outlined init with copy of Text.Effect.Composition(v80, v141, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v148 + 56))(v87, 0, 1, v151);
      v68 = v150;
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v87, v147);
      swift_endAccess();

      v67 = v80;
      v57 = v129;
    }

    v88 = v154;
    v89 = TextRenderLayer.textMarkers(for:)(v154);
    v90 = v152;
    v91 = v135;
    v92 = v142;
    if (v89)
    {
      if (*(v89 + 2))
      {
        v93 = v89;
        v94 = (v135 + *(v133 + 20));
        v95 = *v94;
        v96 = v94[1];
        v97 = v138;
        outlined init with copy of Text.Effect.Composition(v67, v138, type metadata accessor for Text.Effect.InteractionMetrics);
        (*(v148 + 56))(v97, 0, 1, v151);
        v98 = v137;
        outlined init with copy of TextRenderLayer.Layout?(v68 + v140, v137, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if (v139(v98, 1, v155) == 1)
        {
          outlined destroy of TextRenderLayer.Layout?(v97, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

          outlined destroy of TextRenderLayer.Layout?(v98, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v98, v92, type metadata accessor for TextRenderLayer.Layout);
          v99 = Text.Layout.Line.textLineFragment.getter();
          if (v99)
          {
            v100 = v99;
            v101 = v138;
            v102 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v91, v138, *(v92 + *(v155 + 44)), v93);
            v129 = v57;
            v103 = v102;

            v153 = &v128;
            LOBYTE(v162) = 0;
            MEMORY[0x1EEE9AC00](v104);
            *(&v128 - 6) = &v162;
            *(&v128 - 5) = v100;
            *(&v128 - 4) = v95;
            *(&v128 - 3) = v96;
            *(&v128 - 2) = v103;
            GraphicsContext.withCGContext(content:)();
            v156 = 0;
            v57 = v129;

            outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
            outlined destroy of Text.Effect.Composition(v92, type metadata accessor for TextRenderLayer.Layout);
            v105 = v162;
LABEL_32:
            v106 = *(v68 + v57);
            v107 = *(v132 + 16);
            v108 = v107[4];
            v163 = v107[3];
            v164 = v108;
            v162 = v107[2];
            v166 = v162;
            v165 = v163;
            v167 = *(&v108 + 1);
            v168 = v108;
            v109 = *(v131 + 16);
            if (v109)
            {
              v110 = v67;
              v111 = v91;
              v112 = v149;
              v113 = v131 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
              outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v166, &v159);
              outlined init with copy of Text.Effect.Keyframes(&v165, &v159);

              outlined init with copy of [Int : CGFloat](&v168, &v159);
              outlined init with copy of Text.Effect.Composition(&v167, &v159, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
              v114 = *(v112 + 72);
              v115 = v158;
              do
              {
                outlined init with copy of Text.Effect.Composition(v113, v115, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
                Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(&v162, 0, 0, 1, v90, v106);
                v115 = v158;
                outlined destroy of Text.Effect.Composition(v158, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
                v113 += v114;
                --v109;
              }

              while (v109);

              v68 = v150;
              v88 = v154;
              v91 = v111;
              v67 = v110;
            }

            else
            {
              outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v166, &v159);
              outlined init with copy of Text.Effect.Keyframes(&v165, &v159);

              outlined init with copy of [Int : CGFloat](&v168, &v159);
              outlined init with copy of Text.Effect.Composition(&v167, &v159, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
            }

            outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v166);
            outlined destroy of Text.Effect.Keyframes(&v165);

            outlined destroy of [Int : CGFloat](&v168);
            outlined destroy of Text.Effect.Composition(&v167, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
            v116 = v143;
            if ((v105 & 1) == 0)
            {
              v117 = TextRenderLayer.textMarkers(for:)(v88);
              if (v117)
              {
                if (*(v117 + 2))
                {
                  v118 = v117;
                  v119 = (v91 + *(v133 + 20));
                  v120 = *v119;
                  v121 = v119[1];
                  v122 = v136;
                  outlined init with copy of Text.Effect.Composition(v67, v136, type metadata accessor for Text.Effect.InteractionMetrics);
                  (*(v148 + 56))(v122, 0, 1, v151);
                  outlined init with copy of TextRenderLayer.Layout?(v68 + v140, v116, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
                  if (v139(v116, 1, v155) == 1)
                  {
                    outlined destroy of TextRenderLayer.Layout?(v122, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

                    outlined destroy of TextRenderLayer.Layout?(v116, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
                  }

                  else
                  {
                    v123 = v134;
                    outlined init with take of TextRenderLayer.Layout(v116, v134, type metadata accessor for TextRenderLayer.Layout);
                    v124 = Text.Layout.Line.textLineFragment.getter();
                    if (v124)
                    {
                      v125 = v124;
                      v126 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v91, v122, *(v123 + *(v155 + 44)), v118);

                      MEMORY[0x1EEE9AC00](v127);
                      *(&v128 - 4) = v125;
                      *(&v128 - 3) = v120;
                      *(&v128 - 2) = v121;
                      *(&v128 - 1) = v126;
                      GraphicsContext.withCGContext(content:)();

                      outlined destroy of TextRenderLayer.Layout?(v122, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
                    }

                    else
                    {
                      outlined destroy of TextRenderLayer.Layout?(v122, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
                    }

                    outlined destroy of Text.Effect.Composition(v123, type metadata accessor for TextRenderLayer.Layout);
                    v88 = v154;
                  }
                }

                else
                {
                }
              }
            }

            TextRenderLayer.drawCorrectionMarkers(composition:characterRanges:metrics:in:)(v91, v88, v67, v90);
            outlined destroy of Text.Effect.Composition(v67, type metadata accessor for Text.Effect.InteractionMetrics);
            (*(v144 + 8))(v88, v145);
          }

          outlined destroy of TextRenderLayer.Layout?(v138, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

          outlined destroy of Text.Effect.Composition(v92, type metadata accessor for TextRenderLayer.Layout);
        }
      }

      else
      {
      }
    }

    v105 = 0;
    v156 = 0;
    goto LABEL_32;
  }

  return result;
}

uint64_t SharedDynamicLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    v4 = v8;
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v8);
    [v5 setOpaque_];
    [v5 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void SharedDynamicLayer.draw(inDisplayList:)(void *a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  [v1 bounds];
  if (v5 > 0.0 && v4 > 0.0)
  {
    v6 = a1;
    EnvironmentValues.init()();
    v12 = GraphicsContext.init(displayList:environment:)();
    v7 = [v1 superlayer];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for TextRenderLayer(0);
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v1;
        specialized TextRenderLayer.drawContent(_:)(v10, v11, &v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void closure #1 in SharedDynamicLayer.draw(in:)(void *a1, uint64_t *a2)
{
  v3 = [a1 superlayer];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TextRenderLayer(0);
    if (swift_dynamicCastClass())
    {
      TextRenderLayer.drawShared(in:)(a2);
    }
  }
}

uint64_t TextRenderLayer.drawShared(in:)(uint64_t *a1)
{
  v42 = a1;
  v46 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v8 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator();
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for TextRenderLayer.Layout(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v1 + v22, v17, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v23 = *(v19 + 48);
  v41 = v18;
  if (v23(v17, 1, v18) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v17, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v40 = v21;
  outlined init with take of TextRenderLayer.Layout(v17, v21, type metadata accessor for TextRenderLayer.Layout);
  v25 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v26 = v48;
  v27 = *(v48 + 2);
  v52 = v1;
  v28 = v43;
  v27(v43, v1 + v25, v8);
  v29 = v50;
  v27(v50, v28, v8);
  v30 = v49;
  RangeSet.ranges.getter();
  v31 = *(v26 + 1);
  v31(v29, v8);
  v31(v28, v8);
  v32 = *(v44 + 48);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
  (*(*(v33 - 8) + 32))(&v14[v32], v30, v33);
  *v14 = 0;
  *(v14 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
LABEL_17:
    outlined destroy of Text.Effect.Composition(v14, type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator);
    return outlined destroy of Text.Effect.Composition(v40, type metadata accessor for TextRenderLayer.Layout);
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = *v42;
    v49 = *&v40[*(v41 + 24)];
    v50 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
    v48 = &v49[(*(v51 + 80) + 32) & ~*(v51 + 80)];
    while (1)
    {
      result = RangeSet.Ranges.subscript.getter();
      v37 = v53 + v34;
      if (__OFADD__(v53, v34))
      {
        break;
      }

      if (__OFADD__(v34++, 1))
      {
        goto LABEL_19;
      }

      *(v14 + 1) = v34;
      result = RangeSet.Ranges.subscript.getter();
      if (__OFSUB__(v54, v53))
      {
        goto LABEL_20;
      }

      if (v34 >= v54 - v53)
      {
        v34 = 0;
        *v14 = ++v35;
        *(v14 + 1) = 0;
      }

      v53 = v36;
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v37 >= *(*&v50[v52] + 16))
      {
        goto LABEL_22;
      }

      result = GraphicsContext.translateBy(x:y:)();
      if (v37 >= *(v49 + 2))
      {
        goto LABEL_23;
      }

      outlined init with copy of Text.Effect.Composition(&v48[*(v51 + 72) * v37], v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      if (swift_getEnumCaseMultiPayload() < 2)
      {

        outlined destroy of Text.Effect.Composition(v4, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      }

      else
      {
        v39 = v45;
        outlined init with take of TextRenderLayer.Layout(v4, v45, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v39 + *(v46 + 24), v37, &v53);
        outlined destroy of Text.Effect.Composition(v39, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      }

      if (v35 >= RangeSet.Ranges.count.getter())
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t DynamicEffectLayer.init(layer:)(uint64_t a1, uint64_t *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v18);
  if (swift_dynamicCast())
  {
    v11 = v17;
    v12 = *a2;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(&v11[v12], v10, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    outlined init with take of TextRenderLayer.Layout(v10, &v3[*a2], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *&v3[*a3] = *&v11[*a3];
    v16.receiver = v3;
    v16.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v16, sel_initWithLayer_, v11);
    [v13 setOpaque_];
    [v13 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc DynamicEffectLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return DynamicEffectLayer.init(layer:)(&v8, a4, a5);
}

void closure #1 in StaticEffectLayer.draw(in:)(uint64_t *a1, id a2)
{
  v4 = [a2 superlayer];
  if (v4)
  {
    v9 = v4;
    type metadata accessor for TextRenderLayer(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = a2;
      specialized TextRenderLayer.drawContent(_:)(v6, v7, a1);

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }
  }
}

void closure #1 in DynamicEffectLayer.draw(in:)(char *a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Text.Effect.Composition(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 superlayer];
  if (v15)
  {
    type metadata accessor for TextRenderLayer(0);
    if (swift_dynamicCastClass())
    {
      v12 = &a1[*a3];
      swift_beginAccess();
      v13 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
      outlined init with copy of Text.Effect.Composition(&v12[*(v13 + 24)], v11, type metadata accessor for Text.Effect.Composition);
      TextRenderLayer.draw(composition:segmentIndex:in:)(v11, *&a1[*a4], a2);

      outlined destroy of Text.Effect.Composition(v11, type metadata accessor for Text.Effect.Composition);
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t type metadata completion function for DynamicEffectLayer()
{
  result = type metadata accessor for Text.Effect.RenderSegmentation.Effect(319);
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

void LayerGeometryObserver.validateLayers()()
{
  v4 = v0;
  v5 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor;
  v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
  v7 = &unk_1EAEDF000;
  if (!v6)
  {
LABEL_9:
    v15 = v7[54];
    swift_beginAccess();
    v16 = *(v4 + v15);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v34 = *(v4 + v15);
      }

      else
      {
        v34 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x19A8BDCD0](v34))
      {
        return;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    LayerGeometryObserver.removeObservers()();
    *(v4 + v15) = MEMORY[0x1E69E7CC0];

    v17 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root);
    *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root) = 0;

    return;
  }

  v8 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x19A8BDCD0](v18))
    {
      goto LABEL_4;
    }

LABEL_16:
    v13 = v6;
    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_68;
  }

  v10 = *(v9 + 32);
  v11 = v6;
  v12 = v10;
  while (1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
    v13 = v11;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {

      if (*(v4 + v5))
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_17:
    v35 = MEMORY[0x1E69E7CC0];
    v1 = v13;
    v7 = 0;
    v19 = v1;
    while (1)
    {
      v20 = v19;
      MEMORY[0x19A8BD720]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v35;
      if ([v20 masksToBounds])
      {
        if (v35 >> 62)
        {
          if (v35 < 0)
          {
            v22 = v35;
          }

          else
          {
            v22 = v35 & 0xFFFFFFFFFFFFFF8;
          }

          v7 = MEMORY[0x19A8BDCD0](v22);
        }

        else
        {
          v7 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      v21 = [v20 superlayer];

      if (!v21)
      {
        break;
      }

      v19 = v21;

      v6 = v21;
    }

    v23 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root);
    *(v4 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root) = v6;
    v2 = v6;

    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v24 = v35 & 0xFFFFFFFFFFFFFF8;
    v6 = (v35 >> 62);
    if (v35 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5)
    {
      goto LABEL_33;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v11 = v6;

    v12 = MEMORY[0x19A8BDB80](0, v9);
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  if (v35 < 0)
  {
    v7 = v35;
  }

  else
  {
    v7 = v24;
  }

  if (MEMORY[0x19A8BDCD0](v7) < 0)
  {
    __break(1u);
    return;
  }

  if (MEMORY[0x19A8BDCD0](v7) < v5)
  {
    goto LABEL_65;
  }

LABEL_33:
  if ((v35 & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);

    v25 = 0;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
    }

    while (v5 != v26);
  }

  else
  {
  }

  if (v6)
  {
    v7 = _CocoaArrayWrapper.subscript.getter();
    v3 = v27;
    v6 = v28;
    v5 = v29;

    if ((v5 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v7 = (v35 & 0xFFFFFFFFFFFFFF8);
    v3 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    v5 = (2 * v5) | 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v32 + 16);

  if (!__OFSUB__(v5 >> 1, v6))
  {
    if (v33 != (v5 >> 1) - v6)
    {
      goto LABEL_69;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v31)
    {
      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  swift_unknownObjectRelease_n();
LABEL_43:
  specialized _copyCollectionToContiguousArray<A>(_:)(v7, v3, v6, v5);
  v31 = v30;
LABEL_50:
  swift_unknownObjectRelease();
LABEL_51:
  LayerGeometryObserver.updateObserversIfChanged(_:)(v31);
}

void LayerGeometryObserver.updateObserversIfChanged(_:)(uint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    if (v3 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:
    LayerGeometryObserver.removeObservers()();
    *(v1 + v4) = a1;

    LayerGeometryObserver.addObservers()();
    return;
  }

  if (v5 < 0)
  {
    v13 = *(v1 + v4);
  }

  else
  {
    v13 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  if (v3 != MEMORY[0x19A8BDCD0](v13))
  {
    goto LABEL_29;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8BDB80](v6 - 4, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v6);
      }

      v9 = v8;
      swift_beginAccess();
      v10 = *(v1 + v4);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x19A8BDB80](v6 - 4);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          if (a1 < 0)
          {
            v12 = a1;
          }

          else
          {
            v12 = a1 & 0xFFFFFFFFFFFFFF8;
          }

          v3 = MEMORY[0x19A8BDCD0](v12);
          goto LABEL_3;
        }

        v11 = *(v10 + 8 * v6);
        swift_endAccess();
      }

      if (v9 != v11)
      {
        goto LABEL_29;
      }

      ++v6;
      --v3;
    }

    while (v3);
  }
}

uint64_t LayerGeometryObserver.removeObservers()()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v13 = v3;
    }

    else
    {
      v13 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x19A8BDCD0](v13);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8BDB80](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = MEMORY[0x19A8BD5F0](0x73646E756F62, 0xE600000000000000);
      [v7 removeObserver:v0 forKeyPath:v8 context:&static LayerGeometryObserver.context];

      v9 = MEMORY[0x19A8BD5F0](0x6E6F697469736F70, 0xE800000000000000);
      [v7 removeObserver:v0 forKeyPath:v9 context:&static LayerGeometryObserver.context];

      v10 = MEMORY[0x19A8BD5F0](0x6F50726F68636E61, 0xEB00000000746E69);
      [v7 removeObserver:v0 forKeyPath:v10 context:&static LayerGeometryObserver.context];

      v11 = MEMORY[0x19A8BD5F0](0x726F66736E617274, 0xE90000000000006DLL);
      [v7 removeObserver:v0 forKeyPath:v11 context:&static LayerGeometryObserver.context];

      v12 = MEMORY[0x19A8BD5F0](0x426F54736B73616DLL, 0xED000073646E756FLL);
      [v7 removeObserver:v0 forKeyPath:v12 context:&static LayerGeometryObserver.context];
    }

    while (v4 != v5);
  }

  return result;
}

void LayerGeometryObserver.clip(bounds:for:)(void *a1, CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
  LayerGeometryObserver.validateLayers()();
  v11 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v28 = *(v5 + v11);
    }

    else
    {
      v28 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = MEMORY[0x19A8BDCD0](v28);
    v14 = &off_1E744B000;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &off_1E744B000;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v30 = v11;

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x19A8BDB80](i, v12);
    }

    else
    {
      v16 = *(v12 + 8 * i + 32);
    }

    v17 = v16;
    if ([v16 v14[339]])
    {
      [v17 bounds];
      [a1 convertRect:v17 fromLayer:?];
      v34.origin.x = v18;
      v34.origin.y = v19;
      v34.size.width = v20;
      v34.size.height = v21;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32 = CGRectIntersection(v31, v34);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
    }
  }

  v11 = v30;
LABEL_12:
  v12 = *(v5 + v11);
  if (!(v12 >> 62))
  {
    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }

LABEL_14:
    v5 = v22 - 1;
    if (!__OFSUB__(v22, 1))
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v12 + 8 * v5 + 32);
LABEL_19:
          if (([v23 v14[339]] & 1) == 0)
          {
            [v23 bounds];
            [a1 convertRect:v23 fromLayer:?];
            v35.origin.x = v24;
            v35.origin.y = v25;
            v35.size.width = v26;
            v35.size.height = v27;
            v33.origin.x = x;
            v33.origin.y = y;
            v33.size.width = width;
            v33.size.height = height;
            CGRectIntersection(v33, v35);
          }

          return;
        }

        __break(1u);
        return;
      }

LABEL_35:

      v23 = MEMORY[0x19A8BDB80](v5, v12);

      goto LABEL_19;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 < 0)
  {
    v29 = *(v5 + v11);
  }

  else
  {
    v29 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = MEMORY[0x19A8BDCD0](v29);
  if (v22)
  {
    goto LABEL_14;
  }
}

uint64_t LayerGeometryObserver.addObservers()()
{
  swift_beginAccess();
  v1 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return swift_endAccess();
  }

  if (v3 < 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x19A8BDCD0](v13);
  v4 = result;
  if (!result)
  {
    return swift_endAccess();
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8BDB80](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = MEMORY[0x19A8BD5F0](0x73646E756F62, 0xE600000000000000);
      [v7 addObserver:v0 forKeyPath:v8 options:1 context:&static LayerGeometryObserver.context];

      v9 = MEMORY[0x19A8BD5F0](0x6E6F697469736F70, 0xE800000000000000);
      [v7 addObserver:v0 forKeyPath:v9 options:1 context:&static LayerGeometryObserver.context];

      v10 = MEMORY[0x19A8BD5F0](0x6F50726F68636E61, 0xEB00000000746E69);
      [v7 addObserver:v0 forKeyPath:v10 options:1 context:&static LayerGeometryObserver.context];

      v11 = MEMORY[0x19A8BD5F0](0x726F66736E617274, 0xE90000000000006DLL);
      [v7 addObserver:v0 forKeyPath:v11 options:1 context:&static LayerGeometryObserver.context];

      v12 = MEMORY[0x19A8BD5F0](0x426F54736B73616DLL, 0xED000073646E756FLL);
      [v7 addObserver:v0 forKeyPath:v12 options:1 context:&static LayerGeometryObserver.context];
    }

    while (v4 != v5);

    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void LayerGeometryObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, Class isa, void *a5)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  if (a5 != &static LayerGeometryObserver.context)
  {
    if (a2)
    {
      a2 = MEMORY[0x19A8BD5F0](a1, a2);
    }

    outlined init with copy of TextEffectsAnimationController.Timing?(a3, v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v13 = v23;
    if (v23)
    {
      v14 = __swift_project_boxed_opaque_existential_0(v22, v23);
      v15 = *(v13 - 8);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_0(v22);
      if (!isa)
      {
LABEL_9:
        v21.receiver = v5;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, sel_observeValueForKeyPath_ofObject_change_context_, a2, v19, isa, a5);

        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    else
    {
      v19 = 0;
      if (!isa)
      {
        goto LABEL_9;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  isa = Strong;
  TextEffectsRenderer.layerGeometryDidChange()();
LABEL_10:
}

Swift::Void __swiftcall TextEffectsRenderer.layerGeometryDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v27 = (v10 - 8);
    v24[1] = v6;

    v25 = v8;
    v26 = v13;
    do
    {
      v9(v5, v12, v2);
      swift_beginAccess();
      v14 = *(v1 + v8);
      if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();
        v18 = v1;
        v19 = v9;
        v20 = v10;
        v21 = *v27;
        v22 = v17;
        v21(v5, v2);
        v10 = v20;
        v9 = v19;
        v1 = v18;
        v8 = v25;
        v13 = v26;
        v23 = *&v22[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v23[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 0x40u;
        [v23 setNeedsLayout];
      }

      else
      {
        swift_endAccess();
        (*v27)(v5, v2);
      }

      v12 += v13;
      --v7;
    }

    while (v7);
  }
}

void closure #1 in TextRenderLayer.SegmentLayer.draw(in:)(void *a1, id a2, void (*a3)(uint64_t, id, id, uint64_t))
{
  v6 = [a2 superlayer];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TextRenderLayer(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = a1;
      v11 = a2;
      v12 = v7;
      a3(v9, v10, v11, v9);
    }
  }
}

uint64_t closure #3 in TextRenderLayer.SegmentLayer.draw(in:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 contentsScale];
  v10 = a2;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  return (*(v4 + 8))(v7, v3);
}

void TextRenderLayer.SegmentLayer.updateEffect(dynamic:superlayer:segmentIndex:)(char a1, char *a2, unint64_t a3)
{
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = *v3 >> 62;
  if (v20 == 2)
  {
    if (a1)
    {
      return;
    }

    v66 = v3;
    v21 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = (v19 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content;
    v23 = v16;
    swift_beginAccess();
    outlined init with copy of Text.Effect.Composition(v22, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v24 = type metadata accessor for StaticEffectLayer(0);
    v25 = a2;
    v26 = objc_allocWithZone(v24);
    outlined init with copy of Text.Effect.Composition(v18, &v26[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *&v26[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex] = a3;
    v67.receiver = v26;
    v67.super_class = v24;
    v27 = objc_msgSendSuper2(&v67, sel_init);
    [v27 setOpaque_];
    [v27 setNeedsDisplay];
    outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    [v27 setDelegate_];
    outlined init with copy of Text.Effect.Composition(v22 + *(v23 + 24), v14, type metadata accessor for Text.Effect.Composition);
    TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v14, a3, 0);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    outlined destroy of Text.Effect.Composition(v14, type metadata accessor for Text.Effect.Composition);
    TextRenderLayer.pixelLength.getter();
    v37 = v36;
    v70.origin.x = v29;
    v70.origin.y = v31;
    v70.size.width = v33;
    v70.size.height = v35;
    MinX = CGRectGetMinX(v70);
    v71.origin.x = v29;
    v71.origin.y = v31;
    v71.size.width = v33;
    v71.size.height = v35;
    MaxX = CGRectGetMaxX(v71);
    v72.origin.x = v29;
    v72.origin.y = v31;
    v72.size.width = v33;
    v72.size.height = v35;
    MinY = CGRectGetMinY(v72);
    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    MaxY = CGRectGetMaxY(v73);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v42 = *&v25[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements];
      if (*(v42 + 16) > a3)
      {
        v43 = v37 * floor(MinX / v37);
        v44 = ceil(MaxX / v37);
        v45 = v37 * floor(MinY / v37);
        v46 = v37 * ceil(MaxY / v37);
        v47 = v37 * v44 - v43;
        v48 = v46 - v45;
        [v27 setFrame_];
        [v27 setBounds_];
        [v27 setContentsScale_];

        [v25 insertSublayer:v27 above:v21];
        v49 = 0xC000000000000000;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v20 != 3)
  {
    goto LABEL_16;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v66 = v3;
  v21 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
  v50 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content;
  swift_beginAccess();
  outlined init with copy of Text.Effect.Composition(v21 + v50, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  v51 = type metadata accessor for DynamicEffectLayer(0);
  v52 = a2;
  v53 = objc_allocWithZone(v51);
  outlined init with copy of Text.Effect.Composition(v18, &v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content], type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  *&v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex] = a3;
  v69.receiver = v53;
  v69.super_class = v51;
  v54 = v52;
  v27 = objc_msgSendSuper2(&v69, sel_init);
  [v27 setOpaque_];
  [v27 setNeedsDisplay];
  outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  [v27 setDelegate_];
  v55 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v54[v55], v8);
  v68 = a3;
  LOBYTE(v55) = RangeSet.contains(_:)();
  (*(v9 + 8))(v11, v8);
  if (v55)
  {
    [v27 setFrame_];
    [v27 setHidden_];
  }

  else
  {
    v56 = v21;
    [v56 frame];
    [v27 setFrame_];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    [v27 setBounds_];
  }

  [v27 setContentsScale_];
  [v54 insertSublayer:v27 above:v21];
  v49 = 0x8000000000000000;
LABEL_12:
  [v21 removeFromSuperlayer];

  *v66 = v49 | v27;
}

uint64_t TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(uint64_t a1, uint64_t a2, int a3)
{
  v49 = a3;
  v48 = a2;
  v5 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.Composition.Run(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextRenderLayer.drawingContext(_:time:)(*(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time), 0, v51);
  v13 = *(a1 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition(v15, v12, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.resolve(line:in:)(a1, v51);
      outlined destroy of Text.Effect.Composition(v12, type metadata accessor for Text.Effect.Composition.Operation);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v17 = v51[0];
  v18 = *(v51[0] + 16);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v20 = *(v17 + 16);
  v21 = v20[4];
  v53 = v20[3];
  v54 = v21;
  v52 = v20[2];
  v56 = v52;
  v55 = v53;
  v57 = *(&v21 + 1);
  v58[0] = v21;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = *(v19 + 16);
  if (v26)
  {
    v27 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v56, v50);
    outlined init with copy of Text.Effect.Keyframes(&v55, v50);

    outlined init with copy of [Int : CGFloat](v58, v50);
    outlined init with copy of Text.Effect.Composition(&v57, v50, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
    v28 = *(v6 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition(v27, v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(&v52);
      v65.origin.x = v29;
      v65.origin.y = v30;
      v65.size.width = v31;
      v65.size.height = v32;
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v60 = CGRectUnion(v59, v65);
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;
      outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
    outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v56, v50);
    outlined init with copy of Text.Effect.Keyframes(&v55, v50);

    outlined init with copy of [Int : CGFloat](v58, v50);
    outlined init with copy of Text.Effect.Composition(&v57, v50, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
  }

  outlined destroy of Text.Effect.BaseFragmentIdentifierMap(&v56);
  outlined destroy of Text.Effect.Keyframes(&v55);

  outlined destroy of [Int : CGFloat](v58);
  outlined destroy of Text.Effect.Composition(&v57, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
  v33 = v48;
  TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(a1, v48, TextRenderLayer.correctionMarkersBounds(line:glyphOrigin:ranges:metrics:));
  v66.origin.x = v34;
  v66.origin.y = v35;
  v66.size.width = v36;
  v66.size.height = v37;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v62 = CGRectUnion(v61, v66);
  v38 = v62.origin.x;
  v39 = v62.origin.y;
  v40 = v62.size.width;
  v41 = v62.size.height;
  TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(a1, v33, TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:));
  v67.origin.x = v42;
  v67.origin.y = v43;
  v67.size.width = v44;
  v67.size.height = v45;
  v63.origin.x = v38;
  v63.origin.y = v39;
  v63.size.width = v40;
  v63.size.height = v41;
  v64 = CGRectUnion(v63, v67);
  CGRectIsNull(v64);
}

uint64_t TextRenderLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment] = 0;
  v8 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v9 = type metadata accessor for TextRenderLayer.Layout(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers] = 0;
  v29 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags;
  v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics] = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices] = v11;
  v13 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version] = -1;
  RangeSet.init()();
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer] = 0;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements] = v12;
  v14 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets];
  *v15 = 0u;
  v15[1] = 0u;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding] = 0;
  v16 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement];
  *v16 = 0u;
  v16[1] = 0u;
  *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers] = v13;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  *&v1[v17] = CACurrentMediaTime();
  v30 = a1;
  outlined init with copy of Any(a1, v33);
  if (swift_dynamicCast())
  {
    v18 = v32;
    *&v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController] = *&v32[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v20 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment];
    v21 = *&v1[v7];
    *&v1[v7] = v20;
    v22 = v20;

    v23 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    swift_beginAccess();
    outlined init with copy of TextRenderLayer.Layout?(&v18[v23], v6, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    swift_beginAccess();
    outlined assign with take of TextRenderLayer.Layout?(v6, &v1[v8]);
    swift_endAccess();
    v1[v29] = 15;
    v24 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8];
    v25 = &v1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    *v25 = *&v18[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    v25[1] = v24;
    v31.receiver = v1;
    v31.super_class = ObjectType;

    v26 = objc_msgSendSuper2(&v31, sel_initWithLayer_, v18);

    __swift_destroy_boxed_opaque_existential_0(v30);
    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc TextLinesLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return a4(&v6);
}

void TextRenderLayer.drawingContext(_:time:)(double a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
  v7 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
  v8 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
  swift_beginAccess();
  v9 = *(v8 + 112);
  swift_retain_n();

  v10 = Text.Effect.Composition.displacements(at:context:)(v6, v7, v9, v8, v5);
  v12 = v11;

  type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
  v13 = swift_allocObject();
  v13[3] = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v9;
  *(v13 + 7) = v8;
  *(v13 + 8) = v10;
  *(v13 + 9) = v12;
  *(v13 + 2) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Text.Effect.DrawingContext.Storage();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0x3FF0000000000000;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0x3FF0000000000000;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = 1;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(v14 + 152) = _Q1;
  *(v14 + 168) = 0x3FF0000000000000;
  *(v14 + 176) = 0;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 216) = 0;
  *(v14 + 16) = v13;
  *(v14 + 24) = 0x3FF0000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *&Strong[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];
  }

  else
  {
    v21 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v21;
}

void TextRenderLayer.drawCorrectionMarkers(composition:characterRanges:metrics:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[2] = a4;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for TextRenderLayer.Layout(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, v8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (!v19 || !*(v19 + 16))
  {
    return;
  }

  type metadata accessor for Text.Effect.Composition(0);
  outlined init with copy of Text.Effect.Composition(a3, v18, type metadata accessor for Text.Effect.InteractionMetrics);
  v20 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v4 + v21, v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of TextRenderLayer.Layout?(v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v11, v15, type metadata accessor for TextRenderLayer.Layout);
  v22 = TextRenderLayer.correctionMarkers(for:)(a2);
  if (!v22)
  {
    goto LABEL_17;
  }

  if (!*(v22 + 2))
  {

LABEL_17:
    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    goto LABEL_18;
  }

  v23 = *&v15[*(v12 + 44)];
  v34[1] = v22;
  v24 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(a1, v18, v23, v22);
  v25 = v24;
  v26 = *(v24 + 2);
  if (!v26)
  {
LABEL_15:

    outlined destroy of TextRenderLayer.Layout?(v18, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

LABEL_18:
    outlined destroy of Text.Effect.Composition(v15, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  v27 = 0;
  v28 = (v24 + 32);
  v29 = *(v24 + 2);
  while (v27 < v29)
  {
    if (v26 == v27)
    {
      goto LABEL_21;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v28, &v38);
    if (v39 == 1)
    {
      v30 = v38;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v40, &v35, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v36)
      {
        goto LABEL_22;
      }

      v31 = outlined init with take of Any(&v35, v37);
      MEMORY[0x1EEE9AC00](v31);
      v34[-4] = v30;
      v34[-3] = v37;
      v32 = &v38;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    ++v27;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v38);
    v29 = *(v25 + 2);
    v28 += 96;
    if (v27 == v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  outlined destroy of TextEffectsAnimationController.Timing?(&v35, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v33 = 0;
  v32 = 1243;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *TextRenderLayer.textMarkers(for:)(uint64_t a1)
{
  v35 = a1;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v27 - v5;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (result)
  {
    v32 = *(result + 2);
    if (v32)
    {
      v29 = (v4 + 16);
      v30 = result + 32;
      v28 = (v4 + 8);

      v10 = 0;
      v37 = MEMORY[0x1E69E7CC0];
      v31 = result;
      do
      {
        if (v10 >= *(result + 2))
        {
          __break(1u);
          return result;
        }

        v36 = v10;
        v11 = &v30[32 * v10];
        v12 = v11[8];
        v13 = *(v11 + 2);
        v14 = *(v11 + 3);
        v38 = *v11;
        outlined copy of Text.Effect.Markers.MarkerType(v38, v12);
        type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v15 = v34;
        RangeSet.ranges.getter();
        (*v29)(v8, v15, v3);
        v16 = *(v33 + 36);
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of Collection.startIndex.getter();
        (*v28)(v15, v3);
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*&v8[v16] == v39[0])
          {
            break;
          }

          v17 = dispatch thunk of Collection.subscript.read();
          v19 = *v18;
          v20 = v18[1];
          v17(v39, 0);
          dispatch thunk of Collection.formIndex(after:)();
          if (v13 > v19)
          {
            v19 = v13;
          }

          if (v14 >= v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = v14;
          }

          if (!((v19 >= v21) | v12 & 1))
          {

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v22 = v37;
            }

            else
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
            }

            v24 = *(v22 + 2);
            v23 = *(v22 + 3);
            v25 = (v24 + 1);
            if (v24 >= v23 >> 1)
            {
              v37 = (v24 + 1);
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
              v25 = v37;
            }

            *(v22 + 2) = v25;
            v37 = v22;
            v26 = &v22[32 * v24];
            *(v26 + 4) = v38;
            v26[40] = 0;
            *(v26 + 6) = v19;
            *(v26 + 7) = v21;
          }
        }

        v10 = v36 + 1;
        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
        outlined consume of Text.Effect.Markers.MarkerType(v38, v12);
        result = v31;
      }

      while (v10 != v32);

      result = v37;
      if (*(v37 + 2))
      {
        return result;
      }

      goto LABEL_21;
    }

    result = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:

      return 0;
    }
  }

  return result;
}

uint64_t TextRenderLayer.correctionMarkersBounds(line:glyphOrigin:ranges:metrics:)(uint64_t a1, uint64_t a2, char *a3)
{
  v40 = a3;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for TextRenderLayer.Layout(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v3 + v13, v8, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v8, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  outlined init with take of TextRenderLayer.Layout(v8, v12, type metadata accessor for TextRenderLayer.Layout);
  v15 = TextRenderLayer.correctionMarkers(for:)(a2);
  if (!v15)
  {
    return outlined destroy of Text.Effect.Composition(v12, type metadata accessor for TextRenderLayer.Layout);
  }

  v16 = *&v12[*(v9 + 44)];
  v17 = v40;
  v40 = v15;
  v18 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(a1, v17, v16, v15);
  v19 = v18;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v24 = *(v18 + 2);
  if (v24)
  {
    v25 = 0;
    v26 = (v18 + 32);
    v27 = MEMORY[0x1E69E7CA0];
    v28 = *(v18 + 2);
    while (v25 < v28)
    {
      if (v24 == v25)
      {
        goto LABEL_16;
      }

      outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v26, &v45);
      if (v46 == 1)
      {
        v29 = v45;
        outlined init with copy of TextEffectsAnimationController.Timing?(&v47, &v41, &lazy cache variable for type metadata for Any?, v27 + 8);
        if (!v42)
        {
          goto LABEL_17;
        }

        outlined init with take of Any(&v41, &v43);
        __swift_project_boxed_opaque_existential_0(&v43, v44);
        v30 = _bridgeAnythingToObjectiveC<A>(_:)();
        _NSTextCorrectionMarkerBounds(v29, v30);
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        swift_unknownObjectRelease();
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v50.origin.x = v32;
        v50.origin.y = v34;
        v50.size.width = v36;
        v50.size.height = v38;
        v49 = CGRectUnion(v48, v50);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v45);
        __swift_destroy_boxed_opaque_existential_0(&v43);
      }

      else
      {
        outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v45);
      }

      ++v25;
      v28 = *(v19 + 2);
      v26 += 96;
      if (v25 == v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    outlined destroy of TextEffectsAnimationController.Timing?(&v41, &lazy cache variable for type metadata for Any?, v27 + 8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_13:

    return outlined destroy of Text.Effect.Composition(v12, type metadata accessor for TextRenderLayer.Layout);
  }

  return result;
}

void TextRenderLayer.correctionMarkersBounds(composition:segmentIndex:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, double, double))
{
  v72 = a2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - v9;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for Text.Effect.Composition.Run(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = type metadata accessor for Text.Effect.InteractionMetrics();
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (v26 && *(v26 + 16))
  {
    v64 = a3;
    v65 = v15;
    v66 = a1;
    v67 = v13;
    v69 = v23;
    v70 = v25;
    v71 = v22;
    v62 = v10;
    v63 = v8;
    v27 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v29 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v28 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v30 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v31 = *(v30 + 112);
    v32 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    swift_beginAccess();
    v68 = v3;
    v33 = *(v3 + v32);
    if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v72), (v35 & 1) != 0))
    {
      outlined init with copy of Text.Effect.Composition(*(v33 + 56) + *(v69 + 72) * v34, v70, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
    }

    else
    {
      v60 = v32;
      v61 = v7;
      swift_endAccess();
      v37 = v70;
      v36 = v71;
      *v70 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
      v74 = v29;

      RangeSet.init()();
      *(v37 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
      v38 = (v37 + *(v36 + 28));
      v39 = type metadata accessor for Text.Effect.Composition(0);
      *v38 = 0;
      v38[1] = 0;
      v40 = *(v39 + 24);
      v73 = v31;
      v41 = v66;
      v42 = *(v66 + v40);
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v45 = *(v65 + 72);
        do
        {
          outlined init with copy of Text.Effect.Composition(v44, v20, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v37, v41, v74, v28, v73, v30, v27);
          outlined destroy of Text.Effect.Composition(v20, type metadata accessor for Text.Effect.Composition.Operation);
          v44 += v45;
          --v43;
        }

        while (v43);
      }

      v46 = v67;
      outlined init with copy of Text.Effect.Composition(v37, v67, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v69 + 56))(v46, 0, 1, v71);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v46, v72);
      swift_endAccess();

      v7 = v61;
    }

    v47 = v64;
    v48 = type metadata accessor for Text.Effect.Composition(0);
    v49 = v66;
    v50 = (v66 + *(v48 + 20));
    v51 = *v50;
    v52 = v50[1];
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    v53 = v62;
    RangeSet.init()();
    v54 = *(v49 + *(v48 + 24));
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v54 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v57 = *(v65 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition(v56, v17, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v49, v53);
        outlined destroy of Text.Effect.Composition(v17, type metadata accessor for Text.Effect.Composition.Operation);
        v56 += v57;
        --v55;
      }

      while (v55);
    }

    v58 = v70;
    v59 = v67;
    outlined init with copy of Text.Effect.Composition(v70, v67, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v69 + 56))(v59, 0, 1, v71);
    v47(v49, v53, v59, v51, v52);
    outlined destroy of TextRenderLayer.Layout?(v59, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v63 + 8))(v53, v7);
    outlined destroy of Text.Effect.Composition(v58, type metadata accessor for Text.Effect.InteractionMetrics);
  }
}

void TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a1;
  v78 = a3;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v66 - v6;
  v8 = type metadata accessor for TextRenderLayer.Layout(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v3 + v12, v7, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v13 = (*(v9 + 48))(v7, 1, v8);
  v14 = MEMORY[0x1E695F050];
  if (v13 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v7, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  else
  {
    outlined init with take of TextRenderLayer.Layout(v7, v11, type metadata accessor for TextRenderLayer.Layout);
    v15 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment);
    v16 = v11;
    if (v15)
    {
      v17 = v15;
      v18 = TextRenderLayer.textMarkers(for:)(a2);
      if (v18)
      {
        v19 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v77, v78, *(v16 + *(v8 + 44)), v18);

        v20 = swift_allocObject();
        v21 = v14[1];
        *(v20 + 16) = *v14;
        v66[2] = v20 + 16;
        v67 = v20;
        *(v20 + 32) = v21;
        v22 = *(v19 + 2);
        if (v22)
        {
          v23 = v19 + 32;
          swift_beginAccess();
          v24 = 0;
          v66[1] = v80;
          v66[0] = 1107296256;
          v71 = v17;
          v72 = v16;
          v69 = v22;
          v70 = v19;
          v68 = v19 + 32;
          while (v24 < *(v19 + 2))
          {
            outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(&v23[96 * v24], v82);
            if (v82[8])
            {
              outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v82);
            }

            else
            {
              v25 = [v17 textLineFragments];
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextLineFragment);
              v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v73 = v24;
              if (v26 >> 62)
              {
                if (v26 < 0)
                {
                  v65 = v26;
                }

                else
                {
                  v65 = v26 & 0xFFFFFFFFFFFFFF8;
                }

                v27 = MEMORY[0x19A8BDCD0](v65);
                if (v27)
                {
LABEL_13:
                  v28 = 0;
                  v29 = v84;
                  v76 = v26 & 0xFFFFFFFFFFFFFF8;
                  v77 = v26 & 0xC000000000000001;
                  v78 = v83;
                  v75 = v84 - v83;
                  v30 = __OFSUB__(v84, v83);
                  v74 = v30;
                  while (1)
                  {
                    if (v77)
                    {
                      v31 = MEMORY[0x19A8BDB80](v28, v26);
                    }

                    else
                    {
                      if (v28 >= *(v76 + 16))
                      {
                        goto LABEL_48;
                      }

                      v31 = *(v26 + 8 * v28 + 32);
                    }

                    v32 = v31;
                    v33 = v28 + 1;
                    if (__OFADD__(v28, 1))
                    {
                      break;
                    }

                    v34 = v26;
                    v35 = [v31 characterRange];
                    v37 = v36;
                    v38 = Text.Layout.CharacterIndex.init(_:)();
                    if (__OFADD__(v35, v37))
                    {
                      goto LABEL_45;
                    }

                    v39 = Text.Layout.CharacterIndex.init(_:)();
                    if (v39 < v38)
                    {
                      goto LABEL_46;
                    }

                    if (v38 < v29 && v78 < v39)
                    {
                      if (__OFSUB__(v39, v38))
                      {
                        goto LABEL_47;
                      }

                      if (v39 != v38)
                      {
                        if (v74)
                        {
                          goto LABEL_49;
                        }

                        if (v75)
                        {

                          v41 = v67;
                          v43 = v67[4];
                          v42 = v67[5];
                          v45 = v67[2];
                          v44 = v67[3];
                          v46 = objc_allocWithZone(MEMORY[0x1E69DB790]);
                          v47 = [v46 initWithRange_];
                          outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v82, v81);
                          v48 = swift_allocObject();
                          v49 = v81[3];
                          *(v48 + 48) = v81[2];
                          *(v48 + 64) = v49;
                          v50 = v81[5];
                          *(v48 + 80) = v81[4];
                          *(v48 + 96) = v50;
                          v51 = v81[1];
                          *(v48 + 16) = v81[0];
                          *(v48 + 32) = v51;
                          *(v48 + 112) = v41;
                          v80[2] = partial apply for closure #1 in TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:);
                          v80[3] = v48;
                          v79[0] = MEMORY[0x1E69E9820];
                          v79[1] = v66[0];
                          v80[0] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
                          v80[1] = &block_descriptor_128;
                          v52 = _Block_copy(v79);

                          _NSMarkedTextBounds(v32, v47, v52);
                          v54 = v53;
                          v56 = v55;
                          v58 = v57;
                          v60 = v59;
                          _Block_release(v52);

                          v85.origin.x = v45;
                          v85.origin.y = v44;
                          v85.size.width = v43;
                          v85.size.height = v42;
                          v87.origin.x = v54;
                          v87.origin.y = v56;
                          v87.size.width = v58;
                          v87.size.height = v60;
                          v86 = CGRectUnion(v85, v87);
                          x = v86.origin.x;
                          y = v86.origin.y;
                          width = v86.size.width;
                          height = v86.size.height;

                          outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v82);
                          v41[2] = x;
                          v41[3] = y;
                          v41[4] = width;
                          v41[5] = height;
                          goto LABEL_40;
                        }
                      }
                    }

                    ++v28;
                    v26 = v34;
                    if (v33 == v27)
                    {
                      goto LABEL_39;
                    }
                  }

                  __break(1u);
LABEL_45:
                  __break(1u);
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
                  break;
                }
              }

              else
              {
                v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v27)
                {
                  goto LABEL_13;
                }
              }

LABEL_39:

              outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v82);
LABEL_40:
              v17 = v71;
              v16 = v72;
              v22 = v69;
              v19 = v70;
              v23 = v68;
              v24 = v73;
            }

            if (++v24 == v22)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_42:

          outlined destroy of Text.Effect.Composition(v16, type metadata accessor for TextRenderLayer.Layout);
          swift_beginAccess();
        }
      }

      else
      {
        outlined destroy of Text.Effect.Composition(v16, type metadata accessor for TextRenderLayer.Layout);
      }
    }

    else
    {
      outlined destroy of Text.Effect.Composition(v11, type metadata accessor for TextRenderLayer.Layout);
    }
  }
}

char *TextRenderLayer.correctionMarkers(for:)(uint64_t a1)
{
  v36 = a1;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v28 - v5;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers);
  if (result)
  {
    v33 = *(result + 2);
    if (v33)
    {
      v30 = (v4 + 16);
      v31 = result + 32;
      v29 = (v4 + 8);

      v10 = 0;
      v39 = MEMORY[0x1E69E7CC0];
      v32 = result;
      do
      {
        if (v10 >= *(result + 2))
        {
          __break(1u);
          return result;
        }

        v11 = &v31[32 * v10];
        v12 = *v11;
        v13 = v11[8];
        v14 = *(v11 + 2);
        v15 = *(v11 + 3);
        v37 = v10;
        v38 = v12;
        outlined copy of Text.Effect.Markers.MarkerType(v12, v13);
        type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v16 = v35;
        RangeSet.ranges.getter();
        (*v30)(v8, v16, v3);
        v17 = *(v34 + 36);
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of Collection.startIndex.getter();
        (*v29)(v16, v3);
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*&v8[v17] == v40[0])
          {
            break;
          }

          v18 = dispatch thunk of Collection.subscript.read();
          v20 = *v19;
          v21 = v19[1];
          v18(v40, 0);
          dispatch thunk of Collection.formIndex(after:)();
          if (v14 > v20)
          {
            v20 = v14;
          }

          if (v15 >= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v15;
          }

          if (((v20 < v22) & v13) != 0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v23 = v39;
            }

            else
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
            }

            v25 = *(v23 + 2);
            v24 = *(v23 + 3);
            v26 = (v25 + 1);
            if (v25 >= v24 >> 1)
            {
              v39 = (v25 + 1);
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
              v26 = v39;
            }

            *(v23 + 2) = v26;
            v39 = v23;
            v27 = &v23[32 * v25];
            *(v27 + 4) = v38;
            v27[40] = 1;
            *(v27 + 6) = v20;
            *(v27 + 7) = v22;
          }
        }

        v10 = v37 + 1;
        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
        outlined consume of Text.Effect.Markers.MarkerType(v38, v13);
        result = v32;
      }

      while (v10 != v33);

      result = v39;
      if (*(v39 + 2))
      {
        return result;
      }

      goto LABEL_21;
    }

    result = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:

      return 0;
    }
  }

  return result;
}

void closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[4] = partial apply for closure #1 in closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:);
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
  v11[3] = &block_descriptor_90;
  v9 = _Block_copy(v11);
  v10 = a3;

  LOBYTE(a1) = _NSMarkedTextDrawBackground(v10, a1, v9);
  _Block_release(v9);
  *a2 = a1;
}

double thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = v11(a3, a4, a5, a6);

  return v13;
}

void closure #1 in TextRenderLayer.drawTextMarkersIndicator(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = partial apply for closure #1 in closure #1 in TextRenderLayer.drawTextMarkersIndicator(markers:line:glyphOrigin:ranges:metrics:in:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned CGRect, @guaranteed NSTextRange) -> (@unowned CGRect);
  v9[3] = &block_descriptor_96;
  v7 = _Block_copy(v9);
  v8 = a2;

  _NSMarkedTextDrawIndicator(v8, a1, v7);
  _Block_release(v7);
}

void closure #1 in closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  NSTextRange.textRange.getter();
  if ((v9 & 1) == 0)
  {
    v10 = Range<>.relative(to:)(a3, v7, v8);
    Text.Effect.MarkerLayoutInfo.rect(for:with:)(v10, v11, a4, a1);
  }
}

uint64_t closure #1 in TextRenderLayer.drawCorrectionMarkers(line:glyphOrigin:ranges:metrics:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  _NSTextCorrectionMarkerDraw(a2, v5, a1);
  return swift_unknownObjectRelease();
}

uint64_t TextRenderLayer.ensureUnsharedDrawing(for:)(unint64_t a1)
{
  v2 = v1;
  v75 = a1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v72 = v3;
  v71 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v68 - v4;
  v5 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v68 - v10;
  v12 = type metadata accessor for TextRenderLayer.Layout(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v17 = v2 + v16;
  v18 = v2;
  outlined init with copy of TextRenderLayer.Layout?(v17, v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v11, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  result = outlined init with take of TextRenderLayer.Layout(v11, v15, type metadata accessor for TextRenderLayer.Layout);
  v20 = v75;
  if ((v75 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = *&v15[*(v12 + 24)];
  if (*(v21 + 16) <= v75)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  outlined init with copy of Text.Effect.Composition(v21 + ((v74[80] + 32) & ~v74[80]) + *(v74 + 9) * v75, v7, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Text.Effect.Composition(v15, type metadata accessor for TextRenderLayer.Layout);
    v59 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
    v60 = v7;
    return outlined destroy of Text.Effect.Composition(v60, v59);
  }

  v74 = v15;
  v22 = v7;
  v23 = v73;
  outlined init with take of TextRenderLayer.Layout(v22, v73, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  v24 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v25 = v71;
  v26 = v2 + v24;
  v27 = v70;
  v28 = v72;
  v68 = *(v71 + 16);
  v68(v70, v26, v72);
  v76 = v20;
  v29 = RangeSet.contains(_:)();
  v30 = *(v25 + 8);
  v30(v27, v28);
  if ((v29 & 1) == 0)
  {
    v61 = v23;
    goto LABEL_24;
  }

  v77 = v20;
  v78 = v20 + 1;
  swift_beginAccess();
  RangeSet.remove(contentsOf:)();
  swift_endAccess();
  v31 = v18;
  TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v23 + *(v69 + 24), v20, 0);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  TextRenderLayer.pixelLength.getter();
  v41 = v40;
  v79.origin.x = v33;
  v79.origin.y = v35;
  v79.size.width = v37;
  v79.size.height = v39;
  MinX = CGRectGetMinX(v79);
  v80.origin.x = v33;
  v80.origin.y = v35;
  v80.size.width = v37;
  v80.size.height = v39;
  MaxX = CGRectGetMaxX(v80);
  v81.origin.x = v33;
  v81.origin.y = v35;
  v81.size.width = v37;
  v81.size.height = v39;
  MinY = CGRectGetMinY(v81);
  v82.origin.x = v33;
  v82.origin.y = v35;
  v82.size.width = v37;
  v82.size.height = v39;
  MaxY = CGRectGetMaxY(v82);
  v46 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  result = swift_beginAccess();
  v47 = *(v31 + v46);
  if (*(v47 + 16) <= v20)
  {
    goto LABEL_30;
  }

  v48 = v31;
  v49 = v41 * floor(MinX / v41);
  v50 = ceil(MaxX / v41);
  v51 = v41 * floor(MinY / v41);
  v52 = v41 * ceil(MaxY / v41);
  v53 = v41 * v50 - v49;
  v54 = v52 - v51;
  v55 = v20;
  v56 = *(v47 + 8 * v20 + 32);
  v57 = v56 >> 62;
  v58 = (v56 & 0x3FFFFFFFFFFFFFFFLL);
  if ((v56 >> 62) > 1)
  {
    v56 &= 0x3FFFFFFFFFFFFFFFuLL;
    if (v57 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v57)
  {
LABEL_14:
    v56 = v58;
  }

LABEL_15:
  v62 = v58;
  [v56 bounds];
  v85.origin.x = v49;
  v85.origin.y = v51;
  v85.size.width = v53;
  v85.size.height = v54;
  result = CGRectEqualToRect(v83, v85);
  if ((result & 1) == 0)
  {
    [v56 setBounds_];
    result = [v56 setNeedsDisplay];
  }

  v63 = *(v48 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
  if (*(v63 + 16) > v55)
  {
    v64 = v63 + 16 * v55;
    v65 = v49 + *(v64 + 32);
    v66 = v51 + *(v64 + 40);
    [v56 frame];
    v86.origin.x = v65;
    v86.origin.y = v66;
    v86.size.width = v53;
    v86.size.height = v54;
    if (!CGRectEqualToRect(v84, v86))
    {
      [v56 setFrame_];
    }

    if ([v56 isHidden])
    {
      [v56 setHidden_];
    }

    v68(v27, v48 + v24, v28);
    v67 = RangeSet.isEmpty.getter();
    v30(v27, v28);
    if ((v67 & 1) == 0)
    {
      outlined destroy of Text.Effect.Composition(v73, type metadata accessor for Text.Effect.RenderSegmentation.Effect);

      goto LABEL_26;
    }

    TextRenderLayer.updateSharedDrawingBounds()();

    v61 = v73;
LABEL_24:
    outlined destroy of Text.Effect.Composition(v61, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
LABEL_26:
    v60 = v74;
    v59 = type metadata accessor for TextRenderLayer.Layout;
    return outlined destroy of Text.Effect.Composition(v60, v59);
  }

LABEL_31:
  __break(1u);
  return result;
}

void TextRenderLayer.ensureSharedDrawing(for:)(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v19[0] = a1;
  v10 = RangeSet.contains(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      v19[4] = a1;
      v19[5] = a1 + 1;
      if (v11 != a1)
      {
        v12 = RangeSet._ranges.modify();
        type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v12(v19, 0);
      }

      swift_endAccess();
      v13 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
      swift_beginAccess();
      if ((a1 & 0x8000000000000000) == 0)
      {
        v14 = *(v2 + v13);
        if (*(v14 + 16) > a1)
        {
          v15 = *(v14 + 8 * a1 + 32);
          v16 = v15 >> 62;
          v17 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
          if ((v15 >> 62) > 1)
          {
            v15 &= 0x3FFFFFFFFFFFFFFFuLL;
            if (v16 != 2)
            {
LABEL_13:
              v18 = v17;
              [v15 setFrame_];
              [v15 setHidden_];

              return;
            }
          }

          else if (!v16)
          {
            goto LABEL_13;
          }

          v15 = v17;
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for Text.Effect.InteractionMetrics();
    v18 = *(v11 - 8);
    outlined init with take of TextRenderLayer.Layout(v10 + *(v18 + 72) * v7, a2, type metadata accessor for Text.Effect.InteractionMetrics);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for Text.Effect.InteractionMetrics();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v15;
    }

    v10 = *(v9 + 56) + 120 * v7;
    v11 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = *(v10 + 112);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    v13 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v13;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 97) = 0u;
  }

  return result;
}

uint64_t TextRenderLayer.updateClippingBounds()()
{
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v76 = v1;
  v72 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v75 = &v65 - v2;
  v3 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v79 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v0 + v15, v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v10, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  outlined init with take of TextRenderLayer.Layout(v10, v14, type metadata accessor for TextRenderLayer.Layout);
  v17 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
  v84 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
  v81 = v17;
  v18 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
  swift_beginAccess();
  v83 = v18;
  v82 = *(v18 + 112);
  v19 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  result = swift_beginAccess();
  v69 = v19;
  v20 = *(*(v0 + v19) + 16);
  if (!v20)
  {
    return outlined destroy of Text.Effect.Composition(v14, type metadata accessor for TextRenderLayer.Layout);
  }

  v21 = *&v14[*(v11 + 24)];
  if (v20 > *(v21 + 16))
  {
    goto LABEL_35;
  }

  v22 = v0;
  v66 = v14;
  v23 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  v68 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_geometryObserver;
  v67 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v24 = v79;
  v25 = v21 + ((*(v79 + 80) + 32) & ~*(v79 + 80));

  v74 = v23;
  swift_beginAccess();
  v26 = 0;
  v27 = 0;
  v28 = *(v24 + 72);
  v73 = (v72 + 2);
  ++v72;
  v29 = v77;
  v78 = v22;
  v71 = v6;
  v80 = v20;
  v79 = v28;
  while (1)
  {
    outlined init with copy of Text.Effect.Composition(v25, v5, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Text.Effect.Composition(v5, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      goto LABEL_7;
    }

    outlined init with take of TextRenderLayer.Layout(v5, v29, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v30 = *(v6 + 24);
    Text.Effect.Composition.useSharedDrawing(context:)(v84, v81, v82, v83);
    if ((v31 & 1) == 0)
    {
      outlined destroy of Text.Effect.Composition(v29, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      goto LABEL_13;
    }

    v32 = v3;
    v33 = v75;
    v34 = v76;
    (*v73)(v75, v22 + v74, v76);
    v85 = v27;
    v35 = RangeSet.contains(_:)();
    result = (*v72)(v33, v34);
    if (v35)
    {
      v29 = v77;
      outlined destroy of Text.Effect.Composition(v77, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v3 = v32;
      v6 = v71;
LABEL_13:
      v20 = v80;
      v28 = v79;
      goto LABEL_7;
    }

    v36 = *(v22 + v69);
    v29 = v77;
    if (v27 >= *(v36 + 16))
    {
      break;
    }

    v37 = *(v36 + 8 * v27 + 32);
    v38 = v37 >> 62;
    v39 = (v37 & 0x3FFFFFFFFFFFFFFFLL);
    if ((v37 >> 62) <= 1)
    {
      v3 = v32;
      if (!v38)
      {
        goto LABEL_20;
      }

LABEL_19:
      v37 = v39;
      goto LABEL_20;
    }

    v37 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = v32;
    if (v38 == 2)
    {
      goto LABEL_19;
    }

LABEL_20:
    v70 = v39;
    TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v29 + v30, v27, 0);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    TextRenderLayer.pixelLength.getter();
    v49 = v48;
    v86.origin.x = v41;
    v86.origin.y = v43;
    v86.size.width = v45;
    v86.size.height = v47;
    v50 = v49 * floor(CGRectGetMinX(v86) / v49);
    v87.origin.x = v41;
    v87.origin.y = v43;
    v87.size.width = v45;
    v87.size.height = v47;
    v51 = v49 * ceil(CGRectGetMaxX(v87) / v49);
    v88.origin.x = v41;
    v88.origin.y = v43;
    v88.size.width = v45;
    v88.size.height = v47;
    v52 = v49 * floor(CGRectGetMinY(v88) / v49);
    v89.origin.x = v41;
    v89.origin.y = v43;
    v89.size.width = v45;
    v89.size.height = v47;
    v53 = v51 - v50;
    v54 = v49 * ceil(CGRectGetMaxY(v89) / v49) - v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = v71;
    if (Strong)
    {
      v56 = Strong;
      LayerGeometryObserver.clip(bounds:for:)(v37, v50, v52, v51 - v50, v54);
      v50 = v57;
      v52 = v58;
      v53 = v59;
      v54 = v60;
    }

    v20 = v80;
    v28 = v79;
    [v37 bounds];
    v92.origin.x = v50;
    v92.origin.y = v52;
    v92.size.width = v53;
    v92.size.height = v54;
    result = CGRectEqualToRect(v90, v92);
    if ((result & 1) == 0)
    {
      [v37 setBounds_];
      result = [v37 setNeedsDisplay];
    }

    v61 = *(v78 + v67);
    if (v27 >= *(v61 + 16))
    {
      goto LABEL_34;
    }

    v62 = v61 + v26;
    v63 = v50 + *(v62 + 32);
    v64 = v52 + *(v62 + 40);
    [v37 frame];
    v93.origin.x = v63;
    v93.origin.y = v64;
    v93.size.width = v53;
    v93.size.height = v54;
    if (!CGRectEqualToRect(v91, v93))
    {
      [v37 setFrame_];
    }

    if ([v37 isHidden])
    {
      [v37 setHidden_];

      outlined destroy of Text.Effect.Composition(v29, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    else
    {
      outlined destroy of Text.Effect.Composition(v29, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    v22 = v78;
LABEL_7:
    ++v27;
    v26 += 16;
    v25 += v28;
    if (v20 == v27)
    {

      v14 = v66;
      return outlined destroy of Text.Effect.Composition(v14, type metadata accessor for TextRenderLayer.Layout);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t TextRenderLayer.appendBaselineOffsets(to:)(char **a1)
{
  v70 = a1;
  v79 = type metadata accessor for Text.Layout.Line();
  v83 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v81 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v15 = v14;
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v88 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v68 - v21);
  v87 = type metadata accessor for TextRenderLayer.Layout;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v17);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v68 - v24;
  v26 = type metadata accessor for TextRenderLayer.Layout(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v31 = v74;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(v31 + v30, v25, &lazy cache variable for type metadata for TextRenderLayer.Layout?, v87);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return outlined destroy of TextRenderLayer.Layout?(v25, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  outlined init with take of TextRenderLayer.Layout(v25, v29, type metadata accessor for TextRenderLayer.Layout);
  v33 = *(v26 + 24);
  v82 = v29;
  v34 = *&v29[v33];
  v86 = *(v34 + 16);
  v69 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v35 = v84;
  v84 += 6;
  v85 = (v35 + 7);
  v77 = (v83 + 8);
  v87 = v34;

  v83 = 0;
  v36 = 0;
  v37 = 0;
  v38 = v72;
  while (1)
  {
    v39 = v88;
    if (v37 == v86)
    {
      v40 = 1;
      v37 = v86;
      goto LABEL_9;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v37 >= *(v87 + 2))
    {
      goto LABEL_49;
    }

    v41 = v80;
    v42 = v87 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v37;
    v43 = *(v15 + 48);
    *v80 = v37;
    outlined init with copy of Text.Effect.Composition(v42, v41 + v43, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with take of TextRenderLayer.Layout(v41, v39, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    v40 = 0;
    ++v37;
LABEL_9:
    (*v85)(v39, v40, 1, v15);
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v39, v22, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    if ((*v84)(v22, 1, v15) == 1)
    {
      outlined destroy of Text.Effect.Composition(v82, type metadata accessor for TextRenderLayer.Layout);
    }

    v44 = *v22;
    outlined init with take of TextRenderLayer.Layout(v22 + *(v15 + 48), v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with copy of Text.Effect.Composition(v13, v10, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v46 = v75;
        outlined init with take of TextRenderLayer.Layout(v10, v75, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        v47 = *(v46 + *(v76 + 28));
        v48 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
        v49 = v46;
      }

      else
      {
        outlined init with take of TextRenderLayer.Layout(v10, v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v47 = *v38;
        v48 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
        v49 = v38;
      }

      result = outlined destroy of Text.Effect.Composition(v49, v48);
    }

    else
    {
      v47 = *(v10 + 2);
    }

    if ((v36 & (v47 == v83)) == 0)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v50 = *(v74 + v69);
      if (v44 >= *(v50 + 16))
      {
        goto LABEL_51;
      }

      v51 = *(v50 + 16 * v44 + 40);
      outlined init with copy of Text.Effect.Composition(v13, v73, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v52 = swift_getEnumCaseMultiPayload();
      if (v52)
      {
        v53 = v71;
        if (v52 == 1)
        {
          v54 = v75;
          outlined init with take of TextRenderLayer.Layout(v73, v75, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v83 = *(v54 + *(v76 + 28));
          v55 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
          v56 = v54;
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v73, v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v83 = *v38;
          v55 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
          v56 = v38;
        }

        outlined destroy of Text.Effect.Composition(v56, v55);
      }

      else
      {
        v83 = *(v73 + 16);

        v53 = v71;
      }

      outlined init with copy of Text.Effect.Composition(v13, v53, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v57 = swift_getEnumCaseMultiPayload();
      v68 = v13;
      if (v57)
      {
        if (v57 == 1)
        {
          v58 = v75;
          outlined init with take of TextRenderLayer.Layout(v53, v75, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v59 = *(v58 + *(v76 + 28));
          result = outlined destroy of Text.Effect.Composition(v58, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_56;
          }

          if (v60 < v59)
          {
            goto LABEL_58;
          }
        }

        else
        {
          outlined init with take of TextRenderLayer.Layout(v53, v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v59 = *v38;
          result = outlined destroy of Text.Effect.Composition(v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_55;
          }

          if (v60 < v59)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v59 = v53[2];
        v61 = *(*v53 + 16);

        v60 = v59 + v61;
        if (__OFADD__(v59, v61))
        {
          goto LABEL_54;
        }

        if (v60 < v59)
        {
          goto LABEL_59;
        }
      }

      if (v59 != v60)
      {
        if (v60 < v59)
        {
          goto LABEL_52;
        }

        if (v59 >= v60)
        {
          goto LABEL_53;
        }

        v62 = *v70;
        do
        {
          v63 = v78;
          Text.Layout.subscript.getter();
          Text.Layout.Line.origin.getter();
          v65 = v64;
          (*v77)(v63, v79);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
          }

          v67 = *(v62 + 2);
          v66 = *(v62 + 3);
          if (v67 >= v66 >> 1)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v62);
          }

          ++v59;
          *(v62 + 2) = v67 + 1;
          *&v62[8 * v67 + 32] = v51 + v65;
        }

        while (v60 != v59);
        *v70 = v62;
        v38 = v72;
      }

      v13 = v68;
    }

    result = outlined destroy of Text.Effect.Composition(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v36 = 1;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void TextRenderLayer.drawingBounds.getter()
{
  v1 = v0;
  v113 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Text.Layout.Run();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int><>.IndexSequence();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v110 = v6;
  v137 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v102 - v9;
  v107 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0);
  MEMORY[0x1EEE9AC00](v107);
  v141 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v106);
  v123 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v102 - v13;
  v14 = type metadata accessor for Text.Layout.Line();
  v102 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - v17;
  v135 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v118 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v127 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v126 = v20;
  v136 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v117 = (&v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v125 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = (&v102 - v26);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v22);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v102 - v28;
  v30 = type metadata accessor for TextRenderLayer.Layout(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v114 = v1;
  outlined init with copy of TextRenderLayer.Layout?(v1 + v34, v29, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v29, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  outlined init with take of TextRenderLayer.Layout(v29, v33, type metadata accessor for TextRenderLayer.Layout);
  v35 = *MEMORY[0x1E695F050];
  v36 = *(MEMORY[0x1E695F050] + 8);
  v37 = *(MEMORY[0x1E695F050] + 16);
  v38 = *(MEMORY[0x1E695F050] + 24);
  v39 = *&v33[*(v30 + 24)];
  v133 = (v136 + 7);
  v132 = (v136 + 6);
  v40 = (v102 + 16);
  v134 = *(v39 + 16);
  v105 = (v137 + 16);
  v104 = (v137 + 8);
  v41 = (v102 + 8);
  ++v138;
  v116 = v39;

  v42 = 0;
  v131 = v35;
  v130 = v36;
  v129 = v37;
  v128 = v38;
  v43 = v127;
  v44 = v126;
  v45 = v125;
  v46 = v124;
  v47 = v33;
  v120 = v33;
  v136 = v40;
  v115 = v14;
  v103 = v41;
  while (1)
  {
    if (v42 == v134)
    {
      v57 = 1;
      v137 = v134;
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v42 >= *(v116 + 16))
      {
        goto LABEL_34;
      }

      v58 = v42 + 1;
      v59 = v116 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v42;
      v60 = *(v44 + 48);
      v61 = v117;
      *v117 = v42;
      outlined init with copy of Text.Effect.Composition(v59, v61 + v60, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with take of TextRenderLayer.Layout(v61, v45, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
      v57 = 0;
      v137 = v58;
      v40 = v136;
    }

    (*v133)(v45, v57, 1, v44);
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v45, v46, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
    if ((*v132)(v46, 1, v44) == 1)
    {

      TextRenderLayer.pixelLength.getter();
      v142 = v35;
      v143 = v36;
      v144 = v37;
      v145 = v38;
      CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(v101);
      outlined destroy of Text.Effect.Composition(v47, type metadata accessor for TextRenderLayer.Layout);
      return;
    }

    v62 = *v46;
    outlined init with take of TextRenderLayer.Layout(v46 + *(v44 + 48), v43, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v92 = *v43;
      v119 = v43[1];
      v93 = *(v92 + 16);
      x = v131;
      y = v130;
      width = v129;
      height = v128;
      if (v93)
      {
        v94 = v92 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v95 = *(v102 + 72);
        v96 = *(v102 + 16);
        x = v131;
        y = v130;
        width = v129;
        height = v128;
        do
        {
          v96(v18, v94, v14);
          Text.Layout.Line.quantizedImageBounds.getter();
          v154.origin.x = v97;
          v154.origin.y = v98;
          v154.size.width = v99;
          v154.size.height = v100;
          v150.origin.x = x;
          v150.origin.y = y;
          v150.size.width = width;
          v150.size.height = height;
          v151 = CGRectUnion(v150, v154);
          x = v151.origin.x;
          y = v151.origin.y;
          width = v151.size.width;
          height = v151.size.height;
          (*v41)(v18, v14);
          v94 += v95;
          --v93;
        }

        while (v93);
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v48 = v112;
      outlined init with take of TextRenderLayer.Layout(v43, v112, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v48 + *(v113 + 24), v62, 0);
      x = v49;
      y = v51;
      width = v53;
      height = v55;
      outlined destroy of Text.Effect.Composition(v48, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      goto LABEL_5;
    }

    v64 = v121;
    outlined init with take of TextRenderLayer.Layout(v43, v121, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v65 = v64;
    v66 = v123;
    outlined init with copy of Text.Effect.Composition(v65, v123, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v67 = *v40;
    v68 = v122;
    v69 = v66;
    v67();
    v70 = *v105;
    v71 = v69 + *(v106 + 24);
    v72 = v108;
    v73 = v110;
    (*v105)(v108, v71, v110);
    v74 = v141;
    v75 = v68;
    v41 = v103;
    (v67)(v141, v75, v14);
    v76 = v109;
    v70(v109, v72, v73);
    v77 = v111;
    RangeSet.ranges.getter();
    v78 = *v104;
    v79 = v76;
    v14 = v115;
    (*v104)(v79, v73);
    v78(v72, v73);
    (*v41)(v122, v14);
    outlined destroy of Text.Effect.Composition(v123, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    v80 = (v74 + *(v107 + 20));
    type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator();
    v82 = *(v81 + 48);
    type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BA8]);
    (*(*(v83 - 8) + 32))(&v80[v82], v77, v83);
    *v80 = 0;
    *(v80 + 1) = 0;
    if (RangeSet.Ranges.count.getter() >= 1)
    {
      break;
    }

    outlined destroy of Text.Effect.Composition(v74, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
    outlined destroy of Text.Effect.Composition(v121, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
    x = v131;
    y = v130;
    width = v129;
    height = v128;
LABEL_28:
    v43 = v127;
    v44 = v126;
    v45 = v125;
    v46 = v124;
    v47 = v120;
LABEL_5:
    v146.origin.x = v35;
    v146.origin.y = v36;
    v146.size.width = v37;
    v146.size.height = v38;
    v152.origin.x = x;
    v152.origin.y = y;
    v152.size.width = width;
    v152.size.height = height;
    v147 = CGRectUnion(v146, v152);
    v35 = v147.origin.x;
    v36 = v147.origin.y;
    v37 = v147.size.width;
    v38 = v147.size.height;
    v40 = v136;
    v42 = v137;
  }

  v84 = 0;
  v85 = 0;
  x = v131;
  y = v130;
  width = v129;
  height = v128;
  while (1)
  {
    RangeSet.Ranges.subscript.getter();
    if (__OFADD__(*&v142, v84))
    {
      break;
    }

    if (__OFADD__(v84++, 1))
    {
      goto LABEL_31;
    }

    RangeSet.Ranges.subscript.getter();
    if (__OFSUB__(*&v143, *&v142))
    {
      goto LABEL_32;
    }

    if (v84 >= *&v143 - *&v142)
    {
      v84 = 0;
      *v80 = ++v85;
    }

    v86 = v139;
    Text.Layout.Line.subscript.getter();
    Text.Layout.Run.quantizedImageBounds.getter();
    v153.origin.x = v87;
    v153.origin.y = v88;
    v153.size.width = v89;
    v153.size.height = v90;
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    v149 = CGRectUnion(v148, v153);
    x = v149.origin.x;
    y = v149.origin.y;
    width = v149.size.width;
    height = v149.size.height;
    (*v138)(v86, v140);
    if (v85 >= RangeSet.Ranges.count.getter())
    {
      outlined destroy of Text.Effect.Composition(v121, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      *(v80 + 1) = v84;
      outlined destroy of Text.Effect.Composition(v141, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
      v14 = v115;
      goto LABEL_28;
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
}

Swift::Void __swiftcall TextEffectsRenderer.refreshRenderingAttributes()()
{
  v1 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  if (v1 >> 62)
  {
LABEL_21:
    if (v1 < 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x19A8BDCD0](v8);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8BDB80](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = [v4 textElement];

      if (!v7)
      {
        break;
      }

      ++v3;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    specialized TextEffectsRenderer.updateKeyframes(with:)(v0);
  }
}

uint64_t specialized RangeReplaceableCollection.removeFirst()(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v5 = MEMORY[0x19A8BDB80](0, v3);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v3 < 0)
  {
    v6 = *v1;
  }

  else
  {
    v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x19A8BDCD0](v6);
  if (!result)
  {
    goto LABEL_23;
  }

  result = MEMORY[0x19A8BDCD0](v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    if (!v4)
    {
LABEL_6:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

LABEL_15:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x19A8BDCD0](v7);
LABEL_19:
    if (result)
    {
      v2(0, 1);
      return v5;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in TextRenderLayer.displaceSublayers()(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = type metadata accessor for TextRenderLayer.Layout(0);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(result + 24));
    if (v10 < *(v12 + 16))
    {
      outlined init with copy of Text.Effect.Composition(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v13 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      outlined destroy of Text.Effect.Composition(v9, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      return v13 == a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in TextRenderLayer.displaceSublayers()@<X0>(unint64_t *a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10)
{
  v38 = a8;
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v39 = a9;
  v14 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *a2;
  v23 = *a3;
  result = type metadata accessor for TextRenderLayer.Layout(0);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v25 = *(a4 + *(result + 24));
  if (v21 >= *(v25 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of Text.Effect.Composition(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v21, v20, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    outlined init with take of TextRenderLayer.Layout(v20, v16, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v26 = &v16[*(v14 + 24)];
    v27 = *(v35 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v28 = type metadata accessor for Text.Effect.Composition(0);
    MEMORY[0x1EEE9AC00](v28);
    *(&v35 - 6) = v27;
    v29 = v36;
    v30 = v37;
    *(&v35 - 5) = v26;
    *(&v35 - 4) = v29;
    v31 = v38;
    *(&v35 - 3) = v30;
    *(&v35 - 2) = v31;
    *(&v35 - 1) = a10;
    v33 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.widthDifference(at:context:), 0.0, (&v35 - 8), v32);
    result = outlined destroy of Text.Effect.Composition(v16, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    *a2 = v33 + *a2;
  }

  else
  {
    result = outlined destroy of Text.Effect.Composition(v20, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }

  v34 = v39;
  *v39 = v22;
  *(v34 + 1) = v23;
  return result;
}

uint64_t Text.Layout.Line.xrange(runIndex:range:)@<X0>(uint64_t a1@<X0>, CFIndex a2@<X1>, CFIndex a3@<X2>, double *a4@<X8>)
{
  v5 = v4;
  v60 = a4;
  secondaryOffset[1] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for LayoutDirection();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v51 - v13;
  v14 = type metadata accessor for Text.Layout.Run();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  Text.Layout.Line.subscript.getter();
  v18 = Text.Layout.Run.characterRange.getter();
  v20 = v19;
  v21 = *(v15 + 8);
  v21(v17, v14);
  v52 = a3;
  v53 = a2;
  if (v18 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = v18;
  }

  if (v20 >= a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = v20;
  }

  v54 = v23;
  v55 = v22;
  if (v22 < v23)
  {
    v24 = v20;
    v25 = Text.Layout.Line.line.getter();
    if (v25)
    {
      v26 = v25;
      v51 = v5;
      Text.Layout.Line.subscript.getter();
      v27 = v56;
      Text.Layout.Run.layoutDirection.getter();
      v21(v17, v14);
      v29 = v57;
      v28 = v58;
      (*(v57 + 104))(v11, *MEMORY[0x1E697E7D8], v58);
      v30 = static LayoutDirection.== infix(_:_:)();
      (*(v29 + 8))(v11, v28);
      secondaryOffset[0] = 0.0;
      v31 = v55;
      OffsetForStringIndex = CTLineGetOffsetForStringIndex(v26, v55, secondaryOffset);
      v34 = v26;
      if (OffsetForStringIndex == secondaryOffset[0])
      {
        goto LABEL_12;
      }

      if (__OFSUB__(v31, v18))
      {
        goto LABEL_34;
      }

      if (v18 < v53)
      {
LABEL_12:
        v35 = v51;
        v36 = v54;
      }

      else
      {
        v35 = v51;
        v36 = v54;
        if (__OFADD__(v59, v30 & 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v53 = v26;
        if (v59 + (v30 & 1) < 0)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
        }

        MEMORY[0x1EEE9AC00](v32);
        *(&v51 - 2) = v35;
        specialized Sequence.reduce<A>(_:_:)(closure #1 in Text.Layout.Line.width(of:)partial apply, (&v51 - 4), 0, v49);
        OffsetForStringIndex = v50;
        v34 = v53;
      }

      v61 = 0.0;
      v38 = CTLineGetOffsetForStringIndex(v34, v36, &v61);
      if (v38 != v61)
      {
        if (__OFSUB__(v24, v36))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v24 <= v52)
        {
          v39 = (v30 & 1) == 0;
          if (__OFADD__(v59, v39))
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v59 + v39 < 0)
          {
            goto LABEL_39;
          }

          MEMORY[0x1EEE9AC00](v37);
          *(&v51 - 2) = v35;
          specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Layout.Line.width(of:), (&v51 - 4), 0, v40);
        }
      }

      if (v38 >= OffsetForStringIndex)
      {
        v41 = OffsetForStringIndex;
      }

      else
      {
        v41 = v38;
      }

      if (v38 >= OffsetForStringIndex)
      {
        v42 = v38;
      }

      else
      {
        v42 = OffsetForStringIndex;
      }

      if (v41 > v42)
      {
        __break(1u);
      }

      else
      {
        Text.Layout.Line.origin.getter();
        v44 = v43;

        if (v41 + v44 <= v42 + v44)
        {
          v45 = v60;
          *v60 = v41 + v44;
          v45[1] = v42 + v44;
          *(v45 + 2) = v31;
          *(v45 + 3) = v36;
          v46 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
          (*(v29 + 32))(v45 + *(v46 + 24), v27, v28);
          return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  v48 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
  return (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
}

uint64_t Text.Layout.Line.containsRightToLeft.getter()
{
  v43 = type metadata accessor for LayoutDirection();
  v1 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v31 - v4;
  v44 = type metadata accessor for Text.Layout.Run();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Layout.Line();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Line>();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Text.Layout.Line.line.getter();
  if (result)
  {
    v16 = result;
    if (CTLineIsRightToLeft())
    {

      return 1;
    }

    else if (CTLineHasBidiLevels())
    {
      v32 = v16;
      (*(v8 + 16))(v10, v0, v7);
      v17 = MEMORY[0x1E6981048];
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
      dispatch thunk of Sequence.makeIterator()();
      v18 = *(v12 + 36);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, v17);
      v38 = (v5 + 16);
      v37 = *MEMORY[0x1E697E7D8];
      v35 = v1 + 8;
      v36 = (v1 + 104);
      v33 = (v5 + 8);
      v34 = v18;
      v19 = v40;
      v20 = (v1 + 8);
      do
      {
        dispatch thunk of Collection.endIndex.getter();
        v21 = *&v14[v18];
        v39 = v21 != v45[0];
        if (v21 == v45[0])
        {
          break;
        }

        v22 = dispatch thunk of Collection.subscript.read();
        (*v38)(v19);
        (v22)(v45, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v23 = v41;
        Text.Layout.Run.layoutDirection.getter();
        v24 = v7;
        v26 = v42;
        v25 = v43;
        (*v36)(v42, v37, v43);
        LOBYTE(v22) = static LayoutDirection.== infix(_:_:)();
        v27 = v14;
        v28 = *v20;
        v29 = v26;
        v7 = v24;
        (*v20)(v29, v25);
        v30 = v25;
        v18 = v34;
        v28(v23, v30);
        v14 = v27;
        (*v33)(v19, v44);
      }

      while ((v22 & 1) == 0);
      outlined destroy of Text.Effect.Composition(v14, type metadata accessor for IndexingIterator<Text.Layout.Line>);

      return v39;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double closure #1 in Text.Layout.Line.width(of:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.typographicBounds.getter();
  (*(v5 + 8))(v7, v4);
  result = v8 + v11;
  *a2 = v8 + v11;
  return result;
}

Swift::Void __swiftcall TextEffectsRenderer.notifyDisplayLinkObservers(with:)(TextAnimationSupport::Time with)
{
  v47 = type metadata accessor for UUID();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v40[1] = v3 + 32;
  v40[2] = v3 + 16;
  v44 = v3;
  v45 = v12;
  v46 = (v3 + 8);

  v18 = 0;
  v41 = v10;
  v42 = v7;
  while (v16)
  {
    v19 = v18;
LABEL_15:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v44;
    v25 = v45;
    v26 = v43;
    v27 = v47;
    (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v23, v47);
    v28 = *(*(v25 + 56) + 8 * v23);
    type metadata accessor for (key: UUID, value: TextRenderSurface)();
    v30 = v29;
    v31 = *(v29 + 48);
    v32 = *(v24 + 32);
    v7 = v42;
    v32(v42, v26, v27);
    *&v7[v31] = v28;
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    v33 = v28;
    v10 = v41;
LABEL_16:
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v7, v10, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
    type metadata accessor for (key: UUID, value: TextRenderSurface)();
    if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
    {

      return;
    }

    v34 = *&v10[*(v30 + 48)];
    v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    *&v35[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time] = with;
    v36 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers;
    swift_beginAccess();
    if (*(*&v35[v36] + 16))
    {
      v37 = v35;

      TextRenderLayer.updateLayers(for:at:chunk:)(v38, 1, with.seconds);

      v37[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 2u;
      [v37 setNeedsLayout];
    }

    (*v46)(v10, v47);
  }

  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      type metadata accessor for (key: UUID, value: TextRenderSurface)();
      v30 = v39;
      (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
      v16 = 0;
      v18 = v21;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void specialized TextEffectsRenderer.updateForStaticRendering(with:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  type metadata accessor for (UUID, NSTextLayoutFragment)();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = CACurrentMediaTime();
  TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(0, v14);
  v15 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v16 = *(v15 + 16);
  v17 = &unk_1EAEDF000;
  v75 = a1;
  v65 = v8;
  v66 = v11;
  if (v16)
  {
    v71 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
    v72 = v3;
    v18 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v20 = *(v3 + 16);
    v19 = v3 + 16;
    v76 = v20;
    v21 = v15 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v74 = v15;

    do
    {
      (v76)(v5, v21, v2);
      swift_beginAccess();
      v24 = *(a1 + v18);
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        v28 = v2;
        v29 = *v23;
        v30 = v27;
        v29(v5, v28);
        v31 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        [*&v30[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] setNeedsLayout];
        v32 = *&v30[v31];
        v2 = v28;
        a1 = v75;
        [v32 layoutIfNeeded];
      }

      else
      {
        swift_endAccess();
        (*v23)(v5, v2);
      }

      v21 += v22;
      --v16;
    }

    while (v16);

    v3 = v72;
    v15 = *(a1 + v71);
    v33 = *(v15 + 16);
    v8 = v65;
    v11 = v66;
    v17 = &unk_1EAEDF000;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v72 = v17[107];

  v76 = v34;

  if (v33)
  {
    v35 = 0;
    v36 = v76 & 0xFFFFFFFFFFFFFF8;
    if (v76 < 0)
    {
      v37 = v76;
    }

    else
    {
      v37 = v76 & 0xFFFFFFFFFFFFFF8;
    }

    v64 = v37;
    v38 = (v3 + 32);
    v68 = v76 & 0xC000000000000001;
    v69 = (v3 + 8);
    v70 = v76 >> 62;
    v71 = v3 + 16;
    v74 = v15;
    v67 = v33;
    while (v35 < *(v15 + 16))
    {
      (*(v3 + 16))(v11, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35, v2);
      if (v70)
      {
        if (v35 == MEMORY[0x19A8BDCD0](v64))
        {
LABEL_30:

          (*v69)(v11, v2);
          return;
        }
      }

      else if (v35 == *(v36 + 16))
      {
        goto LABEL_30;
      }

      if (v68)
      {
        v39 = MEMORY[0x19A8BDB80](v35, v76);
      }

      else
      {
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_32;
        }

        v39 = *(v76 + 8 * v35 + 32);
      }

      v40 = v39;
      v41 = *v38;
      v42 = v73;
      (*v38)(v73, v11, v2);
      v41(v8, v42, v2);
      v43 = v75;
      v44 = v72;
      swift_beginAccess();
      v45 = *(v43 + v44);
      if (*(v45 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v47 & 1) != 0))
      {
        v48 = *(*(v45 + 56) + 8 * v46);
        swift_endAccess();
        v49 = *v69;
        v50 = v48;
        v49(v8, v2);
        v11 = v66;
        v51 = v50;
        [v40 layoutFragmentFrame];
        [v51 adjustedLayoutFragmentFrame_];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = [v51 layer];
        [v60 setFrame_];

        v61 = [v51 layer];
        [v61 setBounds_];

        v62 = [v51 layer];
        [v62 layoutIfNeeded];

        v8 = v65;
      }

      else
      {
        swift_endAccess();

        (*v69)(v8, v2);
      }

      v15 = v74;
      if (v67 == ++v35)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void TextEffectsRenderer.drawStatic(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v66 = *(v10 + 16);
  if (v66)
  {
    v65 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v64 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v63 = v7 + 16;
    v62 = (v7 + 8);
    v52[1] = v71;

    v11 = 0;
    v56 = v1;
    v68 = a1;
    v55 = v6;
    v59 = v7;
    v58 = v9;
    v57 = v10;
    while (v11 < *(v10 + 16))
    {
      (*(v7 + 16))(v9, v64 + *(v7 + 72) * v11, v6);
      v12 = v65;
      swift_beginAccess();
      v13 = *(v2 + v12);
      if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();
        v17 = *v62;
        v18 = v16;
        v17(v9, v6);
        v19 = *&v18[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v20 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
        swift_beginAccess();
        v21 = *(v19 + v20);
        v22 = *(v21 + 16);
        if (v22)
        {

          v24 = 32;
          v25 = v18;
          v69 = v18;
          while (1)
          {
            v28 = *(v21 + v24);
            v29 = v28 >> 62;
            if ((v28 >> 62) <= 1)
            {
              if (v29)
              {
                MEMORY[0x1EEE9AC00](v23);
                v52[-2] = v45;
                v46 = v45;
                GraphicsContext.withCGContext(content:)();
              }

              else
              {
                MEMORY[0x1EEE9AC00](v23);
                v52[-2] = v28;
                v30 = v28;
                GraphicsContext.withCGContext(content:)();
              }

              v25 = v69;
              goto LABEL_11;
            }

            if (v29 == 2)
            {
              v31 = (v28 & 0x3FFFFFFFFFFFFFFFLL);
              v32 = [v31 superlayer];
              if (v32)
              {
                v33 = v32;
                type metadata accessor for TextRenderLayer(0);
                v34 = swift_dynamicCastClass();
                if (v34)
                {
                  v35 = v34;
                  v67 = v52;
                  MEMORY[0x1EEE9AC00](v34);
                  v61 = &v52[-4];
                  v36 = v68;
                  v52[-2] = v31;
                  v52[-1] = v36;
                  v38 = *(v37 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
                  swift_beginAccess();
                  if (*(*(v38 + 112) + 56) == *&v35[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
                  {
                    if ([v35 delegate])
                    {
                      type metadata accessor for TextRenderSurface();
                      v60 = swift_dynamicCastClass();
                      if (v60)
                      {
                        Strong = swift_unknownObjectWeakLoadStrong();
                        if (Strong)
                        {
                          v40 = Strong;
                          v54 = swift_unknownObjectWeakLoadStrong();

                          if (v54)
                          {
                            v41 = swift_allocObject();
                            v42 = v61;
                            *(v41 + 16) = partial apply for closure #1 in DynamicEffectLayer.draw(in:);
                            *(v41 + 24) = v42;
                            v71[2] = partial apply for thunk for @callee_guaranteed () -> ();
                            v72 = v41;
                            v52[3] = v41;
                            aBlock[0] = MEMORY[0x1E69E9820];
                            aBlock[1] = 1107296256;
                            v71[0] = thunk for @escaping @callee_guaranteed () -> ();
                            v71[1] = &block_descriptor_0;
                            v61 = _Block_copy(aBlock);
                            v52[2] = v72;
                            v43 = v54;
                            swift_unknownObjectRetain();
                            swift_unknownObjectRetain();

                            v44 = v61;
                            _NSTextCustomRenderingDelegateWillDraw(v43, v60, v61);
                            swift_unknownObjectRelease_n();
                            swift_unknownObjectRelease_n();
                            _Block_release(v44);
                            LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

                            if (v44)
                            {
                              goto LABEL_42;
                            }

                            goto LABEL_35;
                          }
                        }
                      }

                      swift_unknownObjectRelease();
                    }

                    v47 = [v31 superlayer];
                    if (v47)
                    {
                      v48 = v47;
                      if (swift_dynamicCastClass())
                      {
                        v49 = &v31[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content];
                        swift_beginAccess();
                        v50 = &v49[*(type metadata accessor for Text.Effect.RenderSegmentation.Effect(0) + 24)];
                        v51 = v53;
                        outlined init with copy of Text.Effect.Composition(v50, v53, type metadata accessor for Text.Effect.Composition);
                        TextRenderLayer.draw(composition:segmentIndex:in:)(v51, *&v31[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex], v68);

                        outlined destroy of Text.Effect.Composition(v51, type metadata accessor for Text.Effect.Composition);
                      }

                      else
                      {

                        v33 = v31;
                        v31 = v48;
                      }
                    }
                  }
                }

                else
                {
                }

LABEL_35:
                v25 = v69;
                goto LABEL_11;
              }
            }

            else
            {
              MEMORY[0x1EEE9AC00](v23);
              v52[-2] = v26;
              v27 = v26;
              v25 = v69;
              GraphicsContext.withCGContext(content:)();
            }

LABEL_11:
            v24 += 8;
            if (!--v22)
            {

              v2 = v56;
              v6 = v55;
              goto LABEL_38;
            }
          }
        }

LABEL_38:
        v7 = v59;
        v9 = v58;
        v10 = v57;
      }

      else
      {
        swift_endAccess();
        (*v62)(v9, v6);
      }

      if (++v11 == v66)
      {

        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }
}

char *TextEffectsRenderer.baselineOffsets.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    v27 = (v10 - 8);
    v28 = v10;
    v24[1] = v7;

    v25 = v14;
    v26 = v0;
    do
    {
      v11(v5, v13, v2);
      swift_beginAccess();
      v15 = *(v1 + v9);
      if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v17 & 1) != 0))
      {
        v18 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        v19 = v9;
        v20 = v11;
        v21 = *v27;
        v22 = v18;
        v21(v5, v2);
        v11 = v20;
        v9 = v19;
        v14 = v25;
        v23 = *&v22[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        TextRenderLayer.appendBaselineOffsets(to:)(&v29);

        v1 = v26;
      }

      else
      {
        swift_endAccess();
        (*v27)(v5, v2);
      }

      v13 += v14;
      --v8;
    }

    while (v8);

    return v29;
  }

  return result;
}

double TextEffectsRenderer.drawingBounds.getter()
{
  v1 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v40 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v14 = *(v2 + 16);
    v12 = v2 + 16;
    v13 = v14;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v38 = (v12 - 8);
    v39 = v12;
    v37[1] = v9;

    do
    {
      v13(v4, v15, v1);
      v17 = v40;
      swift_beginAccess();
      v18 = *(v17 + v11);
      if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v11;
        v23 = v13;
        v24 = *v38;
        v25 = v21;
        v24(v4, v1);
        v13 = v23;
        v11 = v22;
        v26 = v25;
        v27 = *&v25[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        TextRenderLayer.drawingBounds.getter();
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v43.origin.x = v29;
        v43.origin.y = v31;
        v43.size.width = v33;
        v43.size.height = v35;
        v42 = CGRectUnion(v41, v43);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;
      }

      else
      {
        swift_endAccess();
        (*v38)(v4, v1);
      }

      v15 += v16;
      --v10;
    }

    while (v10);
  }

  return x;
}

void specialized TextEffectsRenderer.endLayout(with:)(unint64_t a1)
{
  v125 = type metadata accessor for LayoutDirection();
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124[2] = v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v124[1] = v124 - v4;
  *&v146.size.height = type metadata accessor for UUID();
  v5 = *(*&v146.size.height - 8);
  MEMORY[0x1EEE9AC00](*&v146.size.height);
  v137 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = v124 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v124 - v10;
  v130 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  v12 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v13 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v14 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v15 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  v128 = v15;
  v16 = *(a1 + v15);

  v17 = specialized updatedIdentifiers<A, B>(a:b:makeIdentifier:)(v12, v14, v16);

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v18);

  *&v20 = COERCE_DOUBLE(specialized _NativeSet.subtracting<A>(_:)(v17, v19));

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v21);
  v127 = v17;

  v129 = v13;
  v23 = *(a1 + v13);

  v140 = specialized _NativeSet.subtracting<A>(_:)(v24, v22);

  v25 = 0;
  v27 = v20 + 56;
  v26 = *(v20 + 56);
  v143 = *&v20;
  v28 = 1 << *(v20 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v145 = a1;
  *&v146.size.width = a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v31 = (v28 + 63) >> 6;
  *&v146.origin.x = *&v5 + 16;
  v144 = v5;
  *&v146.origin.y = *&v5 + 8;
  while (v30)
  {
LABEL_11:
    v33 = v144;
    v34 = *(*&v144 + 72);
    height = v146.size.height;
    (*(*&v144 + 16))(v11, *(*&v143 + 48) + v34 * (__clz(__rbit64(v30)) | (v25 << 6)), *&v146.size.height);
    swift_beginAccess();
    v23 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(v11));
    v22 = v36;
    v37 = *(*&v33 + 8);
    v37(v11, *&height);
    if (v22)
    {
      width = v146.size.width;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = **&width;
      v149 = **&width;
      **&width = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v22 = v149;
      }

      v37((*(v22 + 48) + *&v23 * v34), *&v146.size.height);

      specialized _NativeDictionary._delete(at:)(*&v23, v22);
      **&width = v22;
    }

    v30 &= v30 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v32 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v32);
    ++v25;
    if (v30)
    {
      v25 = v32;
      goto LABEL_11;
    }
  }

  v40 = 0;
  v41 = v140 + 56;
  v42 = 1 << *(v140 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v140 + 56);
  v136 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController;
  v134 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver;
  v45 = (v42 + 63) >> 6;
  v133 = *&v144 + 32;
  v46 = v137;
  v132 = v140 + 56;
  v131 = v45;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v44)
    {
      do
      {
        v50 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_84;
        }

        if (v50 >= v45)
        {

          v84 = v145;
          v23 = *&v130;
          *(v145 + v130) = *(v145 + v128);

          *(v84 + v129) = v127;

          specialized TextEffectsRenderer.updateKeyframes(with:)(v84);
          v22 = *(v84 + *&v23);
          if (v22 >> 62)
          {
            goto LABEL_89;
          }

          v85 = 0;
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }

        v44 = *(v41 + 8 * v50);
        ++v40;
      }

      while (!v44);
      v40 = v50;
    }

    v51 = *(v140 + 48);
    v52 = v144;
    v138 = *(*&v144 + 72);
    v53 = v135;
    v54 = v146.size.height;
    v139 = *(*&v144 + 16);
    v139(v135, v51 + v138 * (__clz(__rbit64(v44)) | (v40 << 6)), *&v146.size.height);
    (*(*&v52 + 32))(v46, v53, COERCE_CGFLOAT(*&v54));
    v143 = COERCE_DOUBLE(type metadata accessor for TextRenderSurface());
    v55 = objc_allocWithZone(*&v143);
    v142 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_renderer;
    swift_unknownObjectWeakInit();
    *&v55[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement] = 0;
    v23 = *(v145 + v136);
    v56 = *(v145 + v134);
    v141 = COERCE_DOUBLE(type metadata accessor for TextRenderLayer(0));
    v57 = objc_allocWithZone(*&v141);
    swift_unknownObjectWeakInit();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment] = 0;
    v58 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    v59 = type metadata accessor for TextRenderLayer.Layout(0);
    (*(*(v59 - 8) + 56))(&v57[v58], 1, 1, v59);
    v60 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout];
    *v60 = 0u;
    *(v60 + 1) = 0u;
    *(v60 + 4) = 0;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers] = 0;
    v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] = 0;
    v61 = MEMORY[0x1E69E7CC8];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics] = MEMORY[0x1E69E7CC8];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers] = v47;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices] = v61;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers] = MEMORY[0x1E69E7CD0];
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version] = -1;

    v62 = v56;
    RangeSet.init()();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer] = 0;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements] = v47;
    v63 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds];
    *v63 = 0u;
    v63[1] = 0u;
    v64 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets];
    *v64 = 0u;
    v64[1] = 0u;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding] = 0;
    v65 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement];
    *v65 = 0u;
    v65[1] = 0u;
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers] = MEMORY[0x1E69E7CD0];
    v66 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    *&v57[v66] = CACurrentMediaTime();
    *&v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController] = v23;
    swift_unknownObjectWeakAssign();
    v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(v47);
    v68 = &v57[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    *v68 = v67;
    v68[1] = 0;
    v148.receiver = v57;
    *&v148.super_class = v141;

    v69 = objc_msgSendSuper2(&v148, sel_init);

    *&v55[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] = v69;
    v46 = v137;
    swift_unknownObjectWeakAssign();
    v147.receiver = v55;
    *&v147.super_class = v143;
    v70 = objc_msgSendSuper2(&v147, sel_init);
    [*&v70[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer] setDelegate_];
    v71 = v146.size.width;
    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v149 = **&v71;
    v22 = v149;
    **&v71 = 0x8000000000000000;
    v73 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    v75 = *(v22 + 16);
    v76 = (LOBYTE(v74) & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_87;
    }

    v23 = v74;
    if (*(v22 + 24) < v78)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, v72);
      v22 = v149;
      v73 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      if ((LOBYTE(v23) & 1) != (v79 & 1))
      {
LABEL_100:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_30:
      v80 = v149;
      if (LOBYTE(v23))
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    if (v72)
    {
      goto LABEL_30;
    }

    v22 = &v149;
    v83 = v73;
    specialized _NativeDictionary.copy()();
    v73 = v83;
    v80 = v149;
    if (LOBYTE(v23))
    {
LABEL_18:
      v48 = v80[7];
      v49 = *(v48 + 8 * v73);
      *(v48 + 8 * v73) = v70;

      (**&v146.origin.y)(v46, *&v146.size.height);
      goto LABEL_19;
    }

LABEL_31:
    v80[(v73 >> 6) + 8] |= 1 << v73;
    v22 = v73;
    v23 = v146.size.height;
    v139((v80[6] + v73 * v138), v46, *&v146.size.height);
    *(v80[7] + 8 * v22) = v70;
    (**&v146.origin.y)(v46, COERCE_CGFLOAT(*&v23));
    v81 = v80[2];
    v77 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v77)
    {
      break;
    }

    v80[2] = v82;
LABEL_19:
    v44 &= v44 - 1;
    **&v71 = v80;

    swift_endAccess();
    v41 = v132;
    v45 = v131;
  }

  while (1)
  {
    __break(1u);
LABEL_89:
    if (v22 < 0)
    {
      v122 = v22;
    }

    else
    {
      v122 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v85 = 0;
    if (MEMORY[0x19A8BDCD0](v122))
    {
LABEL_37:
      if ((v22 & 0xC000000000000001) != 0)
      {

        v86 = MEMORY[0x19A8BDB80](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_100;
        }

        v86 = *(v22 + 32);
      }

      v87 = [v86 textLayoutManager];

      if (v87)
      {
        v88 = [v87 textContainer];

        if (v88)
        {
          [v88 lineFragmentPadding];
          v85 = v89;
        }
      }
    }

LABEL_43:
    v90 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding;
    v91 = v145;
    *(v145 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding) = v85;
    v22 = *(v91 + *&v23);
    v92 = MEMORY[0x1E695F050];
    if (v22 >> 62)
    {
      v123 = v22 < 0 ? v22 : v22 & 0xFFFFFFFFFFFFFF8;
      v93 = MEMORY[0x19A8BDCD0](v123);
    }

    else
    {
      v93 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v95 = *v92;
    v94 = *(v92 + 8);
    v96 = *(v92 + 16);
    v97 = *(v92 + 24);

    if (!v93)
    {
      break;
    }

    v23 = 0.0;
    LODWORD(v139) = *MEMORY[0x1E697E7D0];
    v140 = v126 + 104;
    v98 = *&v97;
    v99 = v96;
    v100 = *&v94;
    v144 = v95;
    v143 = *&v94;
    *&v142 = v96;
    v141 = *&v97;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v101 = MEMORY[0x19A8BDB80](*&v23, v22);
      }

      else
      {
        if (*&v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v101 = *(v22 + 8 * *&v23 + 32);
      }

      v102 = v101;
      v103 = *&v23 + 1;
      if (__OFADD__(*&v23, 1))
      {
        break;
      }

      v146.origin.x = v95;
      v146.origin.y = v100;
      v146.size.width = v99;
      v146.size.height = v98;
      [v101 layoutFragmentFrame];
      x = v151.origin.x;
      y = v151.origin.y;
      v106 = v151.size.width;
      v107 = v151.size.height;
      v108 = *(v145 + v90);
      if (!CGRectIsNull(v151))
      {
        v152.origin.x = x;
        v152.origin.y = y;
        v152.size.width = v106;
        v152.size.height = v107;
        v153 = CGRectStandardize(v152);
        v109 = v153.origin.y;
        v110 = v153.origin.x - v108;
        v111 = v153.size.width - (-v108 - v108);
        v112 = v153.size.height + 0.0;
        v153.origin.x = v110;
        v153.size.width = v111;
        v153.size.height = v153.size.height + 0.0;
        v113 = CGRectGetWidth(v153);
        x = v144;
        y = v143;
        v106 = *&v142;
        v107 = v141;
        if (v113 >= 0.0)
        {
          v154.origin.x = v110;
          v154.origin.y = v109;
          v154.size.width = v111;
          v154.size.height = v112;
          v114 = CGRectGetHeight(v154);
          if (v114 >= 0.0)
          {
            x = v110;
          }

          else
          {
            x = v144;
          }

          if (v114 >= 0.0)
          {
            y = v109;
          }

          else
          {
            y = v143;
          }

          if (v114 >= 0.0)
          {
            v106 = v111;
          }

          else
          {
            v106 = *&v142;
          }

          if (v114 >= 0.0)
          {
            v107 = v112;
          }

          else
          {
            v107 = v141;
          }
        }
      }

      v156.origin.x = x;
      v156.origin.y = y;
      v156.size.width = v106;
      v156.size.height = v107;
      v150 = CGRectUnion(v146, v156);
      v95 = v150.origin.x;
      v100 = v150.origin.y;
      v99 = v150.size.width;
      v98 = v150.size.height;

      ++*&v23;
      if (v103 == v93)
      {
        goto LABEL_68;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  v100 = *&v94;
  v99 = v96;
  v98 = *&v97;
LABEL_68:

  v155.origin.x = v95;
  v155.origin.y = v100;
  v155.size.width = v99;
  v155.size.height = v98;
  IsNull = CGRectIsNull(v155);
  if (IsNull)
  {
    v116 = 0.0;
  }

  else
  {
    v116 = v95;
  }

  if (IsNull)
  {
    v117 = 0.0;
  }

  else
  {
    v117 = v100;
  }

  if (IsNull)
  {
    v118 = 0.0;
  }

  else
  {
    v118 = v99;
  }

  if (IsNull)
  {
    v119 = 0.0;
  }

  else
  {
    v119 = v98;
  }

  v120 = (v145 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds);
  v157.origin.x = v116;
  v157.origin.y = v117;
  v157.size.width = v118;
  v157.size.height = v119;
  v121 = CGRectEqualToRect(*(v145 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds), v157);
  if (!v121)
  {
    *v120 = v116;
    v120[1] = v117;
    v120[2] = v118;
    v120[3] = v119;
  }

  TextEffectsRenderer.updateDisplacementAndBounds(changed:)(!v121);
  TextEffectsAnimationController.restorePendingSnapshots()();
}

uint64_t specialized TextEffectsRenderer.updateKeyframes(with:)(uint64_t a1)
{
  v126 = type metadata accessor for UUID();
  v2 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v96 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v96 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v96 - v11;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v96 - v15;
  type metadata accessor for (NSTextLayoutFragment, UUID)();
  v120 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v96 - v19;
  v20 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) + 1;
  v104 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) = v20;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CD0];
  v21[5] = MEMORY[0x1E69E7CD0];
  v23 = MEMORY[0x1E69E7CC8];
  v21[6] = MEMORY[0x1E69E7CC8];
  v21[2] = v23;
  v21[3] = v23;
  v21[4] = v23;
  swift_beginAccess();
  v21[5] = v22;
  v21[7] = v20;
  v137 = v21;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v25 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v135 = v24;
  v136 = 0;
  v109 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v125 = a1;
  v26 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v106 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  if (v25 >> 62)
  {
    goto LABEL_64;
  }

  v118 = v25 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v94))
  {
    v115 = v9;
    v121 = (v2 + 32);
    v122 = v2 + 16;
    v123 = (v2 + 8);
    v124 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

    if (i)
    {
      v9 = 0;
      v107 = 0;
      v116 = v25 & 0xC000000000000001;
      v113 = i;
      v119 = v26;
      while (1)
      {
        if (v116)
        {
          v28 = MEMORY[0x19A8BDB80](v9, v25);
        }

        else
        {
          if (v9 >= *(v118 + 16))
          {
            goto LABEL_60;
          }

          v28 = *(v25 + 8 * v9 + 32);
        }

        v29 = v28;
        v30 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_59;
        }

        v31 = *(v119 + 16);
        if (v9 == v31)
        {

          goto LABEL_19;
        }

        if (v9 >= v31)
        {
          goto LABEL_62;
        }

        v26 = v25;
        v32 = *(v120 + 48);
        v33 = v117;
        v34 = v126;
        (*(v2 + 16))(&v117[v32], v119 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v126);
        v35 = v125;
        (*(v2 + 32))(v4, &v33[v32], v34);
        v36 = v124;
        swift_beginAccess();
        v37 = *(v35 + v36);
        if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v39 & 1) != 0))
        {
          v40 = *(*(v37 + 56) + 8 * v38);
          swift_endAccess();
          v41 = *v123;
          v42 = v40;
          v102 = v42;
          v41(v4, v126);
          v43 = v135;
          v44 = v136;
          v45 = *(v125 + v104);
          v46 = *&v42[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
          TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v29, v43, v44, v45, &v127);
          v47 = v127;
          v48 = v128;
          v101 = v127;
          v100 = v128;
          v49 = v129;
          v50 = v130;
          v98 = v131;
          v97 = v132;
          v99 = v133;
          v103 = v134;

          Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v47, v48, v49, v50, v98, v97, v99, &v135);

          v107 |= v103;
          v9 = v30;
          v25 = v26;
          v26 = v119;
          if (v30 == v113)
          {
            goto LABEL_19;
          }
        }

        else
        {
          swift_endAccess();

          (*v123)(v4, v126);
          ++v9;
          v25 = v26;
          if (v30 == v113)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v107 = 0;
LABEL_19:

    v25 = *(v125 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
    v9 = v112;
    v51 = v108;
    if (v107)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v137);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*(v125 + v104));
    }

    v52 = *(v125 + v109);
    v53 = *(v52 + 16);
    if (!v53)
    {
      break;
    }

    v4 = v52 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v54 = 0;
    v26 = &off_1E744B000;
    while (v54 < *(v52 + 16))
    {
      (*(v2 + 16))(v9, v4 + *(v2 + 72) * v54, v126);
      v56 = v124;
      v55 = v125;
      swift_beginAccess();
      v25 = *(v55 + v56);
      if (*(v25 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v58 & 1) != 0))
      {
        v59 = *(*(v25 + 56) + 8 * v57);
        swift_endAccess();
        v60 = *&v59[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v61 = v59;
        v62 = [v60 superlayer];
        v25 = [v62 superlayer];

        v9 = v112;
        if (v25)
        {

          (*v121)(v110, v9, v126);
          v63 = 0;
LABEL_32:
          v51 = v108;
          goto LABEL_34;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++v54;
      (*v123)(v9, v126);
      if (v53 == v54)
      {

        v63 = 1;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v118 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 < 0)
    {
      v94 = v25;
    }

    else
    {
      v94 = v25 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v63 = 1;
LABEL_34:
  v64 = v110;
  v65 = v126;
  (*(v2 + 56))(v110, v63, 1, v126);

  v66 = v64;
  v25 = v105;
  outlined init with copy of TextRenderLayer.Layout?(v66, v105, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if ((*(v2 + 48))(v25, 1, v65) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v25, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v121)(v51, v25, v126);
    v68 = v124;
    v67 = v125;
    swift_beginAccess();
    v25 = *(v67 + v68);
    if (*(v25 + 16) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v70 & 1) != 0))
    {
      v71 = *(*(v25 + 56) + 8 * v69);
      swift_endAccess();
      v72 = *(v125 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v73 = *&v71[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v74 = v71;
      v25 = [v73 superlayer];
      v75 = [v25 superlayer];

      (*v123)(v51, v126);
      v76 = *(v72 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v72 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v75;
    }

    else
    {
      swift_endAccess();
      (*v123)(v51, v126);
    }
  }

  v77 = *(v125 + v106);
  v9 = *(v125 + v109);
  if (v77 >> 62)
  {
    if (v77 < 0)
    {
      v95 = *(v125 + v106);
    }

    else
    {
      v95 = v77 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = MEMORY[0x19A8BDCD0](v95);
  }

  else
  {
    v26 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v4 = 0;
    v78 = v77 & 0xC000000000000001;
    v119 = v77 & 0xFFFFFFFFFFFFFF8;
    v118 = v77 & 0xC000000000000001;
    v111 = v2;
    while (1)
    {
      if (v78)
      {
        v79 = MEMORY[0x19A8BDB80](v4, v77);
      }

      else
      {
        if (v4 >= *(v119 + 16))
        {
          goto LABEL_61;
        }

        v79 = *(v77 + 8 * v4 + 32);
      }

      v80 = v79;
      v81 = *(v9 + 16);
      if (v4 == v81)
      {
        break;
      }

      if (v4 >= v81)
      {
        goto LABEL_63;
      }

      v82 = *(v120 + 48);
      v83 = v114;
      v84 = v126;
      (*(v2 + 16))(&v114[v82], v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4, v126);
      v85 = &v83[v82];
      v86 = v115;
      (*(v2 + 32))(v115, v85, v84);
      v87 = v124;
      v88 = v125;
      swift_beginAccess();
      v25 = *(v88 + v87);
      if (*(v25 + 16) && (v89 = specialized __RawDictionaryStorage.find<A>(_:)(v86), (v90 & 1) != 0))
      {
        v91 = *(*(v25 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *v123;
        v25 = v91;
        v92(v86, v126);
        v2 = v111;
        v78 = v118;
      }

      else
      {
        swift_endAccess();

        (*v123)(v86, v126);
      }

      if (v26 == ++v4)
      {
        goto LABEL_55;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v110, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_55:

    outlined destroy of TextRenderLayer.Layout?(v110, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }
}

uint64_t specialized TextEffectsRenderer.updateKeyframes(with:)(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v103 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v103 - v12;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v103 - v16;
  type metadata accessor for (NSTextLayoutFragment, UUID)();
  v127 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v103 - v20;
  v21 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) + 1;
  v112 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion) = v21;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CD0];
  v22[5] = MEMORY[0x1E69E7CD0];
  v24 = MEMORY[0x1E69E7CC8];
  v22[6] = MEMORY[0x1E69E7CC8];
  v22[2] = v24;
  v22[3] = v24;
  v22[4] = v24;
  swift_beginAccess();
  v22[5] = v23;
  v22[7] = v21;
  v143 = v22;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v115 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  v26 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v141 = v25;
  v142 = 0;
  v116 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v27 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  if (v26 >> 62)
  {
    goto LABEL_68;
  }

  v125 = v26 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v101))
  {
    v119 = v8;
    v132 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v130 = v3 + 16;
    v128 = (v3 + 32);
    v131 = (v3 + 8);

    v126 = a1;
    if (i)
    {
      v8 = 0;
      LODWORD(v29) = 0;
      v123 = v26 & 0xC000000000000001;
      v121 = i;
      v122 = v26;
      v129 = v27;
LABEL_5:
      v111 = v29;
      v29 = v2;
      while (1)
      {
        if (v123)
        {
          v30 = MEMORY[0x19A8BDB80](v8, v26);
          v2 = v29;
        }

        else
        {
          if (v8 >= *(v125 + 16))
          {
            goto LABEL_64;
          }

          v2 = v29;
          v30 = *(v26 + 8 * v8 + 32);
        }

        v31 = v8 + 1;
        v27 = v129;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_63;
        }

        v32 = v129[2];
        if (v8 == v32)
        {

          LOBYTE(v29) = v111;
          goto LABEL_23;
        }

        if (v8 >= v32)
        {
          goto LABEL_66;
        }

        v33 = *(v127 + 48);
        v34 = v124;
        (*(v3 + 16))(&v124[v33], v129 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
        (*(v3 + 32))(v5, &v34[v33], v2);
        v35 = v132;
        swift_beginAccess();
        v2 = a1;
        v27 = *(a1 + v35);
        if (v27[2])
        {
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
          if (v37)
          {
            v38 = *(v27[7] + 8 * v36);
            swift_endAccess();
            v39 = *v131;
            v40 = v38;
            v109 = v40;
            v39(v5, v29);
            v41 = v141;
            v42 = v142;
            v43 = *(a1 + v112);
            v44 = *&v40[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
            TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v30, v41, v42, v43, &v133);
            v45 = v133;
            v46 = v134;
            v108 = v133;
            v107 = v134;
            v105 = v135;
            v104 = v136;
            v47 = v138;
            v103 = v137;
            v106 = v139;
            v2 = v29;
            v110 = v140;

            Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v45, v46, v105, v104, v103, v47, v106, &v141);

            LODWORD(v29) = v111 | v110;
            a1 = v126;
            v8 = v31;
            v26 = v122;
            v27 = v129;
            if (v31 != v121)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }
        }

        swift_endAccess();

        (*v131)(v5, v29);
        ++v8;
        v26 = v122;
        if (v31 == v121)
        {
          v2 = v29;
          LOBYTE(v29) = v111;
          goto LABEL_22;
        }
      }
    }

    LOBYTE(v29) = 0;
LABEL_22:

LABEL_23:

    v27 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
    v8 = v119;
    v26 = v115;
    if (v29)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v143);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*(a1 + v112));
    }

    v48 = *(a1 + v116);
    v49 = *(v48 + 16);
    if (!v49)
    {
      break;
    }

    v5 = (v48 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

    a1 = 0;
    while (a1 < *(v48 + 16))
    {
      (*(v3 + 16))(v8, &v5[*(v3 + 72) * a1], v2);
      v50 = v126;
      v51 = v132;
      swift_beginAccess();
      v27 = *(v50 + v51);
      if (v27[2] && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v53 & 1) != 0))
      {
        v54 = *(v27[7] + 8 * v52);
        swift_endAccess();
        v55 = *&v54[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v56 = v54;
        v26 = &off_1E744B000;
        v57 = [v55 superlayer];
        v27 = [v57 superlayer];

        v8 = v119;
        if (v27)
        {

          (*v128)(v117, v8, v2);
          v58 = 0;
LABEL_36:
          a1 = v126;
          v59 = v114;
          v26 = v115;
          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++a1;
      (*v131)(v8, v2);
      if (v49 == a1)
      {

        v58 = 1;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v125 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 < 0)
    {
      v101 = v26;
    }

    else
    {
      v101 = v26 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v58 = 1;
  v59 = v114;
LABEL_38:
  v60 = v117;
  (*(v3 + 56))(v117, v58, 1, v2);

  v61 = v60;
  v62 = v113;
  outlined init with copy of TextRenderLayer.Layout?(v61, v113, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  v63 = (*(v3 + 48))(v62, 1, v2);
  v64 = v118;
  if (v63 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v62, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v128)(v59, v62, v2);
    v65 = v132;
    swift_beginAccess();
    v66 = *(a1 + v65);
    if (*(v66 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v68 & 1) != 0))
    {
      v69 = *(*(v66 + 56) + 8 * v67);
      swift_endAccess();
      v70 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v71 = *&v69[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v72 = v69;
      v73 = [v71 superlayer];
      v74 = [v73 superlayer];

      v64 = v118;
      (*v131)(v59, v2);
      v75 = *(v70 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v70 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v74;
    }

    else
    {
      swift_endAccess();
      (*v131)(v59, v2);
    }
  }

  v76 = *(a1 + v26);
  v129 = *(a1 + v116);
  if (v76 >> 62)
  {
    if (v76 < 0)
    {
      v102 = v76;
    }

    else
    {
      v102 = v76 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = MEMORY[0x19A8BDCD0](v102);
  }

  else
  {
    v27 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v120;

  if (v27)
  {
    v8 = 0;
    v125 = v76 & 0xC000000000000001;
    v124 = (v76 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v125)
      {
        v77 = MEMORY[0x19A8BDB80](v8, v76);
      }

      else
      {
        if (v8 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v77 = *(v76 + 8 * v8 + 32);
      }

      v5 = v77;
      v78 = v129[2];
      if (v8 == v78)
      {
        break;
      }

      if (v8 >= v78)
      {
        goto LABEL_67;
      }

      v79 = v27;
      v80 = *(v127 + 48);
      (*(v3 + 16))(&v64[v80], v129 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
      (*(v3 + 32))(v26, &v64[v80], v2);
      v81 = v132;
      swift_beginAccess();
      v82 = *(a1 + v81);
      if (*(v82 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v84 & 1) != 0))
      {
        v85 = *(*(v82 + 56) + 8 * v83);
        swift_endAccess();
        v86 = *v131;
        v87 = v85;
        v86(v120, v2);
        v26 = v120;
        v88 = v87;
        [v5 layoutFragmentFrame];
        [v88 adjustedLayoutFragmentFrame_];
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v97 = [v88 layer];
        [v97 setFrame_];

        v98 = [v88 &off_1E744B878];
        [v98 setBounds_];

        a1 = v126;
        v99 = [v88 &off_1E744B878];
        [v99 layoutIfNeeded];

        v64 = v118;
      }

      else
      {
        swift_endAccess();

        (*v131)(v26, v2);
      }

      ++v8;
      v27 = v79;
      if (v79 == v8)
      {
        goto LABEL_59;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v117, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_59:

    outlined destroy of TextRenderLayer.Layout?(v117, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }
}

uint64_t TextEffectsRenderer.updateKeyframes(with:)(void (*a1)(void *, id), uint64_t a2)
{
  v117 = a2;
  v116 = a1;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v111 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v105 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v105 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v105 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  type metadata accessor for (NSTextLayoutFragment, UUID)();
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v105 - v21;
  v22 = *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion] + 1;
  v109 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion;
  *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_keyframesVersion] = v22;
  type metadata accessor for Text.Effect.Keyframes.Storage();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CD0];
  v23[5] = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CC8];
  v23[6] = MEMORY[0x1E69E7CC8];
  v23[2] = v25;
  v23[3] = v25;
  v23[4] = v25;
  swift_beginAccess();
  v23[5] = v24;
  v26 = v2;
  v23[7] = v22;
  v138 = v23;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v28 = *&v2[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  v136 = v27;
  v137 = 0;
  v114 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs;
  v129 = *&v26[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs];
  v110 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments;
  if (v28 >> 62)
  {
    goto LABEL_66;
  }

  v125 = v28 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v103))
  {
    v112 = v12;
    v131 = v8 + 16;
    v128 = (v8 + 32);
    v132 = (v8 + 8);
    v133 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

    v130 = v26;
    v30 = v7;
    if (i)
    {
      v31 = 0;
      v113 = 0;
      v123 = v28 & 0xC000000000000001;
      v121 = v28;
      v120 = i;
      v119 = v8;
      while (1)
      {
        if (v123)
        {
          v32 = MEMORY[0x19A8BDB80](v31, v28);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v31 >= *(v125 + 16))
          {
            goto LABEL_62;
          }

          v32 = *(v28 + 8 * v31 + 32);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        v34 = *(v129 + 16);
        if (v31 == v34)
        {
          break;
        }

        if (v31 >= v34)
        {
          goto LABEL_64;
        }

        v35 = v8;
        v36 = v32;
        v7 = v30;
        v37 = *(v127 + 48);
        v38 = v26;
        v39 = v17;
        v40 = v124;
        v41 = v132;
        (*(v35 + 16))(&v124[v37], v129 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, v7);
        v42 = &v40[v37];
        v17 = v39;
        v26 = v38;
        v30 = v7;
        (*(v35 + 32))(v17, v42, v7);
        v43 = v133;
        swift_beginAccess();
        v44 = *&v26[v43];
        if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v46 & 1) != 0))
        {
          v47 = *(*(v44 + 56) + 8 * v45);
          swift_endAccess();
          v48 = *v41;
          v49 = v47;
          v107 = v49;
          v48(v17, v7);
          v50 = v136;
          v51 = v137;
          v52 = *&v130[v109];
          v53 = *&v49[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
          v106 = v36;
          TextRenderLayer.update(with:baseFragmentIdentifierMap:version:)(v36, v50, v51, v52, v134);
          v54 = v134[0];
          v55 = v134[1];
          v56 = v134[2];
          v7 = v134[3];
          v57 = v134[4];
          v58 = v134[5];
          v105 = v134[6];
          v108 = v135;

          Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(v54, v55, v56, v7, v57, v58, v105, &v136);

          v113 |= v108;
          v26 = v130;
          v31 = v33;
        }

        else
        {
          swift_endAccess();

          (*v41)(v17, v7);
          ++v31;
        }

        v12 = v126;
        v28 = v121;
        v8 = v119;
        if (v33 == v120)
        {
          goto LABEL_20;
        }
      }

      v12 = v126;
    }

    else
    {
LABEL_19:
      v113 = 0;
      v12 = v126;
LABEL_20:
    }

    v28 = *&v26[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController];
    v17 = v118;
    if (v113)
    {
      TextEffectsAnimationController.updateKeyframes(_:)(v138);
    }

    else
    {
      TextEffectsAnimationController.updateKeyframes(version:)(*&v26[v109]);
    }

    v59 = v26;
    v26 = *&v26[v114];
    v60 = *(v26 + 2);
    if (!v60)
    {
      break;
    }

    v17 = &v26[(*(v8 + 80) + 32) & ~*(v8 + 80)];

    v61 = 0;
    v7 = &off_1E744B000;
    while (v61 < *(v26 + 2))
    {
      (*(v8 + 16))(v12, &v17[*(v8 + 72) * v61], v30);
      v62 = v130;
      v63 = v133;
      swift_beginAccess();
      v28 = *(v62 + v63);
      if (*(v28 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v65 & 1) != 0))
      {
        v66 = *(*(v28 + 56) + 8 * v64);
        swift_endAccess();
        v67 = *&v66[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v68 = v66;
        v69 = [v67 superlayer];
        v28 = [v69 superlayer];

        v12 = v126;
        if (v28)
        {

          (*v128)(v115, v12, v30);
          v70 = 0;
LABEL_35:
          v59 = v130;
          v17 = v118;
          goto LABEL_37;
        }
      }

      else
      {
        swift_endAccess();
      }

      ++v61;
      (*v132)(v12, v30);
      if (v60 == v61)
      {

        v70 = 1;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v125 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v103 = v28;
    }

    else
    {
      v103 = v28 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v70 = 1;
LABEL_37:
  v71 = v115;
  (*(v8 + 56))(v115, v70, 1, v30);

  v72 = v71;
  v73 = v111;
  outlined init with copy of TextRenderLayer.Layout?(v72, v111, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  v74 = (*(v8 + 48))(v73, 1, v30);
  v75 = v112;
  if (v74 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v73, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*v128)(v112, v73, v30);
    v76 = v133;
    swift_beginAccess();
    v77 = *(v59 + v76);
    if (*(v77 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);
      swift_endAccess();
      v81 = *(v59 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_geometryObserver);
      v82 = *&v80[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v26 = v80;
      v83 = [v82 superlayer];
      v84 = [v83 superlayer];

      (*v132)(v75, v30);
      v85 = *(v81 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor);
      *(v81 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = v84;
      v59 = v130;
    }

    else
    {
      swift_endAccess();
      (*v132)(v75, v30);
    }
  }

  v7 = *(v59 + v110);
  v86 = *(v59 + v114);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v104 = *(v59 + v110);
    }

    else
    {
      v104 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = MEMORY[0x19A8BDCD0](v104);
  }

  else
  {
    v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v12 = 0;
    v129 = v7 & 0xC000000000000001;
    v126 = (v7 & 0xFFFFFFFFFFFFFF8);
    v125 = v86;
    while (1)
    {
      if (v129)
      {
        v87 = MEMORY[0x19A8BDB80](v12, v7);
      }

      else
      {
        if (v12 >= *(v126 + 2))
        {
          goto LABEL_63;
        }

        v87 = *(v7 + 8 * v12 + 32);
      }

      v88 = v87;
      v89 = *(v86 + 16);
      if (v12 == v89)
      {
        break;
      }

      if (v12 >= v89)
      {
        goto LABEL_65;
      }

      v26 = v28;
      v90 = v86 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12;
      v91 = *(v127 + 48);
      v92 = v122;
      (*(v8 + 16))(&v122[v91], v90, v30);
      (*(v8 + 32))(v17, &v92[v91], v30);
      v93 = v130;
      v94 = v133;
      swift_beginAccess();
      v95 = *(v93 + v94);
      if (*(v95 + 16) && (v96 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v97 & 1) != 0))
      {
        v98 = *(*(v95 + 56) + 8 * v96);
        swift_endAccess();
        v99 = *v132;
        v100 = v98;
        v99(v118, v30);
        v101 = v100;
        v116(v88, v101);

        v17 = v118;
      }

      else
      {
        swift_endAccess();

        (*v132)(v17, v30);
      }

      v28 = v26;
      ++v12;
      v86 = v125;
      if (v26 == v12)
      {
        goto LABEL_58;
      }
    }

    outlined destroy of TextRenderLayer.Layout?(v115, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }

  else
  {
LABEL_58:

    outlined destroy of TextRenderLayer.Layout?(v115, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  }
}

BOOL TextEffectsRenderer.fragmentsValid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x19A8BDCD0](v10))
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8BDB80](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 textElement];

      v8 = v7 != 0;
      if (v7)
      {

        ++v3;
        if (v6 != i)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    if (v1 < 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = v1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v8 = 1;
LABEL_14:

  return v8;
}

uint64_t TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(id a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, void *a4, void *a5, uint64_t a6)
{
  if (!TextEffectsRenderer.fragmentsValid.getter())
  {
    goto LABEL_10;
  }

  v13 = *&v6[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  if (v13 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    while (1)
    {
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a5;
      v14[4] = a6;
      v14[5] = v6;
      a6 = swift_allocObject();
      *(a6 + 16) = partial apply for closure #1 in TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:);
      *(a6 + 24) = v14;
      v30 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool);
      v31 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool);
      v29 = &block_descriptor_153;
      a5 = _Block_copy(&aBlock);
      a1 = a1;
      v15 = v6;

      [a4 enumerateTextSegmentAndCategoryInRange:a1 type:a2 options:isEscapingClosureAtFileLocation usingBlock:a5];
      _Block_release(a5);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_6:
      if (v13 < 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x19A8BDCD0](v17) < 1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    v30 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool);
    v31 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool);
    v29 = &block_descriptor_144;
    v19 = _Block_copy(&aBlock);

    [a4 enumerateTextSegmentsInRange:a1 type:a2 options:isEscapingClosureAtFileLocation usingBlock:v19];
    _Block_release(v19);
    v20 = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_195CC8D00;
      aBlock = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      aBlock = 0xD000000000000029;
      v27 = 0x8000000195CE05F0;
      v22 = StaticString.description.getter();
      MEMORY[0x19A8BD680](v22);

      MEMORY[0x19A8BD680](58, 0xE100000000000000);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x19A8BD680](v23);

      MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
      v24 = aBlock;
      v25 = v27;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 32) = v24;
      *(v21 + 40) = v25;
      print(_:separator:terminator:)();
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

uint64_t closure #1 in TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, double, double, double, double, double), uint64_t a6, char *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v183 = a7;
  v182 = a4;
  v169 = a3;
  v21 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.SegmentInteraction.Element?, type metadata accessor for Text.Effect.SegmentInteraction.Element, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v165 = &v160 - v23;
  v170 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
  v171 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v163 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v162 = &v160 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v160 - v28;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v173 = v29;
  v166 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v174 = &v160 - v30;
  v31 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v172 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v167 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v21);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v175 = &v160 - v34;
  v176 = type metadata accessor for TextRenderLayer.Layout(0);
  v35 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v168 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v196 = &v160 - v42;
  type metadata accessor for (UUID, NSTextLayoutFragment)();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v195 = &v160 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (NSTextRange.textRange.getter(), v184 = v46, (v47 & 1) != 0))
  {
    NSTextRange.textRange.getter();
    v184 = v48;
    if (v49)
    {
      v50 = a5(a1, a2, a8, a9, a10, a11, a12);
      return v50 & 1;
    }
  }

  v187 = v45;
  v177 = a1;
  v180 = a2;
  v178 = a6;
  v179 = a5;
  v51 = *&v183[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs];
  v52 = *&v183[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  v53 = *(v51 + 16);
  v181 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

  v197 = v52;

  v194 = v53;
  if (!v53)
  {
LABEL_32:

    goto LABEL_34;
  }

  v54 = 0;
  v193 = v38 + 16;
  v55 = v197 & 0xFFFFFFFFFFFFFF8;
  if ((v197 & 0x8000000000000000) != 0)
  {
    v56 = v197;
  }

  else
  {
    v56 = v197 & 0xFFFFFFFFFFFFFF8;
  }

  v160 = v56;
  v190 = v197 & 0xC000000000000001;
  v57 = v38 + 32;
  v161 = v35 + 6;
  v191 = (v38 + 8);
  v192 = v197 >> 62;
  v189 = v51;
  v188 = (v197 & 0xFFFFFFFFFFFFFF8);
  v186 = v40;
  v185 = v37;
  while (1)
  {
    if (v54 >= *(v51 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v58 = v196;
    (*(v38 + 16))(v196, v51 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v54, v37);
    if (v192)
    {
      break;
    }

    if (v54 == *(v55 + 16))
    {
      goto LABEL_33;
    }

LABEL_15:
    if (v190)
    {
      v59 = MEMORY[0x19A8BDB80](v54, v197);
    }

    else
    {
      if (v54 >= *(v55 + 16))
      {
        goto LABEL_41;
      }

      v59 = *(v197 + 8 * v54 + 32);
    }

    v60 = v59;
    v61 = *v57;
    v62 = v195;
    (*v57)(v195, v58, v37);
    v61(v40, v62, v37);
    v63 = [v60 rangeInElement];
    NSTextRange.textRange.getter();
    v55 = v64;
    v35 = v65;
    v66 = v60;
    v67 = v37;
    v69 = v68;

    if (v69)
    {
      (*v191)(v40, v67);

      v37 = v67;
    }

    else if (v187 >= v55)
    {
      v70 = v35 < v184;
      v37 = v185;
      v35 = v66;
      if (v70)
      {
        v40 = v186;
        (*v191)(v186, v185);
      }

      else
      {
        v71 = v183;
        v72 = v181;
        swift_beginAccess();
        v73 = *&v71[v72];
        v40 = v186;
        if (!*(v73 + 16) || (v74 = specialized __RawDictionaryStorage.find<A>(_:)(v186), (v75 & 1) == 0))
        {
          swift_endAccess();

          (*v191)(v40, v37);
          goto LABEL_11;
        }

        v37 = *(*(v73 + 56) + 8 * v74);
        swift_endAccess();
        v76 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        v77 = *(v37 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer);
        v78 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
        swift_beginAccess();
        v79 = v77 + v78;
        v80 = v175;
        outlined init with copy of TextRenderLayer.Layout?(v79, v175, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if ((*v161)(v80, 1, v176) != 1)
        {
          v183 = v35;
          v188 = v37;

          v94 = v80;
          v95 = v168;
          outlined init with take of TextRenderLayer.Layout(v94, v168, type metadata accessor for TextRenderLayer.Layout);
          v195 = v76;
          v96 = *(v37 + v76);
          v54 = *(v96 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
          v182 = *(v96 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
          v35 = *(v96 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
          swift_beginAccess();
          v38 = v35[14];
          v97 = *(v96 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
          v98 = *(v97 + 16);
          v194 = *(v95 + *(v176 + 24));
          v99 = v194[2];
          if (v98 == v99)
          {

            v57 = v169;
            goto LABEL_43;
          }

          v57 = v169;
          if (v99)
          {
            type metadata accessor for CGPoint(0);

            v97 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v97 + 16) = v99;
            bzero((v97 + 32), 16 * v99);
            goto LABEL_43;
          }

LABEL_42:

          v97 = MEMORY[0x1E69E7CC0];
LABEL_43:
          result = v187 - v55;
          if (__OFSUB__(v187, v55))
          {
            goto LABEL_110;
          }

          v100 = &v184[-v187];
          if (__OFSUB__(v184, v187))
          {
LABEL_111:
            __break(1u);
          }

          else
          {
            v187 = v38;
            v189 = v54;
            if (!__OFADD__(v100, result))
            {
              v101 = Text.Layout.CharacterIndex.init(_:)();
              result = Text.Layout.CharacterIndex.init(_:)();
              v196 = v101;
              v197 = result;
              v102 = v167;
              if (result >= v101)
              {
                v103 = v194;
                v104 = *&v195[v37];
                v105 = *&v104[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];

                v106 = v104;
                v190 = v35;
                v184 = v106;
                if ((v57 & 1) != 0 && !specialized Text.Effect.SegmentInteraction.matches(range:)(v196, v197, v103))
                {
                  if ((v57 & 2) != 0)
                  {
                    v169 = 2;
                  }

                  else
                  {
                    if ((v57 & 4) != 0)
                    {
                      v57 = 4;
                    }

                    v169 = v57;
                  }
                }

                v107 = v194;
                v108 = v194[2];
                v195 = (v166 + 8);

                v193 = v97;

                v109 = 0;
                v192 = MEMORY[0x1E69E7CC0];
                v110 = v172;
                v111 = v196;
                while (1)
                {
                  if (v108 == v109)
                  {
                    v121 = v192;
                    v122 = *(v192 + 16);
                    v123 = v193;
                    if (v122)
                    {
                      v198 = MEMORY[0x1E69E7CC0];
                      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 0);
                      v124 = v198;
                      v125 = v194 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
                      v126 = v123 + 32;
                      v127 = 32;
                      v128 = v163;
                      while (1)
                      {
                        v129 = *(v121 + v127);
                        if ((v129 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_107;
                        }

                        if (v129 >= v194[2])
                        {
                          goto LABEL_108;
                        }

                        result = outlined init with copy of Text.Effect.Composition(&v125[*(v110 + 72) * v129], v128, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                        if (v129 >= *(v193 + 16))
                        {
                          goto LABEL_109;
                        }

                        v130 = *(v126 + 16 * v129);
                        v131 = v170;
                        *(v128 + *(v170 + 20)) = v129;
                        *(v128 + *(v131 + 24)) = v130;
                        v198 = v124;
                        v133 = *(v124 + 16);
                        v132 = *(v124 + 24);
                        if (v133 >= v132 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v132 > 1, v133 + 1, 1);
                          v124 = v198;
                        }

                        *(v124 + 16) = v133 + 1;
                        result = outlined init with take of TextRenderLayer.Layout(v128, v124 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v133, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                        v127 += 8;
                        --v122;
                        v110 = v172;
                        if (!v122)
                        {

                          goto LABEL_79;
                        }
                      }
                    }

                    v124 = MEMORY[0x1E69E7CC0];
LABEL_79:
                    v134 = v165;
                    v135 = v164;
                    if (v169 > 3)
                    {
                      if (v169 == 4)
                      {
                        if (!*(v124 + 16))
                        {
                          goto LABEL_99;
                        }

                        v136 = v184;
                        Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(1, v189, v182, v187, v190, v184, v105);
                      }

                      else
                      {
                        if (v169 != 5)
                        {
                          if (v169 != 7)
                          {
LABEL_96:
                            if (*(v124 + 16))
                            {
                              v143 = v197;
                              v144 = v196;
                              v145 = v171;
                              outlined init with copy of Text.Effect.Composition(v124 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v164, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              specialized BidirectionalCollection.last.getter(v124, v134);
                              if ((*(v145 + 48))(v134, 1, v170) == 1)
                              {
                                outlined destroy of Text.Effect.Composition(v135, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                                outlined destroy of TextRenderLayer.Layout?(v134, &lazy cache variable for type metadata for Text.Effect.SegmentInteraction.Element?, type metadata accessor for Text.Effect.SegmentInteraction.Element);

                                v139 = 0.0;
                                v138 = 0.0;
                                v141 = v179;
                                goto LABEL_100;
                              }

                              v150 = v162;
                              outlined init with take of TextRenderLayer.Layout(v134, v162, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              v151 = v144;
                              v152 = v143;
                              v153 = v144;
                              v154 = v189;
                              v155 = v182;
                              v156 = v187;
                              v157 = v190;
                              v136 = v184;
                              Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v151, v152, 0, v189, v182, v187, v190, v184, v105);
                              v139 = v158;
                              Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v153, v197, 1, v154, v155, v156, v157, v136, v105);
                              v138 = v159;
                              outlined destroy of Text.Effect.Composition(v150, type metadata accessor for Text.Effect.SegmentInteraction.Element);
                              outlined destroy of Text.Effect.Composition(v135, type metadata accessor for Text.Effect.SegmentInteraction.Element);

LABEL_93:
                              v141 = v179;
LABEL_101:

                              v201.origin.x = a8;
                              v201.origin.y = a9;
                              v201.size.width = a10;
                              v201.size.height = a11;
                              v146 = v139 + CGRectGetMinX(v201);
                              v202.origin.x = a8;
                              v202.origin.y = a9;
                              v202.size.width = a10;
                              v202.size.height = a11;
                              v147 = v138 + CGRectGetMaxX(v202);
                              v148 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
                              v149 = v188;
                              swift_beginAccess();
                              LOBYTE(v148) = v141(v177, v180, v146, *&v149[v148] + a9, v147 - v146, a11, a12);

                              (*v191)(v186, v185);
                              outlined destroy of Text.Effect.Composition(v168, type metadata accessor for TextRenderLayer.Layout);
                              v50 = v148;
                              return v50 & 1;
                            }
                          }

LABEL_99:

                          v139 = 0.0;
                          v138 = 0.0;
                          v141 = v179;
                          goto LABEL_100;
                        }

                        if (!*(v124 + 16))
                        {
                          goto LABEL_99;
                        }

                        v136 = v184;
                        Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v196, v197, 0, v189, v182, v187, v190, v184, v105);
                      }

                      v139 = v140;

                      v138 = 0.0;
                      goto LABEL_93;
                    }

                    if (v169 != 2)
                    {
                      if (v169 != 3)
                      {
                        goto LABEL_96;
                      }

                      if (*(v124 + 16))
                      {
                        v136 = v184;
                        Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(v196, v197, 1, v189, v182, v187, v190, v184, v105);
                        v138 = v137;

                        v139 = 0.0;
                        goto LABEL_93;
                      }

                      goto LABEL_99;
                    }

                    v141 = v179;
                    if (*(v124 + 16))
                    {
                      v136 = v184;
                      Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(0, v189, v182, v187, v190, v184, v105);
                      v138 = v142;

                      v139 = 0.0;
                      goto LABEL_101;
                    }

                    v139 = 0.0;
                    v138 = 0.0;
LABEL_100:
                    v136 = v184;
                    goto LABEL_101;
                  }

                  v112 = v109;
                  if (v109 >= v108)
                  {
                    __break(1u);
LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
LABEL_110:
                    __break(1u);
                    goto LABEL_111;
                  }

                  v113 = v174;
                  if (__OFADD__(v109, 1))
                  {
                    goto LABEL_105;
                  }

                  if (v109 >= v107[2])
                  {
                    goto LABEL_106;
                  }

                  outlined init with copy of Text.Effect.Composition(v107 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v102, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                  v114 = v102;
                  v115 = v113;
                  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v113);
                  v116 = v197;
                  if (specialized RangeSet.overlaps(_:)(v111, v197))
                  {
                    (*v195)(v113, v173);
                    outlined destroy of Text.Effect.Composition(v114, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v102 = v114;
                  }

                  else
                  {
                    v117 = specialized RangeSet.contains(_:)(v111, v116);
                    (*v195)(v115, v173);
                    outlined destroy of Text.Effect.Composition(v114, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v102 = v114;
                    if (!v117)
                    {
                      result = specialized Text.Effect.SegmentInteraction.isEndOfFragment(for:range:)(v112, v111, v116, v107);
                      v109 = v112 + 1;
                      if ((result & 1) == 0)
                      {
                        continue;
                      }
                    }
                  }

                  v118 = v192;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v198 = v118;
                  if ((result & 1) == 0)
                  {
                    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 16) + 1, 1);
                    v118 = v198;
                  }

                  v120 = *(v118 + 16);
                  v119 = *(v118 + 24);
                  if (v120 >= v119 >> 1)
                  {
                    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
                    v118 = v198;
                  }

                  *(v118 + 16) = v120 + 1;
                  v192 = v118;
                  *(v118 + 8 * v120 + 32) = v112;
                  v109 = v112 + 1;
                  v110 = v172;
                  v107 = v194;
                }
              }

LABEL_113:
              __break(1u);
              return result;
            }
          }

          __break(1u);
          goto LABEL_113;
        }

        v81 = v35;
        v82 = v80;
        v35 = *v191;
        v83 = v37;
        v40 = v186;
        v37 = v185;
        (v35)(v186, v185);

        outlined destroy of TextRenderLayer.Layout?(v82, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
      }
    }

    else
    {
      v40 = v186;
      v37 = v185;
      (*v191)(v186, v185);
    }

LABEL_11:
    ++v54;
    v51 = v189;
    v55 = v188;
    if (v194 == v54)
    {
      goto LABEL_32;
    }
  }

  if (v54 != MEMORY[0x19A8BDCD0](v160))
  {
    goto LABEL_15;
  }

LABEL_33:

  (*v191)(v58, v37);
LABEL_34:
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_195CC8D00;
  v199 = 0;
  v200 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v199 = 0;
  v200 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v199 = 0xD00000000000001FLL;
  v200 = 0x8000000195CE0680;
  v85 = [v182 description];
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  MEMORY[0x19A8BD680](v86, v88);

  MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
  v89 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v89);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v198 = 80;
  v90 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v90);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  v91 = v199;
  v92 = v200;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 32) = v91;
  *(v84 + 40) = v92;
  print(_:separator:terminator:)();

  v50 = v179(v177, v180, a8, a9, a10, a11, a12);
  return v50 & 1;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(uint64_t result, double a2, double a3)
{
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CGPoint(0);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v3;
  v4 = (result + 32);
  if (v3 <= 3)
  {
    v5 = 0;
    v7 = a2;
    v6 = a3;
LABEL_9:
    v11 = v3 - v5;
    do
    {
      *v4 = v7;
      v4[1] = v6;
      v4 += 2;
      --v11;
    }

    while (v11);
    return result;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += 2 * (v3 & 0x7FFFFFFFFFFFFFFCLL);
  v7 = a2;
  v6 = a3;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = (result + 64);
  v10 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    *(v9 - 2) = v8;
    *(v9 - 1) = v8;
    *v9 = v8;
    v9[1] = v8;
    v9 += 4;
    v10 -= 4;
  }

  while (v10);
  if (v5 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextRange?, @unowned CGRect, @unowned CGFloat, @guaranteed NSTextContainer, @unowned NSTextLayoutManagerSegmentCategory) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = *(a1 + 32);
  v18 = a2;
  v19 = a3;
  LOBYTE(a4) = v17(a2, v19, a4, a5, a6, a7, a8, a9);

  return a4 & 1;
}

Swift::Void __swiftcall TextEffectsRenderer.invalidateTemporaryAttributes(in:)(NSTextRange in)
{
  v42[0] = in.super.isa;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  v11 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v42[1] = v3 + 32;
  v42[2] = v3 + 16;
  v44 = v3;
  v45 = v12;
  v46 = (v3 + 8);

  v18 = 0;
  v47 = v10;
  v48 = v7;
  while (v16)
  {
    v19 = v18;
LABEL_16:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v25 = v44;
    v24 = v45;
    v26 = v43;
    (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v23, v2);
    v27 = *(*(v24 + 56) + 8 * v23);
    type metadata accessor for (key: UUID, value: TextRenderSurface)();
    v29 = v28;
    v30 = *(v28 + 48);
    v31 = *(v25 + 32);
    v7 = v48;
    v31(v48, v26, v2);
    *&v7[v30] = v27;
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    v32 = v27;
    v10 = v47;
LABEL_17:
    outlined init with take of Text.Effect.RangeCoordinateSpace?(v7, v10, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
    type metadata accessor for (key: UUID, value: TextRenderSurface)();
    if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
    {

      return;
    }

    v33 = *&v10[*(v29 + 48)];
    v34 = *&v33[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment];
    if (v35)
    {
      v36 = v2;
      v37 = v34;
      v38 = v35;
      v39 = [v38 rangeInElement];
      v40 = [v39 intersectsWithTextRange_];

      if (v40)
      {
        v37[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags] |= 0x90u;
        [v37 setNeedsLayout];
      }

      v2 = v36;
      v10 = v47;
    }

    else
    {
      v37 = *&v10[*(v29 + 48)];
    }

    (*v46)(v10, v2);
    v7 = v48;
  }

  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      type metadata accessor for (key: UUID, value: TextRenderSurface)();
      v29 = v41;
      (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
      v16 = 0;
      v18 = v21;
      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
}

CGPoint __swiftcall TextEffectsRenderer.convertFromRenderSpace(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = &v141 - v5;
  v6 = type metadata accessor for Text.Effect.Composition.Run(0);
  v143 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v165 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Text.Effect.InteractionMetrics();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v151 = (&v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v169);
  v175 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v178 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v195 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v179 = &v141 - v13;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v185 = (&v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v3);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v200 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v141 - v21);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v3);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v164 = &v141 - v24;
  v163 = type metadata accessor for TextRenderLayer.Layout(0);
  v25 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v194 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v201 = &v141 - v31;
  type metadata accessor for (UUID, NSTextLayoutFragment)();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v193 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v181 = v1;
  v35 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v36 = v34;
  v37 = *(v34 + 16);
  v180 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;

  v196 = v35;

  v190 = v37;
  if (!v37)
  {
LABEL_43:

    goto LABEL_55;
  }

  v38 = 0;
  v173 = 0;
  v192 = v194 + 16;
  v39 = v196 & 0xFFFFFFFFFFFFFF8;
  if (v196 < 0)
  {
    v40 = v196;
  }

  else
  {
    v40 = v196 & 0xFFFFFFFFFFFFFF8;
  }

  v142 = v40;
  v188 = v196 & 0xC000000000000001;
  v186 = (v196 + 32);
  v187 = (v194 + 32);
  v191 = (v194 + 8);
  v152 = (v25 + 48);
  v199 = (v16 + 56);
  v198 = (v16 + 48);
  v41 = *(MEMORY[0x1E695F050] + 8);
  v161 = *MEMORY[0x1E695F050];
  v160 = v41;
  v43 = *(MEMORY[0x1E695F050] + 16);
  v42 = *(MEMORY[0x1E695F050] + 24);
  v159 = v43;
  v158 = v42;
  v184 = v196 & 0xFFFFFFFFFFFFFF8;
  v177 = v36;
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    (*(v194 + 16))(v201, v36 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v38, v27);
    if (v196 >> 62)
    {
      if (v38 == MEMORY[0x19A8BDCD0](v142))
      {
LABEL_44:

        (*v191)(v201, v27);
        goto LABEL_55;
      }
    }

    else if (v38 == *(v39 + 16))
    {
      goto LABEL_44;
    }

    if (v188)
    {
      v44 = MEMORY[0x19A8BDB80](v38, v196);
    }

    else
    {
      if (v38 >= *(v39 + 16))
      {
        goto LABEL_57;
      }

      v44 = *&v186[8 * v38];
    }

    v45 = v44;
    v46 = *v187;
    v47 = v193;
    (*v187)(v193, v201, v27);
    v46(v29, v47, v27);
    [v45 layoutFragmentFrame];
    v203.x = x;
    v203.y = y;
    if (CGRectContainsPoint(v207, v203))
    {
      break;
    }

    (*v191)(v29, v27);

LABEL_7:
    ++v38;
    v39 = v184;
    if (v38 == v190)
    {
      goto LABEL_43;
    }
  }

  v48 = v181;
  v49 = v180;
  swift_beginAccess();
  v50 = *(v48 + v49);
  if (!*(v50 + 16) || (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v52 & 1) == 0))
  {
    swift_endAccess();

    (*v191)(v29, v27);
    goto LABEL_20;
  }

  v166 = v45;
  v53 = *(*(v50 + 56) + 8 * v51);
  swift_endAccess();
  v176 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
  v54 = *&v53[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
  v55 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v56 = v54 + v55;
  v57 = v164;
  outlined init with copy of TextRenderLayer.Layout?(v56, v164, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v58 = v163;
  if ((*v152)(v57, 1, v163) == 1)
  {
    v59 = v53;
    v60 = v57;
    v61 = *v191;
    v62 = v59;
    v61(v29, v27);

    outlined destroy of TextRenderLayer.Layout?(v60, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_20:
    v36 = v177;
    goto LABEL_7;
  }

  v148 = v29;
  v149 = v27;
  v63 = v57;
  v64 = v162;
  outlined init with take of TextRenderLayer.Layout(v63, v162, type metadata accessor for TextRenderLayer.Layout);
  v65 = *(v64 + *(v58 + 24));
  v66 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
  v67 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
  v68 = *(v54 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8);
  v69 = *(v65 + 16);
  v182 = v66 + 32;
  v147 = v53;

  v189 = v65;

  v70 = 0;
  v71 = v179;
  v72 = v178;
  v174 = v53;
  v157 = v66;
  v155 = v69;
  v154 = v15;
  v156 = v68;
  for (i = v22; ; v22 = i)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v70 == v69)
          {
            v73 = 1;
            v70 = v69;
            v74 = v200;
          }

          else
          {
            if ((v70 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            if (v70 >= *(v189 + 16))
            {
              goto LABEL_59;
            }

            v75 = v189 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70;
            v76 = *(v15 + 48);
            v77 = v185;
            *v185 = v70;
            outlined init with copy of Text.Effect.Composition(v75, v77 + v76, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v78 = v77;
            v74 = v200;
            outlined init with take of TextRenderLayer.Layout(v78, v200, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
            v73 = 0;
            ++v70;
          }

          (*v199)(v74, v73, 1, v15);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v74, v22, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          if ((*v198)(v22, 1, v15) == 1)
          {
            v29 = v148;
            v27 = v149;
            (*v191)(v148, v149);

            outlined destroy of Text.Effect.Composition(v162, type metadata accessor for TextRenderLayer.Layout);
            goto LABEL_20;
          }

          v79 = *v22;
          outlined init with take of TextRenderLayer.Layout(v22 + *(v15 + 48), v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if ((v79 & 0x8000000000000000) == 0 && v79 < *(v66 + 16))
          {
            break;
          }

          outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        }

        v80 = (v182 + 16 * v79);
        v82 = *v80;
        v81 = v80[1];
        outlined init with copy of Text.Effect.Composition(v71, v195, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          break;
        }

        v209 = CGRectOffset(*(v195 + 24), v67 + v82, v68 + v81);
        v86 = v209.origin.x;
        v87 = v209.origin.y;
        width = v209.size.width;
        v172 = v81;
        v89 = v67;
        height = v209.size.height;
        v71 = v179;

        v210.origin.x = v86;
        v210.origin.y = v87;
        v210.size.width = width;
        v210.size.height = height;
        v67 = v89;
        v205.y = y;
        v68 = v156;
        v91 = v172;
        v205.x = x;
        v92 = CGRectContainsPoint(v210, v205);
        outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v92)
        {
          (*v191)(v148, v149);

          x = x - v82;
          v112 = y - v91;
          goto LABEL_45;
        }
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v84 = v167;
      outlined init with take of TextRenderLayer.Layout(v195, v167, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v208 = CGRectOffset(*(v84 + *(v168 + 32)), v67 + v82, v68 + v81);
      v204.x = x;
      v204.y = y;
      v85 = CGRectContainsPoint(v208, v204);
      outlined destroy of Text.Effect.Composition(v84, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      outlined destroy of Text.Effect.Composition(v71, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v72 = v178;
      if (v85)
      {
        (*v191)(v148, v149);

        x = x - v82;
        v112 = y - v81;
LABEL_45:
        y = v112;
        goto LABEL_54;
      }
    }

    v93 = v175;
    outlined init with take of TextRenderLayer.Layout(v195, v175, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v94 = *&v174[v176];
    v170 = v93 + *(v169 + 24);
    v95 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
    v96 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap];
    v97 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8];
    v98 = *&v94[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
    swift_beginAccess();
    v99 = *(v98 + 112);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v100 = v94;
    v101 = Text.Effect.Composition.displacements(at:context:)(v96, v97, v99, v98, v95);
    v103 = v102;

    v202[0] = v96;
    v202[1] = v97;
    v150 = v97;
    v202[2] = v99;
    v202[3] = v98;
    v172 = *&v101;
    v202[4] = v101;
    v202[5] = v103;
    v171 = v103;
    v104 = *(*&v174[v176] + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
    v105 = type metadata accessor for Text.Effect.Composition(0);
    v106 = *(v170 + *(v105 + 24));
    MEMORY[0x1EEE9AC00](v105);
    *(&v141 - 4) = v104;
    v108 = v107;
    *(&v141 - 3) = v107;
    *(&v141 - 2) = v202;
    v109 = v173;
    v211.origin.x = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.bounds(at:context:), v161, v160, v159, v158, (&v141 - 6), v106);
    v212 = CGRectOffset(v211, v67 + v82, v68 + v81);
    v110 = v212.origin.x;
    v111 = v212.origin.y;
    v206.x = x;
    v206.y = y;
    if (CGRectContainsPoint(v212, v206))
    {
      break;
    }

    v173 = v109;
    v71 = v179;
    outlined destroy of Text.Effect.Composition(v179, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

    outlined destroy of Text.Effect.Composition(v175, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v72 = v178;
    v66 = v157;
    v69 = v155;
    v15 = v154;
  }

  v113 = v106;
  v199 = v99;
  v200 = v98;
  v201 = v96;

  v114 = x - v82;
  v115 = *&v174[v176];
  v116 = y - v81;
  v117 = *(v115 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time);
  v118 = *&OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
  swift_beginAccess();
  v119 = *(v115 + *&v118);
  if (*(v119 + 16) && (v120 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v121 & 1) != 0))
  {
    v122 = *(v119 + 56) + *(v145 + 72) * v120;
    v123 = v151;
    outlined init with copy of Text.Effect.Composition(v122, v151, type metadata accessor for Text.Effect.InteractionMetrics);
    swift_endAccess();
  }

  else
  {
    y = v118;
    swift_endAccess();
    v124 = v151;
    *v151 = MEMORY[0x1E69E7CC0];
    v125 = v146;
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    v198 = v115;
    v196 = v115;
    RangeSet.init()();
    *(v124 + *(v125 + 24)) = MEMORY[0x1E69E7CD0];
    v126 = (v124 + *(v125 + 28));
    *v126 = 0;
    v126[1] = 0;
    v127 = v113;
    v128 = *(v113 + 16);
    v129 = v165;
    v130 = v201;
    v131 = v200;
    v132 = v199;
    v133 = v150;
    if (v128)
    {
      v134 = v108;
      v135 = v127 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v136 = *(v143 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition(v135, v129, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v151, v134, v130, v133, v132, v131, v117);
        v129 = v165;
        outlined destroy of Text.Effect.Composition(v165, type metadata accessor for Text.Effect.Composition.Operation);
        v135 += v136;
        --v128;
      }

      while (v128);
    }

    v137 = v151;
    v138 = v144;
    outlined init with copy of Text.Effect.Composition(v151, v144, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v145 + 56))(v138, 0, 1, v146);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v138, v79);
    swift_endAccess();

    v123 = v137;
  }

  v139 = Text.Effect.InteractionMetrics.displacedPoint(from:activeOrigin:)(__PAIR128__(*&v116, *&v114), __PAIR128__(*&v111, *&v110));
  x = v139.x;
  y = v139.y;

  outlined destroy of Text.Effect.Composition(v123, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v179, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  (*v191)(v148, v149);
  outlined destroy of Text.Effect.Composition(v175, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
LABEL_54:
  outlined destroy of Text.Effect.Composition(v162, type metadata accessor for TextRenderLayer.Layout);
LABEL_55:
  v42 = x;
  v43 = y;
LABEL_60:
  result.y = v43;
  result.x = v42;
  return result;
}