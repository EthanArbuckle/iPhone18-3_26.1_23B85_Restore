@interface PGUpNextMemoriesGenerationResult
- (NSDictionary)dictionaryRepresentation;
- (PGUpNextMemoriesGenerationResult)initWithMemoryLocalIdentifiers:(id)a3 debugInfo:(id)a4;
@end

@implementation PGUpNextMemoriesGenerationResult

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3B138];
  v7[0] = *MEMORY[0x277D3B140];
  v7[1] = v2;
  debugInfo = self->_debugInfo;
  v8[0] = self->_memoryLocalIdentifiers;
  v8[1] = debugInfo;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PGUpNextMemoriesGenerationResult)initWithMemoryLocalIdentifiers:(id)a3 debugInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGUpNextMemoriesGenerationResult;
  v9 = [(PGUpNextMemoriesGenerationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memoryLocalIdentifiers, a3);
    objc_storeStrong(&v10->_debugInfo, a4);
  }

  return v10;
}

@end