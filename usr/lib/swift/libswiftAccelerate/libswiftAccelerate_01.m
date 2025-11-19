uint64_t specialized vImage.PixelBuffer<>.vImageBuffers.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v14;
    v4 = *(v14 + 16);
    v5 = 32 * v4;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v15 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v12 = *v6;
        v13 = *(v6 - 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v4 + 1, 1);
        v8 = v12;
        v7 = v13;
        result = v15;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v7;
      *(v11 + 48) = v8;
      v5 += 32;
      v6 = (v6 + 40);
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.interleave(destination:)()
{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

uint64_t specialized vImage.PixelBuffer<>.pixelBuffers.getter(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    v13 = a2;
    a2(0, v2, 0);
    v3 = v14;
    v6 = (a1 + 64);
    do
    {
      v7 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
      v8 = swift_allocObject();
      v9 = *(v6 - 1);
      *(v8 + 32) = *(v6 - 2);
      *(v8 + 48) = v9;
      *(v8 + 16) = xmmword_1B7E76D90;
      *(v8 + 64) = v7;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v11 >= v10 >> 1)
      {
        v13(v10 > 1, v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v8;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t vImage.PixelBuffer<>.applyPolynomial(coefficientSegments:boundaries:destination:)(uint64_t a1, uint64_t a2, void **a3)
{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 1, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 1, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 1, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589F0]);
}

uint64_t specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, void *, char *, uint64_t, uint64_t, uint64_t, void))
{
  v78[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (!a5[2])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = a5[6];
  if (v8 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = a5[5];
  if (v9 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!v8)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!v9)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!a3[2])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v11 = a3[6];
  if (v11 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v12 = a3[5];
  if (v12 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!v11)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (!v12)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v8 != v11)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9 != v12)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v74 = a5[5];
  v77[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v14 = 0;
  v15 = v77[0];
  v16 = a1 + 32;
  v17 = *(v77[0] + 16);
  do
  {
    v18 = *(*(v16 + 8 * v14) + 16);
    v77[0] = v15;
    v19 = *(v15 + 24);
    if (v17 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
      v15 = v77[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    *(v15 + 8 * v17++ + 32) = v18;
  }

  while (v6 != v14);
  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(v15, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &_ss11_SetStorageCySiGMd);

  if (*(v20 + 16) != 1)
  {
    goto LABEL_83;
  }

  v21 = *(a2 + 16);
  if (v21 != v6 + 1)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v22 = 0;
  v23 = (a2 + 36);
  do
  {
    if (v21 == v22)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (*v23 < *(v23 - 1))
    {
      goto LABEL_67;
    }

    ++v22;
    ++v23;
  }

  while (v21 - 1 != v22);
  v24 = *(*v16 + 16);
  if (!v24)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v24 > 0x100000000)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v25 = a5[4];
  if (!v25)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
  {
    goto LABEL_87;
  }

  if (v8 * a4 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v26 = a5[7];
  v78[0] = a5[4];
  v78[1] = v74;
  v78[2] = v8 * a4;
  v78[3] = v26;
  v78[4] = 0;
  if (!a3[4])
  {
    goto LABEL_92;
  }

  v27 = __clz(v6);
  if (v27 == 1)
  {
    goto LABEL_89;
  }

  v66 = a3[4];
  v67 = v26;
  v68 = v25;
  v69 = v8 * a4;
  v70 = v24 - 1;
  v64 = a3[7];
  v65 = (64 - v27);
  v28 = 1 << (64 - v27);
  v77[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
  v29 = 0;
  v30 = v6 - 1;
  v31 = v77[0];
  do
  {
    if (v30 >= v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v32 < 0)
    {
      goto LABEL_68;
    }

    v33 = *(v16 + 8 * v32);
    v34 = *(v33 + 16);
    if (v34 >> 61)
    {
      goto LABEL_69;
    }

    v35 = 4 * v34;

    v36 = swift_slowAlloc();
    v37 = v36;
    if (*(v33 + 16))
    {
      memcpy(v36, (v33 + 32), v35);
    }

    v77[0] = v31;
    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v31 = v77[0];
    }

    ++v29;
    *(v31 + 2) = v39 + 1;
    *&v31[8 * v39 + 32] = v37;
  }

  while (v28 != v29);

  if (v21 == v39 + 2)
  {
    v41 = a2;

    outlined destroy of vImage.BufferWrapper(v78);
    v42 = a6;
    v43 = v70;
    v45 = v64;
    v44 = v65;
    goto LABEL_59;
  }

  v46 = *(v31 + 2);
  v47 = v46 - v21;
  if (v46 - v21 < -1)
  {
    goto LABEL_90;
  }

  if (v47 == -1)
  {
    v49 = MEMORY[0x1E69E7CC0];
    v42 = a6;
    v51 = a2;
    v43 = v70;
    v45 = v64;
    v44 = v65;
  }

  else
  {
    v40.i32[0] = *(a2 + 28 + 4 * v21);
    v73 = v40;
    v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v49 = v48;
    *(v48 + 16) = v47 + 1;
    *(v48 + 32) = v73.i32[0];
    v50 = v48 + 32;
    v45 = v64;
    v44 = v65;
    if (v46 == v21)
    {
      goto LABEL_47;
    }

    if (v47 <= 7)
    {
      v52 = 0;
      goto LABEL_54;
    }

    v52 = v47 & 0xFFFFFFFFFFFFFFF8;
    v50 += 4 * (v47 & 0xFFFFFFFFFFFFFFF8);
    v53 = vdupq_lane_s32(v73, 0);
    v54 = (v48 + 52);
    v55 = v47 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v54[-1] = v53;
      *v54 = v53;
      v54 += 2;
      v55 -= 8;
    }

    while (v55);
    if (v47 == v52)
    {
LABEL_47:
      v42 = a6;
      v51 = a2;
      v43 = v70;
    }

    else
    {
LABEL_54:
      v56 = v52 + v21 - v46;
      v57 = (v50 + 4);
      v43 = v70;
      do
      {
        *v57++ = v73.i32[0];
      }

      while (!__CFADD__(v56++, 1));
      v42 = a6;
      v51 = a2;
    }
  }

  v77[0] = v51;

  specialized Array.append<A>(contentsOf:)(v49);
  outlined destroy of vImage.BufferWrapper(v78);
  v41 = v77[0];
LABEL_59:
  v77[0] = v68;
  v77[1] = v74;
  v77[2] = v69;
  v77[3] = v67;
  v76[0] = v66;
  v76[1] = v74;
  v76[2] = v69;
  v76[3] = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2), 0, v31, &_ss23_ContiguousArrayStorageCySPySfGSgGMd);
  }

  v59 = (v31 + 32);
  v42(v77, v76, v31 + 32, v41 + 32, v43, v44, 0);

  for (i = *(v31 + 2); i; --i)
  {
    v63 = *v59++;
    v62 = v63;
    if (v63)
    {
      MEMORY[0x1B8CB2C50](v62, -1, -1);
    }
  }
}

uint64_t vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t *, uint64_t *, char *, uint64_t, uint64_t, uint64_t, void), uint64_t a5, uint64_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v9 = *a3;
  v10 = *v6;
  vImage.PixelBuffer.size.getter(&v87);
  v12 = v87;
  v11 = v88;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&v83);
  if (v12 != v83 || v11 != v84)
  {
    goto LABEL_64;
  }

  v87 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v13 = 0;
  v14 = v87;
  v15 = a1 + 32;
  v16 = *(v87 + 16);
  do
  {
    v17 = *(*(v15 + 8 * v13) + 16);
    v87 = v14;
    v18 = *(v14 + 24);
    if (v16 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v16 + 1, 1);
      v14 = v87;
    }

    ++v13;
    *(v14 + 16) = v16 + 1;
    *(v14 + 8 * v16++ + 32) = v17;
  }

  while (v7 != v13);
  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(v14, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &_ss11_SetStorageCySiGMd);

  if (*(v19 + 16) != 1)
  {
    goto LABEL_65;
  }

  v20 = *(a2 + 16);
  if (v20 != v7 + 1)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v21 = 0;
  v22 = (a2 + 36);
  do
  {
    if (v20 == v21)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (*v22 < *(v22 - 1))
    {
      goto LABEL_60;
    }

    ++v21;
    ++v22;
  }

  while (v20 - 1 != v21);
  v23 = *(*v15 + 16);
  if (!v23)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v23 > 0x100000000)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v79 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v79)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  v87 = v10;
  v24 = vImage.PixelBuffer.width.getter();
  v25 = v24 * a6;
  if ((v24 * a6) >> 64 != (v24 * a6) >> 63)
  {
    goto LABEL_69;
  }

  v26 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E76D90;
  if ((v26 | v25) < 0)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(inited + 32) = v79;
  *(inited + 40) = v26;
  *(inited + 48) = v25;
  *(inited + 56) = v28;
  v74 = v28;
  *(inited + 64) = 0;
  v73 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v73)
  {
    goto LABEL_76;
  }

  v87 = v9;
  v30 = vImage.PixelBuffer.width.getter();
  if ((v30 * a6) >> 64 != (v30 * a6) >> 63)
  {
    goto LABEL_71;
  }

  v81 = v30 * a6;
  v31 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v78 = v31;
  if ((v31 | v81) < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33 = __clz(v7);
  if (v33 == 1)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v72 = v26;
  v77 = v25;
  v71 = v23 - 1;
  v69 = v32;
  v70 = (64 - v33);
  v34 = 1 << (64 - v33);
  v87 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v35 = 0;
  v36 = v7 - 1;
  v37 = v87;
  do
  {
    if (v36 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v36;
    }

    if (v38 < 0)
    {
      goto LABEL_61;
    }

    v39 = *(v15 + 8 * v38);
    v40 = *(v39 + 16);
    if (v40 >> 61)
    {
      goto LABEL_62;
    }

    v41 = 4 * v40;

    v42 = swift_slowAlloc();
    v43 = v42;
    if (*(v39 + 16))
    {
      memcpy(v42, (v39 + 32), v41);
    }

    v87 = v37;
    v45 = *(v37 + 2);
    v44 = *(v37 + 3);
    if (v45 >= v44 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      v37 = v87;
    }

    ++v35;
    *(v37 + 2) = v45 + 1;
    *&v37[8 * v45 + 32] = v43;
  }

  while (v34 != v35);

  if (v20 == v45 + 2)
  {
    v47 = a2;

    v48 = a4;
    v49 = v73;
    v50 = v71;
    goto LABEL_52;
  }

  v51 = *(v37 + 2);
  v52 = v51 - v20;
  if (v51 - v20 < -1)
  {
    goto LABEL_74;
  }

  if (v52 == -1)
  {
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v46.i32[0] = *(a2 + 28 + 4 * v20);
  v75 = v46;
  v53 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v54 = v53;
  *(v53 + 16) = v52 + 1;
  *(v53 + 32) = v75.i32[0];
  v55 = v53 + 32;
  if (v51 == v20)
  {
LABEL_42:
    v48 = a4;
    v57 = a2;
    goto LABEL_51;
  }

  if (v52 <= 7)
  {
    v56 = 0;
    v57 = a2;
    goto LABEL_47;
  }

  v56 = v52 & 0xFFFFFFFFFFFFFFF8;
  v55 += 4 * (v52 & 0xFFFFFFFFFFFFFFF8);
  v58 = vdupq_lane_s32(v75, 0);
  v59 = (v53 + 52);
  v60 = v52 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v59[-1] = v58;
    *v59 = v58;
    v59 += 2;
    v60 -= 8;
  }

  while (v60);
  v57 = a2;
  if (v52 == v56)
  {
    v48 = a4;
  }

  else
  {
LABEL_47:
    v61 = v56 + v20 - v51;
    v62 = (v55 + 4);
    do
    {
      *v62++ = v75.i32[0];
    }

    while (!__CFADD__(v61++, 1));
    v48 = a4;
  }

LABEL_51:
  v49 = v73;
  v50 = v71;
  v87 = v57;

  specialized Array.append<A>(contentsOf:)(v54);

  v47 = v87;
LABEL_52:
  v87 = v79;
  v88 = v72;
  v89 = v77;
  v90 = v74;
  v83 = v49;
  v84 = v78;
  v85 = v81;
  v86 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2), 0, v37, &_ss23_ContiguousArrayStorageCySPySfGSgGMd);
  }

  v64 = (v37 + 32);

  v48(&v87, &v83, v37 + 32, v47 + 32, v50, v70, 0);

  for (i = *(v37 + 2); i; --i)
  {
    v68 = *v64++;
    v67 = v68;
    if (v68)
    {
      MEMORY[0x1B8CB2C50](v67, -1, -1);
    }
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10DSPComplexVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16DSPDoubleComplexVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18bnns_graph_shape_taGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21bnns_graph_argument_taGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi1x_Si1ytGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO10BufferTypeOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySuGGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = MEMORY[0x1B8CB17F0](*(*v3 + 40));
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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
    v14 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    v26 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x1B8CB17F0](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    if (v9 >= 64)
    {
      bzero((v4 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v3 = v26;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = specialized _NativeSet.copy()(a4);
      a2 = v8;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, a4);
  }

  v9 = *v4;
  result = MEMORY[0x1B8CB17F0](*(*v4 + 40), v5);
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x1B8CB17F0](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_24;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

    *v3 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x1B8CB1430](v6);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      specialized Set._Variant.insert(_:)(&v10, v9, a4);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:));
}

{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

void closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4, uint64_t a5, float **a6, vDSP_Length a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(a12 + 16);
  v16 = v15(a9, a12);
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = *a6;
  if (v18)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      v19 = v15(a9, a12);
      if ((v19 & 0x8000000000000000) == 0)
      {
        vDSP_conv(a3, 1, (a1 + 4 * v17), -1, v18, 1, a7, v19);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t *))
{
  v10 = (*(a5 + 16))(a3, a5);
  v11 = (*(a6 + 16))(a4, a6);
  v12 = __OFSUB__(v10, v11);
  result = v10 - v11;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1EEE9AC00](result);
    return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(v14, a7);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, const double *a3, uint64_t a4, uint64_t a5, double **a6, vDSP_Length a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(a12 + 16);
  v16 = v15(a9, a12);
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = *a6;
  if (v18)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      v19 = v15(a9, a12);
      if ((v19 & 0x8000000000000000) == 0)
      {
        vDSP_convD(a3, 1, (a1 + 8 * v17), -1, v18, 1, a7, v19);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t static vDSP.correlate<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:));
}

{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:));
}

uint64_t static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(*(a9 + 8) + 16))(a6);
  v15 = (*(a7 + 16))(a4, a7);
  result = (*(a8 + 16))(a5, a8);
  v17 = v14 + result;
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= v19)
  {
    v20 = MEMORY[0x1EEE9AC00](a10);
    return (*(a9 + 16))(v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = *a5;
  if (*a5)
  {
    if (a6 < 0)
    {
      __break(1u);
    }

    else
    {
      result = (*(a12 + 16))(a9);
      if ((result & 0x8000000000000000) == 0)
      {
        return a14(a3, 1, v14, 1, v15, 1, a6, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:));
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:));
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, unint64_t *a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a11);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a13, a11);
  a14(a3, a4, a5, a6, a1, a7, a8, v17, a9, a10, v18);
  result = (*(a9 + 16))(a7, a9);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = (*(a9 + 16))(a6, a9);
  if (v12 != result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a10 + 16))(a7, a10);
  if (result == 9)
  {
    v15 = MEMORY[0x1EEE9AC00](a12);
    return (*(v16 + 16))(v15);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:));
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:));
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = (*(a9 + 16))(a6, a9);
  if (v12 != result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a10 + 16))(a7, a10);
  if (result == 25)
  {
    v15 = MEMORY[0x1EEE9AC00](a12);
    return (*(v16 + 16))(v15);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (!a3)
  {
    goto LABEL_7;
  }

  if ((a6 | a5) < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a7)
  {
    return a8(a3, a5, a6, result, *a7);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:));
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:));
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, unint64_t *a15, void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a13);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a15, a13);
  a16(a3, a4, a5, a6, a7, a8, a1, a9, a10, v17, a11, a12, v18);
  result = (*(a11 + 16))(a9, a11);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a11 + 16))(a8, a11);
  if ((a6 & 0x8000000000000001) == 1 && (a5 & 0x8000000000000001) == 1 && v14 == result)
  {
    v17 = MEMORY[0x1EEE9AC00](a14);
    return (*(v18 + 16))(v17);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if ((a6 | a5) < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a7)
  {
    if (((a9 | a8) & 0x8000000000000000) == 0)
    {
      return a10(a3, a5, a6, result, *a7, a8);
    }

    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6[2];
  v10 = v6[3];
  v18 = v6[5];
  v19 = v6[4];
  v12 = v6[6];
  v13 = v6[7];
  v17 = v6[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3);
  result = a6(v12, v13, a1, v11, v10, v14, v19, v18, v15);
  *a2 = v17;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v9 = *(v2 + 16);
  v10 = v3;
  v11 = *(v2 + 40);
  v12 = v4;
  v13 = v5;
  v14 = a1;
  v15 = v6;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = *(v2 + 40);
  v11 = v4;
  v12 = v5;
  v13 = *(v2 + 80);
  return (*(v10 + 24))(a2, &v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v9 = *(v2 + 16);
  v10 = v3;
  v6 = *(v2 + 96);
  v14 = *(v2 + 80);
  v11 = *(v2 + 40);
  v12 = v4;
  v13 = v5;
  v15 = a1;
  v16 = v6;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo10DSPComplexV_Tt1g5Tm(uint64_t result, uint64_t (*a2)(void *, uint64_t *), uint64_t a3, void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result)
  {
    a4(0);
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v7 + 32;
  v10 = 0;
  v9[0] = v7 + 32;
  v9[1] = v6;
  result = a2(v9, &v10);
  if (v4)
  {
    if (v10 <= v6)
    {
      if (!v9[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v8 == v9[0])
      {
        *(v7 + 16) = v10;

        return v7;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 > v6)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9[0])
  {
    if (v8 == v9[0])
    {
      *(v7 + 16) = v10;
      return v7;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, MEMORY[0x1E6958C88]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, MEMORY[0x1E6958C80]);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 48);
  v6 = *(v3 + 88);
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(v3 + 72);
  v10 = v6;
  v11 = *(v3 + 96);
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C48]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C40]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C38]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C30]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 48);
  v6 = *(v3 + 88);
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(v3 + 72);
  v10 = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, MEMORY[0x1E6958BF0]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, MEMORY[0x1E6958BE8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v9[2] = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v4;
  v12 = *(v3 + 48);
  v13 = a1;
  v14 = a2;
  v15 = v6;
  v16 = v7;
  v17 = v5;
  return (*(v12 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v10);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 80);
  v8[2] = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v4;
  v6 = *(v3 + 64);
  v11 = *(v3 + 48);
  v12 = a1;
  v13 = a2;
  v14 = v6;
  v15 = v5;
  return (*(v11 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t BNNS.EmbeddingLayer.__allocating_init(input:output:dictionary:paddingIndex:maximumNorm:normType:scalesGradientByFrequency:filterParameters:)(_OWORD *a1, __int128 *a2, __int128 *a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a3[9];
  v67 = a3[8];
  v68 = v11;
  v69 = a3[10];
  v12 = a3[5];
  v63 = a3[4];
  v64 = v12;
  v13 = a3[7];
  v65 = a3[6];
  v66 = v13;
  v14 = a3[1];
  v59 = *a3;
  v60 = v14;
  v15 = a3[3];
  v61 = a3[2];
  v62 = v15;
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2[6];
  v55 = a2[7];
  v56 = v16;
  v19 = a2[10];
  v57 = v17;
  v58 = v19;
  v20 = a2[4];
  v53 = a2[5];
  v54 = v18;
  v21 = a2[2];
  v51 = a2[3];
  v52 = v20;
  v22 = a2[1];
  v48 = *a2;
  v49 = v22;
  v50 = v21;
  v23 = a1[5];
  *&v73[68] = a1[4];
  v24 = a1[2];
  *&v73[52] = a1[3];
  v25 = a1[6];
  *&v73[116] = a1[7];
  v26 = a1[9];
  *&v73[132] = a1[8];
  *&v73[148] = v26;
  *&v73[164] = a1[10];
  *&v73[84] = v23;
  *&v73[100] = v25;
  v27 = a1[1];
  *&v73[4] = *a1;
  *&v73[20] = v27;
  *&v73[36] = v24;
  v44 = *&v73[128];
  v45 = *&v73[144];
  v46 = *&v73[160];
  v40 = *&v73[64];
  v41 = *&v73[80];
  v42 = *&v73[96];
  v43 = *&v73[112];
  v36 = *v73;
  v37 = *&v73[16];
  v38 = *&v73[32];
  v35 = a5 & 1;
  v47 = *&v73[176];
  v39 = *&v73[48];
  v70 = a4;
  v71 = a9;
  v72 = a10;
  if (a8 == 1)
  {
    v28 = 0;
  }

  else
  {
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v34 = a11;
    v28 = &v31;
  }

  v29 = MEMORY[0x1B8CB1A60](&v35, v28);
  type metadata accessor for BNNS.EmbeddingLayer();
  result = swift_allocObject();
  if (v29)
  {
    *(result + 16) = v29;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.apply(batchSize:input:output:)(size_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 136);
  if (v4 && (v5 = *(a3 + 136)) != 0)
  {
    v7 = *(v3 + 16);
    BNNSNDArrayDescriptor.shape.getter(v14);
    v8 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(&v13);
    v9 = BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyBatch(v7, a1, v4, v8, v5, v9);
    if (!result)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

uint64_t BNNS.EmbeddingLayer.applyBackward(batchSize:input:output:outputGradient:generatingWeightsGradient:)(size_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4[8];
  v8 = a4[9];
  v9 = a4[6];
  *&out_delta.stride[5] = a4[7];
  *&out_delta.stride[7] = v7;
  v10 = a4[10];
  *&out_delta.data_type = v8;
  *&out_delta.table_data_type = v10;
  v11 = a4[4];
  v12 = a4[5];
  v13 = a4[2];
  *&out_delta.size[5] = a4[3];
  *&out_delta.size[7] = v11;
  *&out_delta.stride[1] = v12;
  *&out_delta.stride[3] = v9;
  v14 = *a4;
  *&out_delta.size[1] = a4[1];
  *&out_delta.size[3] = v13;
  v15 = a5[9];
  *&weights_delta.stride[7] = a5[8];
  *&weights_delta.data_type = v15;
  *&weights_delta.table_data_type = a5[10];
  *&out_delta.flags = v14;
  v16 = a5[5];
  *&weights_delta.size[7] = a5[4];
  *&weights_delta.stride[1] = v16;
  v17 = a5[7];
  *&weights_delta.stride[3] = a5[6];
  *&weights_delta.stride[5] = v17;
  v18 = a5[1];
  *&weights_delta.flags = *a5;
  *&weights_delta.size[1] = v18;
  v19 = a5[3];
  *&weights_delta.size[3] = a5[2];
  *&weights_delta.size[5] = v19;
  v20 = *(v5 + 16);
  v21 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v31);
  v22 = BNNS.Shape.batchStride.getter();
  v23 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v30);
  v24 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v29);
  v25 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardBatch(v20, a1, v21, v22, 0, 0, v23, v24, &out_delta, v25, &weights_delta, 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error()
{
  result = lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error;
  if (!lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error;
  if (!lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error);
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BNNS.EmbeddingLayer.apply(batchSize:input:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[17];
  v5 = *(a2 + 36);
  v6 = a2[19];
  v7 = *(a2 + 40);
  v8 = a3[17];
  v9 = *(a3 + 36);
  v10 = a3[19];
  v11 = *(a3 + 40);
  v12 = *(*v3 + 96);
  v28 = *a2;
  v29 = *(a2 + 1);
  v30 = *(a2 + 3);
  v31 = *(a2 + 5);
  v32 = *(a2 + 7);
  v33 = *(a2 + 9);
  v34 = *(a2 + 11);
  v35 = *(a2 + 13);
  v36 = *(a2 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a2 + 164);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *(a3 + 3);
  v17 = *(a3 + 5);
  v18 = *(a3 + 7);
  v19 = *(a3 + 9);
  v20 = *(a3 + 11);
  v21 = *(a3 + 13);
  v22 = *(a3 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 164);
  return v12(a1, &v28, &v14);
}

uint64_t dispatch thunk of BNNS.EmbeddingLayer.applyBackward(batchSize:input:output:outputGradient:generatingWeightsGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 104);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

uint64_t static BNNS.transpose(input:output:firstTransposeAxis:secondTransposeAxis:filterParameters:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a7 != 1)
  {
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v19 = a1[9];
    v53 = a1[8];
    v54 = v19;
    v55 = a1[10];
    v20 = a1[5];
    v49 = a1[4];
    v50 = v20;
    v21 = a1[7];
    v51 = a1[6];
    v52 = v21;
    v22 = a1[1];
    v45 = *a1;
    v46 = v22;
    v23 = a1[3];
    v47 = a1[2];
    v48 = v23;
    v24 = a2[9];
    v42 = a2[8];
    v43 = v24;
    v44 = a2[10];
    v25 = a2[5];
    v38 = a2[4];
    v39 = v25;
    v26 = a2[7];
    v40 = a2[6];
    v41 = v26;
    v27 = a2[1];
    v34 = *a2;
    v35 = v27;
    v28 = a2[3];
    v36 = a2[2];
    v37 = v28;
    result = MEMORY[0x1B8CB1E90](&v34, &v45, a3, a4, &v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v8 = a1[9];
  v53 = a1[8];
  v54 = v8;
  v55 = a1[10];
  v9 = a1[5];
  v49 = a1[4];
  v50 = v9;
  v10 = a1[7];
  v51 = a1[6];
  v52 = v10;
  v11 = a1[1];
  v45 = *a1;
  v46 = v11;
  v12 = a1[3];
  v47 = a1[2];
  v48 = v12;
  v13 = a2[9];
  v42 = a2[8];
  v43 = v13;
  v44 = a2[10];
  v14 = a2[5];
  v38 = a2[4];
  v39 = v14;
  v15 = a2[7];
  v40 = a2[6];
  v41 = v15;
  v16 = a2[1];
  v34 = *a2;
  v35 = v16;
  v17 = a2[3];
  v36 = a2[2];
  v37 = v17;
  result = MEMORY[0x1B8CB1E90](&v34, &v45, a3, a4, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:));
}

{
  return static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:));
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(a7 + 16))(a5, a7);
  result = (*(a6 + 16))(a4, a6);
  v18 = v16 - result;
  if (__OFSUB__(v16, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_12;
  }

  v20 = v18 / a2;
  result = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = MEMORY[0x1EEE9AC00](result);
    return v21(v29, a8);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(a8 + 16))(a5, a8);
  v15 = (*(*(a10 + 8) + 16))(a7);
  result = (*(a9 + 16))(a6, a9);
  v17 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = a2 * v17;
  if ((a2 * v17) >> 64 != (a2 * v17) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = __OFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result >= v20)
  {
    v21 = MEMORY[0x1EEE9AC00](a11);
    return (*(a10 + 16))(v21);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a6)
  {
    if (((a8 | a7) & 0x8000000000000000) == 0)
    {
      return a9(a3, a5, result);
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18 = v6[2];
  v17 = v6[3];
  v9 = v6[5];
  v20 = v6[4];
  v11 = v6[6];
  v10 = v6[7];
  v12 = v6[8];
  v13 = v6[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3);
  result = a6(v11, v10, v12, a1, v18, v17, v14, v20, v9, v15);
  *a2 = v13;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v3;
  v10 = *(v2 + 48);
  v11 = v4;
  v12 = v5;
  v13 = a1;
  v14 = *(v2 + 88);
  return (*(v10 + 24))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, MEMORY[0x1E6958C00]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, MEMORY[0x1E6958BF8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v9[5] = v7;
  v10 = *(v3 + 88);
  return (*(v5 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v4);
}

unint64_t lazy protocol witness table accessor for type vImage.Options and conformance vImage.Options()
{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance vImage.Options(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance vImage.Options@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance vImage.Options@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for vImage.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)()
{
  vImage.PixelBuffer.size.getter(v4);
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(v3);
  if (v4[0] == v3[0] && v4[1] == v3[1])
  {
    MEMORY[0x1EEE9AC00](v0);
    (*(v2 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:));
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v120 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)(v120 + 4, a2, a1, a2);
    if (v20 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v120 = v17;
LABEL_5:
  v21 = (*(a13 + 16))(a10);
  v119 = *(a12 + 32);
  v22 = (v119)(a9, a12);
  v23 = *(a14 + 32);
  result = (v23)(a11, a14);
  if ((v22 * result) >> 64 != (v22 * result) >> 63)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v21 != v22 * result)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v25 = *(a4 + 16);
  result = v119();
  if (v25 != result)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v115 = v25;
  v26 = *(a5 + 16);
  result = v23();
  if (v26 != result)
  {
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
    goto LABEL_119;
  }

  v116 = v26;
  v27 = v120[2];
  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = v120[4];
  v29 = v27 - 1;
  if (v27 != 1)
  {
    if (v27 >= 5)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v31 = vdupq_n_s64(v28);
      v32 = (v120 + 7);
      v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
      v34 = v31;
      do
      {
        v31 = vbslq_s8(vcgtq_s64(v31, v32[-1]), v31, v32[-1]);
        v34 = vbslq_s8(vcgtq_s64(v34, *v32), v34, *v32);
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      v35 = vbslq_s8(vcgtq_s64(v31, v34), v31, v34);
      v36 = vextq_s8(v35, v35, 8uLL).u64[0];
      v28 = vbsl_s8(vcgtd_s64(v35.i64[0], v36), *v35.i8, v36);
      if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = 1;
    }

    v37 = v27 - v30;
    v38 = &v120[v30 + 4];
    do
    {
      v40 = *v38++;
      v39 = v40;
      if (v28 <= v40)
      {
        v28 = v39;
      }

      --v37;
    }

    while (v37);
  }

LABEL_20:
  if (v28 < 0)
  {
    v41 = __OFSUB__(0, v28);
    v28 = -v28;
    if (v41)
    {
      goto LABEL_125;
    }
  }

  if (v28 >= 0x8000)
  {
    goto LABEL_110;
  }

LABEL_23:
  v42 = a6;
  if (a6 < 0)
  {
    v42 = -a6;
    if (__OFSUB__(0, a6))
    {
      goto LABEL_124;
    }
  }

  if (v42 > 0x7FFFFFFF)
  {
    goto LABEL_115;
  }

  v43 = *(a4 + 16);
  if (v43)
  {
    v44 = *(a4 + 32);
    v45 = v43 - 1;
    if (v43 == 1)
    {
      goto LABEL_37;
    }

    if (v43 >= 5)
    {
      v46 = v45 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v47 = vdupq_n_s64(v44);
      v48 = (a4 + 56);
      v49 = v45 & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v47;
      do
      {
        v47 = vbslq_s8(vcgtq_s64(v47, v48[-1]), v47, v48[-1]);
        v50 = vbslq_s8(vcgtq_s64(v50, *v48), v50, *v48);
        v48 += 2;
        v49 -= 4;
      }

      while (v49);
      v51 = vbslq_s8(vcgtq_s64(v47, v50), v47, v50);
      v52 = vextq_s8(v51, v51, 8uLL).u64[0];
      v44 = vbsl_s8(vcgtd_s64(v51.i64[0], v52), *v51.i8, v52);
      if (v45 == (v45 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v46 = 1;
    }

    v53 = v43 - v46;
    v54 = (a4 + 8 * v46 + 32);
    do
    {
      v56 = *v54++;
      v55 = v56;
      if (v44 <= v56)
      {
        v44 = v55;
      }

      --v53;
    }

    while (v53);
LABEL_37:
    if (v44 < 0)
    {
      v41 = __OFSUB__(0, v44);
      v44 = -v44;
      if (v41)
      {
        goto LABEL_126;
      }
    }

    if (v44 >= 0x8000)
    {
      goto LABEL_116;
    }
  }

  v57 = *(a5 + 16);
  if (!v57)
  {
    goto LABEL_54;
  }

  v58 = *(a5 + 32);
  v59 = v57 - 1;
  if (v57 != 1)
  {
    if (v57 >= 5)
    {
      v60 = v59 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v61 = vdupq_n_s64(v58);
      v62 = (a5 + 56);
      v63 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      v64 = v61;
      do
      {
        v61 = vbslq_s8(vcgtq_s64(v61, v62[-1]), v61, v62[-1]);
        v64 = vbslq_s8(vcgtq_s64(v64, *v62), v64, *v62);
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      v65 = vbslq_s8(vcgtq_s64(v61, v64), v61, v64);
      v66 = vextq_s8(v65, v65, 8uLL).u64[0];
      v58 = vbsl_s8(vcgtd_s64(v65.i64[0], v66), *v65.i8, v66);
      if (v59 == (v59 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v60 = 1;
    }

    v67 = v57 - v60;
    v68 = (a5 + 8 * v60 + 32);
    do
    {
      v70 = *v68++;
      v69 = v70;
      if (v58 <= v70)
      {
        v58 = v69;
      }

      --v67;
    }

    while (v67);
  }

LABEL_51:
  if (v58 < 0)
  {
    v41 = __OFSUB__(0, v58);
    v58 = -v58;
    if (v41)
    {
      goto LABEL_127;
    }
  }

  if (v58 > 0x7FFFFFFF)
  {
    goto LABEL_117;
  }

LABEL_54:
  v114 = v23;
  divisor = a6;
  v112 = a5;
  v113 = a4;
  type metadata accessor for vImage.PixelBuffer();
  v71 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v72 = *(v71 + 16);
  if (v72)
  {
    v128 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
    v73 = 32;
    v74 = v128;
    do
    {
      v121 = *(v71 + v73 + 16);
      *src_planesa = *(v71 + v73);
      v75 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
      inited = swift_initStackObject();
      *(inited + 32) = *src_planesa;
      *(inited + 48) = v121;
      v77 = *(inited + 48);
      *v75 = *(inited + 32);
      v75[1] = v77;
      swift_setDeallocating();
      v128 = v74;
      v79 = *(v74 + 2);
      v78 = *(v74 + 3);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
        v74 = v128;
      }

      *(v74 + 2) = v79 + 1;
      *&v74[8 * v79 + 32] = v75;
      v73 += 32;
      --v72;
    }

    while (v72);
  }

  else
  {

    v74 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for vImage.PixelBuffer();
  v80 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v81 = *(v80 + 16);
  if (v81)
  {
    v128 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
    v82 = 32;
    v83 = v128;
    do
    {
      v122 = *(v80 + v82 + 16);
      *src_planesb = *(v80 + v82);
      v84 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
      v85 = swift_initStackObject();
      *(v85 + 32) = *src_planesb;
      *(v85 + 48) = v122;
      v86 = *(v85 + 48);
      *v84 = *(v85 + 32);
      v84[1] = v86;
      swift_setDeallocating();
      v128 = v83;
      v88 = *(v83 + 2);
      v87 = *(v83 + 3);
      if (v88 >= v87 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
        v83 = v128;
      }

      *(v83 + 2) = v88 + 1;
      *&v83[8 * v88 + 32] = v84;
      v82 += 32;
      --v81;
    }

    while (v81);
  }

  else
  {

    v83 = MEMORY[0x1E69E7CC0];
  }

  result = v119();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_118;
  }

  v89 = result;
  if (HIDWORD(result))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  result = v114();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (HIDWORD(result))
  {
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v123 = result;
  src_planes = v89;
  v90 = v120[2];
  if (v90)
  {
    v128 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
    result = v120;
    v91 = 32;
    v92 = v128;
    while (1)
    {
      v93 = *(result + v91);
      if (v93 < -32768)
      {
        break;
      }

      if (v93 >= 0x8000)
      {
        goto LABEL_105;
      }

      v128 = v92;
      v95 = *(v92 + 2);
      v94 = *(v92 + 3);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
        result = v120;
        v92 = v128;
      }

      *(v92 + 2) = v95 + 1;
      *&v92[2 * v95 + 32] = v93;
      v91 += 8;
      if (!--v90)
      {

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v92 = MEMORY[0x1E69E7CC0];
LABEL_81:
  if (divisor < 0xFFFFFFFF80000000)
  {
    goto LABEL_122;
  }

  if (divisor > 0x7FFFFFFF)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    return result;
  }

  v96 = MEMORY[0x1E69E7CC0];
  if (v115)
  {
    v128 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
    v98 = v115;
    v97 = v116;
    v96 = v128;
    v99 = (v113 + 32);
    while (1)
    {
      v101 = *v99++;
      v100 = v101;
      if (v101 < -32768)
      {
        break;
      }

      if (v100 >= 0x8000)
      {
        goto LABEL_107;
      }

      v128 = v96;
      v103 = *(v96 + 2);
      v102 = *(v96 + 3);
      if (v103 >= v102 >> 1)
      {
        v104 = v98;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
        v98 = v104;
        v97 = v116;
        v96 = v128;
      }

      *(v96 + 2) = v103 + 1;
      *&v96[2 * v103 + 32] = v100;
      if (!--v98)
      {
        goto LABEL_92;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v97 = v116;
LABEL_92:
  v105 = MEMORY[0x1E69E7CC0];
  if (v97)
  {
    v128 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
    v106 = v116;
    v105 = v128;
    v107 = (v112 + 32);
    while (1)
    {
      v109 = *v107++;
      v108 = v109;
      if (v109 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v108 > 0x7FFFFFFF)
      {
        goto LABEL_109;
      }

      v128 = v105;
      v111 = *(v105 + 2);
      v110 = *(v105 + 3);
      if (v111 >= v110 >> 1)
      {
        v117 = v106;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        v106 = v117;
        v105 = v128;
      }

      *(v105 + 2) = v111 + 1;
      *&v105[4 * v111 + 32] = v108;
      if (!--v106)
      {
        goto LABEL_99;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_99:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2), 0, v74);
  }

  v128 = v74;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2), 0, v83);
  }

  v127 = v83;

  vImageMatrixMultiply_Planar8(v74 + 4, v83 + 4, src_planes, v123, v92 + 16, divisor, v96 + 16, v105 + 8, 0);

  $defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(&v128, &v127);
}

uint64_t specialized Sequence<>.max()(uint64_t a1, double a2, uint8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    LOBYTE(v4) = 0;
    return v4 | ((v3 == 0) << 8);
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (a1 + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vmaxq_u8(v8, v9[-1]);
        a3 = vmaxq_u8(a3, *v9);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vmaxq_u8(v8, a3);
      v11.i8[0] = vmaxvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        return v4 | ((v3 == 0) << 8);
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
LABEL_17:
        v16 = v3 - v6;
        v17 = (v6 + a1 + 32);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (v4 <= v19)
          {
            LOBYTE(v4) = v18;
          }

          --v16;
        }

        while (v16);
        return v4 | ((v3 == 0) << 8);
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + a1 + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmax_u16((*&v12 & 0xFF00FF00FF00FFLL), *a3.i8);
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vmaxv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4 | ((v3 == 0) << 8);
    }

    goto LABEL_17;
  }

  return v4 | ((v3 == 0) << 8);
}

void vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:)()
{
  vImage.PixelBuffer.size.getter(v4);
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(v3);
  if (v4[0] == v3[0] && v4[1] == v3[1])
  {
    MEMORY[0x1EEE9AC00](v0);
    (*(v2 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:));
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v45 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)((v45 + 8), a2, a1, a2);
    if (v19 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v45 = v16;
LABEL_5:
  v20 = (*(a12 + 16))(a9);
  v50 = *(a11 + 32);
  v21 = v50(a8, a11);
  v49 = *(a13 + 32);
  result = (v49)(a10, a13);
  if ((v21 * result) >> 64 != (v21 * result) >> 63)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v20 != v21 * result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = *(a4 + 16);
  result = v50(a8, a11);
  if (v23 != result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24 = *(a5 + 16);
  result = v49();
  if (v24 != result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for vImage.PixelBuffer();
  v25 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v26 = *(v25 + 16);
  v47 = a4;
  v48 = a5;
  v46 = a8;
  if (v26)
  {
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = 32;
    v28 = v56;
    do
    {
      v51 = *(v25 + v27 + 16);
      v53 = *(v25 + v27);
      v29 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
      inited = swift_initStackObject();
      *(inited + 32) = v53;
      *(inited + 48) = v51;
      v31 = *(inited + 48);
      *v29 = *(inited + 32);
      v29[1] = v31;
      swift_setDeallocating();
      v56 = v28;
      v33 = *(v28 + 2);
      v32 = *(v28 + 3);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v28 = v56;
      }

      *(v28 + 2) = v33 + 1;
      *&v28[8 * v33 + 32] = v29;
      v27 += 32;
      --v26;
    }

    while (v26);

    a4 = v47;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for vImage.PixelBuffer();
  v34 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v35 = *(v34 + 16);
  if (v35)
  {
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = 32;
    v37 = v56;
    do
    {
      v52 = *(v34 + v36 + 16);
      v54 = *(v34 + v36);
      v38 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
      v39 = swift_initStackObject();
      *(v39 + 32) = v54;
      *(v39 + 48) = v52;
      v40 = *(v39 + 48);
      *v38 = *(v39 + 32);
      v38[1] = v40;
      swift_setDeallocating();
      v56 = v37;
      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v37 = v56;
      }

      *(v37 + 2) = v42 + 1;
      *&v37[8 * v42 + 32] = v38;
      v36 += 32;
      --v35;
    }

    while (v35);

    a4 = v47;
    a5 = v48;
    a8 = v46;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  result = v50(a8, a11);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v43 = result;
  if (HIDWORD(result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = v49();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v44 = result;
  if (HIDWORD(result))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2), 0, v28);
  }

  v56 = v28;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2), 0, v37);
  }

  v55 = v37;

  vImageMatrixMultiply_PlanarF(v28 + 4, v37 + 4, v43, v44, v45 + 8, (a4 + 32), (a5 + 32), 0);

  $defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(&v56, &v55);
}

uint64_t $defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      v6 = *(v3 + v5);
      if (v6)
      {
        MEMORY[0x1B8CB2C50](v6, -1, -1);
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = *a2;
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = 32;
    do
    {
      v10 = *(v7 + v9);
      if (v10)
      {
        MEMORY[0x1B8CB2C50](v10, -1, -1);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

vImage_Error vImage.PixelBuffer<>.multiply(by:divisor:preBias:postBias:destination:)(uint64_t a1, uint64_t divisor, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v7)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v7 != v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 != v11)
  {
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
    goto LABEL_50;
  }

  v12 = a1;
  if (a1 < 0)
  {
    v12 = -a1;
    if (__OFSUB__(0, a1))
    {
      goto LABEL_58;
    }
  }

  if (v12 >= 0x8000)
  {
    goto LABEL_46;
  }

  v13 = divisor;
  if (divisor < 0)
  {
    v13 = -divisor;
    if (__OFSUB__(0, divisor))
    {
      goto LABEL_59;
    }
  }

  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_47;
  }

  v14 = a3;
  if (a3 < 0)
  {
    v14 = -a3;
    if (__OFSUB__(0, a3))
    {
      goto LABEL_60;
    }
  }

  if (v14 >= 0x8000)
  {
    goto LABEL_48;
  }

  v15 = a4;
  if (a4 < 0)
  {
    v15 = -a4;
    if (__OFSUB__(0, a4))
    {
LABEL_61:
      __break(1u);
    }
  }

  if (v15 > 0x7FFFFFFF)
  {
    goto LABEL_49;
  }

  if (a3 < -32768)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a3 >= 0x8000)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  pre_bias = a3;
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  post_bias = a4;
  v16 = v6[4];
  v17 = v6[7];
  v27[0] = v16;
  v27[1] = v8;
  v27[2] = v7;
  v27[3] = v17;
  v18 = v9[4];
  v19 = v9[7];
  v26[0] = v18;
  v26[1] = v8;
  v26[2] = v7;
  v26[3] = v19;
  srcs = v27;
  dests = v26;
  if (a1 < -32768)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a1 >= 0x8000)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = a1;
  if (divisor < 0xFFFFFFFF80000000)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (divisor > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  return vImageMatrixMultiply_Planar8(&srcs, &dests, 1u, 1u, &v23, divisor, &pre_bias, &post_bias, 0);
}

uint64_t vImage.PixelBuffer<>.multiply(by:divisor:preBias:postBias:destination:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11)
{
  v75 = *MEMORY[0x1E69E9840];
  v19 = *v12;
  if (!*(*v12 + 16))
  {
    goto LABEL_73;
  }

  v20 = *(v19 + 48);
  if (v20 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v14 = *(v19 + 40);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!v20)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (!v14)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v15 = *a11;
  if (!*(*a11 + 16))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = *(v15 + 48);
  if (v21 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v11 = *(v15 + 40);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!v21)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v11)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v20 != v21)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v14 != v11)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v65 = *v12;
  v66 = *(v19 + 48);
  v71 = a5;
  v18 = a9;
  v13 = a2;
  v69 = a8;
  v70 = a7;
  v17 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  v68 = 4;
  *(inited + 16) = xmmword_1B7E770E0;
  v67 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = v13;
  v63 = a3;
  v64 = v13;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v16 = v17;
  v62 = a4;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1B7E770E0;
  *(v26 + 32) = v17;
  *(v26 + 40) = v70;
  *(v26 + 48) = v69;
  *(v26 + 56) = a9;
  v11 = *(inited + 16);
  if (!v11)
  {
    goto LABEL_27;
  }

  v27 = *(inited + 32);
  v28 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_24;
  }

  if (v11 >= 5)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v30 = vdupq_n_s64(v27);
    v31 = (inited + 56);
    v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = v30;
    do
    {
      v30 = vbslq_s8(vcgtq_s64(v30, v31[-1]), v30, v31[-1]);
      v33 = vbslq_s8(vcgtq_s64(v33, *v31), v33, *v31);
      v31 += 2;
      v32 -= 4;
    }

    while (v32);
    v34 = vbslq_s8(vcgtq_s64(v30, v33), v30, v33);
    v35 = vextq_s8(v34, v34, 8uLL).u64[0];
    v27 = vbsl_s8(vcgtd_s64(v34.i64[0], v35), *v34.i8, v35);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = 1;
  }

  v11 -= v29;
  v36 = (inited + 8 * v29 + 32);
  do
  {
    v38 = *v36++;
    v37 = v38;
    if (v27 <= v38)
    {
      v27 = v37;
    }

    --v11;
  }

  while (v11);
LABEL_24:
  if (v27 < 0)
  {
    v39 = __OFSUB__(0, v27);
    v27 = -v27;
    if (v39)
    {
LABEL_119:
      __break(1u);
    }
  }

  if (v27 >= 0x8000)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_27:
  v40 = v71;
  if (v71 < 0)
  {
    v40 = -v71;
    if (__OFSUB__(0, v71))
    {
      goto LABEL_116;
    }
  }

  v11 = 0x7FFFFFFFLL;
  if (v40 > 0x7FFFFFFF)
  {
    goto LABEL_85;
  }

  if (v17 <= v70)
  {
    v41 = v70;
  }

  else
  {
    v41 = v17;
  }

  if (v41 <= v69)
  {
    v41 = v69;
  }

  if (v41 <= a9)
  {
    v41 = a9;
  }

  if (v41 < 0)
  {
    v39 = __OFSUB__(0, v41);
    v41 = -v41;
    if (v39)
    {
      goto LABEL_117;
    }
  }

  if (v41 >= 0x8000)
  {
    goto LABEL_86;
  }

  v18 = a10;
  v42 = a10;
  if (a10 < 0)
  {
    v42 = -a10;
    if (__OFSUB__(0, a10))
    {
      goto LABEL_118;
    }
  }

  v11 = 0x7FFFFFFFLL;
  if (v42 > 0x7FFFFFFF)
  {
    goto LABEL_87;
  }

  v68 = a9;
  v43 = *(v65 + 56);
  src.data = *(v65 + 32);
  src.height = v14;
  src.width = v66;
  src.rowBytes = v43;
  v44 = *(v15 + 56);
  dest.data = *(v15 + 32);
  dest.height = v14;
  dest.width = v66;
  dest.rowBytes = v44;
  v14 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v45 = a1;
  if (a1 < -32768)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (a1 < 0x8000)
  {
    v46 = v72;
    v15 = *(v72 + 16);
    v11 = *(v72 + 24);
    v13 = v15 + 1;
    if (v15 < v11 >> 1)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1);
  v45 = v67;
  v46 = v72;
LABEL_46:
  *(v46 + 16) = v13;
  v47 = v46 + 2 * v15;
  *(v47 + 32) = v45;
  v48 = v64;
  if (v64 < -32768)
  {
    __break(1u);
  }

  else if (v64 < 0x8000)
  {
    v47 = *(v46 + 24);
    v17 = v15 + 2;
    if (v13 < v47 >> 1)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_93:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v17, 1);
  v48 = v64;
  v46 = v72;
LABEL_49:
  *(v46 + 16) = v17;
  *(v46 + 2 * v13 + 32) = v48;
  v49 = v63;
  if (v63 < -32768)
  {
    __break(1u);
  }

  else if (v63 < 0x8000)
  {
    v15 = *(v46 + 16);
    v46 = *(v46 + 24);
    v13 = v15 + 1;
    if (v15 < v46 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_96:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v13, 1);
  v49 = v63;
LABEL_52:
  v50 = v72;
  *(v72 + 16) = v13;
  v51 = v72 + 2 * v15;
  *(v51 + 32) = v49;
  v52 = v62;
  if (v62 < -32768)
  {
    __break(1u);
  }

  else if (v62 < 0x8000)
  {
    v51 = *(v72 + 24);
    v17 = v15 + 2;
    if (v13 < v51 >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

  __break(1u);
LABEL_99:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v17, 1);
  v52 = v62;
  v50 = v72;
LABEL_55:
  *(v50 + 16) = v17;
  *(v50 + 32 + 2 * v13) = v52;

  if (v71 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (v71 > 0x7FFFFFFF)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v72 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  if (v16 < -32768)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v16 < 0x8000)
  {
    v54 = v14;
    v14 = *(v14 + 16);
    v53 = *(v72 + 24);
    v13 = v14 + 1;
    if (v14 < v53 >> 1)
    {
      goto LABEL_60;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v13, 1);
  v54 = v72;
LABEL_60:
  *(v54 + 16) = v13;
  v55 = v54 + 2 * v14;
  *(v55 + 32) = v16;
  v56 = v70;
  if (v70 < -32768)
  {
    __break(1u);
  }

  else if (v70 < 0x8000)
  {
    v55 = *(v54 + 24);
    v16 = v14 + 2;
    if (v13 < v55 >> 1)
    {
      goto LABEL_63;
    }

    goto LABEL_107;
  }

  __break(1u);
LABEL_107:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v16, 1);
  v56 = v70;
  v54 = v72;
LABEL_63:
  *(v54 + 16) = v16;
  *(v54 + 2 * v13 + 32) = v56;
  v57 = v69;
  if (v69 < -32768)
  {
    __break(1u);
  }

  else if (v69 < 0x8000)
  {
    v13 = *(v54 + 16);
    v54 = *(v54 + 24);
    v14 = v13 + 1;
    if (v13 < v54 >> 1)
    {
      goto LABEL_66;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_110:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v14, 1);
  v57 = v69;
LABEL_66:
  v58 = v72;
  *(v72 + 16) = v14;
  v59 = v72 + 2 * v13;
  *(v59 + 32) = v57;
  v60 = v68;
  if (v68 < -32768)
  {
    __break(1u);
  }

  else if (v68 < 0x8000)
  {
    v59 = *(v72 + 24);
    v13 += 2;
    if (v14 < v59 >> 1)
    {
      goto LABEL_69;
    }

    goto LABEL_113;
  }

  __break(1u);
LABEL_113:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v13, 1);
  v60 = v68;
  v58 = v72;
LABEL_69:
  *(v58 + 16) = v13;
  *(v58 + 32 + 2 * v14) = v60;
  swift_setDeallocating();
  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_115;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, (v50 + 32), v71, (v58 + 32), v18, 0);
}

uint64_t vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  if (!*(*v13 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = *a11;
  if (!*(*a11 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v17 + 48);
  if (v18 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v17 + 40);
  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 != v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 == v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7E770E0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1B7E770E0;
    *(v27 + 32) = a7;
    *(v27 + 40) = a8;
    *(v27 + 48) = a9;
    *(v27 + 56) = a10;
    MEMORY[0x1EEE9AC00](v27);
    (*(a13 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:));
    swift_setDeallocating();
    return swift_setDeallocating();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t closure #1 in vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v95 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)(v16 + 4, a2, a1, a2);
    if (v17 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = v13;
LABEL_5:
  if ((*(a10 + 16))(a9) != 16)
  {
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

  v18 = v16[2];
  v19 = a4;
  if (!v18)
  {
    goto LABEL_20;
  }

  v20 = v16[4];
  v21 = v18 - 1;
  if (v18 != 1)
  {
    if (v18 >= 5)
    {
      v22 = v21 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v23 = vdupq_n_s64(v20);
      v24 = (v16 + 7);
      v25 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = v23;
      do
      {
        v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v23, v24[-1]);
        v26 = vbslq_s8(vcgtq_s64(v26, *v24), v26, *v24);
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      v27 = vbslq_s8(vcgtq_s64(v23, v26), v23, v26);
      v28 = vextq_s8(v27, v27, 8uLL).u64[0];
      v20 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
      if (v21 == (v21 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 1;
    }

    v29 = v18 - v22;
    v30 = &v16[v22 + 4];
    do
    {
      v32 = *v30++;
      v31 = v32;
      if (v20 <= v32)
      {
        v20 = v31;
      }

      --v29;
    }

    while (v29);
  }

LABEL_17:
  if (v20 < 0)
  {
    v33 = __OFSUB__(0, v20);
    v20 = -v20;
    if (v33)
    {
      goto LABEL_97;
    }
  }

  if (v20 >= 0x8000)
  {
    goto LABEL_87;
  }

LABEL_20:
  v34 = a4;
  if (a4 < 0)
  {
    v34 = -a4;
    if (__OFSUB__(0, a4))
    {
      goto LABEL_96;
    }
  }

  if (v34 > 0x7FFFFFFF)
  {
    goto LABEL_89;
  }

  v35 = *(a5 + 16);
  if (v35)
  {
    v36 = *(a5 + 32);
    v37 = v35 - 1;
    if (v35 == 1)
    {
      goto LABEL_34;
    }

    if (v35 >= 5)
    {
      v38 = v37 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v39 = vdupq_n_s64(v36);
      v40 = (a5 + 56);
      v41 = v37 & 0xFFFFFFFFFFFFFFFCLL;
      v42 = v39;
      do
      {
        v39 = vbslq_s8(vcgtq_s64(v39, v40[-1]), v39, v40[-1]);
        v42 = vbslq_s8(vcgtq_s64(v42, *v40), v42, *v40);
        v40 += 2;
        v41 -= 4;
      }

      while (v41);
      v43 = vbslq_s8(vcgtq_s64(v39, v42), v39, v42);
      v44 = vextq_s8(v43, v43, 8uLL).u64[0];
      v36 = vbsl_s8(vcgtd_s64(v43.i64[0], v44), *v43.i8, v44);
      if (v37 == (v37 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v38 = 1;
    }

    v45 = v35 - v38;
    v46 = (a5 + 8 * v38 + 32);
    do
    {
      v48 = *v46++;
      v47 = v48;
      if (v36 <= v48)
      {
        v36 = v47;
      }

      --v45;
    }

    while (v45);
LABEL_34:
    if (v36 < 0)
    {
      v33 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v33)
      {
        goto LABEL_98;
      }
    }

    if (v36 >= 0x8000)
    {
      goto LABEL_90;
    }
  }

  v49 = *(a6 + 16);
  if (!v49)
  {
    goto LABEL_51;
  }

  v50 = *(a6 + 32);
  v51 = v49 - 1;
  if (v49 != 1)
  {
    if (v49 >= 5)
    {
      v52 = v51 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v53 = vdupq_n_s64(v50);
      v54 = (a6 + 56);
      v55 = v51 & 0xFFFFFFFFFFFFFFFCLL;
      v56 = v53;
      do
      {
        v53 = vbslq_s8(vcgtq_s64(v53, v54[-1]), v53, v54[-1]);
        v56 = vbslq_s8(vcgtq_s64(v56, *v54), v56, *v54);
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      v57 = vbslq_s8(vcgtq_s64(v53, v56), v53, v56);
      v58 = vextq_s8(v57, v57, 8uLL).u64[0];
      v50 = vbsl_s8(vcgtd_s64(v57.i64[0], v58), *v57.i8, v58);
      if (v51 == (v51 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_48;
      }
    }

    else
    {
      v52 = 1;
    }

    v59 = v49 - v52;
    v60 = (a6 + 8 * v52 + 32);
    do
    {
      v62 = *v60++;
      v61 = v62;
      if (v50 <= v62)
      {
        v50 = v61;
      }

      --v59;
    }

    while (v59);
  }

LABEL_48:
  if (v50 < 0)
  {
    v33 = __OFSUB__(0, v50);
    v50 = -v50;
    if (v33)
    {
LABEL_99:
      __break(1u);
    }
  }

  if (v50 > 0x7FFFFFFF)
  {
    goto LABEL_91;
  }

LABEL_51:
  v63 = *a7;
  if (!*(*a7 + 16))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v64 = *(v63 + 48);
  *&src.data = *(v63 + 32);
  *&src.width = v64;
  v65 = *a8;
  if (!*(*a8 + 16))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v66 = *(v65 + 48);
  *&dest.data = *(v65 + 32);
  *&dest.width = v66;
  if (v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v67 = 4;
    v68 = v13;
    while (1)
    {
      v69 = v16[v67];
      if (v69 < -32768)
      {
        break;
      }

      if (v69 >= 0x8000)
      {
        goto LABEL_82;
      }

      v71 = v68[2];
      v70 = v68[3];
      if (v71 >= v70 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
      }

      v68[2] = v71 + 1;
      *(v68 + v71 + 16) = v69;
      ++v67;
      if (!--v18)
      {

        v19 = a4;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_62:
  if (v19 < 0xFFFFFFFF80000000)
  {
    goto LABEL_94;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v72 = *(a5 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  if (v72)
  {
    v91 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
    v73 = v91;
    v74 = (a5 + 32);
    v75 = a6;
    while (1)
    {
      v77 = *v74++;
      v76 = v77;
      if (v77 < -32768)
      {
        break;
      }

      if (v76 >= 0x8000)
      {
        goto LABEL_84;
      }

      v79 = *(v91 + 16);
      v78 = *(v91 + 24);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
        v75 = a6;
      }

      *(v91 + 16) = v79 + 1;
      *(v91 + 2 * v79 + 32) = v76;
      if (!--v72)
      {
        goto LABEL_73;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v75 = a6;
LABEL_73:
  v80 = *(v75 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v92 = MEMORY[0x1E69E7CC0];
    v82 = v75;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
    v81 = v92;
    v83 = (v82 + 32);
    while (1)
    {
      v85 = *v83++;
      v84 = v85;
      if (v85 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v84 > 0x7FFFFFFF)
      {
        goto LABEL_86;
      }

      v87 = *(v92 + 16);
      v86 = *(v92 + 24);
      if (v87 >= v86 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
      }

      *(v92 + 16) = v87 + 1;
      *(v92 + 4 * v87 + 32) = v84;
      if (!--v80)
      {
        goto LABEL_80;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_80:
  vImageMatrixMultiply_ARGB8888(&src, &dest, v68 + 16, a4, (v73 + 32), (v81 + 32), 0);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, float a2, float a3, float a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 != v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v7 != v10)
  {
    goto LABEL_25;
  }

  post_bias = a4;
  pre_bias = a3;
  v11 = v5[4];
  v12 = v5[7];
  v22[0] = v11;
  v22[1] = v7;
  v22[2] = v6;
  v22[3] = v12;
  v13 = v8[4];
  v14 = v8[7];
  v21[0] = v13;
  v21[1] = v7;
  v21[2] = v6;
  v21[3] = v14;
  srcs = v22;
  dests = v21;
  v18 = a2;
  return vImageMatrixMultiply_PlanarF(&srcs, &dests, 1u, 1u, &v18, &pre_bias, &post_bias, 0);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = *v17;
  if (!*(*v17 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18[6];
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v18[5];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21[6];
  if (v22 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v21[5];
  if (v23 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 != v22)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v20 != v23)
  {
    goto LABEL_25;
  }

  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v31[0] = a6;
  v31[1] = a7;
  v31[2] = a8;
  v31[3] = a9;
  v24 = v18[4];
  v25 = v18[7];
  src.data = v24;
  src.height = v20;
  src.width = v19;
  src.rowBytes = v25;
  v26 = v21[4];
  v27 = v21[7];
  dest.data = v26;
  dest.height = v20;
  dest.width = v19;
  dest.rowBytes = v27;
  return vImageMatrixMultiply_ARGBFFFFToPlanarF(&src, &dest, v32, v31, a10, 0);
}

uint64_t vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v13 = v12;
  v36[16] = *MEMORY[0x1E69E9840];
  if ((*(a4 + 16))(a3, a4) != 16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = *v13;
  if (!*(*v13 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26[6];
  if (v27 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v26[5];
  if (v28 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = *(v29 + 48);
  if (v30 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = *(v29 + 40);
  if (v31 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v27 != v30)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v28 != v31)
  {
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E770E0;
  *(inited + 32) = a5;
  *(inited + 36) = a6;
  *(inited + 40) = a7;
  *(inited + 44) = a8;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1B7E770E0;
  *(v33 + 32) = a9;
  *(v33 + 36) = a10;
  *(v33 + 40) = a11;
  *(v33 + 44) = a12;
  v34 = v26[7];
  v36[0] = v26[4];
  v36[1] = v28;
  v36[2] = v27;
  v36[3] = v34;
  closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(v36, a2, a1, inited, v33, a3, a4);
  swift_setDeallocating();
  return swift_setDeallocating();
}

uint64_t closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
  }

  v8 = *(v7 + 48);
  v10[0] = *(v7 + 32);
  v10[1] = v8;
  v12 = a1;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  return (*(a7 + 24))(partial apply for closure #1 in closure #1 in closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:), v11, MEMORY[0x1E69E7CA8] + 8, a6, a7);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, int32x4_t a2, int32x4_t a3, int8x16_t a4, int32x4_t a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v40 = *MEMORY[0x1E69E9840];
  v21 = *v20;
  if (!*(*v20 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21[6];
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v21[5];
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24[6];
  if (v25 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v24[5];
  if (v26 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 != v25)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v23 != v26)
  {
    goto LABEL_25;
  }

  v39[0] = a6;
  v39[1] = a7;
  v39[2] = a8;
  v39[3] = a9;
  v38[0] = a10;
  v38[1] = a11;
  v38[2] = a12;
  v38[3] = a13;
  *&v27 = vzip1q_s32(a2, a3).u64[0];
  *(&v27 + 1) = vextq_s8(a4, vzip1q_s32(*&a4, a5), 8uLL).i64[1];
  *&v28 = vtrn2q_s32(a2, a3).u64[0];
  *(&v28 + 1) = __PAIR64__(a5.u32[1], a4.u32[1]);
  v37[0] = v27;
  v37[1] = v28;
  *&v27 = vzip2q_s32(a2, a3).u64[0];
  *(&v27 + 1) = __PAIR64__(a5.u32[2], a4.u32[2]);
  *&v29 = vuzp2q_s32(vuzp2q_s32(a2, a3), a2).u64[0];
  *(&v29 + 1) = __PAIR64__(a5.u32[3], a4.u32[3]);
  v37[2] = v27;
  v37[3] = v29;
  v30 = v21[4];
  v31 = v21[7];
  src.data = v30;
  src.height = v23;
  src.width = v22;
  src.rowBytes = v31;
  v32 = v24[4];
  v33 = v24[7];
  dest.data = v32;
  dest.height = v23;
  dest.width = v22;
  dest.rowBytes = v33;
  return vImageMatrixMultiply_ARGBFFFF(&src, &dest, v37, v39, v38, 0);
}

const float *partial apply for closure #1 in closure #1 in closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(const float *matrix)
{
  if (matrix)
  {
    return vImageMatrixMultiply_ARGBFFFF(*(v1 + 16), *(v1 + 24), matrix, (*(v1 + 32) + 32), (*(v1 + 40) + 32), 0);
  }

  __break(1u);
  return matrix;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t vImage.PixelBuffer<>.extractChannel(at:destination:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E6958920];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958928];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958918];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

uint64_t vImage.PixelBuffer<>._extractChannel<A>(channelIndex:destination:extractFunc:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *, uint64_t, void))
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  vImage.PixelBuffer.size.getter(&v18);
  v5 = v18;
  v4 = v19;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&v14);
  if (v5 != v14 || v4 != v15)
  {
LABEL_6:
    __break(1u);
  }

  v14 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v19 = v9;
  v20 = v10;
  v21 = v11;
  return a3(&v14, &v18, a1, 0);
}

uint64_t vImage.PixelBuffer<>.extractChannel(at:destination:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, void *, uint64_t, void))
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 > 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 != v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v6 != v9)
  {
    goto LABEL_27;
  }

  v10 = v4[4];
  v11 = v4[7];
  v16[0] = v10;
  v16[1] = v6;
  v16[2] = v5;
  v16[3] = v11;
  v12 = v7[4];
  v13 = v7[7];
  v15[0] = v12;
  v15[1] = v6;
  v15[2] = v5;
  v15[3] = v13;
  return a3(v16, v15, a1, 0);
}

double BNNS.ActivationFunction.bnnsActivation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      v3 = HIDWORD(v2);
      v4 = 5;
      break;
    case 2:
      LODWORD(v3) = 2143289344;
      v4 = 7;
      break;
    case 3:
      v3 = HIDWORD(v2);
      v4 = 8;
      break;
    case 4:
      v3 = HIDWORD(v2);
      v4 = 12;
      break;
    case 5:
    case 0x11:
      v3 = HIDWORD(v2);
      v4 = 30;
      break;
    case 6:
      v3 = HIDWORD(v2);
      v4 = 13;
      break;
    case 7:
      v3 = HIDWORD(v2);
      v4 = 14;
      break;
    case 8:
      v3 = HIDWORD(v2);
      v4 = 15;
      break;
    case 9:
      v3 = HIDWORD(v2);
      v4 = 16;
      break;
    case 0xA:
      LODWORD(v3) = 2143289344;
      v4 = 18;
      break;
    case 0xB:
      LODWORD(v3) = 2143289344;
      v4 = 24;
      break;
    case 0xC:
      v3 = HIDWORD(v2);
      v4 = 19;
      break;
    case 0xD:
      v3 = HIDWORD(v2);
      v4 = 20;
      break;
    case 0xE:
      LODWORD(v3) = 2143289344;
      v4 = 25;
      break;
    case 0xF:
      LODWORD(v3) = 2143289344;
      v4 = 26;
      break;
    case 0x10:
      v3 = HIDWORD(v2);
      v4 = 28;
      break;
    case 0x12:
      v4 = dword_1B7E771B4[v2];
      LODWORD(v2) = 2143289344;
      LODWORD(v3) = 2143289344;
      break;
    default:
      LODWORD(v3) = 2143289344;
      v4 = 2;
      break;
  }

  *a1 = v4;
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t BNNS.ActivationLayer.__allocating_init(function:input:output:filterParameters:)(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3[8];
  v12 = a3[9];
  v13 = a3[6];
  __src[18] = a3[7];
  __src[19] = v11;
  v14 = a3[10];
  __src[20] = v12;
  __src[21] = v14;
  v15 = a3[4];
  v16 = a3[5];
  v17 = a3[2];
  __src[14] = a3[3];
  __src[15] = v15;
  __src[16] = v16;
  __src[17] = v13;
  v18 = *a3;
  __src[12] = a3[1];
  __src[13] = v17;
  v19 = a2[9];
  __src[8] = a2[8];
  __src[9] = v19;
  __src[10] = a2[10];
  __src[11] = v18;
  v20 = a2[5];
  __src[4] = a2[4];
  __src[5] = v20;
  v21 = a2[7];
  __src[6] = a2[6];
  __src[7] = v21;
  v22 = a2[1];
  __src[0] = *a2;
  __src[1] = v22;
  v23 = a2[3];
  __src[2] = a2[2];
  __src[3] = v23;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  memcpy(__dst, __src, sizeof(__dst));
  v32 = 0;
  if (a6 == 1)
  {
    v24 = 0;
  }

  else
  {
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v24 = &v27;
  }

  v25 = MEMORY[0x1B8CB1A10](__dst, v24);
  type metadata accessor for BNNS.ActivationLayer();
  result = swift_allocObject();
  if (v25)
  {
    *(result + 16) = v25;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.ActivationLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t static BNNS.applyActivation(activation:input:output:batchSize:filterParameters:)(uint64_t *a1, _OWORD *a2, __int128 *a3, size_t a4, uint32_t a5, size_t a6, int (__cdecl *a7)(void **, size_t, size_t), void (__cdecl *a8)(void *))
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[6];
  __src[18] = a3[7];
  __src[19] = v13;
  v16 = a3[10];
  __src[20] = v14;
  __src[21] = v16;
  v17 = a3[4];
  v18 = a3[5];
  v19 = a3[2];
  __src[14] = a3[3];
  __src[15] = v17;
  __src[16] = v18;
  __src[17] = v15;
  v20 = *a3;
  __src[12] = a3[1];
  __src[13] = v19;
  v21 = a2[9];
  __src[8] = a2[8];
  __src[9] = v21;
  __src[10] = a2[10];
  __src[11] = v20;
  v22 = a2[5];
  __src[4] = a2[4];
  __src[5] = v22;
  v23 = a2[7];
  __src[6] = a2[6];
  __src[7] = v23;
  v24 = a2[1];
  __src[0] = *a2;
  __src[1] = v24;
  v25 = a2[3];
  __src[2] = a2[2];
  __src[3] = v25;
  v26 = *(a1 + 8);
  v34 = *a1;
  v35 = v26;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  memcpy(&__dst, __src, 0x190uLL);
  __dst.axis_flags = 0;
  if (a7 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(&v34);
    v27 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v33);
    v28 = BNNS.Shape.batchStride.getter();
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a5;
    filter_params.n_threads = a6;
    filter_params.alloc_memory = a7;
    filter_params.free_memory = a8;
    BNNSNDArrayDescriptor.shape.getter(&v34);
    v27 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v33);
    v28 = BNNS.Shape.batchStride.getter();
    p_filter_params = &filter_params;
  }

  result = BNNSDirectApplyActivationBatch(&__dst, p_filter_params, a4, v27, v28);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v31 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.ActivationLayer.__allocating_init(function:axes:input:output:filterParameters:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[6];
  __src[18] = a4[7];
  __src[19] = v13;
  v16 = a4[10];
  __src[20] = v14;
  __src[21] = v16;
  v17 = a4[4];
  v18 = a4[5];
  v19 = a4[2];
  __src[14] = a4[3];
  __src[15] = v17;
  __src[16] = v18;
  __src[17] = v15;
  v20 = *a4;
  __src[12] = a4[1];
  __src[13] = v19;
  v21 = a3[9];
  __src[8] = a3[8];
  __src[9] = v21;
  __src[10] = a3[10];
  __src[11] = v20;
  v22 = a3[5];
  __src[4] = a3[4];
  __src[5] = v22;
  v23 = a3[7];
  __src[6] = a3[6];
  __src[7] = v23;
  v24 = a3[1];
  __src[0] = *a3;
  __src[1] = v24;
  v25 = a3[3];
  __src[2] = a3[2];
  __src[3] = v25;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  v26 = specialized static BNNS.computeAxisFlags(_:)(a2);

  memcpy(__dst, __src, sizeof(__dst));
  v35 = v26;
  if (a7 == 1)
  {
    v27 = 0;
  }

  else
  {
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v27 = &v30;
  }

  v28 = MEMORY[0x1B8CB1A10](__dst, v27);
  type metadata accessor for BNNS.ActivationLayer();
  result = swift_allocObject();
  if (v28)
  {
    *(result + 16) = v28;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t static BNNS.applyActivation(activation:axes:input:output:batchSize:filterParameters:)(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4, size_t a5, uint32_t a6, size_t a7, int (__cdecl *a8)(void **, size_t, size_t), void (__cdecl *a9)(void *))
{
  v40 = *MEMORY[0x1E69E9840];
  v14 = a4[8];
  v15 = a4[9];
  v16 = a4[6];
  __src[18] = a4[7];
  __src[19] = v14;
  v17 = a4[10];
  __src[20] = v15;
  __src[21] = v17;
  v18 = a4[4];
  v19 = a4[5];
  v20 = a4[2];
  __src[14] = a4[3];
  __src[15] = v18;
  __src[16] = v19;
  __src[17] = v16;
  v21 = *a4;
  __src[12] = a4[1];
  __src[13] = v20;
  v22 = a3[9];
  __src[8] = a3[8];
  __src[9] = v22;
  __src[10] = a3[10];
  __src[11] = v21;
  v23 = a3[5];
  __src[4] = a3[4];
  __src[5] = v23;
  v24 = a3[7];
  __src[6] = a3[6];
  __src[7] = v24;
  v25 = a3[1];
  __src[0] = *a3;
  __src[1] = v25;
  v26 = a3[3];
  __src[2] = a3[2];
  __src[3] = v26;
  v27 = *(a1 + 8);
  v36 = *a1;
  v37 = v27;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  v28 = specialized static BNNS.computeAxisFlags(_:)(a2);
  memcpy(&__dst, __src, 0x190uLL);
  __dst.axis_flags = v28;
  if (a8 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(&v36);
    v29 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v35);
    v30 = BNNS.Shape.batchStride.getter();
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a6;
    filter_params.n_threads = a7;
    filter_params.alloc_memory = a8;
    filter_params.free_memory = a9;
    BNNSNDArrayDescriptor.shape.getter(&v36);
    v29 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v35);
    v30 = BNNS.Shape.batchStride.getter();
    p_filter_params = &filter_params;
  }

  result = BNNSDirectApplyActivationBatch(&__dst, p_filter_params, a5, v29, v30);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ActivationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 9))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.ActivationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
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

uint64_t getEnumTag for BNNS.ActivationFunction(uint64_t a1)
{
  if (*(a1 + 8) <= 0x11u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t destructiveInjectEnumTag for BNNS.ActivationFunction(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    LOBYTE(a2) = 18;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t BNNS.DataLayout.rank.getter()
{
  v1 = *v0;
  if (v1 > 0x14)
  {
    return 8;
  }

  else
  {
    return qword_1B7E77500[v1];
  }
}

uint64_t static BNNS.defaultLayoutForDimensions(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 8)
  {
    v2 = 21;
  }

  else
  {
    v2 = 0x110F0D0B09060300uLL >> (8 * (result - 1));
  }

  *a2 = v2;
  return result;
}

Swift::Int BNNS.DataLayout.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNS.DataLayout()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t (*BNNSFilterParameters.options.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNSFilterParameters.options.modify;
}

void *(*BNNSFilterParameters.threadCount.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return BNNSFilterParameters.threadCount.modify;
}

void *(*BNNSFilterParameters.allocator.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return BNNSFilterParameters.allocator.modify;
}

void *(*BNNSFilterParameters.deallocator.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return BNNSFilterParameters.deallocator.modify;
}

unint64_t lazy protocol witness table accessor for type BNNS.DataLayout and conformance BNNS.DataLayout()
{
  result = lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout;
  if (!lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [BNNS.DataLayout] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Accelerate4BNNSO10DataLayoutOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BNNSFlags and conformance BNNSFlags(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BNNSFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance BNNSFlags@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.DataLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.DataLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.Error(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

double specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[5];
  v9 = a1[7];
  v167 = a1[6];
  v168 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v163 = a1[2];
  v164 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v165 = a1[4];
  v166 = v13;
  v14 = a1[1];
  v161 = *a1;
  v162 = v14;
  v15 = a1[7];
  v170[6] = v167;
  v170[7] = v15;
  v170[2] = v163;
  v170[3] = v12;
  v170[4] = v165;
  v170[5] = v8;
  v169 = *(a1 + 128);
  v171 = *(a1 + 128);
  v170[0] = v161;
  v170[1] = v10;
  switch(_s10Accelerate4BNNSO5ShapeOWOg(v170))
  {
    case 1u:
      destructiveProjectEnumData for vImage(v170);
      v89 = a1[7];
      v158 = a1[6];
      v159 = v89;
      v160 = *(a1 + 128);
      v90 = a1[3];
      v154 = a1[2];
      v155 = v90;
      v91 = a1[5];
      v156 = a1[4];
      v157 = v91;
      v92 = a1[1];
      v152 = *a1;
      v153 = v92;
      v93 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v93;
      *&v94 = v93[1];
      v151 = v94;
      v149 = 0u;
      v150 = 0u;
      v27 = 131073;
      goto LABEL_27;
    case 2u:
      destructiveProjectEnumData for vImage(v170);
      v66 = a1[7];
      v158 = a1[6];
      v159 = v66;
      v160 = *(a1 + 128);
      v67 = a1[3];
      v154 = a1[2];
      v155 = v67;
      v68 = a1[5];
      v156 = a1[4];
      v157 = v68;
      v69 = a1[1];
      v152 = *a1;
      v153 = v69;
      v70 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v70;
      *&v71 = v70[1];
      v151 = v71;
      v149 = 0u;
      v150 = 0u;
      v27 = 0x20000;
      goto LABEL_27;
    case 3u:
      destructiveProjectEnumData for vImage(v170);
      v78 = a1[7];
      v158 = a1[6];
      v159 = v78;
      v160 = *(a1 + 128);
      v79 = a1[3];
      v154 = a1[2];
      v155 = v79;
      v80 = a1[5];
      v156 = a1[4];
      v157 = v80;
      v81 = a1[1];
      v152 = *a1;
      v153 = v81;
      v82 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v82;
      *&v83 = v82[1];
      v151 = v83;
      v27 = 163841;
      goto LABEL_24;
    case 4u:
      v27 = 163840;
      destructiveProjectEnumData for vImage(v170);
      v49 = a1[7];
      v158 = a1[6];
      v159 = v49;
      v160 = *(a1 + 128);
      v50 = a1[3];
      v154 = a1[2];
      v155 = v50;
      v51 = a1[5];
      v156 = a1[4];
      v157 = v51;
      v52 = a1[1];
      v152 = *a1;
      v153 = v52;
      v53 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v53;
      *&v54 = v53[1];
      goto LABEL_23;
    case 5u:
      destructiveProjectEnumData for vImage(v170);
      v105 = a1[7];
      v158 = a1[6];
      v159 = v105;
      v160 = *(a1 + 128);
      v106 = a1[3];
      v154 = a1[2];
      v155 = v106;
      v107 = a1[5];
      v156 = a1[4];
      v157 = v107;
      v108 = a1[1];
      v152 = *a1;
      v153 = v108;
      v109 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v109;
      v150 = 0u;
      v151 = *(v109 + 8);
      v27 = 196608;
      v149 = 0u;
      goto LABEL_27;
    case 6u:
      destructiveProjectEnumData for vImage(v170);
      v115 = a1[7];
      v158 = a1[6];
      v159 = v115;
      v160 = *(a1 + 128);
      v116 = a1[3];
      v154 = a1[2];
      v155 = v116;
      v117 = a1[5];
      v156 = a1[4];
      v157 = v117;
      v118 = a1[1];
      v152 = *a1;
      v153 = v118;
      v119 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v119;
      v151 = *(v119 + 8);
      v27 = 229377;
      goto LABEL_24;
    case 7u:
      destructiveProjectEnumData for vImage(v170);
      v84 = a1[7];
      v158 = a1[6];
      v159 = v84;
      v160 = *(a1 + 128);
      v85 = a1[3];
      v154 = a1[2];
      v155 = v85;
      v86 = a1[5];
      v156 = a1[4];
      v157 = v86;
      v87 = a1[1];
      v152 = *a1;
      v153 = v87;
      v88 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v88;
      v150 = 0u;
      v151 = *(v88 + 8);
      v27 = 229376;
      v149 = 0u;
      goto LABEL_27;
    case 8u:
      v27 = 196609;
      destructiveProjectEnumData for vImage(v170);
      v131 = a1[7];
      v158 = a1[6];
      v159 = v131;
      v160 = *(a1 + 128);
      v132 = a1[3];
      v154 = a1[2];
      v155 = v132;
      v133 = a1[5];
      v156 = a1[4];
      v157 = v133;
      v134 = a1[1];
      v152 = *a1;
      v153 = v134;
      v135 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v135;
      v54 = *(v135 + 8);
LABEL_23:
      v151 = v54;
      goto LABEL_24;
    case 9u:
      destructiveProjectEnumData for vImage(v170);
      v61 = a1[7];
      v158 = a1[6];
      v159 = v61;
      v160 = *(a1 + 128);
      v62 = a1[3];
      v154 = a1[2];
      v155 = v62;
      v63 = a1[5];
      v156 = a1[4];
      v157 = v63;
      v64 = a1[1];
      v152 = *a1;
      v153 = v64;
      v65 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v65;
      v151 = *(v65 + 8);
      v27 = 196610;
LABEL_24:
      v149 = 0u;
      v150 = 0u;
      goto LABEL_27;
    case 0xAu:
      destructiveProjectEnumData for vImage(v170);
      v125 = a1[7];
      v158 = a1[6];
      v159 = v125;
      v160 = *(a1 + 128);
      v126 = a1[3];
      v154 = a1[2];
      v155 = v126;
      v127 = a1[5];
      v156 = a1[4];
      v157 = v127;
      v128 = a1[1];
      v152 = *a1;
      v153 = v128;
      v129 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v129;
      *&v130 = *(v129 + 24);
      v150 = v130;
      v151 = *(v129 + 8);
      v149 = 0u;
      v27 = 0x40000;
      goto LABEL_27;
    case 0xBu:
      destructiveProjectEnumData for vImage(v170);
      v43 = a1[7];
      v158 = a1[6];
      v159 = v43;
      v160 = *(a1 + 128);
      v44 = a1[3];
      v154 = a1[2];
      v155 = v44;
      v45 = a1[5];
      v156 = a1[4];
      v157 = v45;
      v46 = a1[1];
      v152 = *a1;
      v153 = v46;
      v47 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v47;
      *&v48 = *(v47 + 24);
      v150 = v48;
      v151 = *(v47 + 8);
      v27 = 294913;
      goto LABEL_8;
    case 0xCu:
      v27 = 294912;
      destructiveProjectEnumData for vImage(v170);
      v55 = a1[7];
      v158 = a1[6];
      v159 = v55;
      v160 = *(a1 + 128);
      v56 = a1[3];
      v154 = a1[2];
      v155 = v56;
      v57 = a1[5];
      v156 = a1[4];
      v157 = v57;
      v58 = a1[1];
      v152 = *a1;
      v153 = v58;
      v59 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v59;
      *&v60 = *(v59 + 24);
      v150 = v60;
      v151 = *(v59 + 8);
      goto LABEL_8;
    case 0xDu:
      destructiveProjectEnumData for vImage(v170);
      v110 = a1[7];
      v158 = a1[6];
      v159 = v110;
      v160 = *(a1 + 128);
      v111 = a1[3];
      v154 = a1[2];
      v155 = v111;
      v112 = a1[5];
      v156 = a1[4];
      v157 = v112;
      v113 = a1[1];
      v152 = *a1;
      v153 = v113;
      v114 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v114;
      v150 = *(v114 + 24);
      v151 = *(v114 + 8);
      v149 = 0u;
      v27 = 360449;
      goto LABEL_27;
    case 0xEu:
      destructiveProjectEnumData for vImage(v170);
      v38 = a1[7];
      v158 = a1[6];
      v159 = v38;
      v160 = *(a1 + 128);
      v39 = a1[3];
      v154 = a1[2];
      v155 = v39;
      v40 = a1[5];
      v156 = a1[4];
      v157 = v40;
      v41 = a1[1];
      v152 = *a1;
      v153 = v41;
      v42 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v42;
      v150 = *(v42 + 24);
      v151 = *(v42 + 8);
      v27 = 360448;
LABEL_8:
      v149 = 0u;
      goto LABEL_27;
    case 0xFu:
      destructiveProjectEnumData for vImage(v170);
      v72 = a1[7];
      v158 = a1[6];
      v159 = v72;
      v160 = *(a1 + 128);
      v73 = a1[3];
      v154 = a1[2];
      v155 = v73;
      v74 = a1[5];
      v156 = a1[4];
      v157 = v74;
      v75 = a1[1];
      v152 = *a1;
      v153 = v75;
      v76 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v76;
      v150 = *(v76 + 24);
      *(&v77 + 1) = *(v76 + 32);
      v151 = *(v76 + 8);
      *&v77 = *(v76 + 40);
      v149 = v77;
      v27 = 425985;
      goto LABEL_27;
    case 0x10u:
      v27 = 425984;
      destructiveProjectEnumData for vImage(v170);
      v32 = a1[7];
      v158 = a1[6];
      v159 = v32;
      v160 = *(a1 + 128);
      v33 = a1[3];
      v154 = a1[2];
      v155 = v33;
      v34 = a1[5];
      v156 = a1[4];
      v157 = v34;
      v35 = a1[1];
      v152 = *a1;
      v153 = v35;
      v36 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v36;
      v150 = *(v36 + 24);
      *(&v37 + 1) = *(v36 + 32);
      v151 = *(v36 + 8);
      *&v37 = *(v36 + 40);
      v149 = v37;
      goto LABEL_27;
    case 0x11u:
      destructiveProjectEnumData for vImage(v170);
      v95 = a1[7];
      v158 = a1[6];
      v159 = v95;
      v160 = *(a1 + 128);
      v96 = a1[3];
      v154 = a1[2];
      v155 = v96;
      v97 = a1[5];
      v156 = a1[4];
      v157 = v97;
      v98 = a1[1];
      v152 = *a1;
      v153 = v98;
      v99 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v99;
      v150 = *(v99 + 24);
      v151 = *(v99 + 8);
      v149 = *(v99 + 40);
      v27 = 491521;
      goto LABEL_27;
    case 0x12u:
      destructiveProjectEnumData for vImage(v170);
      v120 = a1[7];
      v158 = a1[6];
      v159 = v120;
      v160 = *(a1 + 128);
      v121 = a1[3];
      v154 = a1[2];
      v155 = v121;
      v122 = a1[5];
      v156 = a1[4];
      v157 = v122;
      v123 = a1[1];
      v152 = *a1;
      v153 = v123;
      v124 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v24 = *v124;
      v150 = *(v124 + 24);
      v151 = *(v124 + 8);
      v149 = *(v124 + 40);
      v27 = 491520;
      goto LABEL_27;
    case 0x13u:
      destructiveProjectEnumData for vImage(v170);
      v136 = a1[7];
      v158 = a1[6];
      v159 = v136;
      v160 = *(a1 + 128);
      v137 = a1[3];
      v154 = a1[2];
      v155 = v137;
      v138 = a1[5];
      v156 = a1[4];
      v157 = v138;
      v139 = a1[1];
      v152 = *a1;
      v153 = v139;
      v104 = destructiveProjectEnumData for vImage(&v152);
      v24 = *v104;
      v150 = *(v104 + 24);
      v151 = *(v104 + 8);
      v149 = *(v104 + 40);
      v27 = 557057;
      goto LABEL_26;
    case 0x14u:
      v27 = 557056;
      destructiveProjectEnumData for vImage(v170);
      v100 = a1[7];
      v158 = a1[6];
      v159 = v100;
      v160 = *(a1 + 128);
      v101 = a1[3];
      v154 = a1[2];
      v155 = v101;
      v102 = a1[5];
      v156 = a1[4];
      v157 = v102;
      v103 = a1[1];
      v152 = *a1;
      v153 = v103;
      v104 = destructiveProjectEnumData for vImage(&v152);
      v24 = *v104;
      v150 = *(v104 + 24);
      v151 = *(v104 + 8);
      v149 = *(v104 + 40);
LABEL_26:
      v21 = *(v104 + 56);
LABEL_27:
      v158 = v167;
      v159 = v168;
      v160 = v169;
      v154 = v163;
      v155 = v164;
      v156 = v165;
      v157 = v166;
      v152 = v161;
      v153 = v162;
      switch(_s10Accelerate4BNNSO5ShapeOWOg(&v152))
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
          v142 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          v25 = *(v142 + 16);
          goto LABEL_31;
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
          v146 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          v25 = *(v146 + 24);
          *&v30 = *(v146 + 40);
          goto LABEL_36;
        case 0xAu:
        case 0xBu:
        case 0xCu:
          v145 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          v25 = *(v145 + 32);
          v30 = *(v145 + 48);
          goto LABEL_36;
        case 0xDu:
        case 0xEu:
          v143 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          v30 = *(v143 + 56);
          v25 = *(v143 + 40);
          *&v31 = *(v143 + 72);
          goto LABEL_37;
        case 0xFu:
        case 0x10u:
          v141 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          v30 = v141[4];
          v31 = v141[5];
          v25 = v141[3];
          goto LABEL_37;
        case 0x11u:
        case 0x12u:
          v144 = destructiveProjectEnumData for vImage(&v152);
          v23 = 0;
          v22 = *(v144 + 104);
          v31 = *(v144 + 88);
          v30 = *(v144 + 72);
          v25 = *(v144 + 56);
          goto LABEL_37;
        case 0x13u:
        case 0x14u:
          v148 = destructiveProjectEnumData for vImage(&v152);
          v22 = *(v148 + 112);
          v23 = *(v148 + 120);
          v30 = *(v148 + 80);
          v31 = *(v148 + 96);
          v25 = *(v148 + 64);
          goto LABEL_37;
        default:
          v140 = destructiveProjectEnumData for vImage(&v152);
          v22 = 0;
          v23 = 0;
          *&v25 = *(v140 + 8);
LABEL_31:
          v30 = 0uLL;
LABEL_36:
          v31 = 0uLL;
LABEL_37:
          v28 = v150;
          v26 = v151;
          v29 = v149;
          break;
      }

      break;
    default:
      destructiveProjectEnumData for vImage(v170);
      v16 = a1[7];
      v158 = a1[6];
      v159 = v16;
      v160 = *(a1 + 128);
      v17 = a1[3];
      v154 = a1[2];
      v155 = v17;
      v18 = a1[5];
      v156 = a1[4];
      v157 = v18;
      v19 = a1[1];
      v152 = *a1;
      v153 = v19;
      v20 = destructiveProjectEnumData for vImage(&v152);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = *v20;
      *&v25 = v20[1];
      v26 = 0uLL;
      v27 = 0x10000;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      break;
  }

  *a4 = 0;
  *(a4 + 4) = v27;
  *(a4 + 8) = v24;
  *(a4 + 16) = v26;
  *(a4 + 32) = v28;
  *(a4 + 48) = v29;
  *(a4 + 64) = v21;
  *(a4 + 72) = v25;
  *(a4 + 88) = v30;
  *(a4 + 104) = v31;
  *(a4 + 120) = v22;
  *(a4 + 128) = v23;
  *(a4 + 136) = a2;
  *(a4 + 144) = a3;
  *(a4 + 152) = 0;
  *(a4 + 160) = a3;
  *&result = 1065353216;
  *(a4 + 164) = 1065353216;
  return result;
}

uint64_t BNNS.PoolingType.bnnsPoolingFunction.getter()
{
  v1 = v0[11];
  v9[10] = v0[10];
  v10[0] = v1;
  *(v10 + 9) = *(v0 + 185);
  v2 = v0[7];
  v9[6] = v0[6];
  v9[7] = v2;
  v3 = v0[9];
  v9[8] = v0[8];
  v9[9] = v3;
  v4 = v0[3];
  v9[2] = v0[2];
  v9[3] = v4;
  v5 = v0[5];
  v9[4] = v0[4];
  v9[5] = v5;
  v6 = v0[1];
  v9[0] = *v0;
  v9[1] = v6;
  v7 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v9);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        goto LABEL_4;
      }

      return 4;
    }

LABEL_8:
    destructiveProjectEnumData for vImage(v9);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (v7 == 1)
  {
LABEL_4:
    destructiveProjectEnumData for vImage(v9);
    return 3;
  }

  if (*destructiveProjectEnumData for vImage(v9))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _s10Accelerate4BNNSO11PoolingTypeOWOg(uint64_t a1)
{
  if (*(a1 + 200) <= 4u)
  {
    return *(a1 + 200);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t BNNS.PoolingLayer.__allocating_init(type:input:output:bias:activation:kernelSize:stride:padding:filterParameters:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, int a11, uint64_t a12, __int128 a13)
{
  v200 = *MEMORY[0x1E69E9840];
  v14 = a3[9];
  v174 = a3[8];
  v175 = v14;
  v15 = a3[5];
  v170 = a3[4];
  v171 = v15;
  v16 = a3[7];
  v172 = a3[6];
  v173 = v16;
  v17 = a3[1];
  v166 = *a3;
  v167 = v17;
  v18 = a3[3];
  v168 = a3[2];
  v169 = v18;
  v19 = a2[8];
  v20 = a2[9];
  v21 = a2[6];
  v184 = a2[7];
  v185 = v19;
  v22 = a2[10];
  v186 = v20;
  v187 = v22;
  v23 = a2[4];
  v24 = a2[5];
  v25 = a2[2];
  v180 = a2[3];
  v181 = v23;
  v26 = a3[10];
  v182 = v24;
  v183 = v21;
  v27 = *a2;
  v28 = a2[1];
  v176 = v26;
  v177 = v27;
  v178 = v28;
  v179 = v25;
  v29 = a1[10];
  v30 = a1[11];
  v31 = a1[8];
  v197 = a1[9];
  v198 = v29;
  v199[0] = v30;
  *(v199 + 9) = *(a1 + 185);
  v32 = a1[7];
  v194 = a1[6];
  v195 = v32;
  v196 = v31;
  v33 = a1[3];
  v190 = a1[2];
  v191 = v33;
  v34 = a1[5];
  v192 = a1[4];
  v193 = v34;
  v35 = a1[1];
  v188 = *a1;
  v189 = v35;
  if (*(a10 + 32) == 1)
  {
    v93 = *(a10 + 2);
    v94 = *(a10 + 3);
    v92 = *a10;
    v95 = 0u;
  }

  else
  {
    v95 = *a10;
    v93 = 0;
    v94 = 0;
    v92 = 0u;
  }

  v36 = *a5;
  v37 = *(a5 + 8);
  v38 = a1[10];
  v39 = a1[11];
  v40 = a1[8];
  v152[9] = a1[9];
  v152[10] = v38;
  v153[0] = v39;
  *(v153 + 9) = *(a1 + 185);
  v41 = a1[7];
  v152[6] = a1[6];
  v152[7] = v41;
  v152[8] = v40;
  v42 = a1[3];
  v152[2] = a1[2];
  v152[3] = v42;
  v43 = a1[5];
  v152[4] = a1[4];
  v152[5] = v43;
  v44 = a1[1];
  v152[0] = *a1;
  v152[1] = v44;
  v45 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v152);
  if (v45 <= 2)
  {
    if (v45 <= 1)
    {
      v55 = destructiveProjectEnumData for vImage(v152);
      v56 = *(v55 + 24);
      v88 = *(v55 + 16);
      v89 = *(v55 + 8);
      v90 = *v55;
      v91 = *(v55 + 32);
      _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v140);
      goto LABEL_14;
    }

    destructiveProjectEnumData for vImage(v152);
LABEL_12:
    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v140);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v56 = 0;
    goto LABEL_13;
  }

  if (v45 != 3)
  {
    if (v45 == 4)
    {
      v46 = destructiveProjectEnumData for vImage(v152);
      v56 = *(v46 + 176);
      v91 = *(v46 + 184);
      v48 = *(v46 + 16);
      v47 = *(v46 + 32);
      __dst[0] = *v46;
      __dst[1] = v48;
      __dst[2] = v47;
      v49 = *(v46 + 96);
      v51 = *(v46 + 48);
      v50 = *(v46 + 64);
      __dst[5] = *(v46 + 80);
      __dst[6] = v49;
      __dst[3] = v51;
      __dst[4] = v50;
      v52 = *(v46 + 160);
      v54 = *(v46 + 112);
      v53 = *(v46 + 128);
      __dst[9] = *(v46 + 144);
      __dst[10] = v52;
      __dst[7] = v54;
      __dst[8] = v53;
      _sSo21BNNSNDArrayDescriptoraSgWOi_(__dst);
      v89 = 0;
      v90 = 0;
      v148 = __dst[8];
      v149 = __dst[9];
      v150 = __dst[10];
      v151 = __dst[11];
      v144 = __dst[4];
      v145 = __dst[5];
      v146 = __dst[6];
      v147 = __dst[7];
      v140 = __dst[0];
      v141 = __dst[1];
      v88 = 1;
      v142 = __dst[2];
      v143 = __dst[3];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v57 = destructiveProjectEnumData for vImage(v152);
  v89 = 0;
  v90 = 0;
  v56 = *(v57 + 184);
  v91 = *(v57 + 192);
  v58 = *(v57 + 48);
  v60 = *v57;
  v59 = *(v57 + 16);
  v142 = *(v57 + 32);
  v143 = v58;
  v140 = v60;
  v141 = v59;
  v61 = *(v57 + 112);
  v63 = *(v57 + 64);
  v62 = *(v57 + 80);
  v146 = *(v57 + 96);
  v147 = v61;
  v144 = v63;
  v145 = v62;
  v65 = *(v57 + 144);
  v64 = *(v57 + 160);
  v66 = *(v57 + 128);
  v151 = *(v57 + 176);
  v149 = v65;
  v150 = v64;
  v148 = v66;
LABEL_13:
  v88 = 1;
LABEL_14:
  v67 = a4[9];
  v162 = a4[8];
  v163 = v67;
  v164 = a4[10];
  v165 = *(a4 + 176);
  v68 = a4[5];
  v158 = a4[4];
  v159 = v68;
  v69 = a4[7];
  v160 = a4[6];
  v161 = v69;
  v70 = a4[1];
  v154 = *a4;
  v155 = v70;
  v71 = a4[3];
  v156 = a4[2];
  v157 = v71;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v154) == 1)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
  }

  else
  {
    v137 = v162;
    v138 = v163;
    v139 = v164;
    v133 = v158;
    v134 = v159;
    v135 = v160;
    v136 = v161;
    v129 = v154;
    v130 = v155;
    v131 = v156;
    v132 = v157;
  }

  v112 = v36;
  v113 = v37;
  BNNS.ActivationFunction.bnnsActivation.getter(v126);
  v127[9] = v197;
  v127[10] = v198;
  v128[0] = v199[0];
  *(v128 + 9) = *(v199 + 9);
  v127[6] = v194;
  v127[7] = v195;
  v127[8] = v196;
  v127[2] = v190;
  v127[3] = v191;
  v127[4] = v192;
  v127[5] = v193;
  v127[0] = v188;
  v127[1] = v189;
  v72 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v127);
  if (v72 <= 2)
  {
    if (v72)
    {
      if (v72 != 1)
      {
        if (*destructiveProjectEnumData for vImage(v127))
        {
          v73 = 1;
        }

        else
        {
          v73 = 2;
        }

        goto LABEL_30;
      }

      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (v72 == 3)
  {
LABEL_24:
    destructiveProjectEnumData for vImage(v127);
    v73 = 0;
    goto LABEL_30;
  }

  if (v72 == 4)
  {
LABEL_20:
    destructiveProjectEnumData for vImage(v127);
    v73 = 3;
    goto LABEL_30;
  }

  v73 = 4;
LABEL_30:
  __src[8] = v185;
  __src[9] = v186;
  __src[4] = v181;
  __src[5] = v182;
  __src[6] = v183;
  __src[7] = v184;
  __src[0] = v177;
  __src[1] = v178;
  __src[2] = v179;
  __src[3] = v180;
  __src[18] = v173;
  __src[19] = v174;
  __src[20] = v175;
  __src[21] = v176;
  __src[14] = v169;
  __src[15] = v170;
  __src[16] = v171;
  __src[17] = v172;
  __src[10] = v187;
  __src[11] = v166;
  __src[12] = v167;
  __src[13] = v168;
  __src[30] = v137;
  __src[31] = v138;
  __src[26] = v133;
  __src[27] = v134;
  __src[28] = v135;
  __src[29] = v136;
  __src[22] = v129;
  __src[23] = v130;
  __src[24] = v131;
  __src[25] = v132;
  __src[32] = v139;
  __src[33] = v126[0];
  __src[34] = v126[1];
  __src[35] = v126[2];
  memcpy(__dst, __src, sizeof(__dst));
  v115 = v73;
  v116 = a6;
  v117 = a7;
  v118 = a8;
  v119 = a9;
  v120 = v56;
  v121 = v91;
  v122 = v95;
  v123 = v92;
  v124 = v93;
  v125 = v94;
  if (a13 == 1)
  {
    v74 = 0;
  }

  else
  {
    LODWORD(v99) = a11;
    *(&v99 + 1) = a12;
    v100 = a13;
    v74 = &v99;
  }

  v75 = MEMORY[0x1B8CB1AD0](__dst, v74);
  type metadata accessor for BNNS.PoolingLayer();
  v76 = swift_allocObject();
  *(v76 + 24) = 0;
  *(v76 + 32) = 0;
  *(v76 + 40) = 1;
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v99);
  v77 = v108;
  *(v76 + 176) = v107;
  *(v76 + 192) = v77;
  *(v76 + 208) = v109;
  *(v76 + 224) = v110;
  v78 = v104;
  *(v76 + 112) = v103;
  *(v76 + 128) = v78;
  v79 = v106;
  *(v76 + 144) = v105;
  *(v76 + 160) = v79;
  v80 = v100;
  *(v76 + 48) = v99;
  *(v76 + 64) = v80;
  v81 = v102;
  *(v76 + 80) = v101;
  *(v76 + 96) = v81;
  *(v76 + 232) = 0;
  if (v75)
  {
    *(v76 + 16) = v75;
    *(v76 + 24) = v90;
    *(v76 + 32) = v89;
    *(v76 + 40) = v88;
    v82 = v149;
    *(v76 + 176) = v148;
    *(v76 + 192) = v82;
    *(v76 + 208) = v150;
    *(v76 + 224) = v151;
    v83 = v145;
    *(v76 + 112) = v144;
    *(v76 + 128) = v83;
    v84 = v147;
    *(v76 + 144) = v146;
    *(v76 + 160) = v84;
    v85 = v141;
    *(v76 + 48) = v140;
    *(v76 + 64) = v85;
    v86 = v143;
    *(v76 + 80) = v142;
    *(v76 + 96) = v86;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v76;
}

uint64_t BNNS.PoolingLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(v9);
  v3 = v9[9];
  *(v2 + 176) = v9[8];
  *(v2 + 192) = v3;
  *(v2 + 208) = v9[10];
  *(v2 + 224) = v10;
  v4 = v9[5];
  *(v2 + 112) = v9[4];
  *(v2 + 128) = v4;
  v5 = v9[7];
  *(v2 + 144) = v9[6];
  *(v2 + 160) = v5;
  v6 = v9[1];
  *(v2 + 48) = v9[0];
  *(v2 + 64) = v6;
  v7 = v9[3];
  *(v2 + 80) = v9[2];
  *(v2 + 96) = v7;
  *(v2 + 232) = 0;
  if (a1)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t _sSo21BNNSNDArrayDescriptoraSgWOg(uint64_t a1)
{
  if (*(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double _sSo21BNNSNDArrayDescriptoraSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 1;
  return result;
}

uint64_t BNNS.PoolingLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

size_t specialized static BNNS.poolingFilterApply(_:batchSize:input:output:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 192);
  *indices = *(a1 + 176);
  *indices_data_type = v9;
  v52 = *(a1 + 208);
  v53 = *(a1 + 224);
  v10 = *(a1 + 128);
  v46 = *(a1 + 112);
  v47 = v10;
  v11 = *(a1 + 160);
  v48 = *(a1 + 144);
  v49 = v11;
  v12 = *(a1 + 64);
  v42 = *(a1 + 48);
  v43 = v12;
  v13 = *(a1 + 96);
  v44 = *(a1 + 80);
  v45 = v13;
  result = _sSo21BNNSNDArrayDescriptoraSgWOg(&v42);
  if (result != 1)
  {
    v39 = *indices;
    v40 = *indices_data_type;
    v41 = v52;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    BNNSNDArrayDescriptor.shape.getter(v30);
    result = BNNS.Shape.batchStride.getter();
    v23 = *(a3 + 136);
    if (v23)
    {
      idx_stride = result;
      v25 = *(a1 + 16);
      BNNSNDArrayDescriptor.shape.getter(v30);
      result = BNNS.Shape.batchStride.getter();
      v26 = *(a4 + 136);
      if (v26)
      {
        v27 = result;
        BNNSNDArrayDescriptor.shape.getter(v29);
        result = BNNS.Shape.batchStride.getter();
        if (indices[1])
        {
          result = BNNSPoolingFilterApplyBatchEx(v25, a2, v23, v27, v26, result, indices_data_type[0], indices[1], idx_stride);
          if (!result)
          {
            return result;
          }

          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v4;
  if (*(a1 + 40))
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a1 + 32);
  }

  if (!a2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_22;
  }

  v16 = *(a3 + 136);
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = *(a1 + 16);
  BNNSNDArrayDescriptor.shape.getter(v30);
  result = BNNS.Shape.batchStride.getter();
  v18 = *(a4 + 136);
  if (!v18)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = v15 / a2;
  BNNSNDArrayDescriptor.shape.getter(v29);
  v21 = BNNS.Shape.batchStride.getter();
  if (*(a1 + 40))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 24);
  }

  result = BNNSPoolingFilterApplyBatch(v17, a2, v16, v19, v18, v21, v22, v20);
  if (result)
  {
LABEL_19:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  return result;
}

size_t specialized static BNNS.poolingLayerApplyBackward(_:batchSize:input:output:outputGradient:generatingInputGradient:generatingBiasGradient:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, uint64_t a7)
{
  v118 = *MEMORY[0x1E69E9840];
  v11 = a6[6];
  *&in_delta.stride[5] = a6[7];
  v12 = a6[9];
  *&in_delta.stride[7] = a6[8];
  *&in_delta.data_type = v12;
  *&in_delta.table_data_type = a6[10];
  v13 = a6[4];
  v14 = a6[5];
  v15 = a6[2];
  *&in_delta.size[5] = a6[3];
  *&in_delta.size[7] = v13;
  *&in_delta.stride[1] = v14;
  *&in_delta.stride[3] = v11;
  v16 = *a6;
  *&in_delta.size[1] = a6[1];
  *&in_delta.size[3] = v15;
  v17 = a5[9];
  *&out_delta.stride[7] = a5[8];
  *&out_delta.data_type = v17;
  *&out_delta.table_data_type = a5[10];
  *&in_delta.flags = v16;
  v18 = a5[5];
  *&out_delta.size[7] = a5[4];
  *&out_delta.stride[1] = v18;
  v19 = a5[7];
  *&out_delta.stride[3] = a5[6];
  *&out_delta.stride[5] = v19;
  v20 = a5[1];
  *&out_delta.flags = *a5;
  *&out_delta.size[1] = v20;
  v21 = a5[3];
  *&out_delta.size[3] = a5[2];
  *&out_delta.size[5] = v21;
  v22 = *(a7 + 144);
  *&v94.stride[7] = *(a7 + 128);
  *&v94.data_type = v22;
  *&v94.table_data_type = *(a7 + 160);
  v23 = *(a7 + 80);
  *&v94.size[7] = *(a7 + 64);
  *&v94.stride[1] = v23;
  v24 = *(a7 + 112);
  *&v94.stride[3] = *(a7 + 96);
  *&v94.stride[5] = v24;
  v25 = *(a7 + 16);
  *&v94.flags = *a7;
  *&v94.size[1] = v25;
  v26 = *(a7 + 48);
  *&v94.size[3] = *(a7 + 32);
  v95 = *(a7 + 176);
  *&v94.size[5] = v26;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v94) == 1)
  {
    v27 = *(a1 + 192);
    v88 = *(a1 + 176);
    indices_data_type = v27;
    v90 = *(a1 + 208);
    v91 = *(a1 + 224);
    v28 = *(a1 + 128);
    v84 = *(a1 + 112);
    v85 = v28;
    v29 = *(a1 + 160);
    v86 = *(a1 + 144);
    v87 = v29;
    v30 = *(a1 + 64);
    v80 = *(a1 + 48);
    v81 = v30;
    v31 = *(a1 + 96);
    v82 = *(a1 + 80);
    v83 = v31;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v80) == 1)
    {
      v32 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v32 = 1;
      }

      if (a2)
      {
        if (v32 != 0x8000000000000000 || a2 != -1)
        {
          v69 = *(a1 + 16);
          batch_size = *(a3 + 136);
          v33 = v32 / a2;
          BNNSNDArrayDescriptor.shape.getter(&v76);
          v34 = BNNS.Shape.batchStride.getter();
          BNNSNDArrayDescriptor.shape.getter(v79);
          v35 = BNNS.Shape.batchStride.getter();
          v36 = *(a4 + 136);
          BNNSNDArrayDescriptor.shape.getter(v78);
          v37 = BNNS.Shape.batchStride.getter();
          BNNSNDArrayDescriptor.shape.getter(v77);
          out_delta_stride = BNNS.Shape.batchStride.getter();
          indices = *(a1 + 24);
          if (*(a1 + 40))
          {
            indices = 0;
          }

          result = BNNSPoolingFilterApplyBackwardBatch(v69, a2, batch_size, v34, &in_delta, v35, v36, v37, &out_delta, out_delta_stride, 0, indices, v33);
          goto LABEL_20;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    batch_sizeb = a2;
    v114 = v87;
    v115 = v88;
    v116 = indices_data_type;
    v117 = v90;
    v110 = v83;
    v111 = v84;
    v112 = v85;
    v113 = v86;
    v107 = v80;
    v108 = v81;
    v109 = v82;
    BNNSNDArrayDescriptor.shape.getter(&v76);
    v54 = BNNS.Shape.batchStride.getter();
    v55 = *(a1 + 16);
    v56 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(&v76);
    v57 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v79);
    v58 = BNNS.Shape.batchStride.getter();
    v59 = *(a4 + 136);
    BNNSNDArrayDescriptor.shape.getter(v78);
    v60 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v77);
    result = BNNS.Shape.batchStride.getter();
    if (*(&v88 + 1))
    {
      result = BNNSPoolingFilterApplyBackwardBatchEx(v55, batch_sizeb, v56, v57, &in_delta, v58, v59, v60, &out_delta, result, 0, indices_data_type, *(&v88 + 1), v54);
      goto LABEL_26;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v76 = v94;
  v41 = *(a1 + 192);
  v88 = *(a1 + 176);
  indices_data_type = v41;
  v90 = *(a1 + 208);
  v91 = *(a1 + 224);
  v42 = *(a1 + 128);
  v84 = *(a1 + 112);
  v85 = v42;
  v43 = *(a1 + 160);
  v86 = *(a1 + 144);
  v87 = v43;
  v44 = *(a1 + 64);
  v80 = *(a1 + 48);
  v81 = v44;
  v45 = *(a1 + 96);
  v82 = *(a1 + 80);
  v83 = v45;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v80) == 1)
  {
    v46 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v46 = 1;
    }

    if (a2)
    {
      if (v46 != 0x8000000000000000 || a2 != -1)
      {
        v70 = *(a1 + 16);
        batch_sizea = *(a3 + 136);
        v47 = v46 / a2;
        BNNSNDArrayDescriptor.shape.getter(v79);
        v48 = BNNS.Shape.batchStride.getter();
        BNNSNDArrayDescriptor.shape.getter(v78);
        v49 = BNNS.Shape.batchStride.getter();
        v50 = *(a4 + 136);
        BNNSNDArrayDescriptor.shape.getter(v77);
        v51 = BNNS.Shape.batchStride.getter();
        BNNSNDArrayDescriptor.shape.getter(v75);
        v52 = BNNS.Shape.batchStride.getter();
        v53 = *(a1 + 24);
        if (*(a1 + 40))
        {
          v53 = 0;
        }

        result = BNNSPoolingFilterApplyBackwardBatch(v70, a2, batch_sizea, v48, &in_delta, v49, v50, v51, &out_delta, v52, &v76, v53, v47);
LABEL_20:
        if (!result)
        {
          return result;
        }

LABEL_27:
        lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
        swift_allocError();
        *v68 = 0;
        return swift_willThrow();
      }

LABEL_31:
      __break(1u);
    }

    goto LABEL_29;
  }

  batch_sizec = a2;
  v103 = v87;
  v104 = v88;
  v105 = indices_data_type;
  v106 = v90;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v96 = v80;
  v97 = v81;
  v98 = v82;
  BNNSNDArrayDescriptor.shape.getter(v79);
  v61 = BNNS.Shape.batchStride.getter();
  v62 = *(a1 + 16);
  v63 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v79);
  v64 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v78);
  v65 = BNNS.Shape.batchStride.getter();
  v66 = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v77);
  v67 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v75);
  result = BNNS.Shape.batchStride.getter();
  if (!*(&v88 + 1))
  {
    goto LABEL_33;
  }

  result = BNNSPoolingFilterApplyBackwardBatchEx(v62, batch_sizec, v63, v64, &in_delta, v65, v66, v67, &out_delta, result, &v76, indices_data_type, *(&v88 + 1), v61);
LABEL_26:
  if (result)
  {
    goto LABEL_27;
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.PoolingType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 201))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 200);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.PoolingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 200) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BNNS.PoolingType(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    LOBYTE(a2) = 5;
    *(result + 184) = 0u;
  }

  *(result + 200) = a2;
  return result;
}

uint64_t dispatch thunk of BNNS.PoolingLayer.apply(batchSize:input:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[17];
  v5 = *(a2 + 36);
  v6 = a2[19];
  v7 = *(a2 + 40);
  v8 = a3[17];
  v9 = *(a3 + 36);
  v10 = a3[19];
  v11 = *(a3 + 40);
  v12 = *(*v3 + 192);
  v28 = *a2;
  v29 = *(a2 + 1);
  v30 = *(a2 + 3);
  v31 = *(a2 + 5);
  v32 = *(a2 + 7);
  v33 = *(a2 + 9);
  v34 = *(a2 + 11);
  v35 = *(a2 + 13);
  v36 = *(a2 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a2 + 164);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *(a3 + 3);
  v17 = *(a3 + 5);
  v18 = *(a3 + 7);
  v19 = *(a3 + 9);
  v20 = *(a3 + 11);
  v21 = *(a3 + 13);
  v22 = *(a3 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 164);
  return v12(a1, &v28, &v14);
}