@interface PXGEngineDeferRenderEventSerializable
- (PXGEngineDeferRenderEventSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGEngineDeferRenderEventSerializable

- (id)createSerializableObject
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"shouldDeferRenderUntilNextFrame";
  v3 = [(PXGEngineDeferRenderEventSerializable *)self shouldDeferRenderUntilNextFrame];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v9[1] = @"delegateAllowsRender";
  v10[0] = v4;
  v5 = [(PXGEngineDeferRenderEventSerializable *)self delegateAllowsRender];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (PXGEngineDeferRenderEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PXGEngineDeferRenderEventSerializable;
  v5 = [(PXGEngineDeferRenderEventSerializable *)&v12 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"shouldDeferRenderUntilNextFrame"];
    v8 = [v7 BOOLValue];

    v5->_shouldDeferRenderUntilNextFrame = v8;
    v9 = [v6 objectForKeyedSubscript:@"delegateAllowsRender"];

    v10 = v9;
    LOBYTE(v9) = [v10 BOOLValue];

    v5->_delegateAllowsRender = v9;
  }

  return v5;
}

@end