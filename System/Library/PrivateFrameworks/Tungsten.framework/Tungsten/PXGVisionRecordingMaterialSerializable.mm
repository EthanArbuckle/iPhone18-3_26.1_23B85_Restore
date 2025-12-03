@interface PXGVisionRecordingMaterialSerializable
- (PXGVisionRecordingMaterialSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingMaterialSerializable

- (id)createSerializableObject
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"shaderFlags";
  shaderFlags = [(PXGVisionRecordingMaterialSerializable *)self shaderFlags];
  v15[0] = shaderFlags;
  v14[1] = @"colorProgram";
  colorProgram = [(PXGVisionRecordingMaterialSerializable *)self colorProgram];
  v15[1] = colorProgram;
  v14[2] = @"shader";
  shader = [(PXGVisionRecordingMaterialSerializable *)self shader];
  v15[2] = shader;
  v14[3] = @"isOpaque";
  isOpaque = [(PXGVisionRecordingMaterialSerializable *)self isOpaque];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:isOpaque];
  v15[3] = v7;
  v14[4] = @"hasPlatter";
  hasPlatter = [(PXGVisionRecordingMaterialSerializable *)self hasPlatter];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:hasPlatter];
  v15[4] = v9;
  v14[5] = @"identifier";
  identifier = [(PXGVisionRecordingMaterialSerializable *)self identifier];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v15[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v12;
}

- (PXGVisionRecordingMaterialSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = PXGVisionRecordingMaterialSerializable;
  v5 = [(PXGVisionRecordingMaterialSerializable *)&v21 init];
  if (v5)
  {
    v6 = objectCopy;
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
    bOOLValue = [v13 BOOLValue];

    v5->_isOpaque = bOOLValue;
    v15 = [v6 objectForKeyedSubscript:@"hasPlatter"];
    bOOLValue2 = [v15 BOOLValue];

    v5->_hasPlatter = bOOLValue2;
    v17 = [v6 objectForKeyedSubscript:@"identifier"];

    v18 = v17;
    intValue = [v18 intValue];

    v5->_identifier = intValue;
  }

  return v5;
}

@end