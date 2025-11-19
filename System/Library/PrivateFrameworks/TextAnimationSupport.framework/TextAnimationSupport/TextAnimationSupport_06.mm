unint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeLayout.Fragment> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout.Fragment> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout.Fragment> and conformance Slice<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeLayout.Fragment>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment, &type metadata for Text.Effect.KeyframeLayout.Fragment, MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout.Fragment> and conformance Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeLayout.Fragment> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeLayout.Fragment>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment, &type metadata for Text.Effect.KeyframeLayout.Fragment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags()
{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Flags and conformance Text.Effect.KeyframeLayout.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.PartialMap.ValidationResult and conformance Text.Effect.PartialMap.ValidationResult()
{
  result = lazy protocol witness table cache variable for type Text.Effect.PartialMap.ValidationResult and conformance Text.Effect.PartialMap.ValidationResult;
  if (!lazy protocol witness table cache variable for type Text.Effect.PartialMap.ValidationResult and conformance Text.Effect.PartialMap.ValidationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PartialMap.ValidationResult and conformance Text.Effect.PartialMap.ValidationResult);
  }

  return result;
}

void Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v80 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Layout.RunSlice();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Layout.Line();
  v82 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v3;
  if (*(v1 + *(v3 + 20)) > 0.0009765625)
  {
    outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v1, v14, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v56 = v81;
        (*(v81 + 32))(v8, v14, v6);
        Text.Layout.RunSlice.quantizedImageBounds.getter();
        v19 = v57;
        v21 = v58;
        v23 = v59;
        v25 = v60;
        (*(v56 + 8))(v8, v6);
      }

      else
      {
        type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
        v27 = &v14[*(v26 + 48)];
        v28 = *v27;
        v29 = v27[1];
        v30 = v82;
        v31 = (*(v82 + 32))(v11, v14, v9);
        *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
        *(&v79 - 2) = v11;
        specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:), v32, v33, v34, v35, (&v79 - 4), v28, v29);
        v19 = v36;
        v21 = v37;
        v23 = v38;
        v25 = v39;
        (*(v30 + 8))(v11, v9);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v40 = *(v14 + 1);
      v85[0] = *v14;
      v85[1] = v40;
      v86 = v14[32];
      Path.boundingRect.getter();
      v19 = v41;
      v21 = v42;
      v23 = v43;
      v25 = v44;
      outlined destroy of Path(v85);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v17 = *v14;
      LODWORD(v16) = *(v14 + 2);
      [*v14 boundingRectWithProgress_];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v45 = v1;
      v46 = *(v14 + 2);
      v47 = Text.Effect.Keyframes.validFilter(_:)(*v14, *(a1 + 16));
      if (v47)
      {
        v48 = v47;
        v49 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0xE0))();
        v51 = v50;
        v53 = v52;
        v55 = v54;
      }

      else
      {
        v49 = 0.0;
        v51 = 0.0;
        v53 = 0.0;
        v55 = 0.0;
      }

      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v65 = *(v46 + 16);
      if (v65)
      {
        v66 = v46 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v67 = *(v80 + 72);
        do
        {
          outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v66, v5, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
          v89.origin.x = Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(a1);
          v89.origin.y = v68;
          v89.size.width = v69;
          v89.size.height = v70;
          v87.origin.x = x;
          v87.origin.y = y;
          v87.size.width = width;
          v87.size.height = height;
          v88 = CGRectUnion(v87, v89);
          x = v88.origin.x;
          y = v88.origin.y;
          width = v88.size.width;
          height = v88.size.height;
          outlined destroy of Text.Effect.ResolvedDrawing.Operation(v5);
          v66 += v67;
          --v65;
        }

        while (v65);
      }

      v19 = CGRect.outset(by:)(v49, v51, v53, v55, x, y, width, height);
      v21 = v71;
      v23 = v72;
      v25 = v73;
      v1 = v45;
    }

    v74 = (v1 + *(v83 + 24));
    v75 = v74[1];
    *&v84.a = *v74;
    *&v84.c = v75;
    *&v84.tx = v74[2];
    v76 = v19;
    *&v75 = v21;
    v77 = v23;
    v78 = v25;
    CGRectApplyAffineTransform(*(&v75 - 8), &v84);
  }
}

void closure #1 in Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(CGFloat *a1@<X0>, CGRect *a2@<X8>)
{
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.quantizedImageBounds.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  *a2 = CGRectUnion(v21, v22);
}

uint64_t Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(__int128 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, double a6)
{
  v74 = a4;
  v75 = a3;
  v73 = a2;
  v64 = a1;
  v9 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v10 = v9 - 8;
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for GraphicsContext.Shading();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Text.Layout.RunSlice();
  v72 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Text.Layout.Run();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Layout.Line();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphicsContext.transform.getter();
  GraphicsContext.opacity.getter();
  v23 = (v6 + *(v10 + 32));
  v24 = v23[2];
  *&v87.c = v23[1];
  *&v87.tx = v24;
  *&v87.a = *v23;
  GraphicsContext.concatenate(_:)(&v87);
  GraphicsContext.opacity.getter();
  v76 = a5;
  GraphicsContext.opacity.setter();
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v6, v22, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v26 = *v22;
        v27 = *(v22 + 2);
        v28 = GraphicsContext.drawingState.getter();
        LODWORD(v29) = v27;
        [v26 drawInState:v28 by:v29];
LABEL_25:

        goto LABEL_26;
      }

      v48 = *v22;
      v47 = *(v22 + 1);
      v49 = *(v22 + 2);
      v50 = v64;
      v81 = *(v64 + 2);
      result = Text.Effect.Keyframes.validFilter(_:)(v48, v81);
      if (!result)
      {
        v56 = *(v49 + 16);
        if (v56)
        {
          v57 = v49 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v58 = *(v63 + 72);
          v59 = v76;
          do
          {
            outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v57, v12, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
            Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v50, 0, 0, 1, v59, a6);
            outlined destroy of Text.Effect.ResolvedDrawing.Operation(v12);
            v57 += v58;
            --v56;
          }

          while (v56);
        }

        goto LABEL_26;
      }

      v26 = result;
      v51 = v50[1];
      v82 = *v50;
      v52 = v82;
      v53 = v50[2];
      v85 = v51;
      v86 = v53;
      v84 = v82;
      *&v83 = a6;
      *(&v83 + 1) = v49;
      v54 = *(v82 + 16);
      if (v54)
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v48);
        if (v55)
        {
          v54 = *(*(v52 + 56) + 8 * result);
        }

        else
        {
          v54 = 0;
        }
      }

      v60 = *(v50 + 5);
      v80 = *(v50 + 4);
      v79 = v60;
      v61 = v54 + v47;
      if (!__OFADD__(v54, v47))
      {
        v62 = *((*MEMORY[0x1E69E7D40] & *v26) + 0xD8);
        outlined init with copy of Text.Effect.BaseFragmentIdentifierMap(&v82, v78);
        outlined init with copy of Text.Effect.Keyframes(&v81, v78);

        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(&v80, v78, type metadata accessor for [Int : CGFloat]);
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(&v79, v78, type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]);
        v62(v48, v61, &v83, v50, v76, a6);
        outlined destroy of Text.Effect.DrawingContent(&v83);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }

    v45 = *(v22 + 1);
    v83 = *v22;
    v84 = v45;
    LOBYTE(v85) = v22[32];
    Color.init(_:)();
    v46 = v65;
    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.fill(_:with:style:)();
    outlined destroy of Path(&v83);
    v66[1](v46, v67);
LABEL_26:
    GraphicsContext.transform.setter();
    return GraphicsContext.opacity.setter();
  }

  v30 = v69;
  v66 = v19;
  v31 = v71;
  v32 = v72;
  v67 = v17;
  v33 = v77;
  v34 = v70;
  if (EnumCaseMultiPayload)
  {
    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)();
    (*(v32 + 32))(v31, v22, v33);
    GraphicsContext.draw(_:foregroundColor:options:)();
    (*(v32 + 8))(v31, v33);
    goto LABEL_26;
  }

  type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
  v36 = &v22[*(v35 + 48)];
  v37 = *v36;
  v38 = v36[1];
  v39 = v66;
  (*(v68 + 32))(v66, v22, v67);
  if (v37 == v38)
  {
LABEL_11:
    (*(v68 + 8))(v39, v67);
    goto LABEL_26;
  }

  v40 = v38;
  result = v37;
  if (v38 < v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v37 < v38)
  {
    v77 = *v76;
    v42 = (v30 + 8);
    v39 = v66;
    do
    {
      v43 = result + 1;
      v44 = v40;
      Text.Layout.Line.subscript.getter();
      GraphicsContext.draw(_:foregroundColor:options:)();
      (*v42)(v16, v34);
      v40 = v44;
      result = v43;
    }

    while (v44 != v43);
    goto LABEL_11;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t Text.Effect.DrawingContext.Storage.Shared.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Text.Effect.DrawingContext.Storage.append(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(a1, v7, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  *&v7[*(v4 + 28)] = *(v1 + 72);
  v9 = &v7[*(v4 + 32)];
  v10 = *(v1 + 40);
  *v9 = *(v1 + 24);
  *(v9 + 1) = v10;
  *(v9 + 2) = *(v1 + 56);
  swift_beginAccess();
  v11 = *(v8 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v8 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  outlined init with take of Text.Effect.ResolvedDrawing.Operation(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14);
  *(v8 + 16) = v11;
  swift_endAccess();
}

{
  v34 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = *(v1 + 40);
  v40 = *(v1 + 24);
  v41 = v9;
  v42 = *(v1 + 56);
  v43 = 0x3FF0000000000000;
  v44 = 0;
  v45 = 0;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) != 0 || *(v1 + 72) == 1.0)
  {
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v11);
    swift_endAccess();
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(v34 + 24);
      v33 = *(v34 + 20);
      v14 = &v8[v13];
      v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = a1 + v32;
      v31 = *(v3 + 72);
      do
      {
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v15, v8, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
        v16 = *(v1 + 16);
        outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(v8, v5, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        v17 = *(v14 + 1);
        *&t1.a = *v14;
        v18 = *(v14 + 2);
        *&t1.c = v17;
        *&t1.tx = v18;
        v19 = *(v1 + 40);
        *&t2.a = *(v1 + 24);
        *&t2.c = v19;
        *&t2.tx = *(v1 + 56);
        CGAffineTransformConcat(&v37, &t1, &t2);
        tx = v37.tx;
        ty = v37.ty;
        v36 = *&v37.a;
        v35 = *&v37.c;
        v22 = *&v8[v33];

        outlined destroy of Text.Effect.ResolvedDrawing.Operation(v8);
        v23 = v34;
        *&v5[*(v34 + 20)] = v22 * *(v1 + 72);
        v24 = &v5[*(v23 + 24)];
        v25 = v35;
        *v24 = v36;
        *(v24 + 1) = v25;
        *(v24 + 4) = tx;
        *(v24 + 5) = ty;
        swift_beginAccess();
        v26 = *(v16 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 16) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          *(v16 + 16) = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        v30 = v31;
        outlined init with take of Text.Effect.ResolvedDrawing.Operation(v5, v26 + v32 + v29 * v31);
        *(v16 + 16) = v26;
        swift_endAccess();

        v15 += v30;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t Text.Effect.DrawingContext.Storage.__deallocating_deinit()
{

  outlined consume of Text.Effect.StopCollector?(v0[23], v0[24], v0[25], v0[26]);

  return swift_deallocClassInstance();
}

void type metadata completion function for Text.Effect.ResolvedDrawing.Operation()
{
  type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGAffineTransform(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Text.Effect.ResolvedDrawing.Operation.Kind()
{
  type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (Path, Color.Resolved)(319, &lazy cache variable for type metadata for (Path, Color.Resolved));
      if (v2 <= 0x3F)
      {
        type metadata accessor for (RBDisplayListInterpolator, Float)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (Path, Color.Resolved)(319, &lazy cache variable for type metadata for (Text.Effect.RelativeIdentifierKey, Text.Effect.ResolvedDrawing));
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)()
{
  if (!lazy cache variable for type metadata for (Text.Layout.Line, Range<Int>, Color.Resolved?))
  {
    type metadata accessor for Text.Layout.Line();
    type metadata accessor for Range<Int>();
    type metadata accessor for Color.Resolved?();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Text.Layout.Line, Range<Int>, Color.Resolved?));
    }
  }
}

void type metadata accessor for Color.Resolved?()
{
  if (!lazy cache variable for type metadata for Color.Resolved?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color.Resolved?);
    }
  }
}

void type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)()
{
  if (!lazy cache variable for type metadata for (Text.Layout.RunSlice, Color.Resolved?))
  {
    type metadata accessor for Text.Layout.RunSlice();
    type metadata accessor for Color.Resolved?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Layout.RunSlice, Color.Resolved?));
    }
  }
}

void type metadata accessor for (RBDisplayListInterpolator, Float)()
{
  if (!lazy cache variable for type metadata for (RBDisplayListInterpolator, Float))
  {
    type metadata accessor for RBDisplayListInterpolator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (RBDisplayListInterpolator, Float));
    }
  }
}

unint64_t type metadata accessor for RBDisplayListInterpolator()
{
  result = lazy cache variable for type metadata for RBDisplayListInterpolator;
  if (!lazy cache variable for type metadata for RBDisplayListInterpolator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBDisplayListInterpolator);
  }

  return result;
}

void type metadata accessor for (Path, Color.Resolved)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double Text.Effect.DrawingContext.fragment<A>(for:key:fragment:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(*(*v4 + 16) + 48);

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(v9, a1, a2, a3, v12);
  v10 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v10;
  result = *&v13;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  return result;
}

uint64_t Text.Effect.DrawingContext.foregroundColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = *v3;
  if (a3)
  {
    if (*(*v3 + 96))
    {
      return result;
    }
  }

  else if ((*(*v3 + 96) & 1) == 0)
  {
    result = static Color.Resolved.== infix(_:_:)();
    if (result)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((result & 1) == 0)
  {
    type metadata accessor for Text.Effect.DrawingContext.Storage();
    v9 = swift_allocObject();
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 152) = _Q0;
    *(v9 + 168) = 0x3FF0000000000000;
    *(v9 + 176) = 0;
    *(v9 + 16) = *(v8 + 16);
    v15 = *(v8 + 40);
    v16 = *(v8 + 56);
    *(v9 + 24) = *(v8 + 24);
    *(v9 + 40) = v15;
    *(v9 + 56) = v16;
    *(v9 + 72) = *(v8 + 72);
    v17 = *(v8 + 184);
    v18 = *(v8 + 192);
    v19 = *(v8 + 200);
    v20 = *(v8 + 208);
    v24 = a1;
    v21 = a2;
    v22 = *(v8 + 216);
    *(v9 + 184) = v17;
    *(v9 + 192) = v18;
    *(v9 + 200) = v19;
    *(v9 + 208) = v20;
    *(v9 + 216) = v22;
    v23 = *(v8 + 96);
    *(v9 + 80) = *(v8 + 80);
    *(v9 + 96) = v23;

    a2 = v21;
    a1 = v24;
    outlined copy of Text.Effect.StopCollector?(v17, v18, v19, v20);

    *v3 = v9;
    v8 = v9;
  }

  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3 & 1;
  return result;
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Text.Effect.StopCollector?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(result, a2);
  }

  return result;
}

uint64_t outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of Text.Effect.StopCollector?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(result, a2);
  }

  return result;
}

uint64_t outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.origin.x = *v1;
  v8 = v1 + 1;
  v28.origin.y = v1[1];
  v28.size.width = v1[2];
  v9 = v1 + 2;
  v25 = v9;
  v28.size.height = v2[3];
  v24 = v2 + 3;
  v29 = CGRectStandardize(v28);
  y = v29.origin.y;
  *v8 = v29.origin.y;
  *v9 = v29.size.width;
  v2[3] = v29.size.height;
  v11 = v29.origin.x + v29.size.width;
  v12 = v29.origin.y + v29.size.height;
  v26 = v29.origin.y + v29.size.height;
  v27 = v29.origin.x + v29.size.width;
  *v2 = a1 * 0.5 + v29.origin.x;
  v13 = *MEMORY[0x1E69E7048];
  v14 = *(v5 + 104);
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15 = *(v5 + 8);
  v15(v7, v4);
  *v8 = a1 * 0.5 + y;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v27 = a1 * 0.5 + v11;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v26 = a1 * 0.5 + v12;
  v14(v7, v13, v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  v15(v7, v4);
  v16 = v27;
  v17 = *v2;
  v18 = *v8;
  v20 = v24;
  v19 = v25;
  v30.size.width = *v25;
  v21 = *v24;
  v30.origin.x = v17;
  v30.origin.y = *v8;
  v30.size.height = *v24;
  v31.size.width = v16 - CGRectGetMinX(v30);
  *v19 = v31.size.width;
  v22 = v26;
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.height = v21;
  *v20 = v22 - CGRectGetMinY(v31);
  v14(v7, *MEMORY[0x1E69E7038], v4);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  specialized FloatingPoint.round(_:toMultipleOf:)(v7, a1);
  return (v15)(v7, v4);
}

uint64_t closure #1 in SquishTextEffect.configuration(_:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(a6, v24, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD06SquishcF0V_Tt2g5(a6, a7, 1, v24);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = swift_allocObject();
  v15 = v24[3];
  v16 = v24[4];
  *(v14 + 48) = v24[2];
  *(v14 + 64) = v15;
  *(v14 + 80) = v16;
  v17 = v25;
  v18 = v24[1];
  *(v14 + 16) = v24[0];
  *(v14 + 32) = v18;
  *(v14 + 96) = v17;
  *(v14 + 104) = partial apply for closure #1 in closure #1 in SquishTextEffect.configuration(_:);
  *(v14 + 112) = v13;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v14;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_195CC8D00;
  *(v20 + 32) = inited;
  v21 = v20 + 32;
  v22 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v20);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v21);
  return v22;
}

void closure #1 in closure #1 in SquishTextEffect.configuration(_:)(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  type metadata accessor for Spring?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = a2[8];
  v25 = a2[5] - a2[4];
  if (v25 < 0.0)
  {
    v27 = 0.0;
    v26 = 0.0 / v24;
    if (v26 < 0.0)
    {
LABEL_5:
      if (a5 > 0.0)
      {
        v28 = 0.0 / a5;
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v26 = v25 / v24;
    if (v26 < 0.0)
    {
      v27 = 0.0;
      goto LABEL_5;
    }
  }

  v27 = 1.0;
  if (v26 <= 1.0)
  {
    if (v26 < a5)
    {
      v28 = v26 / a5;
LABEL_13:
      v29 = 1.0;
      if (v28 == 1.0)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v27 = v26;
  }

  else if (a5 > 1.0)
  {
    v29 = 1.0;
    v28 = 1.0 / a5;
    if (1.0 / a5 == 1.0)
    {
      goto LABEL_19;
    }

LABEL_14:
    v29 = 1.0 - exp2(v28 * -10.0);
    goto LABEL_19;
  }

LABEL_16:
  v30 = (v27 - a5) / a6;
  v31 = 1.0;
  if (v30 != 1.0)
  {
    v31 = 1.0 - exp2(v30 * -10.0);
  }

  v29 = 1.0 - v31;
LABEL_19:
  v33 = *a2;
  v32 = *(a2 + 1);
  v79 = *(a2 + 32);
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Spring();
  v81 = __swift_project_value_buffer(v34, static SquishTextEffect.spring);
  v35 = 0;
  if (v25 < 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v25;
  }

  if (__OFSUB__(*&v33, a1))
  {
    __break(1u);
  }

  else
  {
    v37 = v29 * a3 + 1.0;
    v38 = 1.0;
    __asm { FMOV            V2.2D, #1.0 }

    v80 = _Q2;
    v44 = 0.0;
    v45 = 0;
    v46 = 0.0;
    v47 = 0.0;
    if (_ZF)
    {
      v73 = v33;
      v74 = v17;
      v77 = v15;
      v75 = v20;
      v48 = v29 * a4 + 1.0;
      v93[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v93[1] = v32;
      v93[2] = a1;
      v93[3] = 0;
      v94 = 1;
      v95 = 0;
      v96 = 1;
      v89[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v89[1] = v32;
      v76 = a1;
      v89[2] = a1;
      v89[3] = 0;
      v90 = 1;
      v91 = 0;
      v92 = 1;
      *v82 = v48;
      v49 = v79;
      swift_beginAccess();
      if (*(*(v49 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v93), (v50 & 1) != 0) && (type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v51 = swift_dynamicCastClass()) != 0))
      {
        outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v51 + *(*v51 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      }

      else
      {
        v52 = *(*(v34 - 8) + 56);
        v53 = v78;
        v52(v78, 1, 1, v34);
        *v23 = v80;
        *(v23 + 2) = 0;
        v54 = v77;
        v55 = *(v77 + 44);
        v52(&v23[v55], 1, 1, v34);
        v56 = &v23[*(v54 + 48)];
        v57 = &v23[*(v54 + 52)];
        outlined assign with take of Spring?(v53, &v23[v55]);
        *v56 = 0;
        v56[8] = 1;
        *v57 = 0;
        v57[8] = 1;
      }

      swift_endAccess();
      v58 = v81;
      if (Spring.isValid.getter())
      {
        specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v58, v48, v36);
        v59 = &v23[*(v77 + 48)];
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        Spring.update<A>(value:velocity:target:deltaTime:)();
        *v59 = v36;
        v59[8] = 0;
      }

      else
      {
        outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23);
        v60 = *(v34 - 8);
        v61 = v78;
        (*(v60 + 16))(v78, v58, v34);
        v62 = *(v60 + 56);
        v62(v61, 0, 1, v34);
        *v23 = v48;
        *(v23 + 1) = v48;
        *(v23 + 2) = 0;
        v63 = v77;
        v64 = *(v77 + 44);
        v62(&v23[v64], 1, 1, v34);
        v65 = &v23[*(v63 + 48)];
        v66 = &v23[*(v63 + 52)];
        outlined assign with take of Spring?(v61, &v23[v64]);
        *v65 = 0;
        v65[8] = 1;
        *v66 = 0;
        v66[8] = 1;
      }

      v67 = v75;
      a1 = v76;
      outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v23, v75, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v68 = v74;
      outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(v67, v74, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      swift_beginAccess();
      specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v68, v89);
      swift_endAccess();
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v67);
      v38 = *(v23 + 1);
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23);
      v35 = *(a2 + 26);
      v44 = a2[27];
      v45 = *(a2 + 28);
      v46 = a2[29];
      v47 = a2[30];
      v33 = v73;
    }

    v69 = v44 - v46;
    v70 = v46 + v47;
    MidX = CGRectGetMidX(*&v35);
    memset(v83, 0, sizeof(v83));
    v84 = MidX;
    v85 = v44;
    v86 = v37;
    v87 = v80;
    v88 = 0;
    Text.Effect.TransformContext.record(target:for:spring:)(v83, a1, v81, v82);
    Text.Effect.TransformContext.draw(state:keyPath:)(v82, 0, 0, 0, 1);
    if (*&v33 == a1)
    {
      a2[17] = v38 * a2[17];
    }
  }
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance SquishTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized SquishTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SquishTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect();
  result = lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect();
  *(a1 + 16) = result;
  return result;
}

double specialized SquishTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 1;
  v21 = xmmword_195CCCC80;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v26 = xmmword_195CCB140;
  v27 = 0;
  v28 = 1;
  v29 = xmmword_195CCB150;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = 0;
  v33 = xmmword_195CCB160;
  v34 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static SquishTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD06SquishcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

uint64_t specialized SquishTextEffect.configuration(_:)(double a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in SquishTextEffect.configuration(_:);
  *(v9 + 24) = v8;

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[2 * v12];
  v13[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v13[5] = v9;
  return MEMORY[0x1E69E7CC0];
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _ContiguousArrayStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Spring?()
{
  if (!lazy cache variable for type metadata for Spring?)
  {
    type metadata accessor for Spring();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Spring?);
    }
  }
}

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(uint64_t a1)
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<SquishTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for Text.Effect.DrawableFragment<SquishTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState()
{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect.LayoutState and conformance ShakeVerticalTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in ShakeVerticalTextEffect.configuration(_:)(void *a1, uint64_t a2)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<WeightDeltaModifier>, lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier, &type metadata for WeightDeltaModifier, type metadata accessor for AnyDynamicFontModifier);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_195CCCD30;
  *(v4 + 32) = 0x408F400000000000;
  v5 = Text.Effect.Content.modifier(_:)(v4, a1, a2);

  return v5;
}

uint64_t closure #2 in ShakeVerticalTextEffect.configuration(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v65 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v50 = *(a1 + 5);
  v7 = *(a2 + 16);
  v57 = *a2;
  v58 = v7;
  v59 = *(a2 + 32);
  v60 = *(a2 + 48);
  v8 = *(&v57 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = v57;
  v11 = v59;
  swift_retain_n();
  v12 = Text.Effect.Keyframes.subscript.getter(v8, v9, v57);
  if (!v12)
  {
    goto LABEL_31;
  }

  if ((v59 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v49 = v6;
  v6 = *(v12 + 16);
  if (v59 >= v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v47 = v5;
  v48 = v4;
  v13 = (v12 + 32);
  v14 = *(v12 + 32 + 8 * v59);
  v15 = 0;
  if (v59)
  {
    v16 = v59;
    while (1)
    {
      v17 = *(*(*v13 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v18 = __OFADD__(v15, v17);
      v15 += v17;
      if (v18)
      {
        break;
      }

      ++v13;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:

  v67[0] = v57;
  v67[1] = v8;
  v67[2] = v9;
  v67[3] = v14;
  v67[4] = v59;
  v67[5] = v6;
  v67[6] = v15;
  outlined init with copy of Text.Effect.BaseFragment(v67, v66);
  v19 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(v67);
  v21 = v66[0];
  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  v23 = Text.Effect.Keyframes.subscript.getter(v8, v22, v10);
  if (v23)
  {
    v6 = *(v23 + 16);
    if (v11 >= v6)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v24 = *(v23 + 32 + 8 * v11);
    if (!v11)
    {
      v26 = 0;
LABEL_18:

      v66[0] = v10;
      v66[1] = v8;
      v66[2] = v22;
      v66[3] = v24;
      v66[4] = v11;
      v66[5] = v6;
      v66[6] = v26;
      outlined init with copy of Text.Effect.BaseFragment(v66, &v61);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v21;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v29, 1.0);
      outlined destroy of Text.Effect.BaseFragment(v66);
      v30 = v61;
      v53 = v57;
      v54 = v58;
      v55 = v59;
      v56 = v60;
      outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a2, &v61, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

      v31 = specialized static Text.Effect.stopMarkers(_:)(&v57);
      v52 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a3, v31, v32, 3, v30, 0.0);
      v46 = v33;

      v34 = *(v30 + 16);
      if (v34)
      {
        v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(*(v30 + 16), 0);
        v35 = specialized Sequence._copySequenceContents(initializing:)(&v61, v6 + 4, v34, v30);

        outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
        if (v35 != v34)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {

        v6 = MEMORY[0x1E69E7CC0];
      }

      *&v61 = v6;
      specialized MutableCollection<>.sort(by:)(&v61);

      v36 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v61);
      v61 = v53;
      v62 = v54;
      v63 = v55;
      v64 = v56;
      v68 = v48;
      v69 = v47;
      v70 = v49;
      v71 = v50;
      v37 = swift_allocObject();
      *(v37 + 16) = v65;
      *(v37 + 32) = v48;
      *(v37 + 40) = v47;
      *(v37 + 48) = v49;
      *(v37 + 56) = v50;
      v38 = *(a2 + 16);
      *(v37 + 64) = *a2;
      *(v37 + 80) = v38;
      *(v37 + 96) = *(a2 + 32);
      *(v37 + 112) = *(a2 + 48);
      v39 = swift_allocObject();
      v40 = v62;
      *(v39 + 16) = v61;
      *(v39 + 32) = v40;
      *(v39 + 48) = v63;
      *(v39 + 64) = v64;
      *(v39 + 72) = 0;
      *(v39 + 80) = v52;
      *(v39 + 88) = v46;
      *(v39 + 96) = v36;
      *(v39 + 104) = partial apply for closure #2 in closure #2 in ShakeVerticalTextEffect.configuration(_:);
      *(v39 + 112) = v37;
      v41 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v39;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v41);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_195CC8D00;
      *(v43 + 32) = inited;
      outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a2, &v53, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v68, &v53, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v69, &v53, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(&v70, &v53, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v71, &v53);
      v44 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v43);
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v43 + 32);
      return v44;
    }

    v25 = 0;
    v26 = 0;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_24;
      }

      v28 = *(*(*(v23 + 32 + 8 * v25) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v18 = __OFADD__(v26, v28);
      v26 += v28;
      if (v18)
      {
        goto LABEL_25;
      }

      if (__OFSUB__(v11, v27))
      {
        goto LABEL_26;
      }

      ++v25;
      if (v11 == v27)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_31:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void closure #2 in closure #2 in ShakeVerticalTextEffect.configuration(_:)(unint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v53 = type metadata accessor for Text.Layout.Line();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Text.Layout.Run();
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = a2[8];
  v19 = a2[5] - a2[4];
  if (v19 >= 0.0)
  {
    v21 = v19 / v18;
    v20 = 0.0;
    if (v21 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0 / v18;
    if (v21 < 0.0)
    {
      goto LABEL_8;
    }
  }

  if (v21 <= 1.0)
  {
    v20 = v21;
  }

  else
  {
    v20 = 1.0;
  }

LABEL_8:
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v22 = *(a3 + 32);
  if (*(v22 + 16) <= a1)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v46 = v15;
  v49 = a2;
  v23 = v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v24 = *(v16 + 72);
  v48 = a1;
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.Timing.GlyphTiming(v23 + v24 * a1, v47, type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v25 = *(a4 + 24);
  v26 = *(v25 + 16);
  v27 = 0.0;
  v28 = 0.0;
  if (v26 != *(v25 + 24))
  {
    v51 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v50 = *(v8 + 16);
    v38 = (v11 + 8);
    v39 = v26 + 1;
    do
    {
      while (1)
      {
        v40 = v53;
        v50(v10, v25 + v51, v53);
        Text.Layout.Line.subscript.getter();
        (*(v8 + 8))(v10, v40);
        if (v39 - 1 < *(v25 + 16) || v39 - 1 >= *(v25 + 24))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v42 = Text.Layout.Run.font.getter();
        if (v42)
        {
          break;
        }

        (*v38)(v13, v52);
        if (v28 <= 0.0)
        {
          v28 = 0.0;
        }

LABEL_30:
        if (*(v25 + 24) == v39)
        {
          goto LABEL_12;
        }

        ++v39;
      }

      v43 = v42;
      Size = CTFontGetSize(v42);

      (*v38)(v13, v52);
      if (v28 <= Size)
      {
        v28 = Size;
        goto LABEL_30;
      }
    }

    while (v39++ != *(v25 + 24));
  }

LABEL_12:
  if (v20 < 1.0)
  {
    v29 = sin(v20 * -6.0 * 3.0);
    v27 = pow(2.71828183, -v20) * v29;
  }

  v30 = pow(v20, 0.8);
  v31 = 1.0 - (v30 + -1.0) * (v30 + -1.0) + 1.0 - (v30 + -1.0) * (v30 + -1.0) + -1.0;
  v55 = COERCE_UNSIGNED_INT64(pow(1.0 - v31 * v31, 0.4));
  v56 = v28 / 3.0 * v27;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v60 = _Q0;
  v61 = 0x3FF0000000000000;
  v62 = 0;
  v37 = v47;
  Text.Effect.TransformContext.record(target:for:spring:)(&v55, v48, v47 + *(v46 + 24), v54);
  Text.Effect.TransformContext.draw(state:keyPath:)(v54, 0, 0, 0, 1);
  outlined destroy of Text.Effect.Timing.GlyphTiming(v37);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ShakeVerticalTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized ShakeVerticalTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShakeVerticalTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect();
  result = lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect();
  *(a1 + 16) = result;
  return result;
}

double specialized ShakeVerticalTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 1;
  v18[16] = 1;
  v21 = xmmword_195CCCD40;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static ShakeVerticalTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD013ShakeVerticalcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized ShakeVerticalTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[4 * v2];
  v3[4] = 1;
  v3[5] = closure #1 in ShakeVerticalTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in ShakeVerticalTextEffect.configuration(_:);
  *(v4 + 24) = 0;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[2 * v7];
  v8[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v8[5] = v4;
  return v0;
}

uint64_t outlined init with copy of [Text.Effect.Timing.Fragment](uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for [Text.Effect.Timing.GlyphTiming]()
{
  if (!lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming])
  {
    type metadata accessor for Text.Effect.Timing.GlyphTiming(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming]);
    }
  }
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ShakeVerticalTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeVerticalTextEffect>(0, a3, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for Text.Effect.KeyframeSequence.Entry(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.KeyframeSequence.Entry(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence()
{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeSequence(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 24 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    LOBYTE(v4) = *(v4 + 48);
    *result = v5;
    *(result + 1) = v6;
    *(result + 16) = v4;
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.KeyframeSequence()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.KeyframeSequence> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.Effect.KeyframeSequence and conformance Text.Effect.KeyframeSequence();
    v7 = a3(a1, &type metadata for Text.Effect.KeyframeSequence, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeSequence> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.KeyframeSequence>(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeSequence>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for TextEffectImplementation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void *static TextEffectImplementation.ResolvedMap.Key.== infix(_:_:)(void *result, void *a2)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 == *result)
  {
    type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();

    return static RangeSet.== infix(_:_:)();
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TextEffectImplementation.ResolvedMap.Key.hash(into:)()
{
  MEMORY[0x19A8BDE60](*v0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TextEffectImplementation.ResolvedMap.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  TextEffectImplementation.ResolvedMap.Key.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextEffectImplementation.ResolvedMap.Key.init(fragment:ranges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TextEffectImplementation.ResolvedMap.Key() + 36);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextEffectImplementation<A>.ResolvedMap.Key()
{
  Hasher.init(_seed:)();
  TextEffectImplementation.ResolvedMap.Key.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextEffectImplementation.ResolvedMap.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x19A8BD560](&v7, a1, a2, v4, &type metadata for Text.Effect.ResolvedDrawing, WitnessTable);
  return v7;
}

void TextEffectImplementation.ResolvedMap.reset()()
{
  type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
}

uint64_t TextEffectImplementation.ResolvedMap.init()()
{
  v0 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68690](v0, &type metadata for Text.Effect.ResolvedDrawing, WitnessTable);
}

uint64_t TextEffectImplementation.AnimationInfo.updateLayout(effect:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a4;
  v68 = a1;
  v12 = *(*v6 + 120);
  v58 = *(*v6 + 128);
  v13 = *(v58 + 16);
  v65 = type metadata accessor for Text.Effect.DrawableContent();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v67 = v52 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v52 - v17;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v52 - v19;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  v21 = *(v13 + 128);
  v62 = v13;
  v21(v12, v13);
  v22 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v20);
  v59 = a2;
  v23 = Text.Effect.Keyframes.subscript.getter(a2, v22, a5);
  if (!v23)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v24 = *(v23 + 16);
  v69 = v22;
  if (v24)
  {
    v53 = a3;
    v54 = a5;
    v55 = a6;
    v56 = v6;
    v72[0] = MEMORY[0x1E69E7CC0];
    v57 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v57;
    v26 = v72[0];
    v27 = *(v57 + 16);
    v28 = *(v72[0] + 16);
    v29 = 32;
    while (1)
    {
      v30 = *(*(*(v25 + v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v72[0] = v26;
      v31 = *(v26 + 24);
      if (v28 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v28 + 1, 1);
        v25 = v57;
        v26 = v72[0];
      }

      *(v26 + 16) = v28 + 1;
      *(v26 + 8 * v28 + 32) = v30;
      if (!v27)
      {
        break;
      }

      --v27;
      v29 += 8;
      ++v28;
      if (!--v24)
      {

        v7 = v56;
        v22 = v69;
        a6 = v55;
        a5 = v54;
        a3 = v53;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v26, v7[2]);
  v33 = v32;
  if (v32)
  {
    LODWORD(v57) = v32;
    v34 = v59;
    TextEffectsAnimationController.state(for:time:)(v59, v72, *(a6 + 56));
    v7[3] = (*(v58 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v12);
    v7[4] = v35;

    v36 = v62;
    Text.Effect.BaseContext.content<A>(for:key:)(v12, v34, v22, a3, v60, a5, a6, v12, v62);
    v53 = v73;
    v54 = v74;
    v58 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v73);
    v59 = v37;
    v52[1] = v75;
    v55 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v75);
    v56 = v38;
    v60 = *(*v7 + 160);
    v39 = v60;
    swift_beginAccess();
    v40 = v7 + v39;
    v41 = v61;
    v42 = AssociatedTypeWitness;
    (*(v70 + 16))(v61, v40, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = *(AssociatedConformanceWitness + 8);

    v54 = v44(v42, AssociatedConformanceWitness);
    v46 = v45;
    (*(v70 + 8))(v41, v42);
    v47 = v46 & 1;
    v48 = v67;
    (*(v36 + 136))(v67, v58, v59, v55, v56, v54, v47, v12, v36);

    (*(v64 + 8))(v48, v65);
    v49 = v60;
    swift_beginAccess();
    (*(v70 + 40))(v7 + v49, v66, v42);
    swift_endAccess();
    swift_beginAccess();
    if (*(v7[5] + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v7[5];
      v7[5] = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>();
      _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      v7[5] = v71;
    }

    swift_endAccess();

    outlined destroy of Text.Effect.State(v72);
    v7[2] = v26;
    v33 = v57;
  }

  else
  {
  }

  return v33 & 1;
}

uint64_t TextEffectImplementation.AnimationInfo.clearFrameCache()()
{
  swift_beginAccess();

  Text.Effect.AttributeTracker.Tracker.commitUpdates()();
  swift_endAccess();

  *(v0 + *(*v0 + 176)) = 0;

  swift_beginAccess();
  type metadata accessor for TextEffectImplementation.ResolvedMap();
  TextEffectImplementation.ResolvedMap.reset()();
  return swift_endAccess();
}

uint64_t TextEffectImplementation.AnimationInfo.restart()()
{
  v1 = *(v0 + *(*v0 + 168));
  swift_beginAccess();
  *(v1 + 48) = 1;
  *(v0 + *(*v0 + 176)) = 0;

  swift_beginAccess();
  type metadata accessor for TextEffectImplementation.ResolvedMap();
  TextEffectImplementation.ResolvedMap.reset()();
  return swift_endAccess();
}

BOOL TextEffectImplementation.AnimationInfo.isSettled.getter()
{
  v1 = *(v0 + *(*v0 + 168));
  swift_beginAccess();
  return *(v1 + 32) == 0;
}

unint64_t TextEffectImplementation.AnimationInfo.layout(for:state:context:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v27 = a6;
  v8 = *v6;
  v9 = type metadata accessor for Text.Effect.DrawableContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - v11);
  v13 = *(v8 + 176);
  v14 = *(v6 + v13);
  if (v14)
  {
    type metadata accessor for Text.Effect.DrawableFragment();
    result = Text.Effect.DrawableFragment.fragmentIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v16 = result;
      if (result < *(v14 + 16))
      {
        v17 = *(type metadata accessor for Text.Effect.Layout.Fragment() - 8);
        return outlined init with copy of Text.Effect.Layout.Fragment(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16, v27, type metadata accessor for Text.Effect.Layout.Fragment);
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v18 = type metadata accessor for Text.Effect.DrawableFragment();
  Text.Effect.DrawableFragment.content.getter(v18, v12);
  v19 = TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)(v12, a1, v23, v24, v25, v26);
  (*(v10 + 8))(v12, v9);
  *(v6 + v13) = v19;

  result = Text.Effect.DrawableFragment.fragmentIndex.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = result;
  if (result >= *(v19 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v21 = *(type metadata accessor for Text.Effect.Layout.Fragment() - 8);
  outlined init with copy of Text.Effect.Layout.Fragment(v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20, v27, type metadata accessor for Text.Effect.Layout.Fragment);
}

uint64_t TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v47 = a3;
  v46 = a2;
  v51 = a1;
  v7 = *v6;
  v8 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v6;
  v10 = *(v7 + 128);
  v11 = *(v10 + 16);
  v12 = *(v7 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v40 - v13;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
  v15 = v14;
  v42 = v11;
  v16 = type metadata accessor for Text.Effect.DrawableContent();
  v17 = lazy protocol witness table accessor for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>();
  WitnessTable = swift_getWitnessTable();
  *&v65 = v15;
  *(&v65 + 1) = v16;
  v66 = v17;
  v67 = WitnessTable;
  v19 = type metadata accessor for Zip2Sequence();
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
  RandomAccessCollection<>.indices.getter();
  v64 = v65;
  v23 = v45;
  zip<A, B>(_:_:)();
  v58 = v23;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v53 = v12;
  v54 = v10;
  v55 = partial apply for closure #1 in TextEffectImplementation.AnimationInfo.performLayout(for:state:context:);
  v56 = &v57;
  v24 = type metadata accessor for Text.Effect.Layout.Fragment();
  v25 = swift_getWitnessTable();
  v27 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Text.Effect.FragmentIdentifier, @guaranteed Text.Effect.DrawableFragment<A>) -> (@out Text.Effect.Layout.Fragment), v52, v19, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  (*(v20 + 8))(v22, v19);
  *&v64 = v27;
  if (*(v10 + 48))(v12, v10) != 3 && (static TextAlignment.== infix(_:_:)())
  {
    v28 = *(*v23 + 160);
    swift_beginAccess();
    v29 = v43;
    v30 = v23 + v28;
    v31 = v41;
    v32 = AssociatedTypeWitness;
    (*(v43 + 16))(v41, v30, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = (*(AssociatedConformanceWitness + 24))(v32, AssociatedConformanceWitness);
    (*(v29 + 8))(v31, v32);
    if (v34)
    {
      v35 = v51;
      v36 = *(v34 + 16);
      if (!v36)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = v51;
      v37 = v40;
      outlined init with copy of Text.Effect.Layout.Fragment(v51, v40, type metadata accessor for Text.Effect.BaseContent);
      v34 = specialized Text.Effect.ChunkCollection.init(content:)(v37);
      v36 = *(v34 + 16);
      if (!v36)
      {
LABEL_9:

        return v64;
      }
    }

    v38 = (v34 + 48);
    do
    {
      specialized TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(&v64, *(v38 - 2), *v38, v35, v12, v10);
      v38 += 4;
      --v36;
    }

    while (v36);
    goto LABEL_9;
  }

  return v64;
}

uint64_t TextEffectImplementation.AnimationInfo.drawable(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(v5 + 40);
  if (*(v12 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();

      return v15;
    }
  }

  v16 = swift_endAccess();
  v19 = 0;
  MEMORY[0x1EEE9AC00](v16);
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = v6;
  v18[7] = a1;
  v18[8] = &v19;
  result = TextEffectsAnimationController.evaluateWithTraitCollection(_:)(partial apply for closure #1 in TextEffectImplementation.AnimationInfo.drawable(_:context:), v18);
  v15 = v19;
  if (v19)
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    specialized Dictionary.subscript.setter(v15, a1);
    swift_endAccess();

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in TextEffectImplementation.AnimationInfo.drawable(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, char **a7)
{
  v28 = a7;
  v27[1] = a4;
  v10 = *a5;
  v27[2] = *(*a5 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v27 - v13;
  v15 = &a5[*(v10 + 192)];
  v16 = *v15;
  v17 = v15[1];

  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v16, v17, a6, a3, v29);

  v18 = *(a5 + 3);
  v19 = *(a5 + 4);
  v20 = *(*a5 + 160);
  swift_beginAccess();
  (*(v12 + 16))(v14, &a5[v20], AssociatedTypeWitness);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
    v23 = Strong;
  }

  else
  {

    v22 = 1.0;
  }

  memset(v30, 0, sizeof(v30));
  v31 = 1;
  v32 = v22;
  v24 = Text.Effect.Configuration.drawable(for:timing:quantization:)(v29, v14, v30, v18, v19);

  v25 = type metadata accessor for Text.Effect.DrawableFragment();
  (*(*(v25 - 8) + 8))(v29, v25);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  *v28 = v24;
}

uint64_t TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, AssociatedConformanceWitness);
  v11 = v10;
  v13 = v12;

  v14 = Text.Effect.AttributeTracker.needsUpdate(for:state:interval:consideringRestart:)(a1, a2, v9, v11, v13 & 1, a3);

  return v14 & 1;
}

uint64_t closure #1 in TextEffectImplementation.AnimationInfo.performLayout(for:state:context:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, double a8@<X7>, uint64_t a9@<X8>)
{
  v103 = a7;
  v104 = a8;
  *&v102 = a6;
  *&v101 = a5;
  v90 = a9;
  v13 = *(*(*a3 + 128) + 16);
  v14 = *(*a3 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = &v87 - v16;
  v18 = type metadata accessor for Text.Effect.DrawableFragment();
  v97 = Text.Effect.DrawableFragment.fragmentIndex.getter();
  v89 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(v97, a4, 0);
  if ((v89 & 1) == 0)
  {
LABEL_35:
    type metadata accessor for Text.Effect.ConcreteLayoutState();
    (*(v13 + 128))(v14, v13);
    v17 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v17);
    v47 = *(a2 + 3);
    v48 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    v27 = v90;
    (*(*(v49 - 8) + 16))(v90, v47 + v48, v49);
    v26 = *(v47 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v25 = *(v47 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 8);
    v24 = *(v47 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v23 = *(v47 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 24);
LABEL_80:
    v84 = v89;
    result = type metadata accessor for Text.Effect.Layout.Fragment();
    v85 = (v27 + *(result + 20));
    *v85 = v26;
    v85[1] = v25;
    v85[2] = v24;
    v85[3] = v23;
    v86 = v27 + *(result + 24);
    *v86 = v17;
    *(v86 + 8) = 0;
    *(v86 + 16) = (v84 & 1) == 0;
    return result;
  }

  v19 = TextEffectImplementation.AnimationInfo.drawable(_:context:)(a1, v101, v102, *&v103, *&v104);
  Text.Effect.DrawableFragment.lineBreakingFragment.getter(v18, v107);
  v98 = v18;
  result = Text.Effect.DrawableFragment.range.getter();
  if (__OFSUB__(v21, result))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v95 = a3;
  v96 = a2;
  if (v21 == result)
  {

    v22 = MEMORY[0x1E69E7CC0];
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v17 = MEMORY[0x1E69E7CC0];
    v27 = v90;
    if (*(a4 + 40))
    {
LABEL_6:
      v28 = v98;
      *&v29 = COERCE_DOUBLE(specialized Text.Effect.DrawableFragment.visualOrder.getter());
      v103 = v30;
      v104 = *&v29;
      v31 = *(v29 + 16);
      if (v31)
      {
        *&v102 = *(a2 + 6);
        v32 = *&v104 + 32;
        a2 = v22 + 32;

        v33 = 0;
        v34 = 0;
        v35 = 0.0;
        while (1)
        {
          if (v34 >= *(*&v104 + 16))
          {
            goto LABEL_82;
          }

          v36 = v32 + 24 * v34;
          v37 = *v36;
          v38 = *(v36 + 8);
          v39 = *(v36 + 16);
          if (v39)
          {
            if (v39 != 1)
            {
              v14 = 1;
              goto LABEL_25;
            }

            v40 = v38 - 1;
            if (__OFSUB__(v38, 1))
            {
              goto LABEL_90;
            }

            v41 = __OFSUB__(v40, v33);
            v42 = v40 - v33;
            if (v41)
            {
              goto LABEL_92;
            }

            v43 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_94;
            }

            v41 = __OFSUB__(v38, v37);
            v44 = v38 - v37;
            if (v41)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v42 = v37 + v33;
            if (__OFADD__(v37, v33))
            {
              goto LABEL_89;
            }

            v43 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_91;
            }

            v41 = __OFSUB__(v38, v37);
            v44 = v38 - v37;
            if (v41)
            {
              goto LABEL_93;
            }
          }

          v14 = v43 >= v44;
          if (v43 < v44)
          {
            v33 = v43;
          }

          else
          {
            v33 = 0;
          }

          v37 = v42;
LABEL_25:
          v41 = __OFADD__(*&v103, v37);
          v45 = *&v103 + v37;
          if (v41)
          {
            goto LABEL_83;
          }

          v13 = v45 - v102;
          if (__OFSUB__(v45, v102))
          {
            goto LABEL_84;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
            v17 = result;
            if ((v13 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v13 >= *(v17 + 2))
          {
            goto LABEL_85;
          }

          v46 = &v17[128 * v13];
          *(v46 + 17) = v35;
          *(v46 + 18) = 0;
          if (v13 >= *(v22 + 2))
          {
            goto LABEL_86;
          }

          v34 += v14;
          v35 = v35 + *&a2[8 * v13];
          if (v34 >= v31)
          {
            (*(*(v98 - 8) + 8))(v107);
            v27 = v90;
            a2 = v96;
            goto LABEL_79;
          }
        }
      }

      v80 = *(*(v28 - 8) + 8);

      v80(v107, v28);
LABEL_79:

      v81 = *(a2 + 3);
      v82 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
      (*(*(v83 - 8) + 16))(v27, v81 + v82, v83);

      goto LABEL_80;
    }

LABEL_5:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(v105, v97);
    swift_endAccess();

    goto LABEL_6;
  }

  v50 = result;
  if (v21 >= result)
  {
    v88 = v19;
    v94 = *(*a3 + 168);
    if (result < v21)
    {
      v51 = *(v88 + 16);
      v91 = v88 + 40;
      v22 = MEMORY[0x1E69E7CC0];
      v17 = MEMORY[0x1E69E7CC0];
      v103 = 0.0;
      v104 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v92 = v21;
      v93 = v51;
      while (1)
      {
        Text.Effect.DrawableFragment.typographicBounds(for:)(v50, &v108);
        Text.Effect.DrawableFragment.typographicBounds(for:)(v50, &v110);
        v53 = *&v109[8];
        v52 = *v109;
        v54 = *&v109[24];
        v55 = *&v109[16];
        v56 = *(v95 + v94);
        LOBYTE(v105[0]) = 1;
        v57 = *(a4 + 48);
        v106[3] = *(a4 + 32);
        v106[4] = v57;
        v58 = *(a4 + 80);
        v106[5] = *(a4 + 64);
        v106[6] = v58;
        v59 = *(a4 + 16);
        v106[1] = *a4;
        v106[2] = v59;
        v106[13] = v108;
        v106[14] = *v109;
        v106[15] = *&v109[16];
        *&v106[0] = v50;
        *(&v106[0] + 1) = v97;
        v106[7] = *&v109[8];
        *&v106[8] = *&v109[24];
        *(&v106[8] + 8) = *v109;
        *(&v106[9] + 8) = *&v109[16];
        *(&v106[10] + 1) = *v109;
        v106[11] = v112;
        *&v106[12] = v113;
        *(&v106[12] + 1) = v111;
        *&v106[16] = v56;
        *(&v106[16] + 1) = MEMORY[0x1E69E7CC0];
        memset(&v106[17], 0, 104);
        BYTE8(v106[23]) = 1;

        if (v51)
        {
          outlined init with copy of Text.Effect.State(a4, v105);
          v60 = v91;
          v61 = v51;
          do
          {
            v62 = *(v60 - 8);

            v62(v50, v106);

            v60 += 16;
            --v61;
          }

          while (v61);
          v63 = *&v106[0];
          v55 = *(&v106[7] + 1);
          v53 = *&v106[7];
          v64 = *(&v106[8] + 1);
          v54 = *&v106[8];
          v65 = *&v106[0] == v50;
          if (__OFSUB__(*&v106[0], v50))
          {
            goto LABEL_87;
          }
        }

        else
        {
          outlined init with copy of Text.Effect.State(a4, v105);
          v64 = v52;
          v63 = v50;
          v65 = 1;
        }

        if (v65)
        {
          v66 = v53;
        }

        else
        {
          v66 = 0.0;
        }

        if (v65)
        {
          v67 = v55;
        }

        else
        {
          v67 = 0.0;
        }

        if (v65)
        {
          v68 = v54;
        }

        else
        {
          v68 = 0.0;
        }

        if (v65)
        {
          v69 = v64;
        }

        else
        {
          v69 = 0.0;
        }

        v70 = v103;
        if (v103 <= v66)
        {
          v70 = v66;
        }

        v71 = v104;
        if (v104 <= v67)
        {
          v71 = v67;
        }

        v103 = v70;
        v104 = v71;
        if (v24 <= v68)
        {
          v24 = v68;
        }

        v101 = v106[10];
        v102 = v106[9];
        v99 = v106[12];
        v100 = v106[11];
        v72 = *(&v106[16] + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v74 = *(v17 + 2);
        v73 = *(v17 + 3);
        if (v74 >= v73 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v17);
        }

        *(v17 + 2) = v74 + 1;
        v75 = &v17[128 * v74];
        *(v75 + 4) = v63;
        *(v75 + 5) = v53;
        *(v75 + 6) = v55;
        *(v75 + 7) = v54;
        *(v75 + 8) = v64;
        v76 = v102;
        *(v75 + 88) = v101;
        *(v75 + 72) = v76;
        v77 = v100;
        *(v75 + 120) = v99;
        *(v75 + 104) = v77;
        *(v75 + 17) = 0;
        *(v75 + 18) = 0;
        *(v75 + 19) = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        a2 = v96;
        v51 = v93;
        v79 = *(v22 + 2);
        v78 = *(v22 + 3);
        if (v79 >= v78 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v22);
        }

        ++v50;
        *(v22 + 2) = v79 + 1;
        *&v22[8 * v79 + 32] = v69 - v52;
        memcpy(v105, v106, 0x179uLL);
        result = outlined destroy of Text.Effect.TransformContext(v105);
        if (__OFSUB__(v92, v50))
        {
          goto LABEL_88;
        }

        v23 = v23 + v69;
        if (v92 == v50)
        {
          break;
        }

        if (v50 >= v92)
        {
          goto LABEL_81;
        }
      }

      v27 = v90;
      v26 = v103;
      v25 = v104;
      if (*(a4 + 40))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
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
LABEL_90:
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
    goto LABEL_96;
  }

LABEL_97:
  __break(1u);
  return result;
}

BOOL closure #1 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(unint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v32 = a4;
  v31[1] = a3;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - v12;
  v14 = type metadata accessor for Text.Layout.Line();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (v18 == a2)
  {
    return 1;
  }

  v31[0] = *(a6 + 16);
  type metadata accessor for Text.Effect.DrawableContent();
  v20 = Text.Effect.DrawableContent.subscript.getter(v18, v34);
  v21 = v35;
  v36 = v35;
  v22 = *(v35 + 16);
  (*(v15 + 16))(v17, v35 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v14, v20);

  v23 = Text.Layout.Line.endIndex.getter();
  (*(v15 + 8))(v17, v14);
  if (v22)
  {
    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  if (v23 == *(v21 + 24))
  {
    v25 = v24;
  }

  else
  {
    v25 = v22 == 0;
  }

  (*(v11 + 16))(v13, v21 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v10);
  v26 = specialized RangeSet.lowerBound.getter();
  v28 = v27;
  outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v36);
  v29 = type metadata accessor for Text.Effect.DrawableFragment();
  (*(*(v29 - 8) + 8))(v34, v29);
  (*(v11 + 8))(v13, v10);
  v30 = v25 | 4;
  if (v26)
  {
    v30 = v25;
  }

  if (v28)
  {
    v30 = v25;
  }

  return (v32 & ~v30) == 0;
}

uint64_t closure #2 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v18 = a4;
  v7 = type metadata accessor for Text.Effect.Layout.Fragment();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = *a2;
  type metadata accessor for Text.Effect.DrawableContent();
  Text.Effect.DrawableContent.subscript.getter(v12, v19);
  v13 = type metadata accessor for Text.Effect.DrawableFragment();
  Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v13, v20);
  v14 = Text.Effect.DrawableFragment.width.getter();
  v15 = *(*(v13 - 8) + 8);
  result = v15(v20, v13);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(*a3 + 16))
  {
    outlined init with copy of Text.Effect.Layout.Fragment(*a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v10, type metadata accessor for Text.Effect.Layout.Fragment);
    v15(v19, v13);
    v17 = *&v10[*(v7 + 20) + 24];
    result = outlined destroy of Text.Effect.Layout.Fragment(v10, type metadata accessor for Text.Effect.Layout.Fragment);
    *v18 = v11 + v14 - v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v289 = a5;
  v282 = a4;
  v280 = a3;
  v264 = a1;
  v7 = *v5;
  v281 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v279 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v278 = &v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v10 = *(v9 - 8);
  v284 = v9;
  v285 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v291 = &v247 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v283.f64[0] = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](*&v283.f64[0]);
  *&v292 = &v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for Text.Layout.Run();
  v258 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v274 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v290 = type metadata accessor for Text.Layout.Line();
  v287.f64[0] = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v247 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v273 = &v247 - v16;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v275 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v260 = &v247 - v18;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v268 = v19;
  v259 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v269 = &v247 - v20;
  v266 = type metadata accessor for Text.Effect.Layout.Fragment();
  MEMORY[0x1EEE9AC00](v266);
  v267 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v247 - v25;
  v276 = v5;
  v27 = *(v7 + 120);
  v28 = *(v7 + 128);
  v29 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
  v270 = *(v29 - 8);
  v271 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v247 - v30;
  v261 = *(v28 + 16);
  v286 = type metadata accessor for Text.Effect.DrawableFragment();
  v265 = a2;
  v32 = Text.Effect.DrawableFragment.fragmentIndex.getter();
  v262 = v24;
  v263 = v23;
  v35 = *(v24 + 16);
  v34 = v24 + 16;
  v33 = v35;
  v35(v26, v280, v23);
  TextEffectImplementation.ResolvedMap.Key.init(fragment:ranges:)(v32, v26, v31);
  v36 = *(*v276 + 184);
  v37 = v276;
  swift_beginAccess();
  v38 = TextEffectImplementation.ResolvedMap.subscript.getter(v31, *(v37 + v36));
  if (v38)
  {
    v39 = v38;
    swift_endAccess();
    Text.Effect.DrawingContext.Storage.append(_:)(v39);

    return (*(v270 + 8))(v31, v271);
  }

  v249 = v32;
  v250 = v33;
  v251 = v34;
  v252 = v26;
  v253 = v36;
  v254 = v28;
  v257 = v27;
  v255 = v31;
  swift_endAccess();
  v41 = *v289;
  v42 = *(*v289 + 16);
  v44 = v42[4];
  v43 = v42[5];
  v45 = v42[6];
  v46 = v42[7];

  v47 = v267;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(v282, v44, v43, v45, v46, v267);

  v256 = v41;
  v48 = *(v41 + 16);
  v49 = v48[3];
  v51 = v48[4];
  v50 = v48[5];
  v53 = v48[6];
  v52 = v48[7];
  v54 = v48[8];
  v55 = v48[9];
  type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
  v56 = swift_allocObject();
  v56[3] = v49;
  v282 = v51;
  v56[4] = v51;
  v56[5] = v50;
  v56[6] = v53;
  v56[7] = v52;
  v56[8] = v54;
  v56[9] = v55;
  *&v289 = v55;
  v56[2] = MEMORY[0x1E69E7CC0];
  v57 = type metadata accessor for Text.Effect.DrawingContext.Storage();
  v58 = swift_allocObject();
  *(v58 + 32) = 0;
  *(v58 + 40) = 0;
  *(v58 + 48) = 0x3FF0000000000000;
  *(v58 + 56) = 0;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0x3FF0000000000000;
  *(v58 + 80) = 0;
  v277 = (v58 + 80);
  *(v58 + 88) = 0;
  *(v58 + 96) = 1;
  *(v58 + 104) = 0u;
  *(v58 + 120) = 0u;
  *(v58 + 136) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  v247 = _Q1;
  *(v58 + 152) = _Q1;
  *(v58 + 168) = 0x3FF0000000000000;
  *(v58 + 176) = 0;
  *(v58 + 184) = 0u;
  *(v58 + 200) = 0u;
  *(v58 + 216) = 0;
  *(v58 + 16) = v56;
  *(v58 + 24) = 0x3FF0000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v65 = Strong;
    v66 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
  }

  else
  {

    v66 = 1.0;
  }

  v68 = v278;
  v67 = v279;
  v69 = v288;
  v282 = v58;
  v327[0] = v58;
  memset(&v327[1], 0, 24);
  v328 = 1;
  v329 = v66;
  v70 = v47 + *(v266 + 24);
  v71 = *v70;
  v72 = *(v70 + 8);
  LODWORD(v70) = *(v70 + 16);
  v266 = v71;
  if (v70 == 1)
  {
    v73 = *(*(v256 + 16) + 48);
    v248 = v72;
    outlined copy of Text.Effect.Layout.Fragment.Storage(v71, v72, 1);

    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v264, v71, v249, v73, &v319);

    v71 = v320;
    *&v295 = v320;
    v74 = v252;
    v75 = v263;
    v250(v252, v320 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v263);
    _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);

    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v262 + 8))(v74, v75);
    v77 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
    *&v289 = v71;
    if ((v76 & 1) == 0)
    {
      goto LABEL_87;
    }

    type metadata accessor for _ContiguousArrayStorage<Range<Int>>();
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_195CC8D00;
    v79 = *(v71 + 16);
    v278 = v78;
    *(v78 + 32) = v79;
    outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v295);
    v80 = 1;
    v81 = v290;
LABEL_90:
    name = v77[43].name;
    v280 = *(*&v287.f64[0] + 16);
    v281 = name;
    *&v287.f64[0] += 16;
    v279 = (*&v287.f64[0] - 8);
    v183 = (v278 + 40);
    v184 = v292;
    v185 = v280;
    do
    {
      v186 = *(v183 - 1);
      v187 = *v183;
      v185(v69, v289 + v281, v81);
      type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
      v189 = v81;
      v190 = (v184 + *(v188 + 48));
      v191 = v184;
      v192 = *(v188 + 64);
      v185(v191, v69, v189);
      *v190 = v186;
      v190[1] = v187;
      v193 = 0uLL;
      v194 = v282;
      v195 = *(v282 + 96);
      if ((v195 & 1) == 0)
      {
        v193 = *v277;
      }

      v196 = v292;
      v197 = v292 + v192;
      *v197 = v193;
      *(v197 + 16) = v195;
      swift_storeEnumTagMultiPayload();
      v198 = *(v194 + 16);
      v199 = v291;
      outlined init with copy of Text.Effect.Layout.Fragment(v196, v291, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v200 = v284;
      *(v199 + *(v284 + 20)) = *(v194 + 72);
      v201 = (v199 + *(v200 + 24));
      v202 = *(v194 + 40);
      *v201 = *(v194 + 24);
      v201[1] = v202;
      v201[2] = *(v194 + 56);
      swift_beginAccess();
      v203 = *(v198 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v198 + 16) = v203;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v203[2] + 1, 1, v203);
        *(v198 + 16) = v203;
      }

      v69 = v288;
      v205 = v285;
      v206 = v286;
      v208 = v203[2];
      v207 = v203[3];
      if (v208 >= v207 >> 1)
      {
        v209 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v207 > 1, v208 + 1, 1, v203);
        v205 = v285;
        v203 = v209;
      }

      v183 += 2;
      v203[2] = v208 + 1;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v291, v203 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v208);
      *(v198 + 16) = v203;
      swift_endAccess();
      v184 = v292;
      outlined destroy of Text.Effect.Layout.Fragment(v292, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v81 = v290;
      (*v279)(v69, v290);

      --v80;
    }

    while (v80);

    (*(*(v206 - 8) + 8))(&v319, v206);
    goto LABEL_99;
  }

  v82 = *&v72;
  v324 = 0uLL;
  v325 = 0;
  v326 = MEMORY[0x1E69E7CC0];
  v277 = *(v71 + 16);
  if (!v277)
  {

    v214 = v282;
    goto LABEL_102;
  }

  v274 = v57;
  v275 = v71 + 32;
  v248 = v72;
  outlined copy of Text.Effect.Layout.Fragment.Storage(v71, v72, 0);

  v83 = 0;
  v84 = 0;
  v69 = 0;
  LODWORD(v285) = 0;
  v288 = 0;
  *&v289 = 0;
  *&v290 = 0;
  v85 = 0;
  while (1)
  {
    v86 = (v275 + (v85 << 7));
    v87 = *v86;
    v88 = v86[1];
    v89 = v86[2];
    v321[3] = v86[3];
    v321[2] = v89;
    v321[1] = v88;
    v321[0] = v87;
    v90 = v86[4];
    v91 = v86[5];
    v92 = v86[6];
    v321[7] = v86[7];
    v321[6] = v92;
    v321[5] = v91;
    v321[4] = v90;
    v319 = v86[7];
    v90.f64[0] = v92.f64[1] + v82;
    v283 = v90;
    memmove(v322, v86, 0x68uLL);
    v322[13] = *&v283.f64[0];
    v93.f64[1] = v319.f64[1];
    v323 = v319;
    if (v85 == v277)
    {
      goto LABEL_122;
    }

    v94 = *&v323.f64[1];
    *&v292 = *(*&v323.f64[1] + 16);
    if (v292)
    {
      break;
    }

    outlined init with copy of Text.Effect.DisplayInfo(v321, &v319);
    outlined destroy of Text.Effect.DisplayInfo(v322);
LABEL_84:
    ++v85;
    v174 = *(v71 + 16);
    if (v85 == v174)
    {
      v72 = v248;
      outlined consume of Text.Effect.Layout.Fragment.Storage(v71, v248, 0);
      v214 = v327[0];
LABEL_102:
      Text.Effect.StopCollector.flushSegment()();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v292 = *(v214 + 200);
        v290 = *(v214 + 184);
        v291 = *(v214 + 216);
        v212 = v270;
        v211 = v271;
        v215 = v265;
        v216 = v267;
      }

      else
      {
        v217 = swift_allocObject();
        *(v217 + 104) = 0u;
        *(v217 + 120) = 0u;
        *(v217 + 136) = 0u;
        *(v217 + 152) = v247;
        *(v217 + 168) = 0x3FF0000000000000;
        *(v217 + 176) = 0;
        *(v217 + 16) = *(v214 + 16);
        v218 = *(v214 + 40);
        v219 = *(v214 + 56);
        *(v217 + 24) = *(v214 + 24);
        *(v217 + 40) = v218;
        *(v217 + 56) = v219;
        *(v217 + 72) = *(v214 + 72);
        v220 = *(v214 + 200);
        v221 = *(v214 + 216);
        v290 = *(v214 + 184);
        v223 = *(&v290 + 1);
        v222 = v290;
        *(v217 + 184) = v290;
        v224 = v220;
        v225 = v72;
        v226 = *(&v220 + 1);
        v292 = v220;
        *(v217 + 200) = v220;
        *(v217 + 216) = v221;
        v227 = *(v214 + 96);
        *(v217 + 80) = *(v214 + 80);
        *(v217 + 96) = v227;

        v228 = v222;
        v229 = v226;
        v72 = v225;
        v216 = v267;
        v291 = v221;
        outlined copy of Text.Effect.StopCollector?(v228, v223, v224, v229);

        v327[0] = v217;
        v214 = v217;
        v212 = v270;
        v211 = v271;
        v215 = v265;
      }

      v230 = v325;
      *(v214 + 184) = v324;
      *(v214 + 200) = v230;
      *(v214 + 208) = v326;
      v231 = v266;
      closure #2 in TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(v327, v266, v216, v280, v215, v82);
      outlined consume of Text.Effect.Layout.Fragment.Storage(v231, v72, 0);
      v213 = v327[0];
      v232 = *(v327[0] + 184);
      v233 = *(v327[0] + 192);
      v234 = *(v327[0] + 200);
      v235 = *(v327[0] + 208);
      *(v327[0] + 184) = v290;
      *(v213 + 200) = v292;
      *(v213 + 216) = v291;
      outlined consume of Text.Effect.StopCollector?(v232, v233, v234, v235);
      v210 = v216;
LABEL_106:
      v236 = *(v213 + 16);
      swift_beginAccess();
      v237 = *(v236 + 16);
      *(v236 + 16) = MEMORY[0x1E69E7CC0];
      swift_beginAccess();
      type metadata accessor for TextEffectImplementation.ResolvedMap();

      v239 = v255;
      specialized TextEffectImplementation.ResolvedMap.subscript.setter(v238, v255);
      swift_endAccess();
      Text.Effect.DrawingContext.Storage.append(_:)(v237);

      outlined destroy of Text.Effect.Layout.Fragment(v210, type metadata accessor for Text.Effect.Layout.Fragment);
      (*(v212 + 8))(v239, v211);
    }

    if (v85 >= v174)
    {
      __break(1u);
LABEL_87:
      RangeSet.init()();
      v176 = *(v71 + 16);
      v175 = *(v71 + 24);
      v81 = v290;
      v177 = v274;
      v178 = v273;
      if (v176 != v175)
      {
        if (v175 < v176)
        {
          goto LABEL_124;
        }

        if (v176 < v175)
        {
          v240 = *(*&v287.f64[0] + 16);
          v278 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
          v279 = v240;
          v281 = *&v287.f64[0] + 16;
          v265 = (*&v287.f64[0] + 8);
          v241 = (v258 + 8);
          while (1)
          {
            v242 = v176 + 1;
            (v279)(v178, v289 + v278, v81);
            Text.Layout.Line.subscript.getter();
            (*v265)(v178, v81);
            v243 = Text.Layout.Run.characterRange.getter();
            v245 = v244;
            (*v241)(v177, v272);
            if (specialized RangeSet.overlaps(_:)(v243, v245))
            {
              if (v176 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_123;
              }

              *&v299[0] = v176;
              *(&v299[0] + 1) = v176 + 1;
              v246 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v246(&v305, 0);
            }

            v176 = v242;
            v81 = v290;
            v178 = v273;
            v177 = v274;
            if (v175 == v242)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_125;
      }

LABEL_88:
      v179 = v268;
      v180 = v269;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges();
      v181 = dispatch thunk of Sequence._copyToContiguousArray()();
      outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v295);
      (*(v259 + 8))(v180, v179);
      v278 = v181;
      v80 = *(v181 + 16);
      if (v80)
      {
        v77 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
        goto LABEL_90;
      }

      (*(*(v286 - 8) + 8))(&v319, v286);
LABEL_99:
      outlined consume of Text.Effect.Layout.Fragment.Storage(v266, v248, 1);
      v210 = v267;
      v212 = v270;
      v211 = v271;
      v213 = v282;
      goto LABEL_106;
    }
  }

  v282 = v85;
  v286 = v322[0];
  v93.f64[0] = v323.f64[0];
  v287 = v93;
  outlined init with copy of Text.Effect.DisplayInfo(v321, &v319);
  if (!*(v94 + 16))
  {
    goto LABEL_116;
  }

  v95 = 0;
  v291 = v94 + 32;
  v96.f64[0] = v283.f64[0];
  v96.f64[1] = v287.f64[0];
  v283 = v96;
  v284 = v94;
  while (1)
  {
    v97 = (v291 + 216 * v95);
    v98 = v97[1];
    v305 = *v97;
    v306 = v98;
    v99 = v97[2];
    v100 = v97[3];
    v101 = v97[5];
    v309 = v97[4];
    v310 = v101;
    v307 = v99;
    v308 = v100;
    v102 = v97[6];
    v103 = v97[7];
    v104 = v97[8];
    v314 = v97[9];
    v313 = v104;
    v312 = v103;
    v311 = v102;
    v105 = v97[10];
    v106 = v97[11];
    v107 = v97[12];
    v318 = *(v97 + 208);
    v317 = v107;
    v316 = v106;
    v315 = v105;
    memmove(&v319, v97, 0xD1uLL);
    if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(&v319) != 2)
    {
      destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(&v319);
      goto LABEL_31;
    }

    v108 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(&v319);
    v299[10] = v315;
    v299[11] = v316;
    v299[12] = v317;
    v300 = v318;
    v299[6] = v311;
    v299[7] = v312;
    v299[8] = v313;
    v299[9] = v314;
    v299[2] = v307;
    v299[3] = v308;
    v299[4] = v309;
    v299[5] = v310;
    v299[0] = v305;
    v299[1] = v306;
    v109 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v299);
    v111 = *(v108 + 64);
    v110 = *(v108 + 72);
    v112 = *(v108 + 88);
    v113 = *(v108 + 96);
    v114 = *(v108 + 128);
    v115 = *(v108 + 144);
    v301 = *(v108 + 112);
    v302 = v114;
    v303 = v115;
    v304 = *(v108 + 160);
    _VF = __OFSUB__(v286, v111);
    v116 = v286 - v111;
    if (_VF)
    {
      goto LABEL_117;
    }

    if ((v116 & 0x8000000000000000) != 0)
    {
      goto LABEL_118;
    }

    if (v116 >= *(v110 + 16))
    {
      goto LABEL_119;
    }

    v117 = v109;
    v287 = v113;
    outlined init with copy of Text.Effect.Layout.Fragment(v110 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + v67[9] * v116, v68, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined init with copy of Text.Effect.Layout.Fragment(v117, &v295, type metadata accessor for (Text.Effect.PathInterpolator, Text.Effect.DrawingState));
    v118 = Text.Layout.Cluster.stopKey.getter();
    if (v118 == 2)
    {
      break;
    }

    if (!v290 || ((v285 ^ v118) & 1) != 0)
    {
      v289 = *(v68 + *(v281 + 28));
      v84 = v118 & 1;
      Text.Effect.StopCollector.flushSegment()();
      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v324, *(&v324 + 1));
      *&v324 = v84;
      v69 = MEMORY[0x1E69E7CC0];
      *(&v324 + 1) = MEMORY[0x1E69E7CC0];
      v83 = MEMORY[0x1E69E7CD0];
      v325 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      if (!v69)
      {
        LODWORD(v285) = v84;
        outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v305);
        outlined destroy of Text.Effect.Layout.Fragment(v68, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
        *&v290 = 0;
        v288 = v84;
        *&v289 = v83;
        goto LABEL_31;
      }

      v289 = *(v68 + *(v281 + 28));
    }

    v294 = v83;

    v164 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v69;
    if ((v164 & 1) == 0)
    {
      v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1, v69);
    }

    *&v290 = v165;
    v167 = *(v165 + 2);
    v166 = *(v165 + 3);
    if (v167 >= v166 >> 1)
    {
      *&v290 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v290);
    }

    v168 = vaddq_f64(v283, v287);
    v298 = v304;
    v296 = v302;
    v297 = v303;
    v295 = v301;
    v169 = v290;
    *(v290 + 16) = v167 + 1;
    v170 = v169 + 96 * v167;
    *(v170 + 32) = v112;
    *(v170 + 40) = v168;
    v171 = v295;
    v172 = v296;
    v173 = v297;
    *(v170 + 104) = v298;
    *(v170 + 88) = v173;
    *(v170 + 72) = v172;
    *(v170 + 56) = v171;
    *(v170 + 112) = v289;
    specialized Set._Variant.insert(_:)(&v293, v286);
    outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v305);
    outlined destroy of Text.Effect.Layout.Fragment(v68, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v84, v69);
    v83 = v294;
    *&v324 = v84 & 1;
    *(&v324 + 1) = v169;
    v325 = v294;
    LODWORD(v285) = v84;
    v288 = v324;
    *&v289 = v294;
    v84 = v324;
    v69 = v169;
    v94 = v284;
LABEL_31:
    if (++v95 == v292)
    {
      outlined destroy of Text.Effect.DisplayInfo(v322);
      v71 = v266;
      v85 = v282;
      goto LABEL_84;
    }

    if (v95 >= *(v94 + 16))
    {
      goto LABEL_116;
    }
  }

  v119 = v290;
  if (!v290)
  {
LABEL_80:
    outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v305);
    outlined destroy of Text.Effect.Layout.Fragment(v68, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v288, v119);
    v83 = 0;
    v84 = 0;
    v69 = 0;
    LODWORD(v285) = 0;
    v288 = 0;
    *&v289 = 0;
    *&v290 = 0;
    v324 = 0uLL;
    v325 = 0;
    goto LABEL_31;
  }

  outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v288, v119);
  v120 = specialized Text.Effect.StopSegment.init(segment:)(v119);
  if (!v120)
  {

    goto LABEL_80;
  }

  v122 = v120;
  v123 = v121;
  v124 = v326;
  v285 = *(v326 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v285 + 1, 1, v124);
  }

  v126 = *(v124 + 2);
  v125 = *(v124 + 3);
  if (v126 >= v125 >> 1)
  {
    v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v124);
  }

  *(v124 + 2) = v126 + 1;
  v127 = &v124[16 * v126];
  *(v127 + 4) = v122;
  *(v127 + 5) = v123;

  v128 = 0;
  *&v326 = v124;
  v129 = v289;
  v130 = v289 + 56;
  v131 = 1 << *(v289 + 32);
  if (v131 < 64)
  {
    v132 = ~(-1 << v131);
  }

  else
  {
    v132 = -1;
  }

  v133 = v132 & *(v289 + 56);
  v134 = (v131 + 63) >> 6;
  while (v133)
  {
    v135 = v128;
LABEL_45:
    v136 = *(*(v129 + 48) + ((v135 << 9) | (8 * __clz(__rbit64(v133)))));
    v137 = *(&v326 + 1);
    v138 = swift_isUniquelyReferenced_nonNull_native();
    *&v295 = v137;
    v287.f64[0] = v136;
    v139 = specialized __RawDictionaryStorage.find<A>(_:)(*&v136);
    v141 = *(v137 + 16);
    v142 = (v140 & 1) == 0;
    _VF = __OFADD__(v141, v142);
    v143 = v141 + v142;
    if (_VF)
    {
      goto LABEL_120;
    }

    v144 = v140;
    if (*(v137 + 24) >= v143)
    {
      if (v138)
      {
        v145 = v137;
      }

      else
      {
        v273 = v139;
        type metadata accessor for _DictionaryStorage<Text.Effect.ClusterIndex, Int>();
        v150 = static _DictionaryStorage.copy(original:)();
        v145 = v150;
        if (*(v137 + 16))
        {
          v151 = (v150 + 64);
          v152 = v137 + 64;
          v153 = ((1 << *(v145 + 32)) + 63) >> 6;
          if (v145 != v137 || v151 >= v152 + 8 * v153)
          {
            memmove(v151, (v137 + 64), 8 * v153);
          }

          v154 = 0;
          *(v145 + 16) = *(v137 + 16);
          v155 = 1 << *(v137 + 32);
          if (v155 < 64)
          {
            v156 = ~(-1 << v155);
          }

          else
          {
            v156 = -1;
          }

          v157 = v156 & *(v137 + 64);
          for (i = (v155 + 63) >> 6; v157; *(*(v145 + 56) + 8 * v160) = v163)
          {
            v159 = __clz(__rbit64(v157));
            v157 &= v157 - 1;
            v160 = v159 | (v154 << 6);
LABEL_69:
            v163 = *(*(v137 + 56) + 8 * v160);
            *(*(v145 + 48) + 8 * v160) = *(*(v137 + 48) + 8 * v160);
          }

          v161 = v154;
          while (1)
          {
            v154 = v161 + 1;
            if (__OFADD__(v161, 1))
            {
              goto LABEL_126;
            }

            if (v154 >= i)
            {
              break;
            }

            v162 = *(v152 + 8 * v154);
            ++v161;
            if (v162)
            {
              v157 = (v162 - 1) & v162;
              v160 = __clz(__rbit64(v162)) | (v154 << 6);
              goto LABEL_69;
            }
          }
        }

        v139 = v273;
      }

      v94 = v284;
      v146 = v287.f64[0];
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, v138);
      v145 = v295;
      v146 = v287.f64[0];
      v139 = specialized __RawDictionaryStorage.find<A>(_:)(*&v287.f64[0]);
      if ((v144 & 1) != (v147 & 1))
      {
        goto LABEL_127;
      }

      v94 = v284;
    }

    v133 &= v133 - 1;
    if (v144)
    {
      *(*(v145 + 56) + 8 * v139) = v285;
    }

    else
    {
      *(v145 + 8 * (v139 >> 6) + 64) |= 1 << v139;
      *(*(v145 + 48) + 8 * v139) = v146;
      *(*(v145 + 56) + 8 * v139) = v285;
      v148 = *(v145 + 16);
      _VF = __OFADD__(v148, 1);
      v149 = v148 + 1;
      if (_VF)
      {
        goto LABEL_121;
      }

      *(v145 + 16) = v149;
    }

    *(&v326 + 1) = v145;
    v128 = v135;
    v129 = v289;
  }

  while (1)
  {
    v135 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      break;
    }

    if (v135 >= v134)
    {
      outlined destroy of Text.Effect.DisplayInfo.DrawOperation(&v305);
      v68 = v278;
      outlined destroy of Text.Effect.Layout.Fragment(v278, type metadata accessor for Text.Effect.PathInterpolator.Cluster);

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v288, v290);
      v83 = 0;
      v84 = 0;
      v69 = 0;
      LODWORD(v285) = 0;
      v288 = 0;
      *&v289 = 0;
      *&v290 = 0;
      v324 = 0uLL;
      v325 = 0;
      v67 = v279;
      goto LABEL_31;
    }

    v133 = *(v130 + 8 * v135);
    ++v128;
    if (v133)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #2 in TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v108 = a3;
  v105 = type metadata accessor for Text.Layout.Cluster();
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a2 + 16);
  if (!v107)
  {
    return;
  }

  v13 = v11;
  v106 = a2 + 32;
  v94 = a2;

  v14 = 0;
  v102 = v13 + 16;
  v103 = v13;
  v101 = v13 + 8;
  __asm { FMOV            V0.2D, #1.0 }

  v96 = _Q0;
  v97 = a4;
  v98 = a5;
  while (1)
  {
    v112 = v14;
    v20 = (v106 + (v14 << 7));
    v22 = v20[5];
    v21 = v20[6];
    v23 = v20[3];
    v117 = v20[4];
    v118 = v22;
    v24 = v20[7];
    v119 = v21;
    v120 = v24;
    v25 = v20[1];
    v114[0] = *v20;
    v114[1] = v25;
    v115 = v20[2];
    v116 = v23;
    v121[0] = v114[0];
    v121[1] = v25;
    v122 = *(v20 + 12);
    v121[4] = v117;
    v121[5] = v22;
    v121[2] = v115;
    v121[3] = v23;
    v124 = v20[7];
    v123 = *(&v21 + 1) + a6;
    outlined init with copy of Text.Effect.DisplayInfo(v114, v113);
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    if (static RangeSet.== infix(_:_:)())
    {
      goto LABEL_10;
    }

    v26 = *(a5 + 48);
    _VF = __OFSUB__(*&v121[0], v26);
    v27 = *&v121[0] - v26;
    if (_VF)
    {
      break;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v28 = *(*(a5 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    if (v27 >= *(v28 + 16))
    {
      goto LABEL_50;
    }

    v29 = v103;
    v30 = v104;
    v31 = v105;
    (*(v103 + 16))(v104, v28 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v27, v105);
    v32 = Text.Layout.Cluster.characterRange.getter();
    v34 = v33;
    (*(v29 + 8))(v30, v31);
    if ((specialized RangeSet.overlaps(_:)(v32, v34) & 1) == 0)
    {
      outlined destroy of Text.Effect.DisplayInfo(v121);
      goto LABEL_4;
    }

LABEL_10:
    v35 = *(a5 + 16);
    v125[0] = *a5;
    v125[1] = v35;
    v125[2] = *(a5 + 32);
    v126 = *(a5 + 48);
    v36 = *a1;
    v37 = *(*a1 + 104);
    v38 = *(*a1 + 112);
    v40 = *(*a1 + 120);
    v39 = *(*a1 + 128);
    v41 = *(*a1 + 136);
    v110 = *(*a1 + 152);
    v111 = v41;
    v42 = *(v36 + 168);
    v109 = *(v36 + 176);
    v43 = *(&v124 + 1);
    v44 = *(*(&v124 + 1) + 16);
    if (v44)
    {
      v45 = *(&v124 + 1) + 32;
      v46 = (*(&v124 + 1) + 32);
      while (1)
      {
        memmove(v113, v46, 0xD1uLL);
        if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(v113) == 2)
        {
          break;
        }

        v46 += 216;
        if (!--v44)
        {
          goto LABEL_32;
        }
      }

      destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v113);
      memmove(v113, v46, 0xD1uLL);
      if (_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(v113) != 2)
      {
        goto LABEL_51;
      }

      v47 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v113);
      v48 = v47 + 11;
      if (v47[11] != v37 || (v47[12] == v38 ? (_ZF = v47[13] == v40) : (_ZF = 0), !_ZF || (v50 = v47, (static Angle.== infix(_:_:)() & 1) == 0) || (v51 = vmovn_s64(vceqq_f64(*(v50 + 15), v111)), (v51.i32[0] & v51.i32[1] & 1) == 0) || v50[17] != v110.f64[0] || v50[18] != v110.f64[1] || v50[19] != v42 || *(v50 + 160) != v109))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v53 = swift_allocObject();
          *(v53 + 24) = 0x3FF0000000000000;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          *(v53 + 48) = 0x3FF0000000000000;
          *(v53 + 56) = 0;
          *(v53 + 64) = 0;
          *(v53 + 80) = 0;
          *(v53 + 88) = 0;
          *(v53 + 72) = 0x3FF0000000000000;
          *(v53 + 96) = 1;
          *(v53 + 104) = 0u;
          *(v53 + 120) = 0u;
          *(v53 + 136) = 0u;
          *(v53 + 152) = v96;
          *(v53 + 168) = 0x3FF0000000000000;
          *(v53 + 176) = 0;
          *(v53 + 184) = 0u;
          *(v53 + 200) = 0u;
          *(v53 + 216) = 0;
          *(v53 + 16) = *(v36 + 16);
          v54 = *(v36 + 40);
          v55 = *(v36 + 56);
          *(v53 + 24) = *(v36 + 24);
          *(v53 + 40) = v54;
          *(v53 + 56) = v55;
          *(v53 + 72) = *(v36 + 72);
          v56 = *(v36 + 192);
          v100.f64[0] = *(v36 + 184);
          v99.f64[0] = v56;
          v58 = *(v36 + 208);
          v95 = *(v36 + 200);
          v57 = v95;
          v59 = *(v36 + 216);
          *(v53 + 184) = v100.f64[0];
          *(v53 + 192) = v56;
          *(v53 + 200) = v57;
          *(v53 + 208) = v58;
          *(v53 + 216) = v59;
          v60 = *(v36 + 96);
          *(v53 + 80) = *(v36 + 80);
          *(v53 + 96) = v60;

          a5 = v98;
          outlined copy of Text.Effect.StopCollector?(*&v100.f64[0], *&v99.f64[0], v95, v58);

          *a1 = v53;
          v36 = v53;
        }

        *(v36 + 104) = *v48;
        v61 = v48[1];
        v62 = v48[2];
        v63 = v48[3];
        *(v36 + 161) = *(v48 + 57);
        *(v36 + 152) = v63;
        *(v36 + 136) = v62;
        *(v36 + 120) = v61;
      }

LABEL_32:
      v64 = *(v43 + 16);
      if (v64)
      {
        v65 = *&v121[0];
        v66 = v123;
        v67 = *&v124;
        do
        {
          v68 = *(v45 + 16);
          v127[0] = *v45;
          v127[1] = v68;
          v69 = *(v45 + 32);
          v70 = *(v45 + 48);
          v71 = *(v45 + 80);
          v127[4] = *(v45 + 64);
          v127[5] = v71;
          v127[2] = v69;
          v127[3] = v70;
          v72 = *(v45 + 96);
          v73 = *(v45 + 112);
          v74 = *(v45 + 144);
          v127[8] = *(v45 + 128);
          v127[9] = v74;
          v127[6] = v72;
          v127[7] = v73;
          v75 = *(v45 + 160);
          v76 = *(v45 + 176);
          v77 = *(v45 + 192);
          v128 = *(v45 + 208);
          v127[11] = v76;
          v127[12] = v77;
          v127[10] = v75;
          outlined init with copy of Text.Effect.DisplayInfo.DrawOperation(v127, v113);
          Text.Effect.DisplayInfo.DrawOperation.resolve(_:fragment:displacement:in:)(v65, v125, a1, v66, v67);
          outlined destroy of Text.Effect.DisplayInfo.DrawOperation(v127);
          v45 += 216;
          --v64;
        }

        while (v64);
      }
    }

    if (v37 != *(v36 + 104) || v38 != *(v36 + 112) || v40 != *(v36 + 120))
    {
      outlined destroy of Text.Effect.DisplayInfo(v121);
LABEL_44:
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v83 = *a1;
      if ((v82 & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v84 = swift_allocObject();
        *(v84 + 24) = 0x3FF0000000000000;
        *(v84 + 32) = 0;
        *(v84 + 40) = 0;
        *(v84 + 48) = 0x3FF0000000000000;
        *(v84 + 56) = 0;
        *(v84 + 64) = 0;
        *(v84 + 80) = 0;
        *(v84 + 88) = 0;
        *(v84 + 72) = 0x3FF0000000000000;
        *(v84 + 96) = 1;
        *(v84 + 104) = 0u;
        *(v84 + 120) = 0u;
        *(v84 + 136) = 0u;
        *(v84 + 152) = v96;
        *(v84 + 168) = 0x3FF0000000000000;
        *(v84 + 176) = 0;
        *(v84 + 184) = 0u;
        *(v84 + 200) = 0u;
        *(v84 + 216) = 0;
        *(v84 + 16) = *(v83 + 16);
        v85 = *(v83 + 40);
        v86 = *(v83 + 56);
        *(v84 + 24) = *(v83 + 24);
        *(v84 + 40) = v85;
        *(v84 + 56) = v86;
        *(v84 + 72) = *(v83 + 72);
        v87 = *(v83 + 184);
        v88 = *(v83 + 192);
        v89 = *(v83 + 200);
        v90 = *(v83 + 208);
        v91 = *(v83 + 216);
        *(v84 + 184) = v87;
        *(v84 + 192) = v88;
        *(v84 + 200) = v89;
        *(v84 + 208) = v90;
        *(v84 + 216) = v91;
        v92 = *(v83 + 96);
        *(v84 + 80) = *(v83 + 80);
        *(v84 + 96) = v92;

        v93 = v90;
        a5 = v98;
        outlined copy of Text.Effect.StopCollector?(v87, v88, v89, v93);

        *a1 = v84;
        v83 = v84;
      }

      *(v83 + 104) = v37;
      *(v83 + 112) = v38;
      *(v83 + 120) = v40;
      *(v83 + 128) = v39;
      v19 = v110;
      *(v83 + 136) = v111;
      *(v83 + 152) = v19;
      *(v83 + 168) = v42;
      *(v83 + 176) = v109;
      goto LABEL_4;
    }

    v78 = *(v36 + 152);
    v99 = *(v36 + 136);
    v100 = v78;
    v79 = *(v36 + 168);
    v80 = *(v36 + 176);
    v81 = static Angle.== infix(_:_:)();
    outlined destroy of Text.Effect.DisplayInfo(v121);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v111, v99), vceqq_f64(v110, v100)))) & 1) == 0 || v42 != v79 || (v81 & 1) == 0 || v109 != v80)
    {
      goto LABEL_44;
    }

LABEL_4:
    v14 = v112 + 1;
    if (v112 + 1 == v107)
    {

      return;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t TextEffectImplementation.AnimationInfo.__ivar_destroyer()
{

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
}

uint64_t TextEffectImplementation.AnimationInfo.deinit()
{

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t TextEffectImplementation.AnimationInfo.__deallocating_deinit()
{
  TextEffectImplementation.AnimationInfo.deinit();

  return swift_deallocClassInstance();
}

id @objc TextEffectImplementation.name.getter(void *a1)
{
  v1 = specialized TextEffectImplementation.name.getter(*((*MEMORY[0x1E69E7D40] & *a1) + 0x118), *((*MEMORY[0x1E69E7D40] & *a1) + 0x120));
  v2 = MEMORY[0x19A8BD5F0](v1);

  return v2;
}

uint64_t TextEffectImplementation.updateInfo(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v9 + 0x118);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - v12;
  type metadata accessor for TextEffectImplementation.AnimationInfo();
  if (swift_dynamicCastClass())
  {
    (*(v11 + 16))(v13, &v5[*(v9 + 296)], v10);
    v14 = *&v5[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];

    v15 = TextEffectImplementation.AnimationInfo.updateLayout(effect:identifier:context:)(v13, v14, a2, a3, a4, v18);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t TextEffectImplementation.applyKeyframe(_:to:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = a1;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x120);
  v8 = *(v7 + 16);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v31 - v11;
  v13 = *(v9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v13 + 16))(&v31 - v16, &v3[*((v6 & v5) + 0x128)], v9, v15);
  v33 = (*(v7 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v9, v7);
  (*(v13 + 8))(v17, v9);
  v18 = a2;
  v36[0] = a2;
  v36[1] = MEMORY[0x1E69E7CC0];
  v36[2] = MEMORY[0x1E69E7CC0];
  if (v32 && (type metadata accessor for TextEffectKeyframeBox(), (v19 = swift_dynamicCastClass()) != 0) && *(*(v19 + OBJC_IVAR____TtC20TextAnimationSupport21TextEffectKeyframeBox_entry) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*&v3[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id]), (v20 & 1) != 0) && (type metadata accessor for Text.Effect.ConcreteLayoutState(), (v21 = swift_dynamicCastClass()) != 0))
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 16))(v12, v21 + *(*v21 + 128), v35);
    v24 = v18;
    swift_unknownObjectRetain();

    Text.Effect.Configuration.updateContent(_:for:)(v36, v12, v33);

    (*(v23 + 8))(v12, v22);
    v25 = v36[0];
    v26 = Text.Effect.Content.resolveIfModified()();

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = *(v8 + 120);
    v28 = a2;
    v27(v9, v8);
    Text.Effect.Configuration.updateContent(_:for:)(v36, v12, v33);

    (*(v34 + 8))(v12, v35);
    v29 = v36[0];
    v26 = Text.Effect.Content.resolveIfModified()();
  }

  return v26;
}

id @objc TextEffectImplementation.applyKeyframe(_:to:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  v9 = TextEffectImplementation.applyKeyframe(_:to:)(a3, v7);
  swift_unknownObjectRelease();

  return v9;
}

uint64_t TextEffectImplementation.states.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x120);
  v3 = (*(*(v2 + 16) + 112))(v1, *(v2 + 16));
  if (!v3)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v3);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  swift_getWitnessTable();
  v11 = _ArrayProtocol.filter(_:)();
  MEMORY[0x1EEE9AC00](v11);
  v10[2] = v1;
  v10[3] = v2;
  v5 = type metadata accessor for Text.Effect.AnyLayoutState();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in TextEffectImplementation.states.getter, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

BOOL closure #1 in TextEffectImplementation.states.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v4 + 120))(a2, v4, v7);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return (a2 & 1) == 0;
}

uint64_t closure #2 in TextEffectImplementation.states.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  (*(v5 + 16))(v7, a1, AssociatedTypeWitness);
  result = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v7);
  *a2 = result;
  return result;
}

uint64_t TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(uint64_t a1, unint64_t a2, char **a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v122.n128_u64[0] = a5;
  v121.n128_u64[0] = a4;
  v124 = a3;
  v15 = *v9;
  v16 = *MEMORY[0x1E69E7D40];
  v17 = type metadata accessor for Text.Layout.Cluster();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v112 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Text.Effect.Layout.Fragment();
  MEMORY[0x1EEE9AC00](v103);
  v104 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a7;
  TextEffectsAnimationController.state(for:time:)(a1, v147, a8);
  v21 = *((v16 & v15) + 0x118);
  v22 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v23 = *(v9 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v24 = *((v16 & v15) + 0x120);
  v25 = specialized TextEffectImplementation.lineBreakingState.getter(v21, v24);
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v23, v25, a2, a6, &v153);

  v26 = *(v9 + v22);
  v27 = specialized TextEffectImplementation.defaultDrawingState.getter(v21, v24);
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v26, v27, a2, a6, &v156);

  if ((v148 & 0xFE) != 2)
  {
    v136 = v156;
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v39 = type metadata accessor for Text.Effect.DrawableFragment();
    v40 = *(v39 - 8);
    (*(v40 + 16))(&v128, &v156, v39);
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v136, &v153, v124);
    v41 = *(v40 + 8);
    v41(&v156, v39);
LABEL_7:
    v41(&v156, v39);
    v41(&v153, v39);
    return outlined destroy of Text.Effect.State(v147);
  }

  v28 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v149, v150, v151, v152, v147[6], 0, v121.n128_i64[0], v122.n128_i64[0], a6, v123);
  if ((TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v147, 1) & 1) == 0)
  {
    v136 = v156;
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v39 = type metadata accessor for Text.Effect.DrawableFragment();
    v42 = *(v39 - 8);
    (*(v42 + 16))(&v128, &v156, v39);
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v136, &v153, v124);
    v41 = *(v42 + 8);
    v41(&v156, v39);

    goto LABEL_7;
  }

  v29 = v28;
  v30 = v104;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(v147, v121.n128_i64[0], v122.n128_i64[0], a6, v123, v104);
  v31 = v30 + *(v103 + 24);
  v32 = *v31;
  v111 = *(v31 + 8);
  v33 = v124;
  if (*(v31 + 16) == 1)
  {
    v34 = *(v9 + v22);
    v35 = v32;

    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v34, v35, a2, a6, &v128);
    v136 = v128;
    v137 = v129;
    v138 = v130;
    v139 = v131;
    appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(&v136, &v153, v33);

    outlined destroy of Text.Effect.State(v147);
    v36 = type metadata accessor for Text.Effect.DrawableFragment();
    v37 = *(*(v36 - 8) + 8);
    v37(&v128, v36);
    outlined consume of Text.Effect.Layout.Fragment.Storage(v35, v111, 1);
    v37(&v153, v36);
    v37(&v156, v36);
    return outlined destroy of Text.Effect.Layout.Fragment(v104, type metadata accessor for Text.Effect.Layout.Fragment);
  }

  v102[1] = v29;
  v43 = v32;
  v102[0] = type metadata accessor for Text.Effect.DrawableFragment();
  v44 = specialized Text.Effect.DrawableFragment.visualOrder.getter();
  v109 = v45;
  v46 = v111;
  outlined copy of Text.Effect.Layout.Fragment.Storage(v43, v111, 0);
  v47 = *(v44 + 16);
  v110 = v44;

  if (!v47)
  {
LABEL_39:

    outlined consume of Text.Effect.Layout.Fragment.Storage(v43, v46, 0);
    v97 = v104;
    v98 = *(v104 + *(v103 + 20) + 24);
    v99 = v102[0];
    v100 = Text.Effect.DrawableFragment.width.getter();

    outlined destroy of Text.Effect.State(v147);
    v101 = *(*(v99 - 8) + 8);
    v101(&v153, v99);
    v101(&v156, v99);
    outlined destroy of Text.Effect.Layout.Fragment(v97, type metadata accessor for Text.Effect.Layout.Fragment);
    result = type metadata accessor for Text.Effect.InteractionMetrics();
    *(v33 + *(result + 28)) = v98 - v100 + *(v33 + *(result + 28));
    return result;
  }

  v48 = 0;
  v49 = 0;
  v50 = *&v46;
  v107 = v43 + 32;
  v108 = v110 + 32;
  v105 = v114 + 8;
  v106 = v114 + 16;
  while (1)
  {
    v51 = (v108 + 24 * v48);
    v52 = *v51;
    v53 = v51[1];
    v54 = *(v51 + 16);
    if (v54)
    {
      if (v54 != 1)
      {
        v60 = 1;
        goto LABEL_26;
      }

      v55 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_47;
      }

      v56 = __OFSUB__(v55, v49);
      v57 = v55 - v49;
      if (v56)
      {
        goto LABEL_49;
      }

      v58 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_50;
      }

      v56 = __OFSUB__(v53, v52);
      v59 = v53 - v52;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v57 = v52 + v49;
      if (__OFADD__(v52, v49))
      {
        goto LABEL_46;
      }

      v58 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_48;
      }

      v56 = __OFSUB__(v53, v52);
      v59 = v53 - v52;
      if (v56)
      {
        goto LABEL_51;
      }
    }

    v60 = v58 >= v59;
    v49 = v58 < v59 ? v58 : 0;
    v52 = v57;
LABEL_26:
    v56 = __OFADD__(v109, v52);
    v61 = v109 + v52;
    if (v56)
    {
      break;
    }

    v62 = v61 - v155;
    if (__OFSUB__(v61, v155))
    {
      goto LABEL_41;
    }

    if ((v62 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if (v62 >= *(v43 + 16))
    {
      goto LABEL_43;
    }

    v63 = v154;
    v64 = (v107 + (v62 << 7));
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[3];
    v130 = v64[2];
    v131 = v67;
    v128 = v65;
    v129 = v66;
    v68 = v64[4];
    v69 = v64[5];
    v70 = v64[7];
    v134 = v64[6];
    v135 = v70;
    v132 = v68;
    v133 = v69;
    v127[0] = v64[7];
    v71 = *(&v134 + 1) + v50;
    result = memmove(&v136, v64, 0x68uLL);
    v145 = v71;
    v146 = v127[0];
    v72 = *(v63 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    if (v62 >= *(v72 + 16))
    {
      goto LABEL_44;
    }

    v123 = v49;
    v73 = v43;
    v74 = v113;
    v75 = v114;
    v76 = v72 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v62;
    v77 = v112;
    (*(v114 + 16))(v112, v76, v113);
    outlined init with copy of Text.Effect.DisplayInfo(&v128, v127);
    v78 = Text.Layout.Cluster.characterRange.getter();
    v80 = v79;
    v81 = (*(v75 + 8))(v77, v74);
    v81.n128_u64[0] = v142;
    v119 = v81;
    v81.n128_u64[0] = v143;
    v117 = v81;
    v82 = v145;
    v81.n128_u64[0] = v144;
    v122 = v81;
    v81.n128_u64[0] = v141;
    v116 = v81;
    v83 = v140;
    v81.n128_u64[0] = *(&v136 + 1);
    v118 = v81;
    v81.n128_u64[0] = v137;
    v121 = v81;
    v81.n128_u64[0] = *(&v137 + 1);
    v120 = v81;
    v84 = v138;
    result = type metadata accessor for Text.Effect.InteractionMetrics();
    v85 = v33 + *(result + 28);
    v87 = *v85;
    *&v86 = *(v85 + 1);
    v125 = v78;
    v126 = v80;
    if (__OFSUB__(v80, v78))
    {
      goto LABEL_45;
    }

    v115 = v86;
    if (v80 != v78)
    {
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
      v88 = RangeSet._ranges.modify();
      _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
      RangeSet.Ranges._insert(contentsOf:)();
      v88(v127, 0);
      v33 = v124;
    }

    v89 = *v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89);
    }

    v91 = *(v89 + 2);
    v90 = *(v89 + 3);
    if (v91 >= v90 >> 1)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v89);
    }

    v48 += v60;
    result = outlined destroy of Text.Effect.DisplayInfo(&v136);
    *(v89 + 2) = v91 + 1;
    v92 = &v89[96 * v91];
    *(v92 + 4) = v78;
    *(v92 + 5) = v80;
    *(v92 + 6) = v82 + v87;
    *&v93 = v115;
    *(&v93 + 1) = v116.n128_u64[0];
    v95 = v118.n128_u64[0];
    *&v94 = v119.n128_u64[0];
    *(&v94 + 1) = v117.n128_u64[0];
    *(v92 + 72) = v94;
    *&v94 = v122.n128_u64[0];
    *(&v94 + 1) = v95;
    *(v92 + 56) = v93;
    *&v96 = v121.n128_u64[0];
    *(&v96 + 1) = v120.n128_u64[0];
    *(v92 + 104) = v96;
    *(v92 + 88) = v94;
    *(v92 + 15) = v84;
    v33 = v124;
    *v124 = v89;
    *v85 = v83 - *&v94 + v87;
    v46 = v111;
    v43 = v73;
    v49 = v123;
    if (v48 >= *(v110 + 16))
    {
      goto LABEL_39;
    }
  }

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
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void appendMetrics #1 <A>(_:) in TextEffectImplementation.appendInteractionMetrics(for:to:at:context:)(uint64_t a1, uint64_t a2, char **a3)
{
  v78 = a3;
  v77 = type metadata accessor for Text.Layout.Cluster();
  v64 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v57 - v7;
  v8 = type metadata accessor for Text.Layout.Line();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *(a2 + 24);
  v62 = *(a2 + 48);
  v58 = v14;
  v15 = *(v14 + 16);
  v61 = v13;
  v65 = &v57 - v16;
  v15(v12);
  v17 = *(a1 + 24);
  v66 = v10;
  v59 = v8;
  (v15)(v10, v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v8);
  v63 = v17;
  v18 = *(v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
  v19 = *(a1 + 48);
  v83 = 0;
  v84 = 0;
  v82 = v18;
  v20 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters;

  v87 = Text.Effect.VisualOrderCollection.Iterator.next()();
  if (v87.is_nil)
  {
LABEL_2:

    v21 = *(v58 + 8);
    v22 = v59;
    v21(v66, v59);
    v21(v65, v22);
  }

  else
  {
    v23 = v64 + 16;
    v75 = (v64 + 8);
    v24 = 0.0;
    while (1)
    {
      v25 = v19 + v87.value;
      if (__OFADD__(v19, v87.value))
      {
        break;
      }

      if (__OFSUB__(v25, v19))
      {
        goto LABEL_21;
      }

      if (v87.value < 0)
      {
        goto LABEL_22;
      }

      v26 = *(v63 + v20);
      if (v87.value >= *(v26 + 16))
      {
        goto LABEL_23;
      }

      v27 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v28 = *(v64 + 72);
      v29 = *(v64 + 16);
      v29(v76, v26 + v27 + v28 * v87.value, v77);
      Text.Layout.Cluster.typographicBounds(with:)(v66, v85);
      v30 = v25 - v62;
      if (__OFSUB__(v25, v62))
      {
        goto LABEL_24;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v31 = *(v61 + v20);
      if (v30 >= *(v31 + 16))
      {
        goto LABEL_26;
      }

      v32 = v31 + v27 + v28 * v30;
      v33 = v60;
      v34 = v77;
      v35 = v23;
      v29(v60, v32, v77);
      Text.Layout.Cluster.typographicBounds(with:)(v65, v86);
      v36 = *v75;
      (*v75)(v33, v34);
      v37 = Text.Layout.Cluster.characterRange.getter();
      v39 = v38;
      *&v40 = v86[4];
      v71 = v40;
      *&v40 = v86[5];
      v69 = v40;
      *&v40 = v86[3];
      v68 = v40;
      *&v40 = v86[2];
      v74 = v40;
      v41 = v85[2];
      *&v40 = v85[3];
      v70 = v40;
      *&v40 = v85[4];
      v73 = v40;
      *&v40 = v85[5];
      v72 = v40;
      v42 = v78 + *(type metadata accessor for Text.Effect.InteractionMetrics() + 28);
      v44 = *v42;
      *&v43 = *(v42 + 1);
      v80 = v37;
      v81 = v39;
      if (__OFSUB__(v39, v37))
      {
        goto LABEL_27;
      }

      v67 = v43;
      if (v39 != v37)
      {
        _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
        v45 = RangeSet._ranges.modify();
        _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v45(v79, 0);
      }

      v46 = v78;
      v47 = *v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v46 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        *v78 = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
        *v78 = v56;
      }

      v36(v76, v77);
      v51 = *v78;
      *(v51 + 2) = v50 + 1;
      v52 = &v51[96 * v50];
      *(v52 + 4) = v37;
      *(v52 + 5) = v39;
      *(v52 + 6) = v24 + v44;
      *&v53 = v67;
      *(&v53 + 1) = v68;
      *&v54 = v71;
      *(&v54 + 1) = v69;
      *(v52 + 72) = v54;
      *(v52 + 56) = v53;
      v55 = *&v74;
      *&v54 = v74;
      *(&v54 + 1) = v70;
      *&v53 = v73;
      *(&v53 + 1) = v72;
      *(v52 + 104) = v53;
      *(v52 + 88) = v54;
      *(v52 + 15) = v41;
      *v42 = v41 - v55 + v44;
      v24 = v24 + v41 - *&v54;
      v87 = Text.Effect.VisualOrderCollection.Iterator.next()();
      v23 = v35;
      if (v87.is_nil)
      {
        goto LABEL_2;
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
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t TextEffectImplementation.resolve(_:ranges:in:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v164 = a3;
  v145 = a2;
  v146 = a1;
  v162 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v155 = *(v8 - 8);
  v156 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v165 = v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v154);
  v140 = v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Text.Layout.Run();
  v136 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v153 = v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v148 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v135 - v13;
  type metadata accessor for RangeSet<Int>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v147 = v15;
  v137 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v149 = v135 - v16;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v142 = *(v17 - 8);
  v143 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v141 = v135 - v18;
  v19 = type metadata accessor for Text.Layout.Line();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v157 = v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v159 = v135 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v135 - v25;
  v150 = a4;
  v158 = *a4;
  v27 = *(*(v158 + 16) + 48);
  v28 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v29 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v30 = v7;
  v31 = *((v7 & v162) + 0x118);
  v144 = v5;
  v32 = *((v30 & v162) + 0x120);

  v162 = v32;
  v33 = specialized TextEffectImplementation.defaultDrawingState.getter(v31, v32);
  v34 = Text.Effect.Keyframes.subscript.getter(v29, v33, v27);

  if (v34)
  {
    v139 = v34;
    v135[1] = v14;
    v36 = v158;
    v37 = *(*(v158 + 16) + 24);

    TextEffectsAnimationController.state(for:time:)(v146, v168, v37);

    v38 = *(v150 + 24);
    v39 = *(v150 + 32);
    v40 = *(v150 + 40);
    v177 = v36;
    v178 = *(v150 + 8);
    v179 = v38;
    v180 = v39;
    v181 = v40;
    v41 = *(v144 + v28);
    v42 = specialized TextEffectImplementation.defaultDrawingState.getter(v31, v162);
    Text.Effect.DrawingContext.fragment<A>(for:key:fragment:)(v41, v42, v145, v174);

    v138 = type metadata accessor for Text.Effect.DrawableFragment();
    v43 = Text.Effect.DrawableFragment.lineBreakingFragment.getter(v138, v175);
    v44 = *(v20 + 16);
    v44(v26, v176 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v19, v43);
    Text.Layout.Line.origin.getter();
    v46 = v45;
    v47 = *(v20 + 8);
    v151 = v26;
    v47(v26, v19);
    v48 = v159;
    v160 = v44;
    v161 = v20 + 16;
    (v44)(v159, v174[3] + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v19);
    Text.Layout.Line.origin.getter();
    v50 = v49;
    v162 = v19;
    v159 = v47;
    v47(v48, v19);
    v51 = v46 - v50;

    v52 = v36;
    v53 = v20 + 8;
    if (v51 != 0.0)
    {
      v54 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v56 = swift_allocObject();
        *(v56 + 104) = 0u;
        *(v56 + 120) = 0u;
        *(v56 + 136) = 0u;
        __asm { FMOV            V0.2D, #1.0 }

        *(v56 + 152) = _Q0;
        *(v56 + 168) = 0x3FF0000000000000;
        *(v56 + 176) = 0;
        *(v56 + 16) = *(v52 + 16);
        v62 = *(v52 + 40);
        v63 = *(v52 + 56);
        *(v56 + 24) = *(v52 + 24);
        *(v56 + 40) = v62;
        *(v56 + 56) = v63;
        *(v56 + 72) = *(v52 + 72);
        v64 = *(v52 + 184);
        v65 = *(v52 + 192);
        v66 = *(v52 + 200);
        v67 = *(v52 + 208);
        v68 = *(v52 + 216);
        *(v56 + 184) = v64;
        *(v56 + 192) = v65;
        *(v56 + 200) = v66;
        *(v56 + 208) = v67;
        *(v56 + 216) = v68;
        v69 = *(v52 + 96);
        *(v56 + 80) = *(v52 + 80);
        *(v56 + 96) = v69;

        outlined copy of Text.Effect.StopCollector?(v64, v65, v66, v67);

        *v150 = v56;
        v52 = v56;
      }

      v70 = *(v52 + 40);
      *&v167.a = *(v52 + 24);
      *&v167.c = v70;
      *&v167.tx = *(v52 + 56);
      CGAffineTransformTranslate(&v166, &v167, 0.0, v51);
      v71 = *&v166.c;
      v72 = *&v166.tx;
      *(v52 + 24) = *&v166.a;
      *(v52 + 40) = v71;
      *(v52 + 56) = v72;
    }

    result = v139;
    if ((v169 & 0xFE) == 2)
    {

      v73 = v172;
      v165 = v171;
      v74 = v138;
      v75 = v173;
      v76 = v170;
      v77 = v168[6];
      v78 = *(v52 + 16);
      v80 = v78[4];
      v79 = v78[5];
      v82 = v78[6];
      v81 = v78[7];

      specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v76, v165, v73, v75, v77, 0, v80, v79, v82, v81);

      TextEffectImplementation.AnimationInfo.resolve(id:fragment:ranges:state:in:)(v146, v174, v164, v168, &v177);

      outlined destroy of Text.Effect.State(v168);
      v83 = *(*(v74 - 8) + 8);
      v83(v174, v74);
      v84 = v74;
LABEL_23:
      v83(v175, v84);
    }

    if ((v145 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (*(v139 + 16) <= v145)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      v85 = *(v139 + 8 * v145 + 32);

      v87 = v141;
      v86 = v142;
      v88 = v143;
      (*(v142 + 16))(v141, &v85[OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges], v143);
      _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v86 + 8))(v87, v88);
      if (v89)
      {
        type metadata accessor for _ContiguousArrayStorage<Range<Int>>();
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_195CC8D00;
        v91 = *(v85 + 1);
        v150 = v90;
        *(v90 + 32) = v91;
        v92 = 1;
        goto LABEL_14;
      }

      result = RangeSet.init()();
      v93 = *(v85 + 2);
      v94 = *(v85 + 3);
      v95 = v151;
      if (*&v93 == v94)
      {
LABEL_13:
        v96 = v147;
        v97 = v149;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges();
        v98 = dispatch thunk of Sequence._copyToContiguousArray()();
        (*(v137 + 8))(v97, v96);
        v150 = v98;
        v92 = *(v98 + 16);
        if (!v92)
        {
LABEL_22:

          outlined destroy of Text.Effect.State(v168);
          v126 = v138;
          v83 = *(*(v138 - 8) + 8);
          v83(v174, v138);
          v84 = v126;
          goto LABEL_23;
        }

LABEL_14:
        v152 = v53;
        v153 = v85;
        v151 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
        v99 = (v150 + 40);
        v100 = v162;
        v101 = v140;
        v102 = v157;
        do
        {
          v163 = v99;
          v164 = v92;
          v103 = *(v99 - 1);
          v104 = *v99;
          v105 = v160;
          v160(v102, &v153[v151], v100);
          type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
          v107 = (v101 + *(v106 + 48));
          v108 = v100;
          v109 = *(v106 + 64);
          v105(v101, v102, v108);
          *v107 = v103;
          v107[1] = v104;
          v110 = v158;
          v111 = *(v158 + 96);
          v112 = 0uLL;
          if ((v111 & 1) == 0)
          {
            v112 = *(v158 + 80);
          }

          v113 = v101 + v109;
          *v113 = v112;
          *(v113 + 16) = v111;
          swift_storeEnumTagMultiPayload();
          v114 = *(v110 + 16);
          v115 = v165;
          outlined init with copy of Text.Effect.Layout.Fragment(v101, v165, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          v116 = v156;
          v117 = *(v110 + 24);
          v118 = *(v110 + 40);
          v119 = *(v110 + 56);
          *(v115 + *(v156 + 20)) = *(v110 + 72);
          v120 = (v115 + *(v116 + 24));
          *v120 = v117;
          v120[1] = v118;
          v120[2] = v119;
          swift_beginAccess();
          v121 = *(v114 + 16);

          v122 = swift_isUniquelyReferenced_nonNull_native();
          *(v114 + 16) = v121;
          if ((v122 & 1) == 0)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
            *(v114 + 16) = v121;
          }

          v123 = v163;
          v125 = v121[2];
          v124 = v121[3];
          if (v125 >= v124 >> 1)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124 > 1, v125 + 1, 1, v121);
          }

          v99 = (v123 + 16);
          v121[2] = v125 + 1;
          outlined init with take of Text.Effect.ResolvedDrawing.Operation(v165, v121 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v125);
          *(v114 + 16) = v121;
          swift_endAccess();
          outlined destroy of Text.Effect.Layout.Fragment(v101, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          v102 = v157;
          v100 = v162;
          (v159)(v157, v162);

          v92 = v164 - 1;
        }

        while (v164 != 1);
        goto LABEL_22;
      }

      if (v94 >= *&v93)
      {
        if (*&v93 < v94)
        {
          v150 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
          v127 = (v136 + 8);
          while (1)
          {
            *&v129 = *&v93 + 1;
            v130 = v162;
            v160(v95, &v85[v150], v162);
            v131 = v153;
            Text.Layout.Line.subscript.getter();
            (v159)(v95, v130);
            v132 = Text.Layout.Run.characterRange.getter();
            v134 = v133;
            (*v127)(v131, v163);
            result = specialized RangeSet.overlaps(_:)(v132, v134);
            if (result)
            {
              if (v93 == NAN)
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              v166.a = v93;
              *&v166.b = *&v93 + 1;
              v128 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v128(&v167, 0);
            }

            v93 = v129;
            v95 = v151;
            if (v94 == *&v129)
            {
              goto LABEL_13;
            }
          }
        }

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t TextEffectImplementation.needsUpdate(_:at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  TextEffectsAnimationController.state(for:time:)(a1, v14, a7);
  if ((v16 & 0xFE) == 2)
  {
    specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v17, v18, v19, v20, v15, 0, a3, a4, a5, a6);
    v12 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v14, 1);
  }

  else
  {
    v12 = 0;
  }

  outlined destroy of Text.Effect.State(v14);
  return v12 & 1;
}

void *TextEffectImplementation.metrics(_:ranges:at:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  *&v83.f64[0] = a6;
  v80 = a4;
  v81 = a5;
  v15 = *MEMORY[0x1E69E7D40] & *v9;
  v77 = type metadata accessor for Text.Layout.Cluster();
  v16 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78.f64[0] = type metadata accessor for Text.Effect.Layout.Fragment();
  MEMORY[0x1EEE9AC00](*&v78.f64[0]);
  v79 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a7;
  TextEffectsAnimationController.state(for:time:)(a1, v95, a8);
  v20 = swift_allocObject();
  v21 = v20;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  if ((v96 & 0xFE) != 2)
  {
    v38 = specialized TextEffectImplementation.defaultDrawingState.getter(*(v15 + 280), *(v15 + 288));
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v38, *&v83.f64[0], v9, a2, a3, v21);
    outlined destroy of Text.Effect.State(v95);

    swift_beginAccess();
    v39 = *(v21 + 32);
    v83 = *(v21 + 16);
    v84 = v39;
  }

  v75 = v20 + 16;
  v76 = v20;
  *&v84.f64[0] = a3;
  v22 = *&v83.f64[0];
  v23 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(0, v97, v98, v99, v100, v95[6], 0, v80, v81, *&v83.f64[0], v82);
  v24 = TextEffectImplementation.AnimationInfo.needsUpdate(for:state:consideringRestart:)(a2, v95, 1);
  v25 = *(v15 + 280);
  if ((v24 & 1) == 0)
  {
    v40 = specialized TextEffectImplementation.defaultDrawingState.getter(*(v15 + 280), *(v15 + 288));
    v41 = v22;
    v42 = v76;
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v40, v41, v9, a2, *&v84.f64[0], v76);

    outlined destroy of Text.Effect.State(v95);

LABEL_23:
    swift_beginAccess();
    v69 = v42[2];
    v83 = v42[1];
    v84 = v69;
  }

  v26 = *(v9 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v27 = *(v15 + 288);
  v28 = specialized TextEffectImplementation.defaultDrawingState.getter(v25, v27);
  v29 = a2;
  v30 = v22;
  v31 = v23;
  v32 = *(v27 + 16);
  v74 = v29;
  specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v26, v28, v29, v30, v101);

  v33 = v79;
  TextEffectImplementation.AnimationInfo.layout(for:state:context:)(v95, v80, v81, v30, v82, v79);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  v34 = *&v84.f64[0];
  if (static RangeSet.== infix(_:_:)())
  {
    v35 = type metadata accessor for Text.Effect.DrawableFragment();
    (*(*(v35 - 8) + 8))(v101, v35);

    outlined destroy of Text.Effect.State(v95);
    v36 = (v33 + *(*&v78.f64[0] + 20));
    v37 = v36[1];
    v83 = *v36;
    v84 = v37;
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
  }

  v72 = v25;
  v73 = v31;
  v43 = v33 + *(*&v78.f64[0] + 24);
  v44 = *v43;
  v45 = *(v43 + 8);
  if (*(v43 + 16) == 1)
  {
    outlined copy of Text.Effect.Layout.Fragment.Storage(v44, v45, 1);
    v42 = v76;
    specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(v44, *&v83.f64[0], v9, v74, v34, v76);

    outlined consume of Text.Effect.Layout.Fragment.Storage(v44, v45, 1);
    outlined destroy of Text.Effect.State(v95);
    v46 = type metadata accessor for Text.Effect.DrawableFragment();
    (*(*(v46 - 8) + 8))(v101, v46);
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
    goto LABEL_23;
  }

  v47 = *(v44 + 16);
  if (!v47)
  {

    outlined destroy of Text.Effect.State(v95);
    v42 = v76;
LABEL_22:
    v68 = type metadata accessor for Text.Effect.DrawableFragment();
    (*(*(v68 - 8) + 8))(v101, v68);
    outlined destroy of Text.Effect.Layout.Fragment(v33, type metadata accessor for Text.Effect.Layout.Fragment);
    outlined consume of Text.Effect.Layout.Fragment.Storage(v44, v45, 0);
    goto LABEL_23;
  }

  v74 = v32;
  v70 = v45;
  v48 = *&v45;
  v82 = v102;
  v83.f64[0] = v103;
  v80 = v16 + 16;
  v81 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters;

  v49 = v47 - 1;
  v71 = v44;
  v50 = (v44 + 144);
  v78 = 0u;
  v51 = 0.0;
  v52 = 0.0;
  v42 = v76;
  v53 = v77;
  while (1)
  {
    v54 = *(v50 - 7);
    v55 = *(v50 - 6);
    v56 = *(v50 - 4);
    v86[2] = *(v50 - 5);
    v86[3] = v56;
    v86[0] = v54;
    v86[1] = v55;
    v57 = *(v50 - 3);
    v58 = *(v50 - 2);
    v59 = *v50;
    v87 = *(v50 - 1);
    v88 = v59;
    v86[4] = v57;
    v86[5] = v58;
    v85[0] = *v50;
    v60 = *(&v87 + 1) + v48;
    result = memmove(&v89, v50 - 7, 0x68uLL);
    v93 = v60;
    v94 = v85[0];
    v62 = v89 - *&v83.f64[0];
    if (__OFSUB__(v89, *&v83.f64[0]))
    {
      break;
    }

    if ((v62 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v63 = *(v82 + v81);
    if (v62 >= *(v63 + 16))
    {
      goto LABEL_27;
    }

    (*(v16 + 16))(v18, v63 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v62, v53);
    outlined init with copy of Text.Effect.DisplayInfo(v86, v85);
    v64 = Text.Layout.Cluster.characterRange.getter();
    v66 = v65;
    (*(v16 + 8))(v18, v53);
    LOBYTE(v64) = specialized RangeSet.overlaps(_:)(v64, v66);
    outlined destroy of Text.Effect.DisplayInfo(&v89);
    if (v64)
    {
      v67 = v92;
      if (v52 <= v90)
      {
        v52 = v90;
      }

      v42[1].f64[0] = v52;
      v78 = vbslq_s8(vcgeq_f64(v91, v78), v91, v78);
      *(v42 + 24) = v78;
      v51 = v51 + v67;
      v42[2].f64[1] = v51;
    }

    if (!v49)
    {

      outlined destroy of Text.Effect.State(v95);
      v33 = v79;
      v45 = v70;
      v44 = v71;
      goto LABEL_22;
    }

    --v49;
    v50 += 8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t TextEffectImplementation.widthDifference(_:ranges:at:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v33 = a6;
  v34 = a7;
  v29 = a4;
  v30 = a5;
  v31 = a2;
  v32 = a3;
  v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x120);
  v12 = *(v11 + 16);
  v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  if ((*(v11 + 48))(v13, v11, v19) == 3 || (result = static TextAlignment.== infix(_:_:)(), (result & 1) == 0))
  {
    TextEffectsAnimationController.state(for:time:)(a1, v35, a8);
    if ((v35[56] & 0xFE) == 2 || ((*(v12 + 120))(v13, v12), (*(v12 + 128))(v13, v12), swift_getAssociatedConformanceWitness(), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), v24 = *(v15 + 8), v24(v17, AssociatedTypeWitness), v24(v21, AssociatedTypeWitness), (v23 & 1) == 0))
    {
      v26 = v31;
      v25 = v32;
      v27 = v33;
      TextEffectImplementation.metrics(_:ranges:at:context:)(a1, v31, v32, v29, v30, v33, v34, a8);
      specialized TextEffectImplementation.lineBreakingMetrics(_:ranges:context:)(a1, v26, v25, v27);
      return outlined destroy of Text.Effect.State(v35);
    }

    else
    {
      return outlined destroy of Text.Effect.State(v35);
    }
  }

  return result;
}

uint64_t TextEffectImplementation.duration(from:to:variant:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, a1, a2, v23, v24, 0, 1, v25, a7, v22, a9);
  v17 = *(*v16 + 160);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16 + v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return v19;
}

id TextEffectImplementation.saveSnapshot(animationController:)(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - v6;
  v9 = *(v8 + 56);
  v10 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  TextEffectsAnimationController.state(for:time:)(*&v1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id], v26, v9);
  if (TextEffectsAnimationController.animationInfo(for:)(*&v1[v10]))
  {
    type metadata accessor for TextEffectImplementation.AnimationInfo();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = type metadata accessor for TextEffectStateSnapshot();
      (*(v5 + 16))(v7, &v2[*((*v3 & *v2) + 0x128)], v4);
      v14 = *(v12 + *(*v12 + 168));
      type metadata accessor for Text.Effect.AttributeTracker();
      v15 = swift_allocObject();
      swift_beginAccess();
      v25 = v5;
      v16 = v14[3];
      v17 = v14[4];
      v18 = v14[5];

      specialized Text.Effect.AttributeTracker.Tracker.deepCopy()(v16, v17, v18, v27);

      v19 = v27[1];
      *(v15 + 16) = v27[0];
      *(v15 + 32) = v19;
      *(v15 + 48) = v28;
      swift_beginAccess();
      v20 = v14[7];

      *(v15 + 56) = v20;
      v21 = objc_allocWithZone(v13);
      v22 = specialized TextEffectStateSnapshot.init(effect:time:state:attributes:)(v7, v26, v15, v9);
      (*(v25 + 8))(v7, v4);

      return v22;
    }
  }

  outlined destroy of Text.Effect.State(v26);
  return 0;
}

void TextEffectImplementation.restoreSnapshot(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a2;
  v41 = a5;
  v38 = a4;
  v39 = a3;
  v8 = *v5;
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v9 + 0x118);
  v11 = *(*((*MEMORY[0x1E69E7D40] & v8) + 0x118) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v37 - v12;
  type metadata accessor for TextEffectStateSnapshot();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    (*(v11 + 16))(v13, &v6[*(v9 + 296)], v10);
    v16 = a1;
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if (v17)
    {
      v18 = MEMORY[0x1E69E7D40];
      v19 = v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x70);
      v20 = *(v19 + 8);
      v21 = *(v19 + 9);
      v37 = v16;
      v22 = *(v19 + 10);
      v23 = *(v19 + 11);
      v24 = *(v19 + 6);

      v40 = specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(1, v20, v21, v22, v23, v24, 0, v40, v39, v38, v41);

      v25 = *(v15 + *((*v18 & *v15) + 0x78));
      type metadata accessor for Text.Effect.AttributeTracker();
      v26 = swift_allocObject();
      swift_beginAccess();
      v27 = v25[3];
      v28 = v25[4];
      v29 = v25[5];

      specialized Text.Effect.AttributeTracker.Tracker.deepCopy()(v27, v28, v29, v43);

      v30 = v43[1];
      *(v26 + 16) = v43[0];
      *(v26 + 32) = v30;
      *(v26 + 48) = v44;
      swift_beginAccess();
      v31 = v25[7];

      *(v26 + 56) = v31;
      *(v40 + *(*v40 + 168)) = v26;

      v32 = *(v19 + 1);
      v45[0] = *v19;
      v45[1] = v32;
      v33 = *(v19 + 2);
      v34 = *(v19 + 3);
      v35 = *(v19 + 5);
      v45[4] = *(v19 + 4);
      v45[5] = v35;
      v45[2] = v33;
      v45[3] = v34;
      v36 = *&v6[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
      outlined init with copy of Text.Effect.State(v45, &v42);
      TextEffectsAnimationController.restoreState(_:for:)(v45, v36);
      outlined destroy of Text.Effect.State(v45);
    }

    else
    {
    }
  }
}

uint64_t TextEffectImplementation.phase(from:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0x120) + 16);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v4 + 88))(a1, v22, v5, v4, v16);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v18, v10, AssociatedTypeWitness);
    type metadata accessor for Text.Effect.ConcretePhase();
    (*(v11 + 16))(v14, v18, AssociatedTypeWitness);
    v20 = Text.Effect.ConcretePhase.__allocating_init(_:)(v14);
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    return v20;
  }
}

uint64_t TextEffectImplementation.defaultAnimatorPhase.getter()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x120) + 16);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v7 - v4;
  type metadata accessor for Text.Effect.ConcretePhase();
  (*(v1 + 72))(v2, v1);
  return Text.Effect.ConcretePhase.__allocating_init(_:)(v5);
}

void TextEffectImplementation.configuration(from:)(uint64_t a1)
{
  v3 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x120) + 16);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v19 - v17;
  if (v15)
  {
    (*(v3 + 64))(v15, v4, v3, v16);
    if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v18, v9, AssociatedTypeWitness);
      type metadata accessor for Text.Effect.ConcreteConfiguration();
      (*(v10 + 16))(v13, v18, AssociatedTypeWitness);
      Text.Effect.ConcreteConfiguration.__allocating_init(_:)(v13);
      (*(v10 + 8))(v18, AssociatedTypeWitness);
    }
  }
}

uint64_t type metadata completion function for TextEffectImplementation.AnimationInfo()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for TextEffectStateSnapshot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TextEffectStateSnapshot.__ivar_destroyer()
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50) - 8) + 8))(&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)]);
}

id TextEffectImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc TextEffectStateSnapshot.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t type metadata instantiation function for TextEffectImplementation.ResolvedMap()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double closure #1 in Text.Effect.DrawableFragment.transform(with:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v8;
  v32 = *(a3 + 64);
  v9 = *(a3 + 16);
  v28 = *a3;
  v29 = v9;
  v10 = *(a2 + 288);
  v11 = *(a2 + 320);
  v24 = *(a2 + 304);
  v25 = v11;
  v12 = *(a2 + 320);
  v26 = *(a2 + 336);
  v13 = *(a2 + 288);
  v22 = *(a2 + 272);
  v23 = v13;
  v34[0] = v22;
  v34[1] = v10;
  v14 = *(a2 + 336);
  v34[3] = v12;
  v34[4] = v14;
  v33 = *(a3 + 80);
  v27 = *(a2 + 352);
  v35 = *(a2 + 352);
  v34[2] = v24;
  outlined init with copy of Text.Effect.TransformContext.DrawingMode(&v22, v36);
  outlined init with copy of Text.Effect.PathInterpolator(a3, v36);
  outlined destroy of Text.Effect.TransformContext.DrawingMode(v34);
  v15 = v31;
  *(a2 + 304) = v30;
  *(a2 + 320) = v15;
  *(a2 + 336) = v32;
  *(a2 + 352) = v33;
  v16 = v29;
  *(a2 + 272) = v28;
  *(a2 + 288) = v16;
  a4(a1, a2);
  v17 = *(a2 + 320);
  v36[2] = *(a2 + 304);
  v36[3] = v17;
  v36[4] = *(a2 + 336);
  v37 = *(a2 + 352);
  v18 = *(a2 + 288);
  v36[0] = *(a2 + 272);
  v36[1] = v18;
  outlined destroy of Text.Effect.TransformContext.DrawingMode(v36);
  v19 = v25;
  *(a2 + 304) = v24;
  *(a2 + 320) = v19;
  *(a2 + 336) = v26;
  *(a2 + 352) = v27;
  result = *&v22;
  v21 = v23;
  *(a2 + 272) = v22;
  *(a2 + 288) = v21;
  return result;
}

uint64_t specialized TextEffectImplementation.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v56 = a8;
  v59 = a7;
  v60 = a5;
  v62 = a6;
  v64 = a4;
  v67 = a3;
  v68 = a1;
  v15 = *v12;
  v16 = v15[15];
  v17 = v15[16];
  v18 = *(v17 + 16);
  v19 = type metadata accessor for Text.Effect.DrawableContent();
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v55 = v53 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = v53 - v21;
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v53 - v23;
  v25 = v15[21];
  type metadata accessor for Text.Effect.AttributeTracker();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CC8];
  *(v26 + 16) = MEMORY[0x1E69E7CC8];
  *(v26 + 24) = v27;
  *(v26 + 32) = 0;
  *(v26 + 40) = v27;
  v28 = MEMORY[0x1E69E7CD0];
  *(v26 + 48) = 0;
  *(v26 + 56) = v28;
  *(v13 + v25) = v26;
  *(v13 + *(*v13 + 176)) = 0;
  v29 = *(*v13 + 184);
  *(v13 + v29) = TextEffectImplementation.ResolvedMap.init()();
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  (*(v18 + 128))(v16, v18);
  v30 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v24);
  v31 = (v13 + *(*v13 + 192));
  *v31 = a2;
  v31[1] = v30;

  v53[2] = v30;
  v65 = a11;
  v32 = Text.Effect.Keyframes.subscript.getter(a2, v30, a11);
  if (!v32)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v33 = v32;
  v54 = a10;
  v13[3] = (*(v17 + 24))(0x6C6F686563616C50, 0xEB00000000726564, v16, v17);
  v13[4] = v34;
  v35 = *v31;
  v36 = v31[1];

  v37 = v54;
  v38 = v55;
  v53[1] = a9;
  v54 = a12;
  Text.Effect.BaseContext.content<A>(for:key:)(v16, v35, v36, a9, v37, v65, a12, v16, v18);

  v39 = v66;
  (*(v18 + 136))(v38, v67, v64, v60, v62, v59, v56 & 1, v16, v18);
  (*(v57 + 8))(v38, v58);
  v13[5] = MEMORY[0x1E69E7CC8];
  v40 = *(*v13 + 160);
  v41 = v61;
  v42 = *(v61 + 16);
  v59 = v13;
  v43 = AssociatedTypeWitness;
  v42(v13 + v40, v39, AssociatedTypeWitness);
  v44 = *(v33 + 16);
  if (v44)
  {
    v58 = v16;
    v69 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
    v45 = v69;
    v46 = *(v33 + 16);
    v47 = *(v69 + 16);
    v48 = 32;
    v49 = v59;
    while (1)
    {
      v50 = *(*(*(v33 + v48) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v69 = v45;
      v51 = *(v45 + 24);
      if (v47 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v47 + 1, 1);
        v45 = v69;
      }

      *(v45 + 16) = v47 + 1;
      *(v45 + 8 * v47 + 32) = v50;
      if (!v46)
      {
        break;
      }

      --v46;
      v48 += 8;
      ++v47;
      if (!--v44)
      {

        (*(*(v58 - 8) + 8))(v68);
        (*(v61 + 8))(v66, AssociatedTypeWitness);

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  (*(*(v16 - 8) + 8))(v68, v16);
  (*(v41 + 8))(v66, v43);
  v45 = MEMORY[0x1E69E7CC0];
  v49 = v59;
LABEL_10:
  v49[2] = v45;
  return v49;
}

uint64_t specialized TextEffectImplementation.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for TextEffectImplementation.AnimationInfo();
  swift_allocObject();
  return specialized TextEffectImplementation.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t specialized TextEffectImplementation.animationInfo(persist:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v37 = a7;
  v40 = a6;
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v39 = a1;
  v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x118);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v18 = *&v11[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  if (*(*(a11 + 80) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v18), (v19 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    v28 = v18;
    v33 = a9;
    swift_endAccess();
    (*(v14 + 16))(v16, &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0x128)], v13);
    v32 = *&v11[v17];
    v20 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(a2);
    v30 = v21;
    v31 = v20;
    v22 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v35);
    v29 = v23;

    v24 = v38;

    v25 = specialized TextEffectImplementation.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(v16, v32, v31, v30, v22, v29, v40, v37 & 1, v24, v33, a10, a11);
    if (v39)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a11 + 80);
      *(a11 + 80) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v28, isUniquelyReferenced_nonNull_native);
      *(a11 + 80) = v41;
      swift_endAccess();
    }
  }

  type metadata accessor for TextEffectImplementation.AnimationInfo();
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized TextEffectImplementation.lineBreakingState.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v6 = &v8 - v5;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  (*(v3 + 120))(a1, v3);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v6);
}

uint64_t specialized TextEffectImplementation.defaultDrawingState.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v6 = &v8 - v5;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  (*(v3 + 128))(a1, v3);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v6);
}

uint64_t specialized Text.Effect.Key.key<A>(for:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  (*(v6 + 16))(v8, a2, AssociatedTypeWitness);
  Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v8);
  return a3;
}

void specialized TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:)(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v116 = a6;
  v134 = a5;
  v148 = a4;
  v145 = a1;
  v8 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v125 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v112[-v11];
  v136 = type metadata accessor for LayoutDirection();
  v12 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v123 = &v112[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v112[-v15];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v8, MEMORY[0x1E69E7BE0]);
  v144 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v112[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v112[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v112[-v22];
  v143 = type metadata accessor for Text.Layout.Line();
  v23 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v112[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = a2;
  if (a3 >= a2)
  {
    if (v146 == a3)
    {
      return;
    }

    v122 = *(v116 + 16);
    v147 = type metadata accessor for Text.Effect.DrawableContent();
    v129 = 0;
    v140 = (v23 + 8);
    v141 = (v23 + 16);
    v138 = (v17 + 8);
    v139 = (v17 + 16);
    v119 = (v12 + 88);
    v120 = (v12 + 16);
    v118 = *MEMORY[0x1E697E7D0];
    v113 = *MEMORY[0x1E697E7D8];
    v121 = (v10 + 8);
    v117 = (v12 + 8);
    v133 = a3;
    while (1)
    {
      v27 = v146;
      Text.Effect.DrawableContent.subscript.getter(v146, v150);
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v126 = *v145;
      if (v28 >= v126[2])
      {
        v41 = 0;
        v42 = v124;
      }

      else
      {
        v29 = Text.Effect.DrawableContent.subscript.getter(v27 + 1, v152);
        v30 = v153;
        v162 = v153;
        v31 = *(v153 + 16);
        v32 = v142;
        v33 = v143;
        (*v141)(v142, v153 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v143, v29);

        v34 = Text.Layout.Line.endIndex.getter();
        (*v140)(v32, v33);
        v35 = *(v30 + 24);
        v36 = v30 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
        v37 = v114;
        v38 = v144;
        (*v139)(v114, v36, v144);
        specialized RangeSet.lowerBound.getter();
        outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v162);
        (*v138)(v37, v38);
        v39 = type metadata accessor for Text.Effect.DrawableFragment();
        (*(*(v39 - 8) + 8))(v152, v39);
        v41 = v34 == v35 && v31 == 0;
        v42 = v124;
      }

      v43 = type metadata accessor for Text.Effect.DrawableFragment();
      v44 = v135;
      Text.Effect.DrawableFragment.baseWritingDirection.getter(v135);
      v45 = v123;
      v46 = v136;
      (*v120)(v123, v44, v136);
      v47 = (*v119)(v45, v46);
      LODWORD(v128) = v41;
      if (v47 == v118)
      {
        v48 = v28;
        v127 = 253;
        v49 = 1;
      }

      else
      {
        if (v47 != v113)
        {
          goto LABEL_83;
        }

        v48 = v28;
        v127 = 254;
        v49 = 2;
      }

      v132 = v49;
      v50 = v151;
      v161 = v151;
      v51 = *(v151 + 16);
      v52 = v142;
      v53 = *v141;
      v54 = v143;
      (*v141)(v142, v151 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v143);

      v55 = Text.Layout.Line.endIndex.getter();
      v131 = *v140;
      v131(v52, v54);
      if (v51)
      {
        v56 = 2;
      }

      else
      {
        v56 = 3;
      }

      if (v55 == *(v50 + 24))
      {
        v57 = v56;
      }

      else
      {
        v57 = v51 == 0;
      }

      v130 = *v139;
      v130(v137, v50 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v144);
      RangeSet.ranges.getter();
      _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
      v58 = v125;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v149[4] != v149[0])
      {
        v59 = dispatch thunk of Collection.subscript.read();
        v59(v149, 0);
      }

      (*v121)(v42, v58);
      outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v161);
      v26 = v48;
      v60 = *v138;
      v61 = (*v138)(v137, v144);
      if (v57 == 3)
      {
        goto LABEL_33;
      }

      v62 = v128 ^ 1;
      if ((v57 | v127) != 0xFF)
      {
        v62 = 1;
      }

      if (v62)
      {
        v25 = v133;
        if (v146 >= v133)
        {
          goto LABEL_76;
        }

        if (v48 > v133)
        {
          goto LABEL_77;
        }

        Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v43, v159);
        v99 = Text.Effect.DrawableFragment.width.getter();
        v100 = *(*(v43 - 8) + 8);
        v100(v159, v43);
        if (v146 < 0)
        {
          goto LABEL_78;
        }

        v101 = v126;
        if (v146 >= v126[2])
        {
          goto LABEL_79;
        }

        v102 = type metadata accessor for Text.Effect.Layout.Fragment();
        v103 = (*(*(v102 - 8) + 80) + 32) & ~*(*(v102 - 8) + 80);
        v104 = *(*(v102 - 8) + 72) * v146;
        v105 = *(v101 + v103 + *(v102 + 20) + v104 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = v126;
        }

        else
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v126);
        }

        if (v146 >= v106[2])
        {
          goto LABEL_80;
        }

        v107 = v106 + v103 + v104;
        *&v107[*(v102 + 20) + 24] = v99;
        v108 = v106;
        v100(v150, v43);
        (*v117)(v135, v136);
        if (v146 >= v108[2])
        {
          goto LABEL_81;
        }

        v109 = &v107[*(v102 + 24)];
        if ((v109[16] & 1) == 0)
        {
          *(v109 + 1) = (v99 - v105) * 0.5;
          v109[16] = 0;
        }

        *v145 = v108;
      }

      else
      {
LABEL_33:
        v128 = v60;
        v63 = v53;
        MEMORY[0x1EEE9AC00](v61);
        v64 = v146;
        v65 = v133;
        v66 = v134;
        v67 = v116;
        *&v112[-48] = v134;
        *&v112[-40] = v67;
        v68 = v148;
        *&v112[-32] = v64;
        *&v112[-24] = v68;
        v69 = v129;
        v70 = specialized Collection.prefix(while:)(partial apply for closure #1 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:), &v112[-64], v64, v65);
        v72 = v71;
        MEMORY[0x1EEE9AC00](v70);
        *&v112[-32] = v66;
        *&v112[-24] = v67;
        v110 = v68;
        v111 = v145;
        specialized Sequence.reduce<A>(_:_:)(partial apply for closure #2 in TextEffectImplementation.AnimationInfo.centerAlign(fragments:chunk:content:), &v112[-48], v70, v72);
        if (__OFSUB__(v72, v70))
        {
          goto LABEL_70;
        }

        if (v70 == v72)
        {
          goto LABEL_71;
        }

        if (v70 >= v72)
        {
          goto LABEL_72;
        }

        v129 = v69;
        v74 = v73 * 0.5 / (v72 - v70);
        v146 = v72;
        v75 = v72 - 1;
        v76 = Text.Effect.DrawableContent.subscript.getter(v72 - 1, v154);
        v77 = v155;
        v160 = v155;
        v78 = *(v155 + 16);
        v79 = v142;
        v80 = v143;
        v63(v142, v155 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v143, v76);

        v81 = Text.Layout.Line.endIndex.getter();
        v131(v79, v80);
        v82 = *(v77 + 24);
        v83 = v77 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
        v84 = v115;
        v85 = v144;
        v130(v115, v83, v144);
        specialized RangeSet.lowerBound.getter();
        outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v160);
        v128(v84, v85);
        if (v81 != v82 || v78)
        {
          Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v43, v156);
          v87 = Text.Effect.DrawableFragment.width.getter();
          (*(*(v43 - 8) + 8))(v156, v43);
          if (v146 < 1)
          {
            goto LABEL_74;
          }

          v86 = *v145;
          if (v75 >= *(*v145 + 16))
          {
            goto LABEL_75;
          }

          v88 = type metadata accessor for Text.Effect.Layout.Fragment();
          v91 = *(v88 - 8);
          v89 = v88 - 8;
          v90 = v91;
          v92 = v91;
          if (v74 >= (v87 - *(v86 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v91 + 72) * v75 + *(v89 + 28) + 24)) * 0.5)
          {
            v74 = (v87 - *(v86 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v90 + 72) * v75 + *(v89 + 28) + 24)) * 0.5;
          }
        }

        else
        {
          v86 = *v145;
        }

        v93 = v70;
        do
        {
          Text.Effect.DrawableContent.subscript.getter(v93, v157);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v70 < 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v86 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
            if (v70 < 0)
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          if (v93 >= v86[2])
          {
            goto LABEL_67;
          }

          v94 = type metadata accessor for Text.Effect.Layout.Fragment();
          v95 = v86 + ((*(*(v94 - 8) + 80) + 32) & ~*(*(v94 - 8) + 80)) + *(*(v94 - 8) + 72) * v93;
          v96 = v95 + *(v94 + 24);
          if ((*(v96 + 16) & 1) == 0)
          {
            *(v96 + 8) = v74;
            *(v96 + 16) = 0;
          }

          Text.Effect.DrawableFragment.defaultDrawingFragment.getter(v43, v158);
          v97 = Text.Effect.DrawableFragment.width.getter();
          v98 = *(*(v43 - 8) + 8);
          v98(v158, v43);
          v98(v157, v43);
          if (v93 >= v86[2])
          {
            goto LABEL_68;
          }

          ++v93;
          *(v95 + *(v94 + 20) + 24) = v97;
        }

        while (v146 != v93);
        v98(v154, v43);
        v98(v150, v43);
        *v145 = v86;
        (*v117)(v135, v136);
        v25 = v133;
        v26 = v146;
        if (v146 > v133)
        {
          goto LABEL_73;
        }
      }

      v146 = v26;
      if (v26 == v25)
      {
        return;
      }
    }

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
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }

  __break(1u);
LABEL_83:
  LODWORD(v111) = 0;
  v110 = 363;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TextEffectImplementation.ResolvedMap.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEffectImplementation.ResolvedMap.Key();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - v6, a2, v4, v5);
  v9[1] = a1;
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t specialized TextEffectImplementation.lineBreakingMetrics(_:ranges:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for Text.Layout.Line();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Layout.Run();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v18 = v17;
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v43 - v19;
  v20 = *(v4 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v21 = specialized TextEffectImplementation.lineBreakingState.getter(*((v7 & v6) + 0x118), *((v7 & v6) + 0x120));
  v22 = Text.Effect.Keyframes.subscript.getter(v20, v21, v50);

  if (!v22)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v22 + 16) <= a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v50 = v16;
  v24 = *(v22 + 8 * a2 + 32);

  v25 = *(v46 + 16);
  v44 = v18;
  v25(v55, v24 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v18);
  v26 = *(v24 + 16);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v26 != *(v24 + 24))
  {
    v48 = *(v54 + 16);
    v49 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v54 += 16;
    v47 = (v54 - 8);
    v31 = (v45 + 32);
    v32 = (v45 + 8);
    do
    {
      ++v26;
      while (1)
      {
        v33 = v13;
        v34 = v11;
        v35 = v52;
        v36 = v53;
        v48(v52, v24 + v49, v53);
        v37 = v50;
        Text.Layout.Line.subscript.getter();
        result = (*v47)(v35, v36);
        if (v26 - 1 < *(v24 + 16) || v26 - 1 >= *(v24 + 24))
        {
          __break(1u);
          goto LABEL_25;
        }

        v39 = v37;
        v13 = v33;
        v11 = v34;
        (*v31)(v33, v39, v34);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        if (static RangeSet.== infix(_:_:)())
        {
          break;
        }

        v40 = Text.Layout.Run.characterRange.getter();
        if (specialized RangeSet.overlaps(_:)(v40, v41))
        {
          break;
        }

        (*v32)(v33, v34);
        if (v26++ == *(v24 + 24))
        {
          goto LABEL_23;
        }
      }

      Text.Layout.Run.typographicBounds.getter();
      (*v32)(v33, v34);
      if (v30 <= v57)
      {
        v30 = v57;
      }

      if (v29 <= v58)
      {
        v29 = v58;
      }

      if (v28 <= v59)
      {
        v28 = v59;
      }

      v27 = v27 + v56;
    }

    while (*(v24 + 24) != v26);
  }

LABEL_23:

  return (*(v46 + 8))(v55, v44);
}

uint64_t specialized appendMetrics #1 <A>(_:) in TextEffectImplementation.metrics(_:ranges:at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, float64x2_t *a6)
{
  v54 = a5;
  v49 = a1;
  v10 = type metadata accessor for Text.Layout.Line();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Layout.Run();
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v43 - v22;
  v23 = *(a3 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  swift_beginAccess();
  v24 = *(a2 + 48);
  if (*(v24 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v49);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 16 * v25);
      result = swift_endAccess();
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (*(v27 + 16) <= a4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v49 = v18;
        v47 = v13;
        v29 = *(v27 + 8 * a4 + 32);
        v43 = v21;
        v44 = v20;
        (*(v21 + 16))(v53, v29 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v20);
        v30 = *(v29 + 16);
        v48 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;

        swift_beginAccess();
        if (v30 == *(v29 + 24))
        {
LABEL_6:

          return (*(v43 + 8))(v53, v44);
        }

        v46 = *(v52 + 16);
        v52 += 16;
        v31 = (v52 - 8);
        v32 = (v45 + 32);
        v33 = (v45 + 8);
        while (1)
        {
          v36 = v50;
          v37 = v51;
          v46(v50, v29 + v48, v51);
          v38 = v49;
          Text.Layout.Line.subscript.getter();
          result = (*v31)(v36, v37);
          if (v30 < *(v29 + 16) || v30 >= *(v29 + 24))
          {
            break;
          }

          v40 = v47;
          (*v32)(v15, v38, v47);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          if (static RangeSet.== infix(_:_:)() & 1) != 0 || (v41 = Text.Layout.Run.characterRange.getter(), (specialized RangeSet.overlaps(_:)(v41, v42)))
          {
            Text.Layout.Run.typographicBounds.getter();
            (*v33)(v15, v40);
            a6[1] = vbslq_s8(vcgeq_f64(v56, a6[1]), v56, a6[1]);
            v34 = v57;
            if (a6[2].f64[0] > v57)
            {
              v34 = a6[2].f64[0];
            }

            v35 = v55 + a6[2].f64[1];
            a6[2].f64[0] = v34;
            a6[2].f64[1] = v35;
          }

          else
          {
            (*v33)(v15, v40);
          }

          if (++v30 == *(v29 + 24))
          {
            goto LABEL_6;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  return swift_endAccess();
}

id specialized TextEffectStateSnapshot.init(effect:time:state:attributes:)(uint64_t a1, _OWORD *a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v4) + 0x50) - 8) + 16))(&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x60)], a1);
  *&v4[*((*v10 & *v4) + 0x68)] = a4;
  v11 = &v4[*((*v10 & *v4) + 0x70)];
  v12 = a2[1];
  *v11 = *a2;
  *(v11 + 1) = v12;
  v13 = a2[5];
  *(v11 + 4) = a2[4];
  *(v11 + 5) = v13;
  v14 = a2[3];
  *(v11 + 2) = a2[2];
  *(v11 + 3) = v14;
  *&v4[*((*v10 & *v4) + 0x78)] = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t outlined consume of Text.Effect.Layout.Fragment.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Effect.Layout.Fragment.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Text.Effect.FragmentIdentifier, @guaranteed Text.Effect.DrawableFragment<A>) -> (@out Text.Effect.Layout.Fragment)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

uint64_t _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, a2, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges()
{
  result = lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<Int>.Ranges(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

void type metadata accessor for RangeSet<Int>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for RangeSet<Int>.Ranges(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.Layout.Fragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (Text.Effect.PathInterpolator, Text.Effect.DrawingState)()
{
  if (!lazy cache variable for type metadata for (Text.Effect.PathInterpolator, Text.Effect.DrawingState))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Effect.PathInterpolator, Text.Effect.DrawingState));
    }
  }
}

uint64_t outlined destroy of Text.Effect.Layout.Fragment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.ClusterIndex, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>);
    }
  }
}

void type metadata accessor for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>)
  {
    lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>);
    }
  }
}

void type metadata completion function for TextEffectImplementation.ResolvedMap.Key()
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>()
{
  result = lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>;
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex> and conformance <> RangeSet<A>);
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v6 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v6)
      {
        v9 = v6;
        result = v7(&v8, &v10, &v9);
        if (!v4)
        {
          ++v6;
          v10 = v8;
          if (a4 != v6)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a7 != a8)
  {
    v10 = a7;
    if (a8 >= a7)
    {
      v11 = result;
      while (a8 != v10)
      {
        v13 = v10;
        result = v11(v12, &v14, &v13);
        if (!v8)
        {
          ++v10;
          v14 = *v12;
          v15 = *&v12[1];
          v16 = *&v12[2];
          v17 = *&v12[3];
          if (a8 != v10)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(void *__return_ptr, double *, uint64_t), double result, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v15 = result;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v8 = *(a7 + 16);
  if (v8)
  {
    v11 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
    v12 = a7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      a1(v14, &v15, v12);
      if (v7)
      {
        break;
      }

      result = *v14;
      v15 = *v14;
      v16 = *&v14[1];
      v17 = *&v14[2];
      v18 = *&v14[3];
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(double *__return_ptr, double *, unint64_t), double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    a1(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        a2 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        (a1)(&v15, &v16);
      }
    }
  }

  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO15ChunkCollectionV_AK6TimingV0J033_363E424B8D24CACCD5AAF4ADF34E118BLLVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v22;
  for (i = (a3 + 48); ; i += 2)
  {
    v9 = *i;
    v18[0] = *(i - 1);
    v18[1] = v9;
    a1(&v19, v18);
    if (v3)
    {
      break;
    }

    v10 = v19;
    v11 = v20;
    v12 = v21;
    v22 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v5 = v22;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 32 * v14;
    *(v15 + 32) = v10;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7CGPointVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v19 = a3 + v8;
      a1(&v20, &v19);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v6 & 1) == 0))
  {
LABEL_11:
    swift_endAccess();
    __break(1u);
    goto LABEL_12;
  }

  swift_endAccess();
  v7 = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v7 + 16);

  if (v8)
  {

    v10 = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
    if (!v10)
    {
LABEL_13:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v10 + 32);

      *a1 = v3;
      a1[1] = v4;
      a1[2] = v5;
      a1[3] = v12;
      a1[4] = 0;
      a1[5] = v11;
      a1[6] = 0;
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  a1[6] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

char *Text.Layout.Line.xranges(range:metrics:)(CFIndex a1, CFIndex a2, uint64_t a3)
{
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v16 = type metadata accessor for Text.Effect.InteractionMetrics();
  v115 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Text.Layout.Run();
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Text.Effect.RangeCoordinateSpace(0);
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v21 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v94 - v27;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace, v9);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v108 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v94 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v110 = &v94 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v113 = (&v94 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v94 - v37;
  v116 = Text.Layout.Line.line.getter();
  if (!v116)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v101 = v38;
  v102 = a3;
  v39 = Text.Layout.Line.characterRange.getter();
  if (v39 <= a1)
  {
    v41 = a1;
  }

  else
  {
    v41 = v39;
  }

  if (v40 >= a2)
  {
    v42 = a2;
  }

  else
  {
    v42 = v40;
  }

  if (v41 >= v42)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v98 = a1;
  v99 = a2;
  v100 = v3;
  if ((Text.Layout.Line.containsRightToLeft.getter() & 1) == 0)
  {
    v43 = v116;
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v116, v41, 0);
    v5 = CTLineGetOffsetForStringIndex(v43, v42, 0);
    outlined init with copy of TextRenderLayer.Layout?(v102, v15, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v44 = v115;
    if ((*(v115 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of TextRenderLayer.Layout?(v15, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    }

    else
    {
      outlined init with take of TextRenderLayer.Layout(v15, v18, type metadata accessor for Text.Effect.InteractionMetrics);
      if (OffsetForStringIndex < v5)
      {
        if (OffsetForStringIndex <= v5)
        {
          v45 = *(v114 + 24);
          v46 = *MEMORY[0x1E697E7D0];
          v47 = type metadata accessor for LayoutDirection();
          (*(*(v47 - 8) + 104))(v21 + v45, v46, v47);
          *v21 = OffsetForStringIndex;
          v21[1] = v5;
          *(v21 + 2) = v41;
          *(v21 + 3) = v42;
          type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_195CC8D00;
          outlined init with copy of Text.Effect.Composition(v18, v12, type metadata accessor for Text.Effect.InteractionMetrics);
          (*(v44 + 56))(v12, 0, 1, v16);
          Text.Effect.RangeCoordinateSpace.xrange(using:)(v12);
          OffsetForStringIndex = v49;
          v5 = v50;
          outlined destroy of TextRenderLayer.Layout?(v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
          Text.Layout.Line.origin.getter();
          v52 = OffsetForStringIndex + v51;
          v53 = v5 + v51;
          if (v52 <= v53)
          {
            *(v48 + 32) = v52;
            *(v48 + 40) = v53;

            outlined destroy of Text.Effect.Composition(v21, type metadata accessor for Text.Effect.RangeCoordinateSpace);
            outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.InteractionMetrics);
            return v48;
          }

          goto LABEL_56;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      outlined destroy of Text.Effect.Composition(v18, type metadata accessor for Text.Effect.InteractionMetrics);
    }

    if (OffsetForStringIndex < v5)
    {
      type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_195CC8D00;
      if (OffsetForStringIndex > v5)
      {
        __break(1u);
      }

      else
      {
        v56 = v55;
        Text.Layout.Line.origin.getter();
        v58 = OffsetForStringIndex + v57;
        v59 = v5 + v57;
        if (v58 <= v59)
        {
          *(v56 + 32) = v58;
          *(v56 + 40) = v59;

          return v56;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v60 = *(v111 + 56);
  v61 = v114;
  v97 = v111 + 56;
  v96 = v60;
  v60(v101, 1, 1, v114);
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v62 = v118;
  if (v117 < v118)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v118 != v117)
  {
    v115 = v117;
    if (v118 >= v117)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
      goto LABEL_50;
    }

    v65 = (v111 + 48);
    v95 = v103 + 8;
    v103 = MEMORY[0x1E69E7CC0];
    v67 = v112;
    v66 = v113;
    v68 = v104;
    v69 = v110;
    while (1)
    {
      v70 = v62;
      Text.Layout.Line.xrange(runIndex:range:)(v62, v98, v99, v66);
      v66 = v113;
      v71 = *v65;
      if ((*v65)(v113, 1, v61) != 1)
      {
        break;
      }

      outlined destroy of TextRenderLayer.Layout?(v66, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
LABEL_32:
      v62 = v70 + 1;
      if (v115 == v70 + 1)
      {
        goto LABEL_27;
      }
    }

    outlined init with take of TextRenderLayer.Layout(v66, v68, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    v72 = v101;
    outlined init with copy of TextRenderLayer.Layout?(v101, v69, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    if (v71(v69, 1, v61) == 1)
    {
      outlined destroy of TextRenderLayer.Layout?(v72, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      outlined destroy of TextRenderLayer.Layout?(v69, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      outlined init with take of TextRenderLayer.Layout(v68, v72, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v73 = v72;
    }

    else
    {
      outlined init with take of TextRenderLayer.Layout(v69, v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      if (vabdd_f64(*(v67 + 8), *v68) < 0.001)
      {
        v74 = *(v67 + 24);
        v75 = *(v68 + 16);
        if (__OFSUB__(v75, v74))
        {
          goto LABEL_57;
        }

        if (v75 == v74)
        {
          v76 = *(v67 + 16);
          v77 = *(v68 + 24);
          if (v77 < v76)
          {
            goto LABEL_59;
          }

          OffsetForStringIndex = *v67;
          v5 = *(v68 + 8);
          if (*v67 > v5)
          {
            goto LABEL_60;
          }

          v78 = v106;
          Text.Layout.Line.subscript.getter();
          v79 = v114;
          v80 = v105;
          Text.Layout.Run.layoutDirection.getter();
          (*v95)(v78, v107);
          outlined destroy of Text.Effect.Composition(v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          outlined destroy of Text.Effect.Composition(v68, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          v81 = v101;
          outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          *v80 = OffsetForStringIndex;
          *(v80 + 8) = v5;
          *(v80 + 16) = v76;
          *(v80 + 24) = v77;
          v61 = v79;
          v96(v80, 0, 1, v79);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v80, v81, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
          v69 = v110;
          goto LABEL_48;
        }
      }

      Text.Effect.RangeCoordinateSpace.xrange(using:)(v102);
      OffsetForStringIndex = v82;
      v5 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
      }

      v85 = *(v103 + 2);
      v84 = *(v103 + 3);
      if (v85 >= v84 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v103);
      }

      outlined destroy of Text.Effect.Composition(v67, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v86 = v101;
      outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v87 = v103;
      *(v103 + 2) = v85 + 1;
      v88 = &v87[16 * v85];
      *(v88 + 4) = OffsetForStringIndex;
      *(v88 + 5) = v5;
      outlined init with take of TextRenderLayer.Layout(v68, v86, type metadata accessor for Text.Effect.RangeCoordinateSpace);
      v73 = v86;
      v67 = v112;
    }

    v96(v73, 0, 1, v61);
LABEL_48:
    v66 = v113;
    goto LABEL_32;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v63 = v101;
  v64 = v108;
  outlined init with copy of TextRenderLayer.Layout?(v101, v108, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  if ((*(v111 + 48))(v64, 1, v61) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v63, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);

    outlined destroy of TextRenderLayer.Layout?(v64, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
    return v103;
  }

  outlined init with take of TextRenderLayer.Layout(v64, v109, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  Text.Effect.RangeCoordinateSpace.xrange(using:)(v102);
  OffsetForStringIndex = v89;
  v5 = v90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_50:
  v92 = *(v103 + 2);
  v91 = *(v103 + 3);
  if (v92 >= v91 >> 1)
  {
    v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v103);
  }

  outlined destroy of Text.Effect.Composition(v109, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  outlined destroy of TextRenderLayer.Layout?(v101, &lazy cache variable for type metadata for Text.Effect.RangeCoordinateSpace?, type metadata accessor for Text.Effect.RangeCoordinateSpace);
  result = v103;
  *(v103 + 2) = v92 + 1;
  v93 = &result[16 * v92];
  *(v93 + 4) = OffsetForStringIndex;
  *(v93 + 5) = v5;
  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v13 = *(v6 - 8);
    outlined init with copy of Text.Effect.Composition(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for Text.Effect.SegmentInteraction.Element);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Text.Effect.InteractionMetrics();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(a1, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      outlined init with take of TextRenderLayer.Layout(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for Text.Effect.InteractionMetrics);
      specialized _NativeDictionary._delete(at:)(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of TextRenderLayer.Layout?(v8, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  }

  else
  {
    outlined init with take of TextRenderLayer.Layout(a1, v13, type metadata accessor for Text.Effect.InteractionMetrics);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CA0];
    outlined destroy of TextEffectsAnimationController.Timing?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    outlined destroy of TextEffectsAnimationController.Timing?(v7, &lazy cache variable for type metadata for Any?, v5 + 8);
  }
}

uint64_t specialized RangeSet.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6981010];
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v8, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  (*(v11 + 16))(v13, v16, v10);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Sequence.makeIterator()();
  v17 = *(v5 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v17] == v30[0])
  {
    v18 = 0;
LABEL_19:
    outlined destroy of Text.Effect.Composition(v7, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    (*(v11 + 8))(v16, v10);
    return v18;
  }

  v27 = v16;
  v28 = v11;
  v19 = __OFSUB__(a2, a1);
  LODWORD(v29) = v19;
  while (1)
  {
    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v23 = v21[1];
    v20(v30, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    if (v22 >= a2 || v23 <= a1)
    {
      goto LABEL_7;
    }

    if (__OFSUB__(v23, v22))
    {
      break;
    }

    if (v23 != v22)
    {
      if (v29)
      {
        goto LABEL_21;
      }

      if (a2 != a1)
      {
        v18 = 1;
LABEL_18:
        v16 = v27;
        v11 = v28;
        goto LABEL_19;
      }
    }

LABEL_7:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v17] == v30[0])
    {
      v18 = 0;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL specialized RangeSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6981010];
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  v24 = v14;
  v25 = v9;
  (*(v9 + 16))(v11, v14, v8);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Sequence.makeIterator()();
  v15 = *(v3 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v16 = *&v5[v15];
    v17 = v28[0];
    if (v16 == v28[0])
    {
      break;
    }

    v18 = dispatch thunk of Collection.subscript.read();
    v20 = *v19;
    v21 = v19[1];
    v18(v28, 0);
    dispatch thunk of Collection.formIndex(after:)();
  }

  while (v20 > v26 || v21 < v27);
  outlined destroy of Text.Effect.Composition(v5, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
  (*(v25 + 8))(v24, v8);
  return v16 != v17;
}

uint64_t Text.Layout.Line.baseWritingDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Text.Layout.Run();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Text.Layout.Line();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() < 1)
  {
    goto LABEL_12;
  }

  Text.Layout.Line.subscript.getter();
  if (one-time initialization token for kitParagraphStyle != -1)
  {
    swift_once();
  }

  Text.Layout.Run.subscript.getter();
  (*(v3 + 8))(v5, v2);
  if (!v17)
  {
    outlined destroy of TextEffectsAnimationController.Timing?(v16, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_8;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = [objc_allocWithZone(MEMORY[0x1E69DB7D0]) init];
    goto LABEL_9;
  }

  v6 = v18;
LABEL_9:
  v7 = [v6 baseWritingDirection];

  if (v7 == 1)
  {
    v8 = MEMORY[0x1E697E7D8];
    goto LABEL_15;
  }

  if (!v7)
  {
    v8 = MEMORY[0x1E697E7D0];
LABEL_15:
    v12 = *v8;
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

LABEL_12:
  v9 = [objc_opt_self() defaultWritingDirectionForLanguage_];
  v10 = type metadata accessor for LayoutDirection();
  if (v9 == 1)
  {
    v11 = MEMORY[0x1E697E7D8];
  }

  else
  {
    v11 = MEMORY[0x1E697E7D0];
  }

  return (*(*(v10 - 8) + 104))(a1, *v11, v10);
}

uint64_t TextEffectsAnimationController.evaluateWithTraitCollection(_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_176;
  v8 = _Block_copy(v11);

  _NSTextCustomRenderingDelegateWillDraw(v6, 0, v8);
  swift_unknownObjectRelease();
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t TextEffectsAnimationController.state(for:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v3[8];
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 120 * v9;
      v12 = *(v11 + 112);
      v13 = *(v11 + 96);
      v14 = *(v11 + 64);
      v112 = *(v11 + 80);
      v113 = v13;
      v114 = v12;
      v16 = *v11;
      v15 = *(v11 + 16);
      v17 = *(v11 + 32);
      v110 = *(v11 + 48);
      v111 = v14;
      v108 = v15;
      v109 = v17;
      v107 = v16;
      v92 = *(&v112 + 1);
      v18 = *(&v113 + 1);
      v93 = v113;
      v19 = v12;
      v20 = v14;
      v91 = *(&v110 + 1);
      v21 = *(&v14 + 1);
      v120 = *v11;
      v82 = *&v15;
      v119 = BYTE8(v15);
      v22 = *(v11 + 25);
      *(v118 + 15) = *(v11 + 40);
      v118[0] = v22;
      v117 = v112;
      v23 = *(v11 + 81);
      *(v116 + 3) = *(v11 + 84);
      v116[0] = v23;
      v115 = v12;
      if (v112 == 1)
      {
        outlined init with copy of TextEffectsAnimationController.Timing(&v107, &v94);
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v92, v93, v18, v19);
        v86 = 1;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v91, v20, v21, 1);
      }

      else
      {
        outlined init with copy of TextEffectsAnimationController.Timing(&v107, &v94);
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v92, v93, v18, v19);
        v87 = v19;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v91, v20, v21, 0);
        v40 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, v91, v20, v21);
        v41 = v20;
        v20 = v42;
        v89 = v18;
        v44 = v43;
        v46 = v45;

        v86 = v46;
        v46 &= 1u;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v40, v20, v44, v46);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v91, v41, v21, 0);
        v117 = v46;
        swift_beginAccess();
        TextEffectsAnimationController.TimingMap.resolve(_:from:)(a1, v40, v20, v44, v46);
        swift_endAccess();
        v47 = v46;
        v19 = v87;
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v40, v20, v44, v47);
        v91 = v40;
        v21 = v44;
        v18 = v89;
      }

      v88 = v20;
      v84 = v21;
      if (v19)
      {

        v85 = 1;
      }

      else
      {
        v48 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, v92, v93, v18);
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v85 = v54;
        v54 &= 1u;
        outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v48, v50, v52, v54);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v92, v93, v18, 0);
        v115 = v54;
        swift_beginAccess();
        TextEffectsAnimationController.TimingMap.resolve(_:to:)(a1, v48, v50, v52, v54);
        swift_endAccess();
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v48, v50, v52, v54);
        v92 = v48;
        v93 = v50;
        v20 = v88;
        v18 = v52;
      }

      v90 = v18;
      v31 = BYTE9(v108);
      v55 = *&v109;
      v56 = BYTE8(v109);
      if ((BYTE8(v108) & 1) == 0)
      {
        v38 = *&v108;
        v59 = v82;
        goto LABEL_34;
      }

      if (v86)
      {

        v57 = v91;

        v58 = v20;
        if ((v85 & 1) == 0)
        {
LABEL_17:
          v81 = 0;
          v83 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        if ((v85 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v81 = v93;

LABEL_21:
      v60 = v4[8];
      if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v62 & 1) != 0) && (v63 = *(v60 + 56) + 120 * v61, (*(v63 + 24) & 1) == 0))
      {
        v59 = *(v63 + 16);

        v69 = 0;
      }

      else
      {
        swift_beginAccess();
        v64 = Text.Effect.Keyframes.validAnimation(_:)(a1, v4[14]);
        if (v64)
        {
          v65 = v64;
          v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v80 = v56;
          v67 = v4[14];
          v78 = *((*MEMORY[0x1E69E7D40] & *v65) + 0x78);

          v20 = v88;
          *&v79 = COERCE_DOUBLE(v78(v57, v58, v83, v81, v31, v66, 0, v67, v4));
          v77 = v68;

          v56 = v80;

          v69 = 0;
          if (v77)
          {
            *&v59 = 1.0;
          }

          else
          {
            v59 = v79;
          }
        }

        else
        {

          *&v59 = 0.0;
          v69 = 1;
        }
      }

      v119 = v69;
      swift_beginAccess();
      TextEffectsAnimationController.TimingMap.resolve(_:duration:)(a1, v59, v69);
      swift_endAccess();
      if (v69)
      {
        v38 = 1.0;
        v33 = 1;
        v34 = 0;
        v35 = 0.0;
        a3 = 0.0;
        v36 = 0.0;
        if (!v31)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v38 = *&v59;
LABEL_34:
      v36 = 0.0;
      v35 = *(&v107 + 1);
      v34 = v107;
      if (v56)
      {
        if (v56 == 1)
        {
          v33 = 0;
          v36 = v55;
          if (!v31)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v33 = 1;
          if (!v31)
          {
LABEL_45:
            if (v56)
            {
              v32 = 2;
            }

            else
            {
              v32 = 3;
            }

            if (v86)
            {

              v28 = v91;

              v29 = v20;
            }

            else
            {
              v28 = 0;
              v29 = 0;
            }

            v76 = v59;
            if (v85)
            {
              v39 = v93;
            }

            else
            {
              v37 = 0;
              v39 = 0;
            }

            v94 = v120;
            v95 = v76;
            v96 = v119;
            *v97 = v118[0];
            *&v97[15] = *(v118 + 15);
            v98 = v91;
            v99 = v88;
            v100 = v84;
            v101 = v117;
            *v102 = v116[0];
            *&v102[3] = *(v116 + 3);
            v103 = v92;
            v104 = v93;
            v105 = v90;
            v106 = v115;
            result = outlined destroy of TextEffectsAnimationController.Timing(&v94);
            goto LABEL_55;
          }
        }
      }

      else
      {
        v33 = 1;
        a3 = v55;
        if (!v31)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      swift_beginAccess();
      v70 = Text.Effect.Keyframes.validTransform(_:)(a1, v4[14]);
      v71 = 0.5;
      if (v70)
      {
        v72 = v70;
        *&v73 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v70) + 0x108))());
        v75 = v74;

        if ((v75 & 1) == 0)
        {
          v71 = *&v73;
        }
      }

      v35 = a3 - v38 * v71;
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  v24 = v4[11];
  if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v26 & 1) != 0))
  {
    v27 = (*(v24 + 56) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v28 = 0;
    v29 = 0;
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 0.0;
  a3 = 0.0;
  v36 = 0.0;
  v37 = v28;
  v38 = 0.0;
  v39 = v29;
LABEL_55:
  *a2 = v31;
  *(a2 + 8) = v34;
  *(a2 + 16) = v35;
  *(a2 + 24) = a3;
  *(a2 + 32) = v36;
  *(a2 + 40) = v33;
  *(a2 + 48) = v38;
  *(a2 + 56) = v32;
  *(a2 + 64) = v28;
  *(a2 + 72) = v29;
  *(a2 + 80) = v37;
  *(a2 + 88) = v39;
  return result;
}

uint64_t TextEffectsAnimationController.animationInfo(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

void TextEffectsAnimationController.restoreState(_:for:)(char *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v3 + 40) == 1)
  {
    v6 = *(v3 + 56);
  }

  else
  {
    v6 = CACurrentMediaTime();
  }

  swift_beginAccess();
  v7 = *(*(v3 + 72) + 16);
  v8 = *(a1 + 6);
  v9 = *(a1 + 3) - *(a1 + 2);
  v10 = 0.0;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v11 = v6 - v9;
  v12 = a1[56];
  if (v12 == 3)
  {
    v106 = *a1;
    v38 = *(a1 + 8);
    v108 = *(a1 + 9);
    v110 = *(a1 + 10);
    v112 = *(*(v3 + 72) + 16);
    v39 = *(a1 + 11);
    swift_beginAccess();
    v40 = *(v3 + 64);
    v41 = 0uLL;
    if (*(v40 + 16))
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v43)
      {
        v44 = *(v40 + 56) + 120 * v42;
        v45 = *v44;
        v47 = *(v44 + 32);
        v46 = *(v44 + 48);
        *&v149[16] = *(v44 + 16);
        *&v149[32] = v47;
        *v149 = v45;
        v48 = *(v44 + 64);
        v49 = *(v44 + 80);
        v50 = *(v44 + 96);
        v51 = *(v44 + 112);
        v151 = v51;
        *&v150[32] = v49;
        *&v150[48] = v50;
        *v150 = v46;
        *&v150[16] = v48;
        v10 = *v149;
        v103 = *&v149[24];
        v105 = *&v149[8];
        v52 = *&v149[40];
        v53 = v46;
        v99 = *&v150[24];
        v101 = *&v150[8];
        v97 = *&v150[40];
        v54 = *(&v50 + 1);
        outlined init with copy of TextEffectsAnimationController.Timing(v149, v146);
        v56 = v97;
        v55 = v99;
        v58 = v101;
        v57 = v103;
        v41 = v105;
        v59 = v10;
        if (v53 != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v51 = 0;
        v54 = 0;
        v52 = 0;
        v57 = 0uLL;
        v58 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v41 = 0uLL;
      }
    }

    else
    {
      v51 = 0;
      v54 = 0;
      v52 = 0;
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
    }

    v53 = 1;
    v59 = v11;
LABEL_27:
    v135 = v10;
    v136 = v41;
    v137 = v57;
    v138 = v52;
    v139 = v53;
    v140 = v58;
    v141 = v55;
    v142 = v56;
    v143 = v54;
    v144 = v51;
    outlined destroy of TextEffectsAnimationController.Timing?(&v135, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v65 = specialized Dictionary.subscript.modify(v149, a2);
    if (*(v66 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v65)(v149, 0);
    specialized Set._Variant.remove(_:)(a2);
    specialized Dictionary.removeValue(forKey:)(a2, v131);
    outlined destroy of TextEffectsAnimationController.Timing?(v131, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v134 = 0;
    v133 = 1;
    v132 = 1;
    *v149 = v59;
    *&v149[8] = v11;
    *&v149[16] = v8;
    v149[24] = 0;
    v149[25] = v106;
    *&v149[32] = 0;
    v149[40] = 2;
    *v150 = 0;
    *&v150[8] = v38;
    *&v150[16] = v108;
    *&v150[24] = 0;
    v150[32] = 1;
    *&v150[40] = v110;
    *&v150[48] = v39;
    *&v150[56] = 0;
    v151 = 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v146 = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 64) = *v146;
    v68 = specialized Dictionary.subscript.modify(v146, a2);
    if (*(v69 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
    }

    (v68)(v146, 0);
    v7 = v112;
    specialized Set._Variant.insert(_:)(v146, a2);
    v70 = *(v3 + 64);
    if (*(v70 + 16))
    {
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v72)
      {
        v73 = *(v70 + 56) + 120 * v71;
        v74 = *v73;
        v75 = *(v73 + 16);
        v76 = *(v73 + 48);
        v117 = *(v73 + 32);
        v118 = v76;
        v116[0] = v74;
        v116[1] = v75;
        v77 = *(v73 + 64);
        v78 = *(v73 + 80);
        v79 = *(v73 + 96);
        v122 = *(v73 + 112);
        v120 = v78;
        v121 = v79;
        v119 = v77;
        v80 = BYTE8(v117);
        v81 = *v73;
        v82 = *(v73 + 16);
        v83 = *(v73 + 48);
        v125 = *(v73 + 32);
        v126 = v83;
        v123 = v81;
        v124 = v82;
        v84 = *(v73 + 64);
        v85 = *(v73 + 80);
        v86 = *(v73 + 96);
        v130 = *(v73 + 112);
        v128 = v85;
        v129 = v86;
        v127 = v84;
        outlined init with copy of TextEffectsAnimationController.Timing(v116, v146);
        TextEffectsAnimationController.Timing.endAnimationInterval()();
        if (v80 != 1)
        {
          v87 = *(v116 + 1);
          if (*(v116 + 1) < v6)
          {
            v87 = v6;
          }

          *&v125 = v87;
          BYTE8(v125) = 0;
        }

        *&v147[16] = v127;
        *&v147[32] = v128;
        *&v147[48] = v129;
        v148 = v130;
        *v146 = v123;
        *&v146[16] = v124;
        *&v146[32] = v125;
        *v147 = v126;
        v88 = BYTE8(v125);
        outlined init with copy of TextEffectsAnimationController.Timing(v146, v114);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *&v114[0] = *(v3 + 64);
        *(v3 + 64) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, a2, v89);
        *(v3 + 64) = *&v114[0];
        if (v80)
        {
          if (!v88)
          {
            specialized Set._Variant.remove(_:)(a2);
          }
        }

        else if (v88)
        {
          specialized Set._Variant.insert(_:)(&v113, a2);
        }

        v114[4] = v127;
        v114[5] = v128;
        v114[6] = v129;
        v115 = v130;
        v114[0] = v123;
        v114[1] = v124;
        v114[2] = v125;
        v114[3] = v126;
        outlined destroy of TextEffectsAnimationController.Timing(v114);
      }
    }

    goto LABEL_43;
  }

  if (v12 != 2)
  {
    goto LABEL_44;
  }

  v111 = *(*(v3 + 72) + 16);
  v13 = *a1;
  v14 = *(a1 + 8);
  v107 = *(a1 + 9);
  v15 = *(a1 + 10);
  v16 = *(a1 + 11);
  swift_beginAccess();
  v17 = *(v3 + 64);
  v18 = 0uLL;
  v19 = 0.0;
  v109 = v15;
  v104 = v13;
  if (*(v17 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v21)
    {
      v22 = *(v17 + 56) + 120 * v20;
      v23 = *v22;
      v25 = *(v22 + 32);
      v24 = *(v22 + 48);
      *&v149[16] = *(v22 + 16);
      *&v149[32] = v25;
      *v149 = v23;
      v26 = *(v22 + 64);
      v27 = *(v22 + 80);
      v28 = *(v22 + 96);
      v29 = *(v22 + 112);
      v151 = v29;
      *&v150[32] = v27;
      *&v150[48] = v28;
      *v150 = v24;
      *&v150[16] = v26;
      v19 = *v149;
      v100 = *&v149[24];
      v102 = *&v149[8];
      v30 = *&v149[40];
      v31 = v24;
      v96 = *&v150[24];
      v98 = *&v150[8];
      v95 = *&v150[40];
      v32 = *(&v28 + 1);
      outlined init with copy of TextEffectsAnimationController.Timing(v149, v146);
      v34 = v95;
      v33 = v96;
      v36 = v98;
      v35 = v100;
      v18 = v102;
      v37 = v19;
      if (v31 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = 0;
      v32 = 0;
      v30 = 0;
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v18 = 0uLL;
    }
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v30 = 0;
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  v31 = 1;
  v37 = v11;
LABEL_20:
  *v146 = v19;
  *&v146[8] = v18;
  *&v146[24] = v35;
  *&v146[40] = v30;
  *v147 = v31;
  *&v147[8] = v36;
  *&v147[24] = v33;
  *&v147[40] = v34;
  *&v147[56] = v32;
  v148 = v29;
  outlined destroy of TextEffectsAnimationController.Timing?(v146, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  v60 = specialized Dictionary.subscript.modify(v149, a2);
  if (*(v61 + 48) != 1)
  {
    TextEffectsAnimationController.Timing.endAnimationInterval()();
  }

  (v60)(v149, 0);
  specialized Set._Variant.remove(_:)(a2);
  specialized Dictionary.removeValue(forKey:)(a2, &v135);
  outlined destroy of TextEffectsAnimationController.Timing?(&v135, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  LOBYTE(v116[0]) = 0;
  LOBYTE(v114[0]) = 1;
  v145 = 1;
  *v149 = v37;
  *&v149[8] = v11;
  *&v149[16] = v8;
  v149[24] = 0;
  v149[25] = v104;
  *&v149[32] = 0;
  v149[40] = 2;
  *v150 = 0;
  *&v150[8] = v14;
  *&v150[16] = v107;
  *&v150[24] = 0;
  v150[32] = 1;
  *&v150[40] = v109;
  *&v150[48] = v16;
  *&v150[56] = 0;
  v151 = 1;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v131[0] = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, a2, v62);
  *(v3 + 64) = v131[0];
  v63 = specialized Dictionary.subscript.modify(v131, a2);
  if (*(v64 + 48) != 1)
  {
    TextEffectsAnimationController.Timing.beginAnimationInterval()();
  }

  (v63)(v131, 0);
  v7 = v111;
  specialized Set._Variant.insert(_:)(v131, a2);
LABEL_43:
  swift_endAccess();
LABEL_44:
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_195CC8D00;
  *(v90 + 32) = a2;
  v91 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v90);
  swift_setDeallocating();
  swift_deallocClassInstance();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v93 = Strong;
    specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v91);
  }

  v94 = *(*(v3 + 72) + 16);
  if (v7)
  {
    if (!v94)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v94)
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
}