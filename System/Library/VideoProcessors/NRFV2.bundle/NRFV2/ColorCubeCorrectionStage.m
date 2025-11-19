@interface ColorCubeCorrectionStage
- (id)init:(id)a3;
- (int)runOnLuma:(id)a3 andChroma:(id)a4 withMask:(id)a5 outChroma:(id)a6 colorCubeFixType:(int)a7;
- (int)setMaskedSkyCubeVersion:(int)a3;
@end

@implementation ColorCubeCorrectionStage

- (id)init:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = ColorCubeCorrectionStage;
  v6 = [(ColorCubeCorrectionStage *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v8 = [SingleColorCubeCorrectionStage alloc];
    inited = objc_msgSend_init_cubeSize_data_(v8, v9, v5, 32, &unk_2958D5C48);
    v11 = v7->fixes[0];
    v7->fixes[0] = inited;

    v12 = [SingleColorCubeCorrectionStage alloc];
    v14 = objc_msgSend_init_cubeSize_data_(v12, v13, v5, 32, &unk_2958F5C48);
    v15 = v7->fixes[1];
    v7->fixes[1] = v14;

    v16 = [SingleColorCubeCorrectionStage alloc];
    v18 = objc_msgSend_init_cubeSize_data_(v16, v17, v5, 32, &unk_295915C48);
    v19 = v7->fixes[2];
    v7->fixes[2] = v18;

    v20 = v7->fixes[3];
    v7->fixes[3] = 0;

    v21 = v7;
  }

  return v7;
}

- (int)setMaskedSkyCubeVersion:(int)a3
{
  switch(a3)
  {
    case 1:
      v9 = [SingleColorCubeCorrectionStage alloc];
      inited = objc_msgSend_init_alternateCubeSize_alternateCubeData_defaultCubeSize_defaultCubeData_(v9, v10, self->_metal, 32, &unk_295995C48, 32, &unk_2959B5C48);
      goto LABEL_8;
    case 0:
      v7 = [SingleColorCubeCorrectionStage alloc];
      inited = objc_msgSend_init_alternateCubeSize_alternateCubeData_defaultCubeSize_defaultCubeData_(v7, v8, self->_metal, 32, &unk_295955C48, 32, &unk_295975C48);
      goto LABEL_8;
    case -1:
      v4 = [SingleColorCubeCorrectionStage alloc];
      inited = objc_msgSend_init_alternateCubeSize_alternateCubeData_defaultCubeSize_defaultCubeData_(v4, v5, self->_metal, 32, &unk_295935C48, 32, &unk_295935C48);
LABEL_8:
      v11 = self->fixes[3];
      self->fixes[3] = inited;

      return 0;
  }

  return -1;
}

- (int)runOnLuma:(id)a3 andChroma:(id)a4 withMask:(id)a5 outChroma:(id)a6 colorCubeFixType:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v16 = a6;
  if (a7 == -1)
  {
    v17 = FigSignalErrorAtGM();
  }

  else if ((a7 - 4) >= 0xFFFFFFFB)
  {
    v17 = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_(self->fixes[a7], v15, v12, v13, v14, v16);
    if (v17)
    {
      sub_29588B4F0();
    }
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

@end