uint64_t Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(uint64_t a1, Swift::Double a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a4 + 16);
  if (*(a1 + 16))
  {
    v8 = 3.0 / (v7 + 2.0);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v6 = *(a1 + 8) * (1.0 - v8) + v6 * (1.0 - (1.0 - v8));
  }

  *(v4 + 24) = v6;
  v117 = v7;
  if (v7 <= 1)
  {
    v10 = 1.0;
    v9 = 0.0;
    if (!v7)
    {
      v20 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }
  }

  else
  {
    v9 = Text.Effect.ClusterSeparationFunction.separation(clusterCount:lineCoverage:)(v7, a2);
    v10 = 1.0 - v9 + v9 * (1.0 / *(*v4 + 16));
  }

  v124[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v11 = v124[0];
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = (a4 + 32);
  v15 = 0x8000000000000000;
  v16 = *(a1 + 96);
  do
  {
    if (!v15)
    {
      goto LABEL_161;
    }

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v13 * *v14 + v12 * (1.0 - *v14);
    }

    v124[0] = v11;
    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v11 = v124[0];
    }

    *(v11 + 2) = v19 + 1;
    *&v11[8 * v19 + 32] = v10 * v17;
    --v15;
    v14 += 4;
    --v7;
  }

  while (v7);
  v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v20 + 16) = v117;
  bzero((v20 + 32), 8 * v117);
LABEL_17:
  v21 = *(v4 + 16);
  v114 = v20;
  v107 = *(v21 + 16);
  if (!v107)
  {
    v62 = 0;
    v111 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v63 = *(a1 + 24);
    if (*(a1 + 40))
    {
      if (*(a1 + 40) != 1)
      {
        if (v62)
        {
          v71 = v20 + 32;

          v72 = 0;
          while (1)
          {
            v73 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_173;
            }

            v74 = (v21 + 32 + 16 * v72);
            v76 = *v74;
            v75 = v74[1];
            if (!v72)
            {
              goto LABEL_113;
            }

            if (v72 > v62)
            {
              goto LABEL_174;
            }

            v78 = *(v74 - 2);
            v77 = *(v74 - 1);
            if (v78 != v77)
            {
              if (v78 >= v77)
              {
                goto LABEL_177;
              }

              v80 = v77 < 1;
              v81 = v77 - 1;
              if (v80)
              {
                goto LABEL_178;
              }

              if (v81 >= *(v20 + 16))
              {
                goto LABEL_179;
              }

              if (v81 >= *(v11 + 2))
              {
                goto LABEL_180;
              }

              if (v76 != v75)
              {
                v79 = *(v71 + 8 * v81) + v9 * *&v11[8 * v81 + 32];
                if (v75 < v76)
                {
                  goto LABEL_175;
                }

                goto LABEL_122;
              }
            }

            else
            {
LABEL_113:
              v79 = 0.0;
              if (v76 != v75)
              {
                if (v75 < v76)
                {
                  goto LABEL_175;
                }

LABEL_122:
                if (v76 >= v75)
                {
                  goto LABEL_176;
                }

                while ((v76 & 0x8000000000000000) == 0)
                {
                  if (v76 >= *(v20 + 16))
                  {
                    goto LABEL_160;
                  }

                  *(v71 + 8 * v76) = v79 + *(v71 + 8 * v76);
                  if (v75 == ++v76)
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_159;
              }
            }

LABEL_108:
            v72 = v73;
            if (v73 == v62)
            {

              break;
            }
          }
        }

LABEL_129:
        v82 = v20;
        v83 = *(v20 + 16);
        v84 = MEMORY[0x1E69E7CC0];
        if (!v83)
        {
          v88 = 0.0;
          v92 = MEMORY[0x1E69E7CC0];
LABEL_143:
          v96 = *(v11 + 2);
          if (v96)
          {
            v124[0] = v84;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
            v97 = v124[0];
            v98 = *(v124[0] + 2);
            v99 = 32;
            do
            {
              v100 = *&v11[v99];
              v124[0] = v97;
              v101 = *(v97 + 3);
              if (v98 >= v101 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v98 + 1, 1);
                v97 = v124[0];
              }

              *(v97 + 2) = v98 + 1;
              *&v97[8 * v98 + 32] = v100 / v88;
              v99 += 8;
              ++v98;
              --v96;
            }

            while (v96);
          }

          else
          {

            v97 = MEMORY[0x1E69E7CC0];
          }

          v102 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_7SwiftUI4TextV0H16AnimationSupportE6EffectO6TimingV09UnitGlyphL0Vs5NeverOTg506_sS2d7f3UI4h5V0C16ij2E6k2O6l3V09mn19G0VIgyyd_Sd_SdtAJs5o23OIegnrzr_TR03_s7a3UI4c5s129C16de2E6f2O6g109V5Chunk33_363E424B8D24CACCD5AAF4ADF34E118BLLV14computeTimings13configuration12lineCoverage6spring4fromSayAH09hI65x21VGAH13ConfigurationV_Z50AA6SpringVSayAH0X4InfoVGtFARSd_SdtXEfU5_Tf3nnnpf_nTf1cn_n(v92, v97);

          return v102;
        }

        v85 = 0;
        v86 = v82 + 32;
        v87 = *(v11 + 2);
        v88 = 0.0;
        do
        {
          if (v87 == v85)
          {
            break;
          }

          if (v85 >= v87)
          {
            goto LABEL_166;
          }

          v89 = *&v11[8 * v85 + 32];
          v90 = v85 + 1;
          if (v88 <= *(v86 + 8 * v85) + v89)
          {
            v88 = *(v86 + 8 * v85) + v89;
          }

          ++v85;
        }

        while (v83 != v90);
        v124[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
        v91 = 0x8000000000000000;
        v92 = v124[0];
        while (v91)
        {
          v93 = *(v86 + 8 * v91);
          v124[0] = v92;
          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
            v92 = v124[0];
          }

          *(v92 + 2) = v95 + 1;
          *&v92[8 * v95 + 32] = v93 / v88;
          ++v91;
          if (!--v83)
          {
            goto LABEL_143;
          }
        }

LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v64 = 5;
      if (v62 > 5)
      {
        v64 = v62;
      }

      v63 = v63 * (-5.0 / v64 + 1.0) + (1.0 - (-5.0 / v64 + 1.0)) * *(a1 + 32);
    }

    if (v62)
    {
      v65 = 0;
      v66 = 0.0;
      while (1)
      {
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        v68 = (v21 + 32 + 16 * v65);
        v70 = *v68;
        v69 = v68[1];
        if (v65)
        {
          if (v65 > *(v111 + 2))
          {
            goto LABEL_170;
          }

          v66 = v66 + v63 * *&v111[8 * v65 + 24];
        }

        if (v70 != v69)
        {
          if (v69 < v70)
          {
            goto LABEL_171;
          }

          if (v70 < v69)
          {
            while ((v70 & 0x8000000000000000) == 0)
            {
              if (v70 >= *(v20 + 16))
              {
                goto LABEL_158;
              }

              *(v20 + 32 + 8 * v70) = v66 + *(v20 + 32 + 8 * v70);
              if (v69 == ++v70)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_157;
          }

          goto LABEL_172;
        }

LABEL_94:
        ++v65;
        if (v67 == v62)
        {
          goto LABEL_129;
        }
      }

LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    goto LABEL_129;
  }

  v22 = 0;
  v108 = v21 + 32;
  v113 = v11 + 24;
  v118 = v20 + 32;
  v104 = v11 + 32;
  v111 = MEMORY[0x1E69E7CC0];
  v112 = v11;
  v105 = *(v4 + 16);
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_163;
    }

    v23 = (v108 + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = v25 - *v23;
    if (__OFSUB__(v25, *v23))
    {
      goto LABEL_164;
    }

    if (v26)
    {
      if (v26 < 1)
      {
        goto LABEL_182;
      }

      type metadata accessor for _ContiguousArrayStorage<Int>();
      v27 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v27);
      v29 = v28 - 32;
      if (v28 < 32)
      {
        v29 = v28 - 25;
      }

      if (v24 <= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v24;
      }

      v27[2] = v26;
      v27[3] = 2 * (v29 >> 3);
      if (v24 == v25)
      {
        goto LABEL_181;
      }

      v31 = 0;
      v32 = v30 - v24;
      while (v25 >= v24)
      {
        if (v32 == v31)
        {
          goto LABEL_152;
        }

        v27[v31 + 4] = v24 + v31;
        if (v26 - 1 == v31)
        {
          goto LABEL_36;
        }

        if (v26 == ++v31)
        {
          goto LABEL_181;
        }
      }

      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v124[0] = v27;
    swift_bridgeObjectRetain_n();
    specialized MutableCollection<>.sort(by:)(v124, a4);
    swift_bridgeObjectRelease_n();
    v33 = v124[0];
    v34 = *(v124[0] + 2);
    if (v34)
    {
      break;
    }

    v59 = 0.0;
LABEL_80:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
    }

    v61 = *(v111 + 2);
    v60 = *(v111 + 3);
    if (v61 >= v60 >> 1)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v111);
    }

    ++v22;
    *(v111 + 2) = v61 + 1;
    *&v111[8 * v61 + 32] = v59;
    if (v22 == v107)
    {
      v62 = *(v21 + 16);
      goto LABEL_87;
    }
  }

  v109 = v22;
  v35 = 0;
  v36 = *(a1 + 104);
  v119 = v124[0] + 32;
  v122 = v36 + 32;
  v123 = *(v36 + 16);
  v37 = 0.0;
  v38 = v117;
  v115 = *(v124[0] + 2);
  v116 = v124[0];
  do
  {
    if (v35 >= *(v33 + 2))
    {
      goto LABEL_153;
    }

    v39 = *&v119[8 * v35];
    if (v39 >= 1)
    {
      if (v39 > *(v11 + 2))
      {
        goto LABEL_156;
      }

      v37 = v37 + v9 * *&v113[8 * v39];
    }

    if (v39 >= v38)
    {
      goto LABEL_154;
    }

    v40 = 0.0;
    if (!v123)
    {
      goto LABEL_73;
    }

    v41 = 0;
    v42 = a4 + 32 + 32 * v39;
    v43 = *(v42 + 8);
    v44 = *(v42 + 16);
    v120 = v44;
    v121 = v43;
    do
    {
      v45 = (v122 + 24 * v41);
      v46 = *v45;
      v47 = *(v45 + 1);
      v48 = *(v45 + 2);
      v49 = specialized Collection.first.getter(v43, v44);
      if ((v49 & 0x100000000) == 0)
      {
        v50 = (v48 & 0x2000000000000000) != 0 ? HIBYTE(v48) & 0xF : v47 & 0xFFFFFFFFFFFFLL;
        if (v50)
        {
          v51 = v49;
          v52 = 0;
          while (1)
          {
            if ((v48 & 0x1000000000000000) != 0)
            {
              v55 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
              goto LABEL_60;
            }

            if ((v48 & 0x2000000000000000) != 0)
            {
              v124[0] = v47;
              v124[1] = (v48 & 0xFFFFFFFFFFFFFFLL);
              v54 = v124 + v52;
            }

            else
            {
              v53 = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((v47 & 0x1000000000000000) == 0)
              {
                v53 = _StringObject.sharedUTF8.getter();
              }

              v54 = (v53 + v52);
            }

            v55 = *v54;
            if ((*v54 & 0x80000000) == 0)
            {
              break;
            }

            v57 = (__clz(v55 ^ 0xFF) - 24);
            if (v57 > 2)
            {
              if (v57 == 3)
              {
                v55 = ((v55 & 0xF) << 12) | ((v54[1] & 0x3F) << 6) | v54[2] & 0x3F;
                v56 = 3;
              }

              else
              {
                v55 = ((v55 & 0xF) << 18) | ((v54[1] & 0x3F) << 12) | ((v54[2] & 0x3F) << 6) | v54[3] & 0x3F;
                v56 = 4;
              }
            }

            else
            {
              if (v57 == 1)
              {
                break;
              }

              v55 = v54[1] & 0x3F | ((v55 & 0x1F) << 6);
              v56 = 2;
            }

LABEL_60:
            if (v55 == v51)
            {
              v40 = v46;
              goto LABEL_72;
            }

            v52 += v56;
            if (v52 >= v50)
            {
              goto LABEL_69;
            }
          }

          v56 = 1;
          goto LABEL_60;
        }
      }

LABEL_69:
      ++v41;
      v44 = v120;
      v43 = v121;
    }

    while (v41 != v123);
LABEL_72:
    v11 = v112;
    v20 = v114;
    v34 = v115;
    v33 = v116;
    v38 = v117;
LABEL_73:
    if (v39 >= *(v20 + 16))
    {
      goto LABEL_155;
    }

    ++v35;
    v37 = v37 + v40;
    *(v118 + 8 * v39) = v37;
  }

  while (v35 != v34);
  if (v34 > *(v33 + 2))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v58 = *&v119[8 * v34 - 8];

  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v58 < *(v11 + 2))
  {
    v21 = v105;
    v59 = v37 + *&v104[8 * v58];
    v22 = v109;
    goto LABEL_80;
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #3 in Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v3 >= v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *a2;
  if (*a2 >= v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 32 + 32 * v3);
  v7 = *(a3 + 32 + 32 * v5);
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 == v7)
  {
    return v3 < v5;
  }

  return 0;
}

void type metadata accessor for _ContiguousArrayStorage<Int>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>);
    }
  }
}

uint64_t outlined destroy of FragmentRangeSequence.Iterator(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Text.Effect.BaseContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)()
{
  if (!lazy cache variable for type metadata for (ClosedRange<CGFloat>, LayoutDirection))
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    type metadata accessor for LayoutDirection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ClosedRange<CGFloat>, LayoutDirection));
    }
  }
}

uint64_t outlined destroy of Text.Layout.RunSlice?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Text.Effect.DelayFunction.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.DelayFunction.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.FractionalIndexFunction.Summary()
{
  type metadata accessor for ClosedRange<CGFloat>(319, &lazy cache variable for type metadata for Range<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E66A8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for Text.Effect.Timing.GlyphTiming()
{
  result = type metadata accessor for Spring();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing.GlyphInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing.GlyphInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method()
{
  result = lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method;
  if (!lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Effect.ClusterSeparationFunction.Storage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterSeparationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterSeparationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTag for Text.Effect.FragmentSeparationFunction.Storage(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Text.Effect.FragmentSeparationFunction.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t GlimmerTextEffect.Timing.init(content:duration:from:to:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, double *a6@<X8>)
{
  v14 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = specialized Sequence.reduce<A>(_:_:)(0, a1);
  if (__OFSUB__(v21, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_endAccess();
    __break(1u);
LABEL_35:
    swift_endAccess();
    __break(1u);
LABEL_36:
    swift_endAccess();
    __break(1u);
LABEL_37:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v62 = v18;
  v63 = a3;
  v22 = (v21 - 1) * 0.05;
  v23 = v22 + 1.16666667;
  v64 = a6;
  v65 = a1;
  a6[2] = (v22 + 1.16666667) / (v22 + 0.1133);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(a1, v16, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v16, v20, type metadata accessor for Text.Effect.BaseContent);
  v24 = *v16;
  v25 = v16[1];
  v26 = v16[2];
  swift_beginAccess();
  if (!*(*(v24 + 48) + 16))
  {
    goto LABEL_36;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  if ((v27 & 1) == 0)
  {
    goto LABEL_36;
  }

  swift_endAccess();
  outlined destroy of Text.Effect.ResolvedDrawing.Operation(v16, type metadata accessor for Text.Effect.BaseContent);
  v28 = *v20;
  v29 = v20[1];
  v30 = v20[2];
  swift_beginAccess();
  v31 = *(v28 + 48);
  if (*(v31 + 16))
  {
    a3 = 0;
    v60 = a5;
    v61 = a4;
    v6 = a2;
    v32 = 0.0;
    v7 = 0.0;
    do
    {
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = *(*(v31 + 56) + 16 * v33);
      swift_endAccess();
      if (*(v35 + 16) == a3)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      v36 = *(v28 + 48);
      v37 = *(v36 + 16);

      if (!v37)
      {
        goto LABEL_37;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v39 & 1) == 0)
      {
        goto LABEL_37;
      }

      v40 = *(*(v36 + 56) + 16 * v38);
      swift_endAccess();
      if (a3 >= *(v40 + 16))
      {
        goto LABEL_31;
      }

      v41 = *(v40 + 32 + 8 * a3);
      if (a3)
      {
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = *(*(*(v40 + 32 + 8 * v42) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v45 = __OFADD__(v43, v44);
          v43 += v44;
          if (v45)
          {
            break;
          }

          if (a3 == ++v42)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_15:
      swift_beginAccess();
      v46 = *(*(v28 + 48) + 16);

      if (!v46)
      {
        goto LABEL_34;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v47 & 1) == 0)
      {
        goto LABEL_34;
      }

      swift_endAccess();
      swift_beginAccess();
      v48 = *(v28 + 48);
      if (!*(v48 + 16))
      {
        goto LABEL_35;
      }

      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v50 & 1) == 0)
      {
        goto LABEL_35;
      }

      v51 = *(*(v48 + 56) + 16 * v49);
      swift_endAccess();
      if (a3 >= *(v51 + 16))
      {
        goto LABEL_32;
      }

      ++a3;
      v52 = (v41 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
      v53 = v32 + CGRectGetWidth(*(v41 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
      if (v7 <= v53)
      {
        v7 = v53;
      }

      Width = CGRectGetWidth(*v52);

      v32 = v32 + Width;
      swift_beginAccess();
      v31 = *(v28 + 48);
    }

    while (*(v31 + 16));
  }

  swift_endAccess();
  __break(1u);
LABEL_24:
  *(v20 + *(v62 + 36)) = a3;
  outlined destroy of Text.Effect.ResolvedDrawing.Operation(v20, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
  if (v63)
  {
    v6 = 0.0;
    if ((v61 & 1) != (v60 & 1))
    {
      if (v61)
      {
        v6 = 0.2;
      }

      else
      {
        v6 = v23;
      }
    }
  }

  v55 = v64;
  *v64 = v6;
  v55[1] = v7;
  v56 = type metadata accessor for GlimmerTextEffect.Timing();
  v57 = v65;
  Text.Effect.BaseContent.layoutDirection.getter(v55 + *(v56 + 28));
  return outlined destroy of Text.Effect.ResolvedDrawing.Operation(v57, type metadata accessor for Text.Effect.BaseContent);
}

void GlimmerTextEffect.Timing.unitProgress(at:for:)(uint64_t *a1)
{
  CGRectGetWidth(*(a1[3] + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
  v2 = a1[4];
  if (v2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v3 = 0.0;
    if (!v2)
    {
      return;
    }

    v4 = 0;
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    while (1)
    {
      v24 = v6;
      swift_beginAccess();
      v13 = *(v6 + 48);
      if (!*(v13 + 16))
      {
        break;
      }

      outlined init with copy of Text.Effect.Keyframes(&v24, v23);

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      v16 = *(*(v13 + 56) + 16 * v14);
      swift_endAccess();
      if (v4 >= *(v16 + 16))
      {
        goto LABEL_15;
      }

      v17 = v16 + 32;
      v18 = *(v16 + 32 + 8 * v4);
      if (v4)
      {
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v21 = *(*(*(v17 + 8 * v19) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v22 = __OFADD__(v20, v21);
          v20 += v21;
          if (v22)
          {
            break;
          }

          if (v4 == ++v19)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_4:
      ++v4;
      v8 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
      v9 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 8);
      v10 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 16);
      v11 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 24);

      v25.origin.x = v8;
      v25.origin.y = v9;
      v25.size.width = v10;
      v25.size.height = v11;
      Width = CGRectGetWidth(v25);

      v3 = v3 + Width;
      if (v2 == v4)
      {
        return;
      }
    }
  }

  outlined init with copy of Text.Effect.Keyframes(&v24, v23);

LABEL_18:
  swift_endAccess();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t GlimmerTextEffect.timing(for:from:to:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X5>, char a5@<W6>, double *a6@<X8>)
{
  v12 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(a1, v14, type metadata accessor for Text.Effect.BaseContent);
  if (a2)
  {
    type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      LOBYTE(a2) = 0;
      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    LOBYTE(a2) = *(v15 + 16);
  }

  if (!a3)
  {
LABEL_8:
    v17 = 0;
    return GlimmerTextEffect.Timing.init(content:duration:from:to:)(v14, a4, a5 & 1, a2, v17, a6);
  }

LABEL_5:
  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = *(v16 + 16);
  return GlimmerTextEffect.Timing.init(content:duration:from:to:)(v14, a4, a5 & 1, a2, v17, a6);
}

uint64_t closure #1 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, double a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for ShaderFunction();
  v42 = *(v18 - 8);
  v43 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Shader();
  v40 = *(v21 - 8);
  v41 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for GraphicsContext.Filter();
  v38 = *(v24 - 8);
  v39 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v42 + 8))(v20, v43);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v40 + 8))(v23, v41);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v38 + 8))(v26, v39);
  v30 = *(a11 + 8);
  v31 = *a11;
  v32 = *(a11 + 32);
  v44[0] = *(a11 + 16);
  v44[1] = v32;
  v44[2] = *(a11 + 48);
  v33 = *(v30 + 16);
  if (v33)
  {
    v34 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v35 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v44, LODWORD(a6) | (LODWORD(a7) << 32), LODWORD(a8) | (LODWORD(a9) << 32), 0, a1, v31);
      v35 += v36;
      --v33;
    }

    while (v33);
  }

  return result;
}

uint64_t closure #2 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for ShaderFunction();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Shader();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GraphicsContext.Filter();
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v30 + 8))(v8, v31);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v28 + 8))(v11, v29);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v26 + 8))(v14, v27);
  v18 = *(a3 + 8);
  v19 = *a3;
  v20 = *(a3 + 32);
  v32[0] = *(a3 + 16);
  v32[1] = v20;
  v32[2] = *(a3 + 48);
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v23 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v32, 0, 0, 1, a1, v19);
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t closure #3 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = type metadata accessor for ShaderFunction();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Shader();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for GraphicsContext.Filter();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a2;
  GraphicsContext.clipToLayer(opacity:options:content:)();
  v51 = v14;
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v43 + 8))(v24, v44);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v41 + 8))(v26, v42);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v39 + 8))(v28, v40);
  v32 = *(a8 + 8);
  v33 = *a8;
  v34 = *(a8 + 32);
  v50[0] = *(a8 + 16);
  v50[1] = v34;
  v50[2] = *(a8 + 48);
  v35 = *(v32 + 16);
  if (v35)
  {
    v36 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v37 = v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v38 = *(v36 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v50, a13, a14, 0, a1, v33);
      v37 += v38;
      --v35;
    }

    while (v35);
  }

  return result;
}

uint64_t closure #1 in closure #3 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)()
{
  Path.init(_:)();
  GraphicsContext.fill(_:with:style:)();
  return outlined destroy of Path(v1);
}

uint64_t closure #4 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, float a4, float a5, float a6, float a7)
{
  result = GraphicsContext.opacity.setter();
  v14 = *(a2 + 8);
  v15 = *a2;
  v16 = *(a2 + 32);
  v21[0] = *(a2 + 16);
  v21[1] = v16;
  v21[2] = *(a2 + 48);
  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v19 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v18 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v21, LODWORD(a4) | (LODWORD(a5) << 32), LODWORD(a6) | (LODWORD(a7) << 32), 0, a1, v15);
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t protocol witness for static Text.Effect.Base.animatorConfiguration(from:) in conformance GlimmerTextEffect@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static GlimmerTextEffect.animatorConfiguration(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlimmerTextEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static GlimmerTextEffect.animatorConfiguration(from:)(uint64_t a1)
{
  v2 = static Color.blue.getter();
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F726765726F66, 0xEF726F6C6F43646ELL), (v4 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v3, v13), type metadata accessor for NSObject(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (CGColorForCoreColor(v12, v5))
  {
    v6 = Color.init(cgColor:)();

    v2 = v6;
    goto LABEL_6;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

LABEL_7:
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x65676C7562, 0xE500000000000000);
  if ((v8 & 1) == 0 || (outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:
    if (!*(a1 + 16))
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (!*(a1 + 16))
  {
    return v2;
  }

LABEL_13:
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x656E696873, 0xE500000000000000);
  if (v10)
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, v13);
    swift_dynamicCast();
  }

  return v2;
}

uint64_t specialized GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v114 = a3;
  v102 = a2;
  v117 = a1;
  v105 = type metadata accessor for GraphicsContext.Shading();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = type metadata accessor for LayoutDirection();
  v8 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v10 = &v98[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v116 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v98[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v98[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a4 + 64) && (type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase), (v18 = swift_dynamicCastClass()) != 0))
  {
    v112 = *(v18 + 16);
    v19 = *(a4 + 88);
    if (!*(a4 + 80))
    {
LABEL_9:
      v111 = 0;
      if (!v19)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v112 = 0;
    v19 = *(a4 + 88);
    if (!*(a4 + 80))
    {
      goto LABEL_9;
    }
  }

  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_9;
  }

  v111 = *(v20 + 16);
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcreteConfiguration);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21[2];
    v23 = v21[4];
    v106 = v21[3];
    v107 = v23;

    goto LABEL_13;
  }

LABEL_12:
  v107 = 0x3FD999999999999ALL;
  v106 = 0x3FB999999999999ALL;
  v22 = static Color.blue.getter();
LABEL_13:
  v24 = *a5;

  v101 = v24;
  GraphicsContext.environment.getter();
  Color.resolve(in:)();
  v108 = v25;
  v109 = v26;
  v110 = v27;
  v29 = v28;
  v115 = v22;

  (*(v15 + 8))(v17, v14);
  v30 = *(v117 + 8);
  v31 = *(v117 + 32);
  v118[0] = *(v117 + 16);
  v118[1] = v31;
  v118[2] = *(v117 + 48);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v36 = *(v30 + 16);
  if (v36)
  {
    v37 = v30 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v38 = *(v116 + 72);
    v39 = *(v30 + 16);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v37, v13, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v118);
      v124.origin.x = v40;
      v124.origin.y = v41;
      v124.size.width = v42;
      v124.size.height = v43;
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      v120 = CGRectUnion(v119, v124);
      x = v120.origin.x;
      y = v120.origin.y;
      width = v120.size.width;
      height = v120.size.height;
      outlined destroy of Text.Effect.ResolvedDrawing.Operation(v13, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      v37 += v38;
      --v39;
    }

    while (v39);
  }

  v100 = CGRect.outset(by:)(8.0, 8.0, 8.0, 8.0, x, y, width, height);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  type metadata accessor for GlimmerTextEffect.Timing();
  v50 = v113;
  (*(v8 + 104))(v10, *MEMORY[0x1E697E7D0], v113);
  v51 = static LayoutDirection.== infix(_:_:)();
  v52 = (*(v8 + 8))(v10, v50);
  if (v112 != v111 && (*(a4 + 56) & 0xFE) == 2)
  {
    if (v111)
    {
      v99 = v29;
      v75 = v115;
      v116 = v45;
      GlimmerTextEffect.Timing.unitProgress(at:for:)(v102);
      v77 = v76;
      v122.origin.x = x;
      v122.origin.y = y;
      v122.size.width = width;
      v122.size.height = height;
      v78 = v77 * CGRectGetWidth(v122);
      v79 = x;
      v80 = y;
      v81 = width;
      v82 = height;
      if (v51)
      {
        v83 = v78 + CGRectGetMinX(*&v79) + -50.0;
      }

      else
      {
        v83 = CGRectGetMaxX(*&v79) - v78 + 50.0;
      }

      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = height;
      MidY = CGRectGetMidY(v123);
      type metadata accessor for _ContiguousArrayStorage<Color>();
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_195CC8D70;
      v87 = v83;
      if (v51)
      {
        *(v86 + 32) = static Color.white.getter();
        v88 = static Color.clear.getter();
      }

      else
      {
        *(v86 + 32) = static Color.clear.getter();
        v88 = static Color.white.getter();
      }

      v89 = v99;
      v90 = v116;
      *(v86 + 40) = v88;
      MEMORY[0x19A8BD450](v86);
      v91 = v103;
      static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

      MEMORY[0x1EEE9AC00](v92);
      *&v98[-48] = v87;
      *&v98[-40] = MidY;
      *&v98[-32] = v75;
      v93 = v106;
      v94 = v107;
      *&v98[-24] = v106;
      *&v98[-16] = v94;
      v95 = v117;
      *&v98[-8] = v117;
      v96 = GraphicsContext.drawLayer(content:)();
      MEMORY[0x1EEE9AC00](v96);
      *&v98[-112] = v100;
      *&v98[-104] = v90;
      *&v98[-96] = v47;
      *&v98[-88] = v49;
      *&v98[-80] = v91;
      *&v98[-72] = v87;
      *&v98[-64] = MidY;
      *&v98[-56] = v75;
      *&v98[-48] = v93;
      *&v98[-40] = v94;
      *&v98[-32] = v95;
      v97 = v109;
      *&v98[-24] = v108;
      *&v98[-20] = v97;
      *&v98[-16] = v110;
      *&v98[-12] = v89;
      GraphicsContext.drawLayer(content:)();

      return (*(v104 + 8))(v91, v105);
    }

    v71 = v29;
    if (v36)
    {
      v72 = *v117;
      v73 = v30 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v74 = *(v116 + 72);
      do
      {
        v52 = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v118, 0, 0, 1, a5, v72);
        v73 += v74;
        --v36;
      }

      while (v36);
    }

    *&v98[-32] = MEMORY[0x1EEE9AC00](v52).n128_u64[0];
    *&v98[-24] = v117;
    v84 = v109;
    *&v98[-16] = v108;
    *&v98[-12] = v84;
    *&v98[-8] = v110;
    *&v98[-4] = v71;
LABEL_38:
    GraphicsContext.drawLayer(content:)();
  }

  if (v111)
  {
    v53 = v29;
    v54 = x;
    v55 = y;
    v56 = width;
    v57 = height;
    if (v51)
    {
      MaxX = CGRectGetMaxX(*&v54);
      v59 = 50.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v54);
      v59 = -50.0;
    }

    v64 = MaxX + v59;
    v121.origin.x = x;
    v121.origin.y = y;
    v121.size.width = width;
    v121.size.height = height;
    v66 = CGRectGetMidY(v121);
    if (v36)
    {
      v67 = *v117;
      v68 = v30 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v69 = *(v116 + 72);
      do
      {
        v65 = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v118, 0, 0, 1, a5, v67);
        v68 += v69;
        --v36;
      }

      while (v36);
    }

    MEMORY[0x1EEE9AC00](v65);
    *&v98[-64] = v64;
    *&v98[-56] = v66;
    *&v98[-48] = v115;
    v70 = v107;
    *&v98[-40] = v106;
    *&v98[-32] = v70;
    *&v98[-24] = v117;
    LODWORD(v70) = v109;
    *&v98[-16] = v108;
    *&v98[-12] = v70;
    *&v98[-8] = v110;
    *&v98[-4] = v53;
    goto LABEL_38;
  }

  if (v36)
  {
    v60 = *v117;
    v61 = v30 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v62 = *(v116 + 72);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v118, 0, 0, 1, a5, v60);
      v61 += v62;
      --v36;
    }

    while (v36);
  }
}

uint64_t type metadata accessor for GlimmerTextEffect.Timing()
{
  result = type metadata singleton initialization cache for GlimmerTextEffect.Timing;
  if (!type metadata singleton initialization cache for GlimmerTextEffect.Timing)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect();
    v7 = a3(a1, &type metadata for GlimmerTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Shader.Argument>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>)
  {
    type metadata accessor for Shader.Argument();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for GlimmerTextEffect.Timing()
{
  result = type metadata accessor for LayoutDirection();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO7MarkersV6MarkerV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v47 = *MEMORY[0x1E69DB758];
  v46 = *MEMORY[0x1E69DB650];
  v45 = *MEMORY[0x1E69DB648];
  v44 = *MEMORY[0x1E69DB750];
  v3 = (a2 + 56);
  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 3);
    v6 = *(i - 16);
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(v3 - 3);
    v11 = *(v3 - 1);
    v10 = *v3;
    v50 = *(v3 - 16);
    if (v6)
    {
      if ((*(v3 - 2) & 1) == 0)
      {
        return 0;
      }

      if (v5 != v9)
      {
        goto LABEL_95;
      }

      goto LABEL_83;
    }

    if (*(v3 - 2))
    {
      return 0;
    }

    v43 = *(i - 16);
    outlined copy of Text.Effect.Markers.MarkerType(v9, 0);
    outlined copy of Text.Effect.Markers.MarkerType(v5, 0);
    _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(v5, v9);
    if ((v12 & 1) == 0)
    {
      goto LABEL_94;
    }

    v48 = v10;
    v49 = v7;
    if (*(v5 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v13, v52);
      v15 = swift_dynamicCast();
      if (v15)
      {
        v16 = v51;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15 ^ 1;
      v18 = *(v9 + 16);
      if (!v18)
      {
LABEL_17:
        v19 = 1;
        if (v17)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v16 = 0;
      v17 = 1;
      v18 = *(v9 + 16);
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
    if (v21)
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v20, v52);
      v22 = swift_dynamicCast();
      v18 = v51;
      if (!v22)
      {
        v18 = 0;
      }

      v19 = v22 ^ 1;
      if (v17)
      {
LABEL_18:
        if (!v19)
        {
          goto LABEL_94;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v18 = 0;
      v19 = 1;
      if (v17)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    if (v16 == v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_94;
    }

LABEL_29:
    if (*(v5 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v25 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v24, v52);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v51;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
LABEL_44:
        v29 = 0;
        if (!v26)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_44;
      }
    }

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    if ((v28 & 1) == 0)
    {
      goto LABEL_44;
    }

    outlined init with copy of Any(*(v9 + 56) + 32 * v27, v52);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v29 = v51;
    }

    else
    {
      v29 = 0;
    }

    if (!v26)
    {
LABEL_42:
      if (v29)
      {
        goto LABEL_93;
      }

      goto LABEL_47;
    }

LABEL_45:
    if (!v29)
    {
      goto LABEL_92;
    }

    type metadata accessor for NSObject();
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_47:
    if (*(v5 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v31, v52);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v51;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
LABEL_62:
        v29 = 0;
        if (!v26)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_62;
      }
    }

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
    if ((v34 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v9 + 56) + 32 * v33, v52);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v29 = v51;
    }

    else
    {
      v29 = 0;
    }

    if (!v26)
    {
LABEL_60:
      if (v29)
      {
        goto LABEL_93;
      }

      goto LABEL_65;
    }

LABEL_63:
    if (!v29)
    {
      goto LABEL_92;
    }

    type metadata accessor for NSObject();
    v35 = static NSObject.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_65:
    if (*(v5 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v44), (v37 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v36, v52);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v51;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_80;
      }
    }

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
    if (v39)
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v38, v52);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v29 = v51;
      }

      else
      {
        v29 = 0;
      }

      if (!v26)
      {
LABEL_78:
        if (v29)
        {
          goto LABEL_93;
        }

        v6 = 0;
        v50 = 0;
        v10 = v48;
        v7 = v49;
        goto LABEL_83;
      }

      goto LABEL_81;
    }

LABEL_80:
    v29 = 0;
    if (!v26)
    {
      goto LABEL_78;
    }

LABEL_81:
    if (!v29)
    {
LABEL_92:
      v29 = v26;
LABEL_93:

LABEL_94:
      v6 = 0;
LABEL_95:
      v42 = v6;
      outlined consume of Text.Effect.Markers.MarkerType(v9, v6);
      outlined consume of Text.Effect.Markers.MarkerType(v5, v42);
      return 0;
    }

    type metadata accessor for NSObject();
    v40 = static NSObject.== infix(_:_:)();

    v10 = v48;
    v7 = v49;
    v6 = v43;
    if ((v40 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_83:
    outlined consume of Text.Effect.Markers.MarkerType(v5, v6);
    result = outlined consume of Text.Effect.Markers.MarkerType(v9, v50);
    if (__OFSUB__(v11, v8))
    {
      break;
    }

    if (v11 != v8)
    {
      return 0;
    }

    if (__OFSUB__(v10, v7))
    {
      goto LABEL_98;
    }

    if (v10 != v7)
    {
      return 0;
    }

    v3 += 4;
    result = 1;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Run(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v13, v10, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v14, v6, type metadata accessor for Text.Effect.Composition.Run);
        v16 = specialized static Text.Effect.Composition.Operation.== infix(_:_:)(v10, v6);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition.Run);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV12MorphClusterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v124 = v11;
  v125 = v10;
  v126 = v9;
  v127 = v8;
  v128 = v7;
  v129 = v6;
  v130 = v5;
  v131 = v4;
  v132 = v2;
  v133 = v3;
  v13 = (a1 + 32);
  v14 = (a2 + 32);
  v15 = v12 - 1;
  while (1)
  {
    v16 = v13[9];
    v97 = v13[8];
    v98 = v16;
    v17 = v13[11];
    v99 = v13[10];
    v100 = v17;
    v18 = v13[5];
    *&v93[32] = v13[4];
    v94 = v18;
    v19 = v13[7];
    v95 = v13[6];
    v96 = v19;
    v20 = v13[1];
    v91 = *v13;
    v92 = v20;
    v21 = v13[3];
    *v93 = v13[2];
    *&v93[16] = v21;
    v22 = *(&v91 + 1);
    v24 = v92;
    v23 = *v93;
    v25 = v93[40];
    v26 = v94;
    v27 = v14[9];
    v107 = v14[8];
    v108 = v27;
    v28 = v14[11];
    v109 = v14[10];
    v110 = v28;
    v29 = v14[5];
    *&v103[32] = v14[4];
    v104 = v29;
    v30 = v14[7];
    v105 = v14[6];
    v106 = v30;
    v31 = v14[1];
    v101 = *v14;
    v102 = v31;
    v32 = v14[3];
    *v103 = v14[2];
    *&v103[16] = v32;
    if (v91 != v101)
    {
      return 0;
    }

    rect1 = *&v93[24];
    rect1_16 = *&v93[8];
    v57 = *&v103[24];
    v59 = *&v103[8];
    v33 = v103[40];
    v34 = v104;
    v64.size.height = *v103;
    v64.origin.x = *(&v101 + 1);
    *&v64.origin.y = v102;
    outlined init with copy of TextModel.MorphCluster(&v91, &v81);
    outlined init with copy of TextModel.MorphCluster(&v101, &v81);
    v134.origin.x = v22;
    *&v134.origin.y = v24;
    v134.size.height = v23;
    if (!CGRectEqualToRect(v134, v64))
    {
      goto LABEL_30;
    }

    v118 = rect1_16;
    v119 = rect1;
    v120 = v25;
    v121 = v59;
    v122 = v57;
    v123 = v33;
    if ((static Path.== infix(_:_:)() & 1) == 0 || *&v26 != *&v34 || *(&v26 + 1) != *(&v34 + 1))
    {
      goto LABEL_30;
    }

    v66 = v15;
    v36 = *(&v95 + 1);
    v35 = v95;
    v37 = *(&v96 + 1);
    v38 = v96;
    v39 = *(&v97 + 1);
    v40 = *&v97;
    v41 = v98;
    v67 = v99;
    v42 = BYTE8(v99);
    v43 = *(&v99 + 9) | ((*(&v99 + 13) | (HIBYTE(v99) << 16)) << 32);
    v44 = BYTE8(v109);
    v46 = *(&v100 + 1);
    v45 = *&v100;
    if (BYTE8(v99) == 255)
    {
      if (BYTE8(v109) != 255)
      {
LABEL_24:
        v81 = v95;
        v82 = v96;
        *v83 = v97;
        *&v83[16] = v98;
        *&v83[32] = v99;
        v83[40] = BYTE8(v99);
        *&v83[41] = *(&v99 + 9);
        v83[47] = (*(&v99 + 9) | ((*(&v99 + 13) | (HIBYTE(v99) << 16)) << 32)) >> 48;
        *&v83[45] = *(&v99 + 13);
        v84 = v100;
        v87 = v107;
        v88 = v108;
        v85 = v105;
        v86 = v106;
        v89 = v109;
        v90 = v110;
        outlined init with copy of TextModel.Cluster?(&v95, &v68);
        outlined init with copy of TextModel.Cluster?(&v105, &v68);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(&v81, type metadata accessor for (TextModel.Cluster?, TextModel.Cluster?));
        goto LABEL_30;
      }

      outlined init with copy of TextModel.Cluster?(&v95, &v81);
      outlined init with copy of TextModel.Cluster?(&v105, &v81);
    }

    else
    {
      if (BYTE8(v109) == 255)
      {
        goto LABEL_24;
      }

      rect1a = *(&v95 + 1);
      v47 = v96;
      v65 = *&v97;
      *v83 = v107;
      *&v83[16] = v108;
      v81 = v105;
      v82 = v106;
      *&v83[32] = v109;
      v84 = v110;
      if (v95 != v105)
      {
        outlined init with copy of TextModel.Cluster?(&v95, &v68);
        outlined init with copy of TextModel.Cluster?(&v105, &v68);
LABEL_27:
        outlined destroy of TextModel.Cluster?(&v81);
        v68 = v35;
        v69 = rect1a;
        v70 = v47;
        v71 = v65;
        v72 = v39;
        v73 = v41;
        v74 = v67;
        v75 = v42;
        v78 = BYTE6(v43);
        v77 = WORD2(v43);
        v76 = v43;
LABEL_29:
        v79 = v45;
        v80 = v46;
        outlined destroy of TextModel.Cluster?(&v68);
LABEL_30:
        outlined destroy of TextModel.MorphCluster(&v101);
        outlined destroy of TextModel.MorphCluster(&v91);
        return 0;
      }

      v58 = *&v83[24];
      v60 = *&v83[8];
      v48 = v84;
      v49 = *(&v100 + 1);
      v50 = *&v100;
      v52 = *(&v82 + 1);
      v51 = *v83;
      v54 = *(&v81 + 1);
      v53 = *&v82;
      outlined init with copy of TextModel.Cluster?(&v95, &v68);
      outlined init with copy of TextModel.Cluster?(&v105, &v68);
      v135.origin.x = rect1a;
      *&v135.origin.y = v47;
      v135.size.height = v65;
      v136.origin.x = v54;
      v136.origin.y = v53;
      v136.size.width = v52;
      v136.size.height = v51;
      v46 = v49;
      v45 = v50;
      if (!CGRectEqualToRect(v135, v136))
      {
        goto LABEL_27;
      }

      v111 = v39;
      v112 = v41;
      v113 = v67;
      v114 = v42;
      v115 = v60;
      v116 = v58;
      v117 = v44;
      v55 = static Path.== infix(_:_:)();
      outlined destroy of TextModel.Cluster?(&v81);
      if ((v55 & 1) == 0 || v50 != *&v48 || v46 != *(&v48 + 1))
      {
        v68 = v35;
        v69 = rect1a;
        v70 = v47;
        v71 = v65;
        v72 = v39;
        v73 = v41;
        v74 = v67;
        v75 = v42;
        v76 = v43;
        v78 = BYTE6(v43);
        v77 = WORD2(v43);
        goto LABEL_29;
      }

      v37 = *(&v47 + 1);
      v40 = v65;
      v38 = v47;
      v36 = rect1a;
    }

    *&v81 = v35;
    *(&v81 + 1) = v36;
    *&v82 = v38;
    *(&v82 + 1) = v37;
    *v83 = v40;
    *&v83[8] = v39;
    *&v83[16] = v41;
    *&v83[32] = v67;
    v83[40] = v42;
    *&v83[41] = v43;
    v83[47] = BYTE6(v43);
    *&v83[45] = WORD2(v43);
    *&v84 = v45;
    *(&v84 + 1) = v46;
    outlined destroy of TextModel.Cluster?(&v81);
    outlined destroy of TextModel.MorphCluster(&v101);
    outlined destroy of TextModel.MorphCluster(&v91);
    if (!v66)
    {
      return 1;
    }

    v15 = v66 - 1;
    v14 += 12;
    v13 += 12;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport03RawB6Layout33_EB92A35C21DD52D72B91A53CA7419194LLV8FragmentV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 2) == *(v4 - 2) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSny7SwiftUI4TextV6LayoutV14CharacterIndexVG_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *(i - 1);
    if (__OFSUB__(v6, v5))
    {
      break;
    }

    if (v6 != v5)
    {
      return 0;
    }

    v8 = *v3;
    v3 += 2;
    v7 = v8;
    if (__OFSUB__(*i, v8))
    {
      goto LABEL_13;
    }

    if (*i != v7)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_10:
      if (*(a2 + 16))
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * v10)));
        specialized __RawDictionaryStorage.find<A>(_:)(v11);
        v13 = v12;

        if (v13)
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(a1 + 64 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t specialized RangeSet.upperBound.getter()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3 - 8];
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *(v7 + 8);
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3 - 8];
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *(v7 + 8);
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t specialized RangeSet.lowerBound.getter()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v10[4] == v10[0])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *v7;
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v10[4] == v10[0])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *v7;
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t Text.Effect.BaseContext.content<A>(for:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return Text.Effect.DrawableContent.init(keyframes:key:)(a6, a2, a3, a8, a9);
}

uint64_t Text.Effect.Composition.displacements(at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v32 = a2;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v16[7];
  v20 = type metadata accessor for Text.Layout.Line();
  (*(*(v20 - 8) + 16))(v18 + v19, v6, v20);
  *(v18 + v16[9]) = 0.0;
  v21 = v16[10];
  v22 = MEMORY[0x1E69E7CC8];
  *(v18 + v21) = MEMORY[0x1E69E7CC8];
  *(v18 + v16[11]) = v22;
  *v18 = a5;
  v23 = (v18 + v16[8]);
  v24 = v32;
  *v23 = a1;
  v23[1] = v24;
  v23[2] = a3;
  v23[3] = a4;
  v25 = *(v6 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);

    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v27, v14, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.appendDisplacement(to:)(v18);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
  }

  v29 = *(v18 + v21);

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.DisplacementCollector);
  return v29;
}

void Text.Effect.Composition.needsUpdate(at:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v65 = a4;
  v64 = a2;
  v9 = type metadata accessor for Text.Effect.Composition(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Text.Effect.Composition.Run(0) - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + *(v10 + 32));
  v70 = *(v19 + 16);
  if (!v70)
  {
    return;
  }

  v20 = 0;
  v69 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v66 = a1;
  v63 = v12;
  v68 = v19;
  while (v20 < *(v19 + 16))
  {
    v21 = v16;
    outlined init with copy of Text.Effect.Composition.Operation(v69 + *(v16 + 72) * v20, v18, type metadata accessor for Text.Effect.Composition.Run);
    outlined init with copy of Text.Effect.Composition.Operation(v18, v14, type metadata accessor for Text.Effect.Composition.Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_4;
      }

      v23 = *v14;
      v24 = v14[1];
      swift_beginAccess();
      v25 = a3[5];
      if (*(v25 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v23);
        v26 = Hasher._finalize()();
        v27 = -1 << *(v25 + 32);
        v28 = v26 & ~v27;
        if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (*(*(v25 + 48) + 8 * v28) != v23)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_14:
      swift_beginAccess();
      v30 = a3[3];
      if (!*(v30 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v32 & 1) == 0))
      {
        swift_endAccess();
LABEL_4:
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
        goto LABEL_5;
      }

      v33 = *(*(v30 + 56) + 8 * v31);
      swift_endAccess();
      v34 = v66;
      v35 = *(v66 + 16);
      if (v35)
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        if (v37)
        {
          v35 = *(*(v34 + 56) + 8 * v36);
        }

        else
        {
          v35 = 0;
        }
      }

      v55 = v35 + v24;
      if (__OFADD__(v35, v24))
      {
        goto LABEL_44;
      }

      v62 = *((*MEMORY[0x1E69E7D40] & *v33) + 0xD0);
      v56 = v33;
      v57 = v62(v23, v55, v66, v64, a3, v65, a5);

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
      if (v57)
      {
        return;
      }
    }

    else
    {
      v38 = *v14;
      v39 = v14[1];
      type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
      outlined init with take of Text.Effect.Composition(v14 + *(v40 + 48), v67, type metadata accessor for Text.Effect.Composition);
      v41 = Text.Effect.Composition.needsUpdate(at:context:)(v66, v64, a3, v65, a5);
      swift_beginAccess();
      v42 = a3[5];
      if (*(v42 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v38);
        v43 = Hasher._finalize()();
        v44 = -1 << *(v42 + 32);
        v45 = v43 & ~v44;
        if ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          v46 = ~v44;
          while (*(*(v42 + 48) + 8 * v45) != v38)
          {
            v45 = (v45 + 1) & v46;
            if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

LABEL_31:
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v67, type metadata accessor for Text.Effect.Composition);
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
          if (v41)
          {
            return;
          }

          goto LABEL_5;
        }
      }

LABEL_24:
      swift_beginAccess();
      v47 = a3[4];
      if (!*(v47 + 16) || (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v49 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_31;
      }

      v50 = *(*(v47 + 56) + 8 * v48);
      swift_endAccess();
      if (v41)
      {
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v67, type metadata accessor for Text.Effect.Composition);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
        return;
      }

      v51 = v66;
      v52 = *(v66 + 16);
      if (v52)
      {
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        if (v54)
        {
          v52 = *(*(v51 + 56) + 8 * v53);
        }

        else
        {
          v52 = 0;
        }
      }

      v58 = v52 + v39;
      if (__OFADD__(v52, v39))
      {
        goto LABEL_45;
      }

      v62 = *((*MEMORY[0x1E69E7D40] & *v50) + 0xD0);
      v59 = v50;
      v60 = v62(v38, v58, v66, v64, a3, v65, a5);

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v67, type metadata accessor for Text.Effect.Composition);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
      if (v60)
      {
        return;
      }
    }

LABEL_5:
    ++v20;
    v16 = v21;
    v19 = v68;
    if (v20 == v70)
    {
      return;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void Text.Effect.Composition.useSharedDrawing(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a4;
  v7 = type metadata accessor for Text.Effect.Composition(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v42);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Text.Effect.Composition.Run(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + *(v8 + 32));
  v41 = *(v16 + 16);
  if (v41)
  {
    v17 = 0;
    v40 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v36 = a3;
    do
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of Text.Effect.Composition.Operation(v40 + *(v13 + 72) * v17, v15, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v15, v11, type metadata accessor for Text.Effect.Composition.Operation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_4;
        }

        v19 = *v11;
        swift_beginAccess();
        v20 = *(a3 + 40);
        if (*(v20 + 16))
        {
          Hasher.init(_seed:)();
          MEMORY[0x19A8BDE80](v19);
          v21 = Hasher._finalize()();
          v22 = -1 << *(v20 + 32);
          v23 = v21 & ~v22;
          if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            while (*(*(v20 + 48) + 8 * v23) != v19)
            {
              v23 = (v23 + 1) & v24;
              if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_14:
        swift_beginAccess();
        v25 = *(a3 + 24);
        if (!*(v25 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v27 & 1) == 0))
        {
          swift_endAccess();
LABEL_4:
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Run);
          goto LABEL_5;
        }

        v28 = *(*(v25 + 56) + 8 * v26);
        swift_endAccess();
        v29 = a1;
        v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x110);
        v31 = v28;
        v32 = v30();
        a1 = v29;
        a3 = v36;
        v33 = v32;
      }

      else
      {
        type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
        v35 = v39;
        outlined init with take of Text.Effect.Composition(v11 + *(v34 + 48), v39, type metadata accessor for Text.Effect.Composition);
        v33 = Text.Effect.Composition.useSharedDrawing(context:)(a1, v37, a3, v38);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v35, type metadata accessor for Text.Effect.Composition);
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Run);
      if (v33)
      {
        return;
      }

LABEL_5:
      ++v17;
    }

    while (v17 != v41);
  }
}

uint64_t Text.Effect.Composition.Operation.appendIdentifiers(to:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.Composition.Run(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  outlined init with copy of Text.Effect.Composition.Operation(v1, &v23 - v14, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return specialized Set._Variant.insert(_:)(&v24, *v15);
    }
  }

  else
  {
    v17 = *v15;
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    outlined init with take of Text.Effect.Composition(v15 + *(v18 + 48), v9, type metadata accessor for Text.Effect.Composition);
    specialized Set._Variant.insert(_:)(&v24, v17);
    v19 = *&v9[*(v7 + 24)];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v22 = *(v4 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v21, v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v6, v12, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendIdentifiers(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v12, type metadata accessor for Text.Effect.Composition.Operation);
        v21 += v22;
        --v20;
      }

      while (v20);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v9, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x19A8BCFA0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 != *v9 || v8 != v9[1])
  {
    return 0;
  }

  v12 = *(a3 + 24);
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(v13, v14);
}

void closure #1 in Text.Effect.Composition.bounds(at:context:)(CGFloat *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, CGRect *a4@<X8>, double a5@<D0>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v14.origin.x = Text.Effect.Composition.Operation.bounds(at:line:context:)(a2, a3, a5);
  v14.origin.y = v10;
  v14.size.width = v11;
  v14.size.height = v12;
  v13.origin.x = v6;
  v13.origin.y = v7;
  v13.size.width = v8;
  v13.size.height = v9;
  *a4 = CGRectUnion(v13, v14);
}

double Text.Effect.Composition.Operation.bounds(at:line:context:)(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Text.Layout.Run();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v4, v17, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      Text.Layout.Line.subscript.getter();
      Text.Layout.Run.typographicBounds.getter();
      (*(v9 + 8))(v11, v8);
      v19 = a2[4];
      v20 = 0.0;
      if (!*(v19 + 16))
      {
        goto LABEL_10;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v31 = *v17;
      v32 = v17[1];
      Text.Layout.Line.subscript.getter();
      Text.Layout.Run.typographicBounds.getter();
      (*(v9 + 8))(v11, v8);
      v19 = a2[5];
      v20 = 0.0;
      if (!*(v19 + 16))
      {
        goto LABEL_10;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v20 = *(*(v19 + 56) + 8 * v21);
LABEL_10:
    v30 = v20 + v35[2];
    Text.Effect.Composition.Operation.metrics(at:line:context:)(a1, *a2, a2[1], a2[2], a2[3], a3);
    return v30;
  }

  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
  v24 = outlined init with take of Text.Effect.Composition(v17 + *(v23 + 48), v14, type metadata accessor for Text.Effect.Composition);
  *&v25 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v35[-4] = a3;
  *&v35[-3] = v14;
  *&v35[-2] = a2;
  v30 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.bounds(at:context:), v25, v27, v28, v29, &v35[-6], v26);
  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition);
  return v30;
}

double closure #1 in Text.Effect.Composition.widthDifference(at:context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>, double a8@<D0>)
{
  v9 = *a1;
  Text.Effect.Composition.Operation.widthDifference(at:line:context:)(a8, a2, a3, a4, a5, a6);
  result = v9 + v10;
  *a7 = result;
  return result;
}

uint64_t Text.Effect.Composition.Operation.widthDifference(at:line:context:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a5;
  v32 = a4;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v6, v19, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, type metadata accessor for Text.Effect.Composition.Operation);
    }

    else
    {
      v28 = *v19;
      v27 = v19[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v19, v34);
      if (result)
      {
        v29 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v30 = *(a3 + 16);
        if (v30)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if (v31)
          {
            v30 = *(*(a3 + 56) + 8 * result);
          }

          else
          {
            v30 = 0;
          }
        }

        if (__OFADD__(v30, v27))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v29) + 0xF8))(v28, v30 + v27, v13, a3, v32, v34, v33, a1);

          return (*(v11 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    v23 = outlined init with take of Text.Effect.Composition(v19 + *(v22 + 48), v16, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v23);
    *(&v32 - 6) = a1;
    *(&v32 - 5) = v16;
    *(&v32 - 4) = a3;
    v24 = v33;
    v25 = v34;
    *(&v32 - 3) = v32;
    *(&v32 - 2) = v25;
    *(&v32 - 1) = v24;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV15widthDifference2at7context12CoreGraphics7CGFloatVAD4TimeV_AF11BaseContextVtFA2N_AH3RunVtXEfU_TA_0, 0.0, (&v32 - 8), v26);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

double closure #1 in Text.Effect.Composition.lineBreakingMetrics(context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(a2, a3, a4, a5, a6);
  if (v8 > v12)
  {
    v12 = v8;
  }

  if (v9 > v13)
  {
    v13 = v9;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  *a7 = v12;
  a7[1] = v13;
  result = v11 + v15;
  a7[2] = v14;
  a7[3] = v11 + v15;
  return result;
}

uint64_t Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a5;
  v36 = a4;
  v34 = a3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v6, v19, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v34 - 2) = a1;
      return specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:), 0.0, 0.0, 0.0, 0.0, (&v34 - 4), v21, v22);
    }

    else
    {
      v30 = *v19;
      v29 = v19[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v19, v36);
      if (result)
      {
        v31 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v32 = *(a2 + 16);
        if (v32)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if (v33)
          {
            v32 = *(*(a2 + 56) + 8 * result);
          }

          else
          {
            v32 = 0;
          }
        }

        if (__OFADD__(v32, v29))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v31) + 0xE8))(v30, v32 + v29, v13, a2, v34, v36, v35);

          return (*(v11 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    v25 = outlined init with take of Text.Effect.Composition(v19 + *(v24 + 48), v16, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v25);
    *(&v34 - 6) = v16;
    *(&v34 - 5) = a2;
    v26 = v35;
    v27 = v36;
    *(&v34 - 4) = v34;
    *(&v34 - 3) = v27;
    *(&v34 - 2) = v26;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV19lineBreakingMetrics7contextAF0J0VAF11BaseContextV_tFA2L_AH3RunVtXEfU_TA_0, 0.0, 0.0, 0.0, 0.0, (&v34 - 8), v28);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

double closure #1 in Text.Effect.Composition.metrics(at:context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>, double a8@<D0>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  Text.Effect.Composition.Operation.metrics(at:line:context:)(a2, a3, a4, a5, a6, a8);
  if (v9 > v13)
  {
    v13 = v9;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v11 > v15)
  {
    v15 = v11;
  }

  *a7 = v13;
  a7[1] = v14;
  result = v12 + v16;
  a7[2] = v15;
  a7[3] = v12 + v16;
  return result;
}

uint64_t Text.Effect.Composition.Operation.metrics(at:line:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v37 = a5;
  v38 = a4;
  v36 = a3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v7, v21, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v36 - 2) = a1;
      return specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.Operation.metrics(at:line:context:), 0.0, 0.0, 0.0, 0.0, (&v36 - 4), v23, v24);
    }

    else
    {
      v32 = *v21;
      v31 = v21[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v21, v38);
      if (result)
      {
        v33 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v34 = *(a2 + 16);
        if (v34)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if (v35)
          {
            v34 = *(*(a2 + 56) + 8 * result);
          }

          else
          {
            v34 = 0;
          }
        }

        if (__OFADD__(v34, v31))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v33) + 0xF0))(v32, v34 + v31, v15, a2, v36, v38, v37, a6);

          return (*(v13 + 8))(v15, v12);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    v27 = outlined init with take of Text.Effect.Composition(v21 + *(v26 + 48), v18, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v27);
    *(&v36 - 6) = a6;
    *(&v36 - 5) = v18;
    *(&v36 - 4) = a2;
    v28 = v37;
    v29 = v38;
    *(&v36 - 3) = v36;
    *(&v36 - 2) = v29;
    *(&v36 - 1) = v28;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV7metrics2at7contextAF7MetricsVAD4TimeV_AF11BaseContextVtFA2M_AH3RunVtXEfU_TA_0, 0.0, 0.0, 0.0, 0.0, (&v36 - 8), v30);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

void Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v90 = a6;
  *&v92 = a5;
  v91 = a4;
  v89 = a3;
  v94 = a2;
  v96 = a1;
  v8 = type metadata accessor for Text.Layout.Cluster();
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v14 = type metadata accessor for Text.Effect.Composition.Run(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v88 - v25);
  outlined init with copy of Text.Effect.Composition.Operation(v93, &v88 - v25, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = Text.Layout.Line.clusters(for:)();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = type metadata accessor for Text.Effect.InteractionMetrics();
        v90 = *(v30 + 20);
        v92 = *(v96 + *(v30 + 28));
        v31 = *v96;
        v93 = *(v95 + 16);
        v32 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v89 = v28;
        v33 = v28 + v32;
        v91 = *(v95 + 72);
        v95 += 16;
        v34 = (v95 - 8);
        while (1)
        {
          v93(v13, v33, v8);
          Text.Layout.Cluster.typographicBounds(with:)(v94, v100);
          v35 = Text.Layout.Cluster.characterRange.getter();
          v37 = v36;
          (*v34)(v13, v8);
          v98 = v35;
          v99 = v37;
          if (__OFSUB__(v37, v35))
          {
            break;
          }

          if (v37 != v35)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v38 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            v38(v97, 0);
          }

          v39 = v103;
          v40 = v104;
          v41 = v101;
          v42 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          }

          v44 = *(v31 + 2);
          v43 = *(v31 + 3);
          if (v44 >= v43 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v31);
          }

          *(v31 + 2) = v44 + 1;
          v45 = &v31[96 * v44];
          *(v45 + 4) = v35;
          *(v45 + 5) = v37;
          *(v45 + 3) = v92;
          *(v45 + 8) = v42;
          *(v45 + 9) = v39;
          *(v45 + 10) = v40;
          *(v45 + 11) = v41;
          *(v45 + 12) = v42;
          *(v45 + 13) = v39;
          *(v45 + 14) = v40;
          *(v45 + 15) = v41;
          v33 += v91;
          if (!--v29)
          {

            *v96 = v31;
            return;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }
    }

    else
    {
      v58 = *v26;
      v59 = v26[1];
      v60 = v92;
      v61 = Text.Effect.Keyframes.validTransform(_:)(*v26, v92);
      if (v61)
      {
        v62 = v61;
        v63 = type metadata accessor for Text.Effect.InteractionMetrics();
        v64 = v96;
        if ((specialized Set.contains(_:)(v58, v59, *(v96 + *(v63 + 24))) & 1) == 0)
        {
          specialized Set._Variant.insert(_:)(v100, v58, v59);
          v65 = v89;
          v66 = *(v89 + 16);
          if (v66)
          {
            v67 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
            v68 = v90;
            if (v69)
            {
              v66 = *(*(v65 + 56) + 8 * v67);
            }

            else
            {
              v66 = 0;
            }
          }

          else
          {
            v68 = v90;
          }

          if (__OFADD__(v66, v59))
          {
            goto LABEL_42;
          }

          (*((*MEMORY[0x1E69E7D40] & *v62) + 0x100))(v58, v66 + v59, v64, v65, v91, v60, v68, a7);
        }

        return;
      }

      v70 = Text.Layout.Line.clusters(for:)();
      v71 = *(v70 + 16);
      if (v71)
      {
        v72 = type metadata accessor for Text.Effect.InteractionMetrics();
        v90 = *(v72 + 20);
        v92 = *(v96 + *(v72 + 28));
        v73 = *v96;
        v93 = *(v95 + 16);
        v74 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v89 = v70;
        v75 = v70 + v74;
        v91 = *(v95 + 72);
        v95 += 16;
        v76 = (v95 - 8);
        while (1)
        {
          v93(v10, v75, v8);
          Text.Layout.Cluster.typographicBounds(with:)(v94, v100);
          v77 = Text.Layout.Cluster.characterRange.getter();
          v79 = v78;
          (*v76)(v10, v8);
          v98 = v77;
          v99 = v79;
          if (__OFSUB__(v79, v77))
          {
            break;
          }

          if (v79 != v77)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v80 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            v80(v97, 0);
          }

          v81 = v103;
          v82 = v104;
          v83 = v101;
          v84 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
          }

          v86 = *(v73 + 2);
          v85 = *(v73 + 3);
          if (v86 >= v85 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v73);
          }

          *(v73 + 2) = v86 + 1;
          v87 = &v73[96 * v86];
          *(v87 + 4) = v77;
          *(v87 + 5) = v79;
          *(v87 + 3) = v92;
          *(v87 + 8) = v84;
          *(v87 + 9) = v81;
          *(v87 + 10) = v82;
          *(v87 + 11) = v83;
          *(v87 + 12) = v84;
          *(v87 + 13) = v81;
          *(v87 + 14) = v82;
          *(v87 + 15) = v83;
          v75 += v91;
          if (!--v71)
          {

            *v96 = v73;
            return;
          }
        }

        goto LABEL_41;
      }
    }

    return;
  }

  v46 = v15;
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
  outlined init with take of Text.Effect.Composition(v26 + *(v47 + 48), v20, type metadata accessor for Text.Effect.Composition);
  v48 = *&v20[*(v18 + 24)];
  v49 = *(v48 + 16);
  v50 = v90;
  v51 = v92;
  v52 = v20;
  v53 = v89;
  v54 = v91;
  if (v49)
  {
    v55 = v46;
    v56 = v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v57 = *(v55 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v56, v17, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v17, v23, type metadata accessor for Text.Effect.Composition.Operation);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v17, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v96, v52, v53, v54, v51, v50, a7);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v23, type metadata accessor for Text.Effect.Composition.Operation);
      v56 += v57;
      --v49;
    }

    while (v49);
  }

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v52, type metadata accessor for Text.Effect.Composition);
}

uint64_t Text.Effect.Composition.Operation.resolve(line:in:)(uint64_t a1, uint64_t a2)
{
  v173 = a1;
  *&v167 = type metadata accessor for Color.RGBColorSpace();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  *&v170 = v5;
  *&v169 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  *&v171 = &v165 - v6;
  *&v174 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v174);
  *&v168 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v165 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v165 - v11;
  v13 = type metadata accessor for Text.Effect.Composition.Run(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v165 - v18;
  v20 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v165 - v27);
  outlined init with copy of Text.Effect.Composition.Operation(v175, &v165 - v27, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *v28;
  v175 = v28[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *a2;
      v32 = *(*(*&v31 + 16) + 64);
      v33 = v175;
      if (*(v32 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v35 & 1) != 0) && (v36 = *(*(v32 + 56) + 8 * v34), v36 != 0.0))
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v107 = *(*&v31 + 24);
          v108 = *(*&v31 + 40);
          v109 = *(*&v31 + 56);
        }

        else
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v133 = swift_allocObject();
          *(v133 + 104) = 0u;
          *(v133 + 120) = 0u;
          *(v133 + 136) = 0u;
          __asm { FMOV            V0.2D, #1.0 }

          *(v133 + 152) = _Q0;
          *(v133 + 168) = 0x3FF0000000000000;
          *(v133 + 176) = 0;
          *(v133 + 16) = *(*&v31 + 16);
          v171 = *(*&v31 + 24);
          v170 = *(*&v31 + 40);
          v135 = v170;
          v169 = *(*&v31 + 56);
          v136 = v169;
          *(v133 + 24) = v171;
          *(v133 + 40) = v135;
          *(v133 + 56) = v136;
          *(v133 + 72) = *(*&v31 + 72);
          v137 = *(*&v31 + 184);
          v138 = *(*&v31 + 192);
          v139 = *(*&v31 + 200);
          v140 = *(*&v31 + 208);
          v141 = *(*&v31 + 216);
          *(v133 + 184) = v137;
          *(v133 + 192) = v138;
          *(v133 + 200) = v139;
          *(v133 + 208) = v140;
          *(v133 + 216) = v141;
          v142 = *(*&v31 + 96);
          *(v133 + 80) = *(*&v31 + 80);
          *(v133 + 96) = v142;

          v143 = v140;
          v33 = v175;
          outlined copy of Text.Effect.StopCollector?(v137, v138, v139, v143);

          v109 = v169;
          v108 = v170;
          v107 = v171;
          v31 = *&v133;
        }

        v37 = v173;
        v38 = v172;
        *&v178.a = v107;
        *&v178.c = v108;
        *&v178.tx = v109;
        CGAffineTransformTranslate(&v177, &v178, v36, 0.0);
        v144 = *&v177.c;
        v145 = *&v177.tx;
        *(*&v31 + 24) = *&v177.a;
        *(*&v31 + 40) = v144;
        *(*&v31 + 56) = v145;
      }

      else
      {

        v37 = v173;
        v38 = v172;
      }

      type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
      v40 = (v38 + *(v39 + 48));
      v41 = v38 + *(v39 + 64);
      v42 = type metadata accessor for Text.Layout.Line();
      (*(*(v42 - 8) + 16))(v38, v37, v42);
      *v40 = v30;
      v40[1] = v33;
      v43 = *(*&v31 + 96);
      v44 = 0uLL;
      if ((v43 & 1) == 0)
      {
        v44 = *(*&v31 + 80);
      }

      *v41 = v44;
      *(v41 + 16) = v43;
      swift_storeEnumTagMultiPayload();
      Text.Effect.DrawingContext.Storage.append(_:)(v38);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v38, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    }

    v66 = v28[2];
    v67 = v28[3];
    v68 = *a2;
    v69 = v30;
    v70 = Text.Effect.Keyframes.validTransform(_:)(v30, *(*(*a2 + 16) + 48));
    if (v70)
    {
      v71 = v70;
      v72 = *(a2 + 24);
      v73 = *(a2 + 32);
      v74 = *(a2 + 40);
      v178.a = v68;
      *&v178.b = *(a2 + 8);
      v178.d = v72;
      LOBYTE(v178.tx) = v73;
      v178.ty = v74;
      v75 = *(*(*&v68 + 16) + 72);
      v76 = v175;
      if (*(v75 + 16) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v175), (v78 & 1) != 0) && (v2 = *(*(v75 + 56) + 8 * v77), v2 != 0.0))
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v110 = *(*&v68 + 24);
          v111 = *(*&v68 + 40);
          v112 = *&v68;
          v113 = *(*&v68 + 56);
        }

        else
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v112 = swift_allocObject();
          *(v112 + 104) = 0u;
          *(v112 + 120) = 0u;
          *(v112 + 136) = 0u;
          __asm { FMOV            V0.2D, #1.0 }

          *(v112 + 152) = _Q0;
          *(v112 + 168) = 0x3FF0000000000000;
          *(v112 + 176) = 0;
          *(v112 + 16) = *(*&v68 + 16);
          v174 = *(*&v68 + 24);
          v168 = *(*&v68 + 40);
          v147 = v168;
          v167 = *(*&v68 + 56);
          v148 = v167;
          *(v112 + 24) = v174;
          *(v112 + 40) = v147;
          *(v112 + 56) = v148;
          *(v112 + 72) = *(*&v68 + 72);
          v172 = v67;
          v149 = *(*&v68 + 184);
          v150 = *(*&v68 + 192);
          v151 = *(*&v68 + 200);
          v152 = *(*&v68 + 208);
          v153 = *(*&v68 + 216);
          *(v112 + 184) = v149;
          *(v112 + 192) = v150;
          *(v112 + 200) = v151;
          *(v112 + 208) = v152;
          *(v112 + 216) = v153;
          v154 = *(*&v68 + 96);
          *(v112 + 80) = *(*&v68 + 80);
          *(v112 + 96) = v154;

          v155 = v150;
          v67 = v172;
          v156 = v151;
          v157 = v152;
          v69 = v30;
          v76 = v175;
          outlined copy of Text.Effect.StopCollector?(v149, v155, v156, v157);

          v113 = v167;
          v111 = v168;
          v110 = v174;
          *&v178.a = v112;
        }

        *&v177.a = v110;
        *&v177.c = v111;
        *&v177.tx = v113;
        CGAffineTransformTranslate(&v176, &v177, v2, 0.0);
        v158 = *&v176.c;
        v159 = *&v176.tx;
        *(v112 + 24) = *&v176.a;
        *(v112 + 40) = v158;
        *(v112 + 56) = v159;
      }

      else
      {
      }

      v79 = v171;
      LOBYTE(v80) = Text.Layout.Line.characterRanges(runIndices:)();
      v81 = *(*(*&v68 + 16) + 32);
      v82 = *(v81 + 16);
      if (v82)
      {
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v83)
        {
          v82 = *(*(v81 + 56) + 8 * v80);
        }

        else
        {
          v82 = 0;
        }
      }

      if (!__OFADD__(v82, v76))
      {
        (*((*MEMORY[0x1E69E7D40] & *v71) + 0xE0))(v69, v82 + v76, v79, &v178);

        (*(v169 + 8))(v79, v170);
      }

      __break(1u);
    }

    else
    {
      v88 = *(*(*&v68 + 16) + 64);
      v2 = 0.0;
      if (*(v88 + 16))
      {
        v89 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        v71 = v168;
        if (v90)
        {
          v2 = *(*(v88 + 56) + 8 * v89);
        }
      }

      else
      {
        v71 = v168;
      }

      LODWORD(v80) = _SwiftUIIsAppleInternalBuild();
      if (!v80)
      {
        v101 = 0;
        v102 = 0;
LABEL_41:
        v103 = v80 ^ 1;

        if (v2 != 0.0)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v104 = *(*&v68 + 24);
            v105 = *(*&v68 + 40);
            v106 = *(*&v68 + 56);
          }

          else
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            *&v114 = COERCE_DOUBLE(swift_allocObject());
            *(v114 + 104) = 0u;
            *(v114 + 120) = 0u;
            *(v114 + 136) = 0u;
            __asm { FMOV            V0.2D, #1.0 }

            *(v114 + 152) = _Q0;
            *(v114 + 168) = 0x3FF0000000000000;
            *(v114 + 176) = 0;
            *(v114 + 16) = *(*&v68 + 16);
            v171 = *(*&v68 + 24);
            v170 = *(*&v68 + 40);
            v116 = v170;
            v169 = *(*&v68 + 56);
            v117 = v169;
            *(v114 + 24) = v171;
            *(v114 + 40) = v116;
            *(v114 + 56) = v117;
            *(v114 + 72) = *(*&v68 + 72);
            v118 = *(*&v68 + 184);
            v119 = *(*&v68 + 192);
            v172 = v67;
            v175 = v101;
            v120 = *(*&v68 + 200);
            v121 = *(*&v68 + 208);
            v122 = *(*&v68 + 216);
            *(v114 + 184) = v118;
            *(v114 + 192) = v119;
            *(v114 + 200) = v120;
            *(v114 + 208) = v121;
            *(v114 + 216) = v122;
            v123 = *(*&v68 + 96);
            *(v114 + 80) = *(*&v68 + 80);
            *(v114 + 96) = v123;

            v124 = v119;
            v71 = v168;
            v125 = v120;
            v67 = v172;
            v126 = v121;
            v101 = v175;
            outlined copy of Text.Effect.StopCollector?(v118, v124, v125, v126);

            v106 = v169;
            v105 = v170;
            v104 = v171;
            v68 = *&v114;
          }

          *&v178.a = v104;
          *&v178.c = v105;
          *&v178.tx = v106;
          CGAffineTransformTranslate(&v177, &v178, v2, 0.0);
          v127 = *&v177.c;
          v128 = *&v177.tx;
          *(*&v68 + 24) = *&v177.a;
          *(*&v68 + 40) = v127;
          *(*&v68 + 56) = v128;
        }

        type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)();
        v130 = (v71 + *(v129 + 48));
        v131 = v71 + *(v129 + 64);
        v132 = type metadata accessor for Text.Layout.Line();
        (*(*(v132 - 8) + 16))(v71, v173, v132);
        *v130 = v66;
        v130[1] = v67;
        if ((*(*&v68 + 96) & 1) == 0)
        {
          v103 = 0;
          v101 = *(*&v68 + 80);
          v102 = *(*&v68 + 88);
        }

        *v131 = v101;
        *(v131 + 1) = v102;
        v131[16] = v103;
        swift_storeEnumTagMultiPayload();
        Text.Effect.DrawingContext.Storage.append(_:)(v71);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v71, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      }
    }

    v160 = v80;
    (*(v166 + 104))(v165, *MEMORY[0x1E69814D8], v167);
    Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
    LOBYTE(v80) = v160;
    v101 = v161 | (v162 << 32);
    v102 = v163 | (v164 << 32);
    goto LABEL_41;
  }

  v173 = v20;
  v172 = v14;
  *&v171 = v12;
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
  outlined init with take of Text.Effect.Composition(v28 + *(v45 + 48), v22, type metadata accessor for Text.Effect.Composition);
  v46 = *a2;
  v47 = Text.Effect.Keyframes.validFilter(_:)(v30, *(*(*a2 + 16) + 48));
  if (v47)
  {
    *&v170 = v30;

    *&v169 = v46;
    v48 = *(*&v46 + 16);
    v49 = v48[3];
    v51 = v48[4];
    v50 = v48[5];
    v53 = v48[6];
    v52 = v48[7];
    v55 = v48[8];
    v54 = v48[9];
    type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
    v56 = swift_allocObject();
    v56[3] = v49;
    v56[4] = v51;
    v56[5] = v50;
    v56[6] = v53;
    v56[7] = v52;
    v56[8] = v55;
    v56[9] = v54;
    v56[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Text.Effect.DrawingContext.Storage();
    v57 = swift_allocObject();
    *(v57 + 32) = 0;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0x3FF0000000000000;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0x3FF0000000000000;
    *(v57 + 80) = 0;
    *(v57 + 88) = 0;
    *(v57 + 96) = 1;
    *(v57 + 104) = 0u;
    *(v57 + 120) = 0u;
    *(v57 + 136) = 0u;
    __asm { FMOV            V1.2D, #1.0 }

    *(v57 + 152) = _Q1;
    *(v57 + 168) = 0x3FF0000000000000;
    *(v57 + 176) = 0;
    *(v57 + 184) = 0u;
    *(v57 + 200) = 0u;
    *(v57 + 216) = 0;
    *(v57 + 16) = v56;
    *(v57 + 24) = 0x3FF0000000000000;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v64 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
      v65 = Strong;
    }

    else
    {

      v64 = 1.0;
    }

    *&v178.a = v57;
    memset(&v178.b, 0, 24);
    LOBYTE(v178.tx) = 1;
    v178.ty = v64;
    v91 = *&v22[*(v173 + 24)];
    v92 = *(v91 + 16);
    v93 = v170;
    v94 = v175;
    v95 = v171;
    if (v92)
    {
      v96 = v91 + ((v172[80] + 32) & ~v172[80]);
      v97 = *(v172 + 9);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v96, v19, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v19, v25, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(v22, &v178);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v25, type metadata accessor for Text.Effect.Composition.Operation);
        v96 += v97;
        --v92;
      }

      while (v92);
      v56 = *(v57 + 16);
    }

    v98 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v99 = v56[2];
    v56[2] = v98;
    *v95 = v93;
    v95[1] = v94;
    v95[2] = v99;
    swift_storeEnumTagMultiPayload();
    Text.Effect.DrawingContext.Storage.append(_:)(v95);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v95, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  }

  else
  {
    v84 = *&v22[*(v173 + 24)];
    v85 = *(v84 + 16);
    if (v85)
    {
      v86 = v84 + ((v172[80] + 32) & ~v172[80]);
      v87 = *(v172 + 9);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v86, v16, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v16, v25, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(v22, a2);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v25, type metadata accessor for Text.Effect.Composition.Operation);
        v86 += v87;
        --v85;
      }

      while (v85);
    }
  }

  return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v22, type metadata accessor for Text.Effect.Composition);
}

double closure #1 in Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.typographicBounds.getter();
  (*(v5 + 8))(v7, v4);
  result = v18;
  if (v8 > v18)
  {
    result = v8;
  }

  v13 = v19;
  v14 = v20;
  if (v9 > v19)
  {
    v13 = v9;
  }

  if (v10 > v20)
  {
    v14 = v10;
  }

  v15 = v11 + v17;
  *a2 = result;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  return result;
}

unint64_t Text.Effect.Composition.Operation.appendDisplacement(to:)(double *a1)
{
  v2 = v1;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v76 - v5;
  v7 = type metadata accessor for Text.Effect.Composition.Run(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v76 - v18);
  outlined init with copy of Text.Effect.Composition.Operation(v2, &v76 - v18, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    outlined init with take of Text.Effect.Composition(v19 + *(v40 + 48), v13, type metadata accessor for Text.Effect.Composition);
    v41 = *&v13[*(v11 + 24)];
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v44 = *(v8 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v43, v10, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v10, v16, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendDisplacement(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition.Operation);
        v43 += v44;
        --v42;
      }

      while (v42);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v13, type metadata accessor for Text.Effect.Composition);
  }

  if (result != 1)
  {
    v45 = *v19;
    v78 = v19[1];
    v46 = v19[2];
    v47 = v19[3];
    v48 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
    v49 = (a1 + v48[6]);
    v50 = v49[2];
    result = Text.Effect.Keyframes.validTransform(_:)(v45, v50);
    if (result)
    {
      v51 = result;
      v77 = v50;
      v52 = v48[9];
      if (!*(*(a1 + v52) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v45, v78), (v53 & 1) == 0))
      {
        v54 = *(a1 + v48[7]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(a1 + v52);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v78, isUniquelyReferenced_nonNull_native, v54);
        *(a1 + v52) = v81;
      }

      Text.Layout.Line.characterRanges(runIndices:)();
      v56 = *v49;
      v57 = *(*v49 + 16);
      if (v57)
      {
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if (v59)
        {
          v57 = *(*(v56 + 56) + 8 * v58);
        }

        else
        {
          v57 = 0;
        }
      }

      if (__OFADD__(v57, v78))
      {
        goto LABEL_62;
      }

      v75 = (*((*MEMORY[0x1E69E7D40] & *v51) + 0xF8))(v45, v57 + v78, v6, v56, v49[1], v77, v49[3], *a1);

      result = (*(v79 + 8))(v6, v80);
      *(a1 + v48[7]) = v75 + *(a1 + v48[7]);
      return result;
    }

    if (v46 == v47)
    {
      return result;
    }

    if (v47 < v46)
    {
      goto LABEL_64;
    }

    v60 = v48[8];
    while (1)
    {
      if (v46 >= v47)
      {
        goto LABEL_58;
      }

      if (*(*(a1 + v60) + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        if (v61)
        {
          goto LABEL_38;
        }
      }

      v62 = *(a1 + v48[7]);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(a1 + v60);
      v64 = v81;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      v66 = v64[2];
      v67 = (v65 & 1) == 0;
      v32 = __OFADD__(v66, v67);
      v68 = v66 + v67;
      if (v32)
      {
        goto LABEL_60;
      }

      v69 = v65;
      if (v64[3] < v68)
      {
        break;
      }

      if (v63)
      {
        goto LABEL_47;
      }

      v74 = result;
      specialized _NativeDictionary.copy()();
      result = v74;
      v71 = v81;
      if ((v69 & 1) == 0)
      {
LABEL_48:
        v71[(result >> 6) + 8] |= 1 << result;
        *(v71[6] + 8 * result) = v46;
        *(v71[7] + 8 * result) = v62;
        v72 = v71[2];
        v32 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v32)
        {
          goto LABEL_61;
        }

        v71[2] = v73;
        goto LABEL_37;
      }

LABEL_36:
      *(v71[7] + 8 * result) = v62;
LABEL_37:
      *(a1 + v60) = v71;
LABEL_38:
      if (v47 == ++v46)
      {
        return result;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v63);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    if ((v69 & 1) != (v70 & 1))
    {
      goto LABEL_65;
    }

LABEL_47:
    v71 = v81;
    if ((v69 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  v21 = *v19;
  v22 = v19[1];
  if (*v19 == v22)
  {
    return result;
  }

  if (v22 < v21)
  {
    goto LABEL_63;
  }

  v23 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
  v24 = *(v23 + 32);
  while (v21 < v22)
  {
    if (*(*(a1 + v24) + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if (v25)
      {
        goto LABEL_8;
      }
    }

    v26 = *(a1 + *(v23 + 28));
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(a1 + v24);
    v28 = v81;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v30 = v28[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_57;
    }

    v34 = v29;
    if (v28[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_65;
      }

LABEL_17:
      v36 = v81;
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v27)
    {
      goto LABEL_17;
    }

    v39 = result;
    specialized _NativeDictionary.copy()();
    result = v39;
    v36 = v81;
    if ((v34 & 1) == 0)
    {
LABEL_18:
      v36[(result >> 6) + 8] |= 1 << result;
      *(v36[6] + 8 * result) = v21;
      *(v36[7] + 8 * result) = v26;
      v37 = v36[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_59;
      }

      v36[2] = v38;
      goto LABEL_7;
    }

LABEL_6:
    *(v36[7] + 8 * result) = v26;
LABEL_7:
    *(a1 + v24) = v36;
LABEL_8:
    if (v22 == ++v21)
    {
      return result;
    }
  }

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
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void Text.Effect.Composition.updateNonadjacentFragmentIdentifiers(map:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.Composition(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = *(v4 + 32);
  v87 = v1;
  v9 = *(v1 + v86);
  v10 = v9[2];
  if (v10)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_77:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v11 = 0;
    v85 = a1;
    v78 = v6;
    v81 = v10;
    v82 = v9;
    while (1)
    {
      if (v10 == v11)
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
        goto LABEL_77;
      }

      if (v11 >= v9[2])
      {
        goto LABEL_64;
      }

      v13 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
      v14 = (v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
      outlined init with copy of Text.Effect.Composition.Operation(v14, v8, type metadata accessor for Text.Effect.Composition.Operation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v23 = *v8;
        v80 = v8[1];
        type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
        v10 = v24;
        outlined init with take of Text.Effect.Composition(v8 + *(v24 + 48), v84, type metadata accessor for Text.Effect.Composition);
        v9 = Text.Effect.Composition.runIndices.getter();
        v83 = v25;
        v26 = *a1;
        v27 = *(*a1 + 16);
        v79 = v10;
        if (v27)
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if (v29)
          {
            v30 = *(v26 + 56) + 24 * v28;
            a1 = *(v30 + 16);
            if (*(v30 + 8) == v9)
            {
              v9 = *v30;
              if (v83 < *v30)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v46 = __OFADD__(a1++, 1);
              if (v46)
              {
                goto LABEL_75;
              }
            }

            v54 = v85;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = *v54;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v83, a1, v23, isUniquelyReferenced_nonNull_native);
            *v54 = v88;
            goto LABEL_60;
          }
        }

        v10 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *a1;
        v31 = v88;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_68;
        }

        a1 = v32;
        if (v31[3] >= v35)
        {
          if (v10)
          {
            v38 = v88;
            if ((v32 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v38 = v88;
            if ((a1 & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v10);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if ((a1 & 1) != (v37 & 1))
          {
            goto LABEL_78;
          }

          v6 = v36;
          v38 = v88;
          if ((a1 & 1) == 0)
          {
LABEL_57:
            v38[(v6 >> 6) + 8] |= 1 << v6;
            *(v38[6] + 8 * v6) = v23;
            v69 = (v38[7] + 24 * v6);
            v70 = v83;
            *v69 = v9;
            v69[1] = v70;
            v69[2] = 0;
            v71 = v38[2];
            v46 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v46)
            {
              goto LABEL_70;
            }

            v38[2] = v72;
            goto LABEL_59;
          }
        }

        v39 = (v38[7] + 24 * v6);
        v40 = v83;
        *v39 = v9;
        v39[1] = v40;
        v39[2] = 0;
LABEL_59:
        a1 = 0;
        *v85 = v38;
        v6 = v78;
LABEL_60:
        v9 = v82;
        v10 = v80 + a1;
        if (__OFADD__(v80, a1))
        {
          goto LABEL_65;
        }

        v73 = v84;
        a1 = v85;
        Text.Effect.Composition.updateNonadjacentFragmentIdentifiers(map:)(v85);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
        v74 = *(v79 + 48);
        *v14 = v23;
        v14[1] = v10;
        outlined init with take of Text.Effect.Composition(v73, v14 + v74, type metadata accessor for Text.Effect.Composition);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v16 = *v8;
      v6 = v8[1];
      v9 = v8[2];
      v83 = v8[3];
      v17 = *a1;
      v18 = *(*a1 + 16);
      v80 = v6;
      if (!v18)
      {
        break;
      }

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v17 + 56) + 24 * v19);
      v22 = v9;
      v9 = v21[2];
      v6 = v22;
      if (v21[1] == v22)
      {
        if (v83 < *v21)
        {
          goto LABEL_72;
        }

        v79 = *v21;
      }

      else
      {
        v46 = __OFADD__(v9, 1);
        v9 = (v9 + 1);
        if (v46)
        {
          goto LABEL_73;
        }

        v79 = v22;
      }

      v56 = swift_isUniquelyReferenced_nonNull_native();
      v57 = a1;
      a1 = v56;
      v88 = *v57;
      v58 = v88;
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v61 = v58[2];
      v62 = (v60 & 1) == 0;
      v46 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v46)
      {
        goto LABEL_71;
      }

      v10 = v60;
      if (v58[3] >= v63)
      {
        v49 = v83;
        if ((a1 & 1) == 0)
        {
          v76 = v59;
          specialized _NativeDictionary.copy()();
          v49 = v83;
          v59 = v76;
        }

        a1 = v85;
        v50 = v88;
        if ((v10 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, a1);
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if ((v10 & 1) != (v64 & 1))
        {
LABEL_78:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        a1 = v85;
        v49 = v83;
        v50 = v88;
        if ((v10 & 1) == 0)
        {
LABEL_50:
          v50[(v59 >> 6) + 8] |= 1 << v59;
          *(v50[6] + 8 * v59) = v16;
          v65 = (v50[7] + 24 * v59);
          *v65 = v79;
          v65[1] = v49;
          v65[2] = v9;
          v66 = v50[2];
          v46 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v46)
          {
            goto LABEL_76;
          }

          v50[2] = v67;
          goto LABEL_6;
        }
      }

      v68 = (v50[7] + 24 * v59);
      *v68 = v79;
      v68[1] = v49;
      v68[2] = v9;
LABEL_6:
      *a1 = v50;
      v10 = v9 + v80;
      if (__OFADD__(v80, v9))
      {
        goto LABEL_66;
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
      *v14 = v16;
      v14[1] = v10;
      v14[2] = v6;
      v14[3] = v49;
      v6 = v78;
      v9 = v82;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      v10 = v81;
LABEL_9:
      ++v11;
      *(v87 + v86) = v9;
      if (v10 == v11)
      {
        return;
      }
    }

    v10 = a1;
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v10;
    v41 = v88;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    v44 = v41[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_67;
    }

    v10 = v43;
    if (v41[3] >= v47)
    {
      v49 = v83;
      if ((a1 & 1) == 0)
      {
        v75 = v42;
        specialized _NativeDictionary.copy()();
        v49 = v83;
        v42 = v75;
      }

      a1 = v85;
      v50 = v88;
      if ((v10 & 1) == 0)
      {
LABEL_40:
        v50[(v42 >> 6) + 8] |= 1 << v42;
        *(v50[6] + 8 * v42) = v16;
        v51 = (v50[7] + 24 * v42);
        *v51 = v9;
        v51[1] = v49;
        v51[2] = 0;
        v52 = v50[2];
        v46 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v46)
        {
          goto LABEL_69;
        }

        v6 = v9;
        v50[2] = v53;
        goto LABEL_5;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, a1);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v10 & 1) != (v48 & 1))
      {
        goto LABEL_78;
      }

      a1 = v85;
      v49 = v83;
      v50 = v88;
      if ((v10 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v12 = (v50[7] + 24 * v42);
    v6 = v9;
    *v12 = v9;
    v12[1] = v49;
    v12[2] = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }
}

uint64_t FragmentIdentifierOffsetMap.countMap.getter(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v9 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = *(*(a1 + 56) + 24 * v10 + 16);
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v13 = *(*(a1 + 48) + 8 * v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v17 = v8[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_24;
    }

    v21 = v16;
    if (v8[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v15;
        specialized _NativeDictionary.copy()();
        v15 = v25;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }
    }

    v5 &= v5 - 1;
    if (v21)
    {
      *(v8[7] + 8 * v15) = v12;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[(v15 >> 6) + 8] |= 1 << v15;
      *(v8[6] + 8 * v15) = v13;
      *(v8[7] + 8 * v15) = v12;
      v23 = v8[2];
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v8[2] = v24;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v7;
  }

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

uint64_t Text.Effect.Composition.runIndices.getter()
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v2 = v1;
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Text.Effect.Composition.Run(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  RangeSet.init()();
  v14 = *(v0 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v16, v8, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Run.appendRunIndices(to:)(v13);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v8, type metadata accessor for Text.Effect.Composition.Run);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  RangeSet.ranges.getter();
  v18 = RangeSet.Ranges.count.getter();
  if (v18 == 1)
  {
    RangeSet.Ranges.subscript.getter();
    (*(v11 + 8))(v13, v10);
    v19 = v28;
LABEL_12:
    (*(v27 + 8))(v4, v2);
    return v19;
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v26 - 2) = v4;
  specialized static Log.internalError(_:)(partial apply for implicit closure #1 in Text.Effect.Composition.runIndices.getter);
  v20 = specialized RangeSet.lowerBound.getter();
  if (v21)
  {
    v19 = 0;
  }

  else
  {
    v19 = v20;
  }

  v22 = specialized RangeSet.upperBound.getter();
  v24 = v23;
  result = (*(v11 + 8))(v13, v10);
  if (v24)
  {
    v22 = 0;
  }

  if (v22 >= v19)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t implicit closure #1 in Text.Effect.Composition.runIndices.getter()
{
  _StringGuts.grow(_:)(23);

  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v0);

  return 0xD000000000000015;
}

uint64_t Text.Effect.Composition.Run.appendRunIndices(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Effect.Composition.Run(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Text.Effect.Composition.Operation(v2, v13, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v15 = *v13;
      v16 = v13[1];
    }

    else
    {
      v15 = v13[2];
      v16 = v13[3];
    }

    v24 = v15;
    v25 = v16;
    if (v15 != v16)
    {
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
      v22 = RangeSet._ranges.modify();
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
      RangeSet.Ranges._insert(contentsOf:)();
      return v22(v23, 0);
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    outlined init with take of Text.Effect.Composition(v13 + *(v17 + 48), v10, type metadata accessor for Text.Effect.Composition);
    v18 = *&v10[*(v8 + 24)];
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v21 = *(v5 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v20, v7, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Run.appendRunIndices(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v7, type metadata accessor for Text.Effect.Composition.Run);
        v20 += v21;
        --v19;
      }

      while (v19);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

size_t Text.Effect.Composition.Operation.append(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a1;
  v111 = a2;
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for [Text.Effect.Composition.Run](0, &lazy cache variable for type metadata for Text.Effect.Composition.Operation?, type metadata accessor for Text.Effect.Composition.Operation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v93 - v6;
  type metadata accessor for [Text.Effect.Composition.Run](0, &lazy cache variable for type metadata for Text.Effect.Composition.Run?, type metadata accessor for Text.Effect.Composition.Run, v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v93 - v8;
  v106 = type metadata accessor for Text.Effect.Composition.Run(0);
  v101 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v93 - v15;
  v100 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v100);
  v110 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - v20;
  v22 = type metadata accessor for Text.Effect.Composition.Operation(0);
  v112 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v93 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v93 - v32);
  type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &v36[*(v37 + 56)];
  v103 = v3;
  outlined init with copy of Text.Effect.Composition.Operation(v3, v36, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v115, v38, type metadata accessor for Text.Effect.Composition.Operation);
  v113 = v36;
  v39 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v113;
      outlined init with copy of Text.Effect.Composition.Operation(v113, v27, type metadata accessor for Text.Effect.Composition.Operation);
      v42 = *v27;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v27[1] == *v38)
        {
          v43 = *(v38 + 1);
          v44 = v103;
          result = outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v103, type metadata accessor for Text.Effect.Composition.Operation);
          if (v43 < v42)
          {
            goto LABEL_48;
          }

          *v44 = v42;
          v44[1] = v43;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          (*(v112 + 56))(v111, 1, 1, v39);
LABEL_19:
          v60 = type metadata accessor for Text.Effect.Composition.Operation;
          return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v41, v60);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v41 = v113;
      outlined init with copy of Text.Effect.Composition.Operation(v113, v24, type metadata accessor for Text.Effect.Composition.Operation);
      v52 = *v24;
      v53 = v24[1];
      v54 = v24[2];
      v55 = v24[3];
      result = swift_getEnumCaseMultiPayload();
      if (result == 2)
      {
        if (v52 == *v38)
        {
          v56 = *(v38 + 1);
          if (__OFSUB__(v56, v53))
          {
            goto LABEL_49;
          }

          if (v56 == v53 && v55 == *(v38 + 2))
          {
            v57 = *(v38 + 3);
            v58 = v103;
            result = outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v103, type metadata accessor for Text.Effect.Composition.Operation);
            if (v57 < v54)
            {
              goto LABEL_51;
            }

            *v58 = v52;
            v58[1] = v53;
            v58[2] = v54;
            v58[3] = v57;
            goto LABEL_16;
          }
        }

LABEL_18:
        v61 = v111;
        outlined init with copy of Text.Effect.Composition.Operation(v115, v111, type metadata accessor for Text.Effect.Composition.Operation);
        (*(v112 + 56))(v61, 0, 1, v22);
        goto LABEL_19;
      }
    }

LABEL_17:
    v59 = v111;
    outlined init with copy of Text.Effect.Composition.Operation(v115, v111, type metadata accessor for Text.Effect.Composition.Operation);
    (*(v112 + 56))(v59, 0, 1, v22);
    v60 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v41, v60);
  }

  v97 = v30;
  v98 = v21;
  v46 = v105;
  v41 = v113;
  outlined init with copy of Text.Effect.Composition.Operation(v113, v33, type metadata accessor for Text.Effect.Composition.Operation);
  v47 = *v33;
  v48 = v33[1];
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
  v50 = v49;
  v51 = *(v49 + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v33 + v51, type metadata accessor for Text.Effect.Composition);
    goto LABEL_17;
  }

  v93 = v50;
  v94 = v48;
  v63 = *v38;
  v62 = *(v38 + 1);
  v95 = v47;
  v96 = v62;
  outlined init with take of Text.Effect.Composition(v33 + v51, v98, type metadata accessor for Text.Effect.Composition);
  v64 = v102;
  result = outlined init with take of Text.Effect.Composition(&v38[v51], v102, type metadata accessor for Text.Effect.Composition);
  v65 = v104;
  v66 = v46;
  v99 = v22;
  v67 = v110;
  v68 = v114;
  v69 = v100;
  v70 = v101;
  if (v95 != v63)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v96, v94))
  {
    goto LABEL_50;
  }

  if (v96 != v94)
  {
LABEL_43:
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v98, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v64, type metadata accessor for Text.Effect.Composition);
    v88 = v111;
    outlined init with copy of Text.Effect.Composition.Operation(v115, v111, type metadata accessor for Text.Effect.Composition.Operation);
    (*(v112 + 56))(v88, 0, 1, v99);
LABEL_45:
    v60 = type metadata accessor for Text.Effect.Composition.Operation;
    v41 = v113;
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v41, v60);
  }

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v103, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v98, v67, type metadata accessor for Text.Effect.Composition);
  v71 = v69[6];
  v72 = *(v64 + v71);
  v73 = *(v72 + 16);
  if (!v73)
  {
LABEL_44:
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v98, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v102, type metadata accessor for Text.Effect.Composition);
    v89 = *(v93 + 48);
    v90 = v103;
    v91 = v94;
    *v103 = v95;
    v90[1] = v91;
    outlined init with take of Text.Effect.Composition(v67, v90 + v89, type metadata accessor for Text.Effect.Composition);
    v92 = v99;
    swift_storeEnumTagMultiPayload();
    (*(v112 + 56))(v111, 1, 1, v92);
    goto LABEL_45;
  }

  v115 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v74 = v72 + v115;
  v75 = v70[9];
  v96 = (v70 + 7);
  v100 = (v112 + 48);
  v101 = v70 + 6;
  while (1)
  {
    outlined init with copy of Text.Effect.Composition.Operation(v74, v68, type metadata accessor for Text.Effect.Composition.Run);
    v76 = *(v67 + v71);
    v77 = v68;
    v78 = v76[2];
    if (!v78)
    {
      outlined init with copy of Text.Effect.Composition.Operation(v77, v108, type metadata accessor for Text.Effect.Composition.Run);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v76);
      }

      v81 = v76[2];
      v80 = v76[3];
      if (v81 >= v80 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 > 1, v81 + 1, 1, v76);
      }

      v68 = v114;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v114, type metadata accessor for Text.Effect.Composition.Run);
      v76[2] = v81 + 1;
      outlined init with take of Text.Effect.Composition(v108, v76 + v115 + v81 * v75, type metadata accessor for Text.Effect.Composition.Run);
      v67 = v110;
      *&v110[v71] = v76;
      goto LABEL_26;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v76);
      v76 = result;
    }

    if (v78 > v76[2])
    {
      break;
    }

    Text.Effect.Composition.Operation.append(_:)(v114);
    if ((*v100)(v65, 1, v99) == 1)
    {
      outlined destroy of Text.Effect.Composition.Operation?(v65, &lazy cache variable for type metadata for Text.Effect.Composition.Operation?, type metadata accessor for Text.Effect.Composition.Operation);
      v79 = 1;
    }

    else
    {
      v82 = v97;
      outlined init with take of Text.Effect.Composition(v65, v97, type metadata accessor for Text.Effect.Composition.Operation);
      outlined init with take of Text.Effect.Composition(v82, v66, type metadata accessor for Text.Effect.Composition.Operation);
      v79 = 0;
    }

    v83 = v109;
    v67 = v110;
    v84 = v106;
    (*v96)(v66, v79, 1, v106);
    *(v67 + v71) = v76;
    if ((*v101)(v66, 1, v84) == 1)
    {
      v68 = v114;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v114, type metadata accessor for Text.Effect.Composition.Run);
      outlined destroy of Text.Effect.Composition.Operation?(v66, &lazy cache variable for type metadata for Text.Effect.Composition.Run?, type metadata accessor for Text.Effect.Composition.Run);
    }

    else
    {
      v85 = v107;
      outlined init with take of Text.Effect.Composition(v66, v107, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v85, v83, type metadata accessor for Text.Effect.Composition.Run);
      v87 = v76[2];
      v86 = v76[3];
      if (v87 >= v86 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v76);
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v107, type metadata accessor for Text.Effect.Composition.Run);
      v68 = v114;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v114, type metadata accessor for Text.Effect.Composition.Run);
      v76[2] = v87 + 1;
      outlined init with take of Text.Effect.Composition(v109, v76 + v115 + v87 * v75, type metadata accessor for Text.Effect.Composition.Run);
      v67 = v110;
      *&v110[v71] = v76;
      v65 = v104;
    }

LABEL_26:
    v74 += v75;
    if (!--v73)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Run(0);
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Layout.Run();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  outlined init with copy of Text.Effect.Composition.Operation(v39, &v36 - v17, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v20 = 8;
    v21 = (v18 + 16);
    if (result == 1)
    {
      v21 = v18;
    }

    else
    {
      v20 = 24;
    }

    v22 = *&v18[v20];
    v23 = *v21;
    if (*v21 != v22)
    {
      if (v22 >= v23)
      {
        if (v23 >= v22)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v24 = (v37 + 8);
        while (1)
        {
          Text.Layout.Line.subscript.getter();
          v25 = Text.Layout.Run.characterRange.getter();
          v27 = v26;
          result = (*v24)(v12, v10);
          v41 = v25;
          v42 = v27;
          if (__OFSUB__(v27, v25))
          {
            break;
          }

          if (v27 != v25)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v28 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            result = v28(v40, 0);
          }

          if (v22 == ++v23)
          {
            return result;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v29 = v38;
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    outlined init with take of Text.Effect.Composition(&v18[*(v30 + 48)], v9, type metadata accessor for Text.Effect.Composition);
    v31 = *&v9[*(v7 + 24)];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v29;
      v34 = v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v35 = *(v33 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v34, v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v6, v15, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(a1, a2);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Operation);
        v34 += v35;
        --v32;
      }

      while (v32);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v9, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

uint64_t specialized static Text.Effect.Composition.Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v44 - v15);
  type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v19[*(v20 + 56)];
  outlined init with copy of Text.Effect.Composition.Operation(v44, v19, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v45, v21, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v45 = v2;
    v26 = v7;
    outlined init with copy of Text.Effect.Composition.Operation(v19, v16, type metadata accessor for Text.Effect.Composition.Operation);
    v27 = v16[1];
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)();
    v29 = *(v28 + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16 + v29, type metadata accessor for Text.Effect.Composition);
      v30 = 0;
      v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
LABEL_33:
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, v24);
      return v30 & 1;
    }

    v37 = *v16;
    v38 = *v21;
    v44 = *(v21 + 1);
    outlined init with take of Text.Effect.Composition(v16 + v29, v26, type metadata accessor for Text.Effect.Composition);
    result = outlined init with take of Text.Effect.Composition(&v21[v29], v4, type metadata accessor for Text.Effect.Composition);
    if (v37 != v38)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v44, v27))
    {
      goto LABEL_36;
    }

    if (v44 == v27 && (MEMORY[0x19A8BCFA0](v26, v4) & 1) != 0 && ((v39 = *(v45 + 20), v40 = *(v26 + v39), v41 = *(v26 + v39 + 8), v42 = &v4[v39], v40 == *v42) ? (v43 = v41 == v42[1]) : (v43 = 0), v43))
    {
      v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(*(v26 + *(v45 + 24)), *&v4[*(v45 + 24)]);
    }

    else
    {
LABEL_30:
      v30 = 0;
    }

    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v4, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v26, type metadata accessor for Text.Effect.Composition);
LABEL_32:
    v24 = type metadata accessor for Text.Effect.Composition.Operation;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Text.Effect.Composition.Operation(v19, v13, type metadata accessor for Text.Effect.Composition.Operation);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
    if (v23 == 1)
    {
      v25 = *v13 == *v21 && v13[1] == *(v21 + 1);
LABEL_18:
      v30 = v25;
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  outlined init with copy of Text.Effect.Composition.Operation(v19, v10, type metadata accessor for Text.Effect.Composition.Operation);
  v32 = v10[1];
  v31 = v10[2];
  v33 = v10[3];
  result = swift_getEnumCaseMultiPayload();
  v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
  if (result != 2 || (v24 = type metadata accessor for Text.Effect.Composition.Operation, *v10 != *v21))
  {
LABEL_21:
    v30 = 0;
    goto LABEL_33;
  }

  v35 = *(v21 + 1);
  if (!__OFSUB__(v35, v32))
  {
    v25 = v35 == v32 && v31 == *(v21 + 2) && v33 == *(v21 + 3);
    goto LABEL_18;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)()
{
  if (!lazy cache variable for type metadata for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation))
  {
    type metadata accessor for Text.Effect.Composition.Operation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation));
    }
  }
}

double specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(a4, a1, a2, a3, v12);
  v10 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v10;
  result = *&v13;
  *(a5 + 32) = v13;
  *(a5 + 48) = v14;
  return result;
}

uint64_t outlined init with take of Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV7metrics2at7contextAF7MetricsVAD4TimeV_AF11BaseContextVtFA2M_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = Text.Effect.Composition.Operation.metrics(at:line:context:)(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16));
  if (v4 > v8)
  {
    v8 = v4;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v6 > v10)
  {
    v10 = v6;
  }

  *a2 = v8;
  a2[1] = v9;
  result = v7 + v11;
  a2[2] = v10;
  a2[3] = v7 + v11;
  return result;
}

uint64_t _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV15widthDifference2at7context12CoreGraphics7CGFloatVAD4TimeV_AF11BaseContextVtFA2N_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  result = v4 + Text.Effect.Composition.Operation.widthDifference(at:line:context:)(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16));
  *a2 = result;
  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV19lineBreakingMetrics7contextAF0J0VAF11BaseContextV_tFA2L_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(v2[2], v2[3], v2[4], v2[5], v2[6]);
  if (v4 > v8)
  {
    v8 = v4;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v6 > v10)
  {
    v10 = v6;
  }

  *a2 = v8;
  a2[1] = v9;
  result = v7 + v11;
  a2[2] = v10;
  a2[3] = v7 + v11;
  return result;
}

void type metadata completion function for Text.Effect.Composition.DisplacementCollector()
{
  type metadata accessor for Text.Layout.Line();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Int : CGFloat]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.DrawingContent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.DrawingContent(uint64_t result, int a2, int a3)
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

uint64_t outlined init with copy of TextModel.Cluster?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Color.Resolved?(0, &lazy cache variable for type metadata for TextModel.Cluster?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Color.Resolved?(uint64_t a1, unint64_t *a2)
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

uint64_t outlined destroy of TextModel.Cluster?(uint64_t a1)
{
  type metadata accessor for Color.Resolved?(0, &lazy cache variable for type metadata for TextModel.Cluster?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field)
  {
    type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState()
{
  result = lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState);
  }

  return result;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(a1, v4, type metadata accessor for Text.Effect.BaseContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(v4, v8, type metadata accessor for Text.Effect.BaseContent);
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  swift_beginAccess();
  if (*(*(v9 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    if (v12)
    {
      v43 = *(v6 + 36);
      swift_endAccess();
      outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v4, type metadata accessor for Text.Effect.BaseContent);
      v13 = 0;
      v14 = *v8;
      v15 = v8[1];
      v16 = v8[2];
      while (1)
      {
        v17 = v13;
        swift_beginAccess();
        v18 = *(v14 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        v22 = *(v21 + 16);
        if (v22 == v13)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v23 = *(v14 + 48);
        v24 = *(v23 + 16);

        if (!v24)
        {
          goto LABEL_30;
        }

        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        v27 = *(*(v23 + 56) + 16 * v25);
        swift_endAccess();
        v28 = *(v27 + 16);
        if (v13 >= v28)
        {
          goto LABEL_24;
        }

        v29 = *(v27 + 32 + 8 * v13);
        if (v17)
        {
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v32 = *(*(*(v27 + 32 + 8 * v30) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v33 = __OFADD__(v31, v32);
            v31 += v32;
            if (v33)
            {
              break;
            }

            if (v17 == ++v30)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }

        v31 = 0;
LABEL_16:
        v44[0] = v14;
        v44[1] = v15;
        v44[2] = v16;
        v44[3] = v29;
        v44[4] = v17;
        v44[5] = v28;
        v44[6] = v31;
        swift_beginAccess();
        v34 = *(*(v14 + 48) + 16);

        if (!v34)
        {
          goto LABEL_27;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v35 & 1) == 0)
        {
          goto LABEL_27;
        }

        swift_endAccess();
        swift_beginAccess();
        v36 = *(v14 + 48);
        if (!*(v36 + 16))
        {
          goto LABEL_28;
        }

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v38 & 1) == 0)
        {
          goto LABEL_28;
        }

        v39 = *(*(v36 + 56) + 16 * v37);
        swift_endAccess();
        if (v17 >= *(v39 + 16))
        {
          goto LABEL_25;
        }

        v13 = v17 + 1;
        v40 = Text.Effect.BaseFragment.onlyEmojis.getter();
        outlined destroy of Text.Effect.BaseFragment(v44);
        if ((v40 & 1) == 0)
        {
LABEL_22:
          *(v8 + v43) = v13;
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v8, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
          return v22 == v17;
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

uint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v6 & 1) == 0))
  {
LABEL_7:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_8;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (result)
  {
    v8 = *(result + 16);

    if (v8 > a1)
    {
      return a1 + 1;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void one-time initialization function for useLarge()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.swiftUI)
  {
    v0 = static NSUserDefaults.swiftUI;
    v1 = MEMORY[0x19A8BD5F0](0xD000000000000023, 0x8000000195CE0DF0);
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  static BigTextEffect.useLarge = v2;
}

uint64_t one-time initialization function for scaleTimeline()
{
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for KeyframeTimeline<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E697E9C8]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static BigTextEffect.scaleTimeline);
  __swift_project_value_buffer(v1, static BigTextEffect.scaleTimeline);
  type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVAHSlADWlTm_0(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t closure #1 in variable initialization expression of static BigTextEffect.scaleTimeline@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v59 = v1;
  v60 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v55 = v3;
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v73 = v5;
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v71 = v7;
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v68 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnitCurve();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = MEMORY[0x1E69E63B0];
  type metadata accessor for LinearKeyframe<Double>(0, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v51 - v31;
  v75 = 0x3FF0000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v32 = lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
  MEMORY[0x19A8BCC30](v29, v12, v14, v32);
  v33 = *(v15 + 8);
  v63 = v29;
  v33(v29, v14);
  v75 = 0x3FEE666666666666;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v26, v12, v14, v32);
  v66 = v26;
  v33(v26, v14);
  v75 = 0x3FF8000000000000;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v23, v12, v14, v32);
  v65 = v23;
  v33(v23, v14);
  v75 = 0x3FF999999999999ALL;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v34 = v74;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v34, v12, v14, v32);
  v33(v34, v14);
  v75 = 0x3FEE666666666666;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v35 = v62;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v35, v12, v14, v32);
  v33(v35, v14);
  v51 = v15 + 8;
  v75 = 0x3FF0000000000000;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v36 = v64;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v36, v12, v14, v32);
  v33(v36, v14);
  v37 = v12;
  MEMORY[0x19A8BCC60](v70, v12, v14, v32);
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v75 = v12;
  v76 = v14;
  v77 = v14;
  v78 = v32;
  v79 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v68;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v75 = v12;
  v76 = v39;
  v77 = v14;
  v78 = OpaqueTypeConformance2;
  v79 = v32;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v71;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v75 = v12;
  v76 = v41;
  v77 = v14;
  v78 = v40;
  v79 = v32;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v52;
  v44 = v73;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v75 = v12;
  v76 = v44;
  v77 = v14;
  v78 = v42;
  v79 = v32;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v56;
  v47 = v62;
  v48 = v55;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v75 = v37;
  v76 = v48;
  v77 = v14;
  v78 = v45;
  v79 = v32;
  swift_getOpaqueTypeConformance2();
  v49 = v59;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v60 + 8))(v46, v49);
  (*(v58 + 8))(v43, v48);
  (*(v57 + 8))(v72, v73);
  (*(v54 + 8))(v69, v71);
  (*(v53 + 8))(v67, v68);
  v33(v64, v14);
  v33(v47, v14);
  v33(v74, v14);
  v33(v65, v14);
  v33(v66, v14);
  v33(v63, v14);
  return (v33)(v70, v14);
}

id closure #1 in BigTextEffect.configuration(_:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for LinearKeyframe<Double>(0, &lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>, &type metadata for TextScaleAttributeModifier, &protocol witness table for TextScaleAttributeModifier, type metadata accessor for AnyDynamicAttributeModifier);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = Text.Effect.Content.modifier(_:)(v8, a1, a2, a3);

  return v9;
}

uint64_t closure #3 in BigTextEffect.configuration(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v81 = &v71 - v7;
  v96 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v79 = *(a1 + 5);
  v80 = v10;
  v100[0] = MEMORY[0x1E69E7CC8];
  closure #1 in closure #3 in BigTextEffect.configuration(_:)(v100, a2);
  v11 = *(a2 + 16);
  v86 = *a2;
  v87 = v11;
  v88 = *(a2 + 32);
  v89 = *(a2 + 48);
  v82 = v86;
  v83 = v11;
  v84 = v88;
  v85 = v89;
  v12 = v100[0];
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(a2, &v90, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BigTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);
  v13 = specialized static Text.Effect.stopMarkers(_:)(&v86);
  v15 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a3, v13, v14, 10, v12, 0.0);
  v17 = v16;

  v18 = *(v12 + 16);
  if (v18)
  {
    *&v77 = v17;
    *&v78 = v15;
    v71 = v9;
    v72 = v8;
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v18, 0);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v90, v19 + 4, v18, v12);

    outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
    if (v20 != v18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = v71;
    v8 = v72;
    v15 = v78;
    v17 = v77;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  *&v90 = v19;
  v19 = 0;
  specialized MutableCollection<>.sort(by:)(&v90);
  v21 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v90);

  v90 = v82;
  v91 = v83;
  v92 = v84;
  v93 = v85;
  *&v94 = v15;
  *(&v94 + 1) = v17;
  v95 = v21;
  if ((*(&v88 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v22 = 0.2;
  if (*(&v88 + 1) == 1 && Text.Effect.BaseFragment.coversAllParagraphs.getter())
  {
    v71 = v9;
    v72 = v8;
    v23 = *(&v86 + 1);
    v24 = *(*(&v87 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v77 = *(*(&v87 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v78 = v24;
    type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<BigTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
    v25 = swift_allocObject();
    *(v25 + 16) = 1;
    v26 = v86;
    v27 = v88;

    v28 = Text.Effect.Keyframes.subscript.getter(v23, v25, v26);
    if (!v28)
    {
      goto LABEL_41;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v27 >= *(v28 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v29 = (v28 + 32);
    v30 = *(v28 + 32 + 8 * v27);
    if (v27)
    {
      v31 = 0;
      v32 = v27;
      while (1)
      {
        v33 = *(*(*v29 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v34 = __OFADD__(v31, v33);
        v31 += v33;
        if (v34)
        {
          break;
        }

        ++v29;
        if (!--v32)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:

    v35 = *(v30 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v75 = *(v30 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v76 = v35;

    v36 = swift_allocObject();
    *(v36 + 16) = 2;

    v37 = Text.Effect.Keyframes.subscript.getter(v23, v36, v26);
    if (!v37)
    {
LABEL_41:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (v27 >= *(v37 + 16))
    {
LABEL_40:
      __break(1u);

      __break(1u);
      goto LABEL_41;
    }

    v38 = *(v37 + 32 + 8 * v27);
    if (v27)
    {
      v39 = 0;
      v40 = 0;
      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v42 = *(*(*(v37 + 32 + 8 * v39) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v34 = __OFADD__(v40, v42);
        v40 += v42;
        if (v34)
        {
          goto LABEL_33;
        }

        if (__OFSUB__(v27, v41))
        {
          goto LABEL_34;
        }

        ++v39;
        if (v27 == v41)
        {
          goto LABEL_23;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_23:

    v43 = *(v38 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v73 = *(v38 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v74 = v43;

    v22 = 0.5;
    v44 = 1;
    v9 = v71;
    v8 = v72;
  }

  else
  {
    v44 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
  }

  v46 = *(&v86 + 1);
  v45 = v86;
  v47 = v87;

  v48 = v81;
  Text.Effect.BaseContent.init(keyframes:key:)(v45, v46, v47, v81);
  v49 = specialized Sequence.reduce<A>(_:_:)(0, v48);
  outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(v48);

  Text.Effect.BaseContent.init(keyframes:key:)(v45, v46, v47, v48);
  v50 = specialized Sequence.allSatisfy(_:)(v48);
  outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(v48);
  if (__OFSUB__(v49, 10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v51 = exp((v49 - 10) * -0.25);
  if (v51 > 1.0)
  {
    v51 = 1.0;
  }

  v52 = 0.0;
  if ((v50 & 1) == 0)
  {
    v52 = v22;
  }

  v97 = v8;
  v98 = v9;
  v53 = v52 * v51 + 1.4;
  v55 = v79;
  v54 = v80;
  v99 = v80;
  v100[0] = v79;
  v56 = swift_allocObject();
  *(v56 + 16) = v96;
  *(v56 + 32) = v8;
  *(v56 + 40) = v9;
  *(v56 + 48) = v54;
  *(v56 + 56) = v55;
  *(v56 + 64) = v53;
  *(v56 + 72) = v44;
  v57 = v77;
  *(v56 + 80) = v78;
  *(v56 + 96) = v57;
  v58 = v75;
  *(v56 + 112) = v76;
  *(v56 + 128) = v58;
  v59 = v73;
  *(v56 + 144) = v74;
  *(v56 + 160) = v59;
  v60 = v93;
  *(v56 + 208) = v92;
  *(v56 + 224) = v60;
  *(v56 + 240) = v94;
  *(v56 + 256) = v95;
  v61 = v91;
  *(v56 + 176) = v90;
  *(v56 + 192) = v61;
  v62 = swift_allocObject();
  v63 = v93;
  *(v62 + 48) = v92;
  *(v62 + 64) = v63;
  *(v62 + 80) = v94;
  v64 = v95;
  v65 = v91;
  *(v62 + 16) = v90;
  *(v62 + 32) = v65;
  *(v62 + 96) = v64;
  *(v62 + 104) = partial apply for closure #3 in closure #3 in BigTextEffect.configuration(_:);
  *(v62 + 112) = v56;
  v66 = MEMORY[0x1E69E6F90];
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v81 = xmmword_195CC8D00;
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v62;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v66);
  v68 = swift_initStackObject();
  *(v68 + 16) = v81;
  *(v68 + 32) = inited;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(&v97, &v82, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(&v98, &v82, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(&v99, &v82, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(v100, &v82);
  outlined init with copy of Text.Effect.PathInterpolator(&v90, &v82);
  v69 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v68);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v68 + 32);
  return v69;
}

uint64_t closure #1 in closure #3 in BigTextEffect.configuration(_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[4];
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<BigTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  swift_retain_n();
  v7 = Text.Effect.Keyframes.subscript.getter(v4, v6, v3);
  if (!v7)
  {
    goto LABEL_40;
  }

  if (v5 < 0)
  {
    goto LABEL_36;
  }

  v8 = *(v7 + 16);
  if (v5 >= v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = (v7 + 32);
  v10 = *(v7 + 32 + 8 * v5);
  v11 = 0;
  if (v5)
  {
    v12 = v5;
    while (1)
    {
      v13 = *(*(*v9 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      ++v9;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_8:

  v38[0] = v3;
  v38[1] = v4;
  v38[2] = v6;
  v38[3] = v10;
  v38[4] = v5;
  v38[5] = v8;
  v38[6] = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, isUniquelyReferenced_nonNull_native, -1.0);
  outlined destroy of Text.Effect.BaseFragment(v38);
  *a1 = v37[0];
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = Text.Effect.Keyframes.subscript.getter(v4, v16, v3);
  if (!v17)
  {
LABEL_40:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = *(v17 + 16);
  if (v5 >= v18)
  {
    goto LABEL_38;
  }

  v19 = *(v17 + 32 + 8 * v5);
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = *(*(*(v17 + 32 + 8 * v20) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v21, v23);
      v21 += v23;
      if (v14)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v5, v22))
      {
        goto LABEL_32;
      }

      ++v20;
      if (v5 == v22)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = 0;
LABEL_18:

  v37[0] = v3;
  v37[1] = v4;
  v37[2] = v16;
  v37[3] = v19;
  v37[4] = v5;
  v37[5] = v18;
  v37[6] = v21;

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v24, 0.0);
  outlined destroy of Text.Effect.BaseFragment(v37);
  *a1 = v36[0];
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  v26 = Text.Effect.Keyframes.subscript.getter(v4, v25, v3);
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = *(v26 + 16);
  if (v5 >= v27)
  {
    goto LABEL_39;
  }

  v28 = *(v26 + 32 + 8 * v5);
  if (v5)
  {
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v32 = *(*(*(v26 + 32 + 8 * v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v30, v32);
      v30 += v32;
      if (v14)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v5, v31))
      {
        goto LABEL_35;
      }

      ++v29;
      if (v5 == v31)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = 0;
LABEL_28:

  v36[0] = v3;
  v36[1] = v4;
  v36[2] = v25;
  v36[3] = v28;
  v36[4] = v5;
  v36[5] = v27;
  v36[6] = v30;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v33, 1.0);
  result = outlined destroy of Text.Effect.BaseFragment(v36);
  *a1 = v35;
  return result;
}

void closure #3 in closure #3 in BigTextEffect.configuration(_:)(unint64_t a1, void *a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v32 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0) - 8;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = *(a3 + 32);
  if (*(v36 + 16) > a1)
  {
    *&v53[1] = a9;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(v36 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * a1, v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
    if (one-time initialization token for scaleTimeline == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_5:
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for KeyframeTimeline<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E697E9C8]);
  __swift_project_value_buffer(v37, static BigTextEffect.scaleTimeline);
  KeyframeTimeline.value(progress:)();
  v38 = *&v55 + -1.0;
  if (*&v55 >= 1.0)
  {
    v39 = (a5 + -1.0) * (v38 / 0.6);
    v40 = 0.0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v39 = v38 / 0.05;
    v40 = 0.0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v39 >= 0.0)
  {
    v45 = a16;
    a13 = a17;
    v43 = a14;
    v44 = a15;
    v42 = v39;
  }

  else
  {
    v42 = fabs(v39);
    v43 = a10;
    v44 = a11;
    v45 = a12;
  }

  v40 = Text.Effect.Metrics.offsetForCenterAlignment(other:t:)(v43, v44, v45, a13, v42, a6, a7);
LABEL_13:
  v55 = *&v39;
  v56 = v40;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v60 = _Q0;
  v61 = 0x3FF0000000000000;
  v62 = 0;
  Text.Effect.TransformContext.record(position:for:)(&v55, a1, v54);
  Text.Effect.TransformContext.draw(state:keyPath:)(v54, 0, 0, 0, 1);
  if (__OFSUB__(*a2, a1))
  {
    __break(1u);
  }

  else if (*a2 == a1)
  {
    Text.Effect.PathInterpolator.width(for:at:)(a1, *v54);
    v52 = v51;
    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v35, type metadata accessor for Text.Effect.Timing.GlyphTiming);
    a2[17] = v52;
  }

  else
  {
    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v35, type metadata accessor for Text.Effect.Timing.GlyphTiming);
  }
}

uint64_t protocol witness for static Text.Effect.Base.lineBreakingState.getter in conformance BigTextEffect@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for useLarge != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  if (static BigTextEffect.useLarge)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance BigTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized BigTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BigTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect();
  result = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  v6 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v6;
  v13 = *(a3 + 32);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = closure #3 in BigTextEffect.configuration(_:)(v9, v10, v12);
  *a4 = result;
  return result;
}

double specialized BigTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[16] = 1;
  v18[24] = 0;
  v21 = xmmword_195CD01E0;
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
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static BigTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD03BigcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized BigTextEffect.configuration(_:)()
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
  v3[5] = closure #1 in BigTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;

  v4 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 2, 1, v0);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[4 * v6];
  v7[4] = 2;
  v7[5] = closure #2 in BigTextEffect.configuration(_:);
  v7[6] = 0;
  *(v7 + 56) = 1;

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[2 * v10];
  v11[4] = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v11[5] = 0;
  return v4;
}

uint64_t outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(uint64_t a1)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect();
    v7 = a3(a1, &type metadata for BigTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVAHSlADWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for LinearKeyframe<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.BaseFragmentIdentifierMap(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SiTt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SiTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12), MEMORY[0x1E69E7568], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, MEMORY[0x1E69E7568], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, MEMORY[0x1E69E7560], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  (*(*a2 + 88))(v6);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  MEMORY[0x19A8BDE60](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  v6 = Hasher._finalize()();
  return a3(a1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x19A8BDE40](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = *(v3 + 48) + 16 * v5;
      if (*v9 == a1)
      {
        v10 = *(**(v9 + 8) + 80);

        LOBYTE(v10) = v10(a2);

        if (v10)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (*v8 == a1)
      {
        v9 = v8[1];
        if (__OFSUB__(a2, v9))
        {
          __break(1u);
          return result;
        }

        if (v9 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier()
{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Time and conformance Time()
{
  result = lazy protocol witness table cache variable for type Time and conformance Time;
  if (!lazy protocol witness table cache variable for type Time and conformance Time)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Time and conformance Time);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Time()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x19A8BDE80](*&v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Time()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x19A8BDE80](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Time()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x19A8BDE80](*&v2);
  return Hasher._finalize()();
}

id AnyTextFilterEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyTextFilterEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for TextFilterEffect()
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

uint64_t TextFilterEffect.AnimationInfo.updateLayout(effect:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v53 = a3;
  v60 = a1;
  v11 = *(*(*v6 + 128) + 8);
  v12 = *(*v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v48 - v17;
  v58 = type metadata accessor for Text.Effect.DrawableContent();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v48 - v18;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  v19 = *(v11 + 128);
  v59 = v12;
  v20 = v19(v12, v11);
  v21 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v20);
  v55 = a5;
  v22 = Text.Effect.Keyframes.subscript.getter(a2, v21, a5);
  if (!v22)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v66 = v14;
  v61 = AssociatedTypeWitness;
  v23 = *(v22 + 16);
  v64 = v21;
  v65 = v7;
  if (v23)
  {
    v50 = a2;
    v51 = a6;
    v67[0] = MEMORY[0x1E69E7CC0];
    v52 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v24 = v52;
    v25 = v67[0];
    v26 = *(v52 + 16);
    v27 = *(v67[0] + 16);
    v28 = 32;
    while (1)
    {
      v29 = *(*(*(v24 + v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v67[0] = v25;
      v30 = *(v25 + 24);
      if (v27 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v27 + 1, 1);
        v24 = v52;
        v25 = v67[0];
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 8 * v27 + 32) = v29;
      if (!v26)
      {
        break;
      }

      --v26;
      v28 += 8;
      ++v27;
      if (!--v23)
      {

        v21 = v64;
        v7 = v65;
        a6 = v51;
        a2 = v50;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v31 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v25, v7[2]);
  if (v31)
  {
    v32 = v59;
    Text.Effect.BaseContext.content<A>(for:key:)(v59, a2, v21, v53, v54, v55, a6, v59, v11);
    TextEffectsAnimationController.state(for:time:)(a2, v67, *(a6 + 56));
    v48 = v68;
    v49 = v69;
    v52 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v68);
    v53 = v33;
    LODWORD(v55) = v31;
    v50 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v70);
    v51 = v34;
    v54 = *(*v7 + 144);
    v35 = v54;
    swift_beginAccess();
    v36 = v7 + v35;
    v37 = v56;
    v38 = v61;
    (*(v66 + 16))(v56, v36, v61);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = *(AssociatedConformanceWitness + 8);

    v49 = v40(v38, AssociatedConformanceWitness);
    v42 = v41;
    (*(v66 + 8))(v37, v38);
    v43 = v42 & 1;
    LOBYTE(v31) = v55;
    v44 = v62;
    (*(v11 + 136))(v62, v52, v53, v50, v51, v49, v43, v32, v11);

    outlined destroy of Text.Effect.State(v67);
    (*(v57 + 8))(v44, v58);
    v45 = v54;
    v46 = v65;
    swift_beginAccess();
    (*(v66 + 40))(v46 + v45, v63, v38);
    swift_endAccess();
    v46[2] = v25;
  }

  else
  {
  }

  return v31 & 1;
}

uint64_t TextFilterEffect.AnimationInfo.clearFrameCache()()
{
  swift_beginAccess();

  Text.Effect.AttributeTracker.Tracker.commitUpdates()();
  swift_endAccess();
}

uint64_t TextFilterEffect.AnimationInfo.restart()()
{
  v1 = *(v0 + *(*v0 + 152));
  result = swift_beginAccess();
  *(v1 + 48) = 1;
  return result;
}

BOOL TextFilterEffect.AnimationInfo.isSettled.getter()
{
  v1 = *(v0 + *(*v0 + 152));
  swift_beginAccess();
  return *(v1 + 32) == 0;
}

uint64_t TextFilterEffect.AnimationInfo.needsUpdate(for:state:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, AssociatedConformanceWitness);
  v9 = v8;
  v11 = v10;

  LOBYTE(v7) = Text.Effect.AttributeTracker.needsUpdate(for:state:interval:consideringRestart:)(a1, a2, v7, v9, v11 & 1, 1);

  return v7 & 1;
}

uint64_t TextFilterEffect.AnimationInfo.__ivar_destroyer()
{

  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
}

uint64_t TextFilterEffect.AnimationInfo.deinit()
{

  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t TextFilterEffect.AnimationInfo.__deallocating_deinit()
{
  TextFilterEffect.AnimationInfo.deinit();

  return swift_deallocClassInstance();
}

uint64_t TextFilterEffect.updateInfo(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v9 + 0xE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - v12;
  type metadata accessor for TextFilterEffect.AnimationInfo();
  if (swift_dynamicCastClass())
  {
    (*(v11 + 16))(v13, &v5[*(v9 + 248)], v10);
    v14 = *&v5[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];

    v15 = TextFilterEffect.AnimationInfo.updateLayout(effect:identifier:context:)(v13, v14, a2, a3, a4, v18);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t TextFilterEffect.duration(from:to:variant:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(1, a1, a2, v23, v24, 0, 1, v25, a7, v22, a9);
  v17 = *(*v16 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16 + v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return v19;
}

uint64_t TextFilterEffect.apply(_:at:to:context:in:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v7 = v6;
  v50 = a3;
  v44 = a2;
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xF0);
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE8);
  v51 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v43 - v14;
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = a4[1];
  v43 = *a4;
  v19 = a4[2];
  v20 = a4[3];
  v45 = a4;
  v21 = TextEffectsAnimationController.state(for:time:)(a1, v52, a6);
  v22 = v52[56] & 0xFE;
  v23 = v55;
  if (v22 == 2 || v55 && ((*(*v55 + 104))(v21) & 1) == 0)
  {
    v33 = specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(v22 == 2, v53, v54, v23, v56, 0, 1, v43, v18, v19, v20);
    v34 = *&v7[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
    v35 = v12;
    v36 = specialized TextFilterEffect.defaultDrawingState.getter(v13, v12);
    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v34, v36, v44, v19, v57);

    v37 = v47;
    (*(v47 + 16))(v17, &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0xF8)], v13);
    v38 = *(*v33 + 144);
    swift_beginAccess();
    v39 = v48;
    v40 = v46;
    v41 = AssociatedTypeWitness;
    (*(v48 + 16))(v46, v33 + v38, AssociatedTypeWitness);
    (*(v35 + 24))(v50, v57, v40, v52, v45, a5, v13, v35);
    v42 = type metadata accessor for Text.Effect.DrawableFragment();
    (*(*(v42 - 8) + 8))(v57, v42);

    outlined destroy of Text.Effect.State(v52);
    (*(v39 + 8))(v40, v41);
    return (*(v37 + 8))(v17, v13);
  }

  else
  {
    v24 = *(v50 + 8);
    v25 = *v50;
    v26 = *(v50 + 32);
    v57[0] = *(v50 + 16);
    v27 = *(v50 + 48);
    v57[1] = v26;
    v57[2] = v27;
    v28 = *(v24 + 16);
    if (v28)
    {
      v29 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
      v30 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v31 = *(v29 + 72);
      do
      {
        Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v57, 0, 0, 1, a5, v25);
        v30 += v31;
        --v28;
      }

      while (v28);
    }

    return outlined destroy of Text.Effect.State(v52);
  }
}

uint64_t TextFilterEffect.needsUpdate(_:at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  TextEffectsAnimationController.state(for:time:)(a1, v14, a7);
  if ((v16 & 0xFE) == 2)
  {
    specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(1, v17, v18, v19, v20, v15, 0, a3, a4, a5, a6);
    v12 = TextFilterEffect.AnimationInfo.needsUpdate(for:state:)(a2, v14);
  }

  else
  {
    v12 = 0;
  }

  outlined destroy of Text.Effect.State(v14);
  return v12 & 1;
}

double TextFilterEffect.drawingOutsets.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, &v0[*((v2 & v1) + 0xF8)], v3);
  v7 = (*(*((v2 & v1) + 0xF0) + 32))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t TextFilterEffect.phase(from:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0) + 8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
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

uint64_t TextFilterEffect.defaultAnimatorPhase.getter()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0) + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v7 - v4;
  type metadata accessor for Text.Effect.ConcretePhase();
  (*(v1 + 72))(v2, v1);
  return Text.Effect.ConcretePhase.__allocating_init(_:)(v5);
}

void TextFilterEffect.configuration(from:)(uint64_t a1)
{
  v3 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0) + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
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

uint64_t TextFilterEffect.states.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0) + 8);
  result = (*(v2 + 112))(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < *(v4 + 16))
      {
        ++v6;
        result = (*(v2 + 120))(v1, v2);
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_6:

    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      v12 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      v9 = 0;
      while (v9 < *(v7 + 16))
      {
        ++v9;
        v10 = type metadata accessor for Text.Effect.ConcreteLayoutState();
        Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v10);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if (v8 == v9)
        {

          return v12;
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

    v11 = MEMORY[0x1E69E7CC0];

    return v11;
  }

  return result;
}

uint64_t TextFilterEffect.lineBreakingState.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0) + 8);
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  v3 = (*(v2 + 120))(v1, v2);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v3);
}

uint64_t type metadata completion function for TextFilterEffect.AnimationInfo()
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
    type metadata accessor for _ContiguousArrayStorage<[Path]>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Path]>, &lazy cache variable for type metadata for [Path], MEMORY[0x1E69E62F8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    _ss23_ContiguousArrayStorageCySiGMaTm_0(0, &lazy cache variable for type metadata for [Path], MEMORY[0x1E6980F80], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<[Path?]>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<[Path]>(0, &lazy cache variable for type metadata for [Path?], &lazy cache variable for type metadata for Path?, MEMORY[0x1E69E6720], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _ss23_ContiguousArrayStorageCySiGMaTm_0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 120 * v20;
      if (v42)
      {
        v24 = *v22;
        v23 = *(v22 + 8);
        v46 = *(v22 + 16);
        v25 = *(v22 + 24);
        v44 = *(v22 + 40);
        v45 = *(v22 + 25);
        v47 = *(v22 + 48);
        v48 = *(v22 + 64);
        v26 = *(v22 + 80);
        v51 = *(v22 + 96);
        v52 = *(v22 + 88);
        v49 = *(v22 + 32);
        v50 = *(v22 + 104);
        v43 = *(v22 + 112);
      }

      else
      {
        v28 = *(v22 + 32);
        v27 = *(v22 + 48);
        v29 = *v22;
        v55 = *(v22 + 16);
        v56 = v28;
        v54 = v29;
        v31 = *(v22 + 80);
        v30 = *(v22 + 96);
        v32 = *(v22 + 64);
        v61 = *(v22 + 112);
        v59 = v31;
        v60 = v30;
        v57 = v27;
        v58 = v32;
        v51 = v30;
        v52 = *(&v31 + 1);
        v43 = v61;
        v26 = v31;
        v47 = v27;
        v48 = v32;
        v49 = v56;
        v50 = *(&v30 + 1);
        v44 = BYTE8(v56);
        v45 = BYTE9(v55);
        v46 = v55;
        v25 = BYTE8(v55);
        v23 = *(&v54 + 1);
        v24 = v54;
        outlined init with copy of TextEffectsAnimationController.Timing(&v54, v53);
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      result = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v54) = v25;
      v53[0] = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 120 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v46;
      *(v16 + 24) = v25;
      *(v16 + 25) = v45;
      *(v16 + 32) = v49;
      *(v16 + 40) = v44;
      *(v16 + 48) = v47;
      *(v16 + 64) = v48;
      *(v16 + 80) = v26;
      *(v16 + 88) = v52;
      *(v16 + 96) = v51;
      *(v16 + 104) = v50;
      *(v16 + 112) = v43;
      ++*(v7 + 16);
      v5 = v41;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E7560]);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Double, Text.Effect.BaseFragment>);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v40 = *(v22 + 32);
      v39 = *(v22 + 48);
      if ((v38 & 1) == 0)
      {
      }

      if (v21 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v21;
      }

      result = MEMORY[0x19A8BDE40](*(v7 + 40), *&v27);
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      *(v16 + 32) = v40;
      *(v16 + 48) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>, lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex, &type metadata for Text.Effect.GlyphIndex, MEMORY[0x1E69E7560]);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Int>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E7560]);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>, type metadata accessor for Text.Effect.AttributeTracker.AnyValue, lazy protocol witness table accessor for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_38;
        }

        v35 = 1 << *(v5 + 32);
        v3 = v2;
        if (v35 >= 64)
        {
          bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v35;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v40 = *(v23 + 24);
      v42 = *(v23 + 32);
      v39 = *(v23 + 40);
      v41 = *(v23 + 48);
      v27 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v38 = v27;
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v24);
      MEMORY[0x19A8BDE60](v25);
      MEMORY[0x19A8BDE60](v26);
      if (v42)
      {
        Hasher._combine(_:)(0);
        if (!v41)
        {
          goto LABEL_19;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x19A8BDE60](v40);
        if (!v41)
        {
LABEL_19:
          Hasher._combine(_:)(1u);
          MEMORY[0x19A8BDE60](v39);
          goto LABEL_22;
        }
      }

      Hasher._combine(_:)(0);
LABEL_22:
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v38;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 56 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v40;
      *(v17 + 32) = v42;
      *(v17 + 40) = v39;
      *(v17 + 48) = v41;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v36;
    }
  }

LABEL_38:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Key, Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.Key and conformance Text.Effect.Key);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v25);
      (*(*v24 + 88))(v39);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v25;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>();
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>, type metadata accessor for AnyTextEffect);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>, type metadata accessor for AnyTextAnimation);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>, type metadata accessor for Text.Effect.AnyLayoutState);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x19A8BDE40](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.RelativeIdentifierKey, CGFloat>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      MEMORY[0x19A8BDE60](v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, FragmentIdentifierOffsetMap.Entry>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = v22[1];
      v35 = v22[2];
      v24 = *v22;
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v5 = v34;
      v16[2] = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>, type metadata accessor for Text.Effect.AnyStateSnapshot);
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.BasePhaseConfiguration>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}