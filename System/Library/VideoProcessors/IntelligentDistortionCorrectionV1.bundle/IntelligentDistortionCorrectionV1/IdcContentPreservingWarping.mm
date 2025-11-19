@interface IdcContentPreservingWarping
+ (void)getDefaultConfigurationParameters:(id *)a3;
- (IdcContentPreservingWarping)initWithMetalContext:(id)a3 idcUtilities:(id)a4;
- (int)compileShaders:(BOOL)a3;
- (int)computeSizeOfSharedMetalBuffer:(id *)a3 maximumInputImageWidth:(unsigned int)a4 maximumInputImageHeight:(unsigned int)a5 maximumSegmentationMaskWidth:(unsigned int)a6 maximumSegmentationMaskHeight:(unsigned int)a7 meshWidth:(unsigned int)a8 meshHeight:(unsigned int)a9 paddedMeshWidth:(unsigned int)a10 paddedMeshHeight:(unsigned int)a11;
- (int)memoryAllocationHandler:(id *)a3 paddedMeshWidth:(unsigned int)a4 paddedMeshHeight:(unsigned int)a5 memoryAllocationParameters:(id *)a6 sharedMemoryBuffer:(id)a7 sharedMetalBufferOffset:(unint64_t)a8 sharedMetalBufferSize:(unint64_t)a9;
- (int)setSharedMetalBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5;
- (void)dealloc;
- (void)fillEdParameters:(id *)a3 meshWidth:(unsigned int)a4 meshHeight:(unsigned int)a5;
- (void)releaseResources;
@end

@implementation IdcContentPreservingWarping

+ (void)getDefaultConfigurationParameters:(id *)a3
{
  if (a3)
  {
    *&a3->var21[2].var0[1] = xmmword_2957C7DC0;
    *&a3->var21[2].var0[5] = 10;
  }

  else
  {
    sub_2957C2880();
  }
}

- (IdcContentPreservingWarping)initWithMetalContext:(id)a3 idcUtilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    sub_2957C2A00(self);
LABEL_8:
    v11 = 0;
    goto LABEL_5;
  }

  if (!v8)
  {
    sub_2957C2970(self);
    goto LABEL_8;
  }

  v13.receiver = self;
  v13.super_class = IdcContentPreservingWarping;
  v10 = [(IdcContentPreservingWarping *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, a3);
    objc_storeStrong(&v11->_idcUtilities, a4);
    v11->_sharedMetalBuffer.resourcesAssigned = 0;
  }

  else
  {
    sub_2957C28F8();
  }

LABEL_5:

  return v11;
}

- (int)compileShaders:(BOOL)a3
{
  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage1" constants:0];
  generateEdStage1 = self->_kernels.generateEdStage1;
  self->_kernels.generateEdStage1 = v5;

  if (!self->_kernels.generateEdStage1)
  {
    sub_2957C3210();
    return -12786;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage2" constants:0];
  generateEdStage2 = self->_kernels.generateEdStage2;
  self->_kernels.generateEdStage2 = v7;

  if (!self->_kernels.generateEdStage2)
  {
    sub_2957C3198();
    return -12786;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage3" constants:0];
  generateEdStage3 = self->_kernels.generateEdStage3;
  self->_kernels.generateEdStage3 = v9;

  if (!self->_kernels.generateEdStage3)
  {
    sub_2957C3120();
    return -12786;
  }

  v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdColumns" constants:0];
  generateEdColumns = self->_kernels.generateEdColumns;
  self->_kernels.generateEdColumns = v11;

  if (!self->_kernels.generateEdColumns)
  {
    sub_2957C30A8();
    return -12786;
  }

  v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdBuildAtA_Atb" constants:0];
  generateEdBuildAtA_Atb = self->_kernels.generateEdBuildAtA_Atb;
  self->_kernels.generateEdBuildAtA_Atb = v13;

  if (!self->_kernels.generateEdBuildAtA_Atb)
  {
    sub_2957C3030();
    return -12786;
  }

  v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsPresetWeightArray" constants:0];
  generateEsPresetWeightArray = self->_kernels.generateEsPresetWeightArray;
  self->_kernels.generateEsPresetWeightArray = v15;

  if (!self->_kernels.generateEsPresetWeightArray)
  {
    sub_2957C2FB8();
    return -12786;
  }

  v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsBuildWeightArray" constants:0];
  generateEsBuildWeightArray = self->_kernels.generateEsBuildWeightArray;
  self->_kernels.generateEsBuildWeightArray = v17;

  if (!self->_kernels.generateEsBuildWeightArray)
  {
    sub_2957C2F40();
    return -12786;
  }

  v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage1" constants:0];
  generateEsStage1 = self->_kernels.generateEsStage1;
  self->_kernels.generateEsStage1 = v19;

  if (!self->_kernels.generateEsStage1)
  {
    sub_2957C2EC8();
    return -12786;
  }

  v21 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage2" constants:0];
  generateEsStage2 = self->_kernels.generateEsStage2;
  self->_kernels.generateEsStage2 = v21;

  if (!self->_kernels.generateEsStage2)
  {
    sub_2957C2E50();
    return -12786;
  }

  v23 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage3" constants:0];
  generateEsStage3 = self->_kernels.generateEsStage3;
  self->_kernels.generateEsStage3 = v23;

  if (!self->_kernels.generateEsStage3)
  {
    sub_2957C2DD8();
    return -12786;
  }

  v25 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateElStage1" constants:0];
  generateElStage1 = self->_kernels.generateElStage1;
  self->_kernels.generateElStage1 = v25;

  if (!self->_kernels.generateElStage1)
  {
    sub_2957C2D60();
    return -12786;
  }

  v27 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateElStage2" constants:0];
  generateElStage2 = self->_kernels.generateElStage2;
  self->_kernels.generateElStage2 = v27;

  if (!self->_kernels.generateElStage2)
  {
    sub_2957C2CE8();
    return -12786;
  }

  v29 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::substitution" constants:0];
  substitution = self->_kernels.substitution;
  self->_kernels.substitution = v29;

  if (!self->_kernels.substitution)
  {
    sub_2957C2C70();
    return -12786;
  }

  v31 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateExtendedMesh" constants:0];
  generateExtendedMesh = self->_kernels.generateExtendedMesh;
  self->_kernels.generateExtendedMesh = v31;

  if (!self->_kernels.generateExtendedMesh)
  {
    sub_2957C2BF8();
    return -12786;
  }

  v33 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::validateExtendedMesh" constants:0];
  validateExtendedMesh = self->_kernels.validateExtendedMesh;
  self->_kernels.validateExtendedMesh = v33;

  if (!self->_kernels.validateExtendedMesh)
  {
    sub_2957C2B80();
    return -12786;
  }

  v35 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::invertMesh" constants:0];
  invertMesh = self->_kernels.invertMesh;
  self->_kernels.invertMesh = v35;

  if (!self->_kernels.invertMesh)
  {
    sub_2957C2B08();
    return -12786;
  }

  if (!a3)
  {
    v37 = objc_alloc(MEMORY[0x29EDBB818]);
    v38 = [(FigMetalContext *)self->_metalContext device];
    v39 = [v37 initWithDevice:v38 lower:1 order:216];
    choleskyDecomposition = self->_choleskyDecomposition;
    self->_choleskyDecomposition = v39;

    if (self->_choleskyDecomposition)
    {
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x2020000000;
      v44 = 0;
      v42[0] = MEMORY[0x29EDCA5F8];
      v42[1] = 3221225472;
      v42[2] = sub_2957B8FD4;
      v42[3] = &unk_29EDDA0B8;
      v42[4] = self;
      v42[5] = v43;
      if (qword_2A18AB0E0 != -1)
      {
        dispatch_once(&qword_2A18AB0E0, v42);
      }

      _Block_object_dispose(v43, 8);
    }

    else
    {
      sub_2957C2A90();
    }
  }

  return 0;
}

- (void)releaseResources
{
  v2 = self;
  buffer = self->_sharedMetalBuffer.buffer;
  self->_sharedMetalBuffer.buffer = 0;

  v2->_sharedMetalBuffer.offset = 0;
  v2->_sharedMetalBuffer.size = 0;
  v2->_sharedMetalBuffer.resourcesAssigned = 0;
  FigMetalDecRef();
  *&v2->_offsets.es.arrayOfContainers = 0u;
  v2 = (v2 + 184);
  *&v2->_sharedMetalBuffer.resourcesAssigned = 0u;
  v2 = (v2 + 176);
  v2[-1]._offsets.vectorAtb = 0;
  *&v2[-1]._offsets.edColumnHeaders = 0u;
  *&v2[-1]._offsets.elFullMatrix = 0u;
  *&v2[-1]._offsets.edPk = 0u;
  *&v2[-1]._offsets.edRowSubSeqHeader = 0u;
  *&v2[-1]._offsets.es.numElementsPerContainer = 0u;
  *&v2[-1]._maximumMemoryAllocationParameters.numCells = 0;
  *&v2[-1]._maximumMemoryAllocationParameters.meshNumNodes = 0;
  *&v2[-1]._maximumMemoryAllocationParameters.segmentationMaskWidth = 0;
  *&v2[-1]._currentMemoryAllocationParameters.numCells = 0;
  *&v2[-1]._currentMemoryAllocationParameters.meshNumNodes = 0;
  *&v2[-1]._currentMemoryAllocationParameters.segmentationMaskWidth = 0;
  *&v2->_idcUtilities = 0u;
  *&v2->_kernels.generateEdStage2 = 0u;
  *&v2->_kernels.generateEdColumns = 0u;
  *&v2->_kernels.generateEsPresetWeightArray = 0u;
  *&v2->_kernels.generateEsStage1 = 0u;
  *&v2->_kernels.generateEsStage3 = 0u;
  *&v2->_kernels.generateElStage2 = 0u;
}

- (void)dealloc
{
  [(IdcContentPreservingWarping *)self releaseResources];
  v3.receiver = self;
  v3.super_class = IdcContentPreservingWarping;
  [(IdcContentPreservingWarping *)&v3 dealloc];
}

- (int)computeSizeOfSharedMetalBuffer:(id *)a3 maximumInputImageWidth:(unsigned int)a4 maximumInputImageHeight:(unsigned int)a5 maximumSegmentationMaskWidth:(unsigned int)a6 maximumSegmentationMaskHeight:(unsigned int)a7 meshWidth:(unsigned int)a8 meshHeight:(unsigned int)a9 paddedMeshWidth:(unsigned int)a10 paddedMeshHeight:(unsigned int)a11
{
  if (a3)
  {
    a3->var0 = 0;
    v14 = (a9 - 1) * (a8 - 1);
    v15 = a5 / (10 * (a9 - 1)) * (a4 / (10 * (a8 - 1)));
    v16 = a9 * a8;
    v17 = 2 * a9 * a8;
    LODWORD(v20) = a9 * a8;
    HIDWORD(v20) = v17;
    v18 = [(IdcContentPreservingWarping *)self memoryAllocationHandler:0 paddedMeshWidth:__PAIR64__(v15 paddedMeshHeight:v14) memoryAllocationParameters:v20 sharedMemoryBuffer:__PAIR64__(a7 sharedMetalBufferOffset:a6) sharedMetalBufferSize:?];
    if (v18)
    {
      sub_2957C3420();
    }

    else
    {
      self->_maximumMemoryAllocationParameters.numCells = v14;
      self->_maximumMemoryAllocationParameters.storageSizePerCell = v15;
      self->_maximumMemoryAllocationParameters.meshNumNodes = v16;
      self->_maximumMemoryAllocationParameters.aDimensions = v17;
      self->_maximumMemoryAllocationParameters.segmentationMaskWidth = a6;
      self->_maximumMemoryAllocationParameters.segmentationMaskHeight = a7;
    }
  }

  else
  {
    sub_2957C349C();
    return -12780;
  }

  return v18;
}

- (int)setSharedMetalBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5
{
  v9 = a3;
  if (v9)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, a3);
    v10 = 0;
    self->_sharedMetalBuffer.offset = a4;
    self->_sharedMetalBuffer.size = a5;
    self->_sharedMetalBuffer.resourcesAssigned = 0;
  }

  else
  {
    sub_2957C3514();
    v10 = -12780;
  }

  return v10;
}

- (void)fillEdParameters:(id *)a3 meshWidth:(unsigned int)a4 meshHeight:(unsigned int)a5
{
  v5 = 0;
  v6 = LODWORD(a3->var21[2].var0[5]);
  var3 = a3->var17.var3;
  var4 = a3->var17.var4;
  self[1].super.isa = vdiv_f32(vdup_n_s32(0x3A83126Fu), *&a3->var4);
  do
  {
    *(&self[1]._metalContext + v5) = *(&a3->var14.var2.var5 + v5);
    v5 += 4;
  }

  while (v5 != 24);
  v9 = (var3 - 1) / (a4 - 1);
  v10 = v9 / v6;
  *&v11 = ((v9 % v6) >> 1);
  v12 = (var4 - 1) / (a5 - 1);
  v13 = v12 / v6;
  *(&v11 + 1) = ((v12 % v6) >> 1);
  self[1]._kernels.generateEdStage2 = vdiv_f32(vcvt_f32_s32(*&a3->var21[0].var0[3]), vcvt_f32_s32(*&a3->var15.var0.var3));
  *&self[1]._kernels.generateEdStage3 = a3->var21[2].var0[3];
  *(&self[1]._kernels.generateEdStage3 + 1) = v6;
  LODWORD(self[1]._kernels.generateEdColumns) = a5 * a4;
  HIDWORD(self[1]._kernels.generateEdColumns) = a4;
  LODWORD(self[1]._kernels.generateEdBuildAtA_Atb) = a5;
  HIDWORD(self[1]._kernels.generateEdBuildAtA_Atb) = (a5 - 1) * (a4 - 1);
  LODWORD(self[1]._kernels.generateEsPresetWeightArray) = a4 - 1;
  HIDWORD(self[1]._kernels.generateEsPresetWeightArray) = a5 - 1;
  *&self[1]._kernels.generateEsBuildWeightArray = v9;
  *(&self[1]._kernels.generateEsBuildWeightArray + 1) = v12;
  LODWORD(self[1]._kernels.generateEsStage1) = v10 * v13;
  HIDWORD(self[1]._kernels.generateEsStage1) = v10;
  LODWORD(self[1]._kernels.generateEsStage2) = v13;
  self[1]._kernels.generateEsStage3 = v11;
  LODWORD(self[1]._kernels.generateElStage1) = v10 * v13;
  HIDWORD(self[1]._kernels.generateElStage1) = 2 * a5 * a4;
  *&v14 = *&a3->var16.var5;
  *(&v14 + 1) = *&a3->var17.var3;
  *&self[1]._kernels.generateElStage2 = v14;
}

- (int)memoryAllocationHandler:(id *)a3 paddedMeshWidth:(unsigned int)a4 paddedMeshHeight:(unsigned int)a5 memoryAllocationParameters:(id *)a6 sharedMemoryBuffer:(id)a7 sharedMetalBufferOffset:(unint64_t)a8 sharedMetalBufferSize:(unint64_t)a9
{
  v15 = a9;
  v16 = a7;
  if (v16 | a8 | a9)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3 == 0;
  }

  v68 = 0;
  v69 = 0;
  if (a3)
  {
    v18 = (v16 | a8 | a9) == 0;
  }

  else
  {
    v18 = v16 != 0;
  }

  if (v18)
  {
    var3 = a6->var3;
    v20 = *&a6->var4;
    *&v21 = v20;
    *(&v21 + 1) = HIDWORD(v20);
    v67[0] = v21;
    v67[1] = xmmword_2957C7D90;
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:v67];
    if (v17)
    {
      if (v69 > a9)
      {
        sub_2957C477C();
        goto LABEL_61;
      }

      v22 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:v16 bufferOffset:a8 textureDescriptor:v67];
      erodedSegmentationMask = self->_textures.erodedSegmentationMask;
      self->_textures.erodedSegmentationMask = v22;

      if (!self->_textures.erodedSegmentationMask)
      {
        sub_2957C4704();
        goto LABEL_66;
      }

      v24 = a9 - v69;
      v25 = (v69 + 63) & 0xFFFFFFC0;
      self->_offsets.matrixAtA = v25 + a8;
      if (v24 < 4 * (var3 * var3))
      {
        sub_2957C468C();
        goto LABEL_61;
      }

      v26 = 4 * (var3 * var3);
      v27 = v24 - v26;
      v28 = (v26 + v25 + 63) & 0xFFFFFFC0;
      self->_offsets.vectorAtb = v28 + a8;
      if (v27 < 4 * var3)
      {
        sub_2957C4614();
        goto LABEL_61;
      }

      v29 = 4 * var3;
      v15 = v27 - 4 * var3;
    }

    else
    {
      v31 = (v69 + 63) & 0xFFFFFFC0;
      v29 = 4 * var3;
      v28 = (v31 + 4 * var3 * var3 + 63) & 0xFFFFFFC0;
      self->_offsets.matrixAtA = v31;
      self->_offsets.vectorAtb = v28;
    }

    v32 = 8 * (40 * var3);
    v33 = v29 + 63 + v28;
    self->_offsets.es.arrayOfContainers = (v33 & 0xFFFFFFC0) + a8;
    if (v17)
    {
      v34 = v15 - v32;
      if (v15 < v32)
      {
        sub_2957C459C();
        goto LABEL_61;
      }

      v35 = (v33 + 320 * var3) & 0xFFFFFFC0;
      self->_offsets.es.weights = v35 + a8;
      if (v34 < 4 * (a5 * a4))
      {
        sub_2957C4524();
        goto LABEL_61;
      }

      v36 = 4 * a5 * a4;
      v37 = v34 - v36;
      v38 = (v36 + v35 + 63) & 0xFFFFFFC0;
      self->_offsets.es.numElementsPerContainer = v38 + a8;
      v15 = v37 - v29;
      if (v37 < v29)
      {
        sub_2957C44AC();
LABEL_61:
        v30 = -12780;
LABEL_62:
        [(IdcContentPreservingWarping *)self releaseResources];
        goto LABEL_46;
      }
    }

    else
    {
      v39 = (v33 + 320 * var3) & 0xFFFFFFC0;
      v38 = (v39 + 4 * a5 * a4 + 63) & 0xFFFFFFC0;
      self->_offsets.es.weights = v39;
      self->_offsets.es.numElementsPerContainer = v38;
    }

    var0 = a6->var0;
    var1 = a6->var1;
    v42 = 8 * var1 * var0;
    v43 = (v29 + 63 + v38) & 0xFFFFFFC0;
    self->_offsets.edPhatk = v43 + a8;
    if (v17)
    {
      v44 = v15 - v42;
      if (v15 < v42)
      {
        sub_2957C4434();
        goto LABEL_61;
      }

      v45 = (v42 + 63 + v43) & 0xFFFFFFC0;
      self->_offsets.edPk = v45 + a8;
      v46 = v44 - v42;
      if (v44 < v42)
      {
        sub_2957C43BC();
        goto LABEL_61;
      }

      v47 = (v42 + 63 + v45) & 0xFFFFFFC0;
      self->_offsets.edNumSamplesPerCell = v47 + a8;
      if (v46 < 4 * (var0 + 1))
      {
        sub_2957C4344();
        goto LABEL_61;
      }

      v48 = 4 * (var0 + 1);
      v49 = v46 - v48;
      v50 = (v48 + v47 + 63) & 0xFFFFFFC0;
      self->_offsets.edRowSubSeqHeader = v50 + a8;
      if (v46 - v48 < 36 * var0)
      {
        sub_2957C42CC();
        goto LABEL_61;
      }

      v51 = 36 * var0;
      v15 = v49 - 36 * var0;
    }

    else
    {
      v52 = (v42 + 63 + v43) & 0xFFFFFFC0;
      v53 = (v42 + 63 + v52) & 0xFFFFFFC0;
      self->_offsets.edPk = v52;
      self->_offsets.edNumSamplesPerCell = v53;
      v51 = 36 * var0;
      v50 = (v53 + 4 * var0 + 67) & 0xFFFFFFC0;
      self->_offsets.edRowSubSeqHeader = v50;
    }

    v54 = 32 * var0 * var1;
    v55 = ((v50 | 0x3C) + v51) & 0xFFFFFFC0;
    self->_offsets.edRowSubSeqData = v55 + a8;
    if (v17)
    {
      v56 = v15 >= v54;
      v15 -= v54;
      if (!v56)
      {
        sub_2957C4254();
        goto LABEL_61;
      }
    }

    v57 = 72 * a6->var2;
    v58 = v54 + v55 + 63;
    self->_offsets.edColumnHeaders = (v58 & 0xFFFFFFC0) + a8;
    if (v17)
    {
      v59 = v15 - v57;
      if (v15 < v57)
      {
        sub_2957C41DC();
        goto LABEL_61;
      }

      v60 = ((v58 | 0x38) + v57) & 0xFFFFFFC0;
      self->_offsets.edOffset = v60 + a8;
      if (v59 < 4 * var0)
      {
        sub_2957C4164();
        goto LABEL_61;
      }

      var0 *= 4;
      v15 = v59 - var0;
    }

    else
    {
      LODWORD(var0) = 4 * var0;
      v60 = ((v58 | 0x38) + v57) & 0xFFFFFFC0;
      self->_offsets.edOffset = v60;
    }

    v61 = ((v60 | 0x3C) + var0) & 0xFFFFFFC0;
    self->_offsets.elFullMatrix = v61 + a8;
    if (var3 << 14 > v15 && v17)
    {
      sub_2957C40EC();
      goto LABEL_61;
    }

    if (!v17)
    {
LABEL_45:
      v30 = 0;
      a3->var0 = v61 + (var3 << 14);
      goto LABEL_46;
    }

    v63 = [MEMORY[0x29EDBB7C8] matrixDescriptorWithRows:var3 columns:var3 rowBytes:? dataType:?];
    if (v63)
    {
      v64 = [objc_alloc(MEMORY[0x29EDBB7C0]) initWithBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA descriptor:v63];
      AtA_matrix = self->_AtA_matrix;
      self->_AtA_matrix = v64;

      if (self->_AtA_matrix)
      {

        if (!a3)
        {
          v30 = 0;
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      sub_2957C3FFC();
    }

    else
    {
      sub_2957C4074();
    }

LABEL_66:
    v30 = -12786;
    goto LABEL_62;
  }

  v30 = -12780;
LABEL_46:

  return v30;
}

@end