uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, char *__dst, uint64_t a3, uint64_t a4, double a5)
{
  v7 = result;
  if (!__dst)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    *(v7 + 8) = a5;
    *(v7 + 16) = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = __dst;
      v11 = 0;
      v12 = (a4 + 144);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = *(v12 - 2);
        v20[4] = *(v12 - 3);
        v20[5] = v14;
        v15 = *v12;
        v21 = *(v12 - 1);
        v22 = v15;
        v16 = *(v12 - 6);
        v20[0] = *(v12 - 7);
        v20[1] = v16;
        v17 = *(v12 - 4);
        v20[2] = *(v12 - 5);
        v20[3] = v17;
        v23 = v15;
        v18 = *(&v21 + 1) + a5;
        memmove(v10, v12 - 7, 0x68uLL);
        *(v10 + 13) = v18;
        *(v10 + 7) = v23;
        if (v13 == v11)
        {
          outlined init with copy of Text.Effect.DisplayInfo(v20, v19);
          goto LABEL_12;
        }

        result = outlined init with copy of Text.Effect.DisplayInfo(v20, v19);
        ++v11;
        v12 += 8;
        v10 += 128;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = v5 - 1;
      if (v5 - 1 >= (a3 - 1))
      {
        v6 = a3 - 1;
      }

      v7 = v6 + 1;
      if (v7 > 0x10 && &a2[-a4 - 32] >= 0x10)
      {
        v10 = a2;
        v11 = v7 & 0xF;
        if ((v7 & 0xF) == 0)
        {
          v11 = 16;
        }

        v8 = v7 - v11;
        v9 = v8 + 1;
        a2 += v8;
        v12 = v8;
        v13 = (a4 + 32);
        do
        {
          v14 = *v13++;
          *v10++ = v14;
          v12 -= 16;
        }

        while (v12);
      }

      else
      {
        v8 = 0;
        v9 = 1;
      }

      while (1)
      {
        *a2 = *(a4 + 32 + v8);
        if (a3 == v9)
        {
          break;
        }

        v8 = v9;
        ++a2;
        if (v5 + 1 == ++v9)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      a3 = v5;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized static Text.Effect.Markers.MarkerType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    return a4 & (a1 == a3);
  }

  if (a4)
  {
    return 0;
  }

  _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(a1, a3);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = Dictionary<>.underlineStyle.getter(a1);
  v10 = v9;
  v11 = Dictionary<>.underlineStyle.getter(a3);
  if (v10)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v14 = MEMORY[0x1E69DB650];
    v15 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB650]);
    v16 = Dictionary<>.foregroundColor.getter(a3, v14);
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_19;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      goto LABEL_21;
    }

    v19 = MEMORY[0x1E69DB648];
    v15 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB648]);
    v20 = Dictionary<>.foregroundColor.getter(a3, v19);
    v17 = v20;
    if (v15)
    {
      if (v20)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
LABEL_24:
          v22 = MEMORY[0x1E69DB750];
          v23 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB750]);
          v24 = Dictionary<>.foregroundColor.getter(a3, v22);
          v25 = v24;
          if (v23)
          {
            if (v24)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
              v26 = static NSObject.== infix(_:_:)();

              return v26 & 1;
            }
          }

          else
          {
            if (!v24)
            {
              return 1;
            }
          }
        }

        return 0;
      }

LABEL_19:

      return 0;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_21:

    return 0;
  }

  v13 = v11;
  result = 0;
  if ((v12 & 1) == 0 && v8 == v13)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t outlined copy of Text.Effect.Markers.MarkerType(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void type metadata accessor for RangeSet<Int><>.IndexSequence(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Int and conformance Int();
    v7 = a3(a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6570], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<Text.Effect.Markers>(0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines, &type metadata for Text.Effect.RenderSegmentation.StaticLines, MEMORY[0x1E69E6CF0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines()
{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

uint64_t outlined consume of Text.Effect.Markers.MarkerType(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Range<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Text.Effect.MarkerLayoutInfo.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for Text.Effect.MarkerLayoutInfo.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Markers.Marker(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Markers.Marker(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Path?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>)
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(255, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>);
    }
  }
}

unint64_t type metadata accessor for (_:_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<JitterTextEffect>, lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect, &type metadata for JitterTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>, lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect, &type metadata for ScaleRippleTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect()
{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect()
{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect()
{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Effect.Configuration<BigTextEffect>.StyleModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, a3, a4, a5, type metadata accessor for Text.Effect.Configuration.StyleModifier);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect()
{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect()
{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect()
{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect()
{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect()
{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect()
{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect()
{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect()
{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect()
{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.BaseContent>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.BaseContent>)
  {
    type metadata accessor for Text.Effect.BaseContent(255);
    lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent(&lazy protocol witness table cache variable for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent, type metadata accessor for Text.Effect.BaseContent);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.BaseContent>);
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.Markers.MarkerType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Markers.MarkerType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo()
{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.MarkerLayoutInfo> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, a2, lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo, &type metadata for Text.Effect.MarkerLayoutInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.Markers>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.MarkerLayoutInfo> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Slice<Text.Effect.MarkerLayoutInfo>, lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo, &type metadata for Text.Effect.MarkerLayoutInfo, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.RenderSegmentation.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase()
{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NoTextEffectState and conformance NoTextEffectState()
{
  result = lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState;
  if (!lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState;
  if (!lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState);
  }

  return result;
}

uint64_t closure #1 in GradientForegroundTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;

  GraphicsContext.opacity.setter();
  v8 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) init];
  LODWORD(v9) = *MEMORY[0x1E69C7138];
  LODWORD(v10) = -1.0;
  LODWORD(v11) = -1.0;
  [v8 addConditionWithFillColor:1 colorSpace:{v10, v11, 0.0, v9}];
  GraphicsContext.drawingState.getter();
  RBDrawingStateAddPredicateStyle();
  (*(v5 + 104))(v7, *MEMORY[0x1E69814C8], v4);
  Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
  v16 = *(a2 + 8);
  v17 = *a2;
  v18 = *(a2 + 32);
  v28[0] = *(a2 + 16);
  v28[1] = v18;
  v28[2] = *(a2 + 48);
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = v12 | (v13 << 32);
    v21 = v14 | (v15 << 32);
    v22 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v23 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v28, v20, v21, 0, &v27, v17);
      v23 += v24;
      --v19;
    }

    while (v19);
  }
}

unint64_t instantiation function for generic protocol witness table for GradientForegroundTextEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect()
{
  result = lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect;
  if (!lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect;
  if (!lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect);
  }

  return result;
}

uint64_t specialized GradientForegroundTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v45 = type metadata accessor for GraphicsContext.Shading();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v12 = *(a1 + 32);
  v48[0] = *(a1 + 16);
  v48[1] = v12;
  v48[2] = *(a1 + 48);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v17 = *(v11 + 16);
  if (v17)
  {
    v18 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v20 = *(v11 + 16);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v18, v10);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v48);
      v55.origin.x = v21;
      v55.origin.y = v22;
      v55.size.width = v23;
      v55.size.height = v24;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v50 = CGRectUnion(v49, v55);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      outlined destroy of Text.Effect.ResolvedDrawing.Operation(v10);
      v18 += v19;
      --v20;
    }

    while (v20);
  }

  if (*(a2 + 64) && (type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>(), (v25 = swift_dynamicCastClass()) != 0))
  {
    v26 = *(v25 + 16);
    if (!*(a2 + 80))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v26 = 0;
    if (!*(a2 + 80))
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v26 == v28)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_12:
  if (v26)
  {
    LOBYTE(v28) = 0;
LABEL_14:
    if ((*(a2 + 56) & 0xFE) == 2)
    {
      v29 = *(a2 + 48);
      v30 = *(a2 + 24) - *(a2 + 16);
      if (v30 >= 0.0)
      {
        v35 = v30 / v29;
        v32 = 0.0;
        if (v35 >= 0.0)
        {
          if (v35 <= 1.0)
          {
            v32 = v35;
          }

          else
          {
            v32 = 1.0;
          }
        }
      }

      else
      {
        v31 = 0.0;
        v32 = 0.0 / v29;
        if (0.0 / v29 < 0.0 || (v31 = 1.0, v32 > 1.0))
        {
          v33 = 0.0;
          if (v28)
          {
LABEL_30:
            v36 = v33 + v31 * 0.5 + v33 + v31 * 0.5 + -1.0;
            v34 = 1.0 - v36 * v36;
            if (!v17)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

LABEL_29:
          v33 = 0.5;
          goto LABEL_30;
        }
      }

      v33 = 0.0;
      v31 = v32;
      if (v28)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_20:
    v34 = 1.0;
    if (v28)
    {
      goto LABEL_22;
    }
  }

  v34 = 0.0;
LABEL_22:
  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_31:
  v37 = *a1;
  v38 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v39 = *(v8 + 72);
  do
  {
    Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v48, 0, 0, 1, a3, v37);
    v38 += v39;
    --v17;
  }

  while (v17);
LABEL_33:
  v46 = *a3;
  MEMORY[0x1EEE9AC00](v46);
  *(&v43 - 2) = v34;
  *(&v43 - 1) = a1;

  GraphicsContext.clipToLayer(opacity:options:content:)();
  Path.init(_:)();
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_195CC8D70;
  *(v40 + 32) = static Color.red.getter();
  *(v40 + 40) = static Color.green.getter();
  MEMORY[0x19A8BD450](v40);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  CGRectGetMinY(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  CGRectGetMaxX(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  CGRectGetMaxY(v54);
  v41 = v43;
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v47);
  (*(v44 + 8))(v41, v45);
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<Color>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Color>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>);
    }
  }
}

void type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>()
{
  if (!lazy cache variable for type metadata for Text.Effect.ConcretePhase<GradientForegroundTextEffect>)
  {
    lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect();
    v0 = type metadata accessor for Text.Effect.ConcretePhase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GradientForegroundTextEffect>);
    }
  }
}

void Text.Effect.ClusterTransformMap.subscript.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!*(a2 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) == 0))
  {
    v9 = 1;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    goto LABEL_7;
  }

  v8 = *(*(a2 + 56) + 8 * v6);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a1 + 16))
  {
    v9 = 0;
    v10 = (a1 + (v8 << 6));
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
LABEL_7:
    *a3 = v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
    *(a3 + 48) = v14;
    *(a3 + 64) = v9;
    return;
  }

  __break(1u);
}

uint64_t specialized static Text.Effect.ClusterTransformMap.byWords(fragment:)(uint64_t a1)
{
  v94 = type metadata accessor for Text.Layout.Cluster();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v77 - v6;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v77 - v12;
  v80 = a1;
  v14 = *(a1 + 24);
  v15 = *(v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString);
  (*(v5 + 16))(v7, v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v4, v11);
  v16 = v15;
  RangeSet.ranges.getter();
  (*(v5 + 8))(v7, v4);
  if (RangeSet.Ranges.count.getter() == 1)
  {
    RangeSet.Ranges.subscript.getter();
    v17 = *&v99[0];
    RangeSet.Ranges.subscript.getter();
    v18 = v98 - v97;
    if (__OFSUB__(v98, v97))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v18 = 0;
    v17 = -1;
  }

  v19 = CFAttributedStringGetString(v16);
  if (!v19)
  {
    goto LABEL_80;
  }

  v20 = v19;
  v102.location = v17;
  v102.length = v18;
  v21 = specialized Text.Effect.Tokenizer.init(_:range:)(v19, v102);

  v22 = *(v21 + 2);
  if (v22)
  {
    v23 = *(v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    v24 = *(v23 + 16);
    v79 = v21 + 32;
    v91 = v90 + 8;
    v92 = v90 + 16;
    v96 = v23;

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC8];
    v28 = v22;
    v81 = v21;
    v78 = v22;
    v83 = v24;
    do
    {
      if (v25 >= v28)
      {
        goto LABEL_73;
      }

      if (v25 == v22)
      {
        goto LABEL_74;
      }

      if (v24)
      {
        v85 = v27;
        v84 = v25;
        v29 = &v79[16 * v25];
        v30 = 0;
        v32 = *v29;
        v31 = *(v29 + 1);
        *&v89 = v32;
        v87 = v31;
        v82 = v26;
        v86 = *(v26 + 2);
        *&v95 = v96 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v33 = v24;
        do
        {
          v34 = v30 + (v33 >> 1);
          if (__OFADD__(v30, v33 >> 1))
          {
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
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v34 >= *(v96 + 16))
          {
            goto LABEL_65;
          }

          v35 = v90;
          v36 = *(v90 + 72);
          v37 = v94;
          v38 = *(v90 + 16);
          v39 = v93;
          v38(v93, v95 + v36 * v34, v94);
          v40 = Text.Layout.Cluster.characterRange.getter();
          v41 = *(v35 + 8);
          v41(v39, v37);
          if (v40 >= v89)
          {
            v33 >>= 1;
          }

          else
          {
            v33 += ~(v33 >> 1);
          }

          if (v40 < v89)
          {
            v30 = v34 + 1;
          }
        }

        while (v33 > 0);
        v42 = 0;
        v43 = v83;
        v88 = v30;
        do
        {
          v44 = v42 + (v43 >> 1);
          if (__OFADD__(v42, v43 >> 1))
          {
            goto LABEL_66;
          }

          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          if (v44 >= *(v96 + 16))
          {
            goto LABEL_68;
          }

          v45 = v94;
          v46 = v93;
          v38(v93, v95 + v44 * v36, v94);
          v47 = Text.Layout.Cluster.characterRange.getter();
          v48 = v45;
          v49 = v88;
          v41(v46, v48);
          if (v47 >= v87)
          {
            v43 >>= 1;
          }

          else
          {
            v43 += ~(v43 >> 1);
          }

          if (v47 < v87)
          {
            v42 = v44 + 1;
          }
        }

        while (v43 > 0);
        v27 = v85;
        if (v49 >= v42)
        {
          v21 = v81;
          v22 = v78;
          v26 = v82;
          v24 = v83;
          v25 = v84;
        }

        else
        {
          v50 = *(v80 + 48);
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          v21 = v81;
          v22 = v78;
          v24 = v83;
          v25 = v84;
          if (v51)
          {
            goto LABEL_75;
          }

          v53 = v42 + v50;
          if (__OFADD__(v42, v50))
          {
            goto LABEL_76;
          }

          if (v53 < v52)
          {
            goto LABEL_77;
          }

          v54 = v42 + v50;
          Text.Effect.BaseFragment.typographicBounds(for:)(v52, v53, v99);
          v89 = v99[1];
          v95 = v99[0];
          v55 = v100;
          v56 = v101;
          v26 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          }

          v58 = *(v26 + 2);
          v57 = *(v26 + 3);
          v27 = v85;
          if (v58 >= v57 >> 1)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v26);
            v59 = v54;
            v27 = v85;
            v26 = v75;
          }

          else
          {
            v59 = v54;
          }

          *(v26 + 2) = v58 + 1;
          v60 = &v26[64 * v58];
          *(v60 + 4) = v52;
          *(v60 + 5) = v59;
          v61 = v89;
          *(v60 + 3) = v95;
          *(v60 + 4) = v61;
          *(v60 + 10) = v55;
          *(v60 + 11) = v56;
          if (__OFSUB__(v59, v52))
          {
            goto LABEL_78;
          }

          if (v59 != v52)
          {
            v62 = v42 - v88;
            while (1)
            {
              if (v52 >= v59)
              {
                goto LABEL_69;
              }

              v63 = v27;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v97 = v63;
              v66 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
              v67 = v63[2];
              v68 = (v65 & 1) == 0;
              v69 = v67 + v68;
              if (__OFADD__(v67, v68))
              {
                goto LABEL_70;
              }

              v70 = v65;
              if (v63[3] >= v69)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v27 = v97;
                  if ((v65 & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v27 = v97;
                  if ((v70 & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
                v71 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
                if ((v70 & 1) != (v72 & 1))
                {
                  goto LABEL_81;
                }

                v66 = v71;
                v27 = v97;
                if ((v70 & 1) == 0)
                {
LABEL_54:
                  v27[(v66 >> 6) + 8] |= 1 << v66;
                  *(v27[6] + 8 * v66) = v52;
                  *(v27[7] + 8 * v66) = v86;
                  v73 = v27[2];
                  v51 = __OFADD__(v73, 1);
                  v74 = v73 + 1;
                  if (v51)
                  {
                    goto LABEL_72;
                  }

                  v27[2] = v74;
                  goto LABEL_56;
                }
              }

              *(v27[7] + 8 * v66) = v86;
LABEL_56:
              if (__OFSUB__(v54, v52 + 1))
              {
                goto LABEL_71;
              }

              v59 = v54;
              ++v52;
              if (!--v62)
              {
                v25 = v84;
                v21 = v81;
                break;
              }
            }
          }
        }
      }

      ++v25;
      v28 = *(v21 + 2);
    }

    while (v25 != v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v26;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterTransformMap.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterTransformMap.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterTransformMap(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterTransformMap(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EditKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  return Hasher._finalize()();
}

Swift::Int Edit<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Edit<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for Edit(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((((v6 + 1) | v6) + ((v7 + v6) & ~v6) + v7) & ~v6) + ((v7 + v6) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v16 = *a1;
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

uint64_t getEnumTagSinglePayload for EditKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EditKind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type EditKind and conformance EditKind()
{
  result = lazy protocol witness table cache variable for type EditKind and conformance EditKind;
  if (!lazy protocol witness table cache variable for type EditKind and conformance EditKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditKind and conformance EditKind);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Edit<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void one-time initialization function for swiftUI()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x19A8BD5F0](0xD000000000000011, 0x8000000195CDF100);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.swiftUI = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StretchTextEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StretchTextEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase()
{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for FragmentRangeSequence(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FragmentRangeSequence.Iterator(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  outlined init with copy of FragmentRangeSequence.Iterator(a1, v7, type metadata accessor for FragmentRangeSequence);
  v15 = *(v5 + 32);
  v16 = &v7[*(v5 + 28)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v20 = *&v7[v15];
  v19 = *&v7[v15 + 8];
  outlined init with take of Text.Effect.Timing.GlyphTiming(v7, v14, type metadata accessor for Text.Effect.BaseContent);
  v21 = &v14[v9[7]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v14[v9[8]];
  v56 = v14;
  v57 = v20;
  *v22 = v20;
  *(v22 + 1) = v19;
  v54 = v19;
  v55 = v17;
  v23 = &v14[v9[9]];
  *v23 = v17;
  *(v23 + 1) = v18;
  while (1)
  {
    if (v17 >= v57)
    {
      if (__OFSUB__(v57, v17))
      {
        goto LABEL_53;
      }

      if (v57 != v17 || v18 >= v54)
      {
        return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v56, type metadata accessor for FragmentRangeSequence.Iterator);
      }
    }

    outlined init with copy of FragmentRangeSequence.Iterator(v56, v11, type metadata accessor for FragmentRangeSequence.Iterator);
    v24 = *v11;
    v25 = v11[1];
    v26 = v11[2];
    swift_beginAccess();
    v27 = *(v24 + 48);
    v28 = *(v27 + 16);

    if (!v28)
    {
      goto LABEL_57;
    }

    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
    if ((v30 & 1) == 0)
    {
      goto LABEL_57;
    }

    v31 = *(*(v27 + 56) + 16 * v29);
    swift_endAccess();
    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v31 + 16))
    {
      goto LABEL_44;
    }

    v32 = *(v31 + 32 + 8 * v17);
    if (v17)
    {
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v35 = *(*(*(v31 + 32 + 8 * v33) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v43 = __OFADD__(v34, v35);
        v34 += v35;
        if (v43)
        {
          break;
        }

        if (__OFSUB__(v17, ++v33))
        {
          goto LABEL_42;
        }

        if (v17 == v33)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      break;
    }

    v34 = 0;
LABEL_17:

    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v11, type metadata accessor for Text.Effect.BaseContent);
    if (__OFSUB__(v57, v17))
    {
      goto LABEL_45;
    }

    if (v57 == v17)
    {
      v36 = v54;
      if (v54 < v18)
      {
        goto LABEL_55;
      }

      v37 = v23;
      v38 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
      v39 = *(v38 + 16);
      v40 = v34 + v39;
      v41 = __OFADD__(v34, v39);
    }

    else
    {
      v38 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
      v42 = *(v38 + 16);
      v43 = __OFADD__(v34, v42);
      v40 = v34 + v42;
      v41 = __OFADD__(v34, v42);
      if (v43)
      {
        goto LABEL_54;
      }

      v44 = v40 < v34 || v40 < v18;
      if (v44)
      {
        goto LABEL_56;
      }

      v37 = v23;
      v36 = v40;
    }

    if (v41)
    {
      goto LABEL_46;
    }

    if (v40 < v34)
    {
      goto LABEL_47;
    }

    *(v37 + 1) = v40;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_48;
    }

    *v37 = ++v17;
    if (__OFSUB__(v36, v18))
    {
      goto LABEL_49;
    }

    v45 = *(v38 + 16);
    v43 = __OFADD__(v34, v45);
    v46 = v34 + v45;
    if (v43)
    {
      goto LABEL_50;
    }

    v47 = __OFSUB__(v46, v34);
    v44 = v46 < v34;
    v48 = v46 - v34;
    if (v44)
    {
      goto LABEL_51;
    }

    if (v47)
    {
      goto LABEL_52;
    }

    v49 = (v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
    v50 = (v36 - v18) / v48 * CGRectGetWidth(*(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
    Width = CGRectGetWidth(*v49);

    a2 = a2 + v50 / Width;
    v18 = v40;
  }

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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for spring()
{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static StretchTextEffect.spring);
  __swift_project_value_buffer(v0, static StretchTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BloomTextEffect.spring);
  __swift_project_value_buffer(v0, static BloomTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SquishTextEffect.spring);
  __swift_project_value_buffer(v0, static SquishTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static ShakeVerticalTextEffect.spring);
  __swift_project_value_buffer(v0, static ShakeVerticalTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SomersaultTextEffect.spring);
  __swift_project_value_buffer(v0, static SomersaultTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BounceTextEffect.spring);
  __swift_project_value_buffer(v0, static BounceTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BigTextEffect.spring);
  __swift_project_value_buffer(v0, static BigTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SmallTextEffect.spring);
  __swift_project_value_buffer(v0, static SmallTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static ShakeHorizontalTextEffect.spring);
  __swift_project_value_buffer(v0, static ShakeHorizontalTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD07StretchcF0V_Tt3g5Tm@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t (*a10)(void, __n128), double (*a11)(uint64_t *, double), void (*a12)(__int128 *__return_ptr, _OWORD *), uint64_t (*a13)(void), double (*a14)(uint64_t *, double))
{
  LODWORD(v144) = a3;
  v143 = a2;
  v123 = a9;
  v141 = a11;
  v142 = a12;
  v20 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v131 = (&v119 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v130 = (&v119 - v27);
  v127 = a6;
  v128 = a7;
  v129 = a8;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a6, a7, a8, type metadata accessor for Text.Effect.DrawableContent);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v125 = (&v119 - v30);
  v124 = a10(0, v29);
  MEMORY[0x1EEE9AC00](v124);
  v132 = (&v119 - v31);
  v32 = 0.0;
  v33 = v141(a5, 0.0);
  v34 = Text.Effect.ChunkingFunction.chunk(_:)(a5, *(a1 + 120), *(a1 + 128), *(a1 + 136));
  v122 = a1;
  v146 = a1;
  v147 = a4;
  v126 = a5;
  v148 = a5;
  v121 = v34;
  v139 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO15ChunkCollectionV_AK6TimingV0J033_363E424B8D24CACCD5AAF4ADF34E118BLLVs5NeverOTg5(v142, v145, v34);
  v35 = *(v139 + 16);
  if (!v35)
  {
    goto LABEL_9;
  }

  if (v35 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 & 0x7FFFFFFFFFFFFFFELL;
    v37 = (v139 + 88);
    v38 = v35 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v39 = *(v37 - 4);
      v40 = *v37;
      v37 += 8;
      v32 = v32 + v39 + v40;
      v38 -= 2;
    }

    while (v38);
    if (v35 == v36)
    {
      goto LABEL_9;
    }
  }

  v41 = v35 - v36;
  v42 = (v139 + 32 * v36 + 56);
  do
  {
    v43 = *v42;
    v42 += 4;
    v32 = v32 + v43;
    --v41;
  }

  while (v41);
LABEL_9:
  if (v144)
  {
    v44 = v32;
  }

  else
  {
    v44 = *&v143;
  }

  Spring.settlingDuration.getter();
  v135 = v45;
  if (v35)
  {
    v120 = v33;
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v138 = v139 + 32;
    v48 = 0.0;
    v49 = MEMORY[0x1E69E7CC0];
    v133 = v32 / v44;
    v134 = v44;
    v136 = v35;
    v137 = a4;
    while (v46 < *(v139 + 16))
    {
      v142 = v46;
      v50 = v138 + 32 * v46;
      v51 = *(*v50 + 16);
      v52 = *(v49 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_87;
      }

      v54 = *(v50 + 8);
      v55 = *(v50 + 16);
      v56 = *(v50 + 24);
      v144 = *v50;

      *&v143 = v54;

      v141 = v55;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v53 > *(v49 + 3) >> 1)
      {
        if (v52 <= v53)
        {
          v58 = v52 + v51;
        }

        else
        {
          v58 = v52;
        }

        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v58, 1, v49);
        v49 = isUniquelyReferenced_nonNull_native;
      }

      v59 = v143;
      a4 = v137;
      if (*(v144 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v51)
        {
          goto LABEL_89;
        }

        isUniquelyReferenced_nonNull_native = swift_arrayInitWithCopy();
        if (v51)
        {
          v60 = *(v49 + 2);
          v61 = __OFADD__(v60, v51);
          v62 = v60 + v51;
          if (v61)
          {
            goto LABEL_100;
          }

          *(v49 + 2) = v62;
        }
      }

      else if (v51)
      {
        goto LABEL_88;
      }

      v63 = *(v59 + 2);
      if (v63)
      {
        v140 = v49;
        v64 = v133 * v56;
        v65 = v133 * v48;
        v66 = (v59 + 40);
        do
        {
          v67 = *(v66 - 1);
          v68 = *v66;
          MEMORY[0x19A8BD3C0](isUniquelyReferenced_nonNull_native);
          Spring.dampingRatio.getter();
          Spring.init(response:dampingRatio:)();
          *v23 = v65 + v64 * v67;
          v23[1] = v64 * v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          }

          v70 = v47[2];
          v69 = v47[3];
          if (v70 >= v69 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v47);
          }

          v47[2] = v70 + 1;
          isUniquelyReferenced_nonNull_native = outlined init with take of Text.Effect.Timing.GlyphTiming(v23, v47 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v70, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          v66 += 2;
          --v63;
        }

        while (v63);

        v44 = v134;
        v49 = v140;
      }

      else
      {
      }

      v46 = v142 + 1;

      v48 = v48 + v56;
      if (v46 == v136)
      {
        v140 = v49;

        v33 = v120;
        goto LABEL_40;
      }
    }

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
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v47 = MEMORY[0x1E69E7CC0];
  v140 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v71 = v125;
  v72 = v127;
  v73 = v128;
  v74 = v129;
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v126, v125, v127, v128, v129, type metadata accessor for Text.Effect.DrawableContent);
  v75 = v132;
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v71, v132, v72, v73, v74, type metadata accessor for Text.Effect.DrawableContent);
  v77 = *v71;
  v76 = v71[1];
  v78 = v71[2];
  swift_beginAccess();
  if (!*(*(v77 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v76, v78), (v79 & 1) == 0))
  {
LABEL_102:
    swift_endAccess();
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v80 = *(v124 + 36);
  swift_endAccess();
  outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v71, v127, v128, v129, type metadata accessor for Text.Effect.DrawableContent);
  *(v80 + v75) = 0;
  v81 = *v75;
  v82 = v75[1];
  v144 = v75[2];
  v83 = Text.Effect.Keyframes.subscript.getter(v82, v144, v81);
  if (!v83)
  {
    goto LABEL_103;
  }

  v84 = *(v83 + 16);

  if (v84)
  {
    v136 = v80;
    v85 = 0;
    v141 = a14;
    *&v86 = MEMORY[0x1E69E7CC0];
    v139 = v81;
    v138 = v82;
    while (1)
    {

      v87 = v144;

      v88 = Text.Effect.Keyframes.subscript.getter(v82, v87, v81);
      if (!v88)
      {
        goto LABEL_104;
      }

      if ((v85 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (v85 >= *(v88 + 16))
      {
        goto LABEL_91;
      }

      v89 = (v88 + 32);
      v90 = *(v88 + 32 + 8 * v85);
      v91 = 0;
      if (v85)
      {
        break;
      }

LABEL_52:

      v94 = (v141)(v85);
      v95 = *(*(v90 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v96 = v91 + v95;
      if (__OFADD__(v91, v95))
      {
        goto LABEL_92;
      }

      if (v96 < v91)
      {
        goto LABEL_93;
      }

      if (__OFSUB__(v96, v91))
      {
        goto LABEL_94;
      }

      if (v96 == v91)
      {
        goto LABEL_95;
      }

      v142 = v90;
      v143 = v86;
      if (v91 >= v96)
      {
        goto LABEL_82;
      }

      if (v91 < 0)
      {
        goto LABEL_96;
      }

      if (v91 >= v47[2])
      {
        goto LABEL_97;
      }

      v85 = v94;
      v97 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v98 = *(v21 + 72);
      v99 = v131;
      outlined init with copy of FragmentRangeSequence.Iterator(v47 + v97 + v98 * v91, v131, type metadata accessor for Text.Effect.Timing.GlyphTiming);
      v101 = *v99;
      v100 = v99[1];
      outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v99, type metadata accessor for Text.Effect.Timing.GlyphTiming);
      v102 = v101 + v100;
      if (v101 > v101 + v100)
      {
        goto LABEL_98;
      }

      v103 = v91 + 1;
      if (v96 != v103)
      {
        v104 = v95 - 1;
        v105 = v47 + v97 + v98 * v103;
        v106 = v130;
        while (v103 < v96)
        {
          if (v103 >= v47[2])
          {
            goto LABEL_83;
          }

          outlined init with copy of FragmentRangeSequence.Iterator(v105, v106, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          v107 = *v106;
          v108 = v106[1];
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v106, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          if (v107 > v107 + v108)
          {
            goto LABEL_84;
          }

          if (v107 < v101)
          {
            v101 = v107;
          }

          if (v102 <= v107 + v108)
          {
            v102 = v107 + v108;
          }

          if (v101 > v102)
          {
            goto LABEL_85;
          }

          v105 += v98;
          ++v103;
          if (!--v104)
          {
            goto LABEL_71;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_71:
      v86 = v143;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v86 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86));
      }

      v75 = v132;
      v81 = v139;
      v110 = *(v86 + 2);
      v109 = *(v86 + 3);
      if (v110 >= v109 >> 1)
      {
        *&v86 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v86));
      }

      v111 = v144;

      *(v86 + 2) = v110 + 1;
      v112 = &v86[16 * v110];
      *(v112 + 4) = v101;
      *(v112 + 5) = v102;
      v82 = v138;
      v113 = Text.Effect.Keyframes.subscript.getter(v138, v111, v81);
      if (!v113)
      {
        goto LABEL_101;
      }

      v114 = *(v113 + 16);

      if (__OFSUB__(v114, v85))
      {
        goto LABEL_99;
      }

      if (v114 == v85)
      {
        outlined destroy of Text.Effect.Timing.Configuration(v122);
        *(v136 + v75) = v85;
        goto LABEL_80;
      }
    }

    v92 = v85;
    while (1)
    {
      v93 = *(*(*v89 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v61 = __OFADD__(v91, v93);
      v91 += v93;
      if (v61)
      {
        break;
      }

      ++v89;
      if (!--v92)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  outlined destroy of Text.Effect.Timing.Configuration(v122);
  *&v86 = MEMORY[0x1E69E7CC0];
LABEL_80:
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v75, a13);

  outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v126, v127, v128, v129, type metadata accessor for Text.Effect.DrawableContent);
  v115 = type metadata accessor for Spring();
  (*(*(v115 - 8) + 8))(a4, v115);

  v117 = v123;
  *v123 = v44;
  v117[1] = v33;
  *(v117 + 2) = v140;
  v117[3] = *&v86;
  v118 = v121;
  *(v117 + 4) = v47;
  *(v117 + 5) = v118;
  return result;
}

uint64_t closure #1 in StretchTextEffect.configuration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a2, v25, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD07StretchcF0V_Tt2g5(a2, a3, 1, v25);
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v12 = swift_allocObject();
  v13 = *(a4 + 16);
  *(v12 + 16) = *a4;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a4 + 32);
  *(v12 + 56) = *a1;
  *(v12 + 72) = v8;
  *(v12 + 80) = v9;
  *(v12 + 88) = v10;
  *(v12 + 96) = v11;
  v14 = swift_allocObject();
  v15 = v25[3];
  *(v14 + 48) = v25[2];
  *(v14 + 64) = v15;
  *(v14 + 80) = v25[4];
  v16 = v26;
  v17 = v25[1];
  *(v14 + 16) = v25[0];
  *(v14 + 32) = v17;
  *(v14 + 96) = v16;
  *(v14 + 104) = partial apply for closure #1 in closure #1 in StretchTextEffect.configuration(_:);
  *(v14 + 112) = v12;
  v18 = MEMORY[0x1E69E6F90];
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v14;
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v18);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_195CC8D00;
  *(v20 + 32) = inited;
  v21 = MEMORY[0x1E69E62F8];
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v27, v24, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E62F8], type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v28, v24, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment, v21, type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v29, v24, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming], type metadata accessor for Text.Effect.Timing.GlyphTiming, MEMORY[0x1E69E62F8], type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(&v30, v24);
  v22 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v20);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v20 + 32);
  return v22;
}

void closure #1 in closure #1 in StretchTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v71 - v12;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v24 = *(a2 + 64);
  v25 = *(a2 + 40) - *(a2 + 32);
  if (v25 >= 0.0)
  {
    v26 = v25 / v24;
    if (v25 / v24 < 0.0)
    {
      v27 = a3[1].f64[1];
      v28 = 0.0;
      if (v27 <= 0.0)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v28 = 0.0;
  v26 = 0.0 / v24;
  if (0.0 / v24 >= 0.0)
  {
LABEL_8:
    v28 = 1.0;
    if (v26 <= 1.0)
    {
      v27 = a3[1].f64[1];
      if (v26 < v27)
      {
        v29 = v26 / v27;
LABEL_14:
        *&v21 = 1.0;
        if (v29 == 1.0)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      v28 = v26;
    }

    else
    {
      v27 = a3[1].f64[1];
      if (v27 > 1.0)
      {
        *&v21 = 1.0;
        v29 = 1.0 / v27;
        if (1.0 / v27 == 1.0)
        {
          goto LABEL_20;
        }

LABEL_15:
        *&v21 = 1.0 - exp2(v29 * -10.0);
        goto LABEL_20;
      }
    }

    goto LABEL_17;
  }

  v27 = a3[1].f64[1];
  if (v27 > 0.0)
  {
LABEL_7:
    v29 = 0.0 / v27;
    goto LABEL_14;
  }

LABEL_17:
  v30 = (v28 - v27) / a3[2].f64[0];
  v5 = 1.0;
  v31 = 1.0;
  if (v30 != 1.0)
  {
    v31 = 1.0 - exp2(v30 * -10.0);
  }

  *&v21 = 1.0 - v31;
LABEL_20:
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v32 = *(a4 + 16);
  if (*(v32 + 16) <= a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(*(a4 + 32) + 16) > a1)
  {
    v5 = *(v32 + 32 * a1 + 32);
    v77 = *a3;
    v78 = v21;
    v6 = a3[1].f64[0];
    a3 = *a2;
    v4 = *(a2 + 8);
    v79 = *(a2 + 256);
    if (one-time initialization token for spring == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_24:
  v33 = type metadata accessor for Spring();
  v80 = __swift_project_value_buffer(v33, static StretchTextEffect.spring);
  v34 = 0;
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  if (__OFSUB__(a3, a1))
  {
    __break(1u);
  }

  else
  {
    v35 = fabs(v5 + -0.5);
    v36 = *&v78;
    __asm { FMOV            V6.2D, #1.0 }

    v77 = vaddq_f64(vmulq_n_f64(vmulq_n_f64(v77, 1.0 - (v35 + v35)), *&v78), _Q6);
    v42 = 1.0;
    v43 = 0.0;
    v44 = 0;
    v45 = 0.0;
    v46 = 0.0;
    if (_ZF)
    {
      v71 = _Q6;
      v72 = a3;
      v73 = v16;
      v74 = v19;
      v75 = v14;
      v47 = *&v78 * v6 + 1.0;
      v92[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v92[1] = v4;
      v92[2] = a1;
      v92[3] = 0;
      v93 = 1;
      v94 = 0;
      v95 = 1;
      v88[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v88[1] = v4;
      *&v78 = a1;
      v88[2] = a1;
      v88[3] = 0;
      v89 = 1;
      v90 = 0;
      v91 = 1;
      *v81 = v36 * v6 + 1.0;
      v48 = v79;
      swift_beginAccess();
      if (*(*(v48 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v92), (v49 & 1) != 0) && (type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v50 = swift_dynamicCastClass()) != 0))
      {
        outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v50 + *(*v50 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      }

      else
      {
        v51 = *(*(v33 - 8) + 56);
        v52 = v76;
        v51(v76, 1, 1, v33);
        *v23 = v71;
        *(v23 + 2) = 0;
        v53 = v75;
        v54 = *(v75 + 44);
        v51(&v23[v54], 1, 1, v33);
        v55 = &v23[*(v53 + 48)];
        v56 = &v23[*(v53 + 52)];
        outlined assign with take of Spring?(v52, &v23[v54]);
        *v55 = 0;
        v55[8] = 1;
        *v56 = 0;
        v56[8] = 1;
      }

      swift_endAccess();
      v57 = v80;
      if (Spring.isValid.getter())
      {
        specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v57, v47, v25);
        v58 = &v23[*(v75 + 48)];
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        Spring.update<A>(value:velocity:target:deltaTime:)();
        *v58 = v25;
        v58[8] = 0;
      }

      else
      {
        outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
        v59 = *(v33 - 8);
        v60 = v76;
        (*(v59 + 16))(v76, v57, v33);
        v61 = *(v59 + 56);
        v61(v60, 0, 1, v33);
        *v23 = v47;
        *(v23 + 1) = v47;
        *(v23 + 2) = 0;
        v62 = v75;
        v63 = *(v75 + 44);
        v61(&v23[v63], 1, 1, v33);
        v64 = &v23[*(v62 + 48)];
        v65 = &v23[*(v62 + 52)];
        outlined assign with take of Spring?(v60, &v23[v63]);
        *v64 = 0;
        v64[8] = 1;
        *v65 = 0;
        v65[8] = 1;
      }

      v66 = v74;
      outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v23, v74, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v67 = v73;
      outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v66, v73, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      swift_beginAccess();
      specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v67, v88);
      swift_endAccess();
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v66, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v42 = *(v23 + 1);
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v34 = *(a2 + 208);
      v43 = *(a2 + 216);
      v44 = *(a2 + 224);
      v45 = *(a2 + 232);
      v46 = *(a2 + 240);
      a1 = v78;
      a3 = v72;
    }

    v68 = v43 - v45;
    v69 = v45 + v46;
    MidX = CGRectGetMidX(*&v34);
    memset(v82, 0, sizeof(v82));
    v83 = MidX;
    v84 = v43;
    v85 = vextq_s8(v77, v77, 8uLL);
    v86 = 0x3FF0000000000000;
    v87 = 0;
    Text.Effect.TransformContext.record(target:for:spring:)(v82, a1, v80, v81);
    Text.Effect.TransformContext.draw(state:keyPath:)(v81, 0, 0, 0, 1);
    if (a3 == a1)
    {
      *(a2 + 136) = v42 * *(a2 + 136);
    }
  }
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance StretchTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized StretchTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for StretchTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect();
  result = lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a5;
  v32 = a1;
  v33 = a7;
  v35 = a4;
  v11 = type metadata accessor for FragmentRangeSequence(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Spring();
  v18 = *(v34 - 8);
  v19 = MEMORY[0x1EEE9AC00](v34);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a6, v19);
  outlined init with copy of FragmentRangeSequence.Iterator(v33, v17, type metadata accessor for Text.Effect.BaseContent);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v40 = 0;
  outlined init with copy of FragmentRangeSequence.Iterator(v17, v14, type metadata accessor for Text.Effect.BaseContent);
  v22 = &v14[*(v12 + 28)];
  *v22 = a1;
  v22[1] = a2;
  v23 = a2;
  v24 = &v14[*(v12 + 32)];
  v25 = a3;
  v26 = v35;
  *v24 = a3;
  *(v24 + 1) = v26;
  specialized Sequence.reduce<A>(_:_:)(v14, 0.0);
  v28 = v27;
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v14, type metadata accessor for FragmentRangeSequence);
  v29 = v36;
  Text.Effect.Timing.Chunk.computeInfos(configuration:chunk:content:)(v36, v32, v23, v25, v26, v17);
  v30 = v37;
  Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(v29, v28, v21, v37);
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v17, type metadata accessor for Text.Effect.BaseContent);
  (*(v18 + 8))(v21, v34);

  return v30;
}

uint64_t specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

double specialized StretchTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 1;
  v21 = xmmword_195CCB130;
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

  v15 = __swift_project_value_buffer(v11, static StretchTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD07StretchcF0V_Tt3g5Tm(&v21, a2, a3 & 1, v14, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, v19, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>, specialized Sequence.reduce<A>(_:_:), partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:), type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>, specialized RandomAccessCollection<>.index(after:));
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

uint64_t specialized StretchTextEffect.configuration(_:)()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in StretchTextEffect.configuration(_:);
  *(v3 + 24) = v1;

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[2 * v6];
  v7[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v7[5] = v3;
  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  v8 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v8;
  v15 = *(a3 + 32);
  v9 = a1[1];
  v11[0] = *a1;
  v11[1] = v9;
  v11[2] = a1[2];
  result = v6(v11, v12, v14);
  *a4 = result;
  return result;
}

uint64_t outlined init with copy of [Text.Effect.Timing.GlyphTiming](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [Text.Effect.Timing.GlyphTiming](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute()
{
  result = lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute;
  if (!lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute);
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

uint64_t outlined assign with take of Spring?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>);
    }
  }
}

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of FragmentRangeSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SquishTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, a2, a3, a4, type metadata accessor for Text.Effect.DrawableContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BounceTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BigTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SmallTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BloomTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SomersaultTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>);
    }
  }
}

uint64_t partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(a1, v2[2], v2[3], v2[4], a2);
}

{
  return partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(a1, a2);
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ShakeVerticalTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ShakeHorizontalTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ExplodeTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>);
    }
  }
}

uint64_t Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v71 = a6;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v69 = a1;
  LODWORD(v76) = a1;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v59 - v11;
  v12 = type metadata accessor for Text.Effect.Composition.Run(0);
  v63 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Text.Effect.InteractionMetrics();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = (v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LayoutDirection();
  v72 = *(v22 - 8);
  v73 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v75 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v59 - v27;
  v74 = v7;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v59 - v27);
  v29 = (v26 + 8);
  if (v76 == 1)
  {
    v30 = specialized RangeSet.upperBound.getter();
  }

  else
  {
    v30 = specialized RangeSet.lowerBound.getter();
  }

  v76 = v30;
  v32 = v31;
  result = (*v29)(v28, v25);
  if ((v32 & 1) == 0)
  {
    v62 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v34 = v74;
    v61 = *(v74 + *(v62 + 20));
    v36 = v72;
    v35 = v73;
    v37 = v75;
    (*(v72 + 104))(v75, *MEMORY[0x1E697E7D0], v73);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v34, v21, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of Text.Effect.InteractionMetrics(v21, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v38 = *(v16 + 24);
      v39 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
      v40 = v71;
      swift_beginAccess();
      v41 = *(v40 + v39);
      if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v43 & 1) != 0))
      {
        outlined init with copy of Text.Effect.SegmentInteraction.Element(*(v41 + 56) + *(v68 + 72) * v42, v15, type metadata accessor for Text.Effect.InteractionMetrics);
        swift_endAccess();
      }

      else
      {
        v59[1] = v39;
        v60 = v18;
        v44 = &v18[v38];
        swift_endAccess();
        *v15 = MEMORY[0x1E69E7CC0];
        v45 = v70;
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        RangeSet.init()();
        *(v15 + *(v45 + 24)) = MEMORY[0x1E69E7CD0];
        v46 = (v15 + *(v45 + 28));
        v47 = type metadata accessor for Text.Effect.Composition(0);
        *v46 = 0;
        v46[1] = 0;
        v48 = *(v44 + *(v47 + 24));
        v49 = *(v48 + 16);
        v50 = v64;
        v51 = v15;
        v53 = v65;
        v52 = v66;
        v54 = v77;
        if (v49)
        {
          v55 = v48 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v56 = *(v63 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v55, v54, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v51, v44, a2, v50, v53, v52, a7);
            v54 = v77;
            outlined destroy of Text.Effect.SegmentInteraction.Element(v77, type metadata accessor for Text.Effect.Composition.Operation);
            v55 += v56;
            --v49;
          }

          while (v49);
        }

        v57 = v67;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v51, v67, type metadata accessor for Text.Effect.InteractionMetrics);
        (*(v68 + 56))(v57, 0, 1, v70);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v57, v61);
        swift_endAccess();
        v35 = v73;
        v15 = v51;
        v18 = v60;
        v36 = v72;
      }

      v58 = v75;
      Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v76, v69, v75);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v15, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v36 + 8))(v58, v35);
      return outlined destroy of Text.Effect.SegmentInteraction.Element(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    else
    {
      (*(v36 + 8))(v37, v35);
      return outlined destroy of Text.Effect.SegmentInteraction.Element(v21, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    }
  }

  return result;
}

uint64_t Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v117 = a8;
  v110 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v123 = a3;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v105 - v13;
  v14 = type metadata accessor for Text.Effect.Composition.Run(0);
  v106 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v128 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Text.Effect.InteractionMetrics();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = (&v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v112);
  v116 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LayoutDirection();
  v121 = *(v19 - 8);
  v122 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v127 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v26 = v25;
  v126 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v105 - v30;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v24, MEMORY[0x1E69E7BE0]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v105 - v35;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(&v105 - v35);
  RangeSet.ranges.getter();
  (*(v34 + 8))(v36, v33);
  v37 = *(v126 + 16);
  v124 = v31;
  v37(v28, v31, v26);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Sequence.makeIterator()();
  v38 = *(v127 + 11);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  v127 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v23[v38] == v130)
    {
      break;
    }

    v39 = dispatch thunk of Collection.subscript.read();
    v41 = *v40;
    v42 = v40[1];
    v39(&v130, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if (v41 <= a1)
    {
      v41 = a1;
    }

    if (v42 >= a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = v42;
    }

    if (v41 < v43)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v127;
      }

      else
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v127 + 2) + 1, 1, v127);
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      v47 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        v127 = (v46 + 1);
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
        v47 = v127;
        v44 = v49;
      }

      *(v44 + 2) = v47;
      v127 = v44;
      v48 = &v44[16 * v46];
      *(v48 + 4) = v41;
      *(v48 + 5) = v43;
    }
  }

  outlined destroy of Text.Effect.SegmentInteraction.Element(v23, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
  (*(v126 + 8))(v124, v26);
  v50 = *(v127 + 2);
  if (v50 > 1)
  {

    static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    v51 = static Log.internalErrorsLog;
    type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_195CC8CF0;
    v130 = 0;
    v131 = 0xE000000000000000;
    v53 = v51;
    _StringGuts.grow(_:)(45);

    v130 = 0xD00000000000002BLL;
    v131 = 0x8000000195CDF1C0;
    v129 = v50;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v54);

    v55 = v130;
    v56 = v131;
    v57 = MEMORY[0x1E69E6158];
    *(v52 + 56) = MEMORY[0x1E69E6158];
    v58 = lazy protocol witness table accessor for type String and conformance String();
    *(v52 + 64) = v58;
    *(v52 + 32) = v55;
    *(v52 + 40) = v56;
    v59 = StaticString.description.getter();
    *(v52 + 96) = v57;
    *(v52 + 104) = v58;
    *(v52 + 72) = v59;
    *(v52 + 80) = v60;
    v130 = 103;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v52 + 136) = v57;
    *(v52 + 144) = v58;
    *(v52 + 112) = v61;
    *(v52 + 120) = v62;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for _ContiguousArrayStorage<Any>();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_195CC8D00;
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v130 = 0xD00000000000002BLL;
    v131 = 0x8000000195CDF1C0;
    v129 = v50;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v64);

    MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
    v65 = StaticString.description.getter();
    MEMORY[0x19A8BD680](v65);

    MEMORY[0x19A8BD680](58, 0xE100000000000000);
    v129 = 103;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v66);

    MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
    v67 = v130;
    v68 = v131;
    *(v63 + 56) = v57;
    *(v63 + 32) = v67;
    *(v63 + 40) = v68;
    print(_:separator:terminator:)();
  }

  if (!v50)
  {
  }

  v69 = *(v127 + 4);
  v70 = *(v127 + 5);

  v71 = v125;
  Text.Effect.RenderSegmentation.Segment.characterIndex(for:type:)(v69, v70, v123);
  v73 = v72;
  v74 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
  v75 = *(v71 + *(v74 + 20));
  v77 = v120;
  v76 = v121;
  v78 = v122;
  (*(v121 + 104))(v120, *MEMORY[0x1E697E7D0], v122);
  v79 = v119;
  outlined init with copy of Text.Effect.SegmentInteraction.Element(v71, v119, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v80 = v79;
    v81 = v116;
    outlined init with take of Text.Effect.InteractionMetrics(v80, v116, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v126 = *(v112 + 24);
    v82 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    v83 = v117;
    swift_beginAccess();
    v127 = v82;
    v84 = *&v82[v83];
    if (*(v84 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v86 & 1) != 0))
    {
      v87 = *(v84 + 56) + *(v113 + 72) * v85;
      v88 = v114;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v87, v114, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
    }

    else
    {
      v118 = v75;
      v119 = v73;
      v124 = v74;
      v90 = v81 + v126;
      swift_endAccess();
      v91 = v114;
      *v114 = MEMORY[0x1E69E7CC0];
      v92 = v115;
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
      RangeSet.init()();
      *(v91 + *(v92 + 24)) = MEMORY[0x1E69E7CD0];
      v93 = (v91 + *(v92 + 28));
      v94 = type metadata accessor for Text.Effect.Composition(0);
      *v93 = 0;
      v93[1] = 0;
      v95 = *(v90 + *(v94 + 24));
      v96 = *(v95 + 16);
      v97 = v110;
      v98 = v109;
      v99 = v108;
      v100 = v107;
      v101 = v128;
      if (v96)
      {
        v102 = v95 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v103 = *(v106 + 72);
        do
        {
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v102, v101, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v91, v90, v100, v99, v98, v97, a9);
          v101 = v128;
          outlined destroy of Text.Effect.SegmentInteraction.Element(v128, type metadata accessor for Text.Effect.Composition.Operation);
          v102 += v103;
          --v96;
        }

        while (v96);
      }

      v104 = v111;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v91, v111, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v113 + 56))(v104, 0, 1, v115);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v104, v118);
      swift_endAccess();
      v88 = v91;
      v81 = v116;
      v76 = v121;
      v78 = v122;
      v73 = v119;
      v77 = v120;
    }

    Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v73, v123, v77);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v88, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v76 + 8))(v77, v78);
    return outlined destroy of Text.Effect.SegmentInteraction.Element(v81, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  }

  else
  {
    (*(v76 + 8))(v77, v78);
    return outlined destroy of Text.Effect.SegmentInteraction.Element(v79, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }
}

void Text.Effect.RenderSegmentation.Segment.characterIndex(for:type:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_10;
    }

    Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)(a2 - 1, &v21 - v11);
    v14 = (*(v7 + 88))(v12, v6);
    if (v14 != *MEMORY[0x1E697E7D0] && v14 != *MEMORY[0x1E697E7D8])
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      if (!__OFSUB__(v13, a1))
      {
        if (v13 != a1)
        {
          type metadata accessor for _ContiguousArrayStorage<Any>();
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_195CC8D00;
          v25 = 0;
          v26 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v25 = 0;
          v26 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v25 = 0xD000000000000025;
          v26 = 0x8000000195CDF1F0;
          v23 = a2;
          v24 = a1;
          v21 = 0;
          v22 = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x19A8BD680](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x19A8BD680](v21, v22);

          MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
          v17 = StaticString.description.getter();
          MEMORY[0x19A8BD680](v17);

          MEMORY[0x19A8BD680](58, 0xE100000000000000);
          v21 = 80;
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x19A8BD680](v18);

          MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
          v19 = v25;
          v20 = v26;
          *(v16 + 56) = MEMORY[0x1E69E6158];
          *(v16 + 32) = v19;
          *(v16 + 40) = v20;
          print(_:separator:terminator:)();
        }

        return;
      }

LABEL_15:
      __break(1u);
    }
  }

  else
  {
    Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)(a1, v9);
    v15 = (*(v7 + 88))(v9, v6);
    if (v15 != *MEMORY[0x1E697E7D0] && v15 != *MEMORY[0x1E697E7D8])
    {
      goto LABEL_9;
    }
  }
}

uint64_t Array<A>.trailingSegment.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;

  specialized MutableCollection<>.sort(by:)(&v14);
  v3 = v14;
  v4 = v14[2];
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
    v13 = *(v6 - 8);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t Text.Layout.Line.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v43 = a2;
  v3 = type metadata accessor for LayoutDirection();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Text.Layout.Run();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - v9;
  v10 = type metadata accessor for Text.Layout.Line();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Line>();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v39 = &v37 - v22;
  (*(v11 + 16))(v13, v2, v10, v21);
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v15 + 44);
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v17[v23] == v49[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.SegmentInteraction.Element(v17, type metadata accessor for IndexingIterator<Text.Layout.Line>);
    v24 = 1;
    v25 = v39;
  }

  else
  {
    v45 = (v44 + 16);
    v46 = (v44 + 32);
    v26 = (v44 + 8);
    v27 = v47;
    while (1)
    {
      v28 = dispatch thunk of Collection.subscript.read();
      (*v45)(v27);
      v28(v49, 0);
      v29 = v10;
      dispatch thunk of Collection.formIndex(after:)();
      v30 = *v46;
      (*v46)(v7, v27, v5);
      if (Text.Layout.Run.characterRange.getter() <= v48 && v31 > v48)
      {
        break;
      }

      (*v26)(v7, v5);
      v10 = v29;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v23] == v49[0])
      {
        goto LABEL_2;
      }
    }

    outlined destroy of Text.Effect.SegmentInteraction.Element(v17, type metadata accessor for IndexingIterator<Text.Layout.Line>);
    v25 = v39;
    v30(v39, v7, v5);
    v24 = 0;
  }

  v32 = v44;
  (*(v44 + 56))(v25, v24, 1, v5);
  v33 = v40;
  outlined init with copy of Text.Effect.InteractionMetrics?(v25, v40, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
  if ((*(v32 + 48))(v33, 1, v5) == 1)
  {
    v34 = MEMORY[0x1E6981028];
    outlined destroy of Text.Effect.InteractionMetrics?(v25, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
    outlined destroy of Text.Effect.InteractionMetrics?(v33, &lazy cache variable for type metadata for Text.Layout.Run?, v34);
    return (*(v41 + 104))(v43, *MEMORY[0x1E697E7D0], v42);
  }

  else
  {
    v36 = v38;
    Text.Layout.Run.layoutDirection.getter();
    outlined destroy of Text.Effect.InteractionMetrics?(v25, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
    (*(v32 + 8))(v33, v5);
    return (*(v41 + 32))(v43, v36, v42);
  }
}

uint64_t Text.Effect.RenderSegmentation.StaticLines.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for Text.Layout.Line();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v27 = &v26 - v11;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = *(v28 + 16);
    v14 = *v2 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v15 = (v28 + 8);
    v16 = *(v28 + 72);
    v13(v6, v14, v4, v10);
    while (Text.Layout.Line.characterRange.getter() > a1 || v18 <= a1)
    {
      (*v15)(v6, v4);
      v14 += v16;
      if (!--v12)
      {
        goto LABEL_8;
      }

      v13(v6, v14, v4, v17);
    }

    v20 = v28 + 32;
    v19 = *(v28 + 32);
    v21 = v26;
    v19(v26, v6, v4);
    v22 = v27;
    v19(v27, v21, v4);
    Text.Layout.Line.layoutDirection(for:)(a1, v29);
    return (*(v20 - 24))(v22, v4);
  }

  else
  {
LABEL_8:
    v24 = *MEMORY[0x1E697E7D0];
    v25 = type metadata accessor for LayoutDirection();
    return (*(*(v25 - 8) + 104))(v29, v24, v25);
  }
}

uint64_t Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.SegmentInteraction.Element(v3, v14, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Text.Effect.InteractionMetrics(v14, v11, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      Text.Layout.Line.layoutDirection(for:)(a1, a2);
      v16 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
      v17 = v11;
    }

    else
    {
      outlined init with take of Text.Effect.InteractionMetrics(v14, v8, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      Text.Layout.Line.layoutDirection(for:)(a1, a2);
      v16 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
      v17 = v8;
    }

    return outlined destroy of Text.Effect.SegmentInteraction.Element(v17, v16);
  }

  else
  {
    v18 = *(v14 + 1);
    v20[0] = *v14;
    v20[1] = v18;
    v20[2] = *(v14 + 2);
    v21 = *(v14 + 6);
    Text.Effect.RenderSegmentation.StaticLines.layoutDirection(for:)(a1, a2);
    return outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v20);
  }
}

uint64_t Range<>.relative(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 textLayoutFragment];
  if (!v5)
  {
    return a2;
  }

  v6 = v5;
  v7 = [v5 rangeInElement];

  NSTextRange.textRange.getter();
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    return a2;
  }

  result = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a3 - a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2 = Text.Layout.CharacterIndex.init(_:)();
  result = Text.Layout.CharacterIndex.init(_:)();
  if (result >= a2)
  {
    return a2;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t NSTextLocation.characterIndex(relativeTo:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB848]) initWithLocation_];
  NSTextRange.textRange.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    return 0;
  }

  result = v5 - a1;
  if (__OFSUB__(v5, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v7, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v7 - v5, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = Text.Layout.CharacterIndex.init(_:)();
  v12 = Text.Layout.CharacterIndex.init(_:)();
  result = v11;
  if (v12 < v11)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Text.Effect.RangeCoordinateSpace.xrange(using:)(uint64_t a1)
{
  v53 = type metadata accessor for LayoutDirection();
  v3 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Text.Effect.InteractionMetrics();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.InteractionMetrics?(a1, v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return outlined destroy of Text.Effect.InteractionMetrics?(v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  }

  outlined init with take of Text.Effect.InteractionMetrics(v12, v16, type metadata accessor for Text.Effect.InteractionMetrics);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *(type metadata accessor for Text.Effect.RangeCoordinateSpace(0) + 24);
  v22 = *v16;
  v23 = *(*v16 + 16);
  v24 = v53;
  v50 = v21;
  if (v23)
  {
    v25 = (v22 + 48);
    v26 = v23;
    while (v20 < *(v25 - 2) || v20 >= *(v25 - 1))
    {
      v25 += 12;
      if (!--v26)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_20;
  }

LABEL_10:
  (*(v3 + 16))(v9, v1 + v21, v53);
  v28 = (*(v3 + 88))(v9, v24);
  if (v28 != *MEMORY[0x1E697E7D0])
  {
    if (v28 == *MEMORY[0x1E697E7D8])
    {
      if (v23)
      {
        v25 = (v22 + 48);
      }

      else
      {
        v25 = &v16[*(v13 + 28)];
      }

LABEL_20:
      v30 = *v25;
      goto LABEL_21;
    }

    (*(v3 + 8))(v9, v24);
  }

  v29 = &v16[*(v13 + 28)];
  v30 = *v29;
  if (*v29 == 0.0 && v29[1] == 0.0)
  {
    v31 = *(v22 + 16);
    if (!v31)
    {
      goto LABEL_30;
    }

    v25 = (v22 + 96 * v31 - 48);
    goto LABEL_20;
  }

LABEL_21:
  v32 = *(v22 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = *(v1 + 24);
    v35 = (v22 + 88);
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= *(v35 - 7) && v34 < *(v35 - 6))
      {
        v44 = *(v35 - 5) - *v35 + v35[4];
        v39 = *(v3 + 16);
        v43 = *MEMORY[0x1E697E7D0];
        goto LABEL_42;
      }

      v35 += 12;
      ++v33;
      if (v36 == v32)
      {
        v38 = 0;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_30:
  v38 = 1;
LABEL_31:
  v39 = *(v3 + 16);
  v40 = v1 + v21;
  v41 = v51;
  v39(v51, v40, v24);
  v42 = (*(v3 + 88))(v41, v24);
  v43 = *MEMORY[0x1E697E7D0];
  if (v42 != *MEMORY[0x1E697E7D0])
  {
    if (v42 == *MEMORY[0x1E697E7D8])
    {
      if (v38)
      {
        v44 = *&v16[*(v13 + 28)];
      }

      else
      {
        v44 = *(v22 + 48);
      }

      goto LABEL_42;
    }

    (*(v3 + 8))(v51, v24);
  }

  v45 = &v16[*(v13 + 28)];
  v44 = *v45;
  if (*v45 != 0.0)
  {
LABEL_42:
    v46 = v52;
    goto LABEL_43;
  }

  v46 = v52;
  if (v45[1] == 0.0)
  {
    v47 = *(v22 + 16);
    if (v47)
    {
      v44 = *(v22 + 96 * v47 - 48);
    }
  }

LABEL_43:
  v39(v46, v1 + v50, v24);
  v48 = (*(v3 + 88))(v46, v24);
  if (v48 == v43)
  {
    v49 = v44;
    v44 = v30;
  }

  else
  {
    v49 = v30;
    if (v48 != *MEMORY[0x1E697E7D8])
    {
LABEL_50:
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDF1A0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  result = outlined destroy of Text.Effect.SegmentInteraction.Element(v16, type metadata accessor for Text.Effect.InteractionMetrics);
  if (v18 + v44 > v19 + v49)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

uint64_t outlined destroy of Text.Effect.SegmentInteraction.Element(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(void *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v120 = a4;
  v99 = a1;
  v6 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v8 = v7;
  v9 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v89 - v12;
  v13 = type metadata accessor for Text.Effect.Composition.Run(0);
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  v96 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v89 - v21;
  v95 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  v119 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v89 - v27;
  v117 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v117);
  v98 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v112 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v116 = (&v89 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v118 = &v89 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v115 = &v89 - v37;
  v90 = a2;
  if (a3 == a2)
  {
    return;
  }

  v109 = *v120;
  v100 = *(v36 + 72);
  v113 = (v24 + 8);
  v114 = (v9 + 8);
  v120 = v8;
LABEL_7:
  v91 = a3;
  v38 = a3;
  v39 = v119;
  while (1)
  {
    v40 = v38 - 1;
    v41 = v109;
    v42 = v100;
    v107 = v109 + v100 * v38;
    v43 = v115;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v107, v115, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v108 = v40;
    v106 = v41 + v40 * v42;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v106, v118, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v43, v116, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v45 = v102;
      if (EnumCaseMultiPayload == 1)
      {
        v46 = v94;
        outlined init with take of Text.Effect.InteractionMetrics(v116, v94, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        Text.Layout.Line.characterRanges(runIndices:)();
        outlined destroy of Text.Effect.SegmentInteraction.Element(v46, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      }

      else
      {
        v56 = v97;
        outlined init with take of Text.Effect.InteractionMetrics(v116, v97, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v57 = v56 + *(v96 + 24);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        RangeSet.init()();
        v58 = *(v57 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = v58 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v61 = *(v92 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v60, v18, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v57, v45);
            outlined destroy of Text.Effect.SegmentInteraction.Element(v18, type metadata accessor for Text.Effect.Composition.Operation);
            v60 += v61;
            --v59;
          }

          while (v59);
        }

        outlined destroy of Text.Effect.SegmentInteraction.Element(v97, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v39 = v119;
        v8 = v120;
      }

      goto LABEL_23;
    }

    v47 = *v116;
    v48 = v116[1];
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
    v45 = v102;
    RangeSet.init()();
    v49 = *(v47 + 16);
    v111 = v47;
    v110 = v48;
    if (v49)
    {
      break;
    }

LABEL_22:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v8 = v120;
LABEL_23:
    v62 = v101;
    RangeSet.ranges.getter();
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
    v63 = v62;
    v64 = dispatch thunk of Collection.isEmpty.getter();
    v65 = v103;
    if (v64)
    {
      (*v114)(v63, v8);
      (*v113)(v45, v39);
LABEL_5:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v118, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v115, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
LABEL_6:
      a3 = v91 + 1;
      if (v91 + 1 == v90)
      {
        return;
      }

      goto LABEL_7;
    }

    dispatch thunk of Collection.endIndex.getter();
    v104 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v66 = dispatch thunk of Collection.subscript.read();
    v105 = *(v67 + 8);
    v66(v123, 0);
    v110 = *v114;
    v110(v63, v8);
    v68 = *v113;
    (*v113)(v45, v39);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v118, v112, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v69 = swift_getEnumCaseMultiPayload();
    v111 = v68;
    if (v69)
    {
      if (v69 == 1)
      {
        v70 = v94;
        outlined init with take of Text.Effect.InteractionMetrics(v112, v94, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        v71 = v126;
        Text.Layout.Line.characterRanges(runIndices:)();
        v72 = v70;
        v73 = v71;
        outlined destroy of Text.Effect.SegmentInteraction.Element(v72, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      }

      else
      {
        v76 = v93;
        outlined init with take of Text.Effect.InteractionMetrics(v112, v93, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v77 = v76 + *(v96 + 24);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        v73 = v126;
        RangeSet.init()();
        v78 = *(v77 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
        v79 = *(v78 + 16);
        if (v79)
        {
          v80 = v78 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v81 = *(v92 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v80, v15, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v77, v73);
            v73 = v126;
            outlined destroy of Text.Effect.SegmentInteraction.Element(v15, type metadata accessor for Text.Effect.Composition.Operation);
            v80 += v81;
            --v79;
          }

          while (v79);
        }

        outlined destroy of Text.Effect.SegmentInteraction.Element(v93, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v39 = v119;
        v8 = v120;
        v65 = v103;
      }
    }

    else
    {
      v74 = *(v112 + 16);
      v124[0] = *v112;
      v124[1] = v74;
      v124[2] = *(v112 + 32);
      v125 = *(v112 + 48);
      v75 = v126;
      Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter();
      v73 = v75;
      outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v124);
    }

    v82 = v73;
    RangeSet.ranges.getter();
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      v110(v65, v8);
      v111(v73, v39);
      goto LABEL_5;
    }

    v83 = v65;
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of BidirectionalCollection.index(before:)();
    v84 = dispatch thunk of Collection.subscript.read();
    v86 = *(v85 + 8);
    v84(v123, 0);
    v110(v83, v8);
    v111(v82, v39);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v118, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v115, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (v105 < v86)
    {
      if (!v109)
      {
        goto LABEL_39;
      }

      v87 = v98;
      outlined init with take of Text.Effect.InteractionMetrics(v107, v98, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v88 = v106;
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Text.Effect.InteractionMetrics(v87, v88, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v38 = v108;
      if (v108 != v99)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  v50 = *(type metadata accessor for Text.Layout.Line() - 8);
  v51 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v52 = *(v50 + 72);

  while (1)
  {
    v53 = Text.Layout.Line.characterRange.getter();
    v121 = v53;
    v122 = v54;
    if (__OFSUB__(v54, v53))
    {
      break;
    }

    if (v54 != v53)
    {
      v55 = RangeSet._ranges.modify();
      RangeSet.Ranges._insert(contentsOf:)();
      v55(v123, 0);
      v39 = v119;
    }

    v51 += v52;
    if (!--v49)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v262 = a4;
  v267 = a1;
  v5 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v7 = v6;
  v311 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v261 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v269 = &v261 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v279 = &v261 - v16;
  v17 = type metadata accessor for Text.Effect.Composition.Run(0);
  v277 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v317 = &v261 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v261 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v316 = &v261 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v320 = &v261 - v25;
  v289 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v289);
  v280 = &v261 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v281 = &v261 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v268 = &v261 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v272 = &v261 - v32;
  v288 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v288);
  v287 = &v261 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v5, MEMORY[0x1E69E7BE0]);
  v321 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v319 = &v261 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v261 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v271 = &v261 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v315 = &v261 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v261 = &v261 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v264 = &v261 - v47;
  v48 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v282 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v270 = &v261 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v283 = &v261 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v307 = (&v261 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v309 = (&v261 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v314 = &v261 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v308 = &v261 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v278 = &v261 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v296 = (&v261 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v297 = &v261 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v295 = &v261 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v263 = &v261 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v266 = &v261 - v72;
  v292 = a3;
  v73 = a3[1];
  if (v73 < 1)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_170:
    v77 = *v267;
    if (!*v267)
    {
      goto LABEL_212;
    }

    v12 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v294;
    if (isUniquelyReferenced_nonNull_native)
    {
      v256 = v12;
LABEL_173:
      v332 = v256;
      v12 = *(v256 + 2);
      if (v12 < 2)
      {
LABEL_181:

        return;
      }

      while (*v292)
      {
        v257 = *&v256[16 * v12];
        v258 = v256;
        v259 = *&v256[16 * v12 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v292 + *(v282 + 72) * v257, *v292 + *(v282 + 72) * *&v256[16 * v12 + 16], (*v292 + *(v282 + 72) * v259), v77);
        if (v76)
        {
          goto LABEL_181;
        }

        if (v259 < v257)
        {
          goto LABEL_198;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v258 = specialized _ArrayBuffer._consumeAndCreateNew()(v258);
        }

        if (v12 - 2 >= *(v258 + 2))
        {
          goto LABEL_199;
        }

        v260 = &v258[16 * v12];
        *v260 = v257;
        *(v260 + 1) = v259;
        v332 = v258;
        specialized Array.remove(at:)(v12 - 1);
        v256 = v332;
        v12 = *(v332 + 2);
        if (v12 <= 1)
        {
          goto LABEL_181;
        }
      }

LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

LABEL_205:
    v256 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    goto LABEL_173;
  }

  v312 = v7;
  v74 = 0;
  v313 = (v35 + 8);
  v75 = MEMORY[0x1E69E7CC0];
  ++v311;
  v285 = v9;
  v290 = v12;
  v291 = v21;
  v76 = v319;
  v318 = v39;
  v310 = v71;
  while (2)
  {
    v77 = v74 + 1;
    v284 = v75;
    v293 = v74;
    if (v74 + 1 >= v73)
    {
      v87 = v317;
      v88 = v310;
      goto LABEL_64;
    }

    v78 = v74;
    v79 = *v292;
    v80 = *(v282 + 72);
    v298 = v74 + 1;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v79 + v80 * v77, v266, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v302 = v80;
    v299 = v79;
    v81 = v263;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v79 + v80 * v78, v263, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v82 = v264;
    Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v264);
    v83 = specialized RangeSet.upperBound.getter();
    v12 = v84;
    v85 = *v313;
    v86 = v321;
    (*v313)(v82, v321);
    *&v300 = v73;
    v304 = v85;
    if (v12)
    {
      LODWORD(v301) = 0;
      v87 = v317;
      v88 = v310;
    }

    else
    {
      v89 = v261;
      Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v261);
      v12 = specialized RangeSet.upperBound.getter();
      v91 = v90;
      v85(v89, v86);
      LODWORD(v301) = (v91 & 1) == 0 && v83 < v12;
      v87 = v317;
      v88 = v310;
      v73 = v300;
    }

    outlined destroy of Text.Effect.SegmentInteraction.Element(v81, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v266, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v77 = v298;
    v92 = v302;
    v93 = v302 * v298;
    v94 = v302 * (v293 + 2);
    do
    {
      v96 = v77;
      *&v306 = v93;
      v95 = v94;
      v298 = ++v77;
      v303 = v96;
      if (v77 >= v73)
      {
        break;
      }

      v305 = v94;
      v97 = v299;
      v98 = v299 + v77 * v92;
      v77 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
      v99 = v295;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v98, v295, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v97 + v96 * v92, v297, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v99, v296, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v101 = v287;
          outlined init with take of Text.Effect.InteractionMetrics(v296, v287, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v102 = v315;
          Text.Layout.Line.characterRanges(runIndices:)();
          outlined destroy of Text.Effect.SegmentInteraction.Element(v101, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v103 = v321;
        }

        else
        {
          v113 = v272;
          outlined init with take of Text.Effect.InteractionMetrics(v296, v272, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v114 = v113 + *(v289 + 24);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          RangeSet.init()();
          v115 = *(v114 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
          v116 = *(v115 + 16);
          v117 = v320;
          if (v116)
          {
            v118 = v115 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
            v119 = *(v277 + 72);
            v102 = v315;
            do
            {
              outlined init with copy of Text.Effect.SegmentInteraction.Element(v118, v117, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v114, v102);
              v117 = v320;
              outlined destroy of Text.Effect.SegmentInteraction.Element(v320, type metadata accessor for Text.Effect.Composition.Operation);
              v118 += v119;
              --v116;
            }

            while (v116);
          }

          else
          {
            v102 = v315;
          }

          outlined destroy of Text.Effect.SegmentInteraction.Element(v272, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v103 = v321;
          v76 = v319;
        }
      }

      else
      {
        v104 = *v296;
        v105 = v296[1];
        v276 = v296[2];
        v286 = *(v296 + 5);
        v275 = *(v296 + 3);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        RangeSet.init()();
        v106 = *(v104 + 16);
        if (v106)
        {
          v107 = *(type metadata accessor for Text.Layout.Line() - 8);
          v108 = v104 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
          v109 = *(v107 + 72);

          v110 = v106;
          v76 = v312;
          while (1)
          {
            v12 = v108;
            v111 = Text.Layout.Line.characterRange.getter();
            v328 = v111;
            v329 = v112;
            if (__OFSUB__(v112, v111))
            {
              break;
            }

            if (v112 != v111)
            {
              v77 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              (v77)(&v322, 0);
            }

            v108 += v109;
            if (!--v110)
            {
              goto LABEL_30;
            }
          }

LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

LABEL_30:
        v322 = v104;
        v323 = v105;
        v324 = v276;
        v325 = v275;
        v326 = v286;
        v327 = v106;
        outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v322);

        v103 = v321;
        v39 = v318;
        v76 = v319;
        v102 = v315;
      }

      v120 = v279;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
      v121 = v312;
      v122 = dispatch thunk of Collection.isEmpty.getter();
      v123 = v304;
      if ((v122 & 1) == 0)
      {
        dispatch thunk of Collection.endIndex.getter();
        *&v275 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v124 = dispatch thunk of Collection.subscript.read();
        v126 = *(v125 + 8);
        v124(&v322, 0);
        *&v286 = *v311;
        (v286)(v120, v121);
        v123(v102, v103);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v297, v278, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v88 = v310;
        v127 = swift_getEnumCaseMultiPayload();
        v128 = v121;
        v276 = v126;
        if (v127)
        {
          v129 = v271;
          if (v127 == 1)
          {
            v130 = v103;
            v131 = v287;
            outlined init with take of Text.Effect.InteractionMetrics(v278, v287, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v131, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            goto LABEL_38;
          }

          v133 = v268;
          outlined init with take of Text.Effect.InteractionMetrics(v278, v268, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v134 = v133 + *(v289 + 24);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          RangeSet.init()();
          v135 = *(v134 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
          v136 = *(v135 + 16);
          v137 = v316;
          if (v136)
          {
            v138 = v135 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
            v139 = *(v277 + 72);
            v129 = v271;
            v92 = v302;
            do
            {
              outlined init with copy of Text.Effect.SegmentInteraction.Element(v138, v137, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v134, v129);
              v137 = v316;
              outlined destroy of Text.Effect.SegmentInteraction.Element(v316, type metadata accessor for Text.Effect.Composition.Operation);
              v138 += v139;
              --v136;
            }

            while (v136);
          }

          else
          {
            v129 = v271;
            v92 = v302;
          }

          outlined destroy of Text.Effect.SegmentInteraction.Element(v268, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v130 = v321;
          v88 = v310;
        }

        else
        {
          v132 = *(v278 + 16);
          v330[0] = *v278;
          v330[1] = v132;
          v330[2] = *(v278 + 32);
          v331 = *(v278 + 48);
          v130 = v103;
          v129 = v271;
          Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter();
          outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v330);
LABEL_38:
          v92 = v302;
        }

        v140 = v269;
        RangeSet.ranges.getter();
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v286)(v140, v128);
          v304(v129, v130);
          v12 = 0;
        }

        else
        {
          dispatch thunk of Collection.endIndex.getter();
          dispatch thunk of BidirectionalCollection.index(before:)();
          v141 = dispatch thunk of Collection.subscript.read();
          v143 = *(v142 + 8);
          v141(&v322, 0);
          (v286)(v140, v128);
          v304(v129, v130);
          v12 = v276 < v143;
        }

        v39 = v318;
        v76 = v319;
        goto LABEL_14;
      }

      (*v311)(v120, v121);
      v123(v102, v103);
      v12 = 0;
      v88 = v310;
      v92 = v302;
LABEL_14:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v297, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v295, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v93 = v306 + v92;
      v95 = v305;
      v94 = &v305[v92];
      v87 = v317;
      v77 = v298;
      v73 = v300;
    }

    while (v301 == v12);
    if (!v301)
    {
      goto LABEL_63;
    }

    if (v77 < v293)
    {
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v293 >= v77)
    {
LABEL_63:
      v21 = v291;
      goto LABEL_64;
    }

    v12 = v293 * v92;
    v144 = v293;
    v145 = v306;
    v146 = v303;
    do
    {
      if (v144 != v146)
      {
        v303 = v146;
        v148 = *v292;
        if (!*v292)
        {
          goto LABEL_210;
        }

        v149 = v95;
        outlined init with take of Text.Effect.InteractionMetrics(v148 + v12, v270, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v12 < v145 || v148 + v12 >= &v149[v148])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 != v145)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        outlined init with take of Text.Effect.InteractionMetrics(v270, v148 + v145, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v88 = v310;
        v95 = v149;
        v146 = v303;
      }

      ++v144;
      v145 -= v92;
      v95 -= v92;
      v12 += v92;
    }

    while (v144 < v146--);
    v21 = v291;
    v76 = v319;
    v77 = v298;
LABEL_64:
    v150 = v292[1];
    if (v77 >= v150)
    {
      goto LABEL_118;
    }

    if (__OFSUB__(v77, v293))
    {
      goto LABEL_202;
    }

    if (v77 - v293 >= v262)
    {
      goto LABEL_118;
    }

    v151 = v293 + v262;
    if (__OFADD__(v293, v262))
    {
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    if (v151 >= v150)
    {
      v151 = v292[1];
    }

    if (v151 < v293)
    {
      goto LABEL_204;
    }

    if (v77 == v151)
    {
      goto LABEL_118;
    }

    v304 = *v292;
    *&v286 = *(v282 + 72);
    v265 = v151;
    while (2)
    {
      v298 = v77;
      v152 = v77;
      while (2)
      {
        v153 = v39;
        v154 = v152 - 1;
        v155 = v304;
        v156 = v286;
        v77 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
        v302 = v304 + v286 * v152;
        v157 = v308;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v302, v308, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v303 = v154;
        v301 = v155 + v154 * v156;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v301, v314, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v157, v309, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v158 = swift_getEnumCaseMultiPayload();
        if (v158)
        {
          v39 = v153;
          if (v158 == 1)
          {
            v159 = v287;
            outlined init with take of Text.Effect.InteractionMetrics(v309, v287, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v159, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v160 = v290;
            v161 = v321;
          }

          else
          {
            v171 = v88;
            v172 = v281;
            outlined init with take of Text.Effect.InteractionMetrics(v309, v281, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v173 = v172 + *(v289 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
            RangeSet.init()();
            v174 = *(v173 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v175 = *(v174 + 16);
            if (v175)
            {
              v176 = v174 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
              v177 = *(v277 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v176, v21, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v173, v153);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v21, type metadata accessor for Text.Effect.Composition.Operation);
                v176 += v177;
                --v175;
              }

              while (v175);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v281, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v87 = v317;
            v161 = v321;
            v160 = v290;
            v88 = v171;
          }

          goto LABEL_92;
        }

        v162 = *v309;
        v163 = v309[1];
        v305 = v309[2];
        v306 = *(v309 + 5);
        v300 = *(v309 + 3);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
        RangeSet.init()();
        v164 = *(v162 + 16);
        if (v164)
        {
          v165 = *(type metadata accessor for Text.Layout.Line() - 8);
          v166 = v162 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
          v167 = *(v165 + 72);

          v168 = v164;
          v76 = v312;
          while (1)
          {
            v12 = v166;
            v169 = Text.Layout.Line.characterRange.getter();
            v328 = v169;
            v329 = v170;
            if (__OFSUB__(v170, v169))
            {
              break;
            }

            if (v170 != v169)
            {
              v77 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              (v77)(&v322, 0);
            }

            v166 += v167;
            if (!--v168)
            {
              goto LABEL_91;
            }
          }

          __break(1u);
          goto LABEL_183;
        }

LABEL_91:
        v322 = v162;
        v323 = v163;
        v324 = v305;
        v325 = v300;
        v326 = v306;
        v327 = v164;
        outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v322);

        v160 = v290;
        v87 = v317;
        v161 = v321;
        v39 = v318;
        v88 = v310;
LABEL_92:
        v178 = v161;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        v12 = v160;
        v179 = v312;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (*v311)(v160, v179);
          (*v313)(v39, v178);
          v21 = v291;
LABEL_74:
          outlined destroy of Text.Effect.SegmentInteraction.Element(v314, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined destroy of Text.Effect.SegmentInteraction.Element(v308, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          goto LABEL_75;
        }

        dispatch thunk of Collection.endIndex.getter();
        v299 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v180 = dispatch thunk of Collection.subscript.read();
        v182 = *(v181 + 8);
        v180(&v322, 0);
        v305 = *v311;
        (v305)(v160, v179);
        v183 = v178;
        *&v306 = *v313;
        (v306)(v39, v178);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v314, v307, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v184 = v88;
        v185 = swift_getEnumCaseMultiPayload();
        *&v300 = v182;
        if (v185)
        {
          if (v185 == 1)
          {
            v186 = v287;
            outlined init with take of Text.Effect.InteractionMetrics(v307, v287, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v187 = v319;
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v186, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v188 = v285;
            v76 = v312;
          }

          else
          {
            v198 = v280;
            outlined init with take of Text.Effect.InteractionMetrics(v307, v280, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v199 = v198 + *(v289 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
            RangeSet.init()();
            v200 = *(v199 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v201 = *(v200 + 16);
            if (v201)
            {
              v202 = v200 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
              v203 = *(v277 + 72);
              v187 = v319;
              v76 = v312;
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v202, v87, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v199, v187);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v87, type metadata accessor for Text.Effect.Composition.Operation);
                v202 += v203;
                --v201;
              }

              while (v201);
            }

            else
            {
              v187 = v319;
              v76 = v312;
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v280, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v183 = v321;
            v184 = v310;
            v188 = v285;
          }
        }

        else
        {
          v190 = *v307;
          v189 = v307[1];
          v274 = v307[2];
          v275 = *(v307 + 5);
          v273 = *(v307 + 3);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          RangeSet.init()();
          v191 = *(v190 + 16);
          v276 = v189;
          if (v191)
          {
            v192 = *(type metadata accessor for Text.Layout.Line() - 8);
            v77 = v190 + ((*(v192 + 80) + 32) & ~*(v192 + 80));
            v193 = *(v192 + 72);

            v194 = v191;
            v76 = v312;
            while (1)
            {
              v12 = v77;
              v195 = Text.Layout.Line.characterRange.getter();
              v328 = v195;
              v329 = v196;
              if (__OFSUB__(v196, v195))
              {
                break;
              }

              if (v196 != v195)
              {
                v197 = RangeSet._ranges.modify();
                RangeSet.Ranges._insert(contentsOf:)();
                v197(&v322, 0);
                v87 = v317;
              }

              v77 += v193;
              if (!--v194)
              {
                goto LABEL_107;
              }
            }

LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          v76 = v312;
LABEL_107:
          v322 = v190;
          v323 = v276;
          v324 = v274;
          v325 = v273;
          v326 = v275;
          v327 = v191;
          outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v322);

          v188 = v285;
          v183 = v321;
          v187 = v319;
          v184 = v310;
        }

        RangeSet.ranges.getter();
        v12 = v188;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v305)(v188, v76);
          (v306)(v187, v183);
          v21 = v291;
          v88 = v184;
          v39 = v318;
          goto LABEL_74;
        }

        dispatch thunk of Collection.endIndex.getter();
        dispatch thunk of BidirectionalCollection.index(before:)();
        v204 = dispatch thunk of Collection.subscript.read();
        v12 = *(v205 + 8);
        v204(&v322, 0);
        (v305)(v188, v76);
        (v306)(v187, v183);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v314, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v308, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v300 < v12)
        {
          v21 = v291;
          v39 = v318;
          if (!v304)
          {
            goto LABEL_207;
          }

          v88 = v184;
          v12 = v283;
          outlined init with take of Text.Effect.InteractionMetrics(v302, v283, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v206 = v301;
          swift_arrayInitWithTakeFrontToBack();
          outlined init with take of Text.Effect.InteractionMetrics(v12, v206, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v152 = v303;
          if (v303 == v293)
          {
            goto LABEL_75;
          }

          continue;
        }

        break;
      }

      v21 = v291;
      v88 = v184;
      v39 = v318;
LABEL_75:
      v77 = v298 + 1;
      if (v298 + 1 != v265)
      {
        continue;
      }

      break;
    }

    v77 = v265;
    v76 = v319;
LABEL_118:
    v207 = v293;
    if (v77 < v293)
    {
      goto LABEL_201;
    }

    v208 = swift_isUniquelyReferenced_nonNull_native();
    v298 = v77;
    if (v208)
    {
      v75 = v284;
    }

    else
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v284 + 2) + 1, 1, v284);
    }

    v77 = *(v75 + 2);
    v209 = *(v75 + 3);
    v12 = v77 + 1;
    if (v77 >= v209 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v12;
    v210 = &v75[16 * v77];
    v211 = v298;
    *(v210 + 4) = v207;
    *(v210 + 5) = v211;
    v212 = *v267;
    if (*v267)
    {
      if (!v77)
      {
LABEL_3:
        v73 = v292[1];
        v74 = v298;
        v21 = v291;
        if (v298 >= v73)
        {
          goto LABEL_170;
        }

        continue;
      }

      while (2)
      {
        v213 = v12 - 1;
        if (v12 >= 4)
        {
          v218 = &v75[16 * v12 + 32];
          v219 = *(v218 - 64);
          v220 = *(v218 - 56);
          v224 = __OFSUB__(v220, v219);
          v221 = v220 - v219;
          if (v224)
          {
            goto LABEL_188;
          }

          v223 = *(v218 - 48);
          v222 = *(v218 - 40);
          v224 = __OFSUB__(v222, v223);
          v216 = v222 - v223;
          v217 = v224;
          if (v224)
          {
            goto LABEL_189;
          }

          v225 = &v75[16 * v12];
          v227 = *v225;
          v226 = *(v225 + 1);
          v224 = __OFSUB__(v226, v227);
          v228 = v226 - v227;
          if (v224)
          {
            goto LABEL_191;
          }

          v224 = __OFADD__(v216, v228);
          v229 = v216 + v228;
          if (v224)
          {
            goto LABEL_194;
          }

          if (v229 >= v221)
          {
            v247 = &v75[16 * v213 + 32];
            v249 = *v247;
            v248 = *(v247 + 1);
            v224 = __OFSUB__(v248, v249);
            v250 = v248 - v249;
            if (v224)
            {
              goto LABEL_200;
            }

            if (v216 < v250)
            {
              v213 = v12 - 2;
            }
          }

          else
          {
LABEL_138:
            if (v217)
            {
              goto LABEL_190;
            }

            v230 = &v75[16 * v12];
            v232 = *v230;
            v231 = *(v230 + 1);
            v233 = __OFSUB__(v231, v232);
            v234 = v231 - v232;
            v235 = v233;
            if (v233)
            {
              goto LABEL_193;
            }

            v236 = &v75[16 * v213 + 32];
            v238 = *v236;
            v237 = *(v236 + 1);
            v224 = __OFSUB__(v237, v238);
            v239 = v237 - v238;
            if (v224)
            {
              goto LABEL_196;
            }

            if (__OFADD__(v234, v239))
            {
              goto LABEL_197;
            }

            if (v234 + v239 < v216)
            {
              goto LABEL_152;
            }

            if (v216 < v239)
            {
              v213 = v12 - 2;
            }
          }
        }

        else
        {
          if (v12 == 3)
          {
            v214 = *(v75 + 4);
            v215 = *(v75 + 5);
            v224 = __OFSUB__(v215, v214);
            v216 = v215 - v214;
            v217 = v224;
            goto LABEL_138;
          }

          v240 = &v75[16 * v12];
          v242 = *v240;
          v241 = *(v240 + 1);
          v224 = __OFSUB__(v241, v242);
          v234 = v241 - v242;
          v235 = v224;
LABEL_152:
          if (v235)
          {
            goto LABEL_192;
          }

          v243 = &v75[16 * v213];
          v245 = *(v243 + 4);
          v244 = *(v243 + 5);
          v224 = __OFSUB__(v244, v245);
          v246 = v244 - v245;
          if (v224)
          {
            goto LABEL_195;
          }

          if (v246 < v234)
          {
            goto LABEL_3;
          }
        }

        v77 = v213 - 1;
        if (v213 - 1 >= v12)
        {
          goto LABEL_185;
        }

        if (!*v292)
        {
          goto LABEL_208;
        }

        v251 = v75;
        v12 = *&v75[16 * v77 + 32];
        v252 = *&v75[16 * v213 + 40];
        v253 = v294;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v292 + *(v282 + 72) * v12, *v292 + *(v282 + 72) * *&v75[16 * v213 + 32], (*v292 + *(v282 + 72) * v252), v212);
        v294 = v253;
        if (v253)
        {
          goto LABEL_181;
        }

        if (v252 < v12)
        {
          goto LABEL_186;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew()(v251);
        }

        if (v77 >= *(v251 + 2))
        {
          goto LABEL_187;
        }

        v254 = &v251[16 * v77];
        *(v254 + 4) = v12;
        *(v254 + 5) = v252;
        v332 = v251;
        specialized Array.remove(at:)(v213);
        v75 = v332;
        v12 = *(v332 + 2);
        v76 = v319;
        if (v12 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v196 = a4;
  v189 = a3;
  v6 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v201 = v7;
  v197 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v172 = v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v185 = v169 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v176 = v169 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v186 = v169 - v14;
  v15 = type metadata accessor for Text.Effect.Composition.Run(0);
  v177 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v169[0] = v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v169 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v169 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v169 - v24;
  v183 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v183);
  v170 = v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v174 = v169 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v173 = v169 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v180 = v169 - v32;
  v182 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v182);
  v181 = v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v171 = v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v169 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v175 = v169 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v169 - v44;
  v199 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v199);
  v184 = (v169 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47);
  v192 = (v169 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v193 = (v169 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v191 = v169 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v187 = v169 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v188 = (v169 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v198 = v169 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v195 = v169 - v60;
  v190 = *(v61 + 72);
  if (!v190)
  {
    goto LABEL_120;
  }

  if (a2 - a1 == 0x8000000000000000 && v190 == -1)
  {
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    return;
  }

  v62 = &v189[-a2];
  if (&v189[-a2] == 0x8000000000000000 && v190 == -1)
  {
    goto LABEL_122;
  }

  v200 = v35;
  v63 = (a2 - a1) / v190;
  v211 = a1;
  v64 = v196;
  v206 = v196;
  if (v63 >= v62 / v190)
  {
    v68 = v62 / v190 * v190;
    v69 = v190;
    if (v196 < a2 || a2 + v68 <= v196)
    {
      swift_arrayInitWithTakeFrontToBack();
      v70 = v189;
    }

    else
    {
      v70 = v189;
      if (v196 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v114 = v64 + v68;
    if (v68 < 1)
    {
      v118 = v64 + v68;
    }

    else
    {
      v115 = -v69;
      v189 = (v197 + 8);
      v188 = (v36 + 8);
      v116 = v64 + v68;
      v194 = a1;
      v117 = v200;
      v118 = v114;
      v186 = v115;
      v180 = v40;
      do
      {
        v173 = v118;
        v119 = a2;
        v120 = a2 + v115;
        v197 = v120;
        v187 = v119;
        while (1)
        {
          if (v119 <= a1)
          {
            v211 = v119;
            v205 = v173;
            goto LABEL_117;
          }

          v190 = v70;
          v179 = v118;
          v195 = v116;
          v121 = v116 + v115;
          v198 = v116 + v115;
          v122 = v191;
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v121, v191, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v120, v193, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v122, v192, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v124 = v181;
              outlined init with take of Text.Effect.InteractionMetrics(v192, v181, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
              Text.Layout.Line.characterRanges(runIndices:)();
              outlined destroy of Text.Effect.SegmentInteraction.Element(v124, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            }

            else
            {
              v134 = v174;
              outlined init with take of Text.Effect.InteractionMetrics(v192, v174, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
              v135 = v134 + *(v183 + 24);
              lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
              RangeSet.init()();
              v136 = *(v135 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
              v137 = *(v136 + 16);
              if (v137)
              {
                v138 = v136 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
                v139 = *(v177 + 72);
                do
                {
                  outlined init with copy of Text.Effect.SegmentInteraction.Element(v138, v19, type metadata accessor for Text.Effect.Composition.Run);
                  Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v135, v40);
                  outlined destroy of Text.Effect.SegmentInteraction.Element(v19, type metadata accessor for Text.Effect.Composition.Operation);
                  v138 += v139;
                  --v137;
                }

                while (v137);
              }

              outlined destroy of Text.Effect.SegmentInteraction.Element(v174, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
              a1 = v194;
            }
          }

          else
          {
            v126 = *v192;
            v125 = v192[1];
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
            RangeSet.init()();
            v127 = *(v126 + 2);
            v178 = v125;
            if (v127)
            {
              v128 = *(type metadata accessor for Text.Layout.Line() - 8);
              v129 = &v126[(*(v128 + 80) + 32) & ~*(v128 + 80)];
              v130 = *(v128 + 72);

              do
              {
                v131 = Text.Layout.Line.characterRange.getter();
                v202 = v131;
                v203 = v132;
                if (__OFSUB__(v132, v131))
                {
                  goto LABEL_119;
                }

                if (v132 != v131)
                {
                  v133 = RangeSet._ranges.modify();
                  RangeSet.Ranges._insert(contentsOf:)();
                  v133(v204, 0);
                  v117 = v200;
                }

                v129 += v130;
                --v127;
              }

              while (v127);
            }

            else
            {
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v120 = v197;
          }

          v140 = v185;
          RangeSet.ranges.getter();
          lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
          v141 = v201;
          if (dispatch thunk of Collection.isEmpty.getter())
          {
            v142 = v40;
            v143 = v120;
            (*v189)(v140, v141);
            (*v188)(v142, v117);
            v144 = 0;
          }

          else
          {
            dispatch thunk of Collection.endIndex.getter();
            v175 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
            dispatch thunk of BidirectionalCollection.index(before:)();
            v145 = dispatch thunk of Collection.subscript.read();
            v176 = *(v146 + 8);
            v145(v204, 0);
            v178 = *v189;
            v178(v140, v141);
            v147 = v40;
            v148 = *v188;
            (*v188)(v147, v117);
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v193, v184, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v149 = swift_getEnumCaseMultiPayload();
            if (v149)
            {
              v150 = v171;
              if (v149 == 1)
              {
                v151 = v181;
                outlined init with take of Text.Effect.InteractionMetrics(v184, v181, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
                Text.Layout.Line.characterRanges(runIndices:)();
                outlined destroy of Text.Effect.SegmentInteraction.Element(v151, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
              }

              else
              {
                v154 = v170;
                outlined init with take of Text.Effect.InteractionMetrics(v184, v170, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                v155 = v154 + *(v183 + 24);
                lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
                RangeSet.init()();
                v156 = *(v155 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
                v157 = *(v156 + 16);
                v158 = v169[0];
                if (v157)
                {
                  v159 = v156 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
                  v160 = *(v177 + 72);
                  do
                  {
                    outlined init with copy of Text.Effect.SegmentInteraction.Element(v159, v158, type metadata accessor for Text.Effect.Composition.Run);
                    Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v155, v150);
                    outlined destroy of Text.Effect.SegmentInteraction.Element(v158, type metadata accessor for Text.Effect.Composition.Operation);
                    v159 += v160;
                    --v157;
                  }

                  while (v157);
                }

                outlined destroy of Text.Effect.SegmentInteraction.Element(v170, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                a1 = v194;
              }

              v153 = v150;
            }

            else
            {
              v152 = v184[1];
              v207 = *v184;
              v208 = v152;
              v209 = v184[2];
              v210 = *(v184 + 6);
              v153 = v171;
              Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter();
              outlined destroy of Text.Effect.RenderSegmentation.StaticLines(&v207);
            }

            v161 = v172;
            v162 = v200;
            RangeSet.ranges.getter();
            v163 = v201;
            if (dispatch thunk of Collection.isEmpty.getter())
            {
              v178(v161, v163);
              v148(v153, v162);
              v144 = 0;
            }

            else
            {
              dispatch thunk of Collection.endIndex.getter();
              dispatch thunk of BidirectionalCollection.index(before:)();
              v164 = dispatch thunk of Collection.subscript.read();
              v166 = *(v165 + 8);
              v164(v204, 0);
              v178(v161, v163);
              v148(v153, v162);
              v144 = v176 < v166;
            }

            v117 = v162;
            v143 = v197;
          }

          v115 = v186;
          v167 = v190;
          v70 = &v186[v190];
          outlined destroy of Text.Effect.SegmentInteraction.Element(v193, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined destroy of Text.Effect.SegmentInteraction.Element(v191, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if (v144)
          {
            break;
          }

          v118 = v198;
          if (v167 < v195 || v70 >= v195)
          {
            swift_arrayInitWithTakeFrontToBack();
            v120 = v143;
          }

          else
          {
            v168 = v167 == v195;
            v120 = v143;
            if (!v168)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v116 = v118;
          v119 = v187;
          v40 = v180;
          if (v198 <= v196)
          {
            a2 = v187;
            goto LABEL_116;
          }
        }

        if (v167 < v187 || v70 >= v187)
        {
          a2 = v143;
          swift_arrayInitWithTakeFrontToBack();
          v118 = v179;
          v116 = v195;
        }

        else
        {
          v168 = v167 == v187;
          v118 = v179;
          v116 = v195;
          a2 = v143;
          if (!v168)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v180;
      }

      while (v116 > v196);
    }

LABEL_116:
    v211 = a2;
    v205 = v118;
  }

  else
  {
    v65 = v63 * v190;
    v66 = v196;
    if (v196 < a1 || a1 + v65 <= v196)
    {
      swift_arrayInitWithTakeFrontToBack();
      v67 = v200;
    }

    else
    {
      v67 = v200;
      if (v196 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v191 = v66 + v65;
    v205 = v66 + v65;
    if (v65 >= 1 && a2 < v189)
    {
      v193 = (v197 + 8);
      v192 = (v36 + 8);
      v174 = v22;
      while (1)
      {
        v71 = v195;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(a2, v195, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v66, v198, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v72 = v71;
        v73 = v188;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v72, v188, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v74 = swift_getEnumCaseMultiPayload();
        v197 = a2;
        if (v74)
        {
          if (v74 == 1)
          {
            v75 = v73;
            v76 = v181;
            outlined init with take of Text.Effect.InteractionMetrics(v75, v181, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v76, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          }

          else
          {
            v196 = v66;
            v86 = a1;
            v87 = v180;
            outlined init with take of Text.Effect.InteractionMetrics(v73, v180, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v88 = v87 + *(v183 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
            RangeSet.init()();
            v89 = *(v88 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v90 = *(v89 + 16);
            if (v90)
            {
              v91 = v89 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
              v92 = *(v177 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v91, v25, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v88, v45);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v25, type metadata accessor for Text.Effect.Composition.Operation);
                v91 += v92;
                --v90;
              }

              while (v90);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v180, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            a1 = v86;
            v66 = v196;
            v67 = v200;
          }
        }

        else
        {
          v196 = v66;
          v194 = a1;
          v77 = *v73;
          v78 = v73[1];
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
          RangeSet.init()();
          v79 = *(v77 + 16);
          v185 = v78;
          if (v79)
          {
            v80 = *(type metadata accessor for Text.Layout.Line() - 8);
            v81 = v77 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
            v82 = *(v80 + 72);

            while (1)
            {
              v83 = Text.Layout.Line.characterRange.getter();
              v202 = v83;
              v203 = v84;
              if (__OFSUB__(v84, v83))
              {
                break;
              }

              if (v84 != v83)
              {
                v85 = RangeSet._ranges.modify();
                RangeSet.Ranges._insert(contentsOf:)();
                v85(v204, 0);
                v67 = v200;
              }

              v81 += v82;
              if (!--v79)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_33:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          a1 = v194;
          v66 = v196;
        }

        v93 = v186;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        v94 = v201;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          break;
        }

        dispatch thunk of Collection.endIndex.getter();
        v178 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v95 = dispatch thunk of Collection.subscript.read();
        v179 = *(v96 + 8);
        v95(v204, 0);
        v184 = *v193;
        (v184)(v93, v94);
        v185 = *v192;
        (v185)(v45, v67);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v198, v187, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v97 = swift_getEnumCaseMultiPayload();
        v194 = a1;
        if (v97)
        {
          v98 = v174;
          v99 = v175;
          if (v97 == 1)
          {
            v100 = v181;
            outlined init with take of Text.Effect.InteractionMetrics(v187, v181, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v100, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          }

          else
          {
            v196 = v66;
            v102 = v173;
            outlined init with take of Text.Effect.InteractionMetrics(v187, v173, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v103 = v102 + *(v183 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
            RangeSet.init()();
            v104 = *(v103 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v105 = *(v104 + 16);
            if (v105)
            {
              v106 = v104 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
              v107 = *(v177 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v106, v98, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v103, v99);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v98, type metadata accessor for Text.Effect.Composition.Operation);
                v106 += v107;
                --v105;
              }

              while (v105);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v173, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v66 = v196;
            v67 = v200;
            v94 = v201;
          }
        }

        else
        {
          v101 = *(v187 + 16);
          v207 = *v187;
          v208 = v101;
          v209 = *(v187 + 32);
          v210 = *(v187 + 48);
          v99 = v175;
          Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter();
          outlined destroy of Text.Effect.RenderSegmentation.StaticLines(&v207);
        }

        v108 = v176;
        RangeSet.ranges.getter();
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v184)(v108, v94);
          (v185)(v99, v67);
          a1 = v194;
          goto LABEL_46;
        }

        dispatch thunk of Collection.endIndex.getter();
        dispatch thunk of BidirectionalCollection.index(before:)();
        v110 = dispatch thunk of Collection.subscript.read();
        v112 = *(v111 + 8);
        v110(v204, 0);
        (v184)(v108, v94);
        (v185)(v99, v67);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v198, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v195, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v113 = v179 < v112;
        a2 = v197;
        a1 = v194;
        v109 = v190;
        if (v113)
        {
          if (v194 < v197 || v194 >= v197 + v190)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v194 != v197)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v109;
          goto LABEL_53;
        }

LABEL_47:
        if (a1 < v66 || a1 >= v66 + v109)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v66)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v206 = v66 + v109;
        v66 += v109;
LABEL_53:
        a1 += v109;
        v211 = a1;
        if (v66 >= v191 || a2 >= v189)
        {
          goto LABEL_117;
        }
      }

      (*v193)(v93, v94);
      (*v192)(v45, v67);
LABEL_46:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v198, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v195, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      a2 = v197;
      v109 = v190;
      goto LABEL_47;
    }
  }

LABEL_117:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v211, &v206, &v205);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized Text.Effect.SegmentInteraction.isEndOfFragment(for:range:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a2;
  v33 = a3;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.RenderSegmentation.Segment?, type metadata accessor for Text.Effect.RenderSegmentation.Segment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.trailingSegment.getter(a4, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of Text.Effect.InteractionMetrics?(v18, &lazy cache variable for type metadata for Text.Effect.RenderSegmentation.Segment?, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    return 0;
  }

  result = outlined init with take of Text.Effect.InteractionMetrics(v18, v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a4[2] <= a1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v15);
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v12);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  v24 = static RangeSet.== infix(_:_:)();
  v25 = *(v8 + 8);
  v25(v12, v7);
  v25(v15, v7);
  if ((v24 & 1) == 0)
  {
    outlined destroy of Text.Effect.SegmentInteraction.Element(v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    return 0;
  }

  v26 = v34;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v34);
  v27 = specialized RangeSet.upperBound.getter();
  v29 = v28;
  v25(v26, v7);
  outlined destroy of Text.Effect.SegmentInteraction.Element(v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (v29)
  {
    return 0;
  }

  return v27 <= v32 && v27 < v33;
}

BOOL specialized Text.Effect.SegmentInteraction.matches(range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v20 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = a3;
  v21 = *(a3 + 16);
  v16 = (v7 + 8);
  do
  {
    v17 = v14;
    if (v21 == v14)
    {
      break;
    }

    outlined init with copy of Text.Effect.SegmentInteraction.Element(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v9);
    if (specialized RangeSet.overlaps(_:)(a1, a2))
    {
      (*v16)(v9, v20);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      return v21 != v17;
    }

    ++v14;
    v18 = specialized RangeSet.contains(_:)(a1, a2);
    (*v16)(v9, v20);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }

  while (!v18);
  return v21 != v17;
}

uint64_t outlined init with copy of Text.Effect.SegmentInteraction.Element(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _SetStorage<Text.Effect.Identifier>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Text.Effect.InteractionMetrics?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Text.Effect.InteractionMetrics?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Text.Effect.InteractionMetrics?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Text.Effect.InteractionMetrics?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Text.Effect.InteractionMetrics?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Text.Effect.SegmentInteraction.Element()
{
  type metadata accessor for Text.Effect.RenderSegmentation.Segment(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Text.Effect.RangeCoordinateSpace()
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(319, &lazy cache variable for type metadata for Range<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E66A8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LayoutDirection();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.InteractionMetrics.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.InteractionMetrics.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 96) = v3;
  return result;
}

double Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(*v3 + 16);
  if (v13)
  {
    v14 = (v12 + 88);
    for (i = *(*v3 + 16); i; --i)
    {
      v18 = *(v14 - 7);
      v17 = *(v14 - 6);
      if (a2 == 2)
      {
        if (v18 <= a1 && v17 >= a1)
        {
          result = *(v14 - 5);
          return result - *v14 + v14[4];
        }
      }

      else if (v18 <= a1 && v17 > a1)
      {
        result = *(v14 - 5);
        if (a2 - 1 > 1)
        {
          return result;
        }

        return result - *v14 + v14[4];
      }

      v14 += 12;
    }
  }

  (*(v8 + 16))(v11, a3, v7, v9);
  v21 = (*(v8 + 88))(v11, v7);
  if (v21 != *MEMORY[0x1E697E7D0])
  {
    if (v21 == *MEMORY[0x1E697E7D8])
    {
      if (v13)
      {
        return *(v12 + 48);
      }

      else
      {
        return *(v3 + *(type metadata accessor for Text.Effect.InteractionMetrics() + 28));
      }
    }

    (*(v8 + 8))(v11, v7);
  }

  v22 = (v3 + *(type metadata accessor for Text.Effect.InteractionMetrics() + 28));
  result = *v22;
  if (*v22 == 0.0 && v22[1] == 0.0)
  {
    v23 = *(v12 + 16);
    if (v23)
    {
      return *(v12 + 96 * v23 - 48);
    }
  }

  return result;
}