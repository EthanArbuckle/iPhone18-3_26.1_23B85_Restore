double one-time initialization function for z()
{
  v18 = type metadata accessor for UnitCurve();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_195CCE9E0;
  v19 = 0;
  v20 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v7 = v21;
  *(v6 + 32) = v22;
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x3FCDD2F1A9FBE76DLL;
  *(v6 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v6 + 64) = 0;
  v19 = 0;
  v20 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v21;
  *(v6 + 72) = v22;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0x3FCDD2F1A9FBE76DLL;
  *(v6 + 96) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v6 + 104) = 0;
  v19 = 0;
  v20 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v9 = v21;
  *(v6 + 112) = v22;
  *(v6 + 120) = v9;
  *(v6 + 128) = 0x3FD0000000000000;
  *(v6 + 136) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v6 + 144) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v10 = v18;
  (*(v0 + 16))(v2, v5, v18);
  v19 = 0x3FF0000000000000;
  v20 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  (*(v0 + 8))(v5, v10);
  v11 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v12 = swift_allocObject();
  (*(v0 + 32))(v12 + v11, v2, v10);
  v13 = v21;
  *(v6 + 152) = v22;
  *(v6 + 160) = v13;
  *(v6 + 168) = 0x3FF1DB22D0E56042;
  *(v6 + 176) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v6 + 184) = v12;
  v19 = 0x3FF0000000000000;
  v20 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v14 = v21;
  *(v6 + 192) = v22;
  *(v6 + 200) = v14;
  *(v6 + 208) = 0x3FD54FDF3B645A1DLL;
  *(v6 + 216) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v6 + 224) = 0;
  v19 = 0;
  v20 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v16 = v21;
  result = v22;
  *(v6 + 232) = v22;
  *(v6 + 240) = v16;
  *(v6 + 248) = 0x3FD883126E978D50;
  *(v6 + 256) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v6 + 264) = 0;
  static ExplodeTextEffect.Target.z = v6;
  return result;
}

unint64_t *_sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(unint64_t *result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *result;
  v3 = result[1];
  do
  {
    v5 = v3 + 0x5851F42D4C957F2DLL * v4;
    v6 = __ROR4__((v4 >> 45) ^ (v4 >> 27), v4 >> 59);
    v4 = v3 + 0x5851F42D4C957F2DLL * v5;
  }

  while ((a3 - a2) * vcvtd_n_f64_u64(__ROR4__((v5 >> 45) ^ (v5 >> 27), v5 >> 59) | ((*&v6 & 0x1FFFFFLL) << 32), 0x35uLL) + a2 == a3);
  *result = v4;
  return result;
}

double protocol witness for static Text.Effect.Base.animatorConfiguration(from:) in conformance ExplodeTextEffect@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized static ExplodeTextEffect.animatorConfiguration(from:)(a1, &v5);
  result = *&v5;
  v4 = *v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  *(a2 + 30) = *&v6[14];
  return result;
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ExplodeTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized ExplodeTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ExplodeTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect();
  result = lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect();
  *(a1 + 16) = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 12) >= *v12)
          {
            break;
          }

          v13 = v12 - 80;
          v14 = *(v12 + 2);
          v27 = *(v12 + 1);
          v28 = v14;
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *(v12 + 6);
          v31 = *(v12 + 5);
          v32 = v17;
          v29 = v15;
          v30 = v16;
          v18 = *v12;
          *(v12 + 5) = *(v12 - 1);
          *(v12 + 6) = v18;
          v19 = *(v12 - 2);
          *(v12 + 3) = *(v12 - 3);
          *(v12 + 4) = v19;
          v20 = *(v12 - 4);
          *(v12 + 1) = *(v12 - 5);
          *(v12 + 2) = v20;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v32;
          *(v13 + 4) = v31;
          *v12 = v24;
          *(v13 + 2) = v22;
          *(v13 + 3) = v23;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v81 = (v7 + 16);
    v82 = *(v7 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v7 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v83), (*a3 + 96 * *v85), (*a3 + 96 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 80);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 80);
      v13 = v8 + 2;
      v14 = (v11 + 272);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 12;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 96 * v6 - 96;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v95 = *(v22 + v10 + 32);
            v97 = *(v22 + v10 + 48);
            v99 = *(v22 + v10 + 64);
            v101 = *(v22 + v10 + 80);
            v91 = *(v22 + v10);
            v93 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x60uLL);
            v21[2] = v95;
            v21[3] = v97;
            v21[4] = v99;
            v21[5] = v101;
            *v21 = v91;
            v21[1] = v93;
          }

          ++v20;
          v18 -= 96;
          v10 += 96;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v34 = *(v7 + 16);
    v33 = *(v7 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v35;
    v36 = v7 + 32;
    v37 = (v7 + 32 + 16 * v34);
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v7 + 32);
          v40 = *(v7 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v7 + 16 * v35);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v36 + 16 * v38);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v7 + 16 * v35);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v36 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v36 + 16 * (v38 - 1));
        v77 = *v76;
        v78 = (v36 + 16 * v38);
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v76), (*a3 + 96 * *v78), (*a3 + 96 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v7 + 16);
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove((v36 + 16 * v38), v78 + 2, 16 * (v80 - 1 - v38));
        *(v7 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v36 + 16 * v35;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v7 + 16 * v35);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v36 + 16 * v38);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 96 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 80) >= *(v27 - 16))
    {
LABEL_29:
      ++v6;
      v24 += 96;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 96);
    v96 = *(v27 + 32);
    v98 = *(v27 + 48);
    v100 = *(v27 + 64);
    v102 = *(v27 + 80);
    v92 = *v27;
    v94 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 32) = *(v27 - 64);
    *(v27 + 48) = v29;
    v30 = *(v27 - 16);
    *(v27 + 64) = *(v27 - 32);
    *(v27 + 80) = v30;
    v31 = *(v27 - 80);
    *v27 = *(v27 - 96);
    *(v27 + 16) = v31;
    v28[2] = v96;
    v28[3] = v98;
    v28[4] = v100;
    v28[5] = v102;
    v27 -= 96;
    *v28 = v92;
    v28[1] = v94;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[12 * v9] <= a4)
    {
      memmove(a4, __dst, 96 * v9);
    }

    v12 = &v4[12 * v9];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[10] < v4[10])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 12;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 12;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[12 * v11] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v12 = &v4[12 * v11];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 12;
    do
    {
      v15 = v5 + 12;
      if (*(v12 - 2) < *(v6 - 2))
      {
        v17 = v6 - 12;
        if (v15 != v6)
        {
          memmove(v5, v6 - 12, 0x60uLL);
        }

        if (v12 <= v4 || (v6 -= 12, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 12);
      if (v15 != v12)
      {
        memmove(v5, v12 - 12, 0x60uLL);
      }

      v5 -= 12;
      v12 -= 12;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[12 * v18])
  {
    memmove(v6, v4, 96 * v18);
  }

  return 1;
}

void specialized static ExplodeTextEffect.animatorConfiguration(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = 1;
  v29 = 1;
  if (!*(a1 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F43656372756F73, 0xEB00000000726F6CLL), (v5 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v4, v28), type metadata accessor for NSObject(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v8 = 0;
    v10 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v7 = CGColorForCoreColor(v27, v6);
  if (!v7)
  {

    goto LABEL_8;
  }

  v8 = Color.Resolved.init(failableCGColor:)(v7);
  v10 = v9;
  v12 = v11;

  v30 = v12 & 1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F43746567726174, 0xEB00000000726F6CLL);
  if (v14)
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v28);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v16 = CGColorForCoreColor(v27, v15);
      if (v16)
      {
        v17 = Color.Resolved.init(failableCGColor:)(v16);
        v19 = v18;
        v21 = v20;

        v29 = v21 & 1;
        goto LABEL_15;
      }
    }
  }

LABEL_14:
  v17 = 0;
  v19 = 0;
LABEL_15:
  v22 = v30 | (v17 << 32);
  *(&v24 + 1) = v19;
  *&v24 = v17;
  v23 = v24 >> 32;
  v25 = v29 == 0;
  v26 = 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  if (v25)
  {
    v26 = 0;
  }

  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = HIDWORD(v19);
  *(a2 + 36) = v26;
  *(a2 + 37) = 0;
}

double specialized ExplodeTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 0;
  v18[16] = 1;
  v21 = xmmword_195CCEA00;
  v22 = 0;
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
  if (one-time initialization token for defaultSpring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static ExplodeTextEffect.defaultSpring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD07ExplodecF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

uint64_t specialized ExplodeTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[2 * v2];
  v3[4] = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v3[5] = 0;
  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with copy of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(uint64_t result)
{
  v1 = *(result + 208);
  v2 = *(result + 176) & 0x1FFFFFFFFLL;
  *(result + 160) &= 0xFFFFFFFF000000FFLL;
  *(result + 176) = v2;
  *(result + 208) = v1 & 1 | 0x80;
  return result;
}

void specialized ExplodeTextEffect.Target.amplitude(for:at:of:)(uint64_t a1, double a2)
{
  v4 = Double.hashValue.getter();
  if (__OFADD__(v4, 123))
  {
    __break(1u);
  }

  else
  {
    v8[0] = v4 + 123;
    v8[1] = 0xDA3E39CB94B95BDBLL;
    _sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(v8, 0.0, 1.0);
    v6 = v5 * 0.02 + a2;
    sin(v6 * 3.14159265);
    v7 = a1 + -1.0;
    sin(v7 * 3.14159265 * 0.5 * v6);
    sin(v7 * 3.14159265 * (v6 + -1.0));
    sin((v7 * 0.75 + -1.0) * 3.14159265 * v6);
    sin(v6 * 6.28318531);
  }
}

void type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe()
{
  if (!lazy cache variable for type metadata for ExplodeTextEffect.Timeline<Double>.Keyframe)
  {
    v0 = type metadata accessor for ExplodeTextEffect.Timeline.Keyframe();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ExplodeTextEffect.Timeline<Double>.Keyframe);
    }
  }
}

void _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for UnitCurve();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t outlined destroy of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t type metadata completion function for ExplodeTextEffect.Timeline.Keyframe()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExplodeTextEffect.Timeline.Keyframe(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = v8 + 7;
  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((((v11 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v7 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v7 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  if (v6 < 0x7FFFFFFF)
  {
    v22 = *((((v11 + ((a1 + v10) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v5 + 48);

    return v21(a1);
  }
}

void storeEnumTagSinglePayload for ExplodeTextEffect.Timeline.Keyframe(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = v8 + v10;
  v12 = (v8 + v10) & ~v10;
  v13 = v8 + 7;
  v14 = ((((v13 + v12) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v17 = 0;
    v18 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v13 + v12) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v9 + 1;
    }

    else
    {
      v15 = 2;
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

    v18 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFF)
      {
        v22 = ((((v13 + ((a1 + v11) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = (a2 - 1);
        }
      }

      else
      {
        v21 = *(v6 + 56);

        v21(a1, a2);
      }

      return;
    }
  }

  if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v14)
  {
    v20 = ~v9 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

__n128 __swift_memcpy37_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ExplodeTextEffect.AnimatorConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExplodeTextEffect.AnimatorConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
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

  *(result + 37) = v3;
  return result;
}

uint64_t type metadata instantiation function for ExplodeTextEffect.Timeline()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Text.Effect.ConcreteLayoutState.__allocating_init(state:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.DefaultAnimatorPhase()
{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.DefaultAnimatorPhase()
{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Text.Effect.DefaultAnimatorPhase@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Text.Effect.OnOffAnimatorPhase@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Effect.OnOffAnimatorPhase()
{
  if (*v0)
  {
    return 28271;
  }

  else
  {
    return 6710895;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.RelativeIdentifierKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v1);
  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Text.Effect.RelativeIdentifierKey()
{
  v1 = v0[1];
  MEMORY[0x19A8BDE80](*v0);
  return MEMORY[0x19A8BDE60](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.RelativeIdentifierKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v1);
  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.RelativeIdentifierKey(void *result, void *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = a2[1];
  v3 = result[1];
  if (!__OFSUB__(v2, v3))
  {
    return (v2 == v3);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Phase.Storage(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = v3 ^ v2 ^ 1;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.Phase.Storage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x19A8BDE60](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Text.Effect.Phase.Storage()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x19A8BDE60](v2);
    return;
  }

  MEMORY[0x19A8BDE60](0);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.Phase.Storage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x19A8BDE60](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Phase(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    return (v3 & 0xFE) != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 3;
}

double one-time initialization function for zero()
{
  result = 0.0;
  xmmword_1EAEE98D0 = 0u;
  unk_1EAEE98E0 = 0u;
  static Text.Effect.DrawingState.zero = 0u;
  unk_1EAEE98C0 = 0u;
  qword_1EAEE98F0 = 0x3FF0000000000000;
  byte_1EAEE98F8 = 0;
  return result;
}

Swift::Void __swiftcall Text.Effect.DrawingState.scale(by:)(Swift::Double by)
{
  v2 = vmulq_n_f64(v1[1], by);
  *v1 = vmulq_n_f64(*v1, by);
  v1[1] = v2;
  v3 = vmulq_n_f64(v1[3], by);
  v1[2] = vmulq_n_f64(v1[2], by);
  v1[3] = v3;
  v1[4].f64[0] = v1[4].f64[0] * by;
}

double protocol witness for VectorArithmetic.magnitudeSquared.getter in conformance Text.Effect.DrawingState()
{
  v1 = vmulq_f64(*(v0 + 8), *(v0 + 8));
  v2 = *v0 * *v0 + v1.f64[0] + v1.f64[1];
  v3 = vmulq_f64(*(v0 + 24), *(v0 + 24));
  v4 = v2 + v3.f64[0] + v3.f64[1];
  v5 = vmulq_f64(*(v0 + 40), *(v0 + 40));
  v6 = v4 + v5.f64[0] + v5.f64[1];
  v7 = vmulq_f64(*(v0 + 56), *(v0 + 56));
  return v6 + v7.f64[0] + v7.f64[1];
}

__n128 protocol witness for static AdditiveArithmetic.zero.getter in conformance Text.Effect.DrawingState@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAEE98E0;
  *(a1 + 32) = xmmword_1EAEE98D0;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1EAEE98E9;
  result = unk_1EAEE98C0;
  *a1 = static Text.Effect.DrawingState.zero;
  *(a1 + 16) = result;
  return result;
}

float64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Text.Effect.DrawingState(float64x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v6[0] = v2;
  *(v6 + 9) = *(a2 + 57);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  return specialized static Text.Effect.DrawingState.+= infix(_:_:)(a1, v5);
}

__n128 protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Text.Effect.DrawingState@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, void (*a3)(_OWORD *__return_ptr, _OWORD *, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v5 = a1[3];
  v13[2] = a1[2];
  v14[0] = v5;
  *(v14 + 9) = *(a1 + 57);
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[3];
  v15[2] = a2[2];
  v16[0] = v7;
  *(v16 + 9) = *(a2 + 57);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  a3(v11, v13, v15);
  v9 = v12[0];
  *(a4 + 32) = v11[2];
  *(a4 + 48) = v9;
  *(a4 + 57) = *(v12 + 9);
  result = v11[1];
  *a4 = v11[0];
  *(a4 + 16) = result;
  return result;
}

float64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Text.Effect.DrawingState(float64x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v6[0] = v2;
  *(v6 + 9) = *(a2 + 57);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  return specialized static Text.Effect.DrawingState.-= infix(_:_:)(a1, v5);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.DrawingState(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static Text.Effect.DrawingState.== infix(_:_:)(v7, v9);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.Identifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

float64x2_t Text.Effect.CubicStates.applying(weights:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = *(v5 + 64) * a2 + *(v5 + 144) * a3 + *(v5 + 224) * a4 + *(v5 + 304) * a5;
  v7 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*(v5 + 16), a2), vmulq_n_f64(*(v5 + 96), a3)), vmulq_n_f64(*(v5 + 176), a4)), vmulq_n_f64(*(v5 + 256), a5));
  *a1 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v5, a2), vmulq_n_f64(*(v5 + 80), a3)), vmulq_n_f64(*(v5 + 160), a4)), vmulq_n_f64(*(v5 + 240), a5));
  *(a1 + 16) = v7;
  v8 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*(v5 + 32), a2), vmulq_n_f64(*(v5 + 112), a3)), vmulq_n_f64(*(v5 + 192), a4)), vmulq_n_f64(*(v5 + 272), a5));
  v9 = *(v5 + 72);
  result = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*(v5 + 48), a2), vmulq_n_f64(*(v5 + 128), a3)), vmulq_n_f64(*(v5 + 208), a4)), vmulq_n_f64(*(v5 + 288), a5));
  *(a1 + 32) = v8;
  *(a1 + 48) = result;
  *(a1 + 64) = v6;
  *(a1 + 72) = v9;
  return result;
}

uint64_t type metadata completion function for Text.Effect.ConcreteLayoutState()
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t Text.Effect.ConcreteLayoutState.init(state:)(uint64_t a1)
{
  v3 = *(*v1 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t Text.Effect.ConcreteLayoutState.isEqual(to:)()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = *(v3 + 16);
    v11(v8, &v0[*(v1 + 128)], AssociatedTypeWitness);
    v11(v5, (v10 + *(*v10 + 128)), AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = *(v3 + 8);
    v13(v5, AssociatedTypeWitness);
    v13(v8, AssociatedTypeWitness);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t Text.Effect.ConcreteLayoutState.hash(into:)()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, &v0[*(v1 + 128)], AssociatedTypeWitness, v4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

uint64_t Text.Effect.ConcreteLayoutState.name.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v8 - v5;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  (*(v3 + 16))(v8 - v5, &v0[*(v1 + 128)], AssociatedTypeWitness, v4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v8[0];
}

uint64_t Text.Effect.ConcreteLayoutState.__ivar_destroyer()
{
  v1 = *(*v0 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t Text.Effect.ConcreteLayoutState.deinit()
{
  v1 = *(*v0 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t type metadata completion function for Text.Effect.ConcretePhase()
{
  result = swift_getAssociatedTypeWitness();
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.AnyPhase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 96))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.AnyPhase()
{
  Hasher.init(_seed:)();
  (*(**v0 + 96))(v2);
  return Hasher._finalize()();
}

uint64_t Text.Effect.ConcretePhase.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t Text.Effect.ConcretePhase.isEqual(to:)()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = *(v3 + 16);
    v11(v8, &v0[*(v1 + 160)], AssociatedTypeWitness);
    v11(v5, (v10 + *(*v10 + 160)), AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = *(v3 + 8);
    v13(v5, AssociatedTypeWitness);
    v13(v8, AssociatedTypeWitness);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t Text.Effect.ConcretePhase.hash(into:)()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, &v0[*(v1 + 160)], AssociatedTypeWitness, v4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

uint64_t Text.Effect.ConcretePhase.isDefaultPhase.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(&v15 - v10, v0 + *(v1 + 160), AssociatedTypeWitness, v9);
  (*(v2 + 72))(v3, v2);
  swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, AssociatedTypeWitness);
  v13(v11, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t Text.Effect.ConcretePhase.nextPhase.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v5 + 16))(v7, v0 + *(v1 + 160), AssociatedTypeWitness, v9);
  (*(v2 + 80))(v7, v3, v2);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v12 = swift_allocObject();
  Text.Effect.ConcretePhase.init(_:)(v11);
  return v12;
}

uint64_t Text.Effect.ConcretePhase.__ivar_destroyer()
{
  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t Text.Effect.ConcretePhase.deinit()
{
  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t type metadata completion function for Text.Effect.ConcreteConfiguration()
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t Text.Effect.ConcreteConfiguration.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t Text.Effect.ConcreteConfiguration.__ivar_destroyer()
{
  v1 = *(*v0 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t Text.Effect.ConcreteConfiguration.deinit()
{
  v1 = *(*v0 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t Text.Effect.ConcreteLayoutState.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

Swift::Double_optional __swiftcall AnyTextEffect.staticUnitProgress()()
{
  v0 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.value = v1;
  result.is_nil = v0;
  return result;
}

id AnyTextAnimation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for Text.Effect.BasePhaseConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.BasePhaseConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for Text.Effect.State(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 64) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.DrawingState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.DrawingState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Variant and conformance Text.Effect.Variant()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Variant and conformance Text.Effect.Variant;
  if (!lazy protocol witness table cache variable for type Text.Effect.Variant and conformance Text.Effect.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Variant and conformance Text.Effect.Variant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.AnyPhase and conformance Text.Effect.AnyPhase()
{
  result = lazy protocol witness table cache variable for type Text.Effect.AnyPhase and conformance Text.Effect.AnyPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.AnyPhase and conformance Text.Effect.AnyPhase)
  {
    type metadata accessor for Text.Effect.AnyPhase();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.AnyPhase and conformance Text.Effect.AnyPhase);
  }

  return result;
}

double Text.Effect.Metrics.offsetForCenterAlignment(other:t:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1 * a5 + (1.0 - a5) * a6;
  v8 = v7 + a2 * a5 + (1.0 - a5) * a7 - (a6 + a7);
  v9 = v7 + fabs(v8) * 0.5 - a6;
  result = v7 - (v8 * 0.5 + a6);
  if (v8 <= 0.0)
  {
    return v9;
  }

  return result;
}

uint64_t protocol witness for static Text.Effect.Base.animatorPhase(from:) in conformance GradientForegroundTextEffect@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 6710895 && a2 == 0xE300000000000000;
  if (v4 || (v6 = result, result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (v6 != 28271 || a2 != 0xE200000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  *a3 = v7;
  return result;
}

BOOL specialized static Text.Effect.DrawingState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if ((static Angle.== infix(_:_:)() & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

float64_t specialized static Text.Effect.DrawingState.+= infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vaddq_f64(a2[1], a1[1]);
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = v2;
  v3 = vaddq_f64(a2[3], a1[3]);
  a1[2] = vaddq_f64(a2[2], a1[2]);
  a1[3] = v3;
  result = a2[4].f64[0] + a1[4].f64[0];
  a1[4].f64[0] = result;
  return result;
}

double specialized static Text.Effect.DrawingState.- infix(_:_:)@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 64) - a2[4].f64[0];
  v4 = vsubq_f64(*(a1 + 16), a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  *(a3 + 16) = v4;
  v5 = vsubq_f64(*(a1 + 48), a2[3]);
  v6 = *(a1 + 72);
  *(a3 + 32) = vsubq_f64(*(a1 + 32), a2[2]);
  *(a3 + 48) = v5;
  *(a3 + 64) = result;
  *(a3 + 72) = v6;
  return result;
}

float64_t specialized static Text.Effect.DrawingState.-= infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vsubq_f64(a1[1], a2[1]);
  *a1 = vsubq_f64(*a1, *a2);
  a1[1] = v2;
  v3 = vsubq_f64(a1[3], a2[3]);
  a1[2] = vsubq_f64(a1[2], a2[2]);
  a1[3] = v3;
  result = a1[4].f64[0] - a2[4].f64[0];
  a1[4].f64[0] = result;
  return result;
}

double specialized static Text.Effect.DrawingState.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 64) + a2[4].f64[0];
  v4 = vaddq_f64(*(a1 + 16), a2[1]);
  *a3 = vaddq_f64(*a1, *a2);
  *(a3 + 16) = v4;
  v5 = vaddq_f64(*(a1 + 48), a2[3]);
  v6 = *(a1 + 72);
  *(a3 + 32) = vaddq_f64(*(a1 + 32), a2[2]);
  *(a3 + 48) = v5;
  *(a3 + 64) = result;
  *(a3 + 72) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 2;
  }

  else
  {
    v7 = -3;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags()
{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState.InteractionFlags and conformance Text.Effect.DrawingState.InteractionFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Phase and conformance Text.Effect.Phase()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Phase and conformance Text.Effect.Phase;
  if (!lazy protocol witness table cache variable for type Text.Effect.Phase and conformance Text.Effect.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Phase and conformance Text.Effect.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Variant.Storage and conformance Text.Effect.Variant.Storage()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Variant.Storage and conformance Text.Effect.Variant.Storage;
  if (!lazy protocol witness table cache variable for type Text.Effect.Variant.Storage and conformance Text.Effect.Variant.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Variant.Storage and conformance Text.Effect.Variant.Storage);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Text.Effect.DefaultDurationProvider(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Text.Effect.DefaultAnimatorPhase(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Text.Effect.DefaultAnimatorPhase(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Text.Effect.Phase.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Phase.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Text.Effect.Phase.Storage(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Text.Effect.Phase.Storage(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Phase.Storage and conformance Text.Effect.Phase.Storage()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Phase.Storage and conformance Text.Effect.Phase.Storage;
  if (!lazy protocol witness table cache variable for type Text.Effect.Phase.Storage and conformance Text.Effect.Phase.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Phase.Storage and conformance Text.Effect.Phase.Storage);
  }

  return result;
}

uint64_t type metadata completion function for AnyDynamicFontModifier()
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyFontModifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 96))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyFontModifier()
{
  Hasher.init(_seed:)();
  (*(**v0 + 96))(v2);
  return Hasher._finalize()();
}

uint64_t AnyDynamicFontModifier.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t AnyDynamicFontModifier.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier()
{
  result = lazy protocol witness table cache variable for type AnyFontModifier and conformance AnyFontModifier;
  if (!lazy protocol witness table cache variable for type AnyFontModifier and conformance AnyFontModifier)
  {
    type metadata accessor for AnyFontModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyFontModifier and conformance AnyFontModifier);
  }

  return result;
}

uint64_t NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1)
{
  v13 = 0;
  if (one-time initialization token for kitParagraphStyle != -1)
  {
    swift_once();
  }

  v3 = static NSAttributedStringKey.kitParagraphStyle;
  v4 = [v1 length];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = &v13;
  v5[4] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in NSAttributedString.replacingLineBreakModes(_:);
  *(v6 + 24) = v5;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_1;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  [v8 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0x100000, v7}];
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10 = v13;
    if (v13)
    {

      return v10;
    }

    else
    {
      v11 = v8;

      return v11;
    }
  }

  return result;
}

void closure #1 in NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void **a6, void *a7)
{
  outlined init with copy of Any?(a1, v19);
  if (v20)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
    if (swift_dynamicCast())
    {
      if ([v18 lineBreakMode] == a5)
      {
LABEL_11:

        return;
      }

      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
      swift_dynamicCast();
      [v18 setLineBreakMode_];
      v12 = *a6;
      if (*a6)
      {
        goto LABEL_8;
      }

      [a7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
      v13 = swift_dynamicCast();
      v14 = v18;
      if (!v13)
      {
        v14 = 0;
      }

      v15 = *a6;
      *a6 = v14;

      v12 = *a6;
      if (*a6)
      {
LABEL_8:
        v16 = one-time initialization token for kitParagraphStyle;
        v17 = v12;
        if (v16 != -1)
        {
          swift_once();
        }

        [v17 addAttribute:static NSAttributedStringKey.kitParagraphStyle value:v18 range:{a2, a3}];

        goto LABEL_11;
      }
    }
  }

  else
  {
    _sypSgWOhTm_0(v19, type metadata accessor for Any?);
  }
}

uint64_t one-time initialization function for oversizedScalars()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CharacterSet?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v7 = __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v8 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v8)
  {
    v9 = v8;
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v1 + 32);
    v10(v6, v3, v0);
    (*(v1 + 56))(v6, 0, 1, v0);
    return (v10)(v7, v6, v0);
  }

  else
  {
    (*(v1 + 56))(v6, 1, 1, v0);
    CharacterSet.init()();
    result = (*(v1 + 48))(v6, 1, v0);
    if (result != 1)
    {
      return _sypSgWOhTm_0(v6, type metadata accessor for CharacterSet?);
    }
  }

  return result;
}

void closure #1 in NSAttributedString.maxFontMetrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7, uint64_t a8, char a9, uint64_t a10)
{
  v39 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any?(a1, v36);
  if (v37)
  {
    outlined init with take of Any(v36, v38);
    outlined init with copy of Any(v38, v36);
    type metadata accessor for CTFontRef(0);
    swift_dynamicCast();
    Ascent = CTFontGetAscent(font);
    Descent = CTFontGetDescent(font);
    v16 = *a5;
    CapHeight = CTFontGetCapHeight(font);
    if (v16 > CapHeight)
    {
      CapHeight = v16;
    }

    *a5 = CapHeight;
    v18 = *a6;
    if (*a6 <= Ascent)
    {
      v18 = Ascent;
    }

    *a6 = v18;
    v19 = *a7;
    if (*a7 <= Descent)
    {
      v19 = Descent;
    }

    *a7 = v19;
    if (*(a8 + 8))
    {
      Leading = CTFontGetLeading(font);
    }

    else
    {
      v21 = *a8;
      Leading = CTFontGetLeading(font);
      if (v21 > Leading)
      {
        Leading = v21;
      }
    }

    *a8 = Leading;
    *(a8 + 8) = 0;
    v36[0] = 0.0;
    if ((a9 & 1) != 0 || (SymbolicTraits = CTFontGetSymbolicTraits(font), (SymbolicTraits) || (v23 = SymbolicTraits, CTFontGetWeight(), *MEMORY[0x1E6965940] < v24) || (v23 & 0xF0000000) == 0xA0000000 || (v23 & 0xF0000000) == 0x90000000) && CTFontGetLanguageAwareOutsets())
    {
      __swift_destroy_boxed_opaque_existential_0(v38);

      v25 = 0;
      v26 = *a10;
      if (*(a10 + 8) > 0.0)
      {
        v25 = *(a10 + 8);
      }

      v27 = 0;
      v28 = *(a10 + 16);
      if (*(a10 + 24) > 0.0)
      {
        v27 = *(a10 + 24);
      }

      if (v26 <= v36[0])
      {
        v26 = v36[0];
      }

      *a10 = v26;
      *(a10 + 8) = v25;
      v29 = 0.0;
      if (v28 > 0.0)
      {
        v29 = v28;
      }

      *(a10 + 16) = v29;
      *(a10 + 24) = v27;
    }

    else if (CTFontIsSystemUIFont())
    {
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    else
    {
      ClippingMetrics = CTFontGetClippingMetrics();

      __swift_destroy_boxed_opaque_existential_0(v38);
      if (ClippingMetrics)
      {
        v31 = *a10;
        v32 = Ascent - Ascent;
        if (Ascent - Ascent < 0.0)
        {
          v32 = 0.0;
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        *a10 = v31;
        v33 = *(a10 + 16);
        v34 = Descent - Descent;
        if (Descent - Descent < 0.0)
        {
          v34 = 0.0;
        }

        if (v33 <= v34)
        {
          v33 = v34;
        }

        *(a10 + 16) = v33;
      }
    }
  }

  else
  {
    _sypSgWOhTm_0(v36, type metadata accessor for Any?);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

uint64_t one-time initialization function for kitFont()
{
  result = MEMORY[0x19A8BD5F0](0x746E6F46534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitFont = result;
  return result;
}

uint64_t one-time initialization function for kitForegroundColor()
{
  result = MEMORY[0x19A8BD5F0](0x726F6C6F43534ELL, 0xE700000000000000);
  static NSAttributedStringKey.kitForegroundColor = result;
  return result;
}

uint64_t one-time initialization function for kitParagraphStyle()
{
  result = MEMORY[0x19A8BD5F0](0xD000000000000010, 0x8000000195CE0BE0);
  static NSAttributedStringKey.kitParagraphStyle = result;
  return result;
}

uint64_t one-time initialization function for _textAnimation()
{
  result = MEMORY[0x19A8BD5F0](0x6E4174786554534ELL, 0xEF6E6F6974616D69);
  static NSAttributedStringKey._textAnimation = result;
  return result;
}

uint64_t one-time initialization function for _textFilterAnimation()
{
  result = MEMORY[0x19A8BD5F0](0xD000000000000016, 0x8000000195CE0C00);
  static NSAttributedStringKey._textFilterAnimation = result;
  return result;
}

void type metadata accessor for CharacterSet?()
{
  if (!lazy cache variable for type metadata for CharacterSet?)
  {
    type metadata accessor for CharacterSet();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CharacterSet?);
    }
  }
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Collection.count.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  if (*(*(v1 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v2, v3), (v4 & 1) != 0))
  {
    swift_endAccess();
    result = Text.Effect.Keyframes.subscript.getter(v2, v3, v1);
    if (result)
    {
      v6 = *(result + 16);

      return specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
    }
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v42 - v5);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>();
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(a2, v6, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(v6, v9, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  swift_beginAccess();
  if (*(*(v10 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if (v13)
    {
      swift_endAccess();
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v6, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
      v14 = 0;
      v15 = *v9;
      v16 = v9[1];
      v43 = v9;
      v17 = v9[2];
      while (1)
      {
        swift_beginAccess();
        v18 = *(v15 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v14)
        {
          goto LABEL_27;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_38;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_38;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        v27 = *(v26 + 32 + 8 * v14);
        if (v14)
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

            if (v14 == ++v28)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

        v29 = 0;
LABEL_16:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_35;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_35;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_36;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_30;
        }

        v38 = *(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

        v39 = v29 + v38;
        if (__OFADD__(v29, v38))
        {
          goto LABEL_31;
        }

        if (v39 < v29)
        {
          goto LABEL_32;
        }

        if (__OFSUB__(v39, v29))
        {
          goto LABEL_33;
        }

        ++v14;
        v31 = __OFADD__(a1, v38);
        a1 += v38;
        if (v31)
        {
          __break(1u);
LABEL_27:
          v40 = v43;
          *(v43 + *(v44 + 36)) = v14;
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>(v40, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>);
          return a1;
        }
      }

      swift_endAccess();
      __break(1u);
LABEL_35:
      swift_endAccess();
      __break(1u);
LABEL_36:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_38:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.BaseContent(a2, v6, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.BaseContent(v6, v9, type metadata accessor for Text.Effect.BaseContent);
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  swift_beginAccess();
  if (*(*(v10 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if (v13)
    {
      swift_endAccess();
      outlined destroy of FragmentRangeSequence.Iterator(v6, type metadata accessor for Text.Effect.BaseContent);
      v14 = 0;
      v15 = *v9;
      v16 = v9[1];
      v43 = v9;
      v17 = v9[2];
      while (1)
      {
        swift_beginAccess();
        v18 = *(v15 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v14)
        {
          goto LABEL_27;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_38;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_38;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        v27 = *(v26 + 32 + 8 * v14);
        if (v14)
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

            if (v14 == ++v28)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

        v29 = 0;
LABEL_16:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_35;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_35;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_36;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_30;
        }

        v38 = *(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

        v39 = v29 + v38;
        if (__OFADD__(v29, v38))
        {
          goto LABEL_31;
        }

        if (v39 < v29)
        {
          goto LABEL_32;
        }

        if (__OFSUB__(v39, v29))
        {
          goto LABEL_33;
        }

        ++v14;
        v31 = __OFADD__(a1, v38);
        a1 += v38;
        if (v31)
        {
          __break(1u);
LABEL_27:
          v40 = v43;
          *(v43 + *(v44 + 36)) = v14;
          outlined destroy of FragmentRangeSequence.Iterator(v40, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
          return a1;
        }
      }

      swift_endAccess();
      __break(1u);
LABEL_35:
      swift_endAccess();
      __break(1u);
LABEL_36:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_38:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(a2, v6, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v6, v9, type metadata accessor for Text.Effect.BaseContent);
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  swift_beginAccess();
  if (*(*(v10 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if (v13)
    {
      swift_endAccess();
      outlined destroy of Text.Effect.ResolvedDrawing.Operation(v6, type metadata accessor for Text.Effect.BaseContent);
      v14 = 0;
      v15 = *v9;
      v16 = v9[1];
      v42 = v9;
      v17 = v9[2];
      while (1)
      {
        swift_beginAccess();
        v18 = *(v15 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v14)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_30;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v27 = *(v26 + 32 + 8 * v14);
        if (v14)
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

            if (v14 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_27;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_27;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_28;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_28;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_25;
        }

        ++v14;
        v38 = *(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder + 8);

        v31 = __OFADD__(a1, v38);
        a1 += v38;
        if (v31)
        {
          __break(1u);
LABEL_22:
          v39 = v42;
          *(v42 + *(v43 + 36)) = v14;
          outlined destroy of Text.Effect.ResolvedDrawing.Operation(v39, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
          return a1;
        }
      }

      swift_endAccess();
      __break(1u);
LABEL_27:
      swift_endAccess();
      __break(1u);
LABEL_28:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_30:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v42 - v5);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>();
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(a2, v6, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(v6, v9, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  swift_beginAccess();
  if (*(*(v10 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if (v13)
    {
      swift_endAccess();
      outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(v6);
      v14 = 0;
      v15 = *v9;
      v16 = v9[1];
      v43 = v9;
      v17 = v9[2];
      while (1)
      {
        swift_beginAccess();
        v18 = *(v15 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v14)
        {
          goto LABEL_27;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_38;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_38;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        v27 = *(v26 + 32 + 8 * v14);
        if (v14)
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

            if (v14 == ++v28)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

        v29 = 0;
LABEL_16:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_35;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_35;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_36;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_30;
        }

        v38 = *(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

        v39 = v29 + v38;
        if (__OFADD__(v29, v38))
        {
          goto LABEL_31;
        }

        if (v39 < v29)
        {
          goto LABEL_32;
        }

        if (__OFSUB__(v39, v29))
        {
          goto LABEL_33;
        }

        ++v14;
        v31 = __OFADD__(a1, v38);
        a1 += v38;
        if (v31)
        {
          __break(1u);
LABEL_27:
          v40 = v43;
          *(v43 + *(v44 + 36)) = v14;
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v40, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>);
          return a1;
        }
      }

      swift_endAccess();
      __break(1u);
LABEL_35:
      swift_endAccess();
      __break(1u);
LABEL_36:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_38:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  swift_beginAccess();
  if (!*(*(v5 + 48) + 16))
  {
    goto LABEL_12;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v6, v7, v5);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(result + 16);

  if (v10 < a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    swift_endAccess();
    __break(1u);
LABEL_13:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  if (!*(*(v5 + 48) + 16))
  {
    goto LABEL_13;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v6, v7, v5);
  if (result)
  {
    v12 = *(result + 16);

    if (v12 >= a2)
    {
      return a2 - a1;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in BounceTextEffect.configuration(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = type metadata accessor for Text.Layout.Run();
  v10 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  v13 = *(a1 + 3);
  v46 = *(a1 + 2);
  v45 = v13;
  v14 = *(a1 + 5);
  v44 = *(a1 + 4);
  v43 = v14;
  outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(a2, v50, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD06BouncecF0V_Tt2g5(a2, a3, 7, v50);
  v15 = *(a2 + 24);
  v16 = *(v15 + 16);
  v17 = 0.0;
  if (v16 == *(v15 + 24))
  {
LABEL_2:
    v18 = v46;
    v19 = v45;
    v53 = v46;
    v54 = v45;
    v20 = v44;
    v21 = v43;
    v55 = v44;
    v56 = v43;
    v22 = swift_allocObject();
    *(v22 + 16) = v52;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    *(v22 + 48) = v20;
    *(v22 + 56) = v21;
    *(v22 + 64) = v17;
    v23 = swift_allocObject();
    v24 = v50[3];
    *(v23 + 48) = v50[2];
    *(v23 + 64) = v24;
    *(v23 + 80) = v50[4];
    v25 = v51;
    v26 = v50[1];
    *(v23 + 16) = v50[0];
    *(v23 + 32) = v26;
    *(v23 + 96) = v25;
    *(v23 + 104) = partial apply for closure #1 in closure #1 in BounceTextEffect.configuration(_:);
    *(v23 + 112) = v22;
    v27 = MEMORY[0x1E69E6F90];
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v48 = xmmword_195CC8D00;
    *(inited + 16) = xmmword_195CC8D00;
    *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
    *(inited + 40) = v23;
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v27);
    v29 = swift_initStackObject();
    *(v29 + 16) = v48;
    *(v29 + 32) = inited;
    v30 = MEMORY[0x1E69E62F8];
    outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v53, v49, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E62F8], type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
    outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v54, v49, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment, v30, type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
    outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v55, v49, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming], type metadata accessor for Text.Effect.Timing.GlyphTiming, MEMORY[0x1E69E62F8], type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
    outlined init with copy of Text.Effect.ChunkCollection(&v56, v49);
    v31 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v29);
    swift_setDeallocating();
    outlined destroy of Text.Effect.Drawable(v29 + 32);
    return v31;
  }

  else
  {
    v47 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v33 = v7 + 16;
    v34 = *(v7 + 16);
    v35 = v10;
    v36 = (v33 - 8);
    v37 = (v35 + 8);
    v34(v9, v15 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v6);
    while (1)
    {
      Text.Layout.Line.subscript.getter();
      result = (*v36)(v9, v6);
      if (v16 < *(v15 + 16) || v16 >= *(v15 + 24))
      {
        break;
      }

      v41 = Text.Layout.Run.font.getter();
      if (v41)
      {
        v38 = v41;
        Size = CTFontGetSize(v41);
      }

      else
      {
        Size = 0.0;
      }

      ++v16;
      (*v37)(v12, v48);
      if (v17 <= Size)
      {
        v17 = Size;
      }

      if (v16 == *(v15 + 24))
      {
        goto LABEL_2;
      }

      v34(v9, v15 + v47, v6);
    }

    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in BounceTextEffect.configuration(_:)(unint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v132 = &v116 - v9;
  type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v131 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v116 - v13);
  v15 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v19 = *(a3 + 16);
  if (*(v19 + 16) <= a1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v20 = *(a3 + 32);
  if (*(v20 + 16) <= a1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v21 = *(v19 + 32 * a1 + 32);
  outlined init with copy of Text.Effect.Timing.GlyphTiming(v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a1, &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a2 + 5) - *(a2 + 4);
  v23 = *v18;
  v24 = 0.0;
  if (v22 >= 0.0)
  {
    if (v22 <= v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0.0;
    if (v23 >= 0.0)
    {
      goto LABEL_10;
    }
  }

  v25 = v18[1];
  v24 = 1.0;
  if (v23 + v25 > v22)
  {
    v24 = (v22 - v23) / v25;
  }

LABEL_10:
  v26 = *a2;
  if (__OFSUB__(*a2, a1))
  {
LABEL_47:
    __break(1u);
    return;
  }

  v27 = *(a2 + 30);
  v145 = *(a2 + 29);
  v146 = *&v27;
  v28 = *(a2 + 28);
  v143 = *(a2 + 27);
  v144 = v28;
  v29 = *(a2 + 26);
  v30 = ((sin((v24 * 1.375 + -0.4375) * 6.28318531) + 1.0) * 0.5 + -0.308658284) * 1.44646269 * 0.1 + 1.0;
  v31 = v24 * ((v21 * 0.5 + 1.0) * (((sin((v24 * 1.1 + -0.3) * 6.28318531) + 1.0) * 0.5 + -0.0244717419) * -1.02508563)) * 0.75 * a4;
  if (*&v26 == a1)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = v144;
  if (*&v26 == a1)
  {
    v34 = v143;
  }

  else
  {
    v34 = 0.0;
  }

  if (*&v26 != a1)
  {
    v33 = 0.0;
  }

  v35 = v145;
  v36 = v146;
  if (*&v26 != a1)
  {
    v35 = 0.0;
    v36 = 0.0;
  }

  v37 = v34 - v35;
  v38 = v36 + v35;
  MidX = CGRectGetMidX(*&v32);
  v220 = 0uLL;
  v221 = v31;
  v222 = 0;
  v223 = MidX;
  v224 = v34;
  v225 = 0x3FF0000000000000;
  v226 = v30;
  v227 = 0x3FF0000000000000;
  v228 = 0;
  Text.Effect.TransformContext.record(target:for:spring:)(&v220, a1, v18 + *(v15 + 24), &v173);
  memcpy(v219, a2, 0x179uLL);
  v40 = Text.Effect.TransformContext.subcomponents(for:)(a1);
  v41 = *(v40 + 16);
  if (v41)
  {
    v117 = v18;
    v42 = BYTE8(v219[3]);
    v136 = *(&v219[0] + 1);
    v127 = *&v219[0];
    v125 = v219[8];
    v126 = v219[7];
    v123 = v219[10];
    v124 = v219[9];
    v121 = v219[12];
    v122 = v219[11];
    v119 = v219[14];
    v120 = v219[13];
    v118 = v219[15];
    v43 = *(a2 + 41);
    v170 = *(a2 + 39);
    v171 = v43;
    v172 = *(a2 + 43);
    v44 = *(a2 + 37);
    v168 = *(a2 + 35);
    v169 = v44;
    v45 = v41 - 1;
    v116 = v40;
    v46 = (v40 + 48);
    __asm { FMOV            V0.2D, #1.0 }

    v135 = _Q0;
    v138 = *&v219[23];
    v139 = *(&v219[22] + 1);
    v137 = BYTE8(v219[23]);
    v146 = *(&v219[16] + 1);
    v134 = *&v219[16];
    v143 = *(a2 + 34);
    v129 = a2;
    v128 = BYTE8(v219[3]);
    while (1)
    {
      v52 = *(v46 - 2);
      v53 = *(v46 - 1);
      v145 = *&v46;
      v54 = *v46;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v186[0] = v135;
      *&v186[1] = 0x3FF0000000000000;
      BYTE8(v186[1]) = 0;
      v141 = v53;
      v142 = v52;
      v140 = v54;
      if (v42)
      {
        v133 = v45;
        v215[0] = &type metadata for Text.Effect.DrawingStateAttribute;
        v215[1] = v136;
        v215[2] = v52;
        v215[3] = v53;
        v216 = 0;
        v217 = v54;
        v218 = 0;
        if (one-time initialization token for zero != -1)
        {
          swift_once();
        }

        v149[2] = xmmword_1EAEE98D0;
        v149[3] = unk_1EAEE98E0;
        *(&v149[3] + 9) = unk_1EAEE98E9;
        v149[0] = static Text.Effect.DrawingState.zero;
        v149[1] = unk_1EAEE98C0;
        v55 = type metadata accessor for Spring();
        v56 = *(*(v55 - 8) + 56);
        v57 = v132;
        v56(v132, 1, 1, v55);
        v58 = v184;
        v59 = v185;
        v60 = v186[0];
        v14[2] = v185;
        v14[3] = v60;
        v61 = *(v186 + 9);
        *(v14 + 57) = *(v186 + 9);
        v62 = v183;
        *v14 = v183;
        v14[1] = v58;
        v14[7] = v59;
        v14[8] = v60;
        *(v14 + 137) = v61;
        v14[5] = v62;
        v14[6] = v58;
        v63 = v149[0];
        v64 = v149[1];
        v65 = v149[2];
        v66 = v149[3];
        *(v14 + 217) = *(&v149[3] + 9);
        v14[12] = v65;
        v14[13] = v66;
        v14[10] = v63;
        v14[11] = v64;
        v67 = v131;
        v68 = *(v131 + 44);
        v56(v14 + v68, 1, 1, v55);
        v69 = v14 + *(v67 + 48);
        v70 = v14 + *(v67 + 52);
        outlined assign with take of Spring?(v57, v14 + v68);
        *v69 = 0;
        v69[8] = 1;
        *v70 = 0;
        v70[8] = 1;
        v71 = v130;
        outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(v14, v130, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
        swift_beginAccess();
        specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v71, v215);
        swift_endAccess();
        outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v14, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
        v72 = 0;
        v144 = 1.0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 1.0;
        v80 = 1.0;
        a2 = v129;
        v42 = v128;
        v45 = v133;
      }

      else
      {
        v81 = *(a2 + 4);
        v191 = *(a2 + 3);
        v192 = v81;
        v82 = *(a2 + 6);
        v193 = *(a2 + 5);
        v194 = v82;
        v83 = *(a2 + 2);
        v189 = *(a2 + 1);
        v190 = v83;
        v84 = *(a2 + 20);
        v208 = *(a2 + 19);
        v209 = v84;
        v210 = *(a2 + 21);
        v211 = a2[44];
        v85 = *(a2 + 18);
        v206 = *(a2 + 17);
        v207 = v85;
        LOBYTE(v149[0]) = v137;
        v187 = v127;
        v188 = v136;
        v195 = v126;
        v196 = v125;
        v197 = v124;
        v198 = v123;
        v199 = v122;
        v200 = v121;
        v201 = v120;
        v202 = v119;
        v203 = v118;
        v204 = v134;
        v205 = *&v146;
        v212 = v139;
        v213 = v138;
        v214 = v137;
        Text.Effect.TransformContext.cancelPosition(target:)(&v183, &v174);
        v74 = *(&v174 + 1);
        v73 = v174;
        v75 = v175;
        v76 = v176;
        v77 = v177;
        v78 = v178;
        v144 = v179;
        v79 = v180;
        v80 = v181;
        v72 = v182;
      }

      v165 = v170;
      v166 = v171;
      v167 = v172;
      v163 = v168;
      v164 = v169;
      if (v143 == 0.0)
      {
        v101 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v146 + 16) + 1, 1, *&v146));
        }

        v103 = *(*&v146 + 16);
        v102 = *(*&v146 + 24);
        if (v103 >= v102 >> 1)
        {
          v146 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, *&v146));
        }

        LOBYTE(v157) = v137;
        *&v149[0] = v73;
        *(&v149[0] + 1) = v74;
        *&v149[1] = v75;
        *(&v149[1] + 1) = v76;
        *&v149[2] = v77;
        *(&v149[2] + 1) = v78;
        *&v149[3] = v144;
        *(&v149[3] + 1) = v79;
        *&v149[4] = v80;
        BYTE8(v149[4]) = v72;
        *(&v149[4] + 12) = v139;
        *(&v149[5] + 4) = v138;
        BYTE12(v149[5]) = v137;
        _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi_(v149);
        v104 = *&v146;
        *(*&v146 + 16) = v103 + 1;
        v105 = &v104[216 * v103];
        v106 = v149[1];
        *(v105 + 2) = v149[0];
        *(v105 + 3) = v106;
        v107 = v149[2];
        v108 = v149[3];
        v109 = v149[5];
        *(v105 + 6) = v149[4];
        *(v105 + 7) = v109;
        *(v105 + 4) = v107;
        *(v105 + 5) = v108;
        v110 = v150;
        v111 = v151;
        v112 = v153;
        *(v105 + 10) = v152;
        *(v105 + 11) = v112;
        *(v105 + 8) = v110;
        *(v105 + 9) = v111;
        v113 = v154[0];
        v114 = v154[1];
        v115 = v155;
        v105[240] = v156;
        *(v105 + 13) = v114;
        *(v105 + 14) = v115;
        *(v105 + 12) = v113;
        v45 = v101;
        v100 = v145;
        if (!v101)
        {
LABEL_41:

          *(a2 + 33) = v146;
          v18 = v117;
          goto LABEL_43;
        }
      }

      else
      {
        v157 = v143;
        v159 = v169;
        v160 = v170;
        v161 = v171;
        v162 = v172;
        v158 = v168;
        outlined init with copy of Text.Effect.PathInterpolator(&v157, v149);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v146 + 16) + 1, 1, *&v146));
        }

        v87 = *(*&v146 + 16);
        v86 = *(*&v146 + 24);
        if (v87 >= v86 >> 1)
        {
          v146 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, *&v146));
        }

        *(&v149[1] + 8) = v164;
        *(&v149[2] + 8) = v165;
        *(&v149[3] + 8) = v166;
        *(&v149[4] + 8) = v167;
        *(v149 + 8) = v163;
        v148 = v137;
        v147 = 0;
        *v149 = v143;
        *(&v149[5] + 1) = v73;
        *&v150 = v74;
        *(&v150 + 1) = v75;
        *&v151 = v76;
        *(&v151 + 1) = v77;
        *&v152 = v78;
        *(&v152 + 1) = v144;
        *&v153 = v79;
        *(&v153 + 1) = v80;
        LOBYTE(v154[0]) = v72;
        *(v154 + 4) = v139;
        *(v154 + 12) = v138;
        BYTE4(v154[1]) = v137;
        *(&v154[1] + 1) = v142;
        *&v155 = v141;
        *(&v155 + 1) = v140;
        v156 = 0;
        _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi0_(v149);
        v88 = *&v146;
        *(*&v146 + 16) = v87 + 1;
        v89 = &v88[216 * v87];
        v90 = v149[1];
        *(v89 + 2) = v149[0];
        *(v89 + 3) = v90;
        v91 = v149[2];
        v92 = v149[3];
        v93 = v149[5];
        *(v89 + 6) = v149[4];
        *(v89 + 7) = v93;
        *(v89 + 4) = v91;
        *(v89 + 5) = v92;
        v94 = v150;
        v95 = v151;
        v96 = v153;
        *(v89 + 10) = v152;
        *(v89 + 11) = v96;
        *(v89 + 8) = v94;
        *(v89 + 9) = v95;
        v97 = v154[0];
        v98 = v154[1];
        v99 = v155;
        v89[240] = v156;
        *(v89 + 13) = v98;
        *(v89 + 14) = v99;
        *(v89 + 12) = v97;
        v100 = v145;
        if (!v45)
        {
          goto LABEL_41;
        }
      }

      v46 = (*&v100 + 24);
      --v45;
    }
  }

LABEL_43:
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>(v18, type metadata accessor for Text.Effect.Timing.GlyphTiming);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance BounceTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized BounceTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BounceTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect();
  result = lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect();
  *(a1 + 16) = result;
  return result;
}

double specialized BounceTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v45 = a3;
  v46 = a2;
  v47 = a4;
  type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = (&v37 - v6);
  v7 = type metadata accessor for Spring();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v78[0]) = 1;
  LOBYTE(v48[0]) = 0;
  LOBYTE(v76[0]) = 0;
  v98 = xmmword_195CCC0E0;
  v99 = 1;
  v100 = 0;
  v101 = 0;
  v102 = 2;
  v103 = xmmword_195CCB140;
  v104 = 0;
  v105 = 1;
  v106 = xmmword_195CCB150;
  v107 = 0;
  v108 = MEMORY[0x1E69E7CC0];
  v109 = 0;
  *&v110[7] = xmmword_195CCB160;
  v110[23] = 0;
  v75 = 1;
  v71 = 0;
  v69 = *&v110[16];
  v68 = *v110;
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[24 * v12];
  *(v13 + 4) = 0x3FC999999999999ALL;
  *(v13 + 5) = 0xE2A1C2BFC23F2E21;
  *(v13 + 6) = 0xAA0000000000BD80;

  v14 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 + 2, 1, v10);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  v18 = 0x3FB999999999999ALL;
  *(v17 + 4) = 0x3FB999999999999ALL;
  *(v17 + 5) = 32;
  *(v17 + 6) = 0xE100000000000000;
  outlined destroy of Text.Effect.Timing.Configuration(&v98);
  v19 = specialized Collection.count.getter();
  v44 = a1;
  if (v19 > 2)
  {
    v28 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0x3FF4000000000000;
    v27 = 0x3FA999999999999ALL;
    v25 = 3.0;
    v29 = 0x3FF0000000000000;
    v21 = 1;
  }

  else
  {
    v20 = specialized Sequence.reduce<A>(_:_:)(0, a1);
    v18 = 0;
    v21 = 0;
    v22 = 80;
    if (v20 > 80)
    {
      v22 = v20;
    }

    v23 = 0x3FF8000000000000;
    v24 = 1;
    v25 = v22 / 80.0;
    v71 = 0;
    v26 = 0x3FB999999999999ALL;
    v27 = 0x3F9999999999999ALL;
    v28 = 2;
    v29 = 0x3FE0000000000000;
  }

  v38 = v23;
  v39 = v21;
  v40 = v29;
  v75 = 1;
  v78[0] = v29;
  *&v78[1] = v25;
  v79 = 1;
  *v80 = *v74;
  *&v80[3] = *&v74[3];
  v81 = v18;
  v82 = 0;
  v83 = v28;
  *v84 = *v73;
  *&v84[3] = *&v73[3];
  v85 = v27;
  v86 = v26;
  v87 = 0;
  v88 = v24;
  *v89 = *v72;
  *&v89[3] = *&v72[3];
  v90 = 0x3FF0000000000000;
  v91 = v23;
  v92 = v71;
  *v93 = *v70;
  *&v93[3] = *&v70[3];
  v94 = v14;
  v95 = v21;
  v97 = v69;
  v96 = v68;
  v30 = v27;
  outlined init with copy of Text.Effect.Timing.Configuration(v78, v48);
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = __swift_project_value_buffer(v42, static BounceTextEffect.spring);
  (*(v41 + 16))(v9, v32, v31);
  v33 = v43;
  outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(v44, v43, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD06BouncecF0V_Tt3g5(v78, v46, v45 & 1, v9, v33, v76);
  v48[0] = v40;
  *&v48[1] = v25;
  v49 = v75;
  *v50 = *v74;
  *&v50[3] = *&v74[3];
  v51 = v18;
  v52 = 0;
  v53 = v28;
  *v54 = *v73;
  *&v54[3] = *&v73[3];
  v55 = v30;
  v56 = v26;
  v57 = 0;
  v58 = v24;
  *v59 = *v72;
  *&v59[3] = *&v72[3];
  v60 = 0x3FF0000000000000;
  v61 = v38;
  v62 = v71;
  *v63 = *v70;
  *&v63[3] = *&v70[3];
  v64 = v14;
  v65 = v39;
  v67 = v69;
  v66 = v68;
  outlined destroy of Text.Effect.Timing.Configuration(v48);
  v34 = v76[1];
  v35 = v47;
  *v47 = v76[0];
  v35[1] = v34;
  result = *&v77;
  v35[2] = v77;
  return result;
}

uint64_t specialized BounceTextEffect.configuration(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = partial apply for closure #1 in BounceTextEffect.configuration(_:);
  *(v0 + 24) = 0;
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v4[5] = v0;
  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<BounceTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi0_(uint64_t result)
{
  v1 = *(result + 208);
  v2 = *(result + 176) & 0x1FFFFFFFFLL;
  *(result + 160) &= 0xFFFFFFFF000000FFLL;
  *(result + 176) = v2;
  *(result + 208) = v1 & 1 | 0x40;
  return result;
}

uint64_t outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi_(uint64_t result)
{
  v1 = *(result + 176) & 0x1FFFFFFFFLL;
  v2 = *(result + 208) & 1;
  *(result + 160) &= 0xFFFFFFFF000000FFLL;
  *(result + 176) = v1;
  *(result + 208) = v2;
  return result;
}

void type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<BounceTextEffect>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return _sypSgWOhTm_1(v13, type metadata accessor for Any?);
}

id makeAttributedString #1 () in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v13);
  type metadata accessor for NSAttributedString();
  if (swift_dynamicCast())
  {
    return v11;
  }

  outlined init with copy of Any(a1, v13);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    v5 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = v11;
  v5 = v12;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(a2);
LABEL_8:
  v8 = MEMORY[0x19A8BD5F0](v6, v5);

  if (v7)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v9.super.isa];

  return v10;
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v31);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    outlined init with copy of AnyHashable(v28, v25);
    type metadata accessor for NSAttributedStringKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    outlined init with copy of Any(v29 + 8, v26 + 8);
    _sypSgWOhTm_1(v28, type metadata accessor for (key: AnyHashable, value: Any));
    outlined init with take of Any((v26 + 8), v23);
    v13 = v12;
    outlined init with take of Any(v23, v27);
    outlined init with take of Any(v27, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = outlined init with take of Any(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  _sypSgWOhTm_1(v28, type metadata accessor for (key: AnyHashable, value: Any));

  return 0;
}

uint64_t closure #1 in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x19A8BD720]();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void closure #3 in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any?(a1, v11);
  if (v12)
  {
    type metadata accessor for AnyTextEffect();
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = TextEffectsAnimationController.staticAnimator(for:)(v7);

      v9 = v8;
      MEMORY[0x19A8BD720]();
      if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v9 start];
    }
  }

  else
  {
    _sypSgWOhTm_1(v11, type metadata accessor for Any?);
  }
}

CGAffineTransform *CGRect.transformToFit(within:anchor:)@<X0>(__int128 *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>, CGFloat a10, CGFloat a11)
{
  v68.origin.x = a8;
  v68.origin.y = a9;
  v68.size.width = a10;
  v68.size.height = a11;
  result = CGRectContainsRect(*&a2, v68);
  if (result)
  {
    v19 = xmmword_195CC8D60;
    v20 = xmmword_195CCF990;
    v21 = 0uLL;
  }

  else
  {
    v58.origin.x = a8;
    v58.origin.y = a9;
    v58.size.width = a10;
    v58.size.height = a11;
    Width = CGRectGetWidth(v58);
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v22 = CGRectGetWidth(v59);
    v60.origin.y = a9;
    v23 = v22;
    v60.origin.x = a8;
    y = v60.origin.y;
    v60.size.width = a10;
    v60.size.height = a11;
    Height = CGRectGetHeight(v60);
    v61.size.height = a5;
    v25 = Height;
    rect = a2;
    v61.origin.x = a2;
    v26 = a3;
    v61.origin.y = a3;
    v27 = a4;
    v61.size.width = a4;
    v28 = v61.size.height;
    v29 = CGRectGetHeight(v61);
    if (v23 < Width || v29 < v25)
    {
      v62.origin.x = rect;
      v62.origin.y = v26;
      v46 = v28;
      v47 = v26;
      v31 = v27;
      v62.size.width = v27;
      v62.size.height = v28;
      v32 = CGRectGetWidth(v62);
      v63.origin.x = a8;
      v63.origin.y = y;
      v63.size.width = a10;
      v63.size.height = a11;
      v33 = v32 / CGRectGetWidth(v63);
      v64.origin.x = rect;
      v64.origin.y = v26;
      v64.size.width = v31;
      v34 = v31;
      v64.size.height = v46;
      v35 = CGRectGetHeight(v64);
      v65.origin.x = a8;
      v65.origin.y = y;
      v65.size.width = a10;
      v65.size.height = a11;
      v36 = v35 / CGRectGetHeight(v65);
      if (v36 >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v36;
      }

      CGAffineTransformMakeTranslation(&v57, a6, a7);
      CGAffineTransformScale(&rect_8, &v57, v37, v37);
      v57 = rect_8;
      CGAffineTransformTranslate(&rect_8, &v57, -a6, -a7);
      v49 = *&rect_8.c;
      v51 = *&rect_8.a;
      v57 = rect_8;
      v53 = *&rect_8.tx;
      v66.origin.x = a8;
      v66.origin.y = y;
      v66.size.width = a10;
      v66.size.height = a11;
      v67 = CGRectApplyAffineTransform(v66, &v57);
      x = v67.origin.x;
      v39 = v67.origin.y;
      v40 = v67.size.width;
      v41 = v67.size.height;
      v67.origin.x = rect;
      v67.origin.y = v47;
      v67.size.width = v34;
      v67.size.height = v46;
      v69.origin.x = x;
      v69.origin.y = v39;
      v69.size.width = v40;
      v69.size.height = v41;
      result = CGRectContainsRect(v67, v69);
      if (result)
      {
        v19 = v49;
        v20 = v51;
        v21 = v53;
      }

      else
      {
        CGRect.offsetToFit(within:)(rect, v47, v34, v46, x, v39, v40, v41);
        *&v57.a = v51;
        *&v57.c = v49;
        *&v57.tx = v53;
        result = CGAffineTransformTranslate(&rect_8, &v57, v44, v45);
        v20 = *&rect_8.a;
        v19 = *&rect_8.c;
        v21 = *&rect_8.tx;
      }
    }

    else
    {
      CGRect.offsetToFit(within:)(rect, v26, v27, v28, a8, y, a10, a11);
      result = CGAffineTransformMakeTranslation(&v57, v42, v43);
      v20 = *&v57.a;
      v19 = *&v57.c;
      v21 = *&v57.tx;
    }
  }

  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  return result;
}

void CGRect.offsetToFit(within:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v39 = a1;
  v40 = a2;
  v45.origin.x = a1;
  v17 = MinX;
  v45.origin.y = a2;
  rect = a3;
  v45.size.width = a3;
  v41 = a4;
  v45.size.height = a4;
  MaxX = CGRectGetMaxX(v45);
  if (v17 > MaxX)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = MaxX;
  v46.origin.x = a5;
  v46.origin.y = a6;
  v46.size.width = a7;
  v46.size.height = a8;
  v20 = CGRectGetMinX(v46);
  v47.origin.y = a6;
  v21 = v20;
  y = v47.origin.y;
  v47.origin.x = a5;
  v47.size.width = a7;
  v47.size.height = a8;
  v22 = CGRectGetMaxX(v47);
  if (v21 > v22)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = a8;
  if (v17 > v21 || v22 > v19)
  {
    v48.origin.x = a5;
    v48.origin.y = y;
    v48.size.width = a7;
    v48.size.height = a8;
    Width = CGRectGetWidth(v48);
    v27 = v39;
    v25 = v40;
    v49.origin.x = v39;
    v49.origin.y = v40;
    v49.size.width = rect;
    v49.size.height = v41;
    if (Width <= CGRectGetWidth(v49))
    {
      v52.origin.x = a5;
      v52.origin.y = y;
      v52.size.width = a7;
      v52.size.height = a8;
      v29 = CGRectGetMinX(v52);
      v53.origin.x = v39;
      v53.origin.y = v40;
      v53.size.width = rect;
      v53.size.height = v41;
      if (v29 >= CGRectGetMinX(v53))
      {
        v56.origin.x = a5;
        v56.origin.y = y;
        v23 = a7;
        v56.size.width = a7;
        v56.size.height = a8;
        v30 = CGRectGetMaxX(v56);
        v57.origin.x = v39;
        v57.origin.y = v40;
        v57.size.width = rect;
        v57.size.height = v41;
        v24 = v41;
        v26 = rect;
        if (CGRectGetMaxX(v57) < v30)
        {
          v58.origin.x = a5;
          v58.origin.y = y;
          v58.size.width = v23;
          v58.size.height = v42;
          CGRectGetMaxX(v58);
          v59.origin.x = v39;
          v59.origin.y = v40;
          v59.size.width = rect;
          v59.size.height = v41;
          CGRectGetMaxX(v59);
        }
      }

      else
      {
        v54.origin.x = v39;
        v54.origin.y = v40;
        v54.size.width = rect;
        v54.size.height = v41;
        CGRectGetMinX(v54);
        v55.origin.x = a5;
        v55.origin.y = y;
        v23 = a7;
        v55.size.width = a7;
        v55.size.height = a8;
        CGRectGetMinX(v55);
        v24 = v41;
        v26 = rect;
      }
    }

    else
    {
      v50.origin.x = a5;
      v50.origin.y = y;
      v23 = a7;
      v50.size.width = a7;
      v50.size.height = a8;
      CGRectGetMidX(v50);
      v51.origin.x = v39;
      v51.origin.y = v40;
      v51.size.width = rect;
      v51.size.height = v41;
      CGRectGetMidX(v51);
      v24 = v41;
      v26 = rect;
    }
  }

  else
  {
    v23 = a7;
    v25 = a2;
    v24 = v41;
    v26 = rect;
    v27 = v39;
  }

  v60.origin.x = v27;
  v60.origin.y = v25;
  v60.size.width = v26;
  v60.size.height = v24;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v27;
  v61.origin.y = v25;
  v61.size.width = v26;
  v61.size.height = v24;
  MaxY = CGRectGetMaxY(v61);
  if (MinY > MaxY)
  {
    goto LABEL_25;
  }

  v33 = MaxY;
  v62.origin.x = a5;
  v62.origin.y = y;
  v62.size.width = v23;
  v62.size.height = v42;
  v34 = CGRectGetMinY(v62);
  v63.origin.x = a5;
  v63.origin.y = y;
  v63.size.width = v23;
  v63.size.height = v42;
  v35 = CGRectGetMaxY(v63);
  if (v34 > v35)
  {
LABEL_26:
    __break(1u);
    return;
  }

  if (MinY > v34 || v35 > v33)
  {
    v64.origin.x = a5;
    v64.origin.y = y;
    v64.size.width = v23;
    v64.size.height = v42;
    Height = CGRectGetHeight(v64);
    v65.origin.x = v39;
    v65.origin.y = v40;
    v65.size.width = v26;
    v65.size.height = v41;
    if (Height <= CGRectGetHeight(v65))
    {
      v68.origin.x = a5;
      v68.origin.y = y;
      v68.size.width = v23;
      v68.size.height = v42;
      v37 = CGRectGetMinY(v68);
      v69.origin.x = v39;
      v69.origin.y = v40;
      v69.size.width = v26;
      v69.size.height = v41;
      if (v37 >= CGRectGetMinY(v69))
      {
        v72.origin.x = a5;
        v72.origin.y = y;
        v72.size.width = v23;
        v72.size.height = v42;
        v38 = CGRectGetMaxY(v72);
        v73.origin.x = v39;
        v73.origin.y = v40;
        v73.size.width = v26;
        v73.size.height = v41;
        if (CGRectGetMaxX(v73) < v38)
        {
          v74.origin.x = a5;
          v74.origin.y = y;
          v74.size.width = v23;
          v74.size.height = v42;
          CGRectGetMaxY(v74);
          v75.origin.x = v39;
          v75.origin.y = v40;
          v75.size.width = v26;
          v75.size.height = v41;
          CGRectGetMaxY(v75);
        }
      }

      else
      {
        v70.origin.x = v39;
        v70.origin.y = v40;
        v70.size.width = v26;
        v70.size.height = v41;
        CGRectGetMinY(v70);
        v71.origin.x = a5;
        v71.origin.y = y;
        v71.size.width = v23;
        v71.size.height = v42;
        CGRectGetMinY(v71);
      }
    }

    else
    {
      v66.origin.x = a5;
      v66.origin.y = y;
      v66.size.width = v23;
      v66.size.height = v42;
      CGRectGetMidY(v66);
      v67.origin.x = v39;
      v67.origin.y = v40;
      v67.size.width = v26;
      v67.size.height = v41;
      CGRectGetMidY(v67);
    }
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id specialized static TextAnimationsProvider.textEffect(named:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706952656C616373 && a2 == 0xEB00000000656C70;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<ScaleRippleTextEffect>, lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect, &type metadata for ScaleRippleTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v5;
    v28 = objc_allocWithZone(v5);
    v7 = &v28;
  }

  else if (a1 == 0x68637465727473 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v9;
    v10 = objc_allocWithZone(v9);
    v11 = &v10[*((*MEMORY[0x1E69E7D40] & *v10) + 0x128)];
    *v11 = xmmword_195CCF9C0;
    *(v11 + 1) = xmmword_195CCF9D0;
    *(v11 + 4) = 0x3FC999999999999ALL;
    v29 = v10;
    v7 = &v29;
  }

  else if (a1 == 0x687369757173 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v12;
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*((*MEMORY[0x1E69E7D40] & *v13) + 0x128)];
    *v14 = xmmword_195CCF9A0;
    *(v14 + 1) = xmmword_195CCF9B0;
    v30 = v13;
    v7 = &v30;
  }

  else if (a1 == 0x65636E756F62 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v15;
    v31 = objc_allocWithZone(v15);
    v7 = &v31;
  }

  else if (a1 == 6777186 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v16;
    v32 = objc_allocWithZone(v16);
    v7 = &v32;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v17;
    v33 = objc_allocWithZone(v17);
    v7 = &v33;
  }

  else if (a1 == 0x6D6F6F6C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v18;
    v34 = objc_allocWithZone(v18);
    v7 = &v34;
  }

  else if (a1 == 0x75617372656D6F73 && a2 == 0xEA0000000000746CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v19;
    v35 = objc_allocWithZone(v19);
    v7 = &v35;
  }

  else if (a1 == 0x726556656B616873 && a2 == 0xED00006C61636974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v20;
    v36 = objc_allocWithZone(v20);
    v7 = &v36;
  }

  else if (a1 == 0x726F48656B616873 && a2 == 0xEF6C61746E6F7A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v21;
    v37 = objc_allocWithZone(v21);
    v7 = &v37;
  }

  else if (a1 == 0x72657474696ALL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<JitterTextEffect>, lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect, &type metadata for JitterTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v22;
    v38 = objc_allocWithZone(v22);
    v7 = &v38;
  }

  else if (a1 == 0x65646F6C707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextEffectImplementation<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for TextEffectImplementation);
    v6 = v23;
    v39 = objc_allocWithZone(v23);
    v7 = &v39;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000195CE0D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextFilterEffect<GradientForegroundTextEffect>, lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect, &type metadata for GradientForegroundTextEffect, type metadata accessor for TextFilterEffect);
    v6 = v24;
    v40 = objc_allocWithZone(v24);
    v7 = &v40;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xEC00000072756C42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextFilterEffect<GradientBlurTextEffect>, lazy protocol witness table accessor for type GradientBlurTextEffect and conformance GradientBlurTextEffect, &type metadata for GradientBlurTextEffect, type metadata accessor for TextFilterEffect);
    v6 = v25;
    v26 = objc_allocWithZone(v25);
    *&v26[*((*MEMORY[0x1E69E7D40] & *v26) + 0xF8)] = 0x4014000000000000;
    v41 = v26;
    v7 = &v41;
  }

  else
  {
    if ((a1 != 0x72656D6D696C67 || a2 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for TextFilterEffect<GlimmerTextEffect>(0, &lazy cache variable for type metadata for TextFilterEffect<GlimmerTextEffect>, lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect, &type metadata for GlimmerTextEffect, type metadata accessor for TextFilterEffect);
    v6 = v27;
    v42 = objc_allocWithZone(v27);
    v7 = &v42;
  }

  v7->super_class = v6;
  return [(objc_super *)v7 init];
}

uint64_t specialized static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(uint64_t a1, uint64_t a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v18 = type metadata accessor for FloatingPointRoundingRule();
  v123 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for EnvironmentValues();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DB800]) init];
  [v24 setLineFragmentPadding_];
  v126 = a5;
  v138.origin.x = a5;
  v138.origin.y = a6;
  v138.size.width = a7;
  v138.size.height = a8;
  Width = CGRectGetWidth(v138);
  [v24 size];
  [v24 setSize_];
  [v23 setTextContainer_];
  [v24 setLineBreakMode_];
  v125 = a4;
  v26 = [a4 maximumNumberOfLines];
  v122 = v24;
  [v24 setMaximumNumberOfLines_];
  _NSTextLayoutManagerRequiresCTLine(v23);
  v27 = makeAttributedString #1 () in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(a1, a2);
  v28 = NSAttributedString.replacingLineBreakModes(_:)(0);

  v128 = v28;
  [v22 setAttributedString_];
  [v23 replaceTextContentManager_];
  v29 = [v23 documentRange];
  [v23 invalidateLayoutForRange_];

  v30 = [v23 documentRange];
  v127 = v23;
  [v23 ensureLayoutForRange_];

  v31 = [objc_allocWithZone(type metadata accessor for TextEffectsRenderer()) init];
  v32 = a3;
  v33 = v31;
  v124 = v32;
  if (v32)
  {
    CGContextGetCTM(&aBlock, v32);
    v34 = fabs(aBlock.a);
    v35 = fabs(aBlock.d);
    if (aBlock.c == 0.0 && aBlock.b == 0.0 && v34 == v35)
    {
      v38 = v34;
    }

    else
    {
      v38 = 1.0;
    }
  }

  else
  {
    v38 = 1.0;
  }

  v39 = *&v33[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale];
  v120 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale;
  *&v33[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale] = v38;
  TextEffectsRenderer.contentsScale.didset(v39);
  v40 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  v41 = MEMORY[0x1E69E7CC0];
  *&v33[v40] = MEMORY[0x1E69E7CC0];

  v42 = swift_allocObject();
  *(v42 + 16) = v33;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for closure #1 in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:);
  *(v43 + 24) = v42;
  v121 = v42;
  *&aBlock.tx = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  *&aBlock.ty = v43;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  *&aBlock.d = &block_descriptor_2;
  v44 = _Block_copy(&aBlock);
  v45 = v33;

  v46 = [v127 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v44];
  swift_unknownObjectRelease();
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
  }

  else
  {
    v118 = v22;
    v119 = v20;
    specialized TextEffectsRenderer.endLayout(with:)(v45);
    v136 = v41;
    if (one-time initialization token for _textAnimation == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v47 = static NSAttributedStringKey._textAnimation;
  v48 = v128;
  v49 = [v128 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  *(v50 + 24) = &v136;
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for closure #3 in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:);
  *(v51 + 24) = v50;
  v117 = v50;
  *&aBlock.tx = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  *&aBlock.ty = v51;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *&aBlock.d = &block_descriptor_14;
  v52 = _Block_copy(&aBlock);
  v53 = v45;

  [v48 enumerateAttribute:v47 inRange:0 options:v49 usingBlock:{0, v52}];
  _Block_release(v52);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_40;
  }

  specialized TextEffectsRenderer.updateForStaticRendering(with:)(v53);
  v47 = TextEffectsRenderer.baselineOffsets.getter();
  v55 = v125;
  v56 = [v125 wantsBaselineOffset];
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    v58 = *(v47 + 2);
    if (v58)
    {
      result = _NSStringDrawingContextSetBaselineOffset(v55, *&v47[8 * v58 + 24]);
      if (!*(v47 + 2))
      {
        goto LABEL_42;
      }

      v60 = *(v47 + 4);
    }

    else
    {
      v60 = 0.0;
      _NSStringDrawingContextSetBaselineOffset(v55, 0.0);
    }

    _NSStringDrawingContextSetFirstBaselineOffset(v55, v60);
  }

  if (v124)
  {
    v125 = v18;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v129 = 0;
    v130 = 1;
    v135 = 0;
    v134 = 0;
    v124 = v124;
    v61 = [v128 string];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    *&aBlock.a = v62;
    aBlock.b = v64;
    if (one-time initialization token for oversizedScalars == -1)
    {
LABEL_23:
      v65 = type metadata accessor for CharacterSet();
      __swift_project_value_buffer(v65, static NSAttributedString.oversizedScalars);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v67 = v66;

      v68 = v67 ^ 1;
      if (one-time initialization token for kitFont != -1)
      {
        swift_once();
      }

      v69 = static NSAttributedStringKey.kitFont;
      v70 = v128;
      v71 = [v128 length];
      v72 = swift_allocObject();
      *(v72 + 16) = &v133;
      *(v72 + 24) = &v132;
      *(v72 + 32) = &v131;
      *(v72 + 40) = &v129;
      *(v72 + 48) = v68 & 1;
      *(v72 + 56) = &v134;
      v73 = swift_allocObject();
      *(v73 + 16) = partial apply for closure #1 in NSAttributedString.maxFontMetrics.getter;
      *(v73 + 24) = v72;
      *&aBlock.tx = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
      *&aBlock.ty = v73;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      *&aBlock.d = &block_descriptor_24;
      v74 = _Block_copy(&aBlock);

      [v70 enumerateAttribute:v69 inRange:0 options:v71 usingBlock:{0x100000, v74}];
      _Block_release(v74);
      LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

      if ((v71 & 1) == 0)
      {
        v112 = v38;
        v75 = v134;
        v76 = v135;

        v77 = v126;
        v111 = CGRect.outset(by:)(v75.x, v75.y, v76.width, v76.height, v126, a6, a7, a8);
        v110 = v78;
        v109 = v79;
        v108 = v80;
        v81 = TextEffectsRenderer.drawingBounds.getter();
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v139.origin.x = v77;
        v113 = a6;
        v139.origin.y = a6;
        v88 = a7;
        v139.size.width = a7;
        v89 = a8;
        v139.size.height = a8;
        MinX = CGRectGetMinX(v139);
        v91 = *(v47 + 2);
        if (v91)
        {
          v92 = *&v47[8 * v91 + 24];
        }

        else
        {
          v92 = 0.0;
        }

        v18 = v125;
        v57 = MEMORY[0x1E69E7CC0];

        v93 = CGRect.transformToFit(within:anchor:)(&aBlock, v111, v110, v109, v108, MinX, v92, v81, v83, v85, v87);
        MEMORY[0x1EEE9AC00](v93);
        *(&v108 - 6) = v126;
        *(&v108 - 5) = v113;
        *(&v108 - 4) = v88;
        *(&v108 - 3) = v89;
        p_aBlock = &aBlock;
        v107 = v53;
        v94 = v114;
        EnvironmentValues.init()();
        v95 = v124;
        static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();

        (*(v115 + 8))(v94, v116);
        v38 = v112;
        goto LABEL_31;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

LABEL_40:
    swift_once();
    goto LABEL_23;
  }

LABEL_31:
  v96 = 1.0;
  if (v38 == 0.0)
  {
    v97 = 1.0;
  }

  else
  {
    v97 = 1.0 / v38;
  }

  v98 = &v53[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentBounds];
  v99 = *&v33[v120];
  if (v99 != 0.0)
  {
    v96 = 1.0 / v99;
  }

  v134 = *v98;
  v135 = v98[1];
  CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(v96);
  v100 = v134;
  v101 = v135;
  v102 = *&v53[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds + 16];
  v103 = *&v53[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_layoutBounds + 24];
  v104 = v123;
  v105 = v119;
  (*(v123 + 104))(v119, *MEMORY[0x1E69E7040], v18);
  v134.x = v102;
  v129 = v103;
  specialized FloatingPoint.round(_:toMultipleOf:)(v105, v97);
  specialized FloatingPoint.round(_:toMultipleOf:)(v105, v97);
  (*(v104 + 8))(v105, v18);
  v140.origin = v100;
  v140.size = v101;
  CGRectGetWidth(v140);

  v136 = v57;
}

void partial apply for closure #5 in static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  GraphicsContext.translateBy(x:y:)();
  GraphicsContext.concatenate(_:)(v3);
  TextEffectsRenderer.drawStatic(in:)(a1);
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: AnyHashable, value: Any)()
{
  if (!lazy cache variable for type metadata for (key: AnyHashable, value: Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: AnyHashable, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect()
{
  result = lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect;
  if (!lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect;
  if (!lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlimmerTextEffect and conformance GlimmerTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GradientBlurTextEffect and conformance GradientBlurTextEffect()
{
  result = lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect;
  if (!lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect;
  if (!lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientBlurTextEffect and conformance GradientBlurTextEffect);
  }

  return result;
}

void type metadata accessor for TextFilterEffect<GlimmerTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t RangeSet<>.IndexSequence.makeIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v1, v4);
  return RangeSet<>.IndexSequence.Iterator.init(ranges:)(v6, a1);
}

uint64_t RangeSet<>.IndexSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v55 - v9;
  v60 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = *(v60 + 16);
  v68 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v68);
  v67 = v55 - v10;
  v71 = v4;
  v62 = type metadata accessor for Range();
  v72 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v55 - v13;
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - v19;
  v21 = *v2;
  v63 = a1;
  v22 = *(a1 + 48);
  v23 = type metadata accessor for RangeSet.Ranges();
  if (v21 < RangeSet.Ranges.count.getter())
  {
    v55[2] = v22;
    v59 = v21;
    v55[3] = v23;
    RangeSet.Ranges.subscript.getter();
    (*(v73 + 16))(v17, v14, v5);
    v24 = *(v72 + 8);
    v72 += 8;
    v56 = v24;
    v25 = v62;
    v24(v14, v62);
    v26 = v63;
    v27 = *(v63 + 44);
    v58 = v20;
    dispatch thunk of Strideable.advanced(by:)();
    (*(v73 + 8))(v17, v5);
    v55[1] = swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v28 = v70;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v29 = v65;
    v60 = *(v65 + 8);
    v57 = v65 + 8;
    (v60)(v28, AssociatedTypeWitness);
    v30 = v61;
    RangeSet.Ranges.subscript.getter();
    v31 = *(v26 + 32);
    v75 = v71;
    v76 = v31;
    swift_getWitnessTable();
    v63 = Collection.count.getter();
    v56(v30, v25);
    v32 = *(v29 + 16);
    v72 = v27;
    v33 = v64;
    v32(v64, v2 + v27, AssociatedTypeWitness);
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v55[0] = v2;
    if (v34)
    {
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if (v35 < 64)
      {
        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v60)(v33, AssociatedTypeWitness);
LABEL_5:
        v38 = v70;
        v39 = v58;
        if (v37 < v63)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v47(v33, AssociatedTypeWitness);
    }

    else
    {
      v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if ((v43 & 1) == 0)
      {
        v39 = v58;
        if (v44 >= 64)
        {
          v29 = v65;
          if (v63 < 1)
          {
            (v60)(v33, AssociatedTypeWitness);
            v38 = v70;
          }

          else
          {
            v74 = v63;
            lazy protocol witness table accessor for type Int and conformance Int();
            v38 = v70;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            swift_getAssociatedConformanceWitness();
            v52 = dispatch thunk of static Comparable.< infix(_:_:)();
            v53 = v60;
            (v60)(v38, AssociatedTypeWitness);
            v53(v33, AssociatedTypeWitness);
            if (v52)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v48 = dispatch thunk of BinaryInteger._lowWord.getter();
          (v60)(v33, AssociatedTypeWitness);
          v29 = v65;
          v38 = v70;
          if (v48 < v63)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        v54 = v55[0];
        *v55[0] = v59 + 1;
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        (*(v29 + 40))(v54 + v72, v38, AssociatedTypeWitness);
        goto LABEL_27;
      }

      if (v44 <= 64)
      {
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v49 = v70;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        swift_getAssociatedConformanceWitness();
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v51 = v60;
        (v60)(v49, AssociatedTypeWitness);
        v29 = v65;
        if (v50)
        {
          v51(v33, AssociatedTypeWitness);
          v39 = v58;
LABEL_27:
          (*(v73 + 32))(v36, v39, v5);
          return (*(v73 + 56))(v36, 0, 1, v5);
        }

        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        v51(v33, AssociatedTypeWitness);
        goto LABEL_5;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v46 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v46(v33, AssociatedTypeWitness);
      v29 = v65;
    }

    v39 = v58;
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v40 = *(v73 + 56);
  v41 = v66;

  return v40(v41, 1, 1, v5);
}

uint64_t RangeSet<>.IndexSequence.Iterator.init(ranges:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *a2 = 0;
  v4 = type metadata accessor for RangeSet<>.IndexSequence.Iterator();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  swift_checkMetadataState();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v5 = *(v4 + 48);
  v6 = type metadata accessor for RangeSet.Ranges();
  return (*(*(v6 - 8) + 32))(&a2[v5], a1, v6);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RangeSet<A><>.IndexSequence@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  RangeSet<>.IndexSequence.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RangeSet<A><>.IndexSequence(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  if (*(*(v1 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v2, v3), (v4 & 1) != 0))
  {
    swift_endAccess();
    result = Text.Effect.Keyframes.subscript.getter(v2, v3, v1);
    if (result)
    {

      return 0;
    }
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_7SwiftUI4TextV0H16AnimationSupportE6EffectO6TimingV09UnitGlyphL0Vs5NeverOTg506_sS2d7f3UI4h5V0C16ij2E6k2O6l3V09mn19G0VIgyyd_Sd_SdtAJs5o23OIegnrzr_TR03_s7a3UI4c5s129C16de2E6f2O6g109V5Chunk33_363E424B8D24CACCD5AAF4ADF34E118BLLV14computeTimings13configuration12lineCoverage6spring4fromSayAH09hI65x21VGAH13ConfigurationV_Z50AA6SpringVSayAH0X4InfoVGtFARSd_SdtXEfU5_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  result = v29;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v30 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v30;
      }

      *(result + 16) = v16 + 1;
      v17 = result + 16 * v16;
      --v11;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v28 > v12)
  {
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v19 = *(v26 + 32 + 8 * v6);
        v20 = *(v27 + 32 + 8 * v6);
        v31 = result;
        v22 = *(result + 16);
        v21 = *(result + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v12 = v24;
          result = v31;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClusterIndexSequence(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClusterIndexSequence.Iterator(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  outlined init with copy of Text.Effect.BaseContent(a1, v7, type metadata accessor for ClusterIndexSequence);
  v15 = *(v5 + 32);
  v16 = &v7[*(v5 + 28)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v20 = *&v7[v15];
  v19 = *&v7[v15 + 8];
  outlined init with take of Text.Effect.BaseContent(v7, v14);
  v21 = &v14[v9[7]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v14[v9[8]];
  *v22 = v20;
  *(v22 + 1) = v19;
  v23 = &v14[v9[9]];
  *v23 = v17;
  *(v23 + 1) = v18;
  if (v17 >= v20)
  {
    if (__OFSUB__(v20, v17))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v20 != v17 || v18 >= v19)
    {
      result = outlined destroy of FragmentRangeSequence.Iterator(v14, type metadata accessor for ClusterIndexSequence.Iterator);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      return result;
    }
  }

  v51 = v23;
  outlined init with copy of Text.Effect.BaseContent(v14, v11, type metadata accessor for ClusterIndexSequence.Iterator);
  v27 = *v11;
  v26 = v11[1];
  v28 = v11[2];
  swift_beginAccess();
  v29 = *(v27 + 48);
  v30 = *(v29 + 16);
  v49 = v27;

  if (!v30)
  {
    goto LABEL_33;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
  if ((v32 & 1) == 0)
  {
    goto LABEL_33;
  }

  v50 = v26;
  v33 = *(*(v29 + 56) + 16 * v31);
  swift_endAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v34 = *(v33 + 16);
  if (v17 >= v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = v28;
  v35 = (v33 + 32);
  v36 = *(v33 + 32 + 8 * v17);
  v37 = 0;
  if (v17)
  {
    v38 = v17;
    while (1)
    {
      v39 = *(*(*v35 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v40 = __OFADD__(v37, v39);
      v37 += v39;
      if (v40)
      {
        break;
      }

      ++v35;
      if (!--v38)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_16:

  outlined destroy of FragmentRangeSequence.Iterator(v11, type metadata accessor for Text.Effect.BaseContent);
  v41 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v51;
  *(v51 + 1) = v41;
  v43 = *(*(v36 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
  v40 = __OFADD__(v37, v43);
  v44 = v37 + v43;
  if (v40)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v44 < v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFSUB__(v44, v41))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v50;
  if (v44 != v41)
  {
LABEL_23:
    result = outlined destroy of FragmentRangeSequence.Iterator(v14, type metadata accessor for ClusterIndexSequence.Iterator);
    v46 = v48;
    *a2 = v49;
    *(a2 + 8) = v45;
    *(a2 + 16) = v46;
    *(a2 + 24) = v36;
    *(a2 + 32) = v17;
    *(a2 + 40) = v34;
    *(a2 + 48) = v37;
    *(a2 + 56) = v18;
    return result;
  }

  if (!__OFADD__(v17, 1))
  {
    *v42 = v17 + 1;
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Double __swiftcall Text.Effect.ClusterSeparationFunction.separation(clusterCount:lineCoverage:)(Swift::Int clusterCount, Swift::Double lineCoverage)
{
  v6 = v2;
  if (v5 > 1u)
  {
    v11 = v3;
    if (v5 != 2)
    {
      v13 = v4;
      v15 = exp(lineCoverage * -0.75);
      if (v15 <= 1.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }

      v17 = v15 < 0.0;
      v18 = 0.0;
      if (!v17)
      {
        v18 = v16;
      }

      v19 = v18 * v6 + (1.0 - v18) * v11;
      v20 = 2.0 / (exp((clusterCount + -1.0) / -10.0) + 1.0) + -1.0;
      v10 = (1.0 - v20) * v13;
      v9 = v20 * v19;
      return v10 + v9;
    }

    v12 = exp((clusterCount + -1.0) / -10.0);
    return (2.0 / (v12 + 1.0) + -1.0) * v6 + (1.0 - (2.0 / (v12 + 1.0) + -1.0)) * v11;
  }

  else if (v5)
  {
    v7 = 2;
    if (clusterCount > 2)
    {
      v7 = clusterCount;
    }

    v8 = -2.0 / v7 + 1.0;
    v9 = (1.0 - v8) * v3;
    v10 = v8 * v2;
    return v10 + v9;
  }

  return v6;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.FragmentSeparationFunction.Storage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1 && v2 == v3)
    {
      return *(a1 + 8) == v5;
    }

    return 0;
  }

  v7 = *&v5 | *&v3;
  return v4 == 2 && v7 == 0;
}

uint64_t Text.Effect.FractionalIndexFunction.summary(of:content:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, double *a7@<X8>)
{
  v95 = a5;
  v94 = a7;
  v93 = type metadata accessor for ClusterIndexSequence.Iterator(0);
  MEMORY[0x1EEE9AC00](v93);
  v13 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v80 - v15;
  v87 = type metadata accessor for Text.Layout.Run();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?(0, &lazy cache variable for type metadata for Text.Layout.RunSlice?, MEMORY[0x1E6981060]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v92 = &v80 - v18;
  v88 = type metadata accessor for Text.Layout.Cluster();
  v19 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Text.Layout.RunSlice();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ClusterIndexSequence(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LayoutDirection();
  MEMORY[0x1EEE9AC00](v26);
  v32 = MEMORY[0x1EEE9AC00](v27);
  if ((a6 & 1) == 0)
  {
    if (a4 >= a2)
    {
      v42 = v94;
      *v94 = a2;
      *(v42 + 1) = a4;
      type metadata accessor for Text.Effect.FractionalIndexFunction.Summary(0);

      return swift_storeEnumTagMultiPayload();
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v81 = v31;
  v83 = v30;
  v33 = *(v30 + 104);
  v82 = &v80 - v28;
  v84 = v29;
  v33(v32);
  outlined init with copy of Text.Effect.BaseContent(v95, v25, type metadata accessor for Text.Effect.BaseContent);
  v34 = &v25[*(v23 + 20)];
  *v34 = a1;
  *(v34 + 1) = a2;
  v35 = &v25[*(v23 + 24)];
  *v35 = a3;
  *(v35 + 1) = a4;
  v96 = a4;
  specialized Sequence.first(where:)(v25, &v98);
  outlined destroy of FragmentRangeSequence.Iterator(v25, type metadata accessor for ClusterIndexSequence);
  v102 = v98;
  v103 = v99;
  v104 = v100;
  v105 = v101;
  if (v98)
  {
    v36 = *(&v105 + 1) - v105;
    if (!__OFSUB__(*(&v105 + 1), v105))
    {
      if ((v36 & 0x8000000000000000) == 0)
      {
        v37 = *(*(&v103 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
        if (v36 < *(v37 + 16))
        {
          v38 = v88;
          (*(v19 + 16))(v21, v37 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v36, v88);
          v39 = v92;
          specialized Collection.first.getter(v92);
          (*(v19 + 8))(v21, v38);
          v40 = v90;
          v41 = v91;
          if ((*(v90 + 48))(v39, 1, v91) == 1)
          {
            outlined destroy of Text.Layout.RunSlice?(&v102, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex)?, type metadata accessor for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex));
            outlined destroy of Text.Layout.RunSlice?(v39, &lazy cache variable for type metadata for Text.Layout.RunSlice?, MEMORY[0x1E6981060]);
          }

          else
          {
            (*(v40 + 32))();
            v44 = v85;
            Text.Layout.RunSlice.run.getter();
            Text.Layout.Run.layoutDirection.getter();
            outlined destroy of Text.Layout.RunSlice?(&v102, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex)?, type metadata accessor for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex));
            (*(v86 + 8))(v44, v87);
            (*(v40 + 8))(v89, v41);
            v45 = v83;
            v46 = v82;
            v47 = v84;
            (*(v83 + 8))(v82, v84);
            (*(v45 + 32))(v46, v81, v47);
          }

          goto LABEL_13;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_endAccess();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_13:
  v48 = v96;
  v49 = v93;
  outlined init with copy of Text.Effect.BaseContent(v95, v25, type metadata accessor for Text.Effect.BaseContent);
  v50 = &v25[*(v23 + 20)];
  *v50 = a1;
  *(v50 + 1) = a2;
  v51 = &v25[*(v23 + 24)];
  *v51 = a3;
  *(v51 + 1) = v48;
  v52 = v97;
  outlined init with take of Text.Effect.BaseContent(v25, v97);
  v53 = (v52 + v49[5]);
  *v53 = a1;
  v53[1] = a2;
  v54 = (v52 + v49[6]);
  *v54 = a3;
  v54[1] = v48;
  v55 = (v52 + v49[7]);
  *v55 = a1;
  v55[1] = a2;
  v56 = INFINITY;
  v57 = -INFINITY;
LABEL_14:
  v58 = a2;
  while (1)
  {
    if (a1 >= a3)
    {
      if (__OFSUB__(a3, a1))
      {
        goto LABEL_49;
      }

      if (a1 != a3 || v58 >= v96)
      {
        break;
      }
    }

    outlined init with copy of Text.Effect.BaseContent(v97, v13, type metadata accessor for ClusterIndexSequence.Iterator);
    v59 = *v13;
    v60 = v13[1];
    v61 = v13[2];
    swift_beginAccess();
    v62 = *(v59 + 48);
    v63 = *(v62 + 16);

    if (!v63)
    {
      goto LABEL_56;
    }

    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
    if ((v65 & 1) == 0)
    {
      goto LABEL_56;
    }

    v66 = *(*(v62 + 56) + 16 * v64);
    swift_endAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    v67 = *(v66 + 16);
    if (a1 >= v67)
    {
      goto LABEL_43;
    }

    v68 = (v66 + 32);
    v69 = *(v66 + 32 + 8 * a1);
    v70 = 0;
    if (a1)
    {
      v71 = a1;
      while (1)
      {
        v72 = *(*(*v68 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v73 = __OFADD__(v70, v72);
        v70 += v72;
        if (v73)
        {
          break;
        }

        ++v68;
        if (!--v71)
        {
          goto LABEL_27;
        }
      }

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
      goto LABEL_51;
    }

LABEL_27:
    *&v98 = v59;
    *(&v98 + 1) = v60;
    *&v99 = v61;
    *(&v99 + 1) = v69;
    *&v100 = a1;
    *(&v100 + 1) = v67;
    *&v101 = v70;

    outlined destroy of FragmentRangeSequence.Iterator(v13, type metadata accessor for Text.Effect.BaseContent);
    a2 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_44;
    }

    v55[1] = a2;
    v74 = *(*(*(&v99 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
    v73 = __OFADD__(v101, v74);
    v75 = v101 + v74;
    if (v73)
    {
      goto LABEL_45;
    }

    if (v75 < v101)
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v75, a2))
    {
      goto LABEL_47;
    }

    if (v75 == a2)
    {
      v73 = __OFADD__(a1++, 1);
      if (v73)
      {
        goto LABEL_50;
      }

      *v55 = a1;
    }

    if (a2 < v58)
    {
      goto LABEL_48;
    }

    Text.Effect.BaseFragment.typographicBounds(for:)(v58, v58 + 1, v106);
    *&v110.origin.x = v106[0];
    *&v110.size.width = v106[2];
    v110.origin.y = *&v106[1] - v107;
    v110.size.height = v107 + v108;
    MidX = CGRectGetMidX(v110);
    outlined destroy of Text.Effect.BaseFragment(&v98);
    if (MidX < v56)
    {
      v56 = MidX;
    }

    ++v58;
    if (v57 <= MidX)
    {
      v57 = MidX;
      goto LABEL_14;
    }
  }

  outlined destroy of FragmentRangeSequence.Iterator(v97, type metadata accessor for ClusterIndexSequence.Iterator);
  type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)();
  if (v56 > v57)
  {
    goto LABEL_55;
  }

  v78 = *(v77 + 48);
  v79 = v94;
  *v94 = v56;
  v79[1] = v57;
  (*(v83 + 32))(v79 + v78, v82, v84);
  type metadata accessor for Text.Effect.FractionalIndexFunction.Summary(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Text.Effect.ChunkingFunction.chunk(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v115 = a3;
  v7 = MEMORY[0x1E6981010];
  type metadata accessor for ClosedRange<CGFloat>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v100 - v11;
  type metadata accessor for ClosedRange<CGFloat>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v7, MEMORY[0x1E69E7BE0]);
  v104 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = v100 - v15;
  v114 = type metadata accessor for Text.Layout.Line();
  v16 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a4 & 1) != 0 || specialized Sequence.reduce<A>(_:_:)(0, a1) <= a2)
  {
    outlined init with copy of Text.Effect.BaseContent(a1, v20, type metadata accessor for Text.Effect.BaseContent);
    return specialized Text.Effect.ChunkCollection.init(content:)(v20);
  }

  v100[1] = 0;
  v21 = specialized RandomAccessCollection<>.indices.getter();
  if (v22 < v21)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v23 = v21;
  v108 = (v16 + 8);
  v109 = (v16 + 16);
  v106 = (v10 + 8);
  v107 = (v14 + 16);
  v105 = (v14 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v101 = a1;
  v110 = v12;
  v111 = v9;
  v112 = v22;
  while (1)
  {
    if (__OFSUB__(v22, v23))
    {
      goto LABEL_107;
    }

    if (v22 == v23)
    {
      return v24;
    }

    if (v23 >= v22)
    {
      goto LABEL_108;
    }

    v25 = *a1;
    v26 = a1[1];
    v27 = a1[2];

    v116 = v25;
    v117 = v26;
    v119 = v27;
    v28 = Text.Effect.Keyframes.subscript.getter(v26, v27, v25);
    if (!v28)
    {
      goto LABEL_124;
    }

    v29 = v104;
    v30 = v103;
    if (v23 < 0)
    {
      goto LABEL_109;
    }

    if (v23 >= *(v28 + 16))
    {
      goto LABEL_110;
    }

    v102 = v24;
    v31 = (v28 + 32);
    v32 = *(v28 + 32 + 8 * v23);
    v33 = 0;
    v34 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
    if (v23)
    {
      v35 = v23;
      while (1)
      {
        v36 = *(*(*v31 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v38 = __OFADD__(v33, v36);
        v33 += v36;
        if (v38)
        {
          break;
        }

        ++v31;
        if (!--v35)
        {
          goto LABEL_15;
        }
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_15:

    v37 = *(*(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

    if (__OFADD__(v33, v37))
    {
      goto LABEL_111;
    }

    v38 = __OFSUB__(v33 + v37, v33);
    v39 = v37;
    if (v37 < 0 != v38)
    {
      goto LABEL_112;
    }

    if (v38)
    {
      goto LABEL_113;
    }

    v40 = v23;
    if (v37 >= v115)
    {
      v41 = v116;
      goto LABEL_52;
    }

    v41 = v116;
LABEL_20:
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_99;
    }

    if (v42 < v112)
    {
      break;
    }

LABEL_52:
    swift_retain_n();
    v73 = v119;
    swift_retain_n();
    v74 = Text.Effect.Keyframes.subscript.getter(v117, v73, v41);
    if (!v74)
    {
      goto LABEL_124;
    }

    if (v23 >= *(v74 + 16))
    {
      goto LABEL_114;
    }

    v75 = *(v74 + 32 + 8 * v23);
    if (v23)
    {
      v76 = 0;
      v77 = 0;
      while (1)
      {
        v78 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        v79 = *(*(v34[43].class_meths + *(v74 + 32 + 8 * v76)) + 16);
        v38 = __OFADD__(v77, v79);
        v77 += v79;
        if (v38)
        {
          goto LABEL_94;
        }

        if (__OFSUB__(v23, v78))
        {
          goto LABEL_95;
        }

        ++v76;
        if (v23 == v78)
        {
          goto LABEL_62;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v77 = 0;
LABEL_62:

    v80 = Text.Effect.Keyframes.subscript.getter(v117, v73, v41);
    if (!v80)
    {
      goto LABEL_124;
    }

    v81 = *(v80 + 16);
    if (v40 >= v81)
    {
      goto LABEL_115;
    }

    v82 = (v80 + 32);
    v83 = *(v80 + 32 + 8 * v40);
    v84 = 0;
    if (v40)
    {
      v85 = v40 & ~(v40 >> 63);
      v86 = v40;
      while (v85)
      {
        if (!v81)
        {
          goto LABEL_97;
        }

        v87 = *(*(v34[43].class_meths + *v82) + 16);
        v38 = __OFADD__(v84, v87);
        v84 += v87;
        if (v38)
        {
          goto LABEL_98;
        }

        --v81;
        --v85;
        ++v82;
        if (!--v86)
        {
          goto LABEL_70;
        }
      }

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
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
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
      goto LABEL_122;
    }

LABEL_70:

    v88 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_116;
    }

    class_meths = v34[43].class_meths;
    v90 = *(*(class_meths + v75) + 16);
    v38 = __OFADD__(v77, v90);
    v91 = v77 + v90;
    if (v38)
    {
      goto LABEL_117;
    }

    if (v91 < v77)
    {
      goto LABEL_118;
    }

    v92 = *(*(class_meths + v83) + 16);
    v93 = v84 + v92;
    if (__OFADD__(v84, v92))
    {
      goto LABEL_119;
    }

    if (v93 < v84)
    {
      goto LABEL_120;
    }

    v94 = v102;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
    }

    v96 = *(v94 + 2);
    v95 = *(v94 + 3);
    v24 = v94;
    if (v96 >= v95 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v94);
    }

    *(v24 + 2) = v96 + 1;
    v97 = &v24[32 * v96];
    *(v97 + 4) = v23;
    *(v97 + 5) = v77;
    *(v97 + 6) = v88;
    *(v97 + 7) = v93;
    v23 = v40 + 1;
    v22 = v112;
    v98 = v112 < v88;
    a1 = v101;
    if (v98)
    {
      goto LABEL_121;
    }
  }

  v118 = v40;
  swift_beginAccess();
  v43 = *(v41 + 48);
  v44 = *(v43 + 16);

  v45 = v119;

  if (v44)
  {
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v45);
    if (v47)
    {
      v48 = *(*(v43 + 56) + 16 * v46);
      swift_endAccess();
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (v42 >= *(v48 + 16))
      {
        goto LABEL_101;
      }

      v49 = 0;
      v50 = 0;
      v51 = *(v48 + 32 + 8 * v42);
      do
      {
        if (v49 >= v42)
        {
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
          goto LABEL_92;
        }

        v52 = *(*(*(v48 + 32 + 8 * v49) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v38 = __OFADD__(v50, v52);
        v50 += v52;
        if (v38)
        {
          goto LABEL_86;
        }

        if (__OFSUB__(v42, ++v49))
        {
          goto LABEL_87;
        }
      }

      while (v118 + 1 != v49);

      v53 = v113;
      v54 = v114;
      (*v109)(v113, v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v114);
      Text.Layout.Line.endIndex.getter();
      (*v108)(v53, v54);
      (*v107)(v30, v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v29);
      v55 = v110;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
      v56 = v30;
      v57 = v111;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v120[4] == v120[0])
      {
        (*v106)(v55, v57);

        (*v105)(v56, v29);
        v30 = v56;
      }

      else
      {
        v58 = dispatch thunk of Collection.subscript.read();
        v60 = *v59;
        v58(v120, 0);
        (*v106)(v55, v57);

        (*v105)(v56, v29);
        v30 = v56;
        if (!v60)
        {
          v34 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
          v41 = v116;
          v40 = v118;
          goto LABEL_52;
        }
      }

      v41 = v116;
      swift_beginAccess();
      v61 = *(v41 + 48);
      v62 = *(v61 + 16);

      v63 = v119;

      v34 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
      if (v62)
      {
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v63);
        if (v65)
        {
          v66 = *(*(v61 + 56) + 16 * v64);
          swift_endAccess();
          if (v42 >= *(v66 + 16))
          {
            goto LABEL_102;
          }

          v67 = 0;
          v68 = 0;
          v40 = v118;
          while (v67 < v42)
          {
            v69 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_89;
            }

            v70 = *(*(*(v66 + 32 + 8 * v67) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v38 = __OFADD__(v68, v70);
            v68 += v70;
            if (v38)
            {
              goto LABEL_90;
            }

            if (__OFSUB__(v42, v69))
            {
              goto LABEL_91;
            }

            ++v67;
            if (v42 == v69)
            {
              v71 = *(*(*(v66 + 32 + 8 * v42) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

              v72 = v68 + v71;
              if (__OFADD__(v68, v71))
              {
                goto LABEL_103;
              }

              if (v72 < v68)
              {
                goto LABEL_104;
              }

              if (__OFSUB__(v72, v68))
              {
                goto LABEL_105;
              }

              v38 = __OFADD__(v39, v71);
              v39 += v71;
              if (!v38)
              {
                if (v39 <= v115)
                {
                  v40 = v42;
                }

                if (v39 < v115)
                {
                  goto LABEL_20;
                }

                goto LABEL_52;
              }

              goto LABEL_106;
            }
          }

          goto LABEL_88;
        }
      }
    }
  }

LABEL_123:
  swift_endAccess();
LABEL_124:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t protocol witness for Text.Effect.DurationProvider.animationInterval(for:) in conformance Text.Effect.Timing(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    if (*(v2 + 16) > result)
    {
      return *(v2 + 16 * result + 32);
    }
  }

  __break(1u);
  return result;
}

void Text.Effect.Timing.Chunk.computeInfos(configuration:chunk:content:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v117 = a5;
  v116 = a4;
  v115 = a3;
  v107 = type metadata accessor for Text.Layout.Cluster();
  v10 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayoutDirection();
  v110 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - v15;
  v113 = type metadata accessor for FragmentRangeSequence(0) - 8;
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FragmentRangeSequence.Iterator(0) - 8;
  MEMORY[0x1EEE9AC00](v112);
  v97 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Text.Effect.FractionalIndexFunction.Summary(0);
  MEMORY[0x1EEE9AC00](v108);
  v20 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v97 - v22);

  v24 = MEMORY[0x1E69E7CC0];
  *v6 = MEMORY[0x1E69E7CC0];

  v114 = v6;
  v6[2] = v24;
  v25 = *(a1 + 112);
  v109 = v23;
  v26 = v23;
  v27 = a2;
  v28 = a2;
  v29 = v115;
  v30 = v116;
  v31 = v117;
  Text.Effect.FractionalIndexFunction.summary(of:content:)(v28, v115, v116, v117, a6, v25, v26);
  v32 = v111;
  outlined init with copy of Text.Effect.BaseContent(a6, v111, type metadata accessor for Text.Effect.BaseContent);
  v33 = v113;
  v34 = (v32 + *(v113 + 28));
  *v34 = v27;
  v34[1] = v29;
  v35 = (v32 + *(v33 + 32));
  *v35 = v30;
  v35[1] = v31;
  v36 = v32;
  v37 = v97;
  outlined init with take of Text.Effect.BaseContent(v36, v97);
  v38 = v112;
  v39 = (v37 + *(v112 + 28));
  *v39 = v27;
  v39[1] = v29;
  v40 = (v37 + *(v38 + 32));
  *v40 = v30;
  v40[1] = v31;
  v41 = (v37 + *(v38 + 36));
  *v41 = v27;
  v41[1] = v29;
  FragmentRangeSequence.Iterator.next()(v118);
  v42 = v118[0];
  if (v118[0])
  {
    v44 = v123;
    v43 = v124;
    v45 = v122;
    v46 = v120;
    v47 = v119;
    v104 = (v110 + 32);
    v103 = (v110 + 8);
    v100 = *MEMORY[0x1E697E7D0];
    v99 = (v110 + 104);
    v105 = v10 + 8;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
    v116 = v16;
    v102 = v10 + 16;
    while (1)
    {
      v98 = v49;
      v128 = v42;
      v129 = v118[1];
      v130 = v118[2];
      v131 = v47;
      v117 = v47;
      v132 = v46;
      v133 = v121;
      v115 = v45;
      v134 = v45;
      if (__OFSUB__(v43, v44))
      {
        break;
      }

      if (v44 <= v43)
      {
        v50 = v43;
      }

      else
      {
        v50 = v44;
      }

      v113 = v50;
      v51 = v44;
      v112 = v43;
      v111 = v44;
      v110 = v46;
      while (v43 != v51)
      {
        if (v43 < v44)
        {
          goto LABEL_52;
        }

        if (v113 == v51)
        {
          goto LABEL_53;
        }

        v52 = v51 + 1;
        outlined init with copy of Text.Effect.BaseContent(v109, v20, type metadata accessor for Text.Effect.FractionalIndexFunction.Summary);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v53 = *v20;
          v54 = v20[1];
          type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)();
          (*v104)(v16, v20 + *(v55 + 48), v12);
          v56 = v54 - v53;
          if (v56 <= 0.0)
          {
            (*v103)(v16, v12);
            v58 = 0.0;
          }

          else
          {
            Text.Effect.BaseFragment.typographicBounds(for:)(v51, v51 + 1, v125);
            *&v136.origin.x = v125[0];
            *&v136.size.width = v125[2];
            v136.origin.y = *&v125[1] - v126;
            v136.size.height = v126 + v127;
            v57 = (CGRectGetMidX(v136) - v53) / v56;
            if (v57 < 0.0)
            {
              v57 = 0.0;
            }

            if (v57 <= 1.0)
            {
              v58 = v57;
            }

            else
            {
              v58 = 1.0;
            }

            v59 = v101;
            (*v99)(v101, v100, v12);
            v60 = static LayoutDirection.== infix(_:_:)();
            v61 = *v103;
            (*v103)(v59, v12);
            v61(v116, v12);
            if ((v60 & 1) == 0)
            {
              v58 = 1.0 - v58;
            }
          }
        }

        else
        {
          v62 = *v20;
          v63 = *(v20 + 1);
          v64 = __OFSUB__(v63, *v20);
          v65 = v63 - *v20;
          if (v64)
          {
            goto LABEL_58;
          }

          v58 = 0.0;
          v93 = v65 <= 1;
          v66 = v65 - 1;
          if (!v93)
          {
            v64 = __OFSUB__(v51, *&v62);
            v67 = v51 - *&v62;
            if (v64)
            {
              goto LABEL_59;
            }

            v58 = v67 / v66;
          }
        }

        v68 = v51 - v115;
        if (__OFSUB__(v51, v115))
        {
          goto LABEL_54;
        }

        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v69 = *(v117 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
        if (v68 >= *(v69 + 16))
        {
          goto LABEL_56;
        }

        v70 = v12;
        v71 = v106;
        v72 = v107;
        (*(v10 + 16))(v106, v69 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v68, v107);
        v73 = Text.Layout.Cluster.characterRange.getter();
        v75 = v74;
        (*(v10 + 8))(v71, v72);
        v76 = CFAttributedStringGetString(*(v117 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString));
        if (__OFSUB__(v75, v73))
        {
          goto LABEL_57;
        }

        v77 = v76;
        v135.location = v73;
        v135.length = v75 - v73;
        v78 = CFStringCreateWithSubstring(0, v76, v135);
        if (!v78)
        {
          goto LABEL_64;
        }

        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v84 = *(v48 + 2);
        v83 = *(v48 + 3);
        v43 = v112;
        v44 = v111;
        v85 = v110;
        if (v84 >= v83 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v48);
          v85 = v110;
          v44 = v111;
          v43 = v112;
          v48 = v87;
        }

        *(v48 + 2) = v84 + 1;
        v86 = &v48[32 * v84];
        *(v86 + 4) = v58;
        *(v86 + 5) = v80;
        *(v86 + 6) = v82;
        *(v86 + 7) = v85;
        *v114 = v48;
        v51 = v52;
        v12 = v70;
        v16 = v116;
        if (__OFSUB__(v43, v52))
        {
          goto LABEL_51;
        }
      }

      v88 = *(*(v117 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v64 = __OFADD__(v115, v88);
      v89 = v115 + v88;
      if (v64)
      {
        goto LABEL_60;
      }

      v90 = v89 - v115;
      if (__OFSUB__(v89, v115))
      {
        goto LABEL_61;
      }

      v91 = *(v48 + 2);
      v92 = v91 - v90;
      if (__OFSUB__(v91, v90))
      {
        goto LABEL_62;
      }

      v93 = v89 < v115 || v91 < v92;
      if (v93)
      {
        goto LABEL_63;
      }

      v49 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v95 = *(v49 + 2);
      v94 = *(v49 + 3);
      if (v95 >= v94 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v49);
      }

      outlined destroy of Text.Layout.RunSlice?(v118, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?, type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>));
      *(v49 + 2) = v95 + 1;
      v96 = &v49[16 * v95];
      *(v96 + 4) = v92;
      *(v96 + 5) = v91;
      v114[2] = v49;
      FragmentRangeSequence.Iterator.next()(v118);
      v42 = v118[0];
      v47 = v119;
      v46 = v120;
      v45 = v122;
      v44 = v123;
      v43 = v124;
      v16 = v116;
      if (!v118[0])
      {
        goto LABEL_50;
      }
    }

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
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_50:
    outlined destroy of FragmentRangeSequence.Iterator(v97, type metadata accessor for FragmentRangeSequence.Iterator);
    outlined destroy of FragmentRangeSequence.Iterator(v109, type metadata accessor for Text.Effect.FractionalIndexFunction.Summary);
  }
}