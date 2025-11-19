Swift::Void __swiftcall WKInterfaceController.presentController(withNamesAndContexts:)(Swift::OpaquePointer withNamesAndContexts)
{
  v2 = v1;
  v4 = *(withNamesAndContexts._rawValue + 2);
  if (v4)
  {
    v20 = v1;
    *&v21 = MEMORY[0x29EDCA190];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v6 = (withNamesAndContexts._rawValue + 40);
    v7 = v4;
    do
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      *&v21 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v6 += 3;
      --v7;
    }

    while (v7);
    v2 = v20;
  }

  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v4)
  {
    v23 = MEMORY[0x29EDCA190];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v14 = v23;
    v15 = (withNamesAndContexts._rawValue + 48);
    do
    {
      v16 = *v15;
      ObjectType = swift_getObjectType();
      v23 = v14;
      *&v21 = v16;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      swift_unknownObjectRetain();
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v14 = v23;
      }

      *(v14 + 16) = v18 + 1;
      outlined init with take of Any(&v21, (v14 + 32 * v18 + 32));
      v15 += 3;
      --v4;
    }

    while (v4);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 presentControllerWithNames:v13.super.isa contexts:isa];
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    v10 = MEMORY[0x29EDCA190];
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
    v10 = MEMORY[0x29EDCA190];
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

void specialized static WKInterfaceController.reloadRootControllers(withNamesAndContexts:)(int64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    *&v19 = MEMORY[0x29EDCA190];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v19;
    v4 = a1 + 5;
    v5 = v2;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      *&v19 = v3;
      v8 = *(v3 + 16);
      v9 = *(v3 + 24);

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
        v3 = v19;
      }

      *(v3 + 16) = v8 + 1;
      v10 = v3 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v4 += 3;
      --v5;
    }

    while (v5);
  }

  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v2)
  {
    v21 = MEMORY[0x29EDCA190];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v12 = v21;
    v13 = a1 + 6;
    do
    {
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v21 = v12;
      *&v19 = v14;
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      swift_unknownObjectRetain();
      if (v15 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
        v12 = v21;
      }

      *(v12 + 16) = v15 + 1;
      outlined init with take of Any(&v19, (v12 + 32 * v15 + 32));
      v13 += 3;
      --v2;
    }

    while (v2);
  }

  v17 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 reloadRootControllersWithNames:v11.super.isa contexts:isa];
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}