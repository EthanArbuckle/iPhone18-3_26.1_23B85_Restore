@interface LiPersonDepthWriter
+ (id)sharedDepthStencilStateWithDevice:(id)a3;
+ (id)sharedRenderPipelineStateWithDevice:(id)a3 sampleCount:(int64_t)a4;
- (LiPersonDepthWriter)initWithDevice:(id)a3 sampleCount:(int64_t)a4;
- (id)renderPassDescriptorWithColorTexture:(id)a3 depthTexture:(id)a4;
- (void)computeMatteTexCoordsWithMatteSize:(CGSize)a3 projectSize:(CGSize)a4 videoOrientation:(int)a5;
- (void)dealloc;
- (void)drawWithDepthMap:(id)a3 matte:(id)a4 uniforms:(PersonDepthUniforms)a5 windowSize:(CGSize)a6 renderCommandEncoder:(id)a7;
- (void)writeWithDepthMap:(id)a3 matte:(id)a4 depthTexture:(id)a5 colorTexture:(id)a6 uniforms:(PersonDepthUniforms)a7 windowSize:(CGSize)a8 commandBuffer:(id)a9;
@end

@implementation LiPersonDepthWriter

- (LiPersonDepthWriter)initWithDevice:(id)a3 sampleCount:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = LiPersonDepthWriter;
  v6 = [(LiPersonDepthWriter *)&v8 init];
  if (v6)
  {
    v6->_device = a3;
    v6->_sampleCount = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LiPersonDepthWriter;
  [(LiPersonDepthWriter *)&v3 dealloc];
}

- (void)writeWithDepthMap:(id)a3 matte:(id)a4 depthTexture:(id)a5 colorTexture:(id)a6 uniforms:(PersonDepthUniforms)a7 windowSize:(CGSize)a8 commandBuffer:(id)a9
{
  height = a8.height;
  width = a8.width;
  v11 = *&a7.var2;
  v12 = *&a7.var0;
  v16 = [a9 renderCommandEncoderWithDescriptor:{-[LiPersonDepthWriter renderPassDescriptorWithColorTexture:depthTexture:](self, "renderPassDescriptorWithColorTexture:depthTexture:", a6, a5)}];
  [(LiPersonDepthWriter *)self drawWithDepthMap:a3 matte:a4 uniforms:v12 windowSize:v11 renderCommandEncoder:v16, width, height];

  [v16 endEncoding];
}

- (void)drawWithDepthMap:(id)a3 matte:(id)a4 uniforms:(PersonDepthUniforms)a5 windowSize:(CGSize)a6 renderCommandEncoder:(id)a7
{
  -[LiPersonDepthWriter computeMatteTexCoordsWithMatteSize:projectSize:videoOrientation:](self, "computeMatteTexCoordsWithMatteSize:projectSize:videoOrientation:", a5.var3, [a4 width], objc_msgSend(a4, "height"), a6.width, a6.height);
  [a7 setRenderPipelineState:{objc_msgSend(objc_opt_class(), "sharedRenderPipelineStateWithDevice:sampleCount:", self->_device, self->_sampleCount)}];
  [a7 setDepthStencilState:{objc_msgSend(objc_opt_class(), "sharedDepthStencilStateWithDevice:", self->_device)}];
  [a7 setVertexBytes:&vertices length:48 atIndex:0];
  [a7 setVertexBytes:self->_matteTexCoords length:48 atIndex:1];
  [a7 setFragmentTexture:a3 atIndex:0];
  [a7 setFragmentTexture:a4 atIndex:1];
  [a7 setFragmentBytes:&v11 length:16 atIndex:0];
  [a7 drawPrimitives:3 vertexStart:0 vertexCount:6];
}

- (void)computeMatteTexCoordsWithMatteSize:(CGSize)a3 projectSize:(CGSize)a4 videoOrientation:(int)a5
{
  v5 = a5 & 0xFFFFFFFE;
  if ((a5 & 0xFFFFFFFE) == 2)
  {
    height = a3.height;
  }

  else
  {
    height = a3.width;
  }

  if (v5 == 2)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if (a4.width / a4.height >= width / height)
  {
    v8 = width / a4.width;
  }

  else
  {
    v8 = height / a4.height;
  }

  v9 = a4.width * v8;
  v10 = a4.height * v8;
  v11 = (width - v9) * 0.5;
  v12 = (height - v10) * 0.5;
  v13 = v10 + v12;
  v14 = v9 + v11;
  if (v5 == 2)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v5 == 2)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  if (v5 != 2)
  {
    v12 = v11;
    v14 = v13;
  }

  v17 = v14 / a3.width;
  v18 = v12 / a3.height;
  v19 = v16 / a3.width;
  v20 = v15 / a3.height;
  v21 = a5 & 0xFFFFFFFD;
  if ((a5 & 0xFFFFFFFD) == 1)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (v21 == 1)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (v21 != 1)
  {
    v20 = v18;
  }

  *&v24 = v22;
  v25 = v20;
  if (v21 != 1)
  {
    v19 = v17;
  }

  *&v30 = v19;
  v26 = COERCE_DOUBLE(__PAIR64__(LODWORD(v25), LODWORD(v30)));
  v27 = v23;
  v28 = COERCE_DOUBLE(__PAIR64__(LODWORD(v27), LODWORD(v24)));
  *(&v24 + 1) = v25;
  v29 = COERCE_DOUBLE(__PAIR64__(LODWORD(v25), LODWORD(v30)));
  *(&v30 + 1) = v27;
  if (v5 == 2)
  {
    v31 = COERCE_DOUBLE(__PAIR64__(LODWORD(v25), LODWORD(v24)));
  }

  else
  {
    v31 = COERCE_DOUBLE(__PAIR64__(LODWORD(v27), LODWORD(v24)));
  }

  if (v5 == 2)
  {
    v32 = COERCE_DOUBLE(__PAIR64__(LODWORD(v27), LODWORD(v30)));
  }

  else
  {
    v26 = v24;
    v32 = v29;
  }

  *self->_matteTexCoords = v31;
  *&self->_matteTexCoords[8] = v26;
  *&self->_matteTexCoords[16] = v32;
  *&self->_matteTexCoords[24] = v31;
  if (v5 == 2)
  {
    v30 = v28;
  }

  *&self->_matteTexCoords[32] = v32;
  *&self->_matteTexCoords[40] = v30;
}

+ (id)sharedRenderPipelineStateWithDevice:(id)a3 sampleCount:(int64_t)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __71__LiPersonDepthWriter_sharedRenderPipelineStateWithDevice_sampleCount___block_invoke;
  v5[3] = &unk_279AA9C28;
  v5[4] = a3;
  v5[5] = a4;
  if (+[LiPersonDepthWriter sharedRenderPipelineStateWithDevice:sampleCount:]::onceToken != -1)
  {
    dispatch_once(&+[LiPersonDepthWriter sharedRenderPipelineStateWithDevice:sampleCount:]::onceToken, v5);
  }

  return +[LiPersonDepthWriter sharedRenderPipelineStateWithDevice:sampleCount:]::pipelineState;
}

void __71__LiPersonDepthWriter_sharedRenderPipelineStateWithDevice_sampleCount___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = [*(a1 + 32) newLibraryWithSource:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithUTF8String:" error:{"\n    #include <metal_stdlib>\n    using namespace metal;\n\n    struct DepthVertexIn\n    {\n        float2 position [[attribute(0)]];\n        float2 texCoord [[attribute(1)]];\n    };\n\n    struct DepthVertexOut\n    {\n        float4 position [[position]];\n        float2 texCoord;\n    };\n\n    struct FragmentOut {\n        float4 color [[color(0)]];\n        float depth [[depth(any)]];\n    };\n\n    struct PersonDepthUniforms\n    {\n        float arScale;\n        float near;\n        float far;\n        int videoOrientation;\n    };\n\n    float reverseZDepth(const float zEye, const float near, const float far)\n    {\n        const float zNDC = (far + near) / (far - near) - 2.0 * near * far / (zEye * (far - near));\n        const float reverseZ = 0.5 - 0.5 * zNDC;\n        return reverseZ;\n    }\n\n    // reversed-z is in the range [0, 1], where 0 is at the far plane and 1 is at near plane\n    static float linearDepth(const float reversedZ, const float near, const float far)\n    {\n        const float zNDC = -2.0 * reversedZ + 1.0; // map to [-1, 1], NDC\n        const float zEye = 2.0 * near * far / (far + near - zNDC * (far - near));\n        return zEye;\n    }\n\n    vertex DepthVertexOut depthVertexShader(DepthVertexIn in [[stage_in]])\n    {\n        DepthVertexOut out;\n        out.position = float4(in.position.xy, 0.0, 1.0);\n        out.texCoord = in.texCoord;\n        return out;\n    }\n\n    fragment FragmentOut depthFragmentShader(DepthVertexOut in [[stage_in]], \n                                             constant PersonDepthUniforms &uniforms [[buffer(0)]], \n                                             texture2d<float> depthMap [[texture(0)]], \n                                             texture2d<float> matte [[texture(1)]])\n    {\n        // We return the color we just set which will be written to our color attachment.\n        constexpr sampler textureSampler(mip_filter::linear, \n                                         mag_filter::linear, \n                                         min_filter::linear);\n\n        const float2 matteTexCoord = in.texCoord;\n\n        const float4 depthSample = depthMap.sample(textureSampler, matteTexCoord);\n        const float4 matteSample = matte.sample(textureSampler, matteTexCoord);\n        const float depthInMeters = depthSample.r;\n        const float depthInMotion = depthInMeters * uniforms.arScale;\n        const float depthReverseZ = reverseZDepth(depthInMotion, uniforms.near, uniforms.far); // motion space\n\n        FragmentOut out;\n        \n        if ((depthInMeters > 0) && (matteSample.r > 0))\n        {\n            out.depth = depthReverseZ;\n        }\n        else\n        {\n            out.depth = 0.0;\n        }\n        out.color = float4(0);\n\n        return out;\n    }\n"), 0, &v11}];
  v3 = v11;
  if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 localizedDescription];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to create Metal library. Error info: %@", buf, 0xCu);
  }

  v5 = [v2 newFunctionWithName:@"depthVertexShader"];
  v6 = [v2 newFunctionWithName:@"depthFragmentShader"];
  v7 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v7 setLabel:@"RenderPipeline"];
  [v7 setVertexFunction:v5];
  [v7 setFragmentFunction:v6];
  [objc_msgSend(objc_msgSend(v7 "colorAttachments")];
  [v7 setRasterSampleCount:*(a1 + 40)];
  v8 = objc_alloc_init(MEMORY[0x277CD7090]);
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "attributes")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [objc_msgSend(objc_msgSend(v8 "layouts")];
  [v7 setVertexDescriptor:v8];
  [v7 setDepthAttachmentPixelFormat:252];
  +[LiPersonDepthWriter sharedRenderPipelineStateWithDevice:sampleCount:]::pipelineState = [*(a1 + 32) newRenderPipelineStateWithDescriptor:v7 error:&v11];
  v9 = v11;
  if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v9 localizedDescription];
    *buf = 138412290;
    v13 = v10;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to create render pipeline state. Error info: %@", buf, 0xCu);
  }
}

+ (id)sharedDepthStencilStateWithDevice:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __57__LiPersonDepthWriter_sharedDepthStencilStateWithDevice___block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = a3;
  if (+[LiPersonDepthWriter sharedDepthStencilStateWithDevice:]::onceToken != -1)
  {
    dispatch_once(&+[LiPersonDepthWriter sharedDepthStencilStateWithDevice:]::onceToken, block);
  }

  return +[LiPersonDepthWriter sharedDepthStencilStateWithDevice:]::depthState;
}

uint64_t __57__LiPersonDepthWriter_sharedDepthStencilStateWithDevice___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v2 setDepthCompareFunction:3];
  [v2 setDepthWriteEnabled:1];
  result = [*(a1 + 32) newDepthStencilStateWithDescriptor:v2];
  +[LiPersonDepthWriter sharedDepthStencilStateWithDevice:]::depthState = result;
  return result;
}

- (id)renderPassDescriptorWithColorTexture:(id)a3 depthTexture:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CD6F50]);
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  return v6;
}

@end