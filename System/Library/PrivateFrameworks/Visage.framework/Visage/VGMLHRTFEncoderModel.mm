@interface VGMLHRTFEncoderModel
- (void)inferCaptureData:(const void *)a3 toOutput:(id)a4;
@end

@implementation VGMLHRTFEncoderModel

- (void)inferCaptureData:(const void *)a3 toOutput:(id)a4
{
  v40 = a4;
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(**a3);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke;
  v49[3] = &__block_descriptor_40_e5_v8__0l;
  v49[4] = CVPixelBufferFromIOSurface;
  v39 = MEMORY[0x2743B9AA0](v49);
  v7 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v7 bindImage:CVPixelBufferFromIOSurface];

  v8 = createCVPixelBufferFromIOSurface(*(*a3 + 80));
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_2;
  v48[3] = &__block_descriptor_40_e5_v8__0l;
  v48[4] = v8;
  v38 = MEMORY[0x2743B9AA0](v48);
  v9 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:1];
  [v9 bindImage:v8];

  v10 = createCVPixelBufferFromIOSurface(*(*a3 + 160));
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_3;
  v47[3] = &__block_descriptor_40_e5_v8__0l;
  v47[4] = v10;
  v37 = MEMORY[0x2743B9AA0](v47);
  v11 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:2];
  [v11 bindImage:v10];

  v12 = [*(*a3 + 8) vg_toFloat16Surface];
  v13 = createCVPixelBufferFromIOSurface(v12);

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_4;
  v46[3] = &__block_descriptor_40_e5_v8__0l;
  v46[4] = v13;
  v36 = MEMORY[0x2743B9AA0](v46);
  v14 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:3];
  [v14 bindImage:v13];

  v15 = [*(*a3 + 88) vg_toFloat16Surface];
  v16 = createCVPixelBufferFromIOSurface(v15);

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_5;
  v45[3] = &__block_descriptor_40_e5_v8__0l;
  v45[4] = v16;
  v17 = MEMORY[0x2743B9AA0](v45);
  v18 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:4];
  [v18 bindImage:v16];

  v19 = [*(*a3 + 168) vg_toFloat16Surface];
  v20 = createCVPixelBufferFromIOSurface(v19);

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_6;
  v44[3] = &__block_descriptor_40_e5_v8__0l;
  v44[4] = v20;
  v21 = MEMORY[0x2743B9AA0](v44);
  v22 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:5];
  [v22 bindImage:v20];

  v23 = [*(*a3 + 16) vg_toFloat16Surface];
  v24 = createCVPixelBufferFromIOSurface(v23);

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_7;
  v43[3] = &__block_descriptor_40_e5_v8__0l;
  v43[4] = v24;
  v25 = MEMORY[0x2743B9AA0](v43);
  v26 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:6];
  [v26 bindImage:v24];

  v27 = [*(*a3 + 96) vg_toFloat16Surface];
  v28 = createCVPixelBufferFromIOSurface(v27);

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_8;
  v42[3] = &__block_descriptor_40_e5_v8__0l;
  v42[4] = v28;
  v29 = MEMORY[0x2743B9AA0](v42);
  v30 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:7];
  [v30 bindImage:v28];

  v31 = [*(*a3 + 176) vg_toFloat16Surface];
  v32 = createCVPixelBufferFromIOSurface(v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_9;
  v41[3] = &__block_descriptor_40_e5_v8__0l;
  v41[4] = v32;
  v33 = MEMORY[0x2743B9AA0](v41);
  v34 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:8];
  [v34 bindImage:v32];

  v35 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v35 bindTensor:v40];

  [(VGMLEspressoModel *)self inferModel];
  v33[2](v33);

  v29[2](v29);
  v25[2](v25);

  v21[2](v21);
  v17[2](v17);

  v36[2](v36);
  v37[2](v37);

  v38[2](v38);
  v39[2](v39);
}

@end