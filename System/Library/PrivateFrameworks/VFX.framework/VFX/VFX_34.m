__n128 initializeWithTake for ShaderCache.Library(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDFRuntimeData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for SDFRuntimeData(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScriptCompilerSystem.CompilationHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptCompilerSystem.CompilationHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 initializeWithCopy for GazeTrackingParams(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

__n128 sub_1AF3C0778(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AF3C079C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1AF3C081C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 initializeWithCopy for AABB(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeWithCopy for Orientation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for EntityManager.EntityEntry(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PointCacheSpawner(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheSpawner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityManager.EntityEntry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityManager.EntityEntry(uint64_t result, int a2, int a3)
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1AF3C0A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshBatch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshBatch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C0B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 180);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 180) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithCopy for _StructContextDescriptor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PerspectiveCamera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PerspectiveCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C0E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 400))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 388);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 388) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C0FB0(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1AF3C0FEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 208))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C100C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
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

  *(result + 208) = v3;
  return result;
}

__n128 initializeWithCopy for TesselationDescriptor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3C11A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 624))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 612);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C11F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 624) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 624) = 0;
    }

    if (a2)
    {
      *(result + 612) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C13CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 128))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C1420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C1510(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugDrawSystemState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DebugDrawSystemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AF3C1668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C1688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 1144) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 1152) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RelationPair(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AF3C1804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C1858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C1998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AFDFCEC8();

  *a1 = v2;
  return result;
}

uint64_t sub_1AF3C19E0(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E60, type metadata accessor for DeviceType);
  v3 = sub_1AF0D4E2C(&qword_1EB637E68, type metadata accessor for DeviceType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3C1B2C()
{
  v0 = sub_1AFDFCEF8();
  v1 = MEMORY[0x1B2718BB0](v0);

  return v1;
}

uint64_t sub_1AF3C1B68()
{
  sub_1AFDFCEF8();
  sub_1AFDFD038();
}

uint64_t sub_1AF3C1BBC()
{
  sub_1AFDFCEF8();
  sub_1AFDFF288();
  sub_1AFDFD038();
  v0 = sub_1AFDFF2F8();

  return v0;
}

uint64_t sub_1AF3C1C30()
{
  v0 = sub_1AFDFCEF8();
  v2 = v1;
  if (v0 == sub_1AFDFCEF8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AFDFEE28();
  }

  return v5 & 1;
}

unint64_t sub_1AF3C22B8()
{
  result = qword_1EB637DB0;
  if (!qword_1EB637DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB637DB0);
  }

  return result;
}

__n128 sub_1AF3C262C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for Clock(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Clock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C2764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 288))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 276);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C27B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 276) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C2870(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3C288C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C28AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

__n128 initializeWithTake for ParticleComponentSystemParameter(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendingStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendingStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C2C04()
{

  v0 = sub_1AF9A8804();

  if (v0 == 4)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

double sub_1AF3C2C58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, _OWORD *a8@<X8>, uint64_t a9, char a10, uint64_t a11, char a12, _OWORD *a13, uint64_t **a14, uint64_t *a15)
{

  v48 = sub_1AF9A8814();
  v50 = v17;
  v49 = v18;

  if (a3)
  {
    v52 = [a3 nodeRef];
  }

  else
  {
    v52 = 0;
  }

  v19 = sub_1AF9A1504(1, 0);

  v47 = [v19 materialRef];
  v20 = v19;

  v46 = sub_1AF9A178C(1, 0);
  v45 = v21;

  type metadata accessor for ConstantNode(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    sub_1AF0D5A54(v22 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v66);
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

  v23 = swift_dynamicCast();
  v24 = 0;
  if (v23)
  {
    v59 = 0;
    v24 = v58;
  }

  v44 = v24;

  v25 = swift_dynamicCastClass();
  if (v25)
  {
    sub_1AF0D5A54(v25 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v66);
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  if (swift_dynamicCast())
  {
    v59 = 0;
    v27 = v58;
  }

  else
  {
    v27 = 0;
  }

  v29 = sub_1AF9A11A0(1, 0);

  v30 = sub_1AF9A11A0(1, 0);

  if (a10)
  {
    a9 = RGNullResource();
  }

  if (a12)
  {
    a11 = RGNullResource();
  }

  v31.i64[0] = v48;
  v31.i64[1] = v50;
  if (v49)
  {
    v32 = -1;
  }

  else
  {
    v32 = 0;
  }

  LOWORD(v58) = 257;
  v33 = vbicq_s8(v31, vdupq_n_s32(v32));
  if (v45)
  {
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v34 = v46;
  }

  BYTE2(v58) = v29 & 1;
  BYTE3(v58) = v30 & 1;
  BYTE4(v58) = a4 & 1;
  BYTE5(v58) = a5 & 1;
  if (v45)
  {
    v35 = 0;
  }

  else
  {
    v35 = HIDWORD(v46);
  }

  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34 == -1;
  }

  BYTE6(v58) = a6 & 1;
  HIBYTE(v58) = a7 & 1;
  v60 = v33;
  v37 = v34 | (v35 << 32);
  if (v36)
  {
    v38 = -1;
  }

  else
  {
    v38 = v37;
  }

  v61 = v52;
  v62 = v47;
  v63 = v38;
  v64 = v44;
  v65 = v27;
  sub_1AF24EF24(a15, a1, a2, &v58, a9, a11, a13, &v66, a14);

  v39 = v71;
  a8[4] = v70;
  a8[5] = v39;
  v40 = v73;
  a8[6] = v72;
  a8[7] = v40;
  v41 = v67;
  *a8 = v66;
  a8[1] = v41;
  result = *&v68;
  v43 = v69;
  a8[2] = v68;
  a8[3] = v43;
  return result;
}

id sub_1AF3C3044()
{
  type metadata accessor for AuthoringGraph();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = sub_1AF42B820(v1, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
  sub_1AFDFC308();
  v2 = sub_1AF912398(1, sub_1AF3C3120);

  return v2;
}

uint64_t sub_1AF3C3120()
{
  v0 = sub_1AFDFC318();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v58 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v56 - v8;
  type metadata accessor for PresentNode(0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v11;
  v59 = v10;
  sub_1AFDFC308();
  sub_1AF449B08(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v64 = xmmword_1AFE431C0;
  *(inited + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC0000000000000D0;
  v14 = v13 | 0x8000000000000000;
  *(inited + 32) = v13 | 0x8000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 0xC000000000000008;
  sub_1AF4410A8(v14);
  sub_1AF9C5694(v14, v15 | 0x8000000000000000);

  sub_1AF441114(v14);

  *(swift_allocObject() + 16) = 0xC0000000000000D0;

  v67 = sub_1AF41FF24(0, 1, 0, v11, sub_1AF4444A4, &qword_1EB6323D0, &type metadata for AuthoringNode.Port);
  sub_1AF48F8E8(v11);
  type metadata accessor for RenderWorldNode(0);
  v16 = swift_allocObject();
  *(v16 + 3) = 0;
  *(v16 + 4) = 0;
  *(v16 + 2) = v11;
  v57 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  sub_1AFDFC308();
  sub_1AF4444A4();
  v56 = swift_initStackObject();
  *(v56 + 16) = v64;
  v17 = *(v62 + 56);
  v60 = v9;
  v17(v9, 1, 1, v63);
  type metadata accessor for AuthoringNode();
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v22 = 0;
  v22[1] = 0;
  *(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v16;

  sub_1AF9A8E94(v68);
  v23 = v68[0];
  v73 = v68[1];
  v74 = v68[0];
  v24 = MEMORY[0x1E69E62F8];
  sub_1AF444058(&v73, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
  v72 = v68[2];
  sub_1AF444058(&v72, &qword_1EB638968, &type metadata for TypeConstraint, v24, sub_1AF449B08);
  v71 = v68[3];
  sub_1AF44943C(&v71, sub_1AF445C2C);
  v70 = v68[4];
  sub_1AF44943C(&v70, sub_1AF445C2C);
  v69 = v68[5];
  sub_1AF444058(&v69, &qword_1EB638978, &type metadata for AnyValue, v24, sub_1AF449B08);
  v25 = *(v23 + 16);
  sub_1AF444058(&v74, &qword_1EB638968, &type metadata for TypeConstraint, v24, sub_1AF449B08);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v25, 0);
    v26 = v66;
    v27 = *(v66 + 16);
    v28 = 16 * v27 + 32;
    v29 = v58;
    v30 = v60;
    v31 = v61;
    do
    {
      v66 = v26;
      v32 = *(v26 + 24);
      v33 = v27 + 1;
      if (v27 >= v32 >> 1)
      {
        sub_1AFC05D04(v32 > 1, v27 + 1, 1);
        v30 = v60;
        v31 = v61;
        v26 = v66;
      }

      *(v26 + 16) = v33;
      v34 = (v26 + v28);
      *v34 = 0;
      v34[1] = 0;
      v28 += 16;
      v27 = v33;
      --v25;
    }

    while (v25);
  }

  else
  {
    v29 = v58;
    v30 = v60;
    v31 = v61;
  }

  *(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v26;
  sub_1AF449A04(v30, v31, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
  v36 = v62;
  v35 = v63;
  v37 = *(v62 + 48);
  if (v37(v31, 1, v63) == 1)
  {
    sub_1AFDFC308();
    sub_1AF44832C(v30, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v37(v31, 1, v35) != 1)
    {
      sub_1AF44832C(v31, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF44832C(v30, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    (*(v36 + 32))(v29, v31, v35);
  }

  (*(v36 + 32))(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v29, v35);
  (*(v36 + 24))(&v16[v57], v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v35);
  v38 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v39 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  v40 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = (v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v41 = 0;
  v41[1] = 0;

  v42 = v56;
  *(v56 + 32) = v18;
  *(v42 + 40) = 0;
  v43 = v42;

  v65 = v43;
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  v46 = *(MEMORY[0x1E69E7CC0] + 16);
  v47 = v46 + v44;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v47 > v45[3] >> 1)
  {
    if (v46 <= v47)
    {
      v49 = v46 + v44;
    }

    else
    {
      v49 = v46;
    }

    v45 = sub_1AF41FF24(isUniquelyReferenced_nonNull_native, v49, 1, MEMORY[0x1E69E7CC0], sub_1AF4444A4, &qword_1EB6323D0, &type metadata for AuthoringNode.Port);
  }

  if (*(v43 + 16))
  {
    sub_1AF449B08(0, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();

    if (v44)
    {
      v45[2] += v44;
    }
  }

  else
  {
  }

  sub_1AF44943C(&v65, sub_1AF44949C);
  sub_1AF48F8E8(v45);
  v50 = sub_1AF3DA924(v67);

  sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1AFE4C3E0;
  *(v51 + 32) = v50;
  sub_1AF449890(0, &qword_1EB638D88, sub_1AF449518, MEMORY[0x1E69E6F90]);
  v52 = swift_initStackObject();
  *(v52 + 16) = v64;
  v53 = sub_1AF3C3BCC(v51);

  *(v52 + 32) = v53;
  v54 = sub_1AF912628(v52);
  swift_setDeallocating();
  sub_1AF44943C(v52 + 32, sub_1AF449518);
  return v54;
}

uint64_t sub_1AF3C3AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1AFC05DE8(0, v1, 0);
    v2 = v10;
    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC05DE8(v6 > 1, v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C3BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        MEMORY[0x1B2719C70]();
        type metadata accessor for AuthoringNode();
        sub_1AF44479C(0);
        swift_dynamicCast();
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = a1 + 32;
      type metadata accessor for AuthoringNode();
      sub_1AF44479C(0);
      do
      {
        v6 += 8;

        swift_dynamicCast();
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        --v2;
      }

      while (v2);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1AF3C3D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC05F94(0, v1, 0);
    v2 = v12;
    sub_1AF43A11C();
    sub_1AF43A1C0();
    v4 = a1 + 48;
    do
    {
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC05F94(v6 > 1, v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 32 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C3E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v12;
    sub_1AF43A260();
    sub_1AF0D8108(0, &qword_1ED7232A0);
    v4 = a1 + 72;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC06EC8(v5 > 1, v6 + 1, 1);
      }

      v4 += 48;
      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 48 * v6);
      v7[3] = v10;
      v7[4] = v11;
      v7[2] = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4008(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFC070C4(0, v1, 0);
    v2 = v13;
    sub_1AF4485F8(0, &qword_1ED72F980);
    sub_1AF446420();
    v4 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC070C4(v5 > 1, v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 32 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      *(v7 + 48) = v11;
      *(v7 + 56) = v12;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4160(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC070E4(0, v4 & ~(v4 >> 63), 0);
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1B2719C70](i, a1);
        sub_1AF0D4478(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1AFC070E4(v7 > 1, v8 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v8 + 1;
        sub_1AF0DB6BC(v14, (v5 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1AF0D4478(0, a2);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v15 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1AFC070E4(v11 > 1, v12 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v12 + 1;
        sub_1AF0DB6BC(v14, (v5 + 32 * v12 + 32));
        ++v9;
        --v4;
      }

      while (v4);
    }
  }

  return v5;
}

uint64_t sub_1AF3C4360(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AFC073C4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    sub_1AF449B08(0, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    do
    {

      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC073C4(v5 > 1, v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4480(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AFC070E4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC070E4(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1AF0DB6BC(&v8, (v2 + 32 * v6 + 32));
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4598(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06FC8(0, v3, 0);
    v4 = v14;
    v8 = a1 + 32;
    sub_1AF43A3CC(0, a2, a3);
    sub_1AF43A3CC(0, &qword_1ED7270C0, &qword_1ED7270D0);
    do
    {
      swift_dynamicCast();
      v9 = v13;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC06FC8(v10 > 1, v11 + 1, 1);
        v9 = v13;
      }

      *(v14 + 16) = v11 + 1;
      *(v14 + 16 * v11 + 32) = v9;
      v8 += 16;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3C46D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC07688(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_1AF4455CC(v4, v13);
      sub_1AF449B08(0, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC07688(v5 > 1, v6 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 88 * v6;
      v8 = v15;
      *(v7 + 32) = v14;
      *(v7 + 48) = v8;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      *(v7 + 112) = v19;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      *(v7 + 64) = v9;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4820(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC0791C(0, v1, 0);
    v4 = a1 + 48;
    v2 = v12;
    do
    {
      sub_1AF442064(*(v4 - 16));
      sub_1AF0D8108(0, &qword_1EB638398);
      sub_1AF4485F8(0, &qword_1EB6383A0);

      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC0791C(v6 > 1, v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4990(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AFC079BC(0, v1, 0);
    v4 = a1 + 80;
    v2 = v17;
    do
    {
      v10 = *(v4 - 32);
      sub_1AF443EE0(*(v4 - 48));
      sub_1AF444224(v10);
      sub_1AF0D8108(0, &qword_1EB638730);
      sub_1AF4485F8(0, &qword_1EB638738);

      swift_dynamicCast();
      v5 = v13;
      v7 = *(v17 + 16);
      v6 = *(v17 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC079BC(v6 > 1, v7 + 1, 1);
        v5 = v13;
      }

      *(v17 + 16) = v7 + 1;
      v8 = v17 + 56 * v7;
      *(v8 + 32) = v11;
      *(v8 + 40) = v12;
      *(v8 + 48) = v5;
      *(v8 + 64) = v14;
      *(v8 + 72) = v15;
      *(v8 + 80) = v16;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4B50(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + OBJC_IVAR___VFXBidirectionalRemapTable_remapTable) + 24);
  type metadata accessor for RemapContext();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);

  v5 = sub_1AF43B324(v4, sub_1AF4492B8);
  *(v3 + 24) = v2;
  *(v3 + 32) = v5;

  *(v3 + 16) = 1;
  type metadata accessor for AuthoringGraph();
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v8 = v6;
    MEMORY[0x1EEE9AC00](v6, v7);
    v13[2] = v3;
    v13[3] = &off_1F2532090;

    v9 = sub_1AF3FB9C8(sub_1AF42B5A8, v13, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v11 = sub_1AF42A36C(v9, v10, sub_1AF42ADF4);

    *(v8 + 24) = v11;
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id sub_1AF3C4D38()
{
  v2[16] = 0;
  swift_unknownObjectRetain();
  v0 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF42B5C4, v2);
  sub_1AF9114A4();
  swift_unknownObjectRelease();

  return v0;
}

char *sub_1AF3C4DC4(uint64_t a1)
{
  v6[16] = 1;
  swift_unknownObjectRetain();
  v2 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF449D00, v6);
  sub_1AF9114A4();
  v3 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 24))(&v2[v3], a1 + v3, v4);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t CFXRGAuthoringGraphCompile(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  swift_unknownObjectRetain();
  LOBYTE(a4) = CFXRGAuthoringGraphCompile(_:_:_:_:)(v7, a2, a3, a4);

  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t CFXRGAuthoringGraphCompile(_:_:_:_:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v39 = a3;
  v45 = a1;
  sub_1AF0D4E74();
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1AFDFC298();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v9);
  v40 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for RenderGraphDiagnostics(0));
  *&v11[OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_rendererInfo] = 0;
  v12 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;
  swift_unknownObjectRetain();
  v13 = MEMORY[0x1E69E7CC0];
  *&v11[v12] = sub_1AF42B620(MEMORY[0x1E69E7CC0], sub_1AF448F00, sub_1AF448F94, sub_1AF449064);
  v14 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v15 = sub_1AFDFC318();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(&v11[v14], 1, 1, v15);
  v18 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;
  *&v11[v18] = sub_1AF42B820(v13, sub_1AF448DE8, sub_1AF448E1C, sub_1AF448EE8);
  *&v11[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v13;
  sub_1AF44832C(&v11[v14], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  (*(v16 + 16))(&v11[v14], a2 + OBJC_IVAR____TtC3VFX14AuthoringGraph_id, v15);
  v17(&v11[v14], 0, 1, v15);
  v19 = type metadata accessor for GraphDiagnostics(0);
  v46.receiver = v11;
  v46.super_class = v19;
  v20 = objc_msgSendSuper2(&v46, sel_init);
  swift_unknownObjectRelease();
  if (a4)
  {
    v21 = v20;
    *a4 = v20;
    v22 = v20;
  }

  v23 = [v45 scene];
  v24 = *&v23[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v25 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v25 && (, , *(v25 + 24)))
  {
    swift_unknownObjectRetain();

    v26 = sub_1AF6C98C4();
    v27 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v27, v28);
    v38[-2] = v26;
    v38[-1] = &off_1F2532090;

    v29 = sub_1AF3FB9C8(sub_1AF449DA8, &v38[-4], 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v31 = sub_1AF42A36C(v29, v30, sub_1AF42ADF4);

    *(a2 + 24) = v31;

    v32 = v20;
    v33 = sub_1AF9211E0(0, v32);
    v38[1] = 0;
    v35 = v33;

    v36 = v39;
    if (v39)
    {
      v37 = v35;
      *v36 = v35;
    }

    else
    {
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF3C567C(uint64_t a1)
{
  type metadata accessor for RenderGraphNode(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*v1 + 152);

    v5(&v14, v6);
    v7 = v15;
    v25 = v15;
    v24 = v14;
    v8 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v24, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v23 = v16;
    sub_1AF444058(&v23, &unk_1EB638968, &type metadata for TypeConstraint, v8, sub_1AF449B08);
    v22 = v17;
    sub_1AF44943C(&v22, sub_1AF445C2C);
    v21 = v18;
    sub_1AF44943C(&v21, sub_1AF445C2C);
    v20 = v19;
    sub_1AF444058(&v20, &unk_1EB638978, &type metadata for AnyValue, v8, sub_1AF449B08);
    v9 = *(v7 + 8 * a1 + 32);
    sub_1AF4410A8(v9);
    v10 = sub_1AF444058(&v25, &unk_1EB638968, &type metadata for TypeConstraint, v8, sub_1AF449B08);
    v11 = (*(*v4 + 248))(v10);
    if (a1 < 0 || *(v11 + 16) <= a1)
    {
      sub_1AF441114(v9);

      return 3;
    }

    else
    {
      v12 = *(v11 + a1 + 32);
      sub_1AF441114(v9);

      return v12;
    }
  }

  else
  {
    sub_1AFDFE218();
    sub_1AF9703D8();

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF27960);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF3C592C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_1AF3C5988(v3, a2);
}

void sub_1AF3C5988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1AF93E128();
  }

  else
  {
    v5 = 0;
  }

  if (sub_1AF3D8564(&unk_1EB6440D0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v4 = swift_conformsToProtocol2();
      if (v4)
      {
        (*(v4 + 24))(v5, ObjectType, v4);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AF3C5A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v31[0] = a4;
  v9 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v16 = sub_1AFDFC318();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v12[v14], a1 + v15, v16);
  (*(v17 + 56))(&v12[v14], 0, 1, v16);
  v12[v9[8]] = 0;
  *v12 = 0;
  v18 = &v12[v9[6]];
  *v18 = a2;
  v18[8] = a3 & 1 | 0x80;
  v19 = &v12[v9[7]];
  *v19 = v31[0];
  *(v19 + 1) = a5;
  v20 = *(v31[1] + 24);
  sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
  v21 = swift_allocError();
  sub_1AF4495B8(v12, v22, type metadata accessor for GraphError);
  v23 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v24 = *(v20 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1AF420408(0, v24[2] + 1, 1, v24);
    *(v20 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1AF420408(v26 > 1, v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v24[v27 + 4] = v21;
  *(v20 + v23) = v24;
  v28 = swift_allocError();
  sub_1AF445CBC(v12, v29, type metadata accessor for GraphError);
  return v28;
}

BOOL sub_1AF3C5CF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = sub_1AF0D3F10(a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = v8 - 1;
  v10 = (v7 + 40);
  do
  {
    v11 = *v10;
    v10 += 3;
    result = v11 == a1;
  }

  while (v11 != a1 && v9-- != 0);
  return result;
}

__n128 sub_1AF3C5D60(void *a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v7 = [swift_unknownObjectRetain() contents];
  v8 = a1;
  result = a4;
  *&v7[a2 + a3] = a4;
  return result;
}

id sub_1AF3C5DE0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [swift_unknownObjectRetain() storageMode];
  result = swift_unknownObjectRelease();
  if (v11 == 2)
  {
    v13 = 0;
  }

  else
  {
    v14 = [swift_unknownObjectRetain() contents];
    result = a1;
    v13 = &v14[a2];
  }

  v15 = &v13[a3];
  if (a5 <= 4)
  {
    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 != 1)
        {
          return result;
        }

        result = [a6 inverseViewTransform_];
      }

      else
      {
        result = [a6 viewTransform_];
      }
    }

    else if (a5 == 2)
    {
      result = [a6 projectionTransform_];
    }

    else if (a5 == 3)
    {
      result = [a6 inverseProjectionTransform_];
    }

    else
    {
      result = [a6 viewProjectionTransform_];
    }

    goto LABEL_27;
  }

  if (a5 <= 7)
  {
    if (a5 == 5)
    {
      result = [a6 inverseViewProjectionTransform_];
    }

    else if (a5 == 6)
    {
      result = [a6 cubeFromViewTransform_];
    }

    else
    {
      result = [a6 lastFrameViewProjectionTransform_];
    }

    goto LABEL_27;
  }

  switch(a5)
  {
    case 8:
      result = [a6 inverseTransposeViewTransform_];
LABEL_27:
      *v15 = v16;
      *(v15 + 1) = v17;
      *(v15 + 2) = v18;
      *(v15 + 3) = v19;
      return result;
    case 9:
      result = [a6 nearFar_];
      *v15 = v21;
      break;
    case 10:
      result = [a6 viewportSize_];
      *v15 = v20;
      break;
  }

  return result;
}

id sub_1AF3C5F94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [swift_unknownObjectRetain() storageMode];
  result = swift_unknownObjectRelease();
  if (v11 == 2)
  {
    v13 = 0;
    if (a5 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [swift_unknownObjectRetain() contents];
    result = a1;
    v13 = &v15[a2];
    if (a5 > 1)
    {
LABEL_3:
      if (a5 == 2)
      {
        result = [a6 timeFract];
      }

      else
      {
        if (a5 != 3)
        {
          return result;
        }

        result = [a6 deltaTime];
      }

LABEL_11:
      *&v13[a3] = v14;
      return result;
    }
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    result = [a6 time];
    goto LABEL_11;
  }

  result = [a6 frameIndex];
  *&v13[a3] = result;
  return result;
}

unint64_t sub_1AF3C6090(void *a1, int a2, uint64_t a3, uint64_t *a4, unint64_t *a5, uint64_t a6, size_t a7)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v52 = a2;
  v53 = a6;
  v54 = a7;
  v15 = result + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v16 = *(v15 + *(type metadata accessor for ScriptingConfiguration() + 36));
  v17 = a4[5];
  if ((~*(a4 + 10) & 0xFCLL) != 0)
  {
    v19 = a4[2];
    v18 = a4[3];
    v20 = a4[4];
    v21 = v17 & 0x3F;
    if (v17 >> 6 != 1)
    {
      v21 = a4[4];
    }

    v22 = v17 >> 6 ? v21 : a4[5];
    if (v22 && (v22 == 1 || a4[6] >= v16))
    {
      sub_1AF448910(a4[2], a4[3], a4[4], a4[5]);
      v33 = v17 >> 6;
      if (v17 >> 6)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  v23 = *a5;
  v24 = thread_worker_index();
  v25 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v24 != -1)
  {
    v25 += *v24 + 1;
  }

  v26 = *v25;
  sub_1AF443EE0(v23);
  v27 = sub_1AFAE0478(v23, 1, 0, 1, 0, 1, v26, 0, 0);
  if (v30 >= 0xFCu)
  {
    if (*(v14 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) == 1)
    {

      return sub_1AF443F24(v23);
    }

    else
    {
      v34 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
      v55[1] = 0xE000000000000000;

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
      sub_1AFDFE458();
      v35 = sub_1AFDFDA08();
      v55[0] = 0;
      (*(*v34 + 88))(v35, v55, 0, 0xE000000000000000);

      sub_1AF443F24(v23);
    }
  }

  v19 = v27;
  v18 = v28;
  v20 = v29;
  LOBYTE(v17) = v30;
  sub_1AF443F24(v23);
  if (!(v17 >> 6))
  {
    v32 = v17;
    if (v17)
    {
      goto LABEL_29;
    }

    LOBYTE(v17) = 0;
LABEL_37:
    v40 = sub_1AF0FBD8C(v18);
    v41 = v19;
    v42 = v18;
    if (v19)
    {
      goto LABEL_38;
    }

LABEL_43:
    if (!v42)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v17 >> 6 != 1 && v20 != 0)
  {
    v32 = v20;
LABEL_29:
    if (v32)
    {
      if (v32 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v16;
      }
    }

    else
    {
      v36 = -1;
    }

    v51 = v36;
    v37 = a4[2];
    v38 = a4[3];
    v39 = a4[4];
    v50 = a4[5];
    sub_1AF448910(v19, v18, v20, v17);
    sub_1AF44893C(v37, v38, v39, v50);
    a4[2] = v19;
    a4[3] = v18;
    a4[4] = v20;
    a4[5] = v17;
    a4[6] = v51;
  }

  v33 = v17 >> 6;
  if (!(v17 >> 6))
  {
    goto LABEL_37;
  }

LABEL_36:
  if (v33 == 1)
  {
    goto LABEL_37;
  }

  v45 = thread_worker_index();
  v46 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v45 != -1)
  {
    v46 += *v45 + 1;
  }

  v40 = v19(*v46);
  v41 = v40;
  v42 = v47;
  if (!v40)
  {
    goto LABEL_43;
  }

LABEL_38:
  v43 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v43 == 2)
  {
    v44 = 0;
  }

  else
  {
    v48 = [swift_unknownObjectRetain() contents];
    v49 = a1;
    v44 = &v48[v52];
  }

  v40 = memmove(&v44[v53], v41, v54);
  if (!v42)
  {
    goto LABEL_48;
  }

LABEL_47:
  v42(v40);
  sub_1AF0FB8EC(v42);
LABEL_48:
  sub_1AF4488E4(v19, v18, v20, v17);
}

uint64_t sub_1AF3C654C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1[5];
  v9[4] = v1[4];
  v9[5] = v2;
  v3 = v1[7];
  v9[6] = v1[6];
  v9[7] = v3;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  v6 = &v9[a1];
  v7 = *v6;
  if (!RGResourceIsNull(v6[1]) && !RGPassIsNull(v7))
  {
    return v7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF3C6678(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v6 = *(a5 + 16);
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v25 = a5 + 32;
      v23 = *(a5 + 16);
      do
      {
        v10 = (v25 + 16 * v9);
        v11 = *v10;
        v12 = v10[1];
        GPUResourceManager = RGContextGetGPUResourceManager(v8);
        v26 = 0;
        v29 = 0;
        v30[0] = 0;
        RGGPUResourceManagerGetBuffer(GPUResourceManager, v12, &v29, &v26, v30);
        if (*(a6 + 16))
        {
          v14 = v29;
          v15 = v30[0];
          v16 = v26;
          v17 = sub_1AF0D3F10(v11);
          if (v18)
          {
            v19 = *(*(a6 + 56) + 8 * v17);
            v20 = *(v19 + 16);
            if (v20)
            {

              v21 = v19 + 40;
              do
              {
                v22 = *(v21 - 8);
                v26 = v14;
                v27 = v15;
                v28 = v16;

                v22(&v26);

                v21 += 16;
                --v20;
              }

              while (v20);

              v6 = v23;
              v8 = a2;
            }
          }
        }

        ++v9;
      }

      while (v9 != v6);
    }
  }
}

char *sub_1AF3C67D8()
{
  v1 = v0;
  type metadata accessor for _ArrayNode(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v2 = *(*(v0 + 16) + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = v2 + 1;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v6 = 16 * v3 + 32;
  while (v4 != ++v3)
  {
    v7 = v6 + 16;

    v8 = sub_1AF9A178C(1, 0);
    v10 = v9;

    v6 = v7;
    if ((v10 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AF4217DC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1AF4217DC(v11 > 1, v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v8;
      goto LABEL_4;
    }
  }

  if (*(v5 + 2) != *(*(v1 + 16) + 16))
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1AF3C694C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return RGResourceIdentifierMake(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return RGResourceIdentifierMake(v3);
    }
  }

  result = sub_1AFDFE1E8();
  if (!v2)
  {
    return v5[3];
  }

  return result;
}

uint64_t sub_1AF3C69DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  GPUResourceManager = RGContextGetGPUResourceManager(a1);
  v10 = RGGPUResourceManagerGetTexture(GPUResourceManager, a2);
  v11 = 0;
  if (a3)
  {
    v12 = RGContextGetGPUResourceManager(a1);
    v11 = RGGPUResourceManagerGetPreviousFrameTexture(v12, a2);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    MEMORY[0x1EEE9AC00](Strong, v14);
    v22[2] = v10;
    v22[3] = v11;
    if (a5 == 0xFFFFFFFF || (a5 & 0x80000000) != 0 || a5 >= *(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v16 = (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a5), HIDWORD(a5) != 0xFFFFFFFF) && v16[2] != HIDWORD(a5) || (v17 = *(v16 + 2), v18 = *(*(v15 + 144) + 8 * *v16 + 32), *(v18 + 232) > v17) || *(v18 + 240) <= v17)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = **(v15 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v20 = *(v18 + 344);

      os_unfair_lock_lock(v20);
      ecs_stack_allocator_push_snapshot(*(v19 + 32));

      sub_1AFCC71F8(v19, v18, v17, v15, a5, sub_1AF448504, v22);

      ecs_stack_allocator_pop_snapshot(*(v19 + 32));
      os_unfair_lock_unlock(*(v18 + 344));
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF3C6C38(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  a1[1] = a3;
  return result;
}

uint64_t sub_1AF3C6CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1AF3C6D00(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = v2;
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  if (sub_1AF3C567C(v12))
  {
    v43 = v11;
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1AFDFE218();

    v44 = 0x207475706E49;
    v45 = 0xE600000000000000;
    a2(v46, v13);
    v55 = v47;
    v14 = sub_1AF970A64(0, v47);
    v16 = v15;
    v54 = v46[0];
    v42 = a1;
    v17 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v54, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v53 = v46[1];
    sub_1AF444058(&v53, &unk_1EB638968, &type metadata for TypeConstraint, v17, sub_1AF449B08);
    v52 = v46[2];
    sub_1AF444058(&v52, &unk_1EB638968, &type metadata for TypeConstraint, v17, sub_1AF449B08);
    sub_1AF44943C(&v55, sub_1AF445C2C);
    v51 = v48;
    sub_1AF44943C(&v51, sub_1AF445C2C);
    v50 = v49;
    sub_1AF444058(&v50, &unk_1EB638978, &type metadata for AnyValue, v17, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v14, v16);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v19 = v44;
    v18 = v45;
    v20 = v6[5];
    v21 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v22 = sub_1AFDFC318();
    v23 = *(v22 - 8);
    (*(v23 + 16))(&v9[v20], v4 + v21, v22);
    (*(v23 + 56))(&v9[v20], 0, 1, v22);
    v9[v6[8]] = 0;
    *v9 = 0;
    v24 = &v9[v6[6]];
    *v24 = 0;
    v24[8] = 0x80;
    v25 = &v9[v6[7]];
    *v25 = v19;
    v25[1] = v18;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v26 = swift_allocError();
    sub_1AF4495B8(v9, v27, type metadata accessor for GraphError);
    v28 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v29 = v42;
    v30 = *(v42 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v29;
    *(v29 + v28) = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1AF420408(0, v30[2] + 1, 1, v30);
      v32 = v29;
      v30 = v37;
      *(v29 + v28) = v37;
    }

    v34 = v30[2];
    v33 = v30[3];
    if (v34 >= v33 >> 1)
    {
      v38 = v30;
      v39 = v32;
      v40 = sub_1AF420408(v33 > 1, v34 + 1, 1, v38);
      v32 = v39;
      v30 = v40;
    }

    v30[2] = v34 + 1;
    v30[v34 + 4] = v26;
    *(v32 + v28) = v30;
    swift_allocError();
    sub_1AF445CBC(v9, v35, type metadata accessor for GraphError);

    swift_willThrow();
  }
}

uint64_t sub_1AF3C7160(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v134 = a1;
  v4 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v132 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v132 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v132 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v132 - v22;
  v135 = v2;
  v24 = *(v2 + 16);
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);

  v136 = v25;
  if (sub_1AF3C567C(v26))
  {
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_1AFDFE218();

    v137 = 0x207475706E49;
    v138 = 0xE600000000000000;
    a2(v139, v27);
    v148 = v140;
    v28 = sub_1AF970A64(0, v140);
    v30 = v29;
    v147 = v139[0];
    v31 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v147, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v146 = v139[1];
    sub_1AF444058(&v146, &unk_1EB638968, &type metadata for TypeConstraint, v31, sub_1AF449B08);
    v145 = v139[2];
    sub_1AF444058(&v145, &unk_1EB638968, &type metadata for TypeConstraint, v31, sub_1AF449B08);
    sub_1AF44943C(&v148, sub_1AF445C2C);
    v144 = v141;
    sub_1AF44943C(&v144, sub_1AF445C2C);
    v143 = v142;
    sub_1AF444058(&v143, &unk_1EB638978, &type metadata for AnyValue, v31, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v28, v30);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v32 = v137;
    v33 = v138;
    v34 = v4[5];
    v35 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v36 = sub_1AFDFC318();
    v37 = *(v36 - 8);
    (*(v37 + 16))(&v23[v34], v135 + v35, v36);
    (*(v37 + 56))(&v23[v34], 0, 1, v36);
    v23[v4[8]] = 0;
    *v23 = 0;
    v38 = &v23[v4[6]];
    *v38 = 0;
    v38[8] = 0x80;
    v39 = &v23[v4[7]];
    *v39 = v32;
    v39[1] = v33;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v133 = swift_allocError();
    sub_1AF4495B8(v23, v40, type metadata accessor for GraphError);
    v41 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v42 = v134;
    v43 = *(v134 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v135 = v33;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v41) = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1AF420408(0, v43[2] + 1, 1, v43);
      *(v42 + v41) = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1AF420408(v45 > 1, v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v43[v46 + 4] = v133;
    *(v42 + v41) = v43;
    swift_allocError();
    sub_1AF445CBC(v23, v47, type metadata accessor for GraphError);

    goto LABEL_30;
  }

  v132 = v11;
  v133 = v7;
  v48 = v4;
  v49 = v135;

  v50 = sub_1AF9A2230(1, 0);

  if ((v50 & 0x100000000) != 0 || v50 < 1)
  {
    v73 = v4;
    v74 = v4[5];
    v75 = v49;
    v76 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v77 = sub_1AFDFC318();
    v78 = *(v77 - 8);
    (*(v78 + 16))(&v19[v74], v75 + v76, v77);
    (*(v78 + 56))(&v19[v74], 0, 1, v77);
    v19[v73[8]] = 0;
    *v19 = 0;
    v79 = &v19[v73[6]];
    *v79 = 1;
    v79[8] = 0x80;
    v80 = &v19[v73[7]];
    *v80 = 0xD000000000000023;
    *(v80 + 1) = 0x80000001AFF28040;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v81 = swift_allocError();
    sub_1AF4495B8(v19, v82, type metadata accessor for GraphError);
    v83 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v84 = v134;
    v85 = *(v134 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + v83) = v85;
    if (v86)
    {
      v87 = v84;
    }

    else
    {
      v124 = sub_1AF420408(0, v85[2] + 1, 1, v85);
      v87 = v134;
      v85 = v124;
      *(v134 + v83) = v124;
    }

    v89 = v85[2];
    v88 = v85[3];
    if (v89 >= v88 >> 1)
    {
      v125 = sub_1AF420408(v88 > 1, v89 + 1, 1, v85);
      v87 = v134;
      v85 = v125;
    }

    v85[2] = v89 + 1;
    v85[v89 + 4] = v81;
    *(v87 + v83) = v85;
    goto LABEL_23;
  }

  v51 = sub_1AF9A2230(1, 0);

  if ((v51 & 0x100000001) != 1)
  {
    v90 = v4[5];
    v91 = v49;
    v92 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v93 = sub_1AFDFC318();
    v94 = *(v93 - 8);
    v95 = v15;
    (*(v94 + 16))(v15 + v90, v91 + v92, v93);
    (*(v94 + 56))(v15 + v90, 0, 1, v93);
    *(v15 + v4[8]) = 0;
    *v15 = 0;
    v96 = v15 + v4[6];
    *v96 = 1;
    v96[8] = 0x80;
    v97 = (v15 + v4[7]);
    *v97 = 0xD000000000000018;
    v97[1] = 0x80000001AFF280C0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v98 = swift_allocError();
    sub_1AF4495B8(v15, v99, type metadata accessor for GraphError);
    v100 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v101 = v134;
    v102 = *(v134 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *(v101 + v100) = v102;
    if (v103)
    {
      v104 = v101;
    }

    else
    {
      v126 = sub_1AF420408(0, v102[2] + 1, 1, v102);
      v104 = v134;
      v102 = v126;
      *(v134 + v100) = v126;
    }

    v106 = v102[2];
    v105 = v102[3];
    if (v106 >= v105 >> 1)
    {
      v127 = sub_1AF420408(v105 > 1, v106 + 1, 1, v102);
      v104 = v134;
      v102 = v127;
    }

    v102[2] = v106 + 1;
    v102[v106 + 4] = v98;
    *(v104 + v100) = v102;
    swift_allocError();
    v72 = v95;
    goto LABEL_29;
  }

  v52 = sub_1AF9A2230(1, 0);

  if ((v52 & 0x100000000) != 0 || v52 < 1)
  {
    v133 = 0x80000001AFF28070;
    v108 = v48[5];
    v109 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v110 = sub_1AFDFC318();
    v111 = *(v110 - 8);
    v19 = v132;
    (*(v111 + 16))(&v132[v108], v49 + v109, v110);
    (*(v111 + 56))(&v19[v108], 0, 1, v110);
    v19[v48[8]] = 0;
    *v19 = 0;
    v112 = &v19[v48[6]];
    *v112 = 2;
    v112[8] = 0x80;
    v113 = &v19[v48[7]];
    v114 = v133;
    *v113 = 0xD000000000000024;
    *(v113 + 1) = v114;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v115 = swift_allocError();
    sub_1AF4495B8(v19, v116, type metadata accessor for GraphError);
    v117 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v118 = v134;
    v119 = *(v134 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    *(v118 + v117) = v119;
    if (v120)
    {
      v121 = v118;
    }

    else
    {
      v128 = sub_1AF420408(0, v119[2] + 1, 1, v119);
      v121 = v134;
      v119 = v128;
      *(v134 + v117) = v128;
    }

    v123 = v119[2];
    v122 = v119[3];
    if (v123 >= v122 >> 1)
    {
      v129 = sub_1AF420408(v122 > 1, v123 + 1, 1, v119);
      v121 = v134;
      v119 = v129;
    }

    v119[2] = v123 + 1;
    v119[v123 + 4] = v115;
    *(v121 + v117) = v119;
LABEL_23:
    swift_allocError();
    v72 = v19;
LABEL_29:
    sub_1AF445CBC(v72, v71, type metadata accessor for GraphError);
LABEL_30:
    swift_willThrow();
  }

  v53 = sub_1AF9A2230(1, 0);

  if ((v53 & 0x100000001) != 1)
  {
    v54 = v48;
    v55 = v48[5];
    v56 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v57 = sub_1AFDFC318();
    v58 = *(v57 - 8);
    v59 = v133;
    (*(v58 + 16))(v133 + v55, v49 + v56, v57);
    (*(v58 + 56))(&v59[v55], 0, 1, v57);
    v59[v54[8]] = 0;
    *v59 = 0;
    v60 = &v59[v54[6]];
    *v60 = 2;
    v60[8] = 0x80;
    v61 = &v59[v54[7]];
    *v61 = 0xD000000000000019;
    *(v61 + 1) = 0x80000001AFF280A0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v62 = swift_allocError();
    sub_1AF4495B8(v59, v63, type metadata accessor for GraphError);
    v64 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v65 = v134;
    v66 = *(v134 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + v64) = v66;
    if (v67)
    {
      v68 = v65;
    }

    else
    {
      v130 = sub_1AF420408(0, v66[2] + 1, 1, v66);
      v68 = v134;
      v66 = v130;
      *(v134 + v64) = v130;
    }

    v70 = v66[2];
    v69 = v66[3];
    if (v70 >= v69 >> 1)
    {
      v131 = sub_1AF420408(v69 > 1, v70 + 1, 1, v66);
      v68 = v134;
      v66 = v131;
    }

    v66[2] = v70 + 1;
    v66[v70 + 4] = v62;
    *(v68 + v64) = v66;
    swift_allocError();
    v72 = v133;
    goto LABEL_29;
  }
}

uint64_t sub_1AF3C7F8C(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v149 = a1;
  v4 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v145 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v145 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v145 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v145 - v22;
  v150 = v2;
  v24 = *(v2 + 16);
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);

  v151 = v25;
  if (sub_1AF3C567C(v26))
  {
    v152 = 0;
    v153 = 0xE000000000000000;
    sub_1AFDFE218();

    v152 = 0x207475706E49;
    v153 = 0xE600000000000000;
    a2(v154, v27);
    v163 = v155;
    v28 = sub_1AF970A64(0, v155);
    v30 = v29;
    v162 = v154[0];
    v31 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v162, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v161 = v154[1];
    sub_1AF444058(&v161, &unk_1EB638968, &type metadata for TypeConstraint, v31, sub_1AF449B08);
    v160 = v154[2];
    sub_1AF444058(&v160, &unk_1EB638968, &type metadata for TypeConstraint, v31, sub_1AF449B08);
    sub_1AF44943C(&v163, sub_1AF445C2C);
    v159 = v156;
    sub_1AF44943C(&v159, sub_1AF445C2C);
    v158 = v157;
    sub_1AF444058(&v158, &unk_1EB638978, &type metadata for AnyValue, v31, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v28, v30);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v32 = v152;
    v33 = v153;
    v34 = v4[5];
    v35 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v36 = sub_1AFDFC318();
    v37 = *(v36 - 8);
    (*(v37 + 16))(&v23[v34], v150 + v35, v36);
    (*(v37 + 56))(&v23[v34], 0, 1, v36);
    v23[v4[8]] = 0;
    *v23 = 0;
    v38 = &v23[v4[6]];
    *v38 = 0;
    v38[8] = 0x80;
    v39 = &v23[v4[7]];
    *v39 = v32;
    v39[1] = v33;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v148 = swift_allocError();
    sub_1AF4495B8(v23, v40, type metadata accessor for GraphError);
    v41 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v42 = v149;
    v43 = *(v149 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v150 = v33;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v41) = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1AF420408(0, v43[2] + 1, 1, v43);
      *(v42 + v41) = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1AF420408(v45 > 1, v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v43[v46 + 4] = v148;
    *(v42 + v41) = v43;
    swift_allocError();
    sub_1AF445CBC(v23, v47, type metadata accessor for GraphError);

    goto LABEL_22;
  }

  v147 = v11;
  v148 = v15;
  v146 = v7;
  v48 = v4;
  v49 = v150;

  v50 = sub_1AF9A8AD0();
  v52 = v51;

  if (!v52 || (, v50 <= 0))
  {
    v76 = v48;
    v77 = v48[5];
    v78 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v79 = sub_1AFDFC318();
    v80 = v49;
    v81 = v79;
    v82 = *(v79 - 8);
    (*(v82 + 16))(&v19[v77], v80 + v78, v79);
    (*(v82 + 56))(&v19[v77], 0, 1, v81);
    v19[v76[8]] = 0;
    *v19 = 0;
    v83 = &v19[v76[6]];
    *v83 = 1;
    v83[8] = 0x80;
    v84 = &v19[v76[7]];
    *v84 = 0xD000000000000023;
    *(v84 + 1) = 0x80000001AFF28040;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v85 = swift_allocError();
    sub_1AF4495B8(v19, v86, type metadata accessor for GraphError);
    v87 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v88 = v149;
    v89 = *(v149 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *(v88 + v87) = v89;
    if (v90)
    {
      v91 = v88;
    }

    else
    {
      v137 = sub_1AF420408(0, v89[2] + 1, 1, v89);
      v91 = v149;
      v89 = v137;
      *(v149 + v87) = v137;
    }

    v93 = v89[2];
    v92 = v89[3];
    if (v93 >= v92 >> 1)
    {
      v138 = sub_1AF420408(v92 > 1, v93 + 1, 1, v89);
      v91 = v149;
      v89 = v138;
    }

    v89[2] = v93 + 1;
    v89[v93 + 4] = v85;
    *(v91 + v87) = v89;
    swift_allocError();
    v75 = v19;
    goto LABEL_21;
  }

  v53 = sub_1AF9A8AD0();
  v55 = v54;

  if (!v55 || (, (v53 & 1) == 0))
  {
    v56 = v49;
    v57 = v48;
    v58 = v48[5];
    v59 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v60 = sub_1AFDFC318();
    v61 = *(v60 - 8);
    v62 = v148;
    (*(v61 + 16))(v148 + v58, v56 + v59, v60);
    (*(v61 + 56))(&v62[v58], 0, 1, v60);
    v62[v57[8]] = 0;
    *v62 = 0;
    v63 = &v62[v57[6]];
    *v63 = 1;
    v63[8] = 0x80;
    v64 = &v62[v57[7]];
    *v64 = 0xD000000000000018;
    *(v64 + 1) = 0x80000001AFF280C0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v65 = swift_allocError();
    sub_1AF4495B8(v62, v66, type metadata accessor for GraphError);
    v67 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v68 = v149;
    v69 = *(v149 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *(v68 + v67) = v69;
    if (v70)
    {
      v71 = v68;
    }

    else
    {
      v139 = sub_1AF420408(0, v69[2] + 1, 1, v69);
      v71 = v149;
      v69 = v139;
      *(v149 + v67) = v139;
    }

    v73 = v69[2];
    v72 = v69[3];
    if (v73 >= v72 >> 1)
    {
      v140 = sub_1AF420408(v72 > 1, v73 + 1, 1, v69);
      v71 = v149;
      v69 = v140;
    }

    v69[2] = v73 + 1;
    v69[v73 + 4] = v65;
    *(v71 + v67) = v69;
    swift_allocError();
    v75 = v62;
LABEL_21:
    sub_1AF445CBC(v75, v74, type metadata accessor for GraphError);
LABEL_22:
    swift_willThrow();
  }

  v95 = v49;

  sub_1AF9A8AD0();
  v97 = v96;
  v99 = v98;

  if (!v99 || (, v97 <= 0))
  {
    v120 = v48[5];
    v121 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v122 = sub_1AFDFC318();
    v123 = *(v122 - 8);
    v124 = v95 + v121;
    v125 = v147;
    (*(v123 + 16))(&v147[v120], v124, v122);
    (*(v123 + 56))(&v125[v120], 0, 1, v122);
    v125[v48[8]] = 0;
    *v125 = 0;
    v126 = &v125[v48[6]];
    *v126 = 1;
    v126[8] = 0x80;
    v127 = &v125[v48[7]];
    *v127 = 0xD000000000000024;
    *(v127 + 1) = 0x80000001AFF28070;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v128 = swift_allocError();
    sub_1AF4495B8(v125, v129, type metadata accessor for GraphError);
    v130 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v131 = v149;
    v132 = *(v149 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    *(v131 + v130) = v132;
    if (v133)
    {
      v134 = v131;
    }

    else
    {
      v141 = sub_1AF420408(0, v132[2] + 1, 1, v132);
      v134 = v149;
      v132 = v141;
      *(v149 + v130) = v141;
    }

    v136 = v132[2];
    v135 = v132[3];
    if (v136 >= v135 >> 1)
    {
      v142 = sub_1AF420408(v135 > 1, v136 + 1, 1, v132);
      v134 = v149;
      v132 = v142;
    }

    v132[2] = v136 + 1;
    v132[v136 + 4] = v128;
    *(v134 + v130) = v132;
    swift_allocError();
    v75 = v125;
    goto LABEL_21;
  }

  sub_1AF9A8AD0();
  v101 = v100;
  v103 = v102;

  if (!v103 || (, (v101 & 1) == 0))
  {
    v104 = v48[5];
    v105 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v106 = sub_1AFDFC318();
    v107 = *(v106 - 8);
    v108 = v146;
    (*(v107 + 16))(&v146[v104], v95 + v105, v106);
    (*(v107 + 56))(&v108[v104], 0, 1, v106);
    v108[v48[8]] = 0;
    *v108 = 0;
    v109 = &v108[v48[6]];
    *v109 = 1;
    v109[8] = 0x80;
    v110 = &v108[v48[7]];
    *v110 = 0xD000000000000019;
    *(v110 + 1) = 0x80000001AFF280A0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError);
    v111 = swift_allocError();
    sub_1AF4495B8(v108, v112, type metadata accessor for GraphError);
    v113 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v114 = v149;
    v115 = *(v149 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    *(v114 + v113) = v115;
    if (v116)
    {
      v117 = v114;
    }

    else
    {
      v143 = sub_1AF420408(0, v115[2] + 1, 1, v115);
      v117 = v149;
      v115 = v143;
      *(v149 + v113) = v143;
    }

    v119 = v115[2];
    v118 = v115[3];
    if (v119 >= v118 >> 1)
    {
      v144 = sub_1AF420408(v118 > 1, v119 + 1, 1, v115);
      v117 = v149;
      v115 = v144;
    }

    v115[2] = v119 + 1;
    v115[v119 + 4] = v111;
    *(v117 + v113) = v115;
    swift_allocError();
    v75 = v146;
    goto LABEL_21;
  }
}

void sub_1AF3C8DE4(uint64_t a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = *(a2 + 80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *(*(a4 + 16) + 40);
  v10 = a3[5];
  v36 = a3[4];
  v37 = v10;
  v11 = a3[7];
  v38 = a3[6];
  v39 = v11;
  v12 = a3[1];
  v32 = *a3;
  v33 = v12;
  v13 = a3[3];
  v34 = a3[2];
  v35 = v13;
  v14 = (&v32 + v9);
  v15 = *v14;
  v16 = v14[1];
  if (RGResourceIsNull(v16) || RGPassIsNull(v15))
  {
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {

    v17 = sub_1AF9A8AD0();
    v19 = v18;

    if (v19)
    {
    }

    else
    {
      v17 = 0;
    }

    sub_1AF9A8AD0();
    v21 = v20;
    v23 = v22;

    if (v23)
    {
    }

    else
    {
      v21 = 0;
    }

    sub_1AF24F318(v28, Strong, "Erode", v16, 3, v17, v21, v30, a1);

    sub_1AF448404(v30);
    v38 = v30[6];
    v39 = v30[7];
    v40 = v31;
    v34 = v30[2];
    v35 = v30[3];
    v36 = v30[4];
    v37 = v30[5];
    v32 = v30[0];
    v33 = v30[1];
    nullsub_106();
    v24 = v39;
    *(a5 + 96) = v38;
    *(a5 + 112) = v24;
    *(a5 + 128) = v40;
    v25 = v35;
    *(a5 + 32) = v34;
    *(a5 + 48) = v25;
    v26 = v37;
    *(a5 + 64) = v36;
    *(a5 + 80) = v26;
    v27 = v33;
    *a5 = v32;
    *(a5 + 16) = v27;
  }
}

uint64_t sub_1AF3C9078(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Name)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C9170(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Parent)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9244@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for WorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

unint64_t sub_1AF3C9330@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for InverseWorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1AF3C941C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x2000000;
  }

  result = 0x2000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureLoadPolicy)
        {
          v13 = (*(v11 - 2) + 4 * v6 + *(v7 + 128));
          v14 = *(v13 + 3);
          v15 = *v13 | (*(v13 + 2) << 16);
          if (v14)
          {
            v16 = 0x1000000;
          }

          else
          {
            v16 = 0;
          }

          return v15 | v16;
        }
      }

      return 0x2000000;
    }
  }

  return result;
}

unint64_t sub_1AF3C94FC@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for TextureCPURuntime)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v12 = v11[3];
          v14 = *v11;
          v13 = v11[1];
          v18[2] = v11[2];
          v18[3] = v12;
          v18[0] = v14;
          v18[1] = v13;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          v16 = v11[3];
          a2[2] = v11[2];
          a2[3] = v16;
          return sub_1AF44222C(v18, &v17);
        }
      }
    }
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_1AF3C9600(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Seed)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

uint64_t sub_1AF3C96D8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for MetalScriptReflection)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C97D8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) != 0xFFFFFFFF && v4[2] != HIDWORD(a1))
    {
      return 1;
    }

    v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    result = 1;
    while (--v7)
    {
      v8 = *v6;
      v6 += 5;
      if (v8 == &type metadata for TextureGPURuntime)
      {
        swift_unknownObjectRetain();
        return swift_unknownObjectRetain();
      }
    }
  }

  return result;
}

uint64_t sub_1AF3C98DC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 512;
  }

  result = 512;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for RenderGraphTextureTarget)
        {
          v13 = *(v11 - 2) + 2 * v6 + *(v7 + 128);
          v14 = *v13;
          if (v13[1])
          {
            v15 = 256;
          }

          else
          {
            v15 = 0;
          }

          return v15 | v14;
        }
      }

      return 512;
    }
  }

  return result;
}

unint64_t sub_1AF3C99B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for LocalAABB)
        {
          v7 = 0;
          v16 = (&(*(v14 - 2))[2 * v9].Kind + *(v10 + 128));
          v3 = *v16;
          v4 = v16[1];
          v5 = v16[2];
          v6 = v16[3];
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1AF3C9AB8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for ProjectionMatrix)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1AF3C9BA4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for Children)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9C7C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Opacity)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3C9D58(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scale3)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9E44(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Scale1)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3C9F20(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scale2)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C9FF4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Position)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA0E0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Orientation)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CA1CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterDescription)
        {
          v11 = *(v9 - 2) + 104 * v4 + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          v24 = *(v11 + 96);
          v23[4] = v15;
          v23[5] = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 96) = *(v11 + 96);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF445DA0(v23, v22);
        }
      }
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_1AF3CA308(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for IBLGenerator)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3CA3E4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for MeshModel)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA4E8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ModelRenderer)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA5D4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for IBLRuntime)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

void sub_1AF3CA6C0(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v12 = *(v11 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v11[2] == HIDWORD(a1))
    {
      v13 = *(*(v2 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for MaterialRuntime)
        {
          v19 = (&(*(v17 - 2))[15 * v12].Kind + *(v13 + 128));
          v21 = v19[1];
          v20 = v19[2];
          v39[0] = *v19;
          v39[1] = v21;
          v39[2] = v20;
          v22 = v19[6];
          v24 = v19[3];
          v23 = v19[4];
          v39[5] = v19[5];
          v39[6] = v22;
          v39[3] = v24;
          v39[4] = v23;
          v25 = v19[10];
          v27 = v19[7];
          v26 = v19[8];
          v39[9] = v19[9];
          v39[10] = v25;
          v39[7] = v27;
          v39[8] = v26;
          v28 = v19[14];
          v30 = v19[11];
          v29 = v19[12];
          v39[13] = v19[13];
          v39[14] = v28;
          v39[11] = v30;
          v39[12] = v29;
          memmove(&__dst, v19, 0xF0uLL);
          nullsub_106();
          v31 = v53;
          a2[12] = v52;
          a2[13] = v31;
          a2[14] = v54;
          v32 = v49;
          a2[8] = v48;
          a2[9] = v32;
          v33 = v51;
          a2[10] = v50;
          a2[11] = v33;
          v34 = v45;
          a2[4] = v44;
          a2[5] = v34;
          v35 = v47;
          a2[6] = v46;
          a2[7] = v35;
          v36 = v41;
          *a2 = __dst;
          a2[1] = v36;
          v37 = v43;
          a2[2] = v42;
          a2[3] = v37;
          sub_1AF442498(v39, &v38);
          return;
        }
      }
    }
  }

  sub_1AF442470(&__dst);
  v4 = v53;
  a2[12] = v52;
  a2[13] = v4;
  a2[14] = v54;
  v5 = v49;
  a2[8] = v48;
  a2[9] = v5;
  v6 = v51;
  a2[10] = v50;
  a2[11] = v6;
  v7 = v45;
  a2[4] = v44;
  a2[5] = v7;
  v8 = v47;
  a2[6] = v46;
  a2[7] = v8;
  v9 = v41;
  *a2 = __dst;
  a2[1] = v9;
  v10 = v43;
  a2[2] = v42;
  a2[3] = v10;
}

__n128 sub_1AF3CA934@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for CameraBloom)
        {
          v12 = &(*(v10 - 2))[4 * v5] + *(v6 + 128);
          v13 = *(v12 + 1);
          *a2 = *v12;
          *(a2 + 16) = v13;
          *(a2 + 32) = *(v12 + 2);
          result = *(v12 + 41);
          *(a2 + 41) = result;
          return result;
        }
      }
    }
  }

  *(a2 + 48) = 0;
  result.n128_u64[0] = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 2;
  return result;
}

uint64_t sub_1AF3CAA18(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for ScriptsHolder)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CAB74(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for CameraDepthOfField)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CAC48(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x300000000;
  }

  result = 0x300000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for CameraLensBlur)
        {
          v13 = (&(*(v11 - 2))[v6] + *(v7 + 128));
          return *v13 | (*(v13 + 4) << 32);
        }
      }

      return 0x300000000;
    }
  }

  return result;
}

uint64_t sub_1AF3CAD28(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for CameraVignetting)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CAE14@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for CameraColorGrading)
        {
          v12 = &(*(v10 - 2))[7 * v5] + *(v6 + 128);
          v13 = *(v12 + 80);
          *(a2 + 64) = *(v12 + 64);
          *(a2 + 80) = v13;
          *(a2 + 92) = *(v12 + 92);
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = result;
          *(a2 + 108) = 0;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 108) = 1;
  return result;
}

uint64_t sub_1AF3CAF2C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 4;
  }

  result = 4;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for CameraToneMapping)
        {
          return *(&(*(v11 - 2))->Kind + *(v7 + 128) + v6);
        }
      }

      return 4;
    }
  }

  return result;
}

unint64_t sub_1AF3CAFEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (result != 0xFFFFFFFF)
  {
    v4 = 1;
    if ((result & 0x80000000) != 0 || result >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      goto LABEL_3;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v7 = *(v6 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v6[2] == HIDWORD(result))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for RenderSettings)
        {
          v4 = 0;
          v14 = (&(*(v12 - 2))[2 * v7].Kind + *(v8 + 128));
          v3 = *v14;
          v5 = v14[1];
          goto LABEL_4;
        }
      }
    }
  }

  v4 = 1;
LABEL_3:
  v5 = 0uLL;
LABEL_4:
  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return result;
}

void sub_1AF3CB0C0(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterRuntime)
        {
          sub_1AF442324(&(*(v9 - 2))[53 * v4] + *(v5 + 128), a2);
          return;
        }
      }
    }
  }

  bzero(a2, 0x348uLL);
}

unint64_t sub_1AF3CB184@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Material)
        {
          v11 = *(v9 - 2) + 104 * v4 + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          v24 = *(v11 + 96);
          v23[4] = v15;
          v23[5] = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 96) = *(v11 + 96);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF4424F4(v23, v22);
        }
      }
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1AF3CB338(unint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v7 = a1;
    if (a1 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v8 = HIDWORD(a1);
      v9 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7);
      v10 = *(v9 + 2);
      if (v8 == 0xFFFFFFFF || v9[2] == v8)
      {
        v11 = *(*(v4 + 144) + 8 * *v9 + 32);
        v12 = *(v11 + 48);
        sub_1AF446CC4(0, a2, a3, a4, type metadata accessor for ScriptStateRestoration);
        v14 = (v12 + 32);
        v15 = *(v12 + 16) + 1;
        while (--v15)
        {
          v16 = v14 + 5;
          v17 = *v14;
          v14 += 5;
          if (v17 == v13)
          {
            v18 = *(*(v11 + 128) + *(v16 - 2) + 16 * v10);

            return v18;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1AF3CB570@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for GraphScriptingConfig)
        {
          v11 = (&(*(v9 - 2))[2 * v4] + *(v5 + 128));
          v12 = *(v11 + 1);
          v13 = *(v11 + 2);
          v14 = *(v11 + 24);
          v15 = *(v11 + 25);
          v16 = *(v11 + 26);
          v17 = *v11;
          if (v15)
          {
            v18 = 256;
          }

          else
          {
            v18 = 0;
          }

          *a2 = v17;
          *(a2 + 8) = v12;
          *(a2 + 16) = v13;
          *(a2 + 26) = v16 != 0;
          *(a2 + 24) = v18 | v14;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 23) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_1AF3CB6AC@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for GraphEntityComponentPropertyReferences)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v13 = v11[1];
          v12 = v11[2];
          v14 = *v11;
          *&v18[9] = *(v11 + 41);
          v17[1] = v13;
          *v18 = v12;
          v17[0] = v14;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          a2[2] = v11[2];
          *(a2 + 41) = *(v11 + 41);
          return sub_1AF43D794(v17, &v16);
        }
      }
    }
  }

  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1AF3CB7C4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for VFXTag)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CB8BC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for GraphComponent)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CB9BC@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for Skeleton)
      {
        v17 = (&(*(v15 - 2))->Kind + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v4 = v17[1];
        v5 = v17[2];
        v6 = v17[3];
        v7 = v17[4];

        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t sub_1AF3CBB44(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureRequireMipmap)
        {
          return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CBC2C@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for SceneFileAsset)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v12 = v11[3];
          v14 = *v11;
          v13 = v11[1];
          v18[2] = v11[2];
          v18[3] = v12;
          v18[0] = v14;
          v18[1] = v13;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          v16 = v11[3];
          a2[2] = v11[2];
          a2[3] = v16;
          return sub_1AF4402F0(v18, &v17);
        }
      }
    }
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

unint64_t sub_1AF3CBD30(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 5;
  }

  result = 5;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 5;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 5;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureRequireMask)
      {
        v13 = &(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128);
        return *v13 | (*(v13 + 1) << 32);
      }
    }
  }

  return result;
}

unint64_t sub_1AF3CBE00@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for LastFrameWorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

double sub_1AF3CBEEC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v12 = *(v11 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v11[2] == HIDWORD(a1))
    {
      v13 = *(*(v2 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for EmitterShape)
        {
          memmove(v19, &(*(v17 - 2))[14 * v12] + *(v13 + 128), 0xD1uLL);
          nullsub_106();
          goto LABEL_3;
        }
      }
    }
  }

  sub_1AF442288(v19);
LABEL_3:
  v4 = v19[11];
  *(a2 + 160) = v19[10];
  *(a2 + 176) = v4;
  *(a2 + 192) = v19[12];
  *(a2 + 208) = v20;
  v5 = v19[7];
  *(a2 + 96) = v19[6];
  *(a2 + 112) = v5;
  v6 = v19[9];
  *(a2 + 128) = v19[8];
  *(a2 + 144) = v6;
  v7 = v19[3];
  *(a2 + 32) = v19[2];
  *(a2 + 48) = v7;
  v8 = v19[5];
  *(a2 + 64) = v19[4];
  *(a2 + 80) = v8;
  result = *v19;
  v10 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1AF3CC024(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngleInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC0F8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngleVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC1CC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngularVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CC2D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorInit)
        {
          v11 = &(*(v9 - 2))[5 * v4] + *(v5 + 128);
          v20[0] = *v11;
          v13 = *(v11 + 32);
          v12 = *(v11 + 48);
          v14 = *(v11 + 16);
          v21 = *(v11 + 64);
          v20[2] = v13;
          v20[3] = v12;
          v20[1] = v14;
          v15 = *v11;
          v16 = *(v11 + 16);
          v17 = *(v11 + 32);
          v18 = *(v11 + 48);
          *(a2 + 64) = *(v11 + 64);
          *(a2 + 32) = v17;
          *(a2 + 48) = v18;
          *a2 = v15;
          *(a2 + 16) = v16;
          return sub_1AF4422C8(v20, &v19);
        }
      }
    }
  }

  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_1AF3CC3F4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleGrowEmitter)
        {
          v12 = &(*(v10 - 2))[4 * v5] + *(v6 + 128);
          v13 = *(v12 + 1);
          v14 = *(v12 + 10);
          v15 = *(v12 + 6);
          v16 = *(v12 + 14);
          *a2 = *v12;
          *(a2 + 16) = v13;
          result = *(v12 + 4);
          *(a2 + 32) = result;
          *(a2 + 40) = v14;
          *(a2 + 48) = v15;
          *(a2 + 56) = v16;
          return result;
        }
      }
    }
  }

  *a2 = 3;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1AF3CC4F4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleLifeInit)
      {
        return *(&(*(v11 - 2))->Kind + 12 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC5D0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleMassInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC6A4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleOrientationInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC7A8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticlePivotInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CC8AC@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleSizeInit)
        {
          v11 = *(v9 - 2) + 28 * v4 + *(v5 + 128);
          v12 = *(v11 + 6);
          *a2 = *v11 | (*(v11 + 1) << 32);
          result = *(v11 + 8);
          *(a2 + 8) = result;
          *(a2 + 24) = v12;
          return result;
        }
      }
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 3;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1AF3CC994(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleTargetFromPositionInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCA98(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleTextureFrameInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCB6C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCC68(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureRequireAnimationRepresentation)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CCD70@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for WorldAABB)
        {
          v7 = 0;
          v16 = (&(*(v14 - 2))[2 * v9].Kind + *(v10 + 128));
          v3 = *v16;
          v4 = v16[1];
          v5 = v16[2];
          v6 = v16[3];
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_1AF3CCE74(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v10 = *(v9 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v9[2] == HIDWORD(a1))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 5;
        v16 = *v13;
        v13 += 5;
        if (v16 == &type metadata for PrimitiveGenerator)
        {
          v17 = (&(*(v15 - 2))[11 * v10].Kind + *(v11 + 128));
          v19 = v17[1];
          v18 = v17[2];
          v32[0] = *v17;
          v32[1] = v19;
          v32[2] = v18;
          v20 = v17[6];
          v22 = v17[3];
          v21 = v17[4];
          v32[5] = v17[5];
          v32[6] = v20;
          v32[3] = v22;
          v32[4] = v21;
          v24 = v17[8];
          v23 = v17[9];
          v25 = v17[7];
          *(v33 + 9) = *(v17 + 153);
          v32[8] = v24;
          v33[0] = v23;
          v32[7] = v25;
          memmove(&__dst, v17, 0xA9uLL);
          nullsub_106();
          v26 = v43[0];
          a2[8] = v42;
          a2[9] = v26;
          *(a2 + 153) = *(v43 + 9);
          v27 = v39;
          a2[4] = v38;
          a2[5] = v27;
          v28 = v41;
          a2[6] = v40;
          a2[7] = v28;
          v29 = v35;
          *a2 = __dst;
          a2[1] = v29;
          v30 = v37;
          a2[2] = v36;
          a2[3] = v30;
          sub_1AF445D44(v32, &v31);
          return;
        }
      }
    }
  }

  sub_1AF445D24(&__dst);
  v4 = v43[0];
  a2[8] = v42;
  a2[9] = v4;
  *(a2 + 153) = *(v43 + 9);
  v5 = v39;
  a2[4] = v38;
  a2[5] = v5;
  v6 = v41;
  a2[6] = v40;
  a2[7] = v6;
  v7 = v35;
  *a2 = __dst;
  a2[1] = v7;
  v8 = v37;
  a2[2] = v36;
  a2[3] = v8;
}

uint64_t sub_1AF3CD020(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for MaterialRuntimeTable)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CD0F8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleSpawnID)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CD1CC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for RenderingOrder)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3CD2A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleLocalBoxCollider)
        {
          v16 = &(*(v14 - 2))[3 * v10] + *(v11 + 128);
          v3 = *v16;
          v4 = *(v16 + 8);
          v5 = *(v16 + 16);
          v6 = *(v16 + 24);
          v7 = *(v16 + 32);
          v8 = *(v16 + 40);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

unint64_t sub_1AF3CD3CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  v6 = 1;
  if ((result & 0x80000000) != 0 || result >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = 0;
    goto LABEL_13;
  }

  v7 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
  v8 = *(v7 + 2);
  if (HIDWORD(result) == 0xFFFFFFFF || v7[2] == HIDWORD(result))
  {
    v9 = a2;
    v10 = *(*(v2 + 144) + 8 * *v7 + 32);
    v11 = *(v10 + 48);
    v12 = (v11 + 32);
    v13 = *(v11 + 16) + 1;
    v6 = 1;
    while (--v13)
    {
      v14 = v12 + 5;
      v15 = *v12;
      v12 += 5;
      if (v15 == &type metadata for SDFRuntimeData)
      {
        v16 = *(v14 - 2) + 40 * v8 + *(v10 + 128);
        v17 = *v16;
        v4 = *(v16 + 16);
        v6 = *(v16 + 24);
        v5 = *(v16 + 32);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRetain();
        v3 = v17;
        a2 = v9;
        goto LABEL_13;
      }
    }

    v4 = 0;
    v5 = 0;
    a2 = v9;
  }

  else
  {
LABEL_2:
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

LABEL_13:
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1AF3CD518(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleCollide)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CD61C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Attach)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CD6F4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for DistanceConstraint)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3CD7D0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 2;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 2;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for OrientationConstraint)
      {
        v13 = &(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128);
        return *v13 | (*(v13 + 1) << 32);
      }
    }
  }

  return result;
}

uint64_t sub_1AF3CD8A0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for OrientationOverVelocity)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CD978@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v6 = 0;
  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    v7 = 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleAngleEvolution)
      {
        v17 = (*(v15 - 2) + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v7 = *(v17 + 1);
        v4 = *(v17 + 2);
        v5 = *(v17 + 3);
        v6 = *(v17 + 32);
        result = sub_1AF442550(v7);
        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1AF3CDAE8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverLife)
        {
          v11 = *(v9 - 2) + 40 * v4 + *(v5 + 128);
          v12 = *(v11 + 32);
          v13 = *(v11 + 16);
          v15[0] = *v11;
          v15[1] = v13;
          v16 = v12;
          *a2 = v15[0];
          *(a2 + 16) = v13;
          *(a2 + 32) = v12;
          return sub_1AF4425A0(v15, v14);
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_1AF3CDBEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverPosition)
        {
          v11 = (*(v9 - 2) + 40 * v4 + *(v5 + 128));
          v12 = *(v11 + 2);
          v13 = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 32);
          *a2 = *v11 | (*(v11 + 4) << 32);
          *(a2 + 8) = v12;
          *(a2 + 16) = v13;
          *(a2 + 24) = v14;
          *(a2 + 32) = v15;
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

__n128 sub_1AF3CDD0C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleColorOverTexture)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  *a2 = 4;
  result.n128_u64[0] = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

unint64_t sub_1AF3CDDF4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverVelocity)
        {
          v11 = *(v9 - 2) + 40 * v4 + *(v5 + 128);
          v13 = *(v11 + 1);
          v12 = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = v11[32];
          *a2 = *v11 | (*(v11 + 1) << 32);
          *(a2 + 8) = v13;
          *(a2 + 16) = v12;
          *(a2 + 24) = v14;
          *(a2 + 32) = v15;
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1AF3CDF14(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleCopyData)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CE018(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleDrag)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

uint64_t sub_1AF3CE0F0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleForce)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CE1DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleNoise)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v17 = v16[8];
          v18 = *(v16 + 36);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
          v6 = v17 | (v18 << 32);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

unint64_t sub_1AF3CE308@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v8 = 0;
  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v9[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_3;
    }

    v11 = a2;
    v12 = *(*(v2 + 144) + 8 * *v9 + 32);
    v13 = *(v12 + 48);
    v14 = (v13 + 32);
    v15 = *(v13 + 16) + 1;
    while (--v15)
    {
      v16 = v14 + 5;
      v17 = *v14;
      v14 += 5;
      if (v17 == &type metadata for ParticleOpacityEvolution)
      {
        v18 = &(*(v16 - 2))[3 * v10] + *(v12 + 128);
        v3 = *v18;
        v4 = *(v18 + 8);
        v5 = *(v18 + 16);
        v6 = *(v18 + 24);
        v7 = *(v18 + 32);
        v8 = *(v18 + 40);

        a2 = v11;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    a2 = v11;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1AF3CE498(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleOpacityOverLife)
        {
          v13 = *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CE5D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v7 = 0;
  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleOpacityOverVelocity)
      {
        v17 = *(v15 - 2) + 40 * v9 + *(v11 + 128);
        v3 = *v17;
        v4 = *(v17 + 8);
        v5 = *(v17 + 16);
        v7 = *(v17 + 32);
        v6 = *(v17 + 24) | (*(v17 + 28) << 32);

        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1AF3CE74C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticlePositionOverTexture)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C3F0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  return result;
}

unint64_t sub_1AF3CE834@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleSizeOverLife)
        {
          v11 = (&(*(v9 - 2))[7 * v4].Kind + *(v5 + 128));
          v13 = v11[1];
          v12 = v11[2];
          v22[0] = *v11;
          v22[1] = v13;
          v22[2] = v12;
          v15 = v11[4];
          v14 = v11[5];
          v16 = v11[3];
          *&v23[9] = *(v11 + 89);
          v22[4] = v15;
          *v23 = v14;
          v22[3] = v16;
          v17 = v11[1];
          *a2 = *v11;
          a2[1] = v17;
          v18 = v11[2];
          v19 = v11[3];
          *(a2 + 89) = *(v11 + 89);
          v20 = v11[5];
          a2[4] = v11[4];
          a2[5] = v20;
          a2[2] = v18;
          a2[3] = v19;
          return sub_1AF4425FC(v22, &v21);
        }
      }
    }
  }

  *(a2 + 89) = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

__n128 sub_1AF3CE96C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleSizeOverTexture)
        {
          v12 = *(v10 - 2) + 72 * v5 + *(v6 + 128);
          v13 = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = v13;
          *(a2 + 64) = *(v12 + 64);
          result = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = result;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0x300000000;
  result.n128_u64[0] = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 52) = 0u;
  return result;
}

__n128 sub_1AF3CEA58@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleSizeOverVelocity)
        {
          v12 = *(v10 - 2) + 44 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C400;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AF3CEB40(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleSPHSimulation)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CEC2C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v6 = 0;
  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    v7 = 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleTextureFrameEvolution)
      {
        v17 = (*(v15 - 2) + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v7 = *(v17 + 1);
        v4 = *(v17 + 2);
        v5 = *(v17 + 3);
        v6 = *(v17 + 32);
        result = sub_1AF442550(v7);
        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

__n128 sub_1AF3CED9C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ProjectorParameters)
        {
          v12 = *(v10 - 2) + 36 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          result = *v12;
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          *(a2 + 32) = v13;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C410;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

__n128 sub_1AF3CEE78@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for PerspectiveCamera)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v14 = *(v12 + 32);
          v13 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v14;
          *(a2 + 40) = v13;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AF3CEF50(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for OrthographicCamera)
        {
          v13 = (*(v11 - 2) + 20 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4);
          v16 = 0x100000000;
          if (!v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CF050@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v5 = *(v4 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v4[2] == HIDWORD(result))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for WrapAroundCamera)
        {
          v12 = *(v10 - 2) + 40 * v5 + *(v6 + 128);
          v3 = *(v12 + 32) | (*(v12 + 36) << 32);
          v13 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v13;
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 36) = BYTE4(v3);
  return result;
}

uint64_t sub_1AF3CF188@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v11 = HIDWORD(a1);
  sub_1AF446CC4(0, a2, a3, a4, type metadata accessor for ScriptRuntime);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = v14[8];
  if (v15)
  {
    v15 = v14[9];
  }

  if ((v11 || v9 != -1) && (v9 & 0x80000000) == 0 && v9 < *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v20 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9);
    v21 = *(v20 + 2);
    if (v11 == 0xFFFFFFFF || v20[2] == v11)
    {
      v28 = *(v12 - 8);
      v22 = *(*(v5 + 144) + 8 * *v20 + 32);
      v23 = *(v22 + 48);
      v24 = (v23 + 32);
      v25 = *(v23 + 16) + 1;
      while (--v25)
      {
        v26 = v24 + 5;
        v27 = *v24;
        v24 += 5;
        if (v27 == v12)
        {
          sub_1AF43D9FC(*(v22 + 128) + *(v26 - 2) + v15 * v21, a5, a2, a3, a4);
          v16 = *(v28 + 56);
          v17 = a5;
          v18 = 0;
          goto LABEL_6;
        }
      }
    }
  }

  v16 = v14[7];
  v17 = a5;
  v18 = 1;
LABEL_6:

  return v16(v17, v18, 1, v13);
}

unint64_t sub_1AF3CF3A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v7 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v4 = *(v11 + 16) + 1;
      while (--v4)
      {
        v13 = v12 + 5;
        v14 = *v12;
        v12 += 5;
        if (v14 == &type metadata for NeighborGrid)
        {
          v15 = (&(*(v13 - 2))[3 * v9] + *(v10 + 128));
          v3 = *v15;
          v4 = *(v15 + 1);
          v5 = *(v15 + 2);
          v6 = *(v15 + 3);
          v7 = *(v15 + 32);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1AF3CF4B8@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleForceField)
        {
          v12 = *(v10 - 2) + 44 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          *(a2 + 44) = 0;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *(a2 + 28) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 44) = 1;
  return result;
}

unint64_t sub_1AF3CF5A0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = xmmword_1AFE4C410;
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  if ((result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v6 = *(v5 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v5[2] == HIDWORD(result))
    {
      v7 = *(*(v2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSubSpawn)
        {
          v13 = *(v11 - 2) + 24 * v6 + *(v7 + 128);
          v3 = *v13;
          v4 = *(v13 + 16) | (*(v13 + 20) << 32);
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 20) = BYTE4(v4);
  return result;
}

uint64_t sub_1AF3CF688(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scheduling)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CF75C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for PointCacheRuntime)
        {
          v13 = *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CF88C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for PointCacheEmitter)
        {
          v11 = *(v9 - 2) + 36 * v4 + *(v5 + 128);
          v12 = *(v11 + 32);
          result = *v11;
          v14 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v14;
          *(a2 + 32) = v12;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1AF3CF964(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for PointCacheSpawner)
      {
        v13 = *(v11 - 2) + 12 * v6 + *(v7 + 128);
        return *v13;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFA7C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Vortex)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFB94@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v9 = a2(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = v11[8];
  if (v12)
  {
    v12 = v11[9];
  }

  if ((v8 || v6 != -1) && (v6 & 0x80000000) == 0 && v6 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v17 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
    v18 = *(v17 + 2);
    if (v8 == 0xFFFFFFFF || v17[2] == v8)
    {
      v25 = *(v9 - 8);
      v19 = *(*(v4 + 144) + 8 * *v17 + 32);
      v20 = *(v19 + 48);
      v21 = (v20 + 32);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 5;
        v24 = *v21;
        v21 += 5;
        if (v24 == v9)
        {
          a3(*(v19 + 128) + *(v23 - 2) + v12 * v18, a4);
          v13 = *(v25 + 56);
          v14 = a4;
          v15 = 0;
          goto LABEL_6;
        }
      }
    }
  }

  v13 = v11[7];
  v14 = a4;
  v15 = 1;
LABEL_6:

  return v13(v14, v15, 1, v10);
}

uint64_t sub_1AF3CFD5C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleBurstSpawn)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFE48(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSpawnOverDistance)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4);
          v16 = *(v13 + 5);
          v17 = v15 == 0;
          v18 = 0x100000000;
          if (v17)
          {
            v18 = 0;
          }

          v19 = v18 | v14;
          v17 = v16 == 0;
          v20 = 0x10000000000;
          if (v17)
          {
            v20 = 0;
          }

          return v19 | v20;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

__n128 sub_1AF3CFF34@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleRibbonTrails)
        {
          v11 = &(*(v9 - 2))[2 * v4] + *(v5 + 128);
          result = *v11;
          v13 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v13;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_1AF3CFFFC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleVariableSpawn)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3D0100(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleContinuousSpawn)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3D01DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFlockingSolver)
        {
          v11 = &(*(v9 - 2))[7 * v4] + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          *&v24[15] = *(v11 + 95);
          v23[4] = v15;
          *v24 = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 95) = *(v11 + 95);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF443184(v23, &v22);
        }
      }
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 83) = 0u;
  return result;
}

uint64_t sub_1AF3D0324(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticlePeriodicBurstSpawn)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3D0428@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFluidSolver2DSolver)
        {
          v11 = &(*(v9 - 2))[6 * v4] + *(v5 + 128);
          v12 = *(v11 + 16);
          v21[0] = *v11;
          v21[1] = v12;
          v14 = *(v11 + 48);
          v13 = *(v11 + 64);
          v15 = *(v11 + 32);
          v22 = *(v11 + 80);
          v21[3] = v14;
          v21[4] = v13;
          v21[2] = v15;
          v16 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v16;
          v17 = *(v11 + 32);
          v18 = *(v11 + 48);
          v19 = *(v11 + 64);
          *(a2 + 80) = *(v11 + 80);
          *(a2 + 48) = v18;
          *(a2 + 64) = v19;
          *(a2 + 32) = v17;
          return sub_1AF4431E0(v21, &v20);
        }
      }
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 65) = 0u;
  return result;
}

uint64_t sub_1AF3D0564(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleFlockingSpeedControl)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3D0664@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFluidSolver2DEmitter)
        {
          v11 = (*(v9 - 2) + 28 * v4 + *(v5 + 128));
          v12 = v11[1].n128_u64[0];
          v13 = v11[1].n128_u16[4];
          result = *v11;
          *a2 = *v11;
          a2[1].n128_u64[0] = v12;
          a2[1].n128_u16[4] = v13;
          return result;
        }
      }
    }
  }

  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 2;
  a2[1].n128_u16[4] = 0;
  return result;
}

__n128 sub_1AF3D0744@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFlockingFlyTowardsArea)
        {
          v11 = (*(v9 - 2) + 28 * v4 + *(v5 + 128));
          v12 = v11[1].n128_u64[0];
          v13 = v11[1].n128_u8[8];
          result = *v11;
          *a2 = *v11;
          a2[1].n128_u64[0] = v12;
          a2[1].n128_u8[8] = v13;
          return result;
        }
      }
    }
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 2;
  return result;
}

unint64_t sub_1AF3D0824@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleFlockingConstrainToArea)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v6 = *(v16 + 4);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

unint64_t sub_1AF3D0944@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v7 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 2;
      goto LABEL_3;
    }

    v10 = *(*(v2 + 144) + 8 * *v8 + 32);
    v11 = *(v10 + 48);
    v12 = (v11 + 32);
    v5 = *(v11 + 16) + 1;
    v7 = 2;
    while (--v5)
    {
      v13 = v12 + 5;
      v14 = *v12;
      v12 += 5;
      if (v14 == &type metadata for ParticleFlockingAlignOrientation)
      {
        v15 = &(*(v13 - 2))[3 * v9] + *(v10 + 128);
        v4 = v15[8];
        v5 = *(v15 + 2);
        v6 = *(v15 + 3);
        v3 = *v15 | (*(v15 + 1) << 32);
        v7 = v15[32] | (*(v15 + 9) << 32);
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v6 = 0;
  }

LABEL_3:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

unint64_t sub_1AF3D0A74@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleFlockingConstrainToPlane)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v6 = *(v16 + 4);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}