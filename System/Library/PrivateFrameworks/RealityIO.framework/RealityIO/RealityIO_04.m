uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D11VyAIGXEfU0_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(void *, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU2_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v5 = v18;
  v6 = (a1 + 32);
  do
  {
    *&v4 = *v6;
    v17 = v4;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v4 = v17;
    *&v7[4 * v9 + 32] = v17;
    v12 = v9 + 2;
    if (v10 < v12)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v12, 1, v7);
      v4 = v17;
    }

    *(v7 + 2) = v12;
    *&v7[4 * v11 + 32] = DWORD1(v4);
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v7 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v7;
    ++v6;
    --v1;
  }

  while (v1);
  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU3_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(void *, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU5_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = v18;
  v5 = (a1 + 32);
  do
  {
    v17 = *v5;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
    v10 = v8 + 1;
    if (v7 >> 1 <= v8)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
      v7 = *(v6 + 3);
      v9 = v7 >> 1;
    }

    *(v6 + 2) = v10;
    v11 = *(&v17 + 1);
    *&v6[8 * v8 + 32] = v17;
    v12 = v8 + 2;
    if (v9 < v12)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v12, 1, v6);
      v11 = *(&v17 + 1);
    }

    *(v6 + 2) = v12;
    *&v6[8 * v10 + 32] = v11;
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v6;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v6;
    ++v5;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU6_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(void *, __n128, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7, v7[1]);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9RealityIO16ToolsFoundationsO5TokenVG_SSs5NeverOTg503_s9d63IO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSSAA16fg2O5H7VXEfU8_Tf1cn_nTm(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v16;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v8 = a2();
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v3;
}

char *specialized SIMD.asScalarArray()(double a1)
{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = HIDWORD(a1);
  *&v1[4 * v3 + 32] = LODWORD(a1);
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = HIDWORD(a1);
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6;
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = HIDWORD(a1);
  *&v1[4 * v3 + 32] = LODWORD(a1);
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = HIDWORD(a1);
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6;
  return v1;
}

char *specialized SIMD.asScalarArray()(__n128 a1)
{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v10;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  if ((v3 + 3) > (v8 >> 1))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u32[2] = a1.n128_u32[2];
    v1 = v11;
  }

  *(v1 + 2) = v3 + 3;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v12;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  v9 = v3 + 3;
  if ((v3 + 3) > (v8 >> 1))
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u64[1] = a1.n128_u64[1];
    v1 = v13;
  }

  *(v1 + 2) = v9;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  v10 = *(v1 + 3);
  if ((v3 + 4) > (v10 >> 1))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v3 + 4, 1, v1);
    v6.n128_u32[3] = a1.n128_u32[3];
    v1 = v14;
  }

  *(v1 + 2) = v3 + 4;
  *&v1[4 * v9 + 32] = v6.n128_u32[3];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v10;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  if ((v3 + 3) > (v8 >> 1))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u32[2] = a1.n128_u32[2];
    v1 = v11;
  }

  *(v1 + 2) = v3 + 3;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v12;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  v9 = v3 + 3;
  if ((v3 + 3) > (v8 >> 1))
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u64[1] = a1.n128_u64[1];
    v1 = v13;
  }

  *(v1 + 2) = v9;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  v10 = *(v1 + 3);
  if ((v3 + 4) > (v10 >> 1))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v3 + 4, 1, v1);
    v6.n128_u32[3] = a1.n128_u32[3];
    v1 = v14;
  }

  *(v1 + 2) = v3 + 4;
  *&v1[4 * v9 + 32] = v6.n128_u32[3];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1.n128_u64[1];
  *&v1[8 * v3 + 32] = a1.n128_u64[0];
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = a1.n128_u64[1];
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[8 * v5 + 32] = v6;
  return v1;
}

char *specialized SIMD.asScalarArray()(__n128 a1, double a2)
{
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v7 = a1.n128_u64[1];
  *&v2[8 * v4 + 32] = a1.n128_u64[0];
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 2, 1, v2);
    v7 = a1.n128_u64[1];
    v2 = v11;
  }

  *(v2 + 2) = v8;
  *&v2[8 * v6 + 32] = v7;
  v9 = *(v2 + 3);
  if ((v4 + 3) > (v9 >> 1))
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v4 + 3;
  *&v2[8 * v8 + 32] = a2;
  return v2;
}

char *specialized SIMD.asScalarArray()(__n128 a1, __n128 a2)
{
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v8 = a1.n128_u64[1];
  v7 = a2;
  *&v2[8 * v4 + 32] = a1.n128_u64[0];
  v9 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 2, 1, v2);
    v8 = a1.n128_u64[1];
    v7 = a2;
    v2 = v14;
  }

  *(v2 + 2) = v9;
  *&v2[8 * v6 + 32] = v8;
  v10 = *(v2 + 3);
  v11 = v4 + 3;
  if ((v4 + 3) > (v10 >> 1))
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v4 + 3, 1, v2);
    v7 = a2;
    v2 = v15;
  }

  *(v2 + 2) = v11;
  *&v2[8 * v9 + 32] = v7.n128_u64[0];
  v12 = *(v2 + 3);
  if ((v4 + 4) > (v12 >> 1))
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v4 + 4, 1, v2);
    v7.n128_u64[1] = a2.n128_u64[1];
    v2 = v16;
  }

  *(v2 + 2) = v4 + 4;
  *&v2[8 * v11 + 32] = v7.n128_u64[1];
  return v2;
}

void componentPrimToDictionary(component:)()
{
  v393[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = Prim.attributes()();
  v2 = (specialized Array._getCount())();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    v383 = v1 & 0xC000000000000001;
    v381 = v1 & 0xFFFFFFFFFFFFFF8;
    v382 = v1;
    v380 = v1 + 32;
    while (1)
    {
      while (1)
      {
        if (v383)
        {
          v6 = MEMORY[0x26670F670](v5, v382);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_441;
          }
        }

        else
        {
          if (v5 >= *(v381 + 16))
          {
            goto LABEL_443;
          }

          v6 = *(v380 + 8 * v5);

          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
            goto LABEL_444;
          }
        }

        v8 = *(v6 + 16);
        v9 = RIOPxrUsdObjectCopyName();
        v10 = RIOPxrTfTokenCopyString();
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = *(v6 + 16);
        v15 = RIOPxrUsdAttributeCopyTypeName();
        RIOPxrSdfValueTypeNameRef.type.getter();

        if (swift_dynamicCastMetatype())
        {
          v16 = *(v6 + 16);
          EmptyValue = RIOPxrUsdAttributeCopyValue();
          if (!EmptyValue)
          {
            EmptyValue = RIOPxrVtValueCreateEmptyValue();
          }

          v385.n128_u8[0] = 0;
          v18 = EmptyValue;
          Bool = RIOPxrVtValueGetBool();

          if ((Bool & 1) == 0)
          {
            goto LABEL_47;
          }

          v20.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
        if (swift_dynamicCastMetatype())
        {
          v21 = *(v6 + 16);
          v22 = RIOPxrUsdAttributeCopyValue();
          if (!v22)
          {
            v22 = RIOPxrVtValueCreateEmptyValue();
          }

          v23 = RIOPxrVtValueCopyBoolArray();
          if (!v23)
          {
            goto LABEL_46;
          }

          v385.n128_u64[0] = v23;
          v24 = v23;
          closure #1 in RIOPxrVtValueRef.asBoolArray.getter(&v385, v393);

          v3 = MEMORY[0x277D84F90];
LABEL_19:
          v20.super.super.isa = Array._bridgeToObjectiveC()().super.isa;

          goto LABEL_48;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        if (swift_dynamicCastMetatype())
        {
          v29 = *(v6 + 16);
          v22 = RIOPxrUsdAttributeCopyValue();
          if (!v22)
          {
            v22 = RIOPxrVtValueCreateEmptyValue();
          }

          v30 = RIOPxrVtValueCopyInt32Array();
          if (!v30)
          {
            goto LABEL_46;
          }

          v385.n128_u64[0] = v30;
          v31 = v30;
          closure #1 in RIOPxrVtValueRef.asInt32Array.getter(&v385, v393);

          v3 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }

        if (swift_dynamicCastMetatype())
        {
LABEL_21:
          v25 = *(v6 + 16);
          v26 = RIOPxrUsdAttributeCopyValue();
          if (!v26)
          {
            v26 = RIOPxrVtValueCreateEmptyValue();
          }

          v385.n128_u32[0] = 0;
          v27 = v26;
          Int32 = RIOPxrVtValueGetInt32();

          if ((Int32 & 1) == 0)
          {
            goto LABEL_47;
          }

          v20.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR);
        if (swift_dynamicCastMetatype())
        {
          v32 = *(v6 + 16);
          v22 = RIOPxrUsdAttributeCopyValue();
          if (!v22)
          {
            v22 = RIOPxrVtValueCreateEmptyValue();
          }

          v33 = RIOPxrVtValueCopyInt32Array();
          if (!v33)
          {
            goto LABEL_46;
          }

          v34 = v33;
          v385.n128_u64[0] = v33;
          closure #1 in RIOPxrVtValueRef.asInt32Array.getter(&v385, v393);

          goto LABEL_19;
        }

        if (!swift_dynamicCastMetatype())
        {
          break;
        }

        v35 = *(v6 + 16);
        v36 = RIOPxrUsdAttributeCopyValue();
        if (!v36)
        {
          v36 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u64[0] = 0;
        v37 = v36;
        Int64 = RIOPxrVtValueGetInt64();

        if ((Int64 & 1) == 0)
        {
          goto LABEL_47;
        }

        v20.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
LABEL_48:
        v385.n128_u64[0] = v11;
        v385.n128_u64[1] = v13;
        [v0 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v5 == v4)
        {
          goto LABEL_418;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGMd, &_sSays5Int64VGMR);
      if (swift_dynamicCastMetatype())
      {
        v39 = *(v6 + 16);
        v22 = RIOPxrUsdAttributeCopyValue();
        if (!v22)
        {
          v22 = RIOPxrVtValueCreateEmptyValue();
        }

        v40 = RIOPxrVtValueCopyInt64Array();
        if (!v40)
        {
LABEL_46:

LABEL_47:
          v20.super.super.isa = 0;
          goto LABEL_48;
        }

        v385.n128_u64[0] = v40;
        v41 = v40;
        closure #1 in RIOPxrVtValueRef.asInt64Array.getter(&v385, v393);

        v3 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        v42 = *(v6 + 16);
        v43 = RIOPxrUsdAttributeCopyValue();
        if (!v43)
        {
          v43 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u32[0] = 0;
        v44 = v43;
        UInt32 = RIOPxrVtValueGetUInt32();

        if (UInt32)
        {
          v20.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
      if (swift_dynamicCastMetatype())
      {
        v46 = *(v6 + 16);
        v47 = RIOPxrUsdAttributeCopyValue();
        if (!v47)
        {
          v47 = RIOPxrVtValueCreateEmptyValue();
        }

        v48 = RIOPxrVtValueRef.asUInt32Array.getter();

        if (!v48)
        {
          goto LABEL_47;
        }

        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        v49 = *(v6 + 16);
        v50 = RIOPxrUsdAttributeCopyValue();
        if (!v50)
        {
          v50 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u8[0] = 0;
        v51 = v50;
        UInt8 = RIOPxrVtValueGetUInt8();

        if (UInt8)
        {
          v20.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      if (swift_dynamicCastMetatype())
      {
        v53 = *(v6 + 16);
        v54 = RIOPxrUsdAttributeCopyValue();
        if (!v54)
        {
          v54 = RIOPxrVtValueCreateEmptyValue();
        }

        v55 = RIOPxrVtValueRef.asUInt8Array.getter();

        if (!v55)
        {
          goto LABEL_47;
        }

        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v62 = *(v6 + 16);
        v63 = RIOPxrUsdAttributeCopyValue();
        if (!v63)
        {
          v63 = RIOPxrVtValueCreateEmptyValue();
        }

        v64 = RIOPxrVtValueRef.asUInt32Array.getter();

        if (!v64)
        {
          goto LABEL_378;
        }

LABEL_80:
        v65.super.isa = Array._bridgeToObjectiveC()().super.isa;
        goto LABEL_81;
      }

      if (swift_dynamicCastMetatype())
      {
        v66 = *(v6 + 16);
        v67 = RIOPxrUsdAttributeCopyValue();
        if (!v67)
        {
          v67 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u64[0] = 0;
        UInt64 = RIOPxrVtValueGetUInt64();

        if ((UInt64 & 1) == 0)
        {
          goto LABEL_378;
        }

        v60.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      if (swift_dynamicCastMetatype())
      {
        v69 = *(v6 + 16);
        v70 = RIOPxrUsdAttributeCopyValue();
        if (!v70)
        {
          v70 = RIOPxrVtValueCreateEmptyValue();
        }

        v71 = RIOPxrVtValueRef.asUInt64Array.getter();

        if (!v71)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v72 = *(v6 + 16);
        v73 = RIOPxrUsdAttributeCopyValue();
        if (!v73)
        {
          v73 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u32[0] = 0;
        Float = RIOPxrVtValueGetFloat();

        if ((Float & 1) == 0)
        {
          goto LABEL_378;
        }

        v60.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v75 = *(v6 + 16);
        v76 = RIOPxrUsdAttributeCopyValue();
        if (!v76)
        {
          v76 = RIOPxrVtValueCreateEmptyValue();
        }

        v77 = RIOPxrVtValueRef.asFloatArray.getter();

        if (!v77)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v78 = *(v6 + 16);
        v79 = RIOPxrUsdAttributeCopyValue();
        if (!v79)
        {
          v79 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u64[0] = 0;
        Double = RIOPxrVtValueGetDouble();

        if ((Double & 1) == 0)
        {
          goto LABEL_378;
        }

        v60.super.super.isa = MEMORY[0x26670F1F0](v385.n128_f64[0]);
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v81 = *(v6 + 16);
        v82 = RIOPxrUsdAttributeCopyValue();
        if (!v82)
        {
          v82 = RIOPxrVtValueCreateEmptyValue();
        }

        v83 = RIOPxrVtValueRef.asDoubleArray.getter();

        if (!v83)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v84 = *(v6 + 16);
        v85 = RIOPxrUsdAttributeCopyValue();
        if (!v85)
        {
          v85 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u64[0] = 0;
        Int2 = RIOPxrVtValueGetInt2();

        if (!Int2)
        {
          goto LABEL_378;
        }

        v87 = specialized SIMD.asScalarArray()(v385.n128_f64[0]);
LABEL_117:
        v385.n128_u64[0] = v87;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v385, &_sSays5Int32VGMd, &_sSays5Int32VGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vys5Int32VGGMd, &_sSays5SIMD2Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v88 = *(v6 + 16);
        v89 = RIOPxrUsdAttributeCopyValue();
        if (!v89)
        {
          v89 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v90 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D10VyAIGXEfU_Tf1cn_n(isa);
        goto LABEL_123;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v95 = *(v6 + 16);
        v96 = RIOPxrUsdAttributeCopyValue();
        if (!v96)
        {
          v96 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Int3 = RIOPxrVtValueGetInt3();

        if (!Int3)
        {
          goto LABEL_378;
        }

        v87 = specialized SIMD.asScalarArray()(v385);
        goto LABEL_117;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vys5Int32VGGMd, &_sSays5SIMD3Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v98 = *(v6 + 16);
        v99 = RIOPxrUsdAttributeCopyValue();
        if (!v99)
        {
          v99 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v100 = specialized SIMD.asScalarArray();
LABEL_135:
        v90 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D11VyAIGXEfU0_Tf1cn_nTm(isa, v100);
LABEL_123:
        v91 = v90;

        v385.n128_u64[0] = v91;
        v92 = &_sSaySays5Int32VGGMd;
        v93 = &_sSaySays5Int32VGGMd;
        v94 = &_sSaySays5Int32VGGMR;
        goto LABEL_124;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v101 = *(v6 + 16);
        v102 = RIOPxrUsdAttributeCopyValue();
        if (!v102)
        {
          v102 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Int4 = RIOPxrVtValueGetInt4();

        if (!Int4)
        {
          goto LABEL_378;
        }

        v87 = specialized SIMD.asScalarArray()(v385);
        goto LABEL_117;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vys5Int32VGGMd, &_sSays5SIMD4Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v104 = *(v6 + 16);
        v105 = RIOPxrUsdAttributeCopyValue();
        if (!v105)
        {
          v105 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v100 = specialized SIMD.asScalarArray();
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v106 = *(v6 + 16);
        v107 = RIOPxrUsdAttributeCopyValue();
        if (!v107)
        {
          v107 = RIOPxrVtValueCreateEmptyValue();
        }

        v385.n128_u64[0] = 0;
        Float2 = RIOPxrVtValueGetFloat2();

        if (!Float2)
        {
          goto LABEL_378;
        }

        v109 = specialized SIMD.asScalarArray()(v385.n128_f64[0]);
LABEL_151:
        v385.n128_u64[0] = v109;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v385, &_sSaySfGMd, &_sSaySfGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v110 = *(v6 + 16);
        v111 = RIOPxrUsdAttributeCopyValue();
        if (!v111)
        {
          v111 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU2_Tf1cn_n(isa);
        goto LABEL_157;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v114 = *(v6 + 16);
        v115 = RIOPxrUsdAttributeCopyValue();
        if (!v115)
        {
          v115 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Float3 = RIOPxrVtValueGetFloat3();

        if (!Float3)
        {
          goto LABEL_378;
        }

        v109 = specialized SIMD.asScalarArray()(v385);
        goto LABEL_151;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v117 = *(v6 + 16);
        v118 = RIOPxrUsdAttributeCopyValue();
        if (!v118)
        {
          v118 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v119 = specialized SIMD.asScalarArray();
LABEL_168:
        v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU3_Tf1cn_nTm(isa, v119);
LABEL_157:
        v113 = v112;

        v385.n128_u64[0] = v113;
        v92 = &_sSaySaySfGGMd;
        v93 = &_sSaySaySfGGMd;
        v94 = &_sSaySaySfGGMR;
        goto LABEL_124;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v120 = *(v6 + 16);
        v121 = RIOPxrUsdAttributeCopyValue();
        if (!v121)
        {
          v121 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Float4 = RIOPxrVtValueGetFloat4();

        if (!Float4)
        {
          goto LABEL_378;
        }

        v109 = specialized SIMD.asScalarArray()(v385);
        goto LABEL_151;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v123 = *(v6 + 16);
        v124 = RIOPxrUsdAttributeCopyValue();
        if (!v124)
        {
          v124 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v119 = specialized SIMD.asScalarArray();
        goto LABEL_168;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v125 = *(v6 + 16);
        v126 = RIOPxrUsdAttributeCopyValue();
        if (!v126)
        {
          v126 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Double2 = RIOPxrVtValueGetDouble2();

        isa = 0;
        if (!Double2)
        {
          goto LABEL_379;
        }

        v128 = specialized SIMD.asScalarArray()(v385);
        goto LABEL_184;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySdGGMd, &_sSays5SIMD2VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v129 = *(v6 + 16);
        v130 = RIOPxrUsdAttributeCopyValue();
        if (!v130)
        {
          v130 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v131 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU5_Tf1cn_n(isa);
        goto LABEL_190;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v133 = *(v6 + 16);
        v134 = RIOPxrUsdAttributeCopyValue();
        if (!v134)
        {
          v134 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0u;
        v386 = 0u;
        Double3 = RIOPxrVtValueGetDouble3();

        if ((Double3 & 1) == 0)
        {
          goto LABEL_378;
        }

        v128 = specialized SIMD.asScalarArray()(v385, v386.n128_f64[0]);
LABEL_184:
        v385.n128_u64[0] = v128;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v385, &_sSaySdGMd, &_sSaySdGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySdGGMd, &_sSays5SIMD3VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v136 = *(v6 + 16);
        v137 = RIOPxrUsdAttributeCopyValue();
        if (!v137)
        {
          v137 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v138 = specialized SIMD.asScalarArray();
LABEL_201:
        v131 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU6_Tf1cn_nTm(isa, v138);
LABEL_190:
        v132 = v131;

        v385.n128_u64[0] = v132;
        v92 = &_sSaySaySdGGMd;
        v93 = &_sSaySaySdGGMd;
        v94 = &_sSaySaySdGGMR;
LABEL_124:
        __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v385, v92, v94);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v139 = *(v6 + 16);
        v140 = RIOPxrUsdAttributeCopyValue();
        if (!v140)
        {
          v140 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0u;
        v386 = 0u;
        Double4 = RIOPxrVtValueGetDouble4();

        if ((Double4 & 1) == 0)
        {
          goto LABEL_378;
        }

        v128 = specialized SIMD.asScalarArray()(v385, v386);
        goto LABEL_184;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySdGGMd, &_sSays5SIMD4VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v142 = *(v6 + 16);
        v143 = RIOPxrUsdAttributeCopyValue();
        if (!v143)
        {
          v143 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v138 = specialized SIMD.asScalarArray();
        goto LABEL_201;
      }

      type metadata accessor for simd_quatf(0);
      if (swift_dynamicCastMetatype())
      {
        v144 = *(v6 + 16);
        v145 = RIOPxrUsdAttributeCopyValue();
        if (!v145)
        {
          v145 = RIOPxrVtValueCreateEmptyValue();
        }

        v385 = 0uLL;
        Quatf = RIOPxrVtValueGetQuatf();

        if (Quatf)
        {
          v373 = v385;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_26198AB70;
          *(v147 + 32) = vextq_s8(v373, v373, 0xCuLL);
          goto LABEL_372;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatfaGMd, &_sSaySo10simd_quatfaGMR);
        if (swift_dynamicCastMetatype())
        {
          v148 = *(v6 + 16);
          v149 = RIOPxrUsdAttributeCopyValue();
          if (!v149)
          {
            v149 = RIOPxrVtValueCreateEmptyValue();
          }

          v150 = RIOPxrVtValueRef.asQuatfArray.getter();

          if (v150)
          {
            v359 = *(v150 + 16);
            if (v359)
            {
              v374 = (v150 + 32);
              v151 = MEMORY[0x277D84F90];
              do
              {
                v350 = *v374;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
                v152 = swift_allocObject();
                *(v152 + 16) = xmmword_26198AB70;
                *(v152 + 32) = vextq_s8(v350, v350, 0xCuLL);
                v341 = v152;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v151[2] + 1, 1, v151);
                }

                v154 = v151[2];
                v153 = v151[3];
                v351 = v154 + 1;
                if (v154 >= v153 >> 1)
                {
                  v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v351, 1, v151);
                }

                v151[2] = v351;
                v151[v154 + 4] = v341;
                ++v374;
                --v359;
              }

              while (v359);
            }

LABEL_234:

            goto LABEL_372;
          }
        }

        else
        {
          type metadata accessor for simd_quatd(0);
          if (swift_dynamicCastMetatype())
          {
            v155 = *(v6 + 16);
            v156 = RIOPxrUsdAttributeCopyValue();
            if (!v156)
            {
              v156 = RIOPxrVtValueCreateEmptyValue();
            }

            v385 = 0u;
            v386 = 0u;
            Quatd = RIOPxrVtValueGetQuatd();

            if (Quatd)
            {
              v360 = v385;
              v375 = v386;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
              v158 = swift_allocObject();
              *(v158 + 16) = xmmword_26198AB70;
              *(v158 + 32) = vextq_s8(v375, v360, 8uLL);
              *(v158 + 48) = vextq_s8(v360, v375, 8uLL);
              goto LABEL_372;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatdaGMd, &_sSaySo10simd_quatdaGMR);
            if (swift_dynamicCastMetatype())
            {
              v159 = *(v6 + 16);
              v160 = RIOPxrUsdAttributeCopyValue();
              if (!v160)
              {
                v160 = RIOPxrVtValueCreateEmptyValue();
              }

              v161 = RIOPxrVtValueRef.asQuatdArray.getter();

              if (v161)
              {
                v352 = *(v161 + 16);
                if (v352)
                {
                  v162 = (v161 + 32);
                  v163 = MEMORY[0x277D84F90];
                  do
                  {
                    v334 = *v162;
                    v342 = v162[1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
                    v164 = swift_allocObject();
                    *(v164 + 16) = xmmword_26198AB70;
                    *(v164 + 32) = vextq_s8(v342, v334, 8uLL);
                    v165 = vextq_s8(v334, v342, 8uLL);
                    v335 = v164;
                    *(v164 + 48) = v165;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v163[2] + 1, 1, v163);
                    }

                    v167 = v163[2];
                    v166 = v163[3];
                    v343 = v167 + 1;
                    if (v167 >= v166 >> 1)
                    {
                      v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v343, 1, v163);
                    }

                    v163[2] = v343;
                    v163[v167 + 4] = v335;
                    v162 += 2;
                    --v352;
                  }

                  while (v352);
                }

                goto LABEL_234;
              }
            }

            else
            {
              type metadata accessor for simd_double2x2(0);
              if (swift_dynamicCastMetatype())
              {
                v168 = *(v6 + 16);
                v169 = RIOPxrUsdAttributeCopyValue();
                if (!v169)
                {
                  v169 = RIOPxrVtValueCreateEmptyValue();
                }

                v385 = 0u;
                v386 = 0u;
                Matrix2d = RIOPxrVtValueGetMatrix2d();

                if (Matrix2d)
                {
                  v353 = v386;
                  v361 = v385;
                  v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v173 = *(v171 + 2);
                  v172 = *(v171 + 3);
                  v174 = v172 >> 1;
                  v175 = v173 + 1;
                  if (v172 >> 1 <= v173)
                  {
                    v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1, v171);
                    v172 = *(v171 + 3);
                    v174 = v172 >> 1;
                  }

                  *(v171 + 2) = v175;
                  *&v171[8 * v173 + 32] = v361.n128_u64[0];
                  v176 = v173 + 2;
                  if (v174 < v176)
                  {
                    v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v176, 1, v171);
                  }

                  *(v171 + 2) = v176;
                  *&v171[8 * v175 + 32] = v361.n128_u64[1];
                  v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v179 = v177[2];
                  v178 = v177[3];
                  v362 = v179 + 1;
                  if (v179 >= v178 >> 1)
                  {
                    v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v362, 1, v177);
                  }

                  v177[2] = v362;
                  v177[v179 + 4] = v171;
                  v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v182 = *(v180 + 2);
                  v181 = *(v180 + 3);
                  v183 = v181 >> 1;
                  v363 = v182 + 1;
                  if (v181 >> 1 <= v182)
                  {
                    v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v363, 1, v180);
                    v181 = *(v180 + 3);
                    v183 = v181 >> 1;
                  }

                  *(v180 + 2) = v363;
                  *&v180[8 * v182 + 32] = v353.n128_u64[0];
                  v184 = v182 + 2;
                  if (v183 < v184)
                  {
                    v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v184, 1, v180);
                  }

                  *(v180 + 2) = v184;
                  *&v180[8 * v363 + 32] = v353.n128_u64[1];
                  v186 = v177[2];
                  v185 = v177[3];
                  v364 = v186 + 1;
                  if (v186 >= v185 >> 1)
                  {
                    v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v364, 1, v177);
                  }

                  v177[2] = v364;
                  v177[v186 + 4] = v180;
                  v187.super.isa = Array._bridgeToObjectiveC()().super.isa;

                  v188 = specialized _bridgeAnythingToObjectiveC<A>(_:)();

                  goto LABEL_417;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double2x2aGMd, &_sSaySo14simd_double2x2aGMR);
                if (swift_dynamicCastMetatype())
                {
                  v189 = *(v6 + 16);
                  v190 = RIOPxrUsdAttributeCopyValue();
                  if (!v190)
                  {
                    v190 = RIOPxrVtValueCreateEmptyValue();
                  }

                  v191 = RIOPxrVtValueRef.asMatrix2dArray.getter();

                  v376 = v191;
                  if (v191)
                  {
                    v321 = *(v191 + 16);
                    if (v321)
                    {
                      v365 = 0;
                      v354 = (v191 + 48);
                      v192 = MEMORY[0x277D84F90];
                      while (v365 < *(v376 + 16))
                      {
                        v325 = *(v354 - 1);
                        v336 = *v354;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                        v329 = swift_allocObject();
                        *(v329 + 16) = xmmword_2619891C0;
                        v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                        v195 = *(v193 + 2);
                        v194 = *(v193 + 3);
                        v196 = v194 >> 1;
                        v344 = v195 + 1;
                        if (v194 >> 1 <= v195)
                        {
                          v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v344, 1, v193);
                          v194 = *(v193 + 3);
                          v196 = v194 >> 1;
                        }

                        *(v193 + 2) = v344;
                        *&v193[8 * v195 + 32] = v325;
                        if (v196 < (v195 + 2))
                        {
                          v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v195 + 2, 1, v193);
                        }

                        *(v193 + 2) = v195 + 2;
                        *&v193[8 * v344 + 32] = *(&v325 + 1);
                        *(v329 + 32) = v193;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v192[2] + 1, 1, v192);
                        }

                        v198 = v192[2];
                        v197 = v192[3];
                        if (v198 >= v197 >> 1)
                        {
                          v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1, v192);
                        }

                        v192[2] = v198 + 1;
                        v192[v198 + 4] = v329;
                        v330 = swift_allocObject();
                        *(v330 + 16) = xmmword_2619891C0;
                        v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                        v201 = *(v199 + 2);
                        v200 = *(v199 + 3);
                        v202 = v200 >> 1;
                        v345 = v201 + 1;
                        if (v200 >> 1 <= v201)
                        {
                          v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v345, 1, v199);
                          v200 = *(v199 + 3);
                          v202 = v200 >> 1;
                        }

                        *(v199 + 2) = v345;
                        *&v199[8 * v201 + 32] = v336;
                        if (v202 < (v201 + 2))
                        {
                          v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 2, 1, v199);
                        }

                        *(v199 + 2) = v201 + 2;
                        *&v199[8 * v345 + 32] = *(&v336 + 1);
                        *(v330 + 32) = v199;
                        v204 = v192[2];
                        v203 = v192[3];
                        if (v204 >= v203 >> 1)
                        {
                          v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v203 > 1), v204 + 1, 1, v192);
                        }

                        v192[2] = v204 + 1;
                        v192[v204 + 4] = v330;
                        v354 += 2;
                        if (v321 == ++v365)
                        {
                          goto LABEL_344;
                        }
                      }

                      __break(1u);
LABEL_446:
                      __break(1u);
                      goto LABEL_447;
                    }

                    goto LABEL_344;
                  }
                }

                else
                {
                  type metadata accessor for simd_double3x3(0);
                  if (swift_dynamicCastMetatype())
                  {
                    v205 = *(v6 + 16);
                    v206 = RIOPxrUsdAttributeCopyValue();
                    if (!v206)
                    {
                      v206 = RIOPxrVtValueCreateEmptyValue();
                    }

                    v389 = 0u;
                    v390 = 0u;
                    v387 = 0u;
                    v388 = 0u;
                    v385 = 0u;
                    v386 = 0u;
                    Matrix3d = RIOPxrVtValueGetMatrix3d();

                    if (Matrix3d)
                    {
                      v208 = v385;
                      v337 = v387;
                      v346 = v388.n128_f64[0];
                      v355 = v389;
                      v366 = v390.n128_f64[0];
                      v385.n128_u64[0] = MEMORY[0x277D84F90];
                      v209 = specialized SIMD.asScalarArray()(v208, v386.n128_f64[0]);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v210 = v385.n128_u64[0];
                      v212 = *(v385.n128_u64[0] + 16);
                      v211 = *(v385.n128_u64[0] + 24);
                      if (v212 >= v211 >> 1)
                      {
                        v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v211 > 1), v212 + 1, 1, v385.n128_u64[0]);
                        v385.n128_u64[0] = v210;
                      }

                      v210[2] = v212 + 1;
                      v210[v212 + 4] = v209;
                      v213 = specialized SIMD.asScalarArray()(v337, v346);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v214 = v385.n128_u64[0];
                      v216 = *(v385.n128_u64[0] + 16);
                      v215 = *(v385.n128_u64[0] + 24);
                      if (v216 >= v215 >> 1)
                      {
                        v214 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v215 > 1), v216 + 1, 1, v385.n128_u64[0]);
                        v385.n128_u64[0] = v214;
                      }

                      v214[2] = v216 + 1;
                      v214[v216 + 4] = v213;
                      v217 = specialized SIMD.asScalarArray()(v355, v366);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v218 = v385.n128_u64[0];
                      v220 = *(v385.n128_u64[0] + 16);
                      v219 = *(v385.n128_u64[0] + 24);
                      v367 = v220 + 1;
                      if (v220 >= v219 >> 1)
                      {
                        v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v219 > 1), v367, 1, v385.n128_u64[0]);
                        v385.n128_u64[0] = v218;
                      }

LABEL_343:
                      v218[2] = v367;
                      v218[v220 + 4] = v217;
                      v249.super.isa = Array._bridgeToObjectiveC()().super.isa;

                      v250 = specialized _bridgeAnythingToObjectiveC<A>(_:)();

                      goto LABEL_373;
                    }
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double3x3aGMd, &_sSaySo14simd_double3x3aGMR);
                    if (swift_dynamicCastMetatype())
                    {
                      v221 = *(v6 + 16);
                      v222 = RIOPxrUsdAttributeCopyValue();
                      if (!v222)
                      {
                        v222 = RIOPxrVtValueCreateEmptyValue();
                      }

                      v223 = RIOPxrVtValueRef.asMatrix3dArray.getter();

                      v368 = v223;
                      if (v223)
                      {
                        v326 = *(v223 + 16);
                        if (v326)
                        {
                          v224 = 0;
                          v322 = v223 + 32;
                          v377 = MEMORY[0x277D84F90];
                          while (*(v368 + 16) > v224)
                          {
                            v347 = 0;
                            v319 = v224 + 1;
                            v225 = (v322 + 96 * v224);
                            v315 = *v225;
                            v317 = v225[1];
                            v311 = v225[2];
                            v313 = v225[3];
                            v308 = v225[4];
                            v309 = v225[5];
                            do
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                              v331 = swift_allocObject();
                              *(v331 + 16) = xmmword_2619891C0;
                              v356 = v315;
                              v338 = v317;
                              if (v347)
                              {
                                v356 = v311;
                                v338 = v313;
                                if (v347 != 1)
                                {
                                  v356 = v308;
                                  v338 = v309;
                                }
                              }

                              v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                              v228 = *(v226 + 2);
                              v227 = *(v226 + 3);
                              v229 = v227 >> 1;
                              v230 = v228 + 1;
                              if (v227 >> 1 <= v228)
                              {
                                v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1, v226);
                                v227 = *(v226 + 3);
                                v229 = v227 >> 1;
                              }

                              *(v226 + 2) = v230;
                              *&v226[8 * v228 + 32] = v356;
                              v231 = v228 + 2;
                              if (v229 < (v228 + 2))
                              {
                                v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 2, 1, v226);
                              }

                              *(v226 + 2) = v231;
                              *&v226[8 * v230 + 32] = *(&v356 + 1);
                              v232 = *(v226 + 3);
                              v233 = v228 + 3;
                              if (v233 > (v232 >> 1))
                              {
                                v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v232 > 1), v233, 1, v226);
                              }

                              *(v226 + 2) = v233;
                              *&v226[8 * v231 + 32] = v338;
                              *(v331 + 32) = v226;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v377 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v377[2] + 1, 1, v377);
                              }

                              v235 = v377[2];
                              v234 = v377[3];
                              if (v235 >= v234 >> 1)
                              {
                                v377 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v234 > 1), v235 + 1, 1, v377);
                              }

                              v377[2] = v235 + 1;
                              v377[v235 + 4] = v331;
                              ++v347;
                            }

                            while (v347 != 3);
                            v224 = v319;
                            if (v319 == v326)
                            {
                              goto LABEL_344;
                            }
                          }

                          goto LABEL_446;
                        }

LABEL_344:

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySdGGMd, &_sSaySaySdGGMR);
                        v187.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_416:
                        v385.n128_u64[0] = v11;
                        v385.n128_u64[1] = v13;
                        v188 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_417:
                        [v0 __swift_setObject_forKeyedSubscript_];

                        goto LABEL_380;
                      }
                    }

                    else
                    {
                      type metadata accessor for simd_double4x4(0);
                      if (swift_dynamicCastMetatype())
                      {
                        v236 = *(v6 + 16);
                        v237 = RIOPxrUsdAttributeCopyValue();
                        if (!v237)
                        {
                          v237 = RIOPxrVtValueCreateEmptyValue();
                        }

                        v391 = 0u;
                        v392 = 0u;
                        v389 = 0u;
                        v390 = 0u;
                        v387 = 0u;
                        v388 = 0u;
                        v385 = 0u;
                        v386 = 0u;
                        Matrix4d = RIOPxrVtValueGetMatrix4d();

                        if (Matrix4d)
                        {
                          v323 = v387;
                          v327 = v388;
                          v332 = v389;
                          v339 = v390;
                          v348 = v391;
                          v357 = v392;
                          v239 = specialized SIMD.asScalarArray()(v385, v386);
                          v218 = MEMORY[0x277D84F90];
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
                          }

                          v241 = v218[2];
                          v240 = v218[3];
                          v369 = v241 + 1;
                          if (v241 >= v240 >> 1)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v240 > 1), v369, 1, v218);
                          }

                          v218[2] = v369;
                          v218[v241 + 4] = v239;
                          v242 = specialized SIMD.asScalarArray()(v323, v327);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v218[2] + 1, 1, v218);
                          }

                          v244 = v218[2];
                          v243 = v218[3];
                          v370 = v244 + 1;
                          if (v244 >= v243 >> 1)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v243 > 1), v370, 1, v218);
                          }

                          v218[2] = v370;
                          v218[v244 + 4] = v242;
                          v245 = specialized SIMD.asScalarArray()(v332, v339);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v218[2] + 1, 1, v218);
                          }

                          v247 = v218[2];
                          v246 = v218[3];
                          v371 = v247 + 1;
                          if (v247 >= v246 >> 1)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v371, 1, v218);
                          }

                          v218[2] = v371;
                          v218[v247 + 4] = v245;
                          v217 = specialized SIMD.asScalarArray()(v348, v357);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v218[2] + 1, 1, v218);
                          }

                          v220 = v218[2];
                          v248 = v218[3];
                          v367 = v220 + 1;
                          if (v220 >= v248 >> 1)
                          {
                            v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v248 > 1), v367, 1, v218);
                          }

                          goto LABEL_343;
                        }
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double4x4aGMd, &_sSaySo14simd_double4x4aGMR);
                        if (!swift_dynamicCastMetatype())
                        {
                          if (swift_dynamicCastMetatype())
                          {
                            v263 = *(v6 + 16);
                            v264 = RIOPxrUsdAttributeCopyValue();
                            if (!v264)
                            {
                              v264 = RIOPxrVtValueCreateEmptyValue();
                            }

                            v265 = RIOPxrVtValueRef.asString.getter();
                            v267 = v266;

                            if (v267)
                            {
                              v65.super.isa = MEMORY[0x26670EFB0](v265, v267);
LABEL_81:
                              isa = v65.super.isa;

LABEL_379:
                              v385.n128_u64[0] = v11;
                              v385.n128_u64[1] = v13;
                              [v0 __swift_setObject_forKeyedSubscript_];
                              swift_unknownObjectRelease();
                              goto LABEL_380;
                            }

LABEL_378:
                            isa = 0;
                            goto LABEL_379;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v268 = *(v6 + 16);
                            v269 = RIOPxrUsdAttributeCopyValue();
                            if (!v269)
                            {
                              v269 = RIOPxrVtValueCreateEmptyValue();
                            }

                            v270 = RIOPxrVtValueRef.asStringArray.getter();

                            if (!v270)
                            {
                              goto LABEL_378;
                            }

                            goto LABEL_80;
                          }

                          if (swift_dynamicCastMetatype())
                          {
                            v271 = *(v6 + 16);
                            v272 = RIOPxrUsdAttributeCopyValue();
                            if (!v272)
                            {
                              v272 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueCopyToken();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v273 = RIOPxrTfTokenCopyString();
                            goto LABEL_408;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v274 = *(v6 + 16);
                            v275 = RIOPxrUsdAttributeCopyValue();
                            if (!v275)
                            {
                              v275 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asTokenArray.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v276 = MEMORY[0x277D00AC0];
                            goto LABEL_414;
                          }

                          if (swift_dynamicCastMetatype())
                          {
                            v277 = *(v6 + 16);
                            v278 = RIOPxrUsdAttributeCopyValue();
                            if (!v278)
                            {
                              v278 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueCopyPath();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v273 = RIOPxrSdfPathCopyString();
                            goto LABEL_408;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v279 = *(v6 + 16);
                            v280 = RIOPxrUsdAttributeCopyValue();
                            if (!v280)
                            {
                              v280 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asPathListOp.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v276 = MEMORY[0x277D00990];
                          }

                          else
                          {
                            if (swift_dynamicCastMetatype())
                            {
                              v281 = *(v6 + 16);
                              v282 = RIOPxrUsdAttributeCopyValue();
                              if (!v282)
                              {
                                v282 = RIOPxrVtValueCreateEmptyValue();
                              }

                              isa = RIOPxrVtValueCopyAssetPath();

                              if (!isa)
                              {
                                goto LABEL_379;
                              }

                              v273 = RIOPxrSdfAssetPathAssetPathCopyString();
LABEL_408:
                              v283 = v273;
                              v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v379 = v285;

                              v385.n128_u64[0] = v284;
                              v385.n128_u64[1] = v379;
                              isa = _bridgeAnythingToObjectiveC<A>(_:)();
                              outlined destroy of String(&v385);
                              goto LABEL_379;
                            }

                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
                            if (!swift_dynamicCastMetatype())
                            {
                              v187.super.isa = MEMORY[0x26670EFB0](0xD00000000000003CLL, 0x8000000261995D40);
                              goto LABEL_416;
                            }

                            v286 = *(v6 + 16);
                            v287 = RIOPxrUsdAttributeCopyValue();
                            if (!v287)
                            {
                              v287 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asAssetPathArray.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v276 = MEMORY[0x277D008D0];
                          }

LABEL_414:
                          v288 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9RealityIO16ToolsFoundationsO5TokenVG_SSs5NeverOTg503_s9d63IO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSSAA16fg2O5H7VXEfU8_Tf1cn_nTm(isa, v276);

                          v385.n128_u64[0] = v288;
                          isa = _bridgeAnythingToObjectiveC<A>(_:)();
                          outlined destroy of Any?(&v385, &_sSaySSGMd, &_sSaySSGMR);
                          goto LABEL_379;
                        }

                        v251 = *(v6 + 16);
                        v252 = RIOPxrUsdAttributeCopyValue();
                        if (!v252)
                        {
                          v252 = RIOPxrVtValueCreateEmptyValue();
                        }

                        v253 = RIOPxrVtValueRef.asMatrix4dArray.getter();

                        v378 = v253;
                        if (v253)
                        {
                          v349 = *(v253 + 16);
                          if (v349)
                          {
                            v254 = 0;
                            v340 = v253 + 32;
                            v255 = MEMORY[0x277D84F90];
                            while (*(v378 + 16) > v254)
                            {
                              v256 = 0;
                              v333 = v254 + 1;
                              v257 = (v340 + (v254 << 7));
                              v324 = *v257;
                              v328 = v257[1];
                              v318 = v257[2];
                              v320 = v257[3];
                              v314 = v257[4];
                              v316 = v257[5];
                              v310 = v257[6];
                              v312 = v257[7];
                              do
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                                v258 = swift_allocObject();
                                v372 = v258;
                                *(v258 + 16) = xmmword_2619891C0;
                                if (v256 > 1)
                                {
                                  v259 = v314;
                                  v260 = v316;
                                  if (v256 != 2)
                                  {
                                    v259 = v310;
                                    v260 = v312;
                                  }
                                }

                                else
                                {
                                  v259 = v324;
                                  v260 = v328;
                                  if (v256)
                                  {
                                    v259 = v318;
                                    v260 = v320;
                                  }
                                }

                                *(v258 + 32) = specialized SIMD.asScalarArray()(v259, v260);
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v255 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v255[2] + 1, 1, v255);
                                }

                                v262 = v255[2];
                                v261 = v255[3];
                                v358 = v262 + 1;
                                if (v262 >= v261 >> 1)
                                {
                                  v255 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v358, 1, v255);
                                }

                                ++v256;
                                v255[2] = v358;
                                v255[v262 + 4] = v372;
                              }

                              while (v256 != 4);
                              v254 = v333;
                              if (v333 == v349)
                              {
                                goto LABEL_371;
                              }
                            }

LABEL_447:
                            __break(1u);
                            return;
                          }

LABEL_371:

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySdGGMd, &_sSaySaySdGGMR);
LABEL_372:
                          v249.super.isa = Array._bridgeToObjectiveC()().super.isa;

                          v385.n128_u64[0] = v11;
                          v385.n128_u64[1] = v13;
                          v250 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_373:
                          [v0 __swift_setObject_forKeyedSubscript_];

LABEL_380:
                          swift_unknownObjectRelease();

                          goto LABEL_381;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_381:
      v3 = MEMORY[0x277D84F90];
      if (v5 == v4)
      {
LABEL_418:

        goto LABEL_420;
      }
    }

    v56 = *(v6 + 16);
    v57 = RIOPxrUsdAttributeCopyValue();
    if (!v57)
    {
      v57 = RIOPxrVtValueCreateEmptyValue();
    }

    v385.n128_u32[0] = 0;
    v58 = v57;
    v59 = RIOPxrVtValueGetUInt32();

    if ((v59 & 1) == 0)
    {
      goto LABEL_378;
    }

    v60.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
LABEL_75:
    isa = v60.super.super.isa;
    goto LABEL_379;
  }

LABEL_420:
  v384 = v0;
  v289 = Prim.children.getter();
  v385.n128_u64[0] = v3;
  v290 = (specialized Array._getCount())();
  if (!v290)
  {
    goto LABEL_433;
  }

  v291 = v290;
  v292 = 0;
  while ((v289 & 0xC000000000000001) != 0)
  {
    v293 = MEMORY[0x26670F670](v292, v289);
    v294 = v292 + 1;
    if (__OFADD__(v292, 1))
    {
      goto LABEL_431;
    }

LABEL_427:
    v393[0] = v293;
    if (closure #13 in componentPrimToDictionary(component:)(v393))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v295 = *(v385.n128_u64[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v292;
    if (v294 == v291)
    {
      goto LABEL_432;
    }
  }

  if (v292 >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_442;
  }

  v293 = *(v289 + 8 * v292 + 32);

  v294 = v292 + 1;
  if (!__OFADD__(v292, 1))
  {
    goto LABEL_427;
  }

LABEL_431:
  __break(1u);
LABEL_432:
  v3 = v385.n128_u64[0];
LABEL_433:

  v296 = specialized Array._getCount()(v3);
  if (v296)
  {
    v297 = v296;
    if (v296 >= 1)
    {
      v298 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v299 = MEMORY[0x26670F670](v298, v3);
        }

        else
        {
          v299 = *(v3 + 8 * v298 + 32);
        }

        ++v298;
        v300 = *(v299 + 16);
        v301 = RIOPxrUsdObjectCopyName();
        v302 = RIOPxrTfTokenCopyString();
        v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v305 = v304;

        v306 = componentPrimToDictionary(component:)(v299);
        v385.n128_u64[0] = v303;
        v385.n128_u64[1] = v305;
        [v384 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
      }

      while (v297 != v298);
      goto LABEL_440;
    }

LABEL_444:
    __break(1u);
  }

LABEL_440:

  v307 = *MEMORY[0x277D85DE8];
}

uint64_t closure #13 in componentPrimToDictionary(component:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = RIOPxrUsdPrimCopyTypeName();
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {
    return 1;
  }

  v7 = *(v1 + 16);
  v8 = RIOPxrUsdPrimCopyTypeName();
  v9 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v10 = v9;
  v11 = static _CFObject.== infix(_:_:)();

  if (v11)
  {
    return 1;
  }

  v12 = *(v1 + 16);
  v13 = RIOPxrUsdPrimCopyTypeName();
  v14 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v15 = v14;
  v16 = static _CFObject.== infix(_:_:)();

  if (v16)
  {
    return 1;
  }

  v18 = *(v1 + 16);
  v19 = RIOPxrUsdPrimCopyTypeName();
  if (String.count.getter() < 1)
  {
    v20 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v20 = RIOPxrTfTokenCreateWithCString();
  }

  v21 = v20;
  v22 = static _CFObject.== infix(_:_:)();

  return v22 & 1;
}

void *specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t Stage.hasPrim(at:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdStageHasPrimAtPrimPath();
}

uint64_t Stage.prim(of:at:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = PrimIfNeeded;
  return result;
}

void Stage.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 16);
  v8 = RIOPxrUsdStageCopyRootLayer();
  v10 = RIOPxrSdfLayerCopyCustomLayerDataValue();

  if (v10)
  {
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a3);
  }

  else
  {
    v9 = *(*(a2 - 8) + 56);

    v9(a3, 1, 1, a2);
  }
}

char *Stage.createImportSession(engine:pipelineVersion:)(uint64_t a1)
{
  v3 = type metadata accessor for __EngineRef();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (!a1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.__coreEngine.getter();

    __AssetRef.__as<A>(_:)();
    (*(v4 + 8))(v7, v3);
  }

  result = RIOImportSessionCreateWithStage();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for Entity();
    v12 = type metadata accessor for ImportSession(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    return specialized ImportSession.init<A>(core:entityType:)(v10, v11);
  }

  return result;
}

Swift::Int Stage.LoadError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

uint64_t Stage.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = RIOPxrUsdStageCreateInMemory();
  return v0;
}

uint64_t Stage.__allocating_init(identifier:buffer:length:)()
{
  v0 = swift_allocObject();
  String.utf8CString.getter();

  v1 = RIOPxrUsdStageCreateWithInMemoryBuffer();

  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t Stage.init(identifier:buffer:length:)()
{
  String.utf8CString.getter();

  v1 = RIOPxrUsdStageCreateWithInMemoryBuffer();

  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t Stage.__allocating_init(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  Stage.init(identifier:data:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Stage.init(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();

  v8 = RIOPxrUsdStageCreateWithInMemoryDataBufferWithErrorReporting();

  if (v8)
  {
    outlined consume of Data._Representation(a3, a4);
    *(v4 + 16) = v8;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(a3, a4);
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t Stage.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Stage.init(from:)(a1);
  return v2;
}

uint64_t Stage.init(from:)(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(*MEMORY[0x277D85DE8]);
  v5 = v4;
  v6 = RIOPxrUsdStageCreateWithFileURLWithErrorReporting();

  if (v6)
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(a1, v7);
    *(v2 + 16) = v6;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 8))(a1, v8);
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t Stage.__allocating_init(contentsOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = RIOPxrUsdStageCreateWithFileURL();

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  if (v6)
  {
    *(v2 + 16) = v6;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t Stage.init(contentsOf:)@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(a2);
  v6 = v5;
  v7 = RIOPxrUsdStageCreateWithFileURL();

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (v7)
  {
    *(v3 + 16) = v7;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t Stage.__allocating_init(from:)()
{
  v0 = swift_allocObject();
  Stage.init(from:)();
  return v0;
}

uint64_t Stage.init(from:)()
{
  v4 = *MEMORY[0x277D85DE8];
  String.utf8CString.getter();

  v1 = RIOPxrUsdStageCreateWithFilePathWithErrorReporting();

  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t Stage.__allocating_init(withFilePath:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = swift_allocObject();
  v5 = String.utf8CString.getter();

  v6 = a3(v5 + 32);

  if (v6)
  {
    *(v4 + 16) = v6;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t Stage.init(withFilePath:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = String.utf8CString.getter();

  v6 = a3(v5 + 32);

  if (v6)
  {
    *(v3 + 16) = v6;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t static Stage.isSupportedFile(_:)()
{
  URL.absoluteString.getter();
  String.utf8CString.getter();

  IsSupportedFile = RIOPxrUsdStageIsSupportedFile();

  return IsSupportedFile;
}

uint64_t Stage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Stage.makeTopLevelEntityStage(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for Stage();
  result = swift_allocObject();
  *(result + 16) = TopLevelEntityFromStage;
  return result;
}

uint64_t Stage.description.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageCopyUSDA();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t Stage.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageCopyUSDA();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  return 0xA3E65676174533CLL;
}

uint64_t (*Stage.metersPerUnit.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetMetersPerUnit();
  *a1 = v3;
  return Stage.metersPerUnit.modify;
}

uint64_t key path getter for Stage.defaultPrim : Stage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = RIOPxrUsdStageCopyDefaultPrim();
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t key path setter for Stage.defaultPrim : Stage(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);

  v4 = RIOPxrUsdStageCopyPseudoRootPrim();
  type metadata accessor for RIOPxrUsdObjectRef(0);
  v5 = *(v2 + 16);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef);
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {
    RIOPxrUsdStageClearDefaultPrim();
  }

  else
  {
    v7 = *(v2 + 16);
    RIOPxrUsdStageSetDefaultPrim();
  }
}

uint64_t Stage.defaultPrim.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = RIOPxrUsdStageCopyPseudoRootPrim();
  type metadata accessor for RIOPxrUsdObjectRef(0);
  v5 = *(a1 + 16);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef);
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {
    RIOPxrUsdStageClearDefaultPrim();
  }

  else
  {
    v7 = *(a1 + 16);
    RIOPxrUsdStageSetDefaultPrim();
  }
}

uint64_t (*Stage.defaultPrim.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *(v1 + 16);
  v3 = RIOPxrUsdStageCopyDefaultPrim();
  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return Stage.defaultPrim.modify;
}

uint64_t Stage.defaultPrim.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v5 = *a1;

    v6 = RIOPxrUsdStageCopyPseudoRootPrim();
    type metadata accessor for RIOPxrUsdObjectRef(0);
    v7 = *(v3 + 16);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef);
    LOBYTE(v7) = static _CFObject.== infix(_:_:)();

    v8 = a1[1];
    if (v7)
    {
      v9 = a1[1];
      RIOPxrUsdStageClearDefaultPrim();
    }

    else
    {
      v15 = *(v3 + 16);
      RIOPxrUsdStageSetDefaultPrim();
    }

    v16 = *a1;
  }

  else
  {
    v10 = a1[1];
    v11 = RIOPxrUsdStageCopyPseudoRootPrim();
    type metadata accessor for RIOPxrUsdObjectRef(0);
    v12 = *(v3 + 16);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef);
    LOBYTE(v12) = static _CFObject.== infix(_:_:)();

    v13 = a1[1];
    if (v12)
    {
      v14 = a1[1];
      RIOPxrUsdStageClearDefaultPrim();
    }

    else
    {
      v17 = *(v3 + 16);
      RIOPxrUsdStageSetDefaultPrim();
    }
  }
}

uint64_t Stage.addReference(of:at:from:)@<X0>(void **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  URL.absoluteString.getter();
  String.utf8CString.getter();

  IsSupportedFile = RIOPxrUsdStageIsSupportedFile();

  if (IsSupportedFile)
  {
    result = URL.isFileURL.getter();
    if (result)
    {
      if (v6)
      {
        v10 = v6;
      }

      else
      {
        URL.lastPathComponent.getter();
        Stage.generatePrimPath(for:)(&v20);

        v10 = v20;
      }

      v13 = v6;
      v14 = RIOPxrTfTokenEmpty();
      v15 = *(v4 + 16);
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
      type metadata accessor for Prim();
      v11 = swift_allocObject();
      *(v11 + 16) = PrimIfNeeded;

      URL.path.getter();
      String.utf8CString.getter();

      v17 = RIOPxrUsdPrimAddReference();

      if (v17)
      {

        v12 = 0;
      }

      else
      {
        v18 = *(v11 + 16);
        v19 = RIOPxrUsdObjectCopyPath();

        RIOPxrUsdStageRemovePrim();

        v12 = 1;
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
      v12 = 1;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  return result;
}

uint64_t Stage.generatePrimPath(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x26670EFB0]();
  v4 = [v3 stringByDeletingPathExtension];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.utf8CString.getter();
  v5 = RIOPxrSdfPathCreateFromCString();

  v6 = *(v1 + 16);
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (HasPrimAtPrimPath)
  {
    v8 = 1;
    while (1)
    {

      MEMORY[0x26670F080](95, 0xE100000000000000);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v9);

      String.utf8CString.getter();

      v10 = RIOPxrSdfPathCreateFromCString();

      v11 = RIOPxrUsdStageHasPrimAtPrimPath();

      if (!v11)
      {
        break;
      }

      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    MEMORY[0x26670F080](95, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v14);

    String.utf8CString.getter();

    v13 = RIOPxrSdfPathCreateFromCString();
  }

  else
  {
LABEL_7:
    String.utf8CString.getter();

    v13 = RIOPxrSdfPathCreateFromCString();
  }

  *a1 = v13;
  return result;
}

uint64_t Stage.removePrim(at:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdStageRemovePrim();
}

uint64_t Stage.addReference(identifier:at:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  if (*a3)
  {
    v9 = *a3;
  }

  else
  {
    v10 = MEMORY[0x26670EFB0](a1, a2);
    v11 = [v10 stringByDeletingPathExtension];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Stage.generatePrimPath(for:)(&v21);

    v7 = 0;
    v9 = v21;
  }

  v12 = v7;
  v13 = RIOPxrTfTokenEmpty();
  v14 = *(v5 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v16 = swift_allocObject();
  *(v16 + 16) = PrimIfNeeded;

  String.utf8CString.getter();

  v17 = RIOPxrUsdPrimAddReference();

  if (v17)
  {
  }

  else
  {
    v19 = *(v16 + 16);
    v20 = RIOPxrUsdObjectCopyPath();

    RIOPxrUsdStageRemovePrim();

    v16 = 2;
  }

  *a5 = v16;
  *(a5 + 8) = v17 ^ 1;
  return result;
}

uint64_t Stage.copyPrim(at:to:includingDescendants:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = RIOPxrUsdStageCopyRootLayer();
  v7 = RIOPxrUsdStageCopyRootLayer();
  RIOPxrUsdUtilsSdfCopySpec();

  v8 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = PrimIfNeeded;
  return result;
}

uint64_t Stage.over(at:)(void *a1, uint64_t (*a2)(void, void))
{
  v3 = a2(*(v2 + 16), *a1);
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t Stage.usedLayers()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageCopyUsedLayers();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      type metadata accessor for RIOPxrSdfLayerRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x26670F670]();
        type metadata accessor for SceneDescriptionFoundations.Layer();
        *(swift_allocObject() + 16) = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v3 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      type metadata accessor for SceneDescriptionFoundations.Layer();
      v12 = 32;
      do
      {
        v13 = *(v5 + v12);
        *(swift_allocObject() + 16) = v13;
        v14 = v13;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = *(v3 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 8;
        --v6;
      }

      while (v6);
    }

    return v3;
  }

  return result;
}

uint64_t Stage.editTarget()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdStageCopyEditTarget();
  *a1 = result;
  return result;
}

uint64_t Stage.setEditTarget(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdStageSetEditTarget();
}

void Stage.setEditTarget(on:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = RIOPxrUsdEditTargetCreateWithLayer();
  v4 = *(v1 + 16);
  RIOPxrUsdStageSetEditTarget();
}

Swift::String __swiftcall Stage.toFlattenedString(addSourceFileComment:)(Swift::Bool addSourceFileComment)
{
  v2 = *(v1 + 16);
  v3 = RIOPxrUsdStageCopyFlattenedUSDA();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void Stage.loadThenUnload(loads:unloads:includeDescendants:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(a1);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n);

  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(a2);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(v7);

  v8 = Set._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdStageLoadThenUnload();
}

uint64_t Stage.export(to:sourceFileComment:fileFormatArguments:)@<X0>(uint64_t a1@<X2>, NSURL *a2@<X8>)
{
  v4 = *(v2 + 16);
  URL._bridgeToObjectiveC()(a2);
  v6 = v5;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = RIOPxrUsdStageExportWithFileURL();

  return v8;
}

uint64_t Stage.defaultPrim.getter(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(*(v2 + 16));
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

void key path getter for Stage.subscript<A>(customLayerDataKey:) : <A>StageA(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v9 = *a2;
  v8 = v9;
  Stage.subscript.getter(&v9, v6, a4);
}

uint64_t key path setter for Stage.subscript<A>(customLayerDataKey:) : <A>StageA(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *a3;
  (*(v15 + 16))(&v19 - v12, a1, v11);
  v16 = *a2;
  v20 = v14;
  v17 = v14;
  return Stage.subscript.setter(v13, &v20, v7, v8);
}

uint64_t Stage.subscript.setter(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  (*(v10 + 16))(v13, a1, v9, v17);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v21 = *(v10 + 8);
    v21(v13, v9);
    v22 = *(v4 + 16);
    v23 = RIOPxrUsdStageCopyRootLayer();
    RIOPxrSdfLayerClearCustomLayerData();

    return (v21)(a1, v9);
  }

  else
  {
    (*(v14 + 32))(v19, v13, a3);
    v25 = *(v4 + 16);
    v26 = RIOPxrUsdStageCopyRootLayer();
    v27 = (*(a4 + 8))(a3, a4);
    RIOPxrSdfLayerSetCustomLayerData();

    (*(v10 + 8))(a1, v9);
    return (*(v14 + 8))(v19, a3);
  }
}

void (*Stage.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Stage.subscript.getter(&v20, a3, v16);

  return Stage.subscript.modify;
}

void Stage.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v8 = v2[2];
    v10 = *v2;
    (*(v7 + 16))((*a1)[5], v3, v6);
    v14 = v4;
    Stage.subscript.setter(v5, &v14, v10, v9);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v11 = v2[1];
    v12 = v2[2];
    v13 = *v2;
    v14 = (*a1)[7];
    Stage.subscript.setter(v3, &v14, v13, v11);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Stage()
{
  v1 = *(*v0 + 16);
  v2 = RIOPxrUsdStageCopyUSDA();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Stage()
{
  v1 = *(*v0 + 16);
  v2 = RIOPxrUsdStageCopyUSDA();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  return 0xA3E65676174533CLL;
}

uint64_t static Stage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return RIOPxrUsdStageEqual();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Stage(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  return RIOPxrUsdStageEqual();
}

id Stage.USDError.getter()
{
  v1 = *(v0 + 16);
  result = RIOPxrUsdStageGetUsdError();
  if (result)
  {
    v3 = result;
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    result = swift_allocError();
    *v4 = v3;
  }

  return result;
}

uint64_t Stage.USDErrors.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageGetUsdErrors();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return v3;
}

uint64_t closure #1 in Stage.getUSDMessages(isWarning:)(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t Stage.USDWarnings.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = (v5 + 16);
  v7 = *(v2 + 16);
  v11[4] = a1;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ();
  v11[3] = a2;
  v8 = _Block_copy(v11);

  RIOPxrUsdStageGatherDiagnostics();
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v6;

  return v9;
}

void Stage.setDiagnosticNotification(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_8;
  v4 = _Block_copy(v5);

  RIOPxrUsdStageSetDiagnosticChangeNotification();
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

Swift::Int Stage.Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Stage.Error()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

uint64_t Stage.MissingReference.assetPath.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Stage.MissingReference.primPath.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Stage.MissingReference.referencedPrimPath.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Stage.MissingReference.sourceFile.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Stage.MissingReference.sourcePrimPath.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void Stage.MissingReference.hash(into:)()
{
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[10];
  v10 = v0[9];
  MEMORY[0x26670FA20](*v0);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Stage.MissingReference.hashValue.getter()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Stage.MissingReference()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Stage.MissingReference()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Stage.messageToErrorResult(_:)@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v95 = a1;
  v96 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v78 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S5st_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GMR);
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v86 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v78 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S4st_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GMR);
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v87 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v88 = &v78 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S5stGMd, &_s17_StringProcessing5RegexVySs_S5stGMR);
  v97 = *(v98 - 8);
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v22 = &v78 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S4stGMd, &_s17_StringProcessing5RegexVySs_S4stGMR);
  v99 = *(v100 - 8);
  v23 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v25 = &v78 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  v101 = *(v26 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S4stMd, &_sSs_S4stMR);
  v103 = v25;
  v30 = v22;
  Regex.init(_regexString:version:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S5stMd, &_sSs_S5stMR);
  Regex.init(_regexString:version:)();
  v102 = v26;
  Regex.firstMatch(in:)();
  v31 = v88;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Any?(v15, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    v32 = v92;
    v33 = v100;
    Regex.firstMatch(in:)();
    v34 = v93;
    if ((*(v93 + 48))(v32, 1, v94) == 1)
    {
      outlined destroy of Any?(v32, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMR);
      v35 = v89;
      v36 = v98;
      Regex.firstMatch(in:)();
      v37 = v90;
      if ((*(v90 + 48))(v35, 1, v91) == 1)
      {
        (*(v97 + 8))(v22, v36);
        (*(v99 + 8))(v103, v33);
        (*(v101 + 8))(v29, v102);
        result = outlined destroy of Any?(v35, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMR);
        v39 = v96;
        *v96 = 0u;
        v39[1] = 0u;
        v39[2] = 0u;
        v39[3] = 0u;
        v39[4] = 0u;
        *(v39 + 10) = 0;
      }

      else
      {
        (*(v37 + 32))();
        Regex.Match.output.getter();

        v93 = v108;
        v92 = v109;
        v61 = v111;
        v79 = v110;
        v89 = v116;
        v88 = v117;
        v62 = v119;
        v80 = v118;
        v83 = v120;
        v82 = v121;
        v63 = v123;
        v81 = v122;
        v87 = v124;
        v85 = v125;
        v64 = v127;
        v84 = v126;
        v95 = MEMORY[0x26670F020](v112, v113, v114, v115);
        v94 = v65;

        v93 = MEMORY[0x26670F020](v93, v92, v79, v61);
        v92 = v66;

        v89 = MEMORY[0x26670F020](v89, v88, v80, v62);
        v88 = v67;

        v68 = MEMORY[0x26670F020](v83, v82, v81, v63);
        v70 = v69;

        v71 = MEMORY[0x26670F020](v87, v85, v84, v64);
        v73 = v72;

        (*(v37 + 8))(v86, v91);
        (*(v97 + 8))(v30, v36);
        (*(v99 + 8))(v103, v33);
        result = (*(v101 + 8))(v29, v102);
        v74 = v96;
        *v96 = 2;
        v75 = v94;
        v74[1] = v95;
        v74[2] = v75;
        v76 = v92;
        v74[3] = v93;
        v74[4] = v76;
        v77 = v88;
        v74[5] = v89;
        v74[6] = v77;
        v74[7] = v68;
        v74[8] = v70;
        v74[9] = v71;
        v74[10] = v73;
      }
    }

    else
    {
      (*(v34 + 32))();
      v44 = v34;
      Regex.Match.output.getter();

      v45 = v109;
      v91 = v108;
      v46 = v110;
      v47 = v111;
      v86 = v116;
      v85 = v117;
      v48 = v119;
      v84 = v118;
      v90 = v120;
      v89 = v121;
      v49 = v123;
      v88 = v122;
      v95 = MEMORY[0x26670F020](v112, v113, v114, v115);
      v92 = v50;

      v91 = MEMORY[0x26670F020](v91, v45, v46, v47);
      v52 = v51;

      v53 = MEMORY[0x26670F020](v86, v85, v84, v48);
      v55 = v54;

      v56 = MEMORY[0x26670F020](v90, v89, v88, v49);
      v58 = v57;

      (*(v44 + 8))(v87, v94);
      (*(v97 + 8))(v30, v98);
      (*(v99 + 8))(v103, v33);
      result = (*(v101 + 8))(v29, v102);
      v59 = v96;
      *v96 = 1;
      v60 = v92;
      v59[1] = v95;
      v59[2] = v60;
      v59[3] = v91;
      v59[4] = v52;
      v59[5] = 0;
      v59[6] = 0;
      v59[7] = v53;
      v59[8] = v55;
      v59[9] = v56;
      v59[10] = v58;
    }
  }

  else
  {
    (*(v17 + 32))(v31, v15, v16);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v40 = MEMORY[0x26670F020](v104, v105, v106, v107);
    v42 = v41;

    (*(v17 + 8))(v31, v16);
    (*(v97 + 8))(v22, v98);
    (*(v99 + 8))(v103, v100);
    result = (*(v101 + 8))(v29, v102);
    v43 = v96;
    *v96 = 0;
    *(v43 + 1) = v40;
    *(v43 + 2) = v42;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 0u;
    *(v43 + 56) = 0u;
    *(v43 + 72) = 0u;
  }

  return result;
}

uint64_t Stage.missingReferences.getter()
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v3 = (v1 + 16);
  v4 = *(v0 + 16);
  *&v37 = closure #1 in Stage.getUSDMessages(isWarning:)partial apply;
  *(&v37 + 1) = v1;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v36 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ();
  *(&v36 + 1) = &block_descriptor_13;
  v5 = _Block_copy(&aBlock);

  RIOPxrUsdStageGatherDiagnostics();
  _Block_release(v5);
  swift_beginAccess();
  v6 = *v3;

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 40;
    do
    {
      v23 = v2;
      v11 = (v10 + 16 * v9);
      v12 = v9;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = v12 + 1;
        v13 = *(v11 - 1);
        v14 = *v11;
        type metadata accessor for Stage();

        static Stage.messageToErrorResult(_:)(v14, &aBlock);

        if (v36)
        {
          break;
        }

        v31 = v37;
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v29 = aBlock;
        v30 = v36;
        result = outlined destroy of Any?(&v29, &_s9RealityIO5StageC16MissingReferenceVSgMd, &_s9RealityIO5StageC16MissingReferenceVSgMR);
        v11 += 2;
        ++v12;
        if (v8 == v9)
        {
          v2 = v23;
          goto LABEL_13;
        }
      }

      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v29 = aBlock;
      v30 = v36;
      v15 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
        v15 = result;
      }

      v16 = v15;
      v17 = *(v15 + 16);
      v18 = v16;
      v19 = *(v16 + 24);
      if (v17 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1, v18);
        v18 = result;
      }

      v25 = v31;
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v20 = v29;
      v24 = v30;
      *(v18 + 16) = v17 + 1;
      v21 = v18 + 88 * v17;
      v2 = v18;
      *(v21 + 48) = v24;
      *(v21 + 112) = v28;
      *(v21 + 80) = v26;
      *(v21 + 96) = v27;
      *(v21 + 64) = v25;
      *(v21 + 32) = v20;
      v10 = v6 + 40;
    }

    while (v8 - 1 != v12);
  }

LABEL_13:

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO5StageC16MissingReferenceV_SayAHGTt0g5Tf4g_n(v2);

  return v22;
}

uint64_t Stage.upAxis.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdStageCopyUpAxis();
  *a1 = result;
  return result;
}

void Stage.upAxis.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrUsdStageSetUpAxis();
}

void (*Stage.upAxis.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyUpAxis();
  return Stage.upAxis.modify;
}

void Stage.upAxis.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdStageSetUpAxis();
}

uint64_t Stage.colorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdStageCopyColorConfiguration();
  *a1 = result;
  return result;
}

void Stage.colorConfiguration.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrUsdStageSetColorConfiguration();
}

void (*Stage.colorConfiguration.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyColorConfiguration();
  return Stage.colorConfiguration.modify;
}

void Stage.colorConfiguration.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdStageSetColorConfiguration();
}

uint64_t Stage.colorManagementSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdStageCopyColorManagementSystem();
  *a1 = result;
  return result;
}

void Stage.colorManagementSystem.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrUsdStageSetColorManagementSystem();
}

void (*Stage.colorManagementSystem.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyColorManagementSystem();
  return Stage.colorManagementSystem.modify;
}

void Stage.colorManagementSystem.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdStageSetColorManagementSystem();
}

uint64_t (*Stage.startTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetStartTimeCode();
  *a1 = v3;
  return Stage.startTimeCode.modify;
}

uint64_t (*Stage.endTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetEndTimeCode();
  *a1 = v3;
  return Stage.endTimeCode.modify;
}

uint64_t (*Stage.timeCodesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetTimeCodesPerSecond();
  *a1 = v3;
  return Stage.timeCodesPerSecond.modify;
}

uint64_t (*Stage.framesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetFramesPerSecond();
  *a1 = v3;
  return Stage.framesPerSecond.modify;
}

Swift::Bool __swiftcall Stage.hasCustomMetadata()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageCopyRootLayer();
  HasCustomLayerMetaData = RIOPxrSdfLayerHasCustomLayerMetaData();

  return HasCustomLayerMetaData;
}

Swift::Void __swiftcall Stage.clearAllCustomMetadata()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdStageCopyRootLayer();
  RIOPxrSdfLayerClearAllCustomLayerMetaData();
}

char *specialized ImportSession.init<A>(core:entityType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v52[1] = a2;
  v5 = type metadata accessor for __EntityRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v11 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v13 = swift_allocObject();
  *(v13 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v12] = v13;
  *(v13 + 24) = v14;
  v15 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v16 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v3 + 4) = EngineRef, (v18 = RIOImportSessionGetStage()) != 0))
    {
      v19 = v18;
      v52[0] = v6;
      type metadata accessor for Stage();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v3 + 2) = v20;
      v21 = v19;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v23 = RootEntity;
        v24 = v21;
        v25 = type metadata accessor for AnchorEntity();
        v26 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v26)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v26)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        v35 = type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v56 = MEMORY[0x277D841D8];
          aBlock = v23;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v36 = *(v35 + 48);
          v37 = *(v35 + 52);
          swift_allocObject();
          v38 = MEMORY[0x26670D9A0](v9);
        }

        else
        {
          v39 = type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v56 = MEMORY[0x277D841D8];
            aBlock = v23;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v40 = *(v39 + 48);
            v41 = *(v39 + 52);
            swift_allocObject();
            v38 = MEMORY[0x26670DC40](v9);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for Entity();
              v56 = MEMORY[0x277D841D8];
              aBlock = v23;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v44 = static Entity.__fromCore(_:)();
              (*(v52[0] + 8))(v9, v5);
              goto LABEL_23;
            }

            v56 = MEMORY[0x277D841D8];
            aBlock = v23;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v42 = *(v25 + 48);
            v43 = *(v25 + 52);
            swift_allocObject();
            v38 = MEMORY[0x26670DA30](v9);
          }
        }

        v44 = v38;
LABEL_23:
        *(v3 + 3) = v44;
        type metadata accessor for BehaviorsCommitter();
        v45 = swift_allocObject();
        v45[3] = MEMORY[0x277D84F98];

        v45[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v45[2] = v44;
        *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v45;
        v46 = swift_allocObject();
        swift_weakInit();
        v57 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
        v58 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v54 = 1107296256;
        v55 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v56 = &block_descriptor_110;
        v47 = _Block_copy(&aBlock);

        v48 = *(v3 + 3);
        v49 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        *(v50 + 24) = v49;
        v57 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
        v58 = v50;
        aBlock = MEMORY[0x277D85DD0];
        v54 = 1107296256;
        v55 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v56 = &block_descriptor_118;
        v51 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v51);
        _Block_release(v47);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v3;
      }

      v34 = *(v3 + 2);
    }

    else
    {
    }

    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v27 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  else
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v28 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  v29 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
  v30 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

  type metadata accessor for ImportSession(0);
  v31 = *(*v3 + 48);
  v32 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError()
{
  result = lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError;
  if (!lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError;
  if (!lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError);
  }

  return result;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  *(v11 + 24) = v12;
  v13 = &v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v34 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

    goto LABEL_11;
  }

  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v14 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v2 + 4) = EngineRef, (v16 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v33 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

LABEL_11:
    v35 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
    v36 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

    type metadata accessor for ImportSession(0);
    v37 = *(*v2 + 48);
    v38 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v16;
  type metadata accessor for Stage();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v2 + 2) = v18;
  v19 = v17;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    v40 = *(v2 + 2);

    goto LABEL_9;
  }

  v21 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  v44 = MEMORY[0x277D841D8];
  aBlock = v21;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v22 = type metadata accessor for ModelEntity();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = MEMORY[0x26670D9A0](v7);
  *(v2 + 3) = v25;
  type metadata accessor for BehaviorsCommitter();
  v26 = swift_allocObject();
  v26[3] = MEMORY[0x277D84F98];

  v26[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v26[2] = v25;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  v45 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v44 = &block_descriptor_71;
  v28 = _Block_copy(&aBlock);

  v29 = *(v2 + 3);
  v30 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v45 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v44 = &block_descriptor_79;
  v32 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v32);
  _Block_release(v28);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v2;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  *(v11 + 24) = v12;
  v13 = &v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v34 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

    goto LABEL_11;
  }

  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v14 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v2 + 4) = EngineRef, (v16 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v33 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

LABEL_11:
    v35 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
    v36 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

    type metadata accessor for ImportSession(0);
    v37 = *(*v2 + 48);
    v38 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v16;
  type metadata accessor for Stage();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v2 + 2) = v18;
  v19 = v17;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    v40 = *(v2 + 2);

    goto LABEL_9;
  }

  v21 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  v44 = MEMORY[0x277D841D8];
  aBlock = v21;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v22 = type metadata accessor for BodyTrackedEntity();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = MEMORY[0x26670DC40](v7);
  *(v2 + 3) = v25;
  type metadata accessor for BehaviorsCommitter();
  v26 = swift_allocObject();
  v26[3] = MEMORY[0x277D84F98];

  v26[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v26[2] = v25;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  v45 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v44 = &block_descriptor_97;
  v28 = _Block_copy(&aBlock);

  v29 = *(v2 + 3);
  v30 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v45 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v44 = &block_descriptor_105;
  v32 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v32);
  _Block_release(v28);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v2;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  *(v11 + 24) = v12;
  v13 = &v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v34 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

    goto LABEL_11;
  }

  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v14 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v2 + 4) = EngineRef, (v16 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v33 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];

LABEL_11:
    v35 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
    v36 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

    type metadata accessor for ImportSession(0);
    v37 = *(*v2 + 48);
    v38 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v16;
  type metadata accessor for Stage();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v2 + 2) = v18;
  v19 = v17;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    v40 = *(v2 + 2);

    goto LABEL_9;
  }

  v21 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityAddComponentByClass();
  }

  v44 = MEMORY[0x277D841D8];
  aBlock = v21;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v22 = type metadata accessor for AnchorEntity();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = MEMORY[0x26670DA30](v7);
  *(v2 + 3) = v25;
  type metadata accessor for BehaviorsCommitter();
  v26 = swift_allocObject();
  v26[3] = MEMORY[0x277D84F98];

  v26[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v26[2] = v25;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  v45 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v44 = &block_descriptor_84;
  v28 = _Block_copy(&aBlock);

  v29 = *(v2 + 3);
  v30 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v45 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v46 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v44 = &block_descriptor_92;
  v32 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v32);
  _Block_release(v28);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v2;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAL_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v8 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  *(v11 + 24) = v12;
  v13 = &v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v14 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v2 + 4) = EngineRef, (v16 = RIOImportSessionGetStage()) != 0))
    {
      v17 = v16;
      v54 = v5;
      type metadata accessor for Stage();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v2 + 2) = v18;
      v19 = v17;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v21 = RootEntity;
        v22 = v19;
        v23 = type metadata accessor for AnchorEntity();
        v24 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v24)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v24)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        v33 = type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v59 = MEMORY[0x277D841D8];
          aBlock = v21;
          v34 = v55;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v35 = *(v33 + 48);
          v36 = *(v33 + 52);
          swift_allocObject();
          v37 = MEMORY[0x26670D9A0](v34);
        }

        else
        {
          v38 = type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v59 = MEMORY[0x277D841D8];
            aBlock = v21;
            v39 = v55;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v40 = *(v38 + 48);
            v41 = *(v38 + 52);
            swift_allocObject();
            v37 = MEMORY[0x26670DC40](v39);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              v59 = MEMORY[0x277D841D8];
              aBlock = v21;
              v53 = v55;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v45 = static Entity.__fromCore(_:)();
              (*(v54 + 8))(v53, v4);
              goto LABEL_23;
            }

            v59 = MEMORY[0x277D841D8];
            aBlock = v21;
            v42 = v55;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v43 = *(v23 + 48);
            v44 = *(v23 + 52);
            swift_allocObject();
            v37 = MEMORY[0x26670DA30](v42);
          }
        }

        v45 = v37;
LABEL_23:
        *(v2 + 3) = v45;
        type metadata accessor for BehaviorsCommitter();
        v46 = swift_allocObject();
        v46[3] = MEMORY[0x277D84F98];

        v46[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v46[2] = v45;
        *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v46;
        v47 = swift_allocObject();
        swift_weakInit();
        v60 = partial apply for closure #1 in ImportSession.init<A>(core:entityType:);
        v61 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v59 = &block_descriptor_59;
        v48 = _Block_copy(&aBlock);

        v49 = *(v2 + 3);
        v50 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v51 = swift_allocObject();
        *(v51 + 16) = v49;
        *(v51 + 24) = v50;
        v60 = partial apply for closure #2 in ImportSession.init<A>(core:entityType:);
        v61 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v59 = &block_descriptor_66;
        v52 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v52);
        _Block_release(v48);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v2;
      }

      v32 = *(v2 + 2);
    }

    else
    {
    }

    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v25 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  else
  {
    outlined destroy of Any?(&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v26 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  v27 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
  v28 = *&v2[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

  type metadata accessor for ImportSession(0);
  v29 = *(*v2 + 48);
  v30 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, MEMORY[0x277CDAFC0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, MEMORY[0x277CDAFF8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, MEMORY[0x277CDB000]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO14CompileSessionC06ImportG4DataVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO14CompileSessionC06ImportG4DataVGMR, type metadata accessor for CompileSession.ImportSessionData);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMR, MEMORY[0x277CDAE70]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR, type metadata accessor for ImportSession.EvaluationFault);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vys5Int32VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vys5Int32VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMd, &_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO7Builder_pGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Builder_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Builder_pMd, &_s9RealityIO7Builder_pMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SliceVys12LazySequenceVySSGGGMd, &_ss23_ContiguousArrayStorageCys5SliceVys12LazySequenceVySSGGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVys12LazySequenceVySSGGMd, &_ss5SliceVys12LazySequenceVySSGGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMR, &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySaySdGGGMd, &_ss23_ContiguousArrayStorageCySaySaySdGGGMR, &_sSaySaySdGGMd, &_sSaySaySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR, &_sSaySdGMd, &_sSaySdGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD2Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vy9RealityIO4HalfVGGMR, &_ss5SIMD2Vy9RealityIO4HalfVGMd, &_ss5SIMD2Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VyAC4HalfVGGMR, &_s9RealityIO9TexCoord2VyAA4HalfVGMd, &_s9RealityIO9TexCoord2VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vy9RealityIO4HalfVGGMR, &_ss5SIMD3Vy9RealityIO4HalfVGMd, &_ss5SIMD3Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VyAC4HalfVGGMR, &_s9RealityIO6Color3VyAA4HalfVGMd, &_s9RealityIO6Color3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VyAC4HalfVGGMR, &_s9RealityIO6Point3VyAA4HalfVGMd, &_s9RealityIO6Point3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VyAC4HalfVGGMR, &_s9RealityIO7Normal3VyAA4HalfVGMd, &_s9RealityIO7Normal3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VyAC4HalfVGGMR, &_s9RealityIO7Vector3VyAA4HalfVGMd, &_s9RealityIO7Vector3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VyAC4HalfVGGMR, &_s9RealityIO9TexCoord3VyAA4HalfVGMd, &_s9RealityIO9TexCoord3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vy9RealityIO4HalfVGGMR, &_ss5SIMD4Vy9RealityIO4HalfVGMd, &_ss5SIMD4Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VyAC4HalfVGGMR, &_s9RealityIO6Color4VyAA4HalfVGMd, &_s9RealityIO6Color4VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR, &_sSDySSypGMd, &_sSDySSypGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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
    v12 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type InputDescriptor and conformance InputDescriptor();
  result = MEMORY[0x26670F270](v2, &type metadata for InputDescriptor, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      outlined init with copy of InputDescriptor(v10, v7);
      specialized Set._Variant.insert(_:)(v7, v10);
      outlined consume of InputDescriptor(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26670F270](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO14PrimDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for PrimDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, type metadata accessor for PrimDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(id *, void *))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x26670F270](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);

      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for PropertyDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, type metadata accessor for PropertyDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type OutputDescriptor and conformance OutputDescriptor();
  result = MEMORY[0x26670F270](v2, &type metadata for OutputDescriptor, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with take of OutputDescriptor(v5, v8);
      outlined init with copy of OutputDescriptor(v8, v6);
      specialized Set._Variant.insert(_:)(v6, v8);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    v5 = v4;
    v6 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
    result = MEMORY[0x26670F270](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = __CocoaSet.count.getter();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO5StageC16MissingReferenceV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Stage.MissingReference and conformance Stage.MissingReference();
  result = MEMORY[0x26670F270](v2, &type metadata for Stage.MissingReference, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v13[4] = *(v5 + 64);
      v14 = *(v5 + 80);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      outlined init with copy of Stage.MissingReference(v13, v10);
      specialized Set._Variant.insert(_:)(v8, v13);
      v10[3] = v8[3];
      v10[4] = v8[4];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      outlined destroy of Stage.MissingReference(v10);
      v5 += 88;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15StageDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for StageDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type StageDirtyState and conformance StageDirtyState, type metadata accessor for StageDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO6InputsC13PropertyDeltaV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
  result = MEMORY[0x26670F270](v2, &type metadata for Inputs.PropertyDelta, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(v10, v8, v7, v6);
      v9 = v10[1];

      v5 += 3;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t specialized static Stage.MissingReference.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[8];
  v18 = a1[10];
  v8 = a2[3];
  v7 = a2[4];
  v10 = a2[5];
  v9 = a2[6];
  v11 = a2[8];
  v15 = a2[7];
  v16 = a1[7];
  v13 = a2[9];
  v14 = a1[9];
  v17 = a2[10];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v16 != v15 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v14 == v13 && v18 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Stage.Error and conformance Stage.Error()
{
  result = lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error;
  if (!lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType()
{
  result = lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType;
  if (!lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Stage.MissingReference and conformance Stage.MissingReference()
{
  result = lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference;
  if (!lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference;
  if (!lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference);
  }

  return result;
}

uint64_t dispatch thunk of Stage.__allocating_init(from:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 136))();
}

uint64_t getEnumTagSinglePayload for Stage.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Stage.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t getEnumTagSinglePayload for Stage.MissingReference(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Stage.MissingReference(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type OutputDescriptor and conformance OutputDescriptor()
{
  result = lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor;
  if (!lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor;
  if (!lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputDescriptor and conformance InputDescriptor()
{
  result = lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor;
  if (!lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor;
  if (!lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t one-time initialization function for customComponents()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.customComponents = result;
  return result;
}

uint64_t removeCustomComponentProxy(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REComponentGetEntity();
  String.utf8CString.getter();
  v5 = REComponentClassFromName();

  if (v5)
  {
    result = REEntityGetCustomComponent();
    if (result)
    {
      if (one-time initialization token for customComponents != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2619891C0;
      _StringGuts.grow(_:)(26);
      MEMORY[0x26670F080](0x676E69766F6D6552, 0xE900000000000020);
      MEMORY[0x26670F080](a2, a3);
      MEMORY[0x26670F080](0x6E65206D6F726620, 0xED00002079746974);
      REEntityGetName();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      _print_unlocked<A, B>(_:_:)();
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      os_log(_:dso:log:type:_:)();

      return REEntityRemoveComponentByClass();
    }
  }

  else
  {
    if (one-time initialization token for customComponents != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2619891C0;
    _StringGuts.grow(_:)(49);

    MEMORY[0x26670F080](a2, a3);
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = 0xD00000000000002FLL;
    *(v8 + 40) = 0x8000000261996080;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

uint64_t closure #1 in CustomComponentBuilder.stageSubscription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 32) = v1;
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 40) = v2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  type metadata accessor for NamedPropertyDirtyState();
  v7 = swift_allocObject();
  v7[4] = v6;
  v8 = v6;
  v9 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v7[2] = v9;
  v7[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26198A640;
  *(v12 + 32) = v7;
  v31 = v9;

  specialized Sequence.forEach(_:)(v12);

  swift_setDeallocating();
  v13 = *(v12 + 16);
  swift_arrayDestroy();
  type metadata accessor for TypeNamePrimDirtyState();
  v14 = swift_allocObject();
  v14[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v15);
  type metadata accessor for RIOPxrTfTokenRef(0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v9);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v9);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  v19 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v14[2] = v9;
  v14[3] = v9;
  v14[4] = v19;

  if (String.count.getter() < 1)
  {
    v20 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v20 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v20;
  v21 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v31);

  if (String.count.getter() < 1)
  {
    v22 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v22 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v22;
  v23 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v31);

  if (String.count.getter() < 1)
  {
    v24 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v24 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v24;
  v25 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v31);

  if (String.count.getter() < 1)
  {
    v26 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v26 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v26;
  v27 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v31);
  v28 = swift_initStackObject();
  *(v28 + 32) = v14;
  *(v28 + 16) = xmmword_26198C2A0;
  *(v28 + 40) = v21;
  *(v28 + 48) = v23;
  *(v28 + 56) = v25;
  *(v28 + 64) = v27;
  v31 = v9;

  specialized Sequence.forEach(_:)(v28);

  swift_setDeallocating();
  v29 = *(v28 + 16);
  swift_arrayDestroy();
  return v31;
}

void CustomComponentBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = RIOBuilderInputsGetImportSession();
  if (!v5)
  {
    __break(1u);
LABEL_48:
    __break(1u);
  }

  v6 = v5;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
    goto LABEL_48;
  }

  swift_weakAssign();

  v8 = Inputs.prim.getter();
  v9 = v2[6];
  v10 = *(v8 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_22;
  }

  v11 = RIOPxrUsdPrimCopyAttribute();
  v12 = RIOPxrUsdAttributeCopyValue();
  if (!v12)
  {

    goto LABEL_22;
  }

  v13 = v12;
  v14 = RIOPxrVtValueCopyToken();

  if (!v14)
  {
LABEL_22:
    specialized CustomComponentBuilder.clear(inputs:)();
    v33 = *MEMORY[0x277D85DE8];

    return;
  }

  v15 = RIOPxrTfTokenCopyString();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = Prim.parent.getter();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  v21 = *(v19 + 16);
  if (RIOPxrUsdPrimEvaluateEntityOnExport())
  {

LABEL_9:
    if (one-time initialization token for OutputName != -1)
    {
      swift_once();
    }

    Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v82);
    if (v83)
    {
      type metadata accessor for EntityProxy();
      if (swift_dynamicCast())
      {
        v22 = v81;
        v23 = v2[4];
        if (v23)
        {
          v24 = v2[3];
          if (v24 != v16 || v23 != v18)
          {
            v25 = v2[3];
            v26 = v2[4];
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              CustomComponentBuilder.removeProxyComponent()();
              if (v27)
              {
                v76 = v16;
                v78 = v18;
                if (one-time initialization token for customComponents != -1)
                {
                  swift_once();
                }

                static os_log_type_t.error.getter();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v28 = swift_allocObject();
                *(v28 + 16) = xmmword_26198A8E0;
                v29 = MEMORY[0x277D837D0];
                *(v28 + 56) = MEMORY[0x277D837D0];
                v30 = lazy protocol witness table accessor for type String and conformance String();
                *(v28 + 64) = v30;
                *(v28 + 32) = v24;
                *(v28 + 40) = v23;
                swift_getErrorValue();
                v31 = Error.localizedDescription.getter();
                *(v28 + 96) = v29;
                *(v28 + 104) = v30;
                *(v28 + 72) = v31;
                *(v28 + 80) = v32;
                os_log(_:dso:log:type:_:)();

                v16 = v76;
                v18 = v78;
                v22 = v81;
              }

              else
              {
              }
            }
          }
        }

        v46 = v2[4];
        v2[3] = v16;
        v2[4] = v18;

        v47 = *(v8 + 16);

        if (RIOPxrUsdPrimIsActive())
        {

          componentPrimToDictionary(component:)();
          v49 = v48;
          v50 = objc_opt_self();
          *&v82 = 0;
          v80 = v49;
          v51 = [v50 dataWithJSONObject:v49 options:0 error:&v82];
          v52 = v82;
          if (v51)
          {
            v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;

            CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(v22, v53, v55, a1);

            outlined consume of Data._Representation(v53, v55);
          }

          else
          {
            v68 = v16;
            v69 = v52;
            v70 = _convertNSErrorToError(_:)();

            swift_willThrow();
            if (one-time initialization token for customComponents != -1)
            {
              swift_once();
            }

            static os_log_type_t.error.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_26198A8E0;
            v72 = MEMORY[0x277D837D0];
            *(v71 + 56) = MEMORY[0x277D837D0];
            v73 = lazy protocol witness table accessor for type String and conformance String();
            *(v71 + 64) = v73;
            *(v71 + 32) = v68;
            *(v71 + 40) = v18;
            swift_getErrorValue();
            v74 = Error.localizedDescription.getter();
            *(v71 + 96) = v72;
            *(v71 + 104) = v73;
            *(v71 + 72) = v74;
            *(v71 + 80) = v75;
            os_log(_:dso:log:type:_:)();
          }
        }

        else
        {
          CustomComponentBuilder.removeProxyComponent()();
          if (v56)
          {
            if (one-time initialization token for customComponents != -1)
            {
              swift_once();
            }

            static os_log_type_t.error.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v57 = swift_allocObject();
            *(v57 + 16) = xmmword_26198AB50;
            v58 = MEMORY[0x277D837D0];
            *(v57 + 56) = MEMORY[0x277D837D0];
            v59 = lazy protocol witness table accessor for type String and conformance String();
            *(v57 + 64) = v59;
            *(v57 + 32) = v16;
            *(v57 + 40) = v18;
            v60 = *(v8 + 16);
            v61 = RIOPxrUsdObjectCopyPath();

            v62 = RIOPxrSdfPathCopyString();
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            *(v57 + 96) = v58;
            *(v57 + 104) = v59;
            *(v57 + 72) = v63;
            *(v57 + 80) = v65;

            swift_getErrorValue();
            v66 = Error.localizedDescription.getter();
            *(v57 + 136) = v58;
            *(v57 + 144) = v59;
            *(v57 + 112) = v66;
            *(v57 + 120) = v67;
            os_log(_:dso:log:type:_:)();
          }

          else
          {
          }
        }

LABEL_34:
        v45 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      outlined destroy of Any?(&v82);
    }

    if (one-time initialization token for customComponents != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2619891C0;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 32) = v16;
    *(v44 + 40) = v18;
    os_log(_:dso:log:type:_:)();

    goto LABEL_34;
  }

  v77 = v16;
  v79 = v18;
  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26198A8E0;
  v35 = *(v20 + 16);
  v36 = RIOPxrUsdObjectCopyPath();
  v37 = RIOPxrSdfPathCopyString();
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = MEMORY[0x277D837D0];
  *(v34 + 56) = MEMORY[0x277D837D0];
  v42 = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 64) = v42;
  *(v34 + 32) = v38;
  *(v34 + 40) = v40;

  *(v34 + 96) = v41;
  *(v34 + 104) = v42;
  *(v34 + 72) = v77;
  *(v34 + 80) = v79;
  os_log(_:dso:log:type:_:)();

  v43 = *MEMORY[0x277D85DE8];
}

void CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a1;
  v9 = type metadata accessor for CustomComponentProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 32);
  if (v14)
  {
    v24 = *(v4 + 24);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21[2] = Strong;
      v22 = v10;
      v21[0] = v5;
      v21[1] = v21;
      MEMORY[0x28223BE20](Strong);
      v21[-2] = v24;
      v21[-1] = v14;
      v16 = *(a4 + 56);
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #1 in CustomComponentBuilder.addProxyComponent(entity:with:inputs:);
      *(v17 + 24) = &v21[-4];
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_7;
      v18 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v18);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if (v16)
      {
        __break(1u);
      }

      else
      {
        outlined copy of Data._Representation(a2, a3);
        CustomComponentProxy.init(with:)();
        String.utf8CString.getter();

        v19 = REComponentClassFromName();

        if (v19)
        {
          v20 = specialized setCustomComponentProxy(_:_:_:)(v23, v19, v13);

          (*(v22 + 8))(v13, v9);
          *(v4 + 40) = v20;
          *(v4 + 16) = 1;
        }

        else
        {
          lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError();
          swift_allocError();
          swift_willThrow();

          (*(v22 + 8))(v13, v9);
        }
      }
    }
  }
}

uint64_t closure #1 in CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v4 = REComponentClassFromName();

  if (!v4)
  {
    type metadata accessor for CustomComponentProxy();
    result = static Component.registerComponentProxy(componentName:)();
    if (!result)
    {
      if (one-time initialization token for customComponents != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2619891C0;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v6 + 32) = a1;
      *(v6 + 40) = a2;

      os_log(_:dso:log:type:_:)();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomComponentBuilder.removeProxyComponent()()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 32);
    if (v1 && (v2 = *(v0 + 40)) != 0)
    {
      v3 = *(v0 + 24);
      v4 = one-time initialization token for customComponents;

      if (v4 != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2619891C0;
      _StringGuts.grow(_:)(41);

      MEMORY[0x26670F080](v3, v1);
      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v5 + 32) = 0xD000000000000027;
      *(v5 + 40) = 0x8000000261996050;
      os_log(_:dso:log:type:_:)();

      removeCustomComponentProxy(_:_:)(v2, v3, v1);

      *(v0 + 40) = 0;
      *(v0 + 16) = 0;
    }

    else
    {
      lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t CustomComponentBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CustomComponentBuilder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 2;
  swift_weakInit();
  return v0;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance CustomComponentBuilder()
{
  v6 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v0 = qword_27FEBC3A0;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v7[0] = v1;
  v7[1] = v0;
  v7[2] = static EntityBuilder.OutputIdentifier;
  v7[3] = *algn_27FEC8E68;
  v7[4] = 0;
  v7[5] = 0;
  v8 = 112;

  specialized Set._Variant.insert(_:)(v4, v7);
  outlined consume of InputDescriptor(v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], v5);
  return v6;
}

uint64_t specialized setCustomComponentProxy(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CustomComponentProxy();
  v16 = v4;
  v17 = MEMORY[0x277CDB458];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a3, v4);
  __AssetRef.__as<A>(_:)();
  CustomComponent = REEntityGetCustomComponent();
  v7 = &off_261989000;
  v8 = MEMORY[0x277D837D0];
  if (CustomComponent)
  {
    v9 = CustomComponent;
LABEL_7:
    if (one-time initialization token for customComponents != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = *(v7 + 28);
    *(v13 + 56) = v8;
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = 0xD00000000000003BLL;
    *(v13 + 40) = 0x80000002619960D0;
    os_log(_:dso:log:type:_:)();

    if (RECustomComponentGetObject())
    {
      static CustomComponentProxy.__store(attribute:to:offset:deinitialize:)();
    }

    RENetworkMarkComponentDirty();
    goto LABEL_12;
  }

  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2619891C0;
  _StringGuts.grow(_:)(47);

  __swift_project_boxed_opaque_existential_1(v15, v16);
  swift_getDynamicType();
  v11 = dispatch thunk of static Component.componentName.getter();
  MEMORY[0x26670F080](v11);

  MEMORY[0x26670F080](0x20656874206F7420, 0xEF20797469746E65);
  __AssetRef.__as<A>(_:)();
  REEntityGetName();
  v12 = String.init(cString:)();
  MEMORY[0x26670F080](v12);

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x80000002619960B0;
  os_log(_:dso:log:type:_:)();

  v9 = REEntityAddComponentByClass();
  if (v9)
  {
    v8 = MEMORY[0x277D837D0];
    v7 = &off_261989000;
    goto LABEL_7;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v9;
}

uint64_t specialized CustomComponentBuilder.stageSubscription.getter()
{
  v0 = closure #1 in CustomComponentBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

void specialized CustomComponentBuilder.clear(inputs:)()
{
  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2619891C0;
  v9 = *(v0 + 24);
  v11 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x26670F080](v2);

  v3 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v4 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v4;
  *(v1 + 32) = 0x7261656C63206E49;
  *(v1 + 40) = 0xEA0000000000203ALL;
  os_log(_:dso:log:type:_:)();

  CustomComponentBuilder.removeProxyComponent()();
  if (v5)
  {
    static os_log_type_t.error.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2619891C0;
    _StringGuts.grow(_:)(59);
    MEMORY[0x26670F080](0xD000000000000035, 0x8000000261995FB0);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);

    v7 = String.init<A>(describing:)();
    MEMORY[0x26670F080](v7);

    MEMORY[0x26670F080](8238, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    *(v6 + 56) = v3;
    *(v6 + 64) = v4;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

unint64_t lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError()
{
  result = lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError;
  if (!lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError;
  if (!lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t closure #1 in ModelSortGroupBuilder.run(inputs:)(void *a1)
{
  v2 = type metadata accessor for ModelSortGroup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v45 - v15;
  v17 = *(v3 + 56);
  v49 = v2;
  v45 = v17;
  (v17)(v16, 1, 1, v2, v14);
  v18 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  swift_beginAccess();
  v46 = v18;
  outlined assign with take of ModelSortGroup?(v16, a1 + v18);
  swift_endAccess();
  specialized Builder.prim.getter();
  v19 = v6;
  v20 = v3;
  if (String.count.getter() < 1)
  {
    v21 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v21 = RIOPxrTfTokenCreateWithCString();
  }

  v22 = v21;
  v23 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
  v25 = v24;

  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 1701736270;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  if (v26 == 0x73736150657270 && v27 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v28 = v20;
    v29 = v19;
    v30 = *MEMORY[0x277CDB310];
    v31 = type metadata accessor for ModelSortGroup.DepthPass();
    v32 = *(v31 - 8);
    v33 = v48;
    (*(v32 + 104))(v48, v30, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = v49;
    goto LABEL_14;
  }

  v28 = v20;
  v29 = v19;
  if (v26 == 0x7373615074736F70 && v27 == 0xE800000000000000)
  {

    v33 = v48;
    v34 = v49;
LABEL_20:
    v41 = *MEMORY[0x277CDB318];
    v42 = type metadata accessor for ModelSortGroup.DepthPass();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v33, v41, v42);
    (*(v43 + 56))(v33, 0, 1, v42);
    goto LABEL_14;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v33 = v48;
  v34 = v49;
  if (v40)
  {
    goto LABEL_20;
  }

  v44 = type metadata accessor for ModelSortGroup.DepthPass();
  (*(*(v44 - 8) + 56))(v33, 1, 1, v44);
LABEL_14:
  outlined init with copy of ModelSortGroup.DepthPass?(v33, v47);
  ModelSortGroup.init(depthPass:)();
  v35 = *(v28 + 16);
  v35(v16, v29, v34);
  v45(v16, 0, 1, v34);
  v36 = v46;
  swift_beginAccess();
  outlined assign with take of ModelSortGroup?(v16, a1 + v36);
  swift_endAccess();
  swift_beginAccess();
  v37 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v50, &v51);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v52 = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
    v35(boxed_opaque_existential_1, v29, v34);
    Outputs.subscript.setter(&v51, 0xD000000000000014, 0x8000000261994310);

    (*(v28 + 8))(v29, v34);
    return outlined destroy of Any?(v33, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Builder.prim.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v5, &v6);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    v3 = RIOBuilderCopyPrim();

    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelSortGroupBuilder.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupBuilder);
  outlined destroy of OutputDescriptor(&unk_287410938);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ModelSortGroupBuilder(uint64_t a1)
{
  v2 = *v1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in ModelSortGroupBuilder.run(inputs:);
  *(v4 + 24) = &v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_8;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Builder.clear(inputs:) in conformance ModelSortGroupBuilder()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for ModelSortGroup();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  swift_beginAccess();
  outlined assign with take of ModelSortGroup?(v4, v0 + v6);
  return swift_endAccess();
}

id static MeshSortingConstants.MeshSortingGroup.primType.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for primType != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static MeshSortingConstants.MeshSortingGroup.primType;
  *a1 = static MeshSortingConstants.MeshSortingGroup.primType;

  return v2;
}

uint64_t type metadata accessor for ModelSortGroupBuilder()
{
  result = type metadata singleton initialization cache for ModelSortGroupBuilder;
  if (!type metadata singleton initialization cache for ModelSortGroupBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelSortGroupBuilder()
{
  type metadata accessor for ModelSortGroup?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ModelSortGroup?()
{
  if (!lazy cache variable for type metadata for ModelSortGroup?)
  {
    type metadata accessor for ModelSortGroup();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModelSortGroup?);
    }
  }
}

uint64_t outlined assign with take of ModelSortGroup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of ModelSortGroup.DepthPass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized ModelSortGroupBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v10 = static MeshSortingConstants.MeshSortingGroup.primType;
  v0 = static MeshSortingConstants.MeshSortingGroup.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t one-time initialization function for iblComponents()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.iblComponents = result;
  return result;
}

id one-time initialization function for entityRelationshipName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x7469746E456C6269, 0xE900000000000079, "iblEntity", &static ImageBasedLightReceiverBuilder.entityRelationshipName);
}

{
  return one-time initialization function for infoID(a1, 0x70756F7267, 0xE500000000000000, "group", &static ModelSortGroupComponentBuilder.entityRelationshipName);
}

uint64_t ImageBasedLightReceiverBuilder.inputDescriptors()()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = specialized closure #2 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[5] = 0;
  v2[6] = v1;
  if (one-time initialization token for OutputIdentifier != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  v16[0] = 0xD000000000000010;
  v16[1] = 0x8000000261994960;
  v16[2] = static EntityBuilder.OutputIdentifier;
  v16[3] = *algn_27FEC8E68;
  v16[4] = partial apply for closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v16[5] = v2;
  v17 = -127;
  swift_bridgeObjectRetain_n();

  specialized Set._Variant.insert(_:)(&v9, v16);
  outlined consume of InputDescriptor(v9, v10, v11, v12, v13, v14, v15);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v9 = static EntityBuilder.OutputName;
  v10 = qword_27FEBC3A0;
  v11 = v4;
  v12 = v3;
  v13 = 0;
  v14 = 0;
  v15 = 112;

  specialized Set._Variant.insert(_:)(v6, &v9);

  outlined consume of InputDescriptor(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
  return v8;
}

uint64_t closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v4 = RIOPxrUsdPrimCopyRelationship();
    type metadata accessor for Relationship();
    v5 = swift_allocObject();
    v5[2] = v4;
    v6 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_n(v6);

    return v7;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t a1, id *a2, uint64_t (*a3)(uint64_t, id *), uint64_t a4, uint64_t (*a5)(id *, uint64_t))
{
  v11 = *a2;
  v6 = a3(a1, &v11);
  if (!v6)
  {
    return MEMORY[0x277D84FA0];
  }

  v7 = v6;

  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v11 = static ImageBasedLightReceiverBuilder.entityRelationshipName;
  v8 = static ImageBasedLightReceiverBuilder.entityRelationshipName;
  v9 = a5(&v11, v7);

  return v9;
}

void closure #1 in ImageBasedLightReceiverBuilder.run(inputs:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Inputs.prim.getter();
  v10 = *(v9 + 16);
  v11 = RIOPxrUsdObjectCopyName();
  v12 = RIOPxrTfTokenCopyString();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v16 = *(v9 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_20;
  }

  v17 = RIOPxrUsdPrimCopyAttribute();
  v18 = RIOPxrUsdAttributeCopyValue();
  if (!v18)
  {

    goto LABEL_21;
  }

  v71 = v13;
  v19 = v18;
  v20 = RIOPxrVtValueCopyToken();

  if (!v20)
  {
    goto LABEL_20;
  }

  v69 = v5;
  v70 = a2;
  v21 = RIOPxrTfTokenCopyString();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == 0xD000000000000022 && 0x8000000261996400 == v24)
  {

    v25 = v71;
    goto LABEL_11;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v71;
  if ((v26 & 1) == 0)
  {
LABEL_20:

LABEL_21:
    ImageBasedLightReceiverBuilder.clear(inputs:)();

    goto LABEL_23;
  }

LABEL_11:
  v27 = Prim.parent.getter();
  if (v27)
  {
    v28 = v27;
    v29 = *(v27 + 16);
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for iblComponents != -1)
      {
        swift_once();
      }

      v70 = static OS_os_log.iblComponents;
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_26198A8E0;
      v33 = *(v28 + 16);
      v34 = RIOPxrUsdObjectCopyPath();
      v35 = RIOPxrSdfPathCopyString();
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      v40 = lazy protocol witness table accessor for type String and conformance String();
      *(v32 + 64) = v40;
      *(v32 + 32) = v36;
      *(v32 + 40) = v38;

      *(v32 + 96) = v39;
      *(v32 + 104) = v40;
      *(v32 + 72) = v71;
      *(v32 + 80) = v15;
      os_log(_:dso:log:type:_:)();

      return;
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v74);
  if (v75)
  {
    type metadata accessor for EntityProxy();
    if (swift_dynamicCast())
    {
      v30 = v73;
      v31 = *(v9 + 16);
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {

        ImageBasedLightReceiverBuilder.clear(inputs:)();

LABEL_23:

        return;
      }

      v42 = specialized Inputs.pathsForRelationship(named:requestContext:)();

      if (!*(v42 + 16))
      {

        ImageBasedLightReceiverBuilder.clear(inputs:)();
        goto LABEL_45;
      }

      v71 = v30;
      v43 = *(v42 + 32);

      v44 = *(a1 + 56);
      v45 = RIOBuilderInputsGetImportSession();
      if (v45)
      {
        v46 = v45;
        SwiftObject = RIOImportSessionGetSwiftObject();

        if (SwiftObject)
        {
          v48 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

          swift_beginAccess();
          v49 = *(SwiftObject + v48);
          v50 = v43;
          EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
          if (!EntityAtPrimPath)
          {

            if (one-time initialization token for iblComponents != -1)
            {
              swift_once();
            }

            v69 = static OS_os_log.iblComponents;
            LODWORD(v68) = static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_26198A8E0;
            __AssetRef.__as<A>(_:)();
            REEntityGetName();
            v59 = String.init(cString:)();
            v61 = v60;
            v62 = MEMORY[0x277D837D0];
            *(v58 + 56) = MEMORY[0x277D837D0];
            v63 = lazy protocol witness table accessor for type String and conformance String();
            *(v58 + 64) = v63;
            *(v58 + 32) = v59;
            *(v58 + 40) = v61;
            v64 = RIOPxrSdfPathCopyString();
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            *(v58 + 96) = v62;
            *(v58 + 104) = v63;
            *(v58 + 72) = v65;
            *(v58 + 80) = v67;
            os_log(_:dso:log:type:_:)();

            ImageBasedLightReceiverBuilder.clear(inputs:)();

            goto LABEL_45;
          }

          v52 = EntityAtPrimPath;
          type metadata accessor for Entity();
          v75 = MEMORY[0x277D841D8];
          *&v74 = v52;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&v74);
          v68 = static Entity.__fromCore(_:)();

          v53 = *(v69 + 8);
          v53(v8, v4);

          __AssetRef.__as<A>(_:)();
          REImageBasedLightReceiverComponentGetComponentType();
          v54 = REEntityGetOrAddComponentByClass();
          swift_beginAccess();
          v55 = v70;
          v56 = objc_getAssociatedObject(v70, &static BuilderAssociatedKeys.CoreReference);
          swift_endAccess();
          if (v56)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(&v73, &v74);
            type metadata accessor for RIOBuilderRef(0);
            swift_dynamicCast();
            v57 = v72;
            RIOBuilderAddComponent();

            dispatch thunk of Entity.__coreEntity.getter();
            __AssetRef.__as<A>(_:)();
            v53(v8, v4);
            v55[17] = 1;
            REImageBasedLightReceiverComponentSetIBLEntity();
            MEMORY[0x26670FF10](v54);

LABEL_45:

            goto LABEL_23;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v25 = v71;
  }

  else
  {
    outlined destroy of Any?(&v74);
  }

  if (one-time initialization token for iblComponents != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2619891C0;
  *(v41 + 56) = MEMORY[0x277D837D0];
  *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v41 + 32) = v25;
  *(v41 + 40) = v15;
  os_log(_:dso:log:type:_:)();
}

uint64_t ImageBasedLightReceiverBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v2);
  if (!v3)
  {
    return outlined destroy of Any?(&v2);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      __AssetRef.__as<A>(_:)();
      REImageBasedLightReceiverComponentGetComponentType();
      REEntityRemoveComponentByClass();

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ImageBasedLightReceiverBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in ImageBasedLightReceiverBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #2 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return 0;
  }

  v4 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v6 = swift_allocObject();
  *(v6 + 16) = PrimIfNeeded;
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v7 = RIOPxrUsdPrimCopyAttribute();
    v8 = RIOPxrUsdAttributeCopyValue();
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    v10 = RIOPxrVtValueCopyToken();

    if (v10)
    {
      v11 = RIOPxrTfTokenCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t specialized ImageBasedLightReceiverBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v10 = static ImageBasedLightReceiverBuilder.realityKitComponentTypeName;
  v0 = static ImageBasedLightReceiverBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t partial apply for closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors()(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t Inputs.identifierForEntity(withInputKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Inputs.subscript.getter(a1, a2, &v7);
  if (!v8)
  {
    outlined destroy of Any?(&v7);
    goto LABEL_5;
  }

  type metadata accessor for EntityProxy();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 1;
    goto LABEL_6;
  }

  __EntityRef.__validInteractionIdentifier.getter();

  v4 = 0;
LABEL_6:
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 56))(a3, v4, 1, v5);
}

uint64_t closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:)(unint64_t a1, void (*a2)(uint64_t, char *), uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v15 = type metadata accessor for UUID();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    do
    {
      v10 = 0;
      v11 = (v4 + 8);
      while ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26670F670](v10, a1);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        __EntityRef.__validInteractionIdentifier.getter();
        v4 = v17;
        v16(v12, v8);

        result = (*v11)(v8, v15);
        ++v10;
        if (v13 == v9)
        {
          return result;
        }
      }

      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v12 = *(a1 + 8 * v10 + 32);

      v13 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized Inputs.pathsForRelationship(named:requestContext:)()
{
  v0 = Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = *(v0 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v3 = *(v0 + 16);
    v4 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v5 = swift_allocObject();
    v5[2] = v4;
    v6 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    return v6;
  }

  else
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

uint64_t specialized Inputs.forEachAffectedObject(requestContext:callback:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v5 = Inputs.accumulatedValues(forKey:)(static EntityBuilder.OutputName, qword_27FEBC3A0);
  v6 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    v12 = v7;
    v13 = __CocoaSet.count.getter();
    v7 = v12;
    if (v13)
    {
LABEL_8:
      v14[2] = MEMORY[0x28223BE20](v7);
      v14[3] = a1;
      v14[4] = a2;
      v8 = *(v2 + 56);
      v9 = swift_allocObject();
      *(v9 + 16) = partial apply for closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:);
      *(v9 + 24) = v14;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_10;
      v10 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v10);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Inputs.forEachTriggerObjectPathInProperty(named:inputName:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Inputs.accumulatedValues(forKey:)(a1, a2);
  v8 = specialized _arrayConditionalCast<A, B>(_:)(v7);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v9 >> 62)
  {
    v15 = v9;
    v16 = __CocoaSet.count.getter();
    v9 = v15;
    if (v16)
    {
LABEL_6:
      MEMORY[0x28223BE20](v9);
      v17[2] = v10;
      v17[3] = a3;
      v17[4] = a4;
      v11 = *(v4 + 56);
      v12 = swift_allocObject();
      *(v12 + 16) = closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:)partial apply;
      *(v12 + 24) = v17;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_8_0;
      v13 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v13);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if (v11)
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }
}

uint64_t __RKEntityHideActionBuildOutAnimationType.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v11);
  if (v1)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v3 = v11;
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v8 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v12);
  if (v8 == 10)
  {
    goto LABEL_4;
  }

  v10 = v8;

  return __RKEntityHideActionBuildOutAnimationType.init(from:)(v10, a1);
}

uint64_t __RKEntityHideActionBuildOutAnimationType.init(from:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279AEECE8 + a1);

  return v5(a2, v6, v4);
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v13);
  if (v1)
  {

    v3 = *MEMORY[0x277CDB058];
    v4 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
    return (*(*(v4 - 8) + 104))(a1, v3, v4);
  }

  else
  {
    v6 = v13;
    v7 = RIOPxrTfTokenCopyString();
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v14._countAndFlagsBits = v8;
    v14._object = v10;
    v11 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v14);
    if (v11 == 10)
    {
      lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v12 = v11;

      return __RKEntityShowActionBuildInAnimationType.init(from:)(v12, a1);
    }
  }
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(from:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279AEED38 + a1);

  return v5(a2, v6, v4);
}

uint64_t __RKEntityActionVisibilityTypeUSD.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7368560;
    v6 = 0x7055656C616373;
    if (a1 != 8)
    {
      v6 = 0x776F44656C616373;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x766F624165766F6DLL;
    if (a1 != 5)
    {
      v7 = 0x6F6C654265766F6DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x6867695265766F6DLL;
    v3 = 0x6E6F724665766F6DLL;
    if (a1 != 3)
    {
      v3 = 0x6B63614265766F6DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7466654C65766F6DLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionVisibilityTypeUSD.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized __RKEntityActionVisibilityTypeUSD.init(from:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDB0A8])
  {
    v9 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CDB070])
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB098])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB090])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB078])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB080])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB088])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0A0])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0B0])
  {
    v9 = 9;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0B8])
  {
    v9 = 8;
    goto LABEL_21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDB058])
  {
    v9 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CDB020])
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB048])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB040])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB028])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB030])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB038])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB050])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB060])
  {
    v9 = 9;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB068])
  {
    v9 = 8;
    goto LABEL_21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaG_So0i2TfhL0a_ALts5NeverOTg503_s9d4IO16fg2O5h5VSo16ijk48RefaSo0f2TfeI0aAGIgngoo_AE3key_AG5valuetAI_AGts5n46OIegnrzr_TR05_sSD9a6IOAA16cd2O5e8VRszSo16fgH46s16Rs_rlE02vtH0AGvgtuV25_AGtAE_AGtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(a1 + 36);
    v23 = v1;
    v24 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v25 = v6;
      v10 = *(*(a1 + 48) + 8 * v5);
      v11 = *(*(a1 + 56) + 8 * v5);
      v12 = v10;

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v9);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v7 = v24;
      if (v24 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 72 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v24, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v24, 0);
      }

LABEL_4:
      v6 = v25 + 1;
      v5 = v8;
      if (v25 + 1 == v23)
      {
        return;
      }
    }

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
  }
}