@interface TSDGPUDataArrayBuffer
- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)hasUpdatedData;
- (NSString)description;
- (TSDGPUDataArrayBuffer)initWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 bufferCount:(unint64_t)a5;
- (char)dataPointer;
- (float)metalFloatForAttribute:(id)a3 atIndex:(unint64_t)a4;
- (unint64_t)p_bufferOffsetOfAttribute:(id)a3 atIndex:(unint64_t)a4 component:(unint64_t)a5;
- (void)addIndexNeedsUpdate:(int64_t)a3;
- (void)addIndexRangeNeedsUpdate:(_NSRange)a3;
- (void)dealloc;
- (void)encodeArrayBufferWithEncoder:(id)a3 atIndex:(int64_t)a4;
- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)a3;
- (void)setMetalFloat:(float)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)swapGPUDataBuffers;
@end

@implementation TSDGPUDataArrayBuffer

- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)a3
{
  v4 = a3;
  if (!self->_dataBufferHasBeenSetup)
  {
    v16 = v4;
    vertexCount = self->_vertexCount;
    v6 = [(TSDGPUDataArrayBuffer *)self dataBufferEntrySize]* vertexCount;
    if (v6 > 0xFFF)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TSDGPUDataArrayBuffer bufferCount](self, "bufferCount")}];
      v8 = [(TSDGPUDataArrayBuffer *)self bufferCount];
      v9 = v16;
      if (v8)
      {
        for (i = 0; i < v12; ++i)
        {
          v11 = [v9 newBufferWithBytes:self->_gLData length:v6 options:0];
          [v7 addObject:v11];

          v12 = [(TSDGPUDataArrayBuffer *)self bufferCount];
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

    v4 = v16;
  }
}

- (unint64_t)p_bufferOffsetOfAttribute:(id)a3 atIndex:(unint64_t)a4 component:(unint64_t)a5
{
  v8 = a3;
  v9 = [(TSDGPUDataArrayBuffer *)self dataBufferEntrySize];
  v10 = [v8 bufferOffset] + v9 * a4;
  if (a5)
  {
    v10 += TSDGPUDataBufferDataTypeSize([v8 dataType]) * a5;
  }

  return v10;
}

- (TSDGPUDataArrayBuffer)initWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 bufferCount:(unint64_t)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 count])
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_19:
    v28 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v28 handleFailureInFunction:v29 file:v30 lineNumber:497 description:@"vertexCount==0!"];

    if (a5)
    {
      goto LABEL_4;
    }

LABEL_20:
    v31 = [MEMORY[0x277D6C290] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v31 handleFailureInFunction:v32 file:v33 lineNumber:498 description:@"bufferCount==0!"];

    goto LABEL_4;
  }

  v25 = [MEMORY[0x277D6C290] currentHandler];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
  [v25 handleFailureInFunction:v26 file:v27 lineNumber:496 description:@"no attributes!"];

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_20;
  }

LABEL_4:
  v9 = [v8 count];
  v10 = 0;
  if (a5 && a4 && v9)
  {
    v42.receiver = self;
    v42.super_class = TSDGPUDataArrayBuffer;
    v11 = [(TSDGPUDataArrayBuffer *)&v42 init];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8];
      vertexAttributes = v11->_vertexAttributes;
      v11->_vertexAttributes = v12;

      v11->_vertexCount = a4;
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
        v37 = v8;
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
        v8 = v37;
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

      v11->_bufferCount = a5;
      v11->_needsUpdateFirstIndex = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
      v34 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
      v11->_needsUpdateLastIndex = v34;
      needsUpdateFirstIndex = v11->_needsUpdateFirstIndex;
      do
      {
        *needsUpdateFirstIndex++ = -1;
        *v34++ = -1;
        --a5;
      }

      while (a5);
    }

    self = v11;
    v10 = self;
  }

  return v10;
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

- (void)addIndexRangeNeedsUpdate:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:?];

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:length + location - 1];
}

- (void)addIndexNeedsUpdate:(int64_t)a3
{
  currentBufferIndex = self->_currentBufferIndex;
  needsUpdateFirstIndex = self->_needsUpdateFirstIndex;
  needsUpdateLastIndex = self->_needsUpdateLastIndex;
  v6 = needsUpdateFirstIndex[currentBufferIndex];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = needsUpdateFirstIndex[currentBufferIndex];
  }

  if (v6 == -1)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  needsUpdateFirstIndex[currentBufferIndex] = v8;
  v9 = self->_currentBufferIndex;
  v10 = needsUpdateLastIndex[v9];
  if (v10 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = needsUpdateLastIndex[v9];
  }

  if (v10 == -1)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  needsUpdateLastIndex[v9] = v12;
}

- (void)encodeArrayBufferWithEncoder:(id)a3 atIndex:(int64_t)a4
{
  v5 = self->_dataBufferEntrySize * self->_vertexCount;
  if (v5 <= 0x1000)
  {
    gLData = self->_gLData;
    v10 = a3;
    [v10 setVertexBytes:gLData length:v5 atIndex:a4];
  }

  else
  {
    metalDataBuffers = self->_metalDataBuffers;
    currentBufferIndex = self->_currentBufferIndex;
    v8 = a3;
    v10 = [(NSArray *)metalDataBuffers objectAtIndexedSubscript:currentBufferIndex];
    [v8 setVertexBuffer:? offset:? atIndex:?];
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
  v3 = [v2 contents];

  return v3;
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

- (float)metalFloatForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v6 atIndex:a4 component:0];
  gLData = self->_gLData;
  v9 = [v6 dataType];
  v10 = [v6 isNormalized];

  return TSDGPUDataBufferMetalfloatWithDataType(&gLData[v7], v9, v10, v11);
}

- (void)setMetalFloat:(float)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v8 atIndex:a5 component:0];
  gLData = self->_gLData;
  v11 = [v8 dataType];
  v12 = [v8 isNormalized];

  TSDGPUDataBufferSetMetalfloatWithDataType(&gLData[v9], v11, v12, a3);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:a5];
}

- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v6 atIndex:a4 component:0];
  gLData = self->_gLData;
  v9 = [v6 dataType];
  v10 = [v6 isNormalized];

  v12 = TSDGPUDataBufferMetalPoint2DWithDataType(&gLData[v7], v9, v10, v11);
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setMetalPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v9 atIndex:a5 component:0];
  gLData = self->_gLData;
  v12 = [v9 dataType];
  v13 = [v9 isNormalized];

  TSDGPUDataBufferSetMetalPoint2DWithDataType(&gLData[v10], v12, v13, var0, var1);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:a5];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v6 atIndex:a4 component:0];
  gLData = self->_gLData;
  v9 = [v6 dataType];
  v10 = [v6 isNormalized];

  v12 = TSDGPUDataBufferMetalPoint3DWithDataType(&gLData[v7], v9, v10, v11);
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setMetalPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a4;
  v11 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v10 atIndex:a5 component:0];
  gLData = self->_gLData;
  v13 = [v10 dataType];
  v14 = [v10 isNormalized];

  TSDGPUDataBufferSetMetalPoint3DWithDataType(&gLData[v11], v13, v14, var0, var1, var2);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:a5];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v6 atIndex:a4 component:0];
  gLData = self->_gLData;
  v9 = [v6 dataType];
  v10 = [v6 isNormalized];

  LODWORD(v11) = TSDGPUDataBufferMetalPoint4DWithDataType(&gLData[v7], v9, v10).u32[0];
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)setMetalPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v11 = a4;
  v12 = [(TSDGPUDataArrayBuffer *)self p_bufferOffsetOfAttribute:v11 atIndex:a5 component:0];
  gLData = self->_gLData;
  v14 = [v11 dataType];
  v15 = [v11 isNormalized];

  TSDGPUDataBufferSetMetalPoint4DWithDataType(&gLData[v12], v14, v15, var0, var1, var2, var3);

  [(TSDGPUDataArrayBuffer *)self addIndexNeedsUpdate:a5];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CBEB18] array];
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
  [v3 addObject:v6];

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
  [v3 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"attributes:%@", self->_vertexAttributes];
  [v3 addObject:v12];

  if ([(TSDGPUDataArrayBuffer *)self bufferCount]!= 1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bufferCount:%d", -[TSDGPUDataArrayBuffer bufferCount](self, "bufferCount")];
    [v3 addObject:v13];
  }

  v14 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSDGPUDataArrayBuffer;
  v15 = [(TSDGPUDataArrayBuffer *)&v19 description];
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@: {%@}", v15, v16];

  return v17;
}

@end