uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t SiriKitEventContext.description.getter()
{
  _StringGuts.grow(_:)(43);

  MEMORY[0x1E12A1580](v0[10], v0[11]);
  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  _StringGuts.grow(_:)(19);

  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA89010);

  _StringGuts.grow(_:)(18);

  MEMORY[0x1E12A1580](v0[12], v0[13]);
  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  MEMORY[0x1E12A1580](0x7463617265746E69, 0xEF203A64496E6F69);

  return 0xD000000000000028;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id SessionConfigurationXPC.init(coder:)(void *a1)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SMTRequestDispatcherSessionConfiguration, 0x1E69D08F8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for SessionConfigurationXPC();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR___SKRSessionConfigurationXPC_sessionId] = v5;
      *&v7[OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration] = v3;
      v12.receiver = v7;
      v12.super_class = v6;
      v8 = v5;
      v9 = v3;
      v10 = objc_msgSendSuper2(&v12, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v10;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime8WorkItemVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime8WorkItemVGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime21AceServiceInvokerImplC0G13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime21AceServiceInvokerImplC0G13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime28GeneralizedAppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime28GeneralizedAppShortcutTargetVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
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
    swift_arrayInitWithCopy();
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
    v10 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF16SiriMessageTypes07RequestH4BaseCm_Ttg5();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v8;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v5)
  {
    if (v13 != a4 || v16 >= &v17[8 * v8])
    {
      memmove(v16, v17, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v8);
  }

  return v13;
}

id RequestContextData.__allocating_init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, int a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32)
{
  v33 = v32;
  v39 = objc_allocWithZone(v33);
  v40 = &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  *v40 = a1;
  v40[1] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a4, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v41 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v42 = type metadata accessor for ResponseMode();
  v43 = *(v42 - 8);
  (*(v43 + 16))(&v39[v41], a5, v42);
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = a6;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = a7;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = a8;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = a9;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = a10;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = a11;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = a12;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v44 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v45 = type metadata accessor for Restrictions();
  v46 = *(v45 - 8);
  (*(v46 + 16))(&v39[v44], a15, v45);
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = a16;
  v47 = &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *v47 = a17;
  v47[1] = a18;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = a19;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = a20;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = a21;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = a22;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = a23;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = a24;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = a25;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = a26;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = a27;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = a28;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v49 = type metadata accessor for RequestPositionInSession();
  v50 = *(v49 - 8);
  (*(v50 + 16))(&v39[v48], a29, v49);
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = a30;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = a31;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = a32;
  v60.receiver = v39;
  v60.super_class = v57;
  v51 = objc_msgSendSuper2(&v60, sel_init);
  (*(v50 + 8))(a29, v49);
  (*(v46 + 8))(a15, v45);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v43 + 8))(a5, v42);
  outlined destroy of ReferenceResolutionClientProtocol?(a4, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v51;
}

char *initializeWithCopy for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v13 = a3[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[8];
  v18 = a3[9];
  v19 = *&a2[v17];
  *&a1[v17] = v19;
  v20 = v19;
  if (v11(&a2[v18], 1, v9))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v18], &a2[v18], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v18], &a2[v18], v9);
    (*(v10 + 56))(&a1[v18], 0, 1, v9);
  }

  v22 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v22] = a2[v22];
  v23 = a3[12];
  v24 = a3[13];
  v25 = *&a2[v23];
  *&a1[v23] = v25;
  v26 = &a1[v24];
  v27 = &a2[v24];
  v28 = *&a2[v24 + 8];

  v29 = v25;
  if (v28 >> 60 == 15)
  {
    *v26 = *v27;
  }

  else
  {
    v30 = *v27;
    outlined copy of Data._Representation(v30, v28);
    *v26 = v30;
    *(v26 + 1) = v28;
  }

  return a1;
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v3[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v5, 0);
}

{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v3[18] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v5, 0);
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 40);
  v3[18] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[16];
    v8 = v3[13];
    v7 = v3[14];
    *(v4 + 40) = v5 + 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v4;
    v12[5] = v5;
    v12[6] = v8;
    v12[7] = v7;

    v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyytG_Tt2g5(0, 0, v6, &async function pointer to partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v12);
    v3[19] = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;
    swift_beginAccess();

    v15 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:), v14, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v20;
    swift_endAccess();
    v17 = *(MEMORY[0x1E69E86C0] + 4);
    v18 = swift_task_alloc();
    v3[20] = v18;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);
    *v18 = v3;
    v18[1] = specialized InterruptibleTaskManager.perform<A>(_:);
    a1 = v3 + 11;
    a2 = v13;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

{
  v4 = v3[16];
  v5 = *(v4 + 40);
  v3[19] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[17];
    v8 = v3[14];
    v7 = v3[15];
    *(v4 + 40) = v5 + 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v4;
    v12[5] = v5;
    v12[6] = v8;
    v12[7] = v7;

    v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyAI18RemoteConversation_pSgG_Tt2g5(0, 0, v6, &async function pointer to partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v12);
    v3[20] = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;
    swift_beginAccess();

    v15 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:), v14, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v20;
    swift_endAccess();
    v17 = *(MEMORY[0x1E69E86C0] + 4);
    v18 = swift_task_alloc();
    v3[21] = v18;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);
    *v18 = v3;
    v18[1] = specialized InterruptibleTaskManager.perform<A>(_:);
    a1 = v3 + 11;
    a2 = v13;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v4[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v8, 0);
}

{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v4[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v8, 0);
}

uint64_t partial apply for specialized closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v6);
}

{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  *v4 = v0;
  v4[1] = specialized closure #2 in withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v5);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[3];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v4 = v0;
  v4[1] = specialized closure #2 in withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v5);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 32);

    *v5 = *(v3 + 16);
    v6 = *(v3 + 8);

    return v6();
  }
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 32);
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 32);
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t specialized ManagedContinuation.updateState(continuation:result:)(unsigned int (*a1)(char *, uint64_t, uint64_t), char *a2, char a3)
{
  v49 = a2;
  v51 = a1;
  v5 = ~a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v52 = &v48 - v23;
  v50 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v53 = *(*v3 + 104);
  [*(v3 + v53) lock];
  if (v5)
  {
    v27 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v27 + 8) == 255)
    {
      v28 = v49;
      *v27 = v49;
      *(v27 + 8) = a3;
      outlined copy of Result<(), Error>(v28, a3 & 1);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v51, v15, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v51 = *(v17 + 48);
  if (v51(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    v49 = v21;
    v29 = v13;
    v30 = *(v17 + 32);
    v30(v26, v15, v16);
    v30(v29, v26, v16);
    (*(v17 + 56))(v29, 0, 1, v16);
    v31 = *(*v3 + 88);
    swift_beginAccess();
    v32 = v3 + v31;
    v13 = v29;
    v21 = v49;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v32, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
    swift_endAccess();
  }

  v33 = v52;
  v34 = *(*v3 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v34, v10, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if (v51(v10, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
LABEL_12:
    v46 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v52 = *(v17 + 32);
  (v52)(v33, v10, v16);
  v35 = v3 + *(*v3 + 96);
  swift_beginAccess();
  v36 = v33;
  v37 = *(v35 + 8);
  if (v37 == 255)
  {
    (*(v17 + 8))(v36, v16);
    goto LABEL_12;
  }

  v38 = *v35;
  (*(v17 + 56))(v13, 1, 1, v16);
  swift_beginAccess();
  v39 = v37 & 1;
  outlined copy of Result<(), Error>(v38, v39);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v3 + v34, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  swift_endAccess();
  v40 = v36;
  v41 = v52;
  (v52)(v21, v40, v16);
  v54 = v39;
  v42 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v43 = (v50 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v41(v44 + v42, v21, v16);
  v45 = v44 + v43;
  *v45 = v38;
  *(v45 + 8) = v54;
  v46 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  (v46)([*(v3 + v53) unlock]);
}

{
  v49 = a2;
  v51 = a1;
  v5 = ~a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v48 - v22;
  v50 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v53 = *(*v3 + 104);
  [*(v3 + v53) lock];
  if (v5)
  {
    v28 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v28 + 8) == 255)
    {
      v29 = v49;
      *v28 = v49;
      *(v28 + 8) = a3;
      outlined copy of Result<SABaseCommand?, Error>(v29);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v51, v15, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v51 = *(v17 + 48);
  if (v51(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  }

  else
  {
    v49 = v20;
    v30 = v12;
    v31 = *(v17 + 32);
    v31(v27, v15, v16);
    v31(v30, v27, v16);
    (*(v17 + 56))(v30, 0, 1, v16);
    v32 = *(*v3 + 88);
    swift_beginAccess();
    v33 = v3 + v32;
    v12 = v30;
    v20 = v49;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v12, v33, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
    swift_endAccess();
  }

  v34 = v52;
  v35 = *(*v3 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v35, v9, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  if (v51(v9, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
LABEL_12:
    v46 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v52 = *(v17 + 32);
  (v52)(v34, v9, v16);
  v36 = v3 + *(*v3 + 96);
  swift_beginAccess();
  v37 = v34;
  v38 = *(v36 + 8);
  if (v38 == 255)
  {
    (*(v17 + 8))(v37, v16);
    goto LABEL_12;
  }

  v39 = *v36;
  (*(v17 + 56))(v12, 1, 1, v16);
  swift_beginAccess();
  outlined copy of Result<SABaseCommand?, Error>(v39);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v12, v3 + v35, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  swift_endAccess();
  v40 = v37;
  v41 = v52;
  (v52)(v20, v40, v16);
  v54 = v38 & 1;
  v42 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v43 = (v50 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v41(v44 + v42, v20, v16);
  v45 = v44 + v43;
  *v45 = v39;
  *(v45 + 8) = v54;
  v46 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  (v46)([*(v3 + v53) unlock]);
}

uint64_t specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a1;
  v18[7] = a4;
  v18[8] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, a7, v18);
}

uint64_t partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  return specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], &unk_1F582CC28, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:));
}

{
  return specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], &unk_1F582CAC0, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR) - 8) + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

uint64_t specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a5);
}

{
  *(v5 + 32) = a1;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  *v8 = v5;
  v8[1] = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

  return v10(v5 + 16, a5);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(a1, a2, v2 + v7, v9, v10);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), 0, 0);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001DCA81770, partial apply for closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v1, v6);
}

uint64_t closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = RemoteConversationTurnData.xpcRepresentation.getter();
  ObjectType = swift_getObjectType();
  v15 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_52;
  v18 = _Block_copy(aBlock);

  [a2 startTurnWithTurnData:v13 bridge:v15 reply:v18];
  _Block_release(v18);

  return swift_unknownObjectRelease();
}

id RemoteConversationTurnData.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = v1[1];
  v53 = *v1;
  v17 = v1[3];
  v55 = v1[2];
  v18 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v18[6], v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v47 = *(v20 + 48);
  v48 = v20;
  v21 = v47(v15, 1, v19);
  v54 = v17;

  v52 = v16;

  isa = 0;
  if (v21 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v48 + 8))(v15, v19);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v18[7], v9, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v23 = v50;
  v24 = v51;
  if ((*(v50 + 48))(v9, 1, v51) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    v25 = 0;
  }

  else
  {
    (*(v23 + 16))(v5, v9, v24);
    v26 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
    v25 = SessionConfigurationXPC.init(sessionConfiguration:)(v5);
    (*(v23 + 8))(v9, v24);
  }

  v27 = v49;
  v28 = *(v1 + v18[8]);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v18[9], v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v47(v27, 1, v19) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v48 + 8))(v27, v19);
  }

  v30 = *(v1 + v18[10]);
  if (v30)
  {
    v30 = FlowTask.xpcRepresentation.getter();
  }

  v31 = (v1 + v18[13]);
  if (v31[1] >> 60 == 15)
  {
    v32 = 0;
  }

  else
  {
    v33 = *v31;
    v32 = Data._bridgeToObjectiveC()().super.isa;
  }

  v34 = v18[12];
  v35 = *(v1 + v18[11]);
  v36 = *(v1 + v34);
  v37 = type metadata accessor for ConversationTurnDataXPC();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId];
  v40 = v52;
  *v39 = v53;
  v39[1] = v40;
  v41 = &v38[OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId];
  v42 = v54;
  *v41 = v55;
  v41[1] = v42;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData] = v28;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId] = v29;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_flowTask] = v30;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData] = v32;
  v38[OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR] = v35;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext] = v36;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_sessionId] = isa;
  *&v38[OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration] = v25;
  v56.receiver = v38;
  v56.super_class = v37;
  v43 = v28;
  v44 = v36;
  return objc_msgSendSuper2(&v56, sel_init);
}

uint64_t SessionConfigurationXPC.init(sessionConfiguration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SessionConfiguration.sessionId.getter();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  *&v2[OBJC_IVAR___SKRSessionConfigurationXPC_sessionId] = isa;
  v19 = a1;
  v10 = objc_allocWithZone(MEMORY[0x1E69D08F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in SessionConfigurationXPC.init(sessionConfiguration:);
  *(v11 + 24) = v18;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SMTRequestDispatcherSessionConfigurationMutating) -> ();
  aBlock[3] = &block_descriptor_24;
  v12 = _Block_copy(aBlock);

  v13 = [v10 initWithBuilder_];
  _Block_release(v12);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration] = v13;
    v15 = type metadata accessor for SessionConfigurationXPC();
    v20.receiver = v2;
    v20.super_class = v15;
    v16 = objc_msgSendSuper2(&v20, sel_init);
    v17 = type metadata accessor for SessionConfiguration();
    (*(*(v17 - 8) + 8))(a1, v17);
    return v16;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed SMTRequestDispatcherSessionConfigurationMutating) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

Swift::Void __swiftcall ConversationTurnDataXPC.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId), *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8));
  v4 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId + 8))
  {
    v5 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E12A1410](0x75716552746F6F72, 0xED00006449747365);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData);
  v8 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B2A0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v10 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v12 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId);
  v14 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B2C0);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  v16 = MEMORY[0x1E12A1410](0x6B736154776F6C66, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v18 = MEMORY[0x1E12A1410](0x52526465706F6373, 0xEC00000061746144);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR);
  v20 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA7B2E0);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v22 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B300);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
}

uint64_t outlined consume of Set<String>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

Swift::Void __swiftcall SessionConfigurationXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRSessionConfigurationXPC_sessionId);
  v4 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration);
  v6 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B670);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id closure #1 in SessionConfigurationXPC.init(sessionConfiguration:)(void *a1)
{
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = SessionConfiguration.assistantId.getter();
  v8 = MEMORY[0x1E12A1410](v7);

  [a1 setAssistantId_];

  v9 = SessionConfiguration.languageCode.getter();
  v10 = MEMORY[0x1E12A1410](v9);

  [a1 setLanguageCode_];

  SessionConfiguration.userId.getter();
  v11 = UserID.sharedUserId.getter();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v14 = MEMORY[0x1E12A1410](v11, v13);

  [a1 setSharedUserId_];

  [a1 setUnderstandingOnDevice_];
  [a1 setIsSystemAssistantExperienceEnabled_];
  [a1 setIsFullPlannerEnabled_];
  [a1 setIsPQAEnabled_];
  [a1 setDeferIntelligenceFlowSessionCreation_];
  result = SessionConfiguration.clientAuditToken.getter();
  if ((v17 & 1) == 0)
  {
    *v16 = *&v16[11];
    *&v16[4] = *&v16[15];
    return [a1 setClientAuditToken_];
  }

  return result;
}

id FlowTask.xpcRepresentation.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v17 = *(v0 + 33);
  v10 = *(v2 + 16);
  v10(v6, v0 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v1, v4);
  v11 = type metadata accessor for FlowTaskXPC(0);
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v13 = v8;
  v13[1] = v7;
  v12[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = v9;
  v12[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = v17;
  (v10)(&v12[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime], v6, v1);
  v18.receiver = v12;
  v18.super_class = v11;

  v14 = objc_msgSendSuper2(&v18, sel_init);
  (*(v2 + 8))(v6, v1);
  return v14;
}

Swift::Void __swiftcall RequestContextData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceRestrictions();
  v128 = *(v4 - 8);
  v129 = v4;
  v5 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v121 - v9;
  v10 = type metadata accessor for DateInterval();
  v125 = *(v10 - 8);
  v126 = v10;
  v11 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v121 - v15;
  v17 = type metadata accessor for AudioDestination();
  v123 = *(v17 - 8);
  v124 = v17;
  v18 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v121 - v22;
  v24 = type metadata accessor for AudioSource();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8), v27);
  v31 = MEMORY[0x1E12A1410](0x69724F7475706E69, 0xEB000000006E6967);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource, v23, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v32 = off_1E8646000;
  }

  else
  {
    (*(v25 + 32))(v29, v23, v24);
    v33 = AudioSource.aceValue.getter();
    v34 = MEMORY[0x1E12A1410](v33);

    v35 = MEMORY[0x1E12A1410](0x756F536F69647561, 0xEB00000000656372);
    v32 = off_1E8646000;
    [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

    (*(v25 + 8))(v29, v24);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination, v16, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v37 = v123;
  v36 = v124;
  v38 = (*(v123 + 48))(v16, 1, v124);
  v39 = v130;
  if (v38 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    v40 = v130;
    v41 = v32;
    v42 = v121;
    (*(v37 + 32))(v121, v16, v36);
    v43 = AudioDestination.aceValue.getter();
    v44 = MEMORY[0x1E12A1410](v43);

    v45 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA867E0);
    [with.super.isa v41 + 3842];

    v46 = v42;
    v32 = v41;
    v39 = v40;
    (*(v37 + 8))(v46, v36);
  }

  v47 = ResponseMode.aceValue.getter();
  v48 = MEMORY[0x1E12A1410](v47);

  v49 = MEMORY[0x1E12A1410](0x65736E6F70736572, 0xEC00000065646F4DLL);
  [with.super.isa v32[478]];

  v50 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree);
  v51 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v50 forKey:v51];

  v52 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction);
  v53 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  [(objc_class *)with.super.isa encodeBool:v52 forKey:v53];

  v54 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled);
  v55 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  [(objc_class *)with.super.isa encodeBool:v54 forKey:v55];

  v56 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled);
  v57 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  [(objc_class *)with.super.isa encodeBool:v56 forKey:v57];

  v58 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  if (v58)
  {
    v59 = v58;
    v60 = MEMORY[0x1E12A1410](0x6F666E4972656570, 0xE800000000000000);
    [with.super.isa v32[478]];
  }

  v61 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  if (v61)
  {
    v62 = v61;
    v63 = MEMORY[0x1E12A1410](0x746E696F70646E65, 0xEC0000006F666E49);
    [with.super.isa v32[478]];
  }

  v64 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  if (v64)
  {
    v65 = v64;
    v66 = MEMORY[0x1E12A1410](0x65636E6174736E69, 0xEC0000006F666E49);
    [with.super.isa v32[478]];
  }

  v67 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes);
  v68 = *(v67 + 16);
  if (v68)
  {
    v131 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v69 = (v67 + 40);
    do
    {
      v70 = *(v69 - 1);
      v71 = *v69;

      MEMORY[0x1E12A1410](v70, v71);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v72 = *(v131 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v69 += 2;
      --v68;
    }

    while (v68);
    v39 = v130;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v74 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEC0000007365646FLL);
  [with.super.isa v32[478]];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval, v39, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v76 = v125;
  v75 = v126;
  if ((*(v125 + 48))(v39, 1, v126) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  }

  else
  {
    v77 = v122;
    (*(v76 + 32))(v122, v39, v75);
    v78 = v75;
    v79 = DateInterval._bridgeToObjectiveC()().super.isa;
    v80 = v76;
    v81 = MEMORY[0x1E12A1410](0xD00000000000001ELL, 0x80000001DCA86800);
    [with.super.isa v32[478]];

    (*(v80 + 8))(v77, v78);
  }

  v82 = Restrictions.restrictedCommands.getter();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So8NSStringCs5NeverOTg5069_s14SiriKitRuntime18RequestContextDataC6encode4withySo7NSCoderC_tFSo8D9CSSXEfU0_Tf1cn_n(v82);

  v83 = Array._bridgeToObjectiveC()().super.isa;

  v84 = MEMORY[0x1E12A1410](0x7463697274736572, 0xEC000000736E6F69);
  [with.super.isa v32[478]];

  v85 = v127;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x150))();
  v86 = DeviceRestrictions.rawValue.getter();
  (*(v128 + 8))(v85, v129);
  v87 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA86820);
  [(objc_class *)with.super.isa encodeInteger:v86 forKey:v87];

  v88 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  if (v88)
  {
    v89 = v88;
    v90 = MEMORY[0x1E12A1410](0x74616E696769726FLL, 0xEF656D6F48676E69);
    [with.super.isa v32[478]];
  }

  v91 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));
  v92 = MEMORY[0x1E12A1410](0xD000000000000018, 0x80000001DCA86840);
  [with.super.isa v32[478]];

  v93 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup);
  v94 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7D210);
  [(objc_class *)with.super.isa encodeBool:v93 forKey:v94];

  v95 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer);
  v96 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA825F0);
  [(objc_class *)with.super.isa encodeBool:v95 forKey:v96];

  v97 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest);
  v98 = MEMORY[0x1E12A1410](0x6863656570537369, 0xEF74736575716552);
  [(objc_class *)with.super.isa encodeBool:v97 forKey:v98];

  v99 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall);
  v100 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA83F60);
  [(objc_class *)with.super.isa encodeBool:v99 forKey:v100];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo))
  {
    v101 = Dictionary._bridgeToObjectiveC()().super.isa;
    v102 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA86860);
    [with.super.isa v32[478]];
  }

  v103 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled);
  v104 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA86880);
  [(objc_class *)with.super.isa encodeBool:v103 forKey:v104];

  v105 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v106 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  [(objc_class *)with.super.isa encodeInt64:v105 forKey:v106];

  v107 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled);
  v108 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
  [(objc_class *)with.super.isa encodeBool:v107 forKey:v108];

  v109 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported);
  v110 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
  [(objc_class *)with.super.isa encodeBool:v109 forKey:v110];

  v111 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient);
  v112 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
  [(objc_class *)with.super.isa encodeBool:v111 forKey:v112];

  v113 = RequestPositionInSession.rawValue.getter();
  v114 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA86900);
  [(objc_class *)with.super.isa encodeInt64:v113 forKey:v114];

  v115 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v116 = MEMORY[0x1E12A1410](0x74636E756A6E6F63, 0xEF6F666E496E6F69);
  [with.super.isa v32[478]];

  v117 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen);
  v118 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA823B0);
  [(objc_class *)with.super.isa encodeBool:v117 forKey:v118];

  v119 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked);
  v120 = MEMORY[0x1E12A1410](0x6563697665447369, 0xEE0064656B636F4CLL);
  [(objc_class *)with.super.isa encodeBool:v119 forKey:v120];
}

Swift::Void __swiftcall FlowTaskXPC.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8));
  v4 = MEMORY[0x1E12A1410](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state))
  {
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state) == 1)
    {
      v5 = 0xE700000000000000;
      v6 = 0x676E696F676E6FLL;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x6465646E65;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64657461657263;
  }

  v7 = MEMORY[0x1E12A1410](v6, v5);

  v8 = MEMORY[0x1E12A1410](0x6574617473, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated);
  v10 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = MEMORY[0x1E12A1410](0x6E6F697461657263, 0xEC000000656D6954);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v12];
}

uint64_t type metadata accessor for InvocationStateImpl()
{
  result = type metadata singleton initialization cache for InvocationStateImpl;
  if (!type metadata singleton initialization cache for InvocationStateImpl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);

  return v11();
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)partial apply()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(v2, v3, v4);
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = type metadata accessor for SiriKitEventPayload();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v9 = *(*(type metadata accessor for InvocationStateImpl() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v10 = type metadata accessor for RemoteConversationTurnData(0);
  v3[37] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v3[39] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v12, 0);
}

uint64_t FlowTaskXPC.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v8)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.instrumentation);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "Error decoding FlowTaskXPC: Missing id", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    goto LABEL_32;
  }

  v9 = v8;
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v10)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.instrumentation);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "Error decoding FlowTaskXPC: Missing state", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    goto LABEL_25;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v16 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTask.State.init(rawValue:), v15);

  if (v16 < 3)
  {
    v17 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
    v18 = [a1 containsValueForKey_];

    if (v18)
    {
      v19 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
      v20 = [a1 decodeBoolForKey_];

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00);
      v21 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v21)
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        HIDWORD(v55) = v20;
        v26 = v25;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = (*(ObjectType + 112))(v24, v26, v16, HIDWORD(v55), v7);

        v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
        v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
        swift_deallocPartialClassInstance();
        return v27;
      }

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.instrumentation);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_31;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Error decoding FlowTaskXPC: Missing creationTime";
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.instrumentation);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_31;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Error decoding FlowTaskXPC: Missing isClientInitiated";
    }

    _os_log_impl(&dword_1DC659000, v48, v49, v51, v50, 2u);
    MEMORY[0x1E12A2F50](v50, -1, -1);
LABEL_31:

    goto LABEL_32;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.instrumentation);
  v40 = v11;
  v36 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v36, v41))
  {

LABEL_25:
    goto LABEL_32;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v56 = v43;
  *v42 = 136315138;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v56);

  *(v42 + 4) = v46;
  _os_log_impl(&dword_1DC659000, v36, v41, "Error decoding FlowTaskXPC: Invalid value for state: %s", v42, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  MEMORY[0x1E12A2F50](v43, -1, -1);
  MEMORY[0x1E12A2F50](v42, -1, -1);

LABEL_32:
  swift_getObjectType();
  v53 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v54 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id FlowTaskXPC.__allocating_init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v12 = a1;
  v12[1] = a2;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = a3;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = a4;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a5, v14);
  v18.receiver = v11;
  v18.super_class = v5;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a5, v14);
  return v16;
}

uint64_t sub_1DC6A66E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id ConversationTurnDataXPC.init(coder:)(void *a1)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v2)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "Error decoding ConversationTurnDataXPC: executionRequestId not present", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    goto LABEL_24;
  }

  v3 = v2;
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for SessionConfigurationXPC();
  v50 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for RequestContextData(0);
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v4;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "Error decoding ConversationTurnDataXPC: requestContextData not present", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    else
    {
    }

    a1 = v50;
LABEL_24:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v47 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v47)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v4;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "No conversation logging ID found when decoding ConversationTurnData", v12, 2u);
      v13 = v12;
      v4 = v11;
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  v48 = v5;
  type metadata accessor for FlowTaskXPC(0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  v15 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA7B2E0);
  v45 = [a1 decodeBoolForKey_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for ProxiedRequestContext(0);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  v49 = v3;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v46 = v4;
  if (v4)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v32 = type metadata accessor for ConversationTurnDataXPC();
  v33 = objc_allocWithZone(v32);
  v34 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId];
  *v34 = v18;
  v34[1] = v20;
  v35 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId];
  *v35 = v4;
  v35[1] = v22;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData] = v7;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId] = v47;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_flowTask] = v14;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData] = v16;
  v33[OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR] = v45;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext] = v17;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionId] = v48;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration] = v50;
  v51.receiver = v33;
  v51.super_class = v32;
  v36 = v7;
  v37 = v47;
  v38 = v14;
  v39 = v16;
  v40 = v17;
  v41 = v48;
  v42 = v50;
  v43 = objc_msgSendSuper2(&v51, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)()
{
  v1 = *(*(v0 + 200) + 72);
  *(v0 + 320) = v1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v1, 0);
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  SharedFlowPluginService.WarmupTracker.warmupTask.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v1, 0);
}

{
  v46 = v0;
  v1 = v0[38];
  v2 = v0[26];
  v3 = *(v0[25] + 80);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  v6 = v2;
  v5();
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v42 = v10;
  v36 = v0[34];
  v43 = v0[33];
  v40 = v0[32];
  v41 = v0[31];
  v11 = v0[27];
  v12 = v0[25];
  v13 = *v8;
  v14 = v8[1];
  v38 = *v8;
  v39 = v14;
  v15 = *(v8 + v7[8]);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v35 = v15;

  InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v13, v14, v35, v44, v9);
  v16 = *(v12 + 64);
  v37 = v8[2];
  v33 = v8[3];
  v18 = v7[6];
  v17 = v7[7];
  outlined init with copy of InvocationStateImpl(v9, v10, type metadata accessor for InvocationStateImpl);
  v29 = v7[9];
  swift_getObjectType();
  v19 = ServiceBridge.errorHandlingProxy.getter();
  v20 = (v8 + v7[13]);
  v21 = v20[1];
  v31 = v19;
  v32 = *v20;
  v34 = *(v8 + v7[11]);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  outlined init with copy of ReferenceResolutionClientProtocol?(v8 + v18, v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v8 + v17, v41, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v28 = *(v16 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(v8 + v29, v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16 + 56, (v0 + 2), &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v16 + 96, (v0 + 7));
  v22 = type metadata accessor for ConversationTurnStateImpl();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v30 = swift_allocObject();
  outlined init with copy of InvocationStateImpl(v10, v36, type metadata accessor for InvocationStateImpl);

  v25 = v35;

  outlined copy of Data?(v32, v21);
  v26 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v31, v38, v39, v37, v33, v43, v41, v28, v40, v36, (v0 + 2), v25, v34, v0 + 7, v32, v21, v30);
  v0[41] = v26;
  outlined consume of Data?(v32, v21);

  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  v0[15] = v22;
  v0[16] = &protocol witness table for ConversationTurnStateImpl;

  v0[12] = v26;
  swift_beginAccess();
  outlined assign with take of ConversationTurnState?((v0 + 12), v16 + 16);
  swift_endAccess();
  outlined destroy of InvocationStateImpl(v42, type metadata accessor for InvocationStateImpl);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeAndSetConversationId(fromExecutionRequestId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.setExecutionRequestId(fromExecutionRequestId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(&v26[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender], (v0 + 17));

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), 0, 0);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[20];
  v5 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
  type metadata accessor for SiriKitEvent();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC58], v3);
  v6 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[42] = v6;
  v7 = *(MEMORY[0x1E69CFC60] + 4);
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);

  return MEMORY[0x1EEE39338](v6, v4, v5);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Bootstraping the suggestions broker provider inside SharedFlowPluginService startTurn()", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  type metadata accessor for SiriSuggestionsBrokerProvider();
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  *v5 = v0;
  v5[1] = closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);

  return static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 312);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v4, 0);
}

{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v2, 0);
}

{
  v1 = v0[41];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];

  outlined destroy of InvocationStateImpl(v3, type metadata accessor for InvocationStateImpl);
  outlined destroy of InvocationStateImpl(v2, type metadata accessor for RemoteConversationTurnData);

  v10 = v0[1];

  return v10();
}

uint64_t SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  if (v0[14])
  {
    v1 = v0[14];
  }

  else
  {
    v1 = closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter(*v0);
    v2 = v0[14];
    v0[14] = v1;
  }

  return v1;
}

id ConversationTurnDataXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId);
  v18 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8);
  v19 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId + 8);
  v51 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId);
  v52 = v17;
  v20 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v54 = &v46 - v15;
  if (v20)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  v23 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v24 = MEMORY[0x1E69E7D40];
  if (v23)
  {
    v53 = v13;
    v25 = v9;
    v26 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x80);

    v26(v27);
    if (v2)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v30 = type metadata accessor for SessionConfiguration();
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
    v9 = v25;
    v13 = v53;
    v24 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v29 = type metadata accessor for SessionConfiguration();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  }

  v49 = v18;
  v53 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData);
  if (*(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId))
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 56))(v13, v31, 1, v32);
  v33 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  if (v33)
  {
    v50 = v19;
    v34 = (*((*v24 & *v33) + 0x78))(v53);
    if (v2)
    {

      v35 = 0;
      v3 = 0;
    }

    else
    {
      v35 = v34;
    }

    v19 = v50;
  }

  else
  {
    v36 = v53;
    v35 = 0;
  }

  v37 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v50 = v3;
  if (v37)
  {
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v39;
    v48 = v38;
  }

  else
  {
    v47 = 0xF000000000000000;
    v48 = 0;
  }

  v40 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR);
  v41 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v42 = v49;
  *a1 = v52;
  a1[1] = v42;
  a1[2] = v51;
  a1[3] = v19;
  v43 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v54, a1 + v43[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v9, a1 + v43[7], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(a1 + v43[8]) = v53;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v13, a1 + v43[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a1 + v43[10]) = v35;
  v44 = (a1 + v43[13]);
  v45 = v47;
  *v44 = v48;
  v44[1] = v45;
  *(a1 + v43[11]) = v40;
  *(a1 + v43[12]) = v41;
  return v41;
}

void InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v109 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = v87 - v14;
  v15 = type metadata accessor for BargeInMode();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v96 = v87 - v23;
  v100 = type metadata accessor for InteractionTypeHelper();
  v98 = *(v100 - 8);
  v24 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v26 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for InteractionType();
  v94 = *(v97 - 8);
  v27 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v91 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for InvocationStateImpl();
  v30 = v29[8];
  v31 = type metadata accessor for AudioSource();
  (*(*(v31 - 8) + 56))(&a5[v30], 1, 1, v31);
  v32 = v29[9];
  v33 = type metadata accessor for AudioDestination();
  (*(*(v33 - 8) + 56))(&a5[v32], 1, 1, v33);
  v34 = v29[24];
  v35 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v106 = v35;
  v107 = v34;
  v104 = v36 + 56;
  v105 = v37;
  (v37)(&a5[v34], 1, 1);
  v38 = v29[25];
  v39 = type metadata accessor for BargeInContext();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v90 = v38;
  v89 = v39;
  v88 = v41;
  v87[1] = v40 + 56;
  (v41)(&a5[v38], 1, 1);
  v42 = v29[27];
  v43 = type metadata accessor for HomeInfo();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v99 = v42;
  v95 = v43;
  v93 = v45;
  v92 = v44 + 56;
  (v45)(&a5[v42], 1, 1);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a1;
  *(a5 + 3) = a2;
  v46 = &a5[v29[21]];
  *v46 = a1;
  *(v46 + 1) = a2;
  v47 = &a5[v29[22]];
  *v47 = a1;
  *(v47 + 1) = a2;
  v48 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v49 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8];
  v50 = v29[6];
  swift_bridgeObjectRetain_n();

  v51 = &a5[v50];
  v52 = v26;
  static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)(v48, v49, v51);

  outlined assign with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &a5[v30], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &a5[v32], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v53 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v54 = v29[10];
  v55 = type metadata accessor for ResponseMode();
  (*(*(v55 - 8) + 16))(&a5[v54], &a3[v53], v55);
  a5[v29[13]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree];
  a5[v29[17]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction];
  a5[v29[14]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled];
  a5[v29[15]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled];
  a5[v29[16]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled];
  static InteractionTypeHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v109, v110, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
  v56 = v111;
  if (v111)
  {
    v57 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v58 = v96;
    (*(v57 + 32))(v56, v57);
    v59 = v94;
    v60 = v97;
    (*(v94 + 56))(v58, 0, 1, v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
    v59 = v94;
    v58 = v96;
    v60 = v97;
    (*(v94 + 56))(v96, 1, 1, v97);
  }

  v61 = v91;
  InteractionTypeHelper.mapInteractionType(requestContextData:previousInteractionType:)(a3);
  outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  (*(v98 + 8))(v52, v100);
  (*(v59 + 32))(&a5[v29[7]], v61, v60);
  v62 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes];

  static BargeInMode.from(aceModes:)(v63, v102);

  outlined init with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], v103, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v64 = v101;
  BargeInContext.init(mode:approximatePreviousTTSInterval:)();
  v65 = 1;
  v88(v64, 0, 1, v89);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v64, &a5[v90], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v66 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v67 = v29[26];
  v68 = type metadata accessor for Restrictions();
  (*(*(v68 - 8) + 16))(&a5[v67], &a3[v66], v68);
  v69 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome];
  if (v69)
  {
    v70 = v69;
    v71 = v108;
    AFHomeInfo.asInternalHomeInfo.getter();

    v65 = 0;
  }

  else
  {
    v71 = v108;
  }

  v93(v71, v65, 1, v95);
  v72 = &a5[v29[12]];
  v103 = v29[20];
  v73 = &a5[v29[23]];
  v108 = v29[29];
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v71, &a5[v99], &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v74 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8];
  v75 = &a5[v29[28]];
  *v75 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *(v75 + 1) = v74;
  v76 = v29[18];
  type metadata accessor for DeviceEnvironmentHelper();

  MEMORY[0x1E129BAA0](v77);

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v79 = v29[19];
  MEMORY[0x1E129BAA0](v78);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriVoiceGender.getter();

  MEMORY[0x1E129BAA0](v80);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v81 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v83 = v82;

  outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
  *v73 = v81;
  v73[1] = v83;
  v84 = v29[11];
  v85 = type metadata accessor for MultiUserContext();
  (*(*(v85 - 8) + 56))(&a5[v84], 1, 1, v85);
  *&a5[v103] = 0;
  v86 = v107;
  outlined destroy of ReferenceResolutionClientProtocol?(&a5[v107], &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v105(&a5[v86], 1, 1, v106);
  *v72 = 0;
  *(v72 + 1) = 0;
  *&a5[v108] = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo];
  *&a5[v29[30]] = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId];
  a5[v29[31]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled];
  a5[v29[32]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported];
  LOBYTE(v86) = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient];

  a5[v29[33]] = v86;
}

uint64_t static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;

  InputOrigin.init(aceValue:)();
  v10 = type metadata accessor for InputOrigin();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DCA66060;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  os_log(_:dso:log:type:_:)();

  return (*(v11 + 104))(a3, *MEMORY[0x1E69D34D0], v10);
}

uint64_t outlined assign with copy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t InteractionTypeHelper.mapInteractionType(requestContextData:previousInteractionType:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
  v12 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8);

  InputOrigin.init(aceValue:)();
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69D34D0], v6);
    v14 = v13(v5, 1, v6);
    if (v14 != 1)
    {
      v14 = outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    v14 = (*(v7 + 32))(v10, v5, v6);
  }

  v15 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree);
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x140))(v14);
  (*((*v16 & *a1) + 0x148))(v17);
  InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t static BargeInMode.from(aceModes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BargeInMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static BargeInMode.none.getter();
  v10 = *(a1 + 16);
  if (v10)
  {
    v25[4] = *MEMORY[0x1E69C8158];
    v25[3] = *MEMORY[0x1E69C8150];
    v25[2] = *MEMORY[0x1E69C8160];
    v25[1] = *MEMORY[0x1E69C8148];
    v11 = (v5 + 8);
    v12 = (a1 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v15 == v13;
      if (v16 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v17 & 1) != 0))
      {

        static BargeInMode.overSiri.getter();
      }

      else
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v19 == v13)
        {

LABEL_16:

          static BargeInMode.overMedia.getter();
          goto LABEL_9;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_16;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v21 == v13)
        {

LABEL_21:

          static BargeInMode.overTimer.getter();
          goto LABEL_9;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_21;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v23 == v13)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        static BargeInMode.overAlarm.getter();
      }

LABEL_9:
      lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(&lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v18 = *v11;
      (*v11)(a2, v4);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v25[7] = v25[5] | v25[6];
      lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(&lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
      dispatch thunk of OptionSet.init(rawValue:)();
      result = (v18)(v8, v4);
LABEL_10:
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t SessionConfigurationXPC.swiftRepresentation()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + OBJC_IVAR___SKRSessionConfigurationXPC_sessionId);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(v0 + OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration);
  return SessionConfiguration.init(sessionId:mafConfiguration:)();
}

uint64_t FlowTaskXPC.swiftRepresentation()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state);
  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated);
  v10 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id);
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8);
  (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime, v1, v4);
  v11 = type metadata accessor for FlowTask(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v9;
  *(v14 + 32) = v7;
  *(v14 + 33) = v8;
  (*(v2 + 32))(v14 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v6, v1);

  return v14;
}

uint64_t outlined init with copy of InvocationStateImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = type metadata accessor for InputOrigin();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = a3[7];
  v12 = type metadata accessor for InteractionType();
  (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
  v13 = a3[8];
  v14 = type metadata accessor for AudioSource();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[9];
  v18 = type metadata accessor for AudioDestination();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(&a2[v17], 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v17], &a2[v17], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(&a1[v17], &a2[v17], v18);
    (*(v19 + 56))(&a1[v17], 0, 1, v18);
  }

  v21 = a3[10];
  v22 = type metadata accessor for ResponseMode();
  (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
  v23 = a3[11];
  v24 = type metadata accessor for MultiUserContext();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(&a2[v23], 1, v24))
  {
    v26 = type metadata accessor for MultiUserState();
    memcpy(&a1[v23], &a2[v23], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v25 + 16))(&a1[v23], &a2[v23], v24);
    (*(v25 + 56))(&a1[v23], 0, 1, v24);
  }

  v27 = a3[12];
  v28 = a3[13];
  v29 = &a1[v27];
  v30 = &a2[v27];
  v31 = *(v30 + 1);
  *v29 = *v30;
  *(v29 + 1) = v31;
  a1[v28] = a2[v28];
  v32 = a3[15];
  a1[a3[14]] = a2[a3[14]];
  a1[v32] = a2[v32];
  v33 = a3[17];
  a1[a3[16]] = a2[a3[16]];
  a1[v33] = a2[v33];
  v34 = a3[18];
  v35 = type metadata accessor for Locale();
  v36 = *(*(v35 - 8) + 16);

  v36(&a1[v34], &a2[v34], v35);
  v37 = a3[19];
  v38 = type metadata accessor for SiriVoiceGender();
  (*(*(v38 - 8) + 16))(&a1[v37], &a2[v37], v38);
  v39 = a3[20];
  v40 = a3[21];
  v76 = *&a2[v39];
  *&a1[v39] = v76;
  v41 = &a1[v40];
  v42 = &a2[v40];
  v43 = *(v42 + 1);
  *v41 = *v42;
  *(v41 + 1) = v43;
  v44 = a3[22];
  v45 = a3[23];
  v46 = &a1[v44];
  v47 = &a2[v44];
  v48 = *(v47 + 1);
  *v46 = *v47;
  *(v46 + 1) = v48;
  v49 = &a1[v45];
  v50 = &a2[v45];
  v51 = *(v50 + 1);
  *v49 = *v50;
  *(v49 + 1) = v51;
  v52 = a3[24];
  v53 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v54 = *(v53 - 8);
  v75 = *(v54 + 48);
  v55 = v76;

  if (v75(&a2[v52], 1, v53))
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v52], &a2[v52], *(*(v56 - 8) + 64));
  }

  else
  {
    (*(v54 + 16))(&a1[v52], &a2[v52], v53);
    (*(v54 + 56))(&a1[v52], 0, 1, v53);
  }

  v57 = a3[25];
  v58 = type metadata accessor for BargeInContext();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(&a2[v57], 1, v58))
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v57], &a2[v57], *(*(v60 - 8) + 64));
  }

  else
  {
    (*(v59 + 16))(&a1[v57], &a2[v57], v58);
    (*(v59 + 56))(&a1[v57], 0, 1, v58);
  }

  v61 = a3[26];
  v62 = type metadata accessor for Restrictions();
  (*(*(v62 - 8) + 16))(&a1[v61], &a2[v61], v62);
  v63 = a3[27];
  v64 = type metadata accessor for HomeInfo();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(&a2[v63], 1, v64))
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v63], &a2[v63], *(*(v66 - 8) + 64));
  }

  else
  {
    (*(v65 + 16))(&a1[v63], &a2[v63], v64);
    (*(v65 + 56))(&a1[v63], 0, 1, v64);
  }

  v67 = a3[28];
  v68 = a3[29];
  v69 = &a1[v67];
  v70 = &a2[v67];
  v71 = *(v70 + 1);
  *v69 = *v70;
  *(v69 + 1) = v71;
  *&a1[v68] = *&a2[v68];
  v72 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v72] = a2[v72];
  v73 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v73] = a2[v73];

  return a1;
}

uint64_t ServiceBridge.errorHandlingProxy.getter()
{
  type metadata accessor for ServiceBridgeErrorHandlingProxy();
  v0 = swift_allocObject();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    *(v0 + 16) = v1;
    swift_unknownObjectRetain();
    return v0;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v3 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v3);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.init(coder:)(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v220 = &v196 - v5;
  v6 = type metadata accessor for RequestPositionInSession();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v222 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v196 - v11;
  v217 = type metadata accessor for DeviceRestrictions();
  v216 = *(v217 - 8);
  v13 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v214 = &v196 - v16;
  v229 = type metadata accessor for Restrictions();
  v223 = *(v229 - 8);
  v17 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v221 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v234 = &v196 - v20;
  v21 = type metadata accessor for NSFastEnumerationIterator();
  v233 = *(v21 - 8);
  v22 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v241 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v196 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v219 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v224 = &v196 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v239 = &v196 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v196 - v36;
  v238 = type metadata accessor for ResponseMode();
  v230 = *(v238 - 8);
  v38 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v218 = &v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v237 = &v196 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v228 = &v196 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v236 = &v196 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v227 = &v196 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v235 = &v196 - v51;
  v240 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v52 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v52)
  {

    swift_getObjectType();
    v59 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v60 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v231 = v12;
  v213 = v7;
  v232 = v6;
  v53 = v52;
  v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = v54;

  v55 = MEMORY[0x1E12A1410](0x756F536F69647561, 0xEB00000000656372);
  v56 = [a1 containsValueForKey_];

  v225 = v1;
  if (v56)
  {
    v57 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v57)
    {
      v58 = v57;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    AudioSource.init(aceValue:)();
  }

  else
  {
    v62 = type metadata accessor for AudioSource();
    (*(*(v62 - 8) + 56))(v235, 1, 1, v62);
  }

  v63 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA867E0);
  v64 = [a1 containsValueForKey_];

  if (v64)
  {
    v65 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v68 = v238;
    AudioDestination.init(aceValue:)();
  }

  else
  {
    v67 = type metadata accessor for AudioDestination();
    (*(*(v67 - 8) + 56))(v236, 1, 1, v67);
    v68 = v238;
  }

  v69 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v69)
  {
    v70 = v69;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ResponseMode.init(aceValue:)();
  v71 = v230;
  v72 = *(v230 + 48);
  if (v72(v37, 1, v68) == 1)
  {
    static ResponseMode.displayForward.getter();
    if (v72(v37, 1, v68) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    (*(v71 + 32))(v237, v37, v68);
  }

  v73 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  v210 = [a1 decodeBoolForKey_];

  v74 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  v209 = [a1 decodeBoolForKey_];

  v75 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  v208 = [a1 decodeBoolForKey_];

  v76 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  v207 = [a1 decodeBoolForKey_];

  v77 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA823B0);
  v206 = [a1 decodeBoolForKey_];

  v78 = MEMORY[0x1E12A1410](0x6563697665447369, 0xEE0064656B636F4CLL);
  v204 = [a1 decodeBoolForKey_];

  v79 = MEMORY[0x1E12A1410](0x6F666E4972656570, 0xE800000000000000);
  v80 = [a1 containsValueForKey_];

  if (v80)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFPeerInfo, 0x1E698D1B0);
    v205 = NSCoder.decodeObject<A>(of:forKey:)();
    v81 = v205;
  }

  else
  {
    v205 = 0;
  }

  v82 = MEMORY[0x1E12A1410](0x746E696F70646E65, 0xEC0000006F666E49);
  v83 = [a1 containsValueForKey_];

  if (v83)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFEndpointInfo, 0x1E698D138);
    v203 = NSCoder.decodeObject<A>(of:forKey:)();
    v84 = v203;
  }

  else
  {
    v203 = 0;
  }

  v85 = MEMORY[0x1E12A1410](0x65636E6174736E69, 0xEC0000006F666E49);
  v86 = [a1 containsValueForKey_];

  if (v86)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFInstanceInfo, 0x1E698D170);
    v202 = NSCoder.decodeObject<A>(of:forKey:)();
    v87 = v202;
  }

  else
  {
    v202 = 0;
  }

  v88 = MEMORY[0x1E12A1410](0xD00000000000001ELL, 0x80000001DCA86800);
  v89 = [a1 containsValueForKey_];

  if (v89)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDateInterval, 0x1E696AB80);
    v90 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v90)
    {
      v91 = v224;
      v92 = v90;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = 0;
    }

    else
    {
      v93 = 1;
      v91 = v224;
    }

    v95 = type metadata accessor for DateInterval();
    (*(*(v95 - 8) + 56))(v91, v93, 1, v95);
    outlined init with take of DateInterval?(v91, v239);
  }

  else
  {
    v94 = type metadata accessor for DateInterval();
    (*(*(v94 - 8) + 56))(v239, 1, 1, v94);
  }

  v96 = MEMORY[0x1E12A1410](0x74616E696769726FLL, 0xEF656D6F48676E69);
  v97 = [a1 containsValueForKey_];

  if (v97)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFHomeInfo, 0x1E698D158);
    v201 = NSCoder.decodeObject<A>(of:forKey:)();
    v98 = v201;
  }

  else
  {
    v201 = 0;
  }

  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v99 = swift_allocObject();
  v198 = xmmword_1DCA65720;
  *(v99 + 16) = xmmword_1DCA65720;
  v100 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v101 = v240;
  *(v99 + 32) = v100;
  *(v99 + 40) = v101;
  NSCoder.decodeObject(of:forKey:)();

  v200 = v100;
  if (v246)
  {
    if (swift_dynamicCast())
    {
      v102 = v242;
      goto LABEL_42;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v245, &_sypSgMd, &_sypSgMR);
  }

  v102 = MEMORY[0x1E12A1CA0](MEMORY[0x1E69E7CC0]);
LABEL_42:
  NSArray.makeIterator()();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0]);
  dispatch thunk of IteratorProtocol.next()();
  v226 = a1;
  if (v246)
  {
    v224 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v245, &v242);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v103 = v244;
        if (!v244)
        {
          break;
        }

        v104 = v243;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v224 + 2) + 1, 1, v224);
        }

        v106 = *(v224 + 2);
        v105 = *(v224 + 3);
        if (v106 >= v105 >> 1)
        {
          v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v224);
        }

        v107 = v224;
        *(v224 + 2) = v106 + 1;
        v108 = &v107[16 * v106];
        *(v108 + 4) = v104;
        *(v108 + 5) = v103;
        dispatch thunk of IteratorProtocol.next()();
        a1 = v226;
        if (!v246)
        {
          goto LABEL_55;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v246);
    a1 = v226;
  }

  else
  {
    v224 = MEMORY[0x1E69E7CC0];
  }

LABEL_55:
  v109 = 0x7463697274736572;

  v110 = *(v233 + 8);
  v233 += 8;
  v197 = v110;
  v110(v26, v21);
  v111 = MEMORY[0x1E12A1410](0x7463697274736572, 0xEC000000736E6F69);
  v112 = [a1 containsValueForKey_];

  if ((v112 & 1) == 0)
  {
    v116 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA86820);
    [a1 decodeIntegerForKey_];

    v117 = v214;
    DeviceRestrictions.init(rawValue:)();
    v118 = v216;
    v119 = v217;
    (*(v216 + 16))(v215, v117, v217);
    Restrictions.init(deviceRestrictions:)();
    (*(v118 + 8))(v117, v119);
    goto LABEL_76;
  }

  v113 = swift_allocObject();
  *(v113 + 16) = v198;
  v114 = v240;
  *(v113 + 32) = v200;
  *(v113 + 40) = v114;
  NSCoder.decodeObject(of:forKey:)();

  if (!v246)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v245, &_sypSgMd, &_sypSgMR);
    goto LABEL_61;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v115 = MEMORY[0x1E12A1CA0](MEMORY[0x1E69E7CC0]);
    goto LABEL_62;
  }

  v115 = v242;
LABEL_62:
  NSArray.makeIterator()();
  dispatch thunk of IteratorProtocol.next()();
  if (v246)
  {
    v109 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v245, &v242);
        if (swift_dynamicCast())
        {
          v120 = v244;
          if (v244)
          {
            break;
          }
        }

        dispatch thunk of IteratorProtocol.next()();
        if (!v246)
        {
          goto LABEL_75;
        }
      }

      v121 = v243;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 16) + 1, 1, v109);
      }

      v123 = *(v109 + 16);
      v122 = *(v109 + 24);
      if (v123 >= v122 >> 1)
      {
        v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v109);
      }

      *(v109 + 16) = v123 + 1;
      v124 = v109 + 16 * v123;
      *(v124 + 32) = v121;
      *(v124 + 40) = v120;
      dispatch thunk of IteratorProtocol.next()();
      a1 = v226;
    }

    while (v246);
  }

  else
  {
    v109 = MEMORY[0x1E69E7CC0];
  }

LABEL_75:

  v197(v241, v21);
  Restrictions.init(aceValue:)();
LABEL_76:
  v125 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v125)
  {
    v126 = v125;
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.executor);
    v126 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v126, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_1DC659000, v126, v131, "Could not decode currentDeviceAssistantId, setting to empty string", v132, 2u);
      MEMORY[0x1E12A2F50](v132, -1, -1);
    }

    v127 = 0;
    v129 = 0xE000000000000000;
  }

  v133 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA825F0);
  LODWORD(v233) = [a1 decodeBoolForKey_];

  v134 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7D210);
  LODWORD(v217) = [a1 decodeBoolForKey_];

  v135 = MEMORY[0x1E12A1410](0x6863656570537369, 0xEF74736575716552);
  LODWORD(v216) = [a1 decodeBoolForKey_];

  v136 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA83F60);
  LODWORD(v215) = [a1 decodeBoolForKey_];

  v137 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v137)
  {
    *&v245 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo8NSStringCABGMd, &_sSDySo8NSStringCABGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v138 = swift_dynamicCast();
    v139 = v242;
    if (!v138)
    {
      v139 = 0;
    }

    v214 = v139;
  }

  else
  {
    v214 = 0;
  }

  v140 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA86880);
  LODWORD(v200) = [a1 decodeBoolForKey_];

  v141 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  v142 = [a1 containsValueForKey_];

  if (!v142)
  {
    goto LABEL_92;
  }

  v143 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  v144 = [a1 decodeInt64ForKey_];

  if ((v144 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_120;
  }

  if (HIDWORD(v144))
  {
    __break(1u);
LABEL_92:
    v144 = 0;
  }

  v109 = v127;
  v145 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
  v146 = [a1 containsValueForKey_];

  if (v146)
  {
    v147 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
    LODWORD(v127) = [a1 decodeBoolForKey_];

    if (one-time initialization token for executor == -1)
    {
LABEL_95:
      v148 = type metadata accessor for Logger();
      __swift_project_value_buffer(v148, static Logger.executor);
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 67109120;
        *(v151 + 4) = v127;
        _os_log_impl(&dword_1DC659000, v149, v150, "#jindoRF SKE ReqContextData - Got isSystemUI %{BOOL}d", v151, 8u);
        MEMORY[0x1E12A2F50](v151, -1, -1);
      }

      goto LABEL_99;
    }

LABEL_120:
    swift_once();
    goto LABEL_95;
  }

  LODWORD(v127) = 0;
LABEL_99:
  v152 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
  v153 = [a1 containsValueForKey_];

  v199 = v129;
  LODWORD(v197) = v127;
  v196 = v144;
  if (v153)
  {
    v154 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
    LODWORD(v241) = [a1 decodeBoolForKey_];

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v155 = type metadata accessor for Logger();
    __swift_project_value_buffer(v155, static Logger.executor);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 67109120;
      *(v158 + 4) = v241;
      _os_log_impl(&dword_1DC659000, v156, v157, "#liveActivitiesSupported SKE ReqContextData - Got isLiveActivitiesSupported %{BOOL}d", v158, 8u);
      MEMORY[0x1E12A2F50](v158, -1, -1);
    }
  }

  else
  {
    LODWORD(v241) = 0;
  }

  *&v198 = v109;
  v159 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
  v160 = [a1 containsValueForKey_];

  if (v160)
  {
    v161 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
    LODWORD(v240) = [a1 decodeBoolForKey_];

    v162 = &selRef_setMitigationSource_;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v163 = type metadata accessor for Logger();
    __swift_project_value_buffer(v163, static Logger.executor);
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.debug.getter();
    v166 = os_log_type_enabled(v164, v165);
    v167 = v220;
    v168 = v213;
    v169 = v232;
    if (v166)
    {
      v170 = swift_slowAlloc();
      *v170 = 67109120;
      *(v170 + 4) = v240;
      _os_log_impl(&dword_1DC659000, v164, v165, "#ambientRF SKE ReqContextData - Got isInAmbient %{BOOL}d", v170, 8u);
      MEMORY[0x1E12A2F50](v170, -1, -1);
    }
  }

  else
  {
    LODWORD(v240) = 0;
    v167 = v220;
    v162 = &selRef_setMitigationSource_;
    v168 = v213;
    v169 = v232;
  }

  v171 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA86900);
  [a1 v162[25]];

  RequestPositionInSession.init(rawValue:)();
  v172 = *(v168 + 48);
  if (v172(v167, 1, v169) == 1)
  {
    (*(v168 + 104))(v231, *MEMORY[0x1E69CE5A0], v169);
    if (v172(v167, 1, v169) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    }
  }

  else
  {
    (*(v168 + 32))(v231, v167, v169);
  }

  type metadata accessor for RequestConjunctionInfo();
  v173 = NSCoder.decodeObject<A>(of:forKey:)();
  ObjectType = swift_getObjectType();
  outlined init with copy of ReferenceResolutionClientProtocol?(v235, v227, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v236, v228, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v175 = v230;
  v176 = v218;
  (*(v230 + 16))(v218, v237, v238);
  v177 = v219;
  outlined init with copy of ReferenceResolutionClientProtocol?(v239, v219, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v178 = v223;
  v179 = v221;
  (*(v223 + 16))(v221, v234, v229);
  v180 = v222;
  (*(v168 + 16))(v222, v231, v232);
  v181 = *(ObjectType + 344);
  HIBYTE(v195) = v204;
  LOBYTE(v195) = v206;
  v193 = v180;
  v194 = v173;
  BYTE2(v192) = v240;
  BYTE1(v192) = v241;
  LOBYTE(v192) = v197;
  HIDWORD(v191) = v196;
  LOBYTE(v191) = v200;
  HIBYTE(v190) = v215;
  BYTE2(v190) = v216;
  BYTE1(v190) = v233;
  LOBYTE(v190) = v217;
  v189 = v179;
  v182 = v201;
  v183 = v202;
  v184 = v203;
  v185 = v205;
  v61 = v181(v212, v211, v227, v228, v176, v210, v209, v208, v207, v205, v203, v202, v224, v177, v189, v201, v198, v199, v190, v214, v191, v192, v193, v194, v195);

  (*(v168 + 8))(v231, v232);
  (*(v178 + 8))(v234, v229);
  outlined destroy of ReferenceResolutionClientProtocol?(v239, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v175 + 8))(v237, v238);
  outlined destroy of ReferenceResolutionClientProtocol?(v236, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v235, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v186 = *((*MEMORY[0x1E69E7D40] & *v225) + 0x30);
  v187 = *((*MEMORY[0x1E69E7D40] & *v225) + 0x34);
  swift_deallocPartialClassInstance();
  return v61;
}

uint64_t type metadata accessor for ConversationTurnStateImpl()
{
  result = type metadata singleton initialization cache for ConversationTurnStateImpl;
  if (!type metadata singleton initialization cache for ConversationTurnStateImpl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TaskData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime8TaskDataV10CodingKeys33_E362094781F6D4C1E1664AD191278514LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime8TaskDataV10CodingKeys33_E362094781F6D4C1E1664AD191278514LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = *v3;
  v28[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow07DefaultC8ActivityCGMd, &_sSay11SiriKitFlow07DefaultC8ActivityCGMR);
  lazy protocol witness table accessor for type [DefaultFlowActivity] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  LOBYTE(v29) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = *(v3 + 24);
  LOBYTE(v29) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[4];
  v15 = v3[5];
  LOBYTE(v29) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[6];
  v17 = v3[7];
  LOBYTE(v29) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[8];
  v19 = v3[9];
  LOBYTE(v29) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[10];
  v21 = v3[11];
  LOBYTE(v29) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v3[12];
  v23 = v3[13];
  LOBYTE(v29) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = v3[14];
  v25 = v3[15];
  LOBYTE(v29) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = v3[16];
  LOBYTE(v29) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

uint64_t destroy for TaskData(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];

  v4 = a1[5];

  v5 = a1[7];

  v6 = a1[9];

  v7 = a1[11];

  v8 = a1[13];

  v9 = a1[15];
}

uint64_t specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(uint64_t a1, unint64_t a2)
{
  v15[0] = a1;
  v15[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    v7 = *v5;
    v6 = v5[1];

    v8._countAndFlagsBits = 20041;
    v8._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v8))
    {
      MEMORY[0x1E12A1580](v7, v6);

      return 20041;
    }
  }

  else
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v7 = 0x6465737261706E55;
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.instrumentation);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
      _os_log_impl(&dword_1DC659000, v10, v11, "#SiriKitMetricsUtils - intent name extraction error for intentTypeName: %s, returning UnparsedIntent TaskType", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type TaskData and conformance TaskData()
{
  result = lazy protocol witness table cache variable for type TaskData and conformance TaskData;
  if (!lazy protocol witness table cache variable for type TaskData and conformance TaskData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData and conformance TaskData);
  }

  return result;
}

uint64_t ResultCandidateState.conversationUserInputId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

unint64_t specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9)
{
  v64 = a2;
  v65 = a8;
  v63 = a1;
  v14 = type metadata accessor for ActivityType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.Encoding();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(&a9 + 1))
  {
    v64 = a4;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.instrumentation);
    (*(v15 + 16))(v18, a3, v14);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v68 = v39;
      *v38 = 136315650;
      LODWORD(v63) = v37;
      v40 = ActivityType.rawValue.getter();
      v62 = a7;
      v42 = v41;
      (*(v15 + 8))(v18, v14);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v68);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, a5, &v68);
      *(v38 + 22) = 2080;
      *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v65, &v68);
      _os_log_impl(&dword_1DC659000, v36, v63, "#TaskLoggingService - TaskId from MetricsState is Nil, can not be aggregated into a Task. Not logging Task step: %s, Status reason: %s with Task attribute: %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    return 0;
  }

  v61[1] = v23;
  v62 = a7;
  v24 = v65;
  MEMORY[0x1EEE9AC00](v21);
  v61[-8] = a3;
  v61[-7] = a4;
  v61[-6] = a5;
  *&v61[-5] = a9;
  v61[-3] = v25;
  v61[-2] = v24;
  v26 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:), &v61[-10], a6);

  v27 = ActivityType.rawValue.getter();
  v29 = v28;

  v30 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v63, v64);
  *&v68 = v26;
  *(&v68 + 1) = v62;
  *&v69 = v24;
  BYTE8(v69) = 0;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  *&v72 = a4;
  *(&v72 + 1) = a5;
  *&v73 = v27;
  *(&v73 + 1) = v29;
  v74 = a9;
  *&v75 = v30;
  *(&v75 + 1) = v31;
  v76 = 0x3FD999999999999ALL;
  v32 = type metadata accessor for JSONEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v66[6] = v74;
  v66[7] = v75;
  v67 = v76;
  v66[2] = v70;
  v66[3] = v71;
  v66[4] = v72;
  v66[5] = v73;
  v66[0] = v68;
  v66[1] = v69;
  lazy protocol witness table accessor for type TaskData and conformance TaskData();
  v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v46 = v45;
  outlined destroy of TaskData(&v68);
  static String.Encoding.utf8.getter();
  v47 = String.init(data:encoding:)();
  if (!v48)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.instrumentation);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC659000, v58, v59, "#TaskLoggingService - JSON encoding error, taskDataString is Nil", v60, 2u);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    outlined consume of Data._Representation(v44, v46);

    return 0;
  }

  v64 = a9;
  v65 = v47;
  v49 = one-time initialization token for instrumentation;
  v50 = v48;

  if (v49 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.instrumentation);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v66[0] = v55;
    *v54 = 136315394;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v50, v66);
    *(v54 + 12) = 2080;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, *(&a9 + 1), v66);
    _os_log_impl(&dword_1DC659000, v52, v53, "#TaskLoggingService - created TaskContent:%s, for taskId: %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  outlined consume of Data._Representation(v44, v46);

  return v65;
}

void *specialized Sequence.compactMap<A>(_:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1E12A1680](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

void closure #1 in static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v39 = a5;
  v40 = a7;
  v38 = a3;
  v41 = a9;
  v15 = type metadata accessor for ActivityType();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C8Activity_pMd, &_s11SiriKitFlow0C8Activity_pMR);
  type metadata accessor for DefaultFlowActivity();
  if (swift_dynamicCast())
  {
    v20 = v42[6];
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.instrumentation);
    (*(v16 + 16))(v19, a2, v15);

    v22 = a8;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = v9;
      v26 = v25;
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v26 = 136315906;
      v34 = v22;
      v27 = ActivityType.rawValue.getter();
      v35 = v24;
      v28 = a6;
      v30 = v29;
      (*(v16 + 8))(v19, v15);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v42);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a4, v42);
      *(v26 + 22) = 2080;
      *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v28, v42);
      *(v26 + 32) = 2080;
      *(v26 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v34, v42);
      _os_log_impl(&dword_1DC659000, v23, v35, "#TaskLoggingService - Skipping unsupported flow activity. Not logging Task step: %s, Status reason: %s for taskId: %s, with attribute: %s", v26, 0x2Au);
      v32 = v36;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v20 = 0;
  }

  *v41 = v20;
}

uint64_t initializeWithCopy for TaskData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v9;
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), 0, 0);
}

{
  v27 = v0;
  v1 = v0[2];
  if (!v1)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_5;
  }

  v3 = v0[3];
  v2 = v0[4];
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

LABEL_5:
    v4 = v0[9];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "#SiriKitBiomeDonator - Background donation task stopped", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = v0[8];

    v9 = v0[1];

    return v9();
  }

  v11 = v0[9];
  v12 = v0[5];
  v13 = v12[5];
  v14 = v12[6];
  __swift_project_boxed_opaque_existential_1(v12 + 2, v13);
  (*(v14 + 8))(v1, v13, v14);

  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    if (v2)
    {
      v20 = v2;
    }

    else
    {
      v3 = 0x3E6C696E3CLL;
      v20 = 0xE500000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v20, &v26);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v16, v17, "#SiriKitBiomeDonator - donated execution event to BIOME for taskId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v22 = *(MEMORY[0x1E69E8678] + 4);
  v23 = swift_task_alloc();
  v0[10] = v23;
  *v23 = v0;
  v23[1] = closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:);
  v24 = v0[8];
  v25 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v25);
}

{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.instrumentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "#SiriKitBiomeDonator - Background donation task started", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  AsyncStream.makeAsyncIterator()();
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:);
  v9 = v0[8];
  v10 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v10);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);

  v17 = a2;
  v18 = one-time initialization token for shared;
  v19 = a4;

  v20 = a1;
  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static MessageBusActor.shared;
  v22 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a3;
  v23[5] = a2;
  v24 = v26;
  v23[6] = v19;
  v23[7] = v24;
  v23[8] = a6;
  v23[9] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v23);
  (*(*v15 + 120))();
}

uint64_t sub_1DC6AD5C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void ConversationBridgeInstrumentationUtil.logFlowOutputSubmitted(outputSubmissionId:flowCommandReceived:flowCommandResponseError:requestId:rootRequestId:executionOutput:)(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v105 = a4;
  v106 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  v109 = type metadata accessor for UUID();
  isa = v109[-1].isa;
  v23 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v107 = &v93 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v30 = a7;
  if (!a7)
  {
    v30 = v106;

    a6 = v105;
  }

  v31 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a6, v30, 0, 0, 0);
  if (!v31)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.conversationBridge);

    v109 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v109, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v110 = v44;
      *v43 = 136315138;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, v30, &v110);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_1DC659000, v109, v42, "Failed to create wrapper event with rootRequestId = %s for logFlowOutputSubmitted", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);

      return;
    }

    goto LABEL_19;
  }

  v32 = v31;

  v33 = [objc_allocWithZone(MEMORY[0x1E69CF350]) init];
  if (!v33)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);
    v109 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v109, v47, "Failed to create ORCHSchemaORCHFlowOutputSubmitted event", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

LABEL_19:
    v49 = v109;

    return;
  }

  v34 = v33;
  [v33 setFlowOutputSubmissionId_];
  [v34 setFlowCommandReceived_];
  v103 = v34;
  [v34 setFlowCommandResponseError_];
  v35 = *(a8 + OBJC_IVAR___SKRExecutionOutput_command);
  v36 = v109;
  v37 = isa;
  if (!v35)
  {
    goto LABEL_51;
  }

  v38 = off_1E8646000;
  v39 = [v35 aceId];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*(v37 + 6))(v22, 1, v36) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v38 = off_1E8646000;
    }

    else
    {
      (*(v37 + 4))(v29, v22, v36);
      v50 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v51 = UUID._bridgeToObjectiveC()().super.isa;
      v52 = [v50 initWithNSUUID_];

      (*(v37 + 1))(v29, v36);
      v38 = off_1E8646000;
      if (v52)
      {
        [v103 setAceCommandId_];
      }
    }
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
LABEL_51:
    v78 = v102;
    v79 = v102[13];
    v80 = v102[14];
    __swift_project_boxed_opaque_existential_1(v102 + 10, v79);
    v81 = (*(v80 + 16))(v79, v80);
    v82 = v103;
    if (v81)
    {
      v83 = v100;
      UUID.init(uuidString:)();
      if ((*(v37 + 6))(v83, 1, v36) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_57:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        __swift_project_value_buffer(v88, static Logger.conversationBridge);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = v82;
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1DC659000, v89, v90, "Failed to convert subRequestLogId for logFlowOutputSubmitted", v92, 2u);
          MEMORY[0x1E12A2F50](v92, -1, -1);

          return;
        }

        goto LABEL_62;
      }

      v84 = v99;
      (*(v37 + 4))(v99, v83, v36);
      v85 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v86 = UUID._bridgeToObjectiveC()().super.isa;
      v87 = [v85 initWithNSUUID_];

      (*(v37 + 1))(v84, v36);
      if (!v87)
      {
        goto LABEL_57;
      }

      [v82 setSubRequestId_];
    }

    [v32 setFlowOutputSubmitted_];
    [v78[2] emitMessage_];
LABEL_62:

    return;
  }

  v54 = v53;
  v55 = v35;
  v56 = [v54 views];
  if (!v56)
  {
LABEL_50:

    goto LABEL_51;
  }

  v57 = v56;
  v94 = v55;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v96 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SISchemaUUID, 0x1E69CF638);
  v59 = Array._bridgeToObjectiveC()().super.isa;
  [v103 setAceViewIds_];

  v95 = v32;
  if (v58 >> 62)
  {
    v60 = __CocoaSet.count.getter();
    if (v60)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v60)
  {
LABEL_49:

    v55 = v94;
    v32 = v95;
    v36 = v109;
    v37 = isa;
    goto LABEL_50;
  }

LABEL_28:
  if (v60 >= 1)
  {
    v61 = 0;
    v108 = v58 & 0xC000000000000001;
    v101 = (isa + 48);
    v97 = (isa + 8);
    v98 = (isa + 32);
    while (1)
    {
      if (v108)
      {
        v63 = MEMORY[0x1E12A1FE0](v61, v58);
      }

      else
      {
        v63 = *(v58 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = [v63 v38[427]];
      if (v65)
      {
        v66 = v65;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.init(uuidString:)();

        v67 = v109;
        if ((*v101)(v19, 1, v109) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_33;
        }

        v68 = v107;
        (*v98)(v107, v19, v67);
        v69 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v70 = UUID._bridgeToObjectiveC()().super.isa;
        v71 = [v69 initWithNSUUID_];

        (*v97)(v68, v67);
        if (!v71)
        {
          goto LABEL_47;
        }

        v72 = v103;
        v73 = [v103 aceViewIds];
        if (!v73)
        {
          [v72 setAceViewIds_];

LABEL_47:
          v38 = off_1E8646000;
          goto LABEL_33;
        }

        v74 = v73;
        v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v110 = v75;
        v76 = v71;
        MEMORY[0x1E12A1680]();
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v38 = off_1E8646000;
        if (v110)
        {
          v62 = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v62 = 0;
        }

        [v103 setAceViewIds_];
      }

LABEL_33:
      if (v60 == ++v61)
      {
        goto LABEL_49;
      }
    }
  }

  __break(1u);
}

uint64_t closure #1 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a4;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v33);
    a4 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitted FlowCommand: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  if (a2)
  {
    v19 = a1;
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v25 = Optional.debugDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v28 = Optional.debugDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v21, v22, "Error while submitting command. Response received: %s, error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }
  }

  return a4(a1, a2);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v9, 0);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)()
{
  v1 = *(v0 + 72);
  v2 = v1[18];
  if (v2)
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = v1[17];
    v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
    v7 = *(v0 + 72);
    v8 = (*(*v1 + 376))();
    (*(*v6 + 160))(v8, 1, v4 != 0, v5, v2, 0, 0, v3);
    v9 = (*(*v1 + 392))(v0 + 16);
    if (!__OFADD__(*v10, 1))
    {
      ++*v10;
      v9(v0 + 16, 0);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_12:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "Failed to find requestId for logging self message", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

LABEL_8:
  v15 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 112), *(v0 + 80));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t RunSiriKitExecutorProcessor.outputCounter.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t lazy protocol witness table accessor for type [DefaultFlowActivity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow07DefaultC8ActivityCGMd, &_sSay11SiriKitFlow07DefaultC8ActivityCGMR);
    lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A]);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConversationCommitResultXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SiriKitFlowActivity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12FlowActivityC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12FlowActivityC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v1 + class metadata base offset for SiriKitFlowActivity + 88))(v10);
  v23[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 112))(v11);
    v23[30] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 136))(v12);
    v23[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 160))(v13);
    v23[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 184))(v14);
    v23[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 208))(v15);
    v23[26] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 232))(v16);
    v23[25] = 6;
    v17 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 256))(v17);
    v23[24] = 7;
    v18 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 280))(v18);
    v23[15] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 304))(v20);
    v23[14] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 328))(v21);
    v23[13] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();

    type metadata accessor for DefaultFlowActivity();
    v22 = method lookup function for DefaultFlowActivity();
    v22(a1);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t SiriKitFlowActivity.isSiriKit.getter()
{
  v1 = direct field offset for SiriKitFlowActivity.isSiriKit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SiriKitFlowActivity.isSiriKitSupportedApp.getter()
{
  v1 = direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t getEnumTagSinglePayload for ConversationCommitResultXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

uint64_t ResultCandidateState.conversationUserInputId.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

unint64_t SiriKitFlowActivity.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6C646E7542707061;
    v7 = 0x6973726556707061;
    v8 = 0x646C697562;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656D614E707061;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x65736E6F70736572;
    v2 = 0x656D614E746F6C73;
    if (a1 != 9)
    {
      v2 = 0x64496E727574;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0x694B697269537369;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v5 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  if (swift_dynamicCast())
  {
    v15 = v29;
    v16 = [v29 aceId];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      UUID.init()();
      v18 = UUID.uuidString.getter();
      v20 = v21;
      (*(v11 + 8))(v14, v10);
    }

    v22 = MEMORY[0x1E12A1410](v18, v20);

    [v15 setAceId_];

    if (a4)
    {
      a2 = a4;
    }

    else
    {
      v23 = [v15 refId];
      if (v23)
      {
        v24 = v23;
        a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a2 = v25;
      }

      else
      {
        if (!a2)
        {
          v26 = 0;
          goto LABEL_13;
        }

        a3 = a1;
      }
    }

    v26 = MEMORY[0x1E12A1410](a3, a2);

LABEL_13:
    [v15 setRefId_];

    return v15;
  }

  return 0;
}

uint64_t SABaseCommand.isListenAfterSpeaking.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v41 = v0;
    v3 = [v2 views];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v5 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_21:

        return 0;
      }
    }

    v6 = __CocoaSet.count.getter();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E12A1FE0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 listenAfterSpeaking];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 BOOLValue];

          if (v13)
          {
LABEL_22:

            return 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_21;
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
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v0;
    v17 = [v15 listenAfterSpeaking];
    if (v17)
    {
LABEL_18:
      v18 = v17;
      v19 = [v17 BOOLValue];

      return v19;
    }

LABEL_25:

    return 0;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v16 = v0;
    v17 = [v22 listenAfterSpeaking];
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v23 = result;
    v39 = v0;
    v24 = [v23 callbacks];
    if (v24)
    {
      v25 = v24;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v40 = v26;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
LABEL_68:

        return 0;
      }

LABEL_34:
      v28 = 0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1E12A1FE0](v28, v40);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v28 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v29 = *(v40 + 32 + 8 * v28);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        v41 = v29;
        v31 = [v29 commands];
        if (v31)
        {
          v32 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        if (v33 >> 62)
        {
          v34 = __CocoaSet.count.getter();
          if (v34)
          {
LABEL_44:
            v35 = 0;
            do
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E12A1FE0](v35, v33);
                v37 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                v36 = *(v33 + 8 * v35 + 32);
                swift_unknownObjectRetain();
                v37 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v38 = SABaseCommand.isListenAfterSpeaking.getter();
                swift_unknownObjectRelease();
                if (v38)
                {

                  goto LABEL_22;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              ++v35;
            }

            while (v37 != v34);
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_44;
          }
        }

        if (v28 == v27)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v27 = __CocoaSet.count.getter();
    if (!v27)
    {
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  return result;
}

uint64_t SABaseCommand.isConfirmation.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 dialogPhase];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (v6 == 0x616D7269666E6F43 && v8 == 0xEC0000006E6F6974)
      {

        return 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v10 & 1;
      }
    }

    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v28 = v0;
  v13 = [v12 callbacks];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v15 >> 62)
  {
    goto LABEL_46;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_47:

    return 0;
  }

LABEL_16:
  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E12A1FE0](v17, v15);
    v19 = __OFADD__(v17++, 1);
    if (v19)
    {
      goto LABEL_41;
    }

LABEL_21:
    v29 = v18;
    v20 = [v18 commands];
    if (v20)
    {
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v22 >> 62))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_23:
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    v23 = __CocoaSet.count.getter();
    if (v23)
    {
LABEL_24:
      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v24, v22);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v25 = *(v22 + 8 * v24 + 32);
          swift_unknownObjectRetain();
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v16 = __CocoaSet.count.getter();
            if (!v16)
            {
              goto LABEL_47;
            }

            goto LABEL_16;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v27 = SABaseCommand.isConfirmation.getter();
          swift_unknownObjectRelease();
          if (v27)
          {
            goto LABEL_42;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v24;
      }

      while (v26 != v23);
    }

LABEL_17:

    if (v17 == v16)
    {
      goto LABEL_47;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  v18 = *(v15 + 32 + 8 * v17);
  v19 = __OFADD__(v17++, 1);
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
LABEL_42:

  return 1;
}

void ConversationOutputSubmitter.sendDialogEngineOutputMessageIfNecessary(output:requestId:assistantId:sessionId:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v89 = a2;
  v90 = a6;
  v87 = a4;
  v88 = a5;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v81 - v16;
  v18 = type metadata accessor for PommesContext();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = (MEMORY[0x1EEE9AC00])(v18);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR___SKRExecutionOutput_command) || !(*(a1 + OBJC_IVAR___SKRExecutionOutput_fullPrint + 8) | *(a1 + OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8)))
  {
    v24 = *(a1 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
    if (v24)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v24 + OBJC_IVAR___SKRExecutionContextUpdate_pommesContext, v17, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      if ((*(v19 + 48))(v17, 1, v18) != 1)
      {
        v81 = v6;
        v82 = a3;
        (*(v19 + 32))(v23, v17, v18);
        v91[0] = PommesContext.renderedTexts.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v85 = v18;
        v25 = BidirectionalCollection<>.joined(separator:)();
        v83 = v9;
        v84 = v19;
        v26 = v25;
        v28 = v27;

        v86 = v23;
        v91[0] = PommesContext.redactedRenderedTexts.getter();
        v29 = v26;
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        v91[0] = v26;
        v91[1] = v28;
        static CharacterSet.whitespacesAndNewlines.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v33 = StringProtocol.trimmingCharacters(in:)();
        v35 = v34;
        (*(v10 + 8))(v13, v83);

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (!v36)
        {
          (*(v84 + 8))(v86, v85);

          return;
        }

        v83 = v30;
        v37 = v84;
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.conversationBridge);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v91[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v91);
          _os_log_impl(&dword_1DC659000, v39, v40, "Publishing DialogEngineOutput for Pommes using renderedText: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          v43 = v42;
          v29 = v26;
          MEMORY[0x1E12A2F50](v43, -1, -1);
          MEMORY[0x1E12A2F50](v41, -1, -1);
        }

        MEMORY[0x1EEE9AC00](v44);
        v45 = v88;
        *(&v81 - 14) = v87;
        *(&v81 - 13) = v45;
        v46 = v89;
        *(&v81 - 12) = v90;
        *(&v81 - 11) = v46;
        v47 = v83;
        *(&v81 - 10) = v82;
        *(&v81 - 9) = v29;
        *(&v81 - 8) = v28;
        *(&v81 - 7) = v29;
        *(&v81 - 6) = v28;
        *(&v81 - 5) = v47;
        *(&v81 - 4) = v32;
        *(&v81 - 3) = v47;
        *(&v81 - 2) = v32;
        *(&v81 - 1) = v48;
        v49 = objc_allocWithZone(type metadata accessor for DialogEngineOutputMessage());
        v50 = DialogEngineOutputMessage.init(build:)();

        if (v50)
        {
          v51 = v81[8];
          __swift_project_boxed_opaque_existential_1(v81 + 4, v81[7]);
          if (dispatch thunk of MessagePublishing.postMessage(_:)())
          {
            (*(v37 + 8))(v86, v85);

            return;
          }

          v76 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v76, v79))
          {

            goto LABEL_36;
          }

          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_1DC659000, v76, v79, "Could not post DialogEngineOutputMessage", v80, 2u);
          MEMORY[0x1E12A2F50](v80, -1, -1);
        }

        else
        {
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_1DC659000, v76, v77, "Could not construct DialogEngineOutputMessage. Missing fields?", v78, 2u);
            MEMORY[0x1E12A2F50](v78, -1, -1);
          }
        }

LABEL_36:
        (*(v37 + 8))(v86, v85);
        return;
      }
    }

    else
    {
      (*(v19 + 56))(v17, 1, 1, v18);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    return;
  }

  v52 = *(a1 + OBJC_IVAR___SKRExecutionOutput_fullPrint);
  v53 = *(a1 + OBJC_IVAR___SKRExecutionOutput_fullSpeak);
  v54 = *(a1 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint);
  v55 = *(a1 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak);
  *&v56 = MEMORY[0x1EEE9AC00](v21);
  v57 = v88;
  *(&v81 - 14) = v87;
  *(&v81 - 13) = v57;
  v58 = v89;
  *(&v81 - 12) = v90;
  *(&v81 - 11) = v58;
  *(&v81 - 10) = a3;
  *(&v81 - 9) = v59;
  *(&v81 - 8) = v60;
  *(&v81 - 7) = v61;
  *(&v81 - 6) = v62;
  *(&v81 - 5) = v56;
  *(&v81 - 3) = v63;
  *(&v81 - 1) = v64;
  v65 = objc_allocWithZone(type metadata accessor for DialogEngineOutputMessage());
  v66 = DialogEngineOutputMessage.init(build:)();
  if (!v66)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.conversationBridge);
    v67 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1DC659000, v67, v74, "Could not construct DialogEngineOutputMessage. Missing fields?", v75, 2u);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }

    goto LABEL_29;
  }

  v67 = v66;
  v68 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v6[7]);
  if (dispatch thunk of MessagePublishing.postMessage(_:)())
  {
LABEL_29:

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.conversationBridge);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1DC659000, v70, v71, "Could not post DialogEngineOutputMessage", v72, 2u);
    MEMORY[0x1E12A2F50](v72, -1, -1);
  }
}

void SelfReflectionAgent.check(executionOutput:)(char *a1@<X8>)
{
  v3 = (*v1 + 320);
  v4 = *v3;
  (*v3)(v50);
  v5 = outlined destroy of SelfReflectionResponse(v50);
  if (LOBYTE(v50[0]) == 2)
  {
    SelfReflectionAgent.determineMitigateResult(from:)(v47);
    v6 = v47[0];
    v44 = *&v47[1];
    v45 = v48;
    v46[0] = *v49;
    *(v46 + 15) = *&v49[15];
    if (v47[0] == 3)
    {
      v7 = v1[2];
      v8 = *(*v1 + 200);
      v9 = v8();
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      (*(*v7 + 192))(2, v11, v12);

      v14 = (v8)(v13);
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      (*(*v7 + 232))(5, v16, v17);
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, v47);
      *(v21 + 12) = 2080;
      LOBYTE(v43) = v6;
      v23 = SelfReflectionAgentDecision.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v47);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_1DC659000, v19, v20, "SelfReflectionAgent.%s mitigation result: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v47[0] = v6;
    *&v47[1] = v44;
    v48 = v45;
    *v49 = v46[0];
    *&v49[15] = *(v46 + 15);
    (*(*v1 + 328))(v47);
    *a1 = v6;
  }

  else
  {
    (v4)(v47, v5);
    outlined destroy of SelfReflectionResponse(v47);
    if (v47[0] == 5)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationBridge);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v43 = v30;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, &v43);
        *(v29 + 12) = 2080;
        v4(&v44);
        outlined destroy of SelfReflectionResponse(&v44);
        v31 = SelfReflectionAgentDecision.description.getter();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v43);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_1DC659000, v27, v28, "SelfReflectionAgent.%s returned %s for current turn. The rest of ExecutionOutputs should be unchanged.", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v30, -1, -1);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      v34 = 2;
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.conversationBridge);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43 = v39;
        *v38 = 136315394;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, &v43);
        *(v38 + 12) = 2080;
        v4(&v44);
        outlined destroy of SelfReflectionResponse(&v44);
        v40 = SelfReflectionAgentDecision.description.getter();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v43);

        *(v38 + 14) = v42;
        _os_log_impl(&dword_1DC659000, v36, v37, "SelfReflectionAgent.%s already mitigated for current turn %s. Ignoring the rest of ExecutionOutputs.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v39, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }

      v34 = 3;
    }

    *a1 = v34;
  }
}

uint64_t RunSiriKitExecutorProcessor.requestFinished.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RunSiriKitExecutorProcessor.flowPluginInfo.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for ConversationContextUpdateMetadata()
{
  result = type metadata singleton initialization cache for ConversationContextUpdateMetadata;
  if (!type metadata singleton initialization cache for ConversationContextUpdateMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationContextUpdateMetadata.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v4 = type metadata accessor for UserID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RunSiriKitExecutorProcessor.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

uint64_t RunSiriKitExecutorProcessor.meetsUserSessionThreshold.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationOutputSubmitter.selfReflectionAgent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

void SelfReflectionAgent.determineMitigateResult(from:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkAvailability.Status();
  v215 = *(v4 - 8);
  v5 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v199[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v220 = &v199[-v9];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v199[-v12];
  v14 = *(*v1 + 200);
  v15 = (v14)(v11);
  if (!v16)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_21;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v228 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v228);
    v43 = "SelfReflectionAgent.%s requestId was not set";
    goto LABEL_20;
  }

  v17 = v16;
  v207 = v15;
  v18 = (*(*v1 + 224))();
  if (!v18)
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.conversationBridge);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_21;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v228 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v228);
    v43 = "SelfReflectionAgent.%s resultCandidateState was not set";
LABEL_20:
    _os_log_impl(&dword_1DC659000, v39, v40, v43, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v41, -1, -1);
LABEL_21:

    *(a1 + 4) = 514;
    *a1 = 33686018;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 513;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    return;
  }

  v205 = v7;
  v210 = v13;
  v206 = v17;
  v211 = v4;
  v217 = v18;
  v214 = ExecutionOutput.hasCantUnderstandDialog.getter();
  v213 = ExecutionOutput.hasCantDoDialog.getter();
  v204 = ExecutionOutput.hasUnsupportedDialog.getter();
  v19 = ExecutionOutput.catIdentifiers.getter();
  v20 = ExecutionOutput.catCategories.getter();
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_175;
  }

  while (1)
  {
    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v23 = v217;
    swift_retain_n();

    v208 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    v26 = os_log_type_enabled(v24, v25);
    v218 = v19;
    v219 = v2;
    v212 = v20;
    if (v26)
    {
      LODWORD(v221) = v25;
      v27 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v223 = v216;
      *v27 = 136317442;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v223);
      *(v27 + 12) = 2080;
      v28 = (v14)();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v223);

      *(v27 + 14) = v31;
      *(v27 + 22) = 1024;
      *(v27 + 24) = v214 & 1;
      *(v27 + 28) = 1024;
      *(v27 + 30) = v213 & 1;
      *(v27 + 34) = 1024;
      *(v27 + 36) = v204 & 1;
      *(v27 + 40) = 1024;
      v33 = *(*v23 + 904);
      v34 = v33(v32);
      v35 = v34;
      if (v34)
      {
        v36 = (*(*v34 + 264))(v34);

        if (v36 && (v37 = [v36 speechEvent], v36, (v37 - 30) <= 5))
        {
          v35 = dword_1DCA74614[(v37 - 30)];
        }

        else
        {
          v35 = 0;
        }
      }

      *(v27 + 42) = v35;

      *(v27 + 46) = 1024;
      v47 = v33(v46);
      if (v47)
      {
        v48 = (*(*v47 + 264))();

        v49 = v216;
        if (v48)
        {
          v50 = [v48 speechEvent];

          v51 = 0;
          if (v50 <= 0x10)
          {
            v51 = ((1 << v50) & 0x18100) != 0;
          }
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
        v49 = v216;
      }

      *(v27 + 48) = v51;

      *(v27 + 52) = 2080;
      v52 = Set.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v223);

      *(v27 + 54) = v54;
      v19 = v218;
      *(v27 + 62) = 2080;
      v55 = Set.description.getter();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v223);

      v2 = v219;
      *(v27 + 64) = v57;
      *(v27 + 72) = 2080;
      (*(*v2 + 296))(&v224, v58);
      v228 = v224;
      v229 = v225;
      v230 = v226;
      v231 = v227;
      outlined destroy of SelfReflectionResponse(&v228);
      v222 = v228;
      v59 = SelfReflectionAgentDecision.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v223);

      *(v27 + 74) = v14;
      _os_log_impl(&dword_1DC659000, v24, v221, "SelfReflectionAgent.%s requestId: %s hasCantUnderstandDialog: %{BOOL}d hasCantDoDialog: %{BOOL}d hasUnsupportedDialog: %{BOOL}d isFlexibleFollowUp: %{BOOL}d isVoiceTrigger: %{BOOL}d catIdentifiers: %s catCategories: %s previous mitigation result: %s", v27, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v49, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    else
    {
    }

    v61 = v220;
    v62 = (*v2 + 248);
    v203 = *v62;
    v202 = v62;
    v63 = v203(v45);
    if (!v63)
    {
      goto LABEL_53;
    }

    if (*(v63 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes) != 1)
    {

      goto LABEL_53;
    }

    v64 = v63;
    if (!(*(*v217 + 384))())
    {

      goto LABEL_53;
    }

    if ((PommesInfo.isWebSearchFallback.getter() & 1) == 0 || *(v2 + 96) != 1)
    {
      goto LABEL_52;
    }

    v65 = (*v217 + 904);
    v66 = *v65;
    v67 = (*v65)();
    if (v67)
    {
      v14 = v67;
      v68 = (*(*v67 + 264))();

      if (v68)
      {
        v14 = [v68 speechEvent];

        if (v14 <= 0x23 && ((1 << v14) & 0xC40000000) != 0)
        {
          (*(**(v2 + 16) + 240))(v207, v206, 1, 8);

          *a1 = 16908803;
          *(a1 + 4) = 1;
          *(a1 + 8) = 0;
          *(a1 + 16) = 1;
          *(a1 + 24) = 0;
          *(a1 + 32) = 513;
          v70 = v212;
          *(a1 + 40) = v218;
          *(a1 + 48) = v70;
          return;
        }
      }
    }

    v71 = v66();
    if (v71)
    {
      v14 = v71;
      v72 = (*(*v71 + 264))();

      v61 = v220;
      if (v72)
      {
        v14 = [v72 speechEvent];

        v73 = v14 > 0x10 || ((1 << v14) & 0x18100) == 0;
        v19 = v218;
        if (!v73)
        {
          (*(**(v2 + 16) + 240))(v207, v206, 2, 8);

          v74 = 16908804;
LABEL_69:
          *a1 = v74;
          *(a1 + 4) = 256;
          *(a1 + 8) = 0;
          *(a1 + 16) = 1;
          goto LABEL_70;
        }

LABEL_52:

        goto LABEL_53;
      }

      v19 = v218;
    }

    else
    {

      v19 = v218;
      v61 = v220;
    }

LABEL_53:
    if ((v214 & 1) != 0 && *(v2 + 96) == 1)
    {
      v75 = (*v217 + 904);
      v76 = *v75;
      v14 = v75;
      v77 = (*v75)(v63);
      if (v77)
      {
        v78 = (*(*v77 + 264))();

        if (v78)
        {
          v79 = [v78 speechEvent];

          if (v79 <= 0x23 && ((1 << v79) & 0xC40000000) != 0)
          {
            (*(**(v2 + 16) + 240))(v207, v206, 1, 7);

            *a1 = 33685763;
            *(a1 + 4) = 1;
            *(a1 + 8) = 0;
            *(a1 + 16) = 1;
LABEL_70:
            *(a1 + 24) = 0;
            *(a1 + 32) = 513;
LABEL_164:
            v194 = v212;
            *(a1 + 40) = v19;
            *(a1 + 48) = v194;
            return;
          }
        }
      }

      v63 = v76();
      if (v63)
      {
        v81 = (*(*v63 + 264))();

        if (v81)
        {
          v82 = [v81 speechEvent];

          if (v82 <= 0x10 && ((1 << v82) & 0x18100) != 0)
          {
            (*(**(v2 + 16) + 240))(v207, v206, 2, 7);

            v74 = 33685764;
            goto LABEL_69;
          }
        }
      }
    }

    v84 = (*(*v217 + 896))(v63);
    if (v84)
    {
      v85 = (*(*v84 + 112))(v84);

      v86 = [v85 recognition];
      v87 = specialized SelfReflectionAgent.calculateSentenceConfidence(recognition:)(v86);
      v14 = v88;

      if ((v14 & 1) == 0)
      {
        v110 = [v85 audioAnalytics];
        v111 = v110;
        if (v110)
        {
          [v110 snr];
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        v165 = [v85 recognition];
        v221 = v111;
        if (v165 && (v14 = v165, v166 = [v165 phrases], v14, v166))
        {
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
          v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v14 >> 62)
          {
            v167 = __CocoaSet.count.getter();
          }

          else
          {
            v167 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v168 = v167 == 1;
        }

        else
        {
          v168 = 0;
        }

        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.debug.getter();
        v171 = os_log_type_enabled(v169, v170);
        LODWORD(v216) = v168;
        if (v171)
        {
          v172 = v221 == 0;
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v224 = v174;
          *v173 = 136315906;
          *(v173 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
          *(v173 + 12) = 2048;
          *(v173 + 14) = v87;
          *(v173 + 22) = 2080;
          *&v228 = v113;
          BYTE8(v228) = v172;
          v168 = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
          v175 = String.init<A>(describing:)();
          v14 = v176;
          v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v176, &v224);

          *(v173 + 24) = v177;
          v2 = v219;
          *(v173 + 32) = 1024;
          *(v173 + 34) = v168;
          _os_log_impl(&dword_1DC659000, v169, v170, "SelfReflectionAgent.%s sentenceConfidence: %ld snr: %s isSingleWord: %{BOOL}d", v173, 0x26u);
          swift_arrayDestroy();
          v178 = v174;
          v61 = v220;
          MEMORY[0x1E12A2F50](v178, -1, -1);
          v179 = v173;
          v19 = v218;
          MEMORY[0x1E12A2F50](v179, -1, -1);
        }

        if (v87 > 400 || (v214 & 1) == 0 || v168)
        {
          v180 = v221;
          if (v87 <= 600 && ((v214 | v213) & 1) != 0)
          {
LABEL_163:
            LODWORD(v221) = v180 == 0;
            v187 = *(v2 + 80);
            __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
            v188 = v87;
            v189 = v206;

            v190._countAndFlagsBits = 0xD000000000000024;
            v190._object = 0x80000001DCA878D0;
            v191 = v207;
            v192.value._countAndFlagsBits = v207;
            v192.value._object = v189;
            TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v190, v192);

            (*(**(v2 + 16) + 240))(v191, v189, 7, 7);

            *a1 = 5;
            v193 = v213 & 1;
            *(a1 + 1) = v214 & 1;
            *(a1 + 2) = v193;
            *(a1 + 3) = 514;
            *(a1 + 5) = 2;
            *(a1 + 8) = v188;
            *(a1 + 16) = 0;
            *(a1 + 24) = v113;
            *(a1 + 32) = v221;
            *(a1 + 33) = v216;
            goto LABEL_164;
          }
        }

        else
        {
          v209 = v87;
          v14 = *(v2 + 80);
          __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
          v181 = v206;

          v182._countAndFlagsBits = 0xD000000000000024;
          v182._object = 0x80000001DCA87900;
          v183 = v207;
          v184.value._countAndFlagsBits = v207;
          v184.value._object = v181;
          TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v182, v184);

          (*(*v2 + 296))(&v224, v185);
          v228 = v224;
          v229 = v225;
          v230 = v226;
          v231 = v227;
          outlined destroy of SelfReflectionResponse(&v228);
          if (v228 - 2 <= 4)
          {
            v186 = v221 == 0;
            (*(**(v2 + 16) + 240))(v183, v181, 3, 7);

            *a1 = 257;
            *(a1 + 2) = v213 & 1;
            *(a1 + 3) = 514;
            *(a1 + 5) = 2;
            *(a1 + 8) = v209;
            *(a1 + 16) = 0;
            *(a1 + 24) = v113;
            *(a1 + 32) = v186;
            *(a1 + 33) = 0;
            goto LABEL_164;
          }

          v61 = v220;
          v180 = v221;
          v87 = v209;
          if ((v214 | v213))
          {
            goto LABEL_163;
          }
        }
      }
    }

    v201 = a1;
    v89 = v19 + 56;
    v90 = 1 << *(v19 + 32);
    v91 = v90 < 64 ? ~(-1 << v90) : -1;
    v20 = v91 & *(v19 + 56);
    v92 = (v90 + 63) >> 6;

    v93 = 0;
    v216 = v19 + 56;
    v209 = v92;
LABEL_79:
    if (v20)
    {
      break;
    }

    while (1)
    {
      a1 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (a1 >= v92)
      {

        v200 = 0;
        goto LABEL_101;
      }

      v20 = *(v89 + 8 * a1);
      ++v93;
      if (v20)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    swift_once();
  }

  a1 = v93;
LABEL_84:
  v94 = (*(v19 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v20)))));
  v95 = v94[1];
  v221 = *v94;
  v96 = one-time initialization token for kAllowedFallbackToMightyPrefix;

  if (v96 != -1)
  {
    swift_once();
  }

  v20 &= v20 - 1;
  v97 = kAllowedFallbackToMightyPrefix;
  v98 = kAllowedFallbackToMightyPrefix + 56;
  v99 = 1 << *(kAllowedFallbackToMightyPrefix + 32);
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  else
  {
    v100 = -1;
  }

  v101 = v100 & *(kAllowedFallbackToMightyPrefix + 7);
  v102 = (v99 + 63) >> 6;

  v103 = 0;
  do
  {
    if (v101)
    {
      v104 = v103;
      goto LABEL_96;
    }

    do
    {
      v104 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
        goto LABEL_168;
      }

      if (v104 >= v102)
      {

        v93 = a1;
        v19 = v218;
        v2 = v219;
        v61 = v220;
        v89 = v216;
        v92 = v209;
        goto LABEL_79;
      }

      v101 = *&v98[8 * v104];
      v103 = (v103 + 1);
    }

    while (!v101);
    v103 = v104;
LABEL_96:
    v105 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v106 = (*(v97 + 6) + ((v104 << 10) | (16 * v105)));
    v107 = *v106;
    v108 = v106[1];

    v109._countAndFlagsBits = v107;
    v109._object = v108;
    v14 = String.hasPrefix(_:)(v109);
  }

  while ((v14 & 1) == 0);
  v19 = v218;

  v200 = 1;
  v2 = v219;
  v61 = v220;
  v89 = v216;
LABEL_101:
  v114 = 1 << *(v19 + 32);
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  else
  {
    v115 = -1;
  }

  v20 = v115 & *(v19 + 56);
  v116 = (v114 + 63) >> 6;

  v117 = 0;
  v209 = v116;
LABEL_106:
  if (v20)
  {
    a1 = v117;
LABEL_111:
    v118 = (*(v19 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v20)))));
    v119 = v118[1];
    v221 = *v118;
    v120 = one-time initialization token for kDeniedFallbackToMightyCatIds;

    if (v120 != -1)
    {
      swift_once();
    }

    v20 &= v20 - 1;
    v97 = kDeniedFallbackToMightyCatIds;
    v98 = kDeniedFallbackToMightyCatIds + 56;
    v121 = 1 << *(kDeniedFallbackToMightyCatIds + 32);
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v101 = v122 & *(kDeniedFallbackToMightyCatIds + 7);
    v123 = (v121 + 63) >> 6;

    v103 = 0;
    while (v101)
    {
      v124 = v103;
LABEL_123:
      v125 = __clz(__rbit64(v101));
      v101 &= v101 - 1;
      v126 = (*(v97 + 6) + ((v124 << 10) | (16 * v125)));
      v127 = *v126;
      v128 = v126[1];

      v129._countAndFlagsBits = v127;
      v129._object = v128;
      v14 = String.hasPrefix(_:)(v129);

      if (v14)
      {

        v130 = 1;
        v2 = v219;
        v61 = v220;
        goto LABEL_126;
      }
    }

    while (1)
    {
      v124 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v124 >= v123)
      {

        v117 = a1;
        v19 = v218;
        v2 = v219;
        v61 = v220;
        v89 = v216;
        v116 = v209;
        goto LABEL_106;
      }

      v101 = *&v98[8 * v124];
      v103 = (v103 + 1);
      if (v101)
      {
        v103 = v124;
        goto LABEL_123;
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:

    goto LABEL_170;
  }

  while (1)
  {
    a1 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_174;
    }

    if (a1 >= v116)
    {
      break;
    }

    v20 = *(v89 + 8 * a1);
    ++v117;
    if (v20)
    {
      goto LABEL_111;
    }
  }

  v130 = 0;
LABEL_126:
  v131 = *(v2 + 24);
  v132 = v210;
  dispatch thunk of NetworkAvailability.status.getter();
  v133 = v215;
  v134 = v132;
  v135 = v211;
  (*(v215 + 16))(v61, v134, v211);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.debug.getter();
  v138 = os_log_type_enabled(v136, v137);
  v97 = v201;
  LODWORD(a1) = v213;
  LODWORD(v221) = v130;
  if (v138)
  {
    a1 = v61;
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *&v228 = v140;
    *v139 = 136315906;
    *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v228);
    *(v139 + 12) = 1024;
    *(v139 + 14) = v200;
    *(v139 + 18) = 1024;
    *(v139 + 20) = v130;
    *(v139 + 24) = 2080;
    lazy protocol witness table accessor for type NetworkAvailability.Status and conformance NetworkAvailability.Status();
    v141 = dispatch thunk of CustomStringConvertible.description.getter();
    v143 = v142;
    v103 = *(v133 + 8);
    v144 = a1;
    LODWORD(a1) = v213;
    v103(v144, v135);
    v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &v228);

    *(v139 + 26) = v145;
    _os_log_impl(&dword_1DC659000, v136, v137, "SelfReflectionAgent.%s hasAllowedFallbackToMightyPrefix: %{BOOL}d hasDeniedFallbackToMightyDialog: %{BOOL}d networkStatus: %s", v139, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v140, -1, -1);
    MEMORY[0x1E12A2F50](v139, -1, -1);
  }

  else
  {

    v103 = *(v133 + 8);
    v103(v61, v135);
  }

  v146 = v205;
  swift_beginAccess();
  v147 = static SelfReflectionUserDefaults._fallbackToMighty;
  v148 = off_1ECC94E18;
  v149 = byte_1ECC94E20;

  v150 = specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(v147, v148, v149);

  v98 = v218;
  if (v150 & 1) == 0 || *(v219 + 40) != 1 || (v152 = v211, (*(v215 + 104))(v146, *MEMORY[0x1E69D3620], v211), v153 = static NetworkAvailability.Status.== infix(_:_:)(), v151 = (v103)(v146, v152), (v153 & 1) == 0) || ((v221 | (a1 | v204) & v200 ^ 1))
  {
    v154 = v203(v151);
    if (v154)
    {
      v155 = v154[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes];

      if (v155)
      {
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_1DC659000, v156, v157, "SelfReflectionAgent. Executing with Pommes Response.", v158, 2u);
          MEMORY[0x1E12A2F50](v158, -1, -1);
        }

        v159 = ResultCandidateState.hasAlternativeSuggestion.getter();
        v160 = v212;
        if (v159)
        {
          v161 = Logger.logObject.getter();
          v162 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v224 = v164;
            *v163 = 136315138;
            *(v163 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
            _os_log_impl(&dword_1DC659000, v161, v162, "SelfReflectionAgent.%s has Alternative", v163, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v164);
            MEMORY[0x1E12A2F50](v164, -1, -1);
            MEMORY[0x1E12A2F50](v163, -1, -1);
          }

          (*(**(v219 + 16) + 240))(v207, v206, 7, 9);

          v103(v210, v211);
          *v97 = 5;
          v97[1] = v214 & 1;
          v97[2] = a1 & 1;
          *(v97 + 3) = 514;
          goto LABEL_145;
        }

        v103(v210, v211);

LABEL_144:
        *v97 = 2;
        v97[1] = v214 & 1;
        v97[2] = a1 & 1;
        *(v97 + 3) = 514;
LABEL_145:
        v97[5] = 2;
        *(v97 + 1) = 0;
        v97[16] = 1;
        *(v97 + 3) = 0;
        *(v97 + 16) = 513;
        *(v97 + 5) = v98;
        *(v97 + 6) = v160;
        return;
      }

      v103(v210, v211);
    }

    else
    {

      v103(v210, v211);
    }

    v160 = v212;
    goto LABEL_144;
  }

  v101 = Logger.logObject.getter();
  v195 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v101, v195))
  {
    goto LABEL_169;
  }

  v196 = swift_slowAlloc();
  a1 = swift_slowAlloc();
  *&v224 = a1;
  *v196 = 136315650;
  *(v196 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
  *(v196 + 12) = 1024;
  *(v196 + 14) = v213 & 1;
  *(v196 + 18) = 1024;
  *(v196 + 20) = v204 & 1;
  _os_log_impl(&dword_1DC659000, v101, v195, "SelfReflectionAgent.%s decided to fall back to Intelligence Flow. hasCantDoDialog: %{BOOL}d hasUnsupportedDialog: %{BOOL}d", v196, 0x18u);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v197 = a1;
  LOBYTE(a1) = v213;
  v97 = v201;
  MEMORY[0x1E12A2F50](v197, -1, -1);
  MEMORY[0x1E12A2F50](v196, -1, -1);

LABEL_170:
  v103(v210, v211);
  *v97 = 518;
  v97[2] = a1 & 1;
  *(v97 + 3) = 514;
  v97[5] = 2;
  *(v97 + 1) = 0;
  v97[16] = 1;
  *(v97 + 3) = 0;
  *(v97 + 16) = 513;
  v198 = v212;
  *(v97 + 5) = v98;
  *(v97 + 6) = v198;
}

uint64_t SelfReflectionAgent.requestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SelfReflectionAgent.resultCandidateState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t SelfReflectionAgentDecision.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      return 1701736302;
    }

    if (v1 == 3)
    {
      return 0x65726F6E6769;
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        return 0x557373696D736964;
      case 5u:
        return 0x7469646532706174;
      case 6u:
        return 0xD00000000000001ALL;
    }
  }

  strcpy(v5, "askToRepeat(");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v5[0];
}

uint64_t destroy for ConversationService.EagerResult(char *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v8 = type metadata accessor for ServerFallbackReason();
    v9 = *(*(v8 - 8) + 8);
    v10 = v8;
    v11 = a1;
LABEL_11:

    return v9(v11, v10);
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    v3 = *a1;

    v4 = *(a1 + 1);

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v6 = type metadata accessor for Input();
    v12 = *(v6 - 8);
    result = (*(v12 + 48))(&a1[v5], 1, v6);
    if (result)
    {
      return result;
    }

    v9 = *(v12 + 8);
    v11 = &a1[v5];
    v10 = v6;
    goto LABEL_11;
  }

  v7 = *a1;
}

uint64_t ConversationUserInput.__deallocating_deinit()
{
  ConversationUserInput.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ConversationUserInput.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);

  v6 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v7 = type metadata accessor for ExecutionLocation();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation, v7);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v0;
}

uint64_t NLResponse.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v3 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult], &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v4 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8];

  v5 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo];

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason], &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision], &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PommesInfo.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v67 - v8;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PommesContext();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v14[6];
  v19 = v72(a1, 1, v13, v16);
  v73 = a1;
  if (!v19)
  {
    v69 = v14[2];
    v20 = v69(v18, a1, v13);
    v70 = MEMORY[0x1E12A0B80](v20);
    v22 = v21;
    v68 = v14[1];
    v68(v18, v13);
    if (v22 >> 60 != 15)
    {
      v74 = v22;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.executor);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "Propagating PommesContext Pegasus conversation context to NativeFlowContextUpdate", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      if (a2)
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        [a2 setPegasusConversationContext_];
      }

      v41 = v73;
      if (!(v72)(v73, 1, v13))
      {
        v69(v18, v41, v13);
        v42 = PommesContext.exportPromptContextData()();
        v44 = v43;
        v68(v18, v13);
        if (v44 >> 60 != 15)
        {
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_1DC659000, v59, v60, "Propagating PommesContext prompt context data to NativeFlowContextUpdate", v61, 2u);
            MEMORY[0x1E12A2F50](v61, -1, -1);
          }

          if (!a2)
          {
            outlined consume of Data?(v70, v74);
            outlined consume of Data?(v42, v44);
            return;
          }

          v47 = Data._bridgeToObjectiveC()().super.isa;
          [a2 setPromptContextProto_];
          outlined consume of Data?(v70, v74);
          v62 = v42;
          v63 = v44;
LABEL_39:
          outlined consume of Data?(v62, v63);

          return;
        }
      }

      v45 = a2;
      v46 = a2;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v47, v48))
      {
LABEL_38:
        v62 = v70;
        v63 = v74;
        goto LABEL_39;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 136315138;
      if (v45)
      {
        v51 = [v46 promptContextProto];
        if (v51)
        {
          v52 = v51;
          v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

LABEL_37:
          *&v76 = v45;
          *(&v76 + 1) = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          v64 = String.init<A>(describing:)();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v75);

          *(v49 + 4) = v66;
          _os_log_impl(&dword_1DC659000, v47, v48, "No PommesContext prompt context data. Leaving existing: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          MEMORY[0x1E12A2F50](v50, -1, -1);
          MEMORY[0x1E12A2F50](v49, -1, -1);
          goto LABEL_38;
        }

        v45 = 0;
      }

      v54 = 0xF000000000000000;
      goto LABEL_37;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = a2;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "Propagating NativeFlowContextUpdate prompt context to PommesContext", v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  if (v26 && (v28 = [v26 promptContextProto]) != 0)
  {
    v29 = v28;
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    outlined copy of Data._Representation(v30, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
    Message.init(serializedData:extensions:partial:options:)();
    v55 = v74;
    (*(v74 + 56))(v9, 0, 1, v10);
    (*(v55 + 32))(v71, v9, v10);
    if (!(v72)(v73, 1, v13))
    {
      PommesContext.update(with:)();
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "Applied NFCU promptContext to PommesContext", v58, 2u);
      MEMORY[0x1E12A2F50](v58, -1, -1);

      outlined consume of Data._Representation(v30, v32);
    }

    else
    {
      outlined consume of Data._Representation(v30, v32);
    }

    (*(v55 + 8))(v71, v10);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DC659000, v33, v34, "Unable to apply NFCU promptContext to PommesContext; either no NFCU, no promptContextProto, or serialization error", v35, 2u);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }
  }
}

uint64_t AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(executionOutput:), 0, 0);
}

uint64_t AceServiceInvokerImpl.publish(executionOutput:)()
{
  v31 = v0;
  v1 = *(v0[4] + 152);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Attempting to submit a context update on an invalidated AceServiceInvoker. Throwing BargeInError", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();
    v7 = v0[5];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = one-time initialization token for shared;

    v15 = v12;
    if (v14 != -1)
    {
      swift_once();
    }

    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    v19 = static ConversationActor.shared;
    v20 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v17;
    v21[5] = v18;

    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v16, &async function pointer to partial apply for closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v21, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v0[6] = v22;
    v23 = *(v17 + 160);
    v0[7] = v23;
    v24 = *(v23 + 16);
    os_unfair_lock_lock((v24 + 24));
    partial apply for closure #1 in SubmissionTaskRegistry.register(_:)((v24 + 16), &v30);
    os_unfair_lock_unlock((v24 + 24));

    v25 = *(MEMORY[0x1E69E86A8] + 4);
    v26 = swift_task_alloc();
    v0[8] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v26 = v0;
    v26[1] = AceServiceInvokerImpl.publish(executionOutput:);
    v29 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 2, v22, v27, v28, v29);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {

    v4 = AceServiceInvokerImpl.publish(executionOutput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v9 = v0;
  v1 = v0[6];
  v2 = *(v0[7] + 16);
  os_unfair_lock_lock(v2 + 6);
  partial apply for closure #1 in SubmissionTaskRegistry.unregister(_:)(&v8);
  v3 = v0[6];
  os_unfair_lock_unlock(v2 + 6);

  v4 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DC6B48B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t closure #1 in SubmissionTaskRegistry.register(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;

  result = specialized _NativeSet.update(with:isUnique:)(v6, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(a1, v4, v5, v7, v6);
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v6 = type metadata accessor for CancellationError();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;
  v5[18] = static ConversationActor.shared;
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v9, 0);
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)()
{
  v91 = v0;
  v90[1] = *MEMORY[0x1E69E9840];
  if (*(*(v0 + 104) + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(*(v0 + 104) + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {
  }

  else
  {
    *(*(v0 + 104) + 24);
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v4 = *(v0 + 104);
  v5 = *(v4 + 72);
  *(v0 + 152) = v5;
  v6 = *(v4 + 80);
  *(v0 + 160) = v6;
  if (!v6 || (v7 = *(*(v0 + 112) + OBJC_IVAR___SKRExecutionOutput_contextUpdate), (*(v0 + 168) = v7) == 0))
  {
LABEL_38:
    v78 = *(v0 + 104);
    v79 = *(v0 + 112);
    v80 = swift_allocObject();
    *(v0 + 272) = v80;
    *(v80 + 16) = v78;
    *(v80 + 24) = v79;

    v81 = v79;
    v82 = swift_task_alloc();
    *(v0 + 280) = v82;
    *v82 = v0;
    v82[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v83 = *MEMORY[0x1E69E9840];

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v80);
  }

  v8 = *&v7[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand];
  *(v0 + 176) = v8;
  if (v8)
  {
    v9 = one-time initialization token for executor;
    v10 = v7;
    v11 = v8;
    if (v9 != -1)
    {
      swift_once();
      v87 = *(v0 + 104);
    }

    v12 = type metadata accessor for Logger();
    *(v0 + 184) = __swift_project_value_buffer(v12, static Logger.executor);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v90[0] = v16;
      *v15 = 136315138;
      *(v0 + 32) = v5;
      *(v0 + 40) = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v90);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v13, v14, "Sending legacy SACFProvideContext to invocation device ID=%s, since this is a server request", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    *(v0 + 80) = *(v0 + 104);
    v20 = *(MEMORY[0x1E69D0028] + 4);
    v21 = swift_task_alloc();
    *(v0 + 192) = v21;
    v22 = type metadata accessor for AceServiceInvokerImpl();
    v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
    v25 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v24, type metadata accessor for AceServiceInvokerImpl);
    *v21 = v0;
    v21[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v26 = *MEMORY[0x1E69E9840];
    v27 = v25;
    v28 = v11;
    v29 = v22;
    v30 = v23;
    goto LABEL_19;
  }

  v31 = *(v4 + 104);
  v32 = v7;
  if ((v31 & 1) == 0)
  {
    if (*&v32[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {
      v63 = v32;
      v64 = *&v32[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities];

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v65);
    }

    else
    {
    }

    goto LABEL_38;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
    v88 = *(v0 + 104);
  }

  v33 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v33, static Logger.executor);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v90[0] = v39;
    *v38 = 136315138;
    *(v0 + 16) = v37;
    *(v0 + 24) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v90);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1DC659000, v34, v35, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v43 = *(v0 + 168);
  v44 = objc_opt_self();
  *(v0 + 56) = 0;
  v45 = [v44 archivedDataWithRootObject:v43 requiringSecureCoding:1 error:v0 + 56];
  v46 = *(v0 + 56);
  if (v45)
  {
    v48 = *(v0 + 152);
    v47 = *(v0 + 160);
    v49 = *(v0 + 104);
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    *(v0 + 224) = v50;
    *(v0 + 232) = v52;
    v53 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
    *(v0 + 240) = v53;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v53 setExecutionContextUpdate_];

    v55 = MEMORY[0x1E12A1410](v48, v47);
    [v53 setRemoteDeviceAssistantId_];

    AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v53, 1);
    *(v0 + 64) = v49;
    v56 = *(MEMORY[0x1E69D0028] + 4);
    v57 = swift_task_alloc();
    *(v0 + 248) = v57;
    v58 = type metadata accessor for AceServiceInvokerImpl();
    v59 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
    v61 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v60, type metadata accessor for AceServiceInvokerImpl);
    *v57 = v0;
    v57[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v62 = *MEMORY[0x1E69E9840];
    v27 = v61;
    v28 = v53;
    v29 = v58;
    v30 = v59;
LABEL_19:

    return MEMORY[0x1EEE39A98](v28, v29, v30, v27);
  }

  v66 = *(v0 + 168);
  v67 = v46;
  v68 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v69 = *(v0 + 136);
  v70 = *(v0 + 120);
  *(v0 + 48) = v68;
  v71 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v33, static Logger.ace);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC659000, v72, v73, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v74, 2u);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    v76 = *(v0 + 128);
    v75 = *(v0 + 136);
    v77 = *(v0 + 120);

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();
    (*(v76 + 8))(v75, v77);
  }

  else
  {

    swift_willThrow();
  }

  v84 = *(v0 + 136);

  v85 = *(v0 + 8);
  v86 = *MEMORY[0x1E69E9840];

  return v85();
}

{
  v73 = v0;
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 184);
  v2 = *(v0 + 200);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72[0] = v9;
    *v8 = 136315138;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v72);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v3, v4, "Got response from SACFProvideContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }

  if (*(*(v0 + 104) + 104) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
      v70 = *(v0 + 104);
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v16, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 152);
      v19 = *(v0 + 160);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v72[0] = v22;
      *v21 = 136315138;
      *(v0 + 16) = v20;
      *(v0 + 24) = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v72);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v17, v18, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v26 = *(v0 + 168);
    v27 = objc_opt_self();
    *(v0 + 56) = 0;
    v28 = [v27 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v0 + 56];
    v29 = *(v0 + 56);
    if (v28)
    {
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = *(v0 + 104);
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v0 + 224) = v33;
      *(v0 + 232) = v35;
      v36 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
      *(v0 + 240) = v36;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v36 setExecutionContextUpdate_];

      v38 = MEMORY[0x1E12A1410](v31, v30);
      [v36 setRemoteDeviceAssistantId_];

      AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v36, 1);
      *(v0 + 64) = v32;
      v39 = *(MEMORY[0x1E69D0028] + 4);
      v40 = swift_task_alloc();
      *(v0 + 248) = v40;
      v41 = type metadata accessor for AceServiceInvokerImpl();
      v42 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
      v44 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v43, type metadata accessor for AceServiceInvokerImpl);
      *v40 = v0;
      v40[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
      v45 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE39A98](v36, v41, v42, v44);
    }

    else
    {
      v49 = *(v0 + 168);
      v50 = v29;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v52 = *(v0 + 136);
      v53 = *(v0 + 120);
      *(v0 + 48) = v51;
      v54 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v16, static Logger.ace);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1DC659000, v55, v56, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v57, 2u);
          MEMORY[0x1E12A2F50](v57, -1, -1);
        }

        v59 = *(v0 + 128);
        v58 = *(v0 + 136);
        v60 = *(v0 + 120);

        type metadata accessor for BargeInError();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
        swift_allocError();
        BargeInError.init(rawError:)();
        swift_willThrow();
        (*(v59 + 8))(v58, v60);
      }

      else
      {

        swift_willThrow();
      }

      v67 = *(v0 + 136);

      v68 = *(v0 + 8);
      v69 = *MEMORY[0x1E69E9840];

      return v68();
    }
  }

  else
  {
    v46 = *(v0 + 168);
    if (*&v46[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {
      v47 = *&v46[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities];

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v48);
    }

    else
    {
    }

    v61 = *(v0 + 104);
    v62 = *(v0 + 112);
    v63 = swift_allocObject();
    *(v0 + 272) = v63;
    *(v63 + 16) = v61;
    *(v63 + 24) = v62;

    v64 = v62;
    v65 = swift_task_alloc();
    *(v0 + 280) = v65;
    *v65 = v0;
    v65[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v66 = *MEMORY[0x1E69E9840];

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v63);
  }
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 216);
  v2 = *(v0 + 256);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  v9 = *(v0 + 168);
  if (v5)
  {
    v26 = *(v0 + 232);
    v27 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    v25 = v7;
    v12 = v6;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v28);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v3, v4, "Got response from RemoteExecutionContextUpdate: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    outlined consume of Data._Representation(v8, v26);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 224), *(v0 + 232));
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v20 = swift_allocObject();
  *(v0 + 272) = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;

  v21 = v19;
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  v22[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  v23 = *MEMORY[0x1E69E9840];

  return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v20);
}

{
  v73 = v0;
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72[0] = v9;
    *v8 = 136315138;
    *(v0 + 88) = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v72);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error sending SACFProvideContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 176);
  }

  if (*(*(v0 + 104) + 104) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
      v70 = *(v0 + 104);
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v16, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 152);
      v19 = *(v0 + 160);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v72[0] = v22;
      *v21 = 136315138;
      *(v0 + 16) = v20;
      *(v0 + 24) = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v72);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v17, v18, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v26 = *(v0 + 168);
    v27 = objc_opt_self();
    *(v0 + 56) = 0;
    v28 = [v27 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v0 + 56];
    v29 = *(v0 + 56);
    if (v28)
    {
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = *(v0 + 104);
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v0 + 224) = v33;
      *(v0 + 232) = v35;
      v36 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
      *(v0 + 240) = v36;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v36 setExecutionContextUpdate_];

      v38 = MEMORY[0x1E12A1410](v31, v30);
      [v36 setRemoteDeviceAssistantId_];

      AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v36, 1);
      *(v0 + 64) = v32;
      v39 = *(MEMORY[0x1E69D0028] + 4);
      v40 = swift_task_alloc();
      *(v0 + 248) = v40;
      v41 = type metadata accessor for AceServiceInvokerImpl();
      v42 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
      v44 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v43, type metadata accessor for AceServiceInvokerImpl);
      *v40 = v0;
      v40[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
      v45 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE39A98](v36, v41, v42, v44);
    }

    else
    {
      v49 = *(v0 + 168);
      v50 = v29;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v52 = *(v0 + 136);
      v53 = *(v0 + 120);
      *(v0 + 48) = v51;
      v54 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v16, static Logger.ace);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1DC659000, v55, v56, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v57, 2u);
          MEMORY[0x1E12A2F50](v57, -1, -1);
        }

        v59 = *(v0 + 128);
        v58 = *(v0 + 136);
        v60 = *(v0 + 120);

        type metadata accessor for BargeInError();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
        swift_allocError();
        BargeInError.init(rawError:)();
        swift_willThrow();
        (*(v59 + 8))(v58, v60);
      }

      else
      {

        swift_willThrow();
      }

      v67 = *(v0 + 136);

      v68 = *(v0 + 8);
      v69 = *MEMORY[0x1E69E9840];

      return v68();
    }
  }

  else
  {
    v46 = *(v0 + 168);
    if (*&v46[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {
      v47 = *&v46[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities];

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v48);
    }

    else
    {
    }

    v61 = *(v0 + 104);
    v62 = *(v0 + 112);
    v63 = swift_allocObject();
    *(v0 + 272) = v63;
    *(v63 + 16) = v61;
    *(v63 + 24) = v62;

    v64 = v62;
    v65 = swift_task_alloc();
    *(v0 + 280) = v65;
    *v65 = v0;
    v65[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v66 = *MEMORY[0x1E69E9840];

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v63);
  }
}

{
  v28 = v0;
  v27[1] = *MEMORY[0x1E69E9840];
  v1 = v0[33];
  v2 = v0[27];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = v0[29];
    v8 = v0[28];
    v25 = v0[30];
    v26 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315138;
    v0[9] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v27);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error sending RemoteExecutionContextUpdate: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    outlined consume of Data._Representation(v8, v7);
  }

  else
  {
    v15 = v0[33];
    v16 = v0[30];
    v17 = v0[21];
    outlined consume of Data._Representation(v0[28], v0[29]);
  }

  v18 = v0[13];
  v19 = v0[14];
  v20 = swift_allocObject();
  v0[34] = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;

  v21 = v19;
  v22 = swift_task_alloc();
  v0[35] = v22;
  *v22 = v0;
  v22[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  v23 = *MEMORY[0x1E69E9840];

  return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v20);
}

{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 272);

  v2 = *(v0 + 288);
  *(v0 + 48) = v2;
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.ace);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
  }

  else
  {

    swift_willThrow();
  }

  v13 = *(v0 + 136);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14();
}