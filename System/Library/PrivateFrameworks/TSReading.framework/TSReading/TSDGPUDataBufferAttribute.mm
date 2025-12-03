@interface TSDGPUDataBufferAttribute
+ (id)attributeWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count;
- (TSDGPUDataBufferAttribute)initWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count;
- (id)description;
@end

@implementation TSDGPUDataBufferAttribute

+ (id)attributeWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count
{
  normalizedCopy = normalized;
  v10 = *&usage;
  nameCopy = name;
  v12 = [[TSDGPUDataBufferAttribute alloc] initWithName:nameCopy bufferUsage:v10 dataType:type normalized:normalizedCopy componentCount:count];

  return v12;
}

- (TSDGPUDataBufferAttribute)initWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count
{
  countCopy = count;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = TSDGPUDataBufferAttribute;
  v13 = [(TSDGPUDataBufferAttribute *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(TSDGPUDataBufferAttribute *)v13 setName:nameCopy];
    typeCopy = 5;
    if (type != 3)
    {
      typeCopy = type;
    }

    v14->_dataType = typeCopy;
    v14->_bufferUsage = usage;
    v14->_componentCount = countCopy;
    v14->_isNormalized = normalized;
    v14->_locationInShader = -1;
  }

  return v14;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CCACA8];
  name = [(TSDGPUDataBufferAttribute *)self name];
  v6 = [v4 stringWithFormat:@"%@", name];
  [array addObject:v6];

  dataType = [(TSDGPUDataBufferAttribute *)self dataType];
  if (dataType > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_279D48E28[dataType];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"dataType:%@", v8];
  [array addObject:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"components:%d", -[TSDGPUDataBufferAttribute componentCount](self, "componentCount")];
  [array addObject:v10];

  bufferUsage = [(TSDGPUDataBufferAttribute *)self bufferUsage];
  switch(bufferUsage)
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
  [array addObject:v13];

  if ([(TSDGPUDataBufferAttribute *)self isNormalized])
  {
    [array addObject:@"normalized"];
  }

  v14 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSDGPUDataBufferAttribute;
  v15 = [(TSDGPUDataBufferAttribute *)&v19 description];
  v16 = [array componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"%@: {%@}", v15, v16];

  return v17;
}

@end