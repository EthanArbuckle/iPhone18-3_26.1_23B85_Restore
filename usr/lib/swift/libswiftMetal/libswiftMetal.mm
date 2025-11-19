uint64_t sub_299B02194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_299B02200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void MTLBuffer.addDebugMarker(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x29C2ABAB0]();
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    [v4 addDebugMarker_range_];
  }
}

uint64_t MTLLogContainer.Iterator.next()()
{
  NSFastEnumerationIterator.next()();
  if (v3)
  {
    outlined init with take of Any(&v2, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MTLFunctionLog_pMd, &_sSo14MTLFunctionLog_pMR);
    swift_dynamicCast();
    return v1;
  }

  else
  {
    outlined destroy of Any?(&v2);
    return 0;
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance MTLLogContainer.Iterator@<X0>(void *a1@<X8>)
{
  NSFastEnumerationIterator.next()();
  if (v6)
  {
    outlined init with take of Any(&v5, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MTLFunctionLog_pMd, &_sSo14MTLFunctionLog_pMR);
    result = swift_dynamicCast();
    v3 = v4;
  }

  else
  {
    result = outlined destroy of Any?(&v5);
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t MTLLogContainer.makeIterator()()
{
  v1 = *v0;
  swift_unknownObjectRetain();

  return NSFastEnumerationIterator.init(_:)();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MTLLogContainer()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)();

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MTLLogContainer()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)();
  swift_unknownObjectRelease();
  return v2;
}

id MTLCommandBuffer.logs.getter@<X0>(void *a1@<X8>)
{
  result = [v1 logs];
  *a1 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MTLCommandBuffer) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t MTLCommandBuffer.scheduled()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2A1C73D48](MTLCommandBuffer.scheduled(), 0, 0);
}

uint64_t MTLCommandBuffer.scheduled()()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = MTLCommandBuffer.scheduled();
  v3 = swift_continuation_init();
  closure #1 in MTLCommandBuffer.scheduled()(v3, v1, v2, &unk_2A200A870, partial apply for closure #1 in closure #1 in MTLCommandBuffer.scheduled(), &block_descriptor_81, &selRef___waitUntilScheduledAsync_);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t closure #1 in MTLCommandBuffer.scheduled()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v15[4] = a5;
  v15[5] = v12;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed MTLCommandBuffer) -> ();
  v15[3] = a6;
  v13 = _Block_copy(v15);
  swift_unknownObjectRetain();

  [a2 *a7];

  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t MTLCommandBuffer.completed()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2A1C73D48](MTLCommandBuffer.completed(), 0, 0);
}

uint64_t MTLCommandBuffer.completed()()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = MTLCommandBuffer.scheduled();
  v3 = swift_continuation_init();
  closure #1 in MTLCommandBuffer.scheduled()(v3, v1, v2, &unk_2A200A820, partial apply for closure #1 in closure #1 in MTLSharedEvent.valueSignaled(_:), &block_descriptor_75, &selRef___waitUntilCompletedAsync_);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t MTLDevice.getDefaultSamplePositions(sampleCount:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      type metadata accessor for MTLSamplePosition();
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v3 + 16) = v2;
      bzero((v3 + 32), 8 * v2);
    }

    else
    {
      v3 = MEMORY[0x29EDCA190];
    }

    [v1 getDefaultSamplePositions:v3 + 32 count:v2];
    return v3;
  }

  return result;
}

Swift::tuple_cpu_UInt64_gpu_UInt64 __swiftcall MTLDevice.sampleTimestamps()()
{
  v6[1] = *MEMORY[0x29EDCA608];
  v5 = 0;
  v6[0] = 0;
  [v0 sampleTimestamps:v6 gpuTimestamp:&v5];
  v2 = v5;
  v1 = v6[0];
  v3 = *MEMORY[0x29EDCA608];
  result.gpu = v2;
  result.cpu = v1;
  return result;
}

id MTLDevice.makeRenderPipelineState(descriptor:options:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v11 = 0;
  v12[0] = 0;
  v3 = [v2 newRenderPipelineStateWithMeshDescriptor:a1 options:a2 reflection:v12 error:&v11];
  v4 = v12[0];
  if (v3)
  {
    v5 = v3;
    v6 = v11;
    v7 = v4;
  }

  else
  {
    v5 = v11;
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

MTLIOCompressionContext specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, MTLIOCompressionMethod type, size_t chunkSize)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *path = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = path;
      return MTLIOCreateCompressionContext(v5, type, chunkSize);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return MTLIOCreateCompressionContext(v5, type, chunkSize);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSvSgMd, &_sSvSgMR);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v9;
  }

  return result;
}

id MTLFunctionConstantValues.setConstantValues(_:type:range:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFSUB__(a4, a3))
  {
    return [v4 setConstantValues:result type:a2 withRange:{a3, a4 - a3}];
  }

  __break(1u);
  return result;
}

uint64_t MTLAccelerationStructureCommandEncoder.useResources(_:usage:)(int64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x29C2ABB10](v7);
    v9 = MEMORY[0x29C2ABB10](v7);

    if (v9)
    {
      v10 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      v5 = (v10 + 4);
    }

    else
    {
      v5 = -8;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  [v2 useResources:v5 count:v4 usage:a2];

  return swift_unknownObjectRelease();
}

char *MTLIntersectionFunctionTable.setBuffers(_:offsets:range:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (!__OFSUB__(a4, a3))
  {
    return [v6 *a6];
  }

  __break(1u);
  return result;
}

char *MTLComputeCommandEncoder.setBuffers(_:offsets:attributeStrides:range:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  if (!__OFSUB__(a5, a4))
  {
    return [v7 *a7];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MTLRenderCommandEncoder.memoryBarrier(resources:after:before:)(Swift::OpaquePointer resources, MTLRenderStages after, MTLRenderStages before)
{
  v4 = v3;
  if (resources._rawValue >> 62)
  {
    if (resources._rawValue < 0)
    {
      rawValue = resources._rawValue;
    }

    else
    {
      rawValue = resources._rawValue & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x29C2ABB10](rawValue);
    v11 = MEMORY[0x29C2ABB10](rawValue);

    if (v11)
    {
      v12 = specialized _copyCollectionToContiguousArray<A>(_:)(resources._rawValue);

      v8 = (v12 + 4);
    }

    else
    {
      v8 = -8;
    }
  }

  else
  {
    v7 = *((resources._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = (resources._rawValue & 0xFFFFFFFFFFFFFF8) + 32;
  }

  [v4 memoryBarrierWithResources:v8 count:v7 afterStages:after beforeStages:before];

  swift_unknownObjectRelease();
}

char *MTLVisibleFunctionTable.setFunctions(_:range:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v5 *a5];
  }

  __break(1u);
  return result;
}

id MTLTexture.makeTextureView(pixelFormat:textureType:levels:slices:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a6, a5))
  {
    return [v6 newTextureViewWithPixelFormat:result textureType:a2 levels:a3 slices:a4 - a3];
  }

  __break(1u);
  return result;
}

id MTLTexture.makeTextureView(pixelFormat:textureType:levels:slices:swizzle:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a6, a5))
  {
    return [v7 newTextureViewWithPixelFormat:result textureType:a2 levels:a3 slices:a4 - a3 swizzle:a5, a6 - a5, a7];
  }

  __break(1u);
  return result;
}

_DWORD *MTLRasterizationRateSampleArray.subscript.getter(uint64_t a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  result = [v1 __getRawArray_];
  if ((a1 & 0x8000000000000000) == 0 && v6[0] > a1)
  {
    v4 = result[a1];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *key path getter for MTLRasterizationRateSampleArray.subscript(_:) : MTLRasterizationRateSampleArray@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  v9[0] = 0;
  result = [v4 __getRawArray_];
  v7 = 0;
  if ((v5 & 0x8000000000000000) == 0 && v5 < v9[0])
  {
    v7 = result[v5];
  }

  *a3 = v7;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *key path setter for MTLRasterizationRateSampleArray.subscript(_:) : MTLRasterizationRateSampleArray(int *a1, void **a2, uint64_t *a3)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = *a1;
  v5 = *a2;
  v8[0] = 0;
  result = [v5 __getRawArray_];
  if ((v3 & 0x8000000000000000) == 0 && v3 < v8[0])
  {
    result[v3] = v4;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

float *MTLRasterizationRateSampleArray.subscript.setter(uint64_t a1, float a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v7[0] = 0;
  result = [v2 __getRawArray_];
  if ((a1 & 0x8000000000000000) == 0 && v7[0] > a1)
  {
    result[a1] = a2;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *(*MTLRasterizationRateSampleArray.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v3 = v2;
  v10 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = a2;
  *(a1 + 16) = v3;
  *a1 = 0;
  v6 = [v3 __getRawArray_];
  v7 = 0;
  if ((a2 & 0x8000000000000000) == 0 && *a1 > a2)
  {
    v7 = v6[a2];
  }

  *(a1 + 24) = v7;
  v8 = *MEMORY[0x29EDCA608];
  return MTLRasterizationRateSampleArray.subscript.modify;
}

_DWORD *MTLRasterizationRateSampleArray.subscript.modify(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  *a1 = 0;
  result = [v3 __getRawArray_];
  if ((v4 & 0x8000000000000000) == 0 && *a1 > v4)
  {
    result[*(a1 + 8)] = v2;
  }

  return result;
}

MTLRasterizationRateLayerDescriptor __swiftcall MTLRasterizationRateLayerDescriptor.init(horizontal:vertical:)(Swift::OpaquePointer horizontal, Swift::OpaquePointer vertical)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MTLSizeMake(*(horizontal._rawValue + 2), *(vertical._rawValue + 2), &v7);
  v5 = [v4 initWithSampleCount:&v7 horizontal:horizontal._rawValue + 32 vertical:vertical._rawValue + 32];

  return v5;
}

MTLRasterizationRateMapDescriptor __swiftcall MTLRasterizationRateMapDescriptor.init(screenSize:label:)(MTLSize screenSize, Swift::String_optional label)
{
  object = label.value._object;
  countAndFlagsBits = label.value._countAndFlagsBits;
  v8 = screenSize;
  v4 = [swift_getObjCClassFromMetadata() rasterizationRateMapDescriptorWithScreenSize_];
  v5 = v4;
  if (object)
  {
    v6 = MEMORY[0x29C2ABAB0](countAndFlagsBits, object);
  }

  else
  {
    v6 = 0;
  }

  [v4 setLabel_];

  return v4;
}

MTLRasterizationRateMapDescriptor __swiftcall MTLRasterizationRateMapDescriptor.init(screenSize:layer:label:)(MTLSize screenSize, MTLRasterizationRateLayerDescriptor layer, Swift::String_optional label)
{
  object = label.value._object;
  countAndFlagsBits = label.value._countAndFlagsBits;
  v10 = screenSize;
  v6 = [swift_getObjCClassFromMetadata() rasterizationRateMapDescriptorWithScreenSize:&v10 layer:layer.super.isa];
  v7 = v6;
  if (object)
  {
    v8 = MEMORY[0x29C2ABAB0](countAndFlagsBits, object);
  }

  else
  {
    v8 = 0;
  }

  [v6 setLabel_];

  return v6;
}

MTLRasterizationRateMapDescriptor __swiftcall MTLRasterizationRateMapDescriptor.init(screenSize:layers:label:)(MTLSize screenSize, Swift::OpaquePointer layers, Swift::String_optional label)
{
  object = label.value._object;
  countAndFlagsBits = label.value._countAndFlagsBits;
  depth = screenSize.depth;
  height = screenSize.height;
  width = screenSize.width;
  if (!(layers._rawValue >> 62))
  {
    v8 = layers._rawValue & 0xFFFFFFFFFFFFFF8;
    v9 = *((layers._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v10 = v8 + 32;
    goto LABEL_4;
  }

  if (layers._rawValue < 0)
  {
    rawValue = layers._rawValue;
  }

  else
  {
    rawValue = layers._rawValue & 0xFFFFFFFFFFFFFF8;
  }

  v9 = MEMORY[0x29C2ABB10](rawValue);
  if (MEMORY[0x29C2ABB10](rawValue))
  {
    v8 = specialized _copyCollectionToContiguousArray<A>(_:)(layers._rawValue);

    goto LABEL_3;
  }

  v10 = -8;
LABEL_4:
  v17[0] = width;
  v17[1] = height;
  v17[2] = depth;
  v11 = [swift_getObjCClassFromMetadata() rasterizationRateMapDescriptorWithScreenSize:v17 layerCount:v9 layers:v10];
  swift_unknownObjectRelease();
  v12 = v11;
  if (object)
  {
    v13 = MEMORY[0x29C2ABAB0](countAndFlagsBits, object);
  }

  else
  {
    v13 = 0;
  }

  [v11 setLabel_];

  return v11;
}

void closure #1 in MTLSharedEvent.valueSignaled(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedListener];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v10[4] = partial apply for closure #1 in closure #1 in MTLSharedEvent.valueSignaled(_:);
  v10[5] = v7;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLSharedEvent, @unowned UInt64) -> ();
  v10[3] = &block_descriptor_69;
  v8 = _Block_copy(v10);
  v9 = v6;

  [a2 notifyListener:v9 atValue:a3 block:v8];

  _Block_release(v8);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLSharedEvent, @unowned UInt64) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = swift_unknownObjectRetain();
  v5(v6, a3);

  return swift_unknownObjectRelease();
}

uint64_t MTLSharedEvent.valueSignaled(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2A1C73D48](MTLSharedEvent.valueSignaled(_:), 0, 0);
}

uint64_t MTLSharedEvent.valueSignaled(_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = MTLSharedEvent.valueSignaled(_:);
  v4 = swift_continuation_init();
  closure #1 in MTLSharedEvent.valueSignaled(_:)(v4, v1, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

id MTL4ComputeCommandEncoder.copy(sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v15[0] = a7;
  v15[1] = a8;
  v15[2] = a9;
  return [v13 copyFromTexture:a1 sourceSlice:a2 sourceLevel:a3 sourceOrigin:v16 sourceSize:v15 toBuffer:a10 destinationOffset:a11 destinationBytesPerRow:a12 destinationBytesPerImage:a13 options:?];
}

id MTL4ComputeCommandEncoder.copy(sourceBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v17[0] = a5;
  v17[1] = a6;
  v17[2] = a7;
  v15 = a11;
  v16 = a12;
  return [v13 copyFromBuffer:a1 sourceOffset:a2 sourceBytesPerRow:a3 sourceBytesPerImage:a4 sourceSize:v17 toTexture:a9 destinationSlice:a10 destinationLevel:&v15 destinationOrigin:a13 options:?];
}

id MTLBlitCommandEncoder.fill(buffer:range:value:)(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v4 fillBuffer:result range:a2 value:{a3 - a2, a4}];
  }

  __break(1u);
  return result;
}

id MTLBlitCommandEncoder.copyIndirectCommandBuffer(_:sourceRange:destination:destinationIndex:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v7 *a7];
  }

  __break(1u);
  return result;
}

id MTLBlitCommandEncoder.resetCommandsInBuffer(_:range:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v5 *a5];
  }

  __break(1u);
  return result;
}

uint64_t MTL4CommandQueue.commit(_:options:)(int64_t a1, void *a2)
{
  if (a2)
  {
    if (a1 >> 62)
    {
      if (a1 < 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x29C2ABB10](v10);
      v12 = MEMORY[0x29C2ABB10](v10);
      v13 = a2;

      if (v12)
      {
        v17 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

        v5 = (v17 + 4);
      }

      else
      {
        v5 = -8;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      v6 = a2;
    }

    [v2 commit:v5 count:v4 options:a2];
  }

  else
  {
    if (a1 >> 62)
    {
      if (a1 < 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v7 = MEMORY[0x29C2ABB10](v14);
      v16 = MEMORY[0x29C2ABB10](v14);

      if (v16)
      {
        v18 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

        v8 = (v18 + 4);
      }

      else
      {
        v8 = -8;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    [v2 commit:v8 count:v7];
  }

  return swift_unknownObjectRelease();
}

uint64_t MTLCommandBuffer.useResidencySets(_:)(int64_t a1, uint64_t a2, SEL *a3)
{
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = MEMORY[0x29C2ABB10](v8);
    v10 = MEMORY[0x29C2ABB10](v8);

    if (v10)
    {
      v11 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      v6 = (v11 + 4);
    }

    else
    {
      v6 = -8;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  [v3 *a3];

  return swift_unknownObjectRelease();
}

id MTL4CommandBuffer.resolveCounterHeap(_:range:buffer:fenceToWait:fenceToUpdate:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v7 resolveCounterHeap:result withRange:a2 intoBuffer:a3 - a2 waitFence:a4 updateFence:{a5, a6, a7}];
  }

  __break(1u);
  return result;
}

id MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  result = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(a1, a2, a3, a4, &selRef_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error_);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:), 0, 0);
}

uint64_t MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 19;
  v7 = v0[19];
  v6 = v8[1];
  v10 = v1[17];
  v9 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v11 = swift_continuation_init();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v12;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_63;
  v13 = _Block_copy(v4);
  v14 = v1[15];

  [v6 newComputePipelineStateWithDescriptor:v10 dynamicLinkingDescriptor:v9 compilerTaskOptions:v7 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

id MTL4Compiler.makeRenderPipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  result = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(a1, a2, a3, a4, &selRef_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error_);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

id MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v6 = [v5 *a5];
  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t MTL4Compiler.makeRenderPipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeRenderPipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:), 0, 0);
}

uint64_t MTL4Compiler.makeRenderPipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 19;
  v7 = v0[19];
  v6 = v8[1];
  v10 = v1[17];
  v9 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v11 = swift_continuation_init();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v12;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_57;
  v13 = _Block_copy(v4);
  v14 = v1[15];

  [v6 newRenderPipelineStateWithDescriptor:v10 dynamicLinkingDescriptor:v9 compilerTaskOptions:v7 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

id MTL4Compiler.makeRenderPipelineStateBySpecialization(descriptor:pipeline:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v3 = [v2 newRenderPipelineStateBySpecializationWithDescriptor:a1 pipeline:a2 error:v8];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t MTL4Compiler.makeRenderPipelineStateBySpecialization(descriptor:pipeline:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeRenderPipelineStateBySpecialization(descriptor:pipeline:), 0, 0);
}

uint64_t MTL4Compiler.makeRenderPipelineStateBySpecialization(descriptor:pipeline:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 18;
  v7 = v0[18];
  v6 = v8[1];
  v9 = v1[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v10 = swift_continuation_init();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v11;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_51;
  v12 = _Block_copy(v4);
  v13 = v1[15];

  [v6 newRenderPipelineStateBySpecializationWithDescriptor:v9 pipeline:v7 completionHandler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

id MTL4Compiler.makeBinaryFunction(descriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v3 = [v2 newBinaryFunctionWithDescriptor:a1 compilerTaskOptions:a2 error:v8];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t MTL4Compiler.makeBinaryFunction(descriptor:compilerTaskOptions:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeBinaryFunction(descriptor:compilerTaskOptions:), 0, 0);
}

uint64_t MTL4Compiler.makeBinaryFunction(descriptor:compilerTaskOptions:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 18;
  v7 = v0[18];
  v6 = v8[1];
  v9 = v1[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v10 = swift_continuation_init();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v11;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_45;
  v12 = _Block_copy(v4);
  v13 = v1[15];

  [v6 newBinaryFunctionWithDescriptor:v9 compilerTaskOptions:v7 completionHandler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t MTL4Compiler.makeLibrary(descriptor:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeLibrary(descriptor:), 0, 0);
}

uint64_t MTL4Compiler.makeLibrary(descriptor:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 17;
  v7 = v0[17];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeLibrary(descriptor:);
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeLibrary(descriptor:);
  v1[15] = v10;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_39;
  v11 = _Block_copy(v4);
  v12 = v1[15];

  [v6 newLibraryWithDescriptor:v7 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 128);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t MTL4Compiler.makeDynamicLibrary(library:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeDynamicLibrary(library:), 0, 0);
}

uint64_t MTL4Compiler.makeDynamicLibrary(library:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 17;
  v7 = v0[17];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v10;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_33;
  v11 = _Block_copy(v4);
  v12 = v1[15];

  [v6 newDynamicLibrary:v7 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t MTL4Compiler.makeDynamicLibrary(url:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeDynamicLibrary(url:), 0, 0);
}

uint64_t MTL4Compiler.makeDynamicLibrary(url:)()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v3 = swift_continuation_init();
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v0[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v0[15] = v7;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v0[13] = &block_descriptor_27;
  v8 = _Block_copy(v0 + 10);
  v9 = v0[15];

  [v1 newDynamicLibraryWithURL:v6 completionHandler:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

id MTL4Compiler.makeMachineLearningPipelineState(descriptor:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v7[0] = 0;
  v2 = [v1 newMachineLearningPipelineStateWithDescriptor:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t MTL4Compiler.makeMachineLearningPipelineState(descriptor:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2A1C73D48](MTL4Compiler.makeMachineLearningPipelineState(descriptor:), 0, 0);
}

uint64_t MTL4Compiler.makeMachineLearningPipelineState(descriptor:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 17;
  v7 = v0[17];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MTL4Compiler.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:compilerTaskOptions:);
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:);
  v1[15] = v10;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor;
  v11 = _Block_copy(v4);
  v12 = v1[15];

  [v6 newMachineLearningPipelineStateWithDescriptor:v7 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MTLComputePipelineState?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id MTL4Archive.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  result = MTL4Archive.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:)(a1, a2, a3, &selRef_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_error_, &selRef_newComputePipelineStateWithDescriptor_error_);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

id MTL4Archive.makeRenderPipelineState(descriptor:dynamicLinkingDescriptor:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  result = MTL4Archive.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:)(a1, a2, a3, &selRef_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_error_, &selRef_newRenderPipelineStateWithDescriptor_error_);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

id MTL4Archive.makeComputePipelineState(descriptor:dynamicLinkingDescriptor:)(uint64_t a1, void *a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v6 = v5;
  v17[1] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v17[0] = 0;
    v9 = a2;
    v10 = [v6 *a4];
    if (v10)
    {
      v11 = v10;
      v12 = v17[0];
    }

    else
    {
      v11 = v17[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v17[0] = 0;
    v13 = [v5 *a5];
    if (v13)
    {
      v11 = v13;
      v14 = v17[0];
    }

    else
    {
      v11 = v17[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t MTLRenderPassDescriptor.getSamplePositions()()
{
  result = [v0 getSamplePositions:0 count:0];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      type metadata accessor for MTLSamplePosition();
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v3 + 16) = v2;
      bzero((v3 + 32), 8 * v2);
    }

    else
    {
      v3 = MEMORY[0x29EDCA190];
    }

    [v0 getSamplePositions:v3 + 32 count:v2];
    return v3;
  }

  return result;
}

uint64_t key path getter for MTL4RenderPassDescriptor.samplePositions : MTL4RenderPassDescriptor@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MTLRenderPassDescriptor.getSamplePositions()();
  *a2 = result;
  return result;
}

id key path setter for MTL4RenderPassDescriptor.samplePositions : MTL4RenderPassDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(v2 + 16))
  {
    return [v3 setSamplePositions:v2 + 32 count:?];
  }

  else
  {
    return [v3 setSamplePositions:0 count:?];
  }
}

id MTL4RenderPassDescriptor.samplePositions.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    [v1 setSamplePositions:a1 + 32 count:?];
  }

  else
  {

    return [v1 setSamplePositions:0 count:0];
  }
}

id (*MTL4RenderPassDescriptor.samplePositions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  result = [v1 getSamplePositions:0 count:0];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      type metadata accessor for MTLSamplePosition();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 8 * v4);
    }

    else
    {
      v5 = MEMORY[0x29EDCA190];
    }

    [v1 getSamplePositions:v5 + 32 count:v4];
    *a1 = v5;
    return MTL4RenderPassDescriptor.samplePositions.modify;
  }

  return result;
}

id MTL4RenderPassDescriptor.samplePositions.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v3 + 16);
  if (a2)
  {
    if (!v4)
    {
      [v2 setSamplePositions:0 count:?];
LABEL_6:
    }

LABEL_5:
    [v2 setSamplePositions:v3 + 32 count:?];
    goto LABEL_6;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  v6 = v2;

  return [v6 setSamplePositions:0 count:0];
}

id key path getter for MTLLogicalToPhysicalColorAttachmentMap.subscript(_:) : MTLLogicalToPhysicalColorAttachmentMap@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 getPhysicalIndexForLogicalIndex_];
  *a3 = result;
  return result;
}

id (*MTLLogicalToPhysicalColorAttachmentMap.subscript.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = [v2 getPhysicalIndexForLogicalIndex_];
  return MTLLogicalToPhysicalColorAttachmentMap.subscript.modify;
}

id MTLTensorExtents.init(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRank:*(a1 + 16) values:a1 + 32];

  return v1;
}

uint64_t MTLTensorExtents.extents.getter()
{
  result = [v0 rank];
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = result;
  if (result)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 8 * v2);
    v4 = 0;
    while (1)
    {
      result = [v0 extentAtDimensionIndex_];
      if (v4 >= *(v3 + 16))
      {
        break;
      }

      *(v3 + 8 * v4++ + 32) = result;
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return MEMORY[0x29EDCA190];
}

Swift::Void __swiftcall MTL4MachineLearningPipelineDescriptor.setInputDimensions(_:bufferIndex:)(Swift::OpaquePointer _, Swift::Int bufferIndex)
{
  if (_._rawValue >> 62)
  {
    if (_._rawValue >= 0)
    {
      _._rawValue = (_._rawValue & 0xFFFFFFFFFFFFFF8);
    }

    v4 = MEMORY[0x29C2ABB10](_._rawValue);
  }

  else
  {
    v4 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for MTLTensorExtents();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setInputDimensions:isa withRange:{bufferIndex, v4}];
}

id MTLResourceViewPool.copyResourceViews(sourcePool:sourceRange:destinationIndex:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFSUB__(a3, a2))
  {
    return [v4 copyResourceViewsFromPool:result sourceRange:a2 destinationIndex:{a3 - a2, a4}];
  }

  __break(1u);
  return result;
}

uint64_t *(*MTLTextureViewDescriptor.levelRange.modify(uint64_t *(**a1)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  result = [v1 levelRange];
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    a1[1] = (result + v4);
    return MTLTextureViewDescriptor.levelRange.modify;
  }

  return result;
}

id MTLTextureViewDescriptor.levelRange.getter(SEL *a1)
{
  result = [v1 *a1];
  if (__OFADD__(result, v3))
  {
    __break(1u);
  }

  return result;
}

char *key path getter for MTLTextureViewDescriptor.levelRange : MTLTextureViewDescriptor@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = &result[v5];
  }

  return result;
}

id key path setter for MTLTextureViewDescriptor.levelRange : MTLTextureViewDescriptor(id *a1, void **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  result = *a1;
  if (__OFSUB__(a1[1], result))
  {
    __break(1u);
  }

  else
  {
    v9 = *a2;
    v10 = NSMakeRange();
    v12 = v11;
    v13 = *a5;

    return [v9 v13];
  }

  return result;
}

id MTLTextureViewDescriptor.levelRange.setter(id result, uint64_t a2, SEL *a3)
{
  if (!__OFSUB__(a2, result))
  {
    return [v3 *a3];
  }

  __break(1u);
  return result;
}

uint64_t *(*MTLTextureViewDescriptor.sliceRange.modify(uint64_t *(**a1)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  result = [v1 sliceRange];
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    a1[1] = (result + v4);
    return MTLTextureViewDescriptor.sliceRange.modify;
  }

  return result;
}

uint64_t *MTLTextureViewDescriptor.levelRange.modify(uint64_t *result, char a2, SEL *a3)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  v7 = __OFSUB__(v5, *result);
  if (a2)
  {
    if (!v7)
    {
      return [result[2] *a3];
    }

    __break(1u);
  }

  if (!v7)
  {
    return [result[2] *a3];
  }

  __break(1u);
  return result;
}

uint64_t MTLCounterSampleBuffer.resolveCounterRange(_:)(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = [v2 resolveCounterRange_];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  return result;
}

id MTLBuffer.didModifyRange(_:)(id result, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (!__OFSUB__(a2, result))
  {
    return [v4 *a4];
  }

  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)()
{
  v0 = *(*(type metadata accessor for MTLLogContainer.Iterator() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)();
  NSFastEnumerationIterator.next()();
  v3 = MEMORY[0x29EDCA190];
  v4 = 0;
  if (v26)
  {
    v5 = (MEMORY[0x29EDCA190] + 32);
    v6 = &_sSo14MTLFunctionLog_pMR;
    v24[0] = v2;
    while (1)
    {
      outlined init with take of Any(&v25, &v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MTLFunctionLog_pMd, v6);
      result = swift_dynamicCast();
      v8 = v24[1];
      if (!v4)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v10 = v6;
        v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 25;
        }

        v16 = v15 >> 3;
        v13[2] = v12;
        v13[3] = (2 * (v15 >> 3)) | 1;
        v17 = (v13 + 4);
        v18 = v3[3] >> 1;
        if (v3[2])
        {
          v19 = v3 + 4;
          if (v13 != v3 || v17 >= v19 + 8 * v18)
          {
            memmove(v13 + 4, v19, 8 * v18);
          }

          v3[2] = 0;
        }

        v5 = (v17 + 8 * v18);
        v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

        v3 = v13;
        v6 = v10;
        v2 = v24[0];
      }

      v20 = __OFSUB__(v4--, 1);
      if (v20)
      {
        break;
      }

      *v5++ = v8;
      NSFastEnumerationIterator.next()();
      if (!v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  outlined destroy of Any?(&v25);
  result = outlined destroy of MTLLogContainer.Iterator(v2);
  v21 = v3[3];
  if (v21 < 2)
  {
    return v3;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v4);
  v23 = v22 - v4;
  if (!v20)
  {
    v3[2] = v23;
    return v3;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for MTLLogContainer.Iterator() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSFastEnumerationIterator.init(_:)();
  if (!a2)
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_10:
    v10 = a3;
LABEL_13:
    outlined init with take of MTLLogContainer.Iterator(v8, a1);
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v13)
      {
        break;
      }

      outlined init with take of Any(&v12, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MTLFunctionLog_pMd, &_sSo14MTLFunctionLog_pMR);
      swift_dynamicCast();
      *(a2 + 8 * v10) = v11[1];
      if (a3 - 1 == v10)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    outlined destroy of Any?(&v12);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15MTLResidencySet_p_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15MTLResidencySet_p_Tt1g5Tm(v2, 0);

    MEMORY[0x29C2ABB00](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    if (v1 < 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x29C2ABB10](v5);
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

void type metadata accessor for MTLSamplePosition()
{
  if (!lazy cache variable for type metadata for MTLSamplePosition)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for MTLSamplePosition);
    }
  }
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

unint64_t type metadata accessor for MTLTensorExtents()
{
  result = lazy cache variable for type metadata for MTLTensorExtents;
  if (!lazy cache variable for type metadata for MTLTensorExtents)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MTLTensorExtents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MTLLogContainer.Iterator and conformance MTLLogContainer.Iterator()
{
  result = lazy protocol witness table cache variable for type MTLLogContainer.Iterator and conformance MTLLogContainer.Iterator;
  if (!lazy protocol witness table cache variable for type MTLLogContainer.Iterator and conformance MTLLogContainer.Iterator)
  {
    type metadata accessor for MTLLogContainer.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MTLLogContainer.Iterator and conformance MTLLogContainer.Iterator);
  }

  return result;
}

uint64_t type metadata accessor for MTLLogContainer.Iterator()
{
  result = type metadata singleton initialization cache for MTLLogContainer.Iterator;
  if (!type metadata singleton initialization cache for MTLLogContainer.Iterator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MTLLogContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MTLLogContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for MTLLogContainer.Iterator()
{
  result = type metadata accessor for NSFastEnumerationIterator();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MTLSamplePosition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MTLSamplePosition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t outlined init with take of MTLLogContainer.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MTLLogContainer.Iterator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MTLLogContainer.Iterator(uint64_t a1)
{
  v2 = type metadata accessor for MTLLogContainer.Iterator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in MTL4Compiler.makeMachineLearningPipelineState(descriptor:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    **(*(v3 + 64) + 40) = a1;
    swift_unknownObjectRetain();
    a1 = v3;

    return MEMORY[0x2A1C73CD8](a1);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x2A1C73CD8](a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v5 = swift_allocError();
  *v6 = a2;
  MEMORY[0x29C2ABD40](a2);

  return MEMORY[0x2A1C73CE0](v3, v5);
}

MTLIOCompressionContext partial apply for closure #1 in MTLIOCreateCompressionContext(_:_:_:)@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  result = MTLIOCreateCompressionContext(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}