@interface PXGVisionRecordingMaterialSerializable
- (PXGVisionRecordingMaterialSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingMaterialSerializable

- (id)createSerializableObject
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"shaderFlags";
  v3 = [(PXGVisionRecordingMaterialSerializable *)self shaderFlags];
  v15[0] = v3;
  v14[1] = @"colorProgram";
  v4 = [(PXGVisionRecordingMaterialSerializable *)self colorProgram];
  v15[1] = v4;
  v14[2] = @"shader";
  v5 = [(PXGVisionRecordingMaterialSerializable *)self shader];
  v15[2] = v5;
  v14[3] = @"isOpaque";
  v6 = [(PXGVisionRecordingMaterialSerializable *)self isOpaque];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v15[3] = v7;
  v14[4] = @"hasPlatter";
  v8 = [(PXGVisionRecordingMaterialSerializable *)self hasPlatter];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v15[4] = v9;
  v14[5] = @"identifier";
  v10 = [(PXGVisionRecordingMaterialSerializable *)self identifier];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v15[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v12;
}

- (PXGVisionRecordingMaterialSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PXGVisionRecordingMaterialSerializable;
  v5 = [(PXGVisionRecordingMaterialSerializable *)&v21 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"shaderFlags"];
    shaderFlags = v5->_shaderFlags;
    v5->_shaderFlags = v7;

    v9 = [v6 objectForKeyedSubscript:@"colorProgram"];
    colorProgram = v5->_colorProgram;
    v5->_colorProgram = v9;

    v11 = [v6 objectForKeyedSubscript:@"shader"];
    shader = v5->_shader;
    v5->_shader = v11;

    v13 = [v6 objectForKeyedSubscript:@"isOpaque"];
    v14 = [v13 BOOLValue];

    v5->_isOpaque = v14;
    v15 = [v6 objectForKeyedSubscript:@"hasPlatter"];
    v16 = [v15 BOOLValue];

    v5->_hasPlatter = v16;
    v17 = [v6 objectForKeyedSubscript:@"identifier"];

    v18 = v17;
    v19 = [v18 intValue];

    v5->_identifier = v19;
  }

  return v5;
}

@end