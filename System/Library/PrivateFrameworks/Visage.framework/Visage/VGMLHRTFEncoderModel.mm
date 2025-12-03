@interface VGMLHRTFEncoderModel
- (void)inferCaptureData:(const void *)data toOutput:(id)output;
@end

@implementation VGMLHRTFEncoderModel

- (void)inferCaptureData:(const void *)data toOutput:(id)output
{
  outputCopy = output;
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(**data);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke;
  v49[3] = &__block_descriptor_40_e5_v8__0l;
  v49[4] = CVPixelBufferFromIOSurface;
  v39 = MEMORY[0x2743B9AA0](v49);
  v7 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v7 bindImage:CVPixelBufferFromIOSurface];

  v8 = createCVPixelBufferFromIOSurface(*(*data + 80));
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_2;
  v48[3] = &__block_descriptor_40_e5_v8__0l;
  v48[4] = v8;
  v38 = MEMORY[0x2743B9AA0](v48);
  v9 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:1];
  [v9 bindImage:v8];

  v10 = createCVPixelBufferFromIOSurface(*(*data + 160));
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_3;
  v47[3] = &__block_descriptor_40_e5_v8__0l;
  v47[4] = v10;
  v37 = MEMORY[0x2743B9AA0](v47);
  v11 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:2];
  [v11 bindImage:v10];

  vg_toFloat16Surface = [*(*data + 8) vg_toFloat16Surface];
  v13 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface);

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_4;
  v46[3] = &__block_descriptor_40_e5_v8__0l;
  v46[4] = v13;
  v36 = MEMORY[0x2743B9AA0](v46);
  v14 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:3];
  [v14 bindImage:v13];

  vg_toFloat16Surface2 = [*(*data + 88) vg_toFloat16Surface];
  v16 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface2);

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_5;
  v45[3] = &__block_descriptor_40_e5_v8__0l;
  v45[4] = v16;
  v17 = MEMORY[0x2743B9AA0](v45);
  v18 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:4];
  [v18 bindImage:v16];

  vg_toFloat16Surface3 = [*(*data + 168) vg_toFloat16Surface];
  v20 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface3);

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_6;
  v44[3] = &__block_descriptor_40_e5_v8__0l;
  v44[4] = v20;
  v21 = MEMORY[0x2743B9AA0](v44);
  v22 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:5];
  [v22 bindImage:v20];

  vg_toFloat16Surface4 = [*(*data + 16) vg_toFloat16Surface];
  v24 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface4);

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_7;
  v43[3] = &__block_descriptor_40_e5_v8__0l;
  v43[4] = v24;
  v25 = MEMORY[0x2743B9AA0](v43);
  v26 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:6];
  [v26 bindImage:v24];

  vg_toFloat16Surface5 = [*(*data + 96) vg_toFloat16Surface];
  v28 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface5);

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_8;
  v42[3] = &__block_descriptor_40_e5_v8__0l;
  v42[4] = v28;
  v29 = MEMORY[0x2743B9AA0](v42);
  v30 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:7];
  [v30 bindImage:v28];

  vg_toFloat16Surface6 = [*(*data + 176) vg_toFloat16Surface];
  v32 = createCVPixelBufferFromIOSurface(vg_toFloat16Surface6);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __50__VGMLHRTFEncoderModel_inferCaptureData_toOutput___block_invoke_9;
  v41[3] = &__block_descriptor_40_e5_v8__0l;
  v41[4] = v32;
  v33 = MEMORY[0x2743B9AA0](v41);
  v34 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:8];
  [v34 bindImage:v32];

  v35 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v35 bindTensor:outputCopy];

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