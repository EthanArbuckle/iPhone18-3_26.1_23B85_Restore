@interface TSDGPUDataArrayBuffer
- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index;
- (BOOL)hasUpdatedData;
- (NSString)description;
- (TSDGPUDataArrayBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count bufferCount:(unint64_t)bufferCount;
- (char)dataPointer;
- (float)metalFloatForAttribute:(id)attribute atIndex:(unint64_t)index;
- (unint64_t)p_bufferOffsetOfAttribute:(id)attribute atIndex:(unint64_t)index component:(unint64_t)component;
- (void)addIndexNeedsUpdate:(int64_t)update;
- (void)addIndexRangeNeedsUpdate:(_NSRange)update;
- (void)dealloc;
- (void)encodeArrayBufferWithEncoder:(id)encoder atIndex:(int64_t)index;
- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)device;
- (void)setMetalFloat:(float)float forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)swapGPUDataBuffers;
@end

@implementation TSDGPUDataArrayBuffer

- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)device
{
  deviceCopy = device;
  if (!self->_dataBufferHasBeenSetup)
  {
    v16 = deviceCopy;
    vertexCount = self->_vertexCount;
    v6 = [(TSDGPUDataArrayBuffer *)self dataBufferEntrySize]* vertexCount;
    if (v6 > 0xFFF)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TSDGPUDataArrayBuffer bufferCount](self, "bufferCount")}];
      bufferCount = [(TSDGPUDataArrayBuffer *)self bufferCount];
      v9 = v16;
      if (bufferCount)
      {
        for (i = 0; i < bufferCount2; ++i)
        {
          v11 = [v9 newBufferWithBytes:self->_gLData length:v6 options:0];
          [v7 addObject:v11];

          bufferCount2 = [(TSDGPUDataArrayBuffer *)self bufferCount];
          v9 = v16;
        }
      }

      v13 = [v7 copy];
      metalDataBuffers = self->_metalDataBuffers;
      self->_metalDataBuffers = v13;

      self->_currentBufferIndex = 0;
      self->_usesMetalBuffer = 1;
      self->_dataBufferHasBeenSetup = 1;
      gLData = self->_gLData;
      if (gLData)
      {
        free(gLData);
        self->_gLData = 0;
      }
    }

    else
    {
      self->_bufferCount = 1;
      self->_dataBufferHasBeenSetup = 1;
    }

    deviceCopy = v16;
  }
}

- (unint64_t)p_bufferOffsetOfAttribute:(id)attribute atIndex:(unint64_t)index component:(unint64_t)component
{
  attributeCopy = attribute;
  dataBufferEntrySize = [(TSDGPUDataArrayBuffer *)self dataBufferEntrySize];
  v10 = [attributeCopy bufferOffset] + dataBufferEntrySize * index;
  if (component)
  {
    v10 += TSDGPUDataBufferDataTypeSize([attributeCopy dataType]) * component;
  }

  return v10;
}

- (TSDGPUDataArrayBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count bufferCount:(unint64_t)bufferCount
{
  v44 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  if ([attributesCopy count])
  {
    if (count)
    {
      goto LABEL_3;
    }

LABEL_19:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v29 file:v30 lineNumber:497 description:@"vertexCount==0!"];

    if (bufferCount)
    {
      goto LABEL_4;
    }

LABEL_20:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler2 handleFailureInFunction:v32 file:v33 lineNumber:498 description:@"bufferCount==0!"];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
  [currentHandler3 handleFailureInFunction:v26 file:v27 lineNumber:496 description:@"no attributes!"];

  if (!count)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!bufferCount)
  {
    goto LABEL_20;
  }

LABEL_4:
  v9 = [attributesCopy count];
  selfCopy = 0;
  if (bufferCount && count && v9)
  {
    v42.receiver = self;
    v42.super_class = TSDGPUDataArrayBuffer;
    v11 = [(TSDGPUDataArrayBuffer *)&v42 init];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:attributesCopy];
      vertexAttributes = v11->_vertexAttributes;
      v11->_vertexAttributes = v12;

      v11->_vertexCount = count;
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      attributeOffsetsDictionary = v11->_attributeOffsetsDictionary;
      v11->_attributeOffsetsDictionary = v14;

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v11->_vertexAttributes;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = attributesCopy;
        v19 = 0;
        v20 = *v39;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v38 + 1) + 8 * i);
            [v22 setDataArrayBuffer:v11];
            v23 = TSDGPUDataBufferDataTypeSize([v22 dataType]);
            if (!v11->_bufferUsage)
            {
              v11->_bufferUsage = [v22 bufferUsage];
            }

            [v22 setBufferOffset:v19];
            v19 += (v23 * [v22 componentCount] + 3) & 0xFFFFFFFC;
            [v22 componentCount];
          }

          v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v18);
        v24 = v19;
        attributesCopy = v37;
      }

      else
      {
        v24 = 0;
      }

      v11->_dataBufferEntrySize = v24;
      if ([(TSDGPUDataArrayBuffer *)v11 dataBufferEntrySize])
      {
        v11->_gLData = malloc_type_calloc(v11->_vertexCount, [(TSDGPUDataArrayBuffer *)v11 dataBufferEntrySize], 0xCFE8A33EuLL);
      }

      v11->_bufferCount = bufferCount;
      v11->_needsUpdateFirstIndex = malloc_type_malloc(8 * bufferCount, 0x100004000313F17uLL);
      v34 = malloc_type_malloc(8 * bufferCount, 0x100004000313F17uLL);
      v11->_needsUpdateLastIndex = v34;
      needsUpdateFirstIndex = v11->_needsUpdateFirstIndex;
      do
      {
        *needsUpdateFirstIndex++ = -1;
        *v34++ = -1;
        --bufferCount;
      }

      while (bufferCount);
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  free(self->_needsUpdateFirstIndex);
  free(self->_needsUpdateLastIndex);
  gLDataBuffers = self->_gLDataBuffers;
  if (gLDataBuffers)
  {
    free(gLDataBuffers);
    self->_gLDataBuffers = 0;
  }

  gLData = self->_gLData;
  if (gLData)
  {
    free(gLData);
    self->_gLData = 0;
  }

  v5.receiver = self;
  v5.super_class = TSDGPUDataArrayBuffer;
  [(TSDGPUDataArrayBuffer *)&v5 dealloc];
}

- (void)addIndexRangeNeedsUpdate:(_NSRange)update
{
  length = update.length;
  location = update.location;
  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:?];

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:length + location - 1];
}

- (void)addIndexNeedsUpdate:(int64_t)update
{
  currentBufferIndex = self->_currentBufferIndex;
  needsUpdateFirstIndex = self->_needsUpdateFirstIndex;
  needsUpdateLastIndex = self->_needsUpdateLastIndex;
  v6 = needsUpdateFirstIndex[currentBufferIndex];
  if (v6 >= update)
  {
    updateCopy = update;
  }

  else
  {
    updateCopy = needsUpdateFirstIndex[currentBufferIndex];
  }

  if (v6 == -1)
  {
    updateCopy2 = update;
  }

  else
  {
    updateCopy2 = updateCopy;
  }

  needsUpdateFirstIndex[currentBufferIndex] = updateCopy2;
  v9 = self->_currentBufferIndex;
  v10 = needsUpdateLastIndex[v9];
  if (v10 <= update)
  {
    updateCopy3 = update;
  }

  else
  {
    updateCopy3 = needsUpdateLastIndex[v9];
  }

  if (v10 == -1)
  {
    updateCopy4 = update;
  }

  else
  {
    updateCopy4 = updateCopy3;
  }

  needsUpdateLastIndex[v9] = updateCopy4;
}

- (void)encodeArrayBufferWithEncoder:(id)encoder atIndex:(int64_t)index
{
  v5 = self->_dataBufferEntrySize * self->_vertexCount;
  if (v5 <= 0x1000)
  {
    gLData = self->_gLData;
    encoderCopy = encoder;
    [encoderCopy setVertexBytes:gLData length:v5 atIndex:index];
  }

  else
  {
    metalDataBuffers = self->_metalDataBuffers;
    currentBufferIndex = self->_currentBufferIndex;
    encoderCopy2 = encoder;
    encoderCopy = [(NSArray *)metalDataBuffers objectAtIndexedSubscript:currentBufferIndex];
    [encoderCopy2 setVertexBuffer:? offset:? atIndex:?];
  }
}

- (void)swapGPUDataBuffers
{
  v13 = *MEMORY[0x277D85DE8];
  [(TSDGPUDataArrayBuffer *)self setCurrentBufferIndex:([(TSDGPUDataArrayBuffer *)self currentBufferIndex]+ 1) % [(TSDGPUDataArrayBuffer *)self bufferCount]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_vertexAttributes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDataArrayBuffer:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (char)dataPointer
{
  if (!self->_usesMetalBuffer)
  {
    return self->_gLData;
  }

  v2 = [(NSArray *)self->_metalDataBuffers objectAtIndexedSubscript:self->_currentBufferIndex];
  contents = [v2 contents];

  return contents;
}

- (BOOL)hasUpdatedData
{
  if (![(TSDGPUDataArrayBuffer *)self bufferCount])
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = self->_needsUpdateFirstIndex[v3];
    v5 = v4 != -1;
    if (v4 != -1)
    {
      break;
    }

    ++v3;
  }

  while (v3 < [(TSDGPUDataArrayBuffer *)self bufferCount]);
  return v5;
}

- (float)metalFloatForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  return TSDGPUDataBufferMetalfloatWithDataType(&gLData[v7], dataType, isNormalized, v11);
}

- (void)setMetalFloat:(float)float forAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v9 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  TSDGPUDataBufferSetMetalfloatWithDataType(&gLData[v9], dataType, isNormalized, float);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  v12 = TSDGPUDataBufferMetalPoint2DWithDataType(&gLData[v7], dataType, isNormalized, v11);
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setMetalPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v10 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  TSDGPUDataBufferSetMetalPoint2DWithDataType(&gLData[v10], dataType, isNormalized, var0, var1);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  v12 = TSDGPUDataBufferMetalPoint3DWithDataType(&gLData[v7], dataType, isNormalized, v11);
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setMetalPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v11 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  TSDGPUDataBufferSetMetalPoint3DWithDataType(&gLData[v11], dataType, isNormalized, var0, var1, var2);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  LODWORD(v11) = TSDGPUDataBufferMetalPoint4DWithDataType(&gLData[v7], dataType, isNormalized).u32[0];
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)setMetalPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var3 = d.var3;
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v12 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  TSDGPUDataBufferSetMetalPoint4DWithDataType(&gLData[v12], dataType, isNormalized, var0, var1, var2, var3);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  bufferUsage = self->_bufferUsage;
  switch(bufferUsage)
  {
    case 0x88E0u:
      v5 = @"METAL_STREAM_DRAW";
      break;
    case 0x88E8u:
      v5 = @"METAL_DYNAMIC_DRAW";
      break;
    case 0x88E4u:
      v5 = @"METAL_STATIC_DRAW";
      break;
    default:
      v5 = @"UNKNOWN";
      break;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"bufferUsage:%@", v5];
  [array addObject:v6];

  v7 = self->_vertexCount * [(TSDGPUDataArrayBuffer *)self dataBufferEntrySize];
  if (v7 > 0x100000)
  {
    v8 = @"(%0.1fMB)";
    v9 = 0.000000953674316;
LABEL_12:
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v9 * v7];
    goto LABEL_14;
  }

  if (v7 >= 0x401)
  {
    v8 = @"(%0.1fKB)";
    v9 = 0.0009765625;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"bufferSize:%ldB%@", v7, v10];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"attributes:%@", self->_vertexAttributes];
  [array addObject:v12];

  if ([(TSDGPUDataArrayBuffer *)self bufferCount]!= 1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bufferCount:%d", -[TSDGPUDataArrayBuffer bufferCount](self, "bufferCount")];
    [array addObject:v13];
  }

  v14 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSDGPUDataArrayBuffer;
  v15 = [(TSDGPUDataArrayBuffer *)&v19 description];
  v16 = [array componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@: {%@}", v15, v16];

  return v17;
}

@end