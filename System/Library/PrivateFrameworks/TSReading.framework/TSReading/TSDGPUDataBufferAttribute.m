@interface TSDGPUDataBufferAttribute
+ (id)attributeWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7;
- (TSDGPUDataBufferAttribute)initWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7;
- (id)description;
@end

@implementation TSDGPUDataBufferAttribute

+ (id)attributeWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7
{
  v8 = a6;
  v10 = *&a4;
  v11 = a3;
  v12 = [[TSDGPUDataBufferAttribute alloc] initWithName:v11 bufferUsage:v10 dataType:a5 normalized:v8 componentCount:a7];

  return v12;
}

- (TSDGPUDataBufferAttribute)initWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7
{
  v7 = a7;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = TSDGPUDataBufferAttribute;
  v13 = [(TSDGPUDataBufferAttribute *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(TSDGPUDataBufferAttribute *)v13 setName:v12];
    v15 = 5;
    if (a5 != 3)
    {
      v15 = a5;
    }

    v14->_dataType = v15;
    v14->_bufferUsage = a4;
    v14->_componentCount = v7;
    v14->_isNormalized = a6;
    v14->_locationInShader = -1;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(TSDGPUDataBufferAttribute *)self name];
  v6 = [v4 stringWithFormat:@"%@", v5];
  [v3 addObject:v6];

  v7 = [(TSDGPUDataBufferAttribute *)self dataType];
  if (v7 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_279D48E28[v7];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"dataType:%@", v8];
  [v3 addObject:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"components:%d", -[TSDGPUDataBufferAttribute componentCount](self, "componentCount")];
  [v3 addObject:v10];

  v11 = [(TSDGPUDataBufferAttribute *)self bufferUsage];
  switch(v11)
  {
    case 0x88E0u:
      v12 = @"METAL_STREAM_DRAW";
      break;
    case 0x88E8u:
      v12 = @"METAL_DYNAMIC_DRAW";
      break;
    case 0x88E4u:
      v12 = @"METAL_STATIC_DRAW";
      break;
    default:
      v12 = @"UNKNOWN";
      break;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bufferUsage:%@", v12];
  [v3 addObject:v13];

  if ([(TSDGPUDataBufferAttribute *)self isNormalized])
  {
    [v3 addObject:@"normalized"];
  }

  v14 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSDGPUDataBufferAttribute;
  v15 = [(TSDGPUDataBufferAttribute *)&v19 description];
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@: {%@}", v15, v16];

  return v17;
}

@end