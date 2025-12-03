@interface LiPersonDepthWriter
+ (id)sharedDepthStencilStateWithDevice:(id)device;
+ (id)sharedRenderPipelineStateWithDevice:(id)device sampleCount:(int64_t)count;
- (LiPersonDepthWriter)initWithDevice:(id)device sampleCount:(int64_t)count;
- (id)renderPassDescriptorWithColorTexture:(id)texture depthTexture:(id)depthTexture;
- (void)computeMatteTexCoordsWithMatteSize:(CGSize)size projectSize:(CGSize)projectSize videoOrientation:(int)orientation;
- (void)dealloc;
- (void)drawWithDepthMap:(id)map matte:(id)matte uniforms:(PersonDepthUniforms)uniforms windowSize:(CGSize)size renderCommandEncoder:(id)encoder;
- (void)writeWithDepthMap:(id)map matte:(id)matte depthTexture:(id)texture colorTexture:(id)colorTexture uniforms:(PersonDepthUniforms)uniforms windowSize:(CGSize)size commandBuffer:(id)buffer;
@end

@implementation LiPersonDepthWriter

- (LiPersonDepthWriter)initWithDevice:(id)device sampleCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = LiPersonDepthWriter;
  v6 = [(LiPersonDepthWriter *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_sampleCount = count;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LiPersonDepthWriter;
  [(LiPersonDepthWriter *)&v3 dealloc];
}

- (void)writeWithDepthMap:(id)map matte:(id)matte depthTexture:(id)texture colorTexture:(id)colorTexture uniforms:(PersonDepthUniforms)uniforms windowSize:(CGSize)size commandBuffer:(id)buffer
{
  height = size.height;
  width = size.width;
  v11 = *&uniforms.var2;
  v12 = *&uniforms.var0;
  v16 = [buffer renderCommandEncoderWithDescriptor:{-[LiPersonDepthWriter renderPassDescriptorWithColorTexture:depthTexture:](self, "renderPassDescriptorWithColorTexture:depthTexture:", colorTexture, texture)}];
  [(LiPersonDepthWriter *)self drawWithDepthMap:map matte:matte uniforms:v12 windowSize:v11 renderCommandEncoder:v16, width, height];

  [v16 endEncoding];
}

- (void)drawWithDepthMap:(id)map matte:(id)matte uniforms:(PersonDepthUniforms)uniforms windowSize:(CGSize)size renderCommandEncoder:(id)encoder
{
  -[LiPersonDepthWriter computeMatteTexCoordsWithMatteSize:projectSize:videoOrientation:](self, "computeMatteTexCoordsWithMatteSize:projectSize:videoOrientation:", uniforms.var3, [matte width], objc_msgSend(matte, "height"), size.width, size.height);
  [encoder setRenderPipelineState:{objc_msgSend(objc_opt_class(), "sharedRenderPipelineStateWithDevice:sampleCount:", self->_device, self->_sampleCount)}];
  [encoder setDepthStencilState:{objc_msgSend(objc_opt_class(), "sharedDepthStencilStateWithDevice:", self->_device)}];
  [encoder setVertexBytes:&vertices length:48 atIndex:0];
  [encoder setVertexBytes:self->_matteTexCoords length:48 atIndex:1];
  [encoder setFragmentTexture:map atIndex:0];
  [encoder setFragmentTexture:matte atIndex:1];
  [encoder setFragmentBytes:&v11 length:16 atIndex:0];
  [encoder drawPrimitives:3 vertexStart:0 vertexCount:6];
}

- (void)computeMatteTexCoordsWithMatteSize:(CGSize)size projectSize:(CGSize)projectSize videoOrientation:(int)orientation
{
  v5 = orientation & 0xFFFFFFFE;
  if ((orientation & 0xFFFFFFFE) == 2)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (v5 == 2)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  if (projectSize.width / projectSize.height >= width / height)
  {
    v8 = width / projectSize.width;
  }

  else
  {
    v8 = height / projectSize.height;
  }

  v9 = projectSize.width * v8;
  v10 = projectSize.height * v8;
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

  v17 = v14 / size.width;
  v18 = v12 / size.height;
  v19 = v16 / size.width;
  v20 = v15 / size.height;
  v21 = orientation & 0xFFFFFFFD;
  if ((orientation & 0xFFFFFFFD) == 1)
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

+ (id)sharedRenderPipelineStateWithDevice:(id)device sampleCount:(int64_t)count
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __71__LiPersonDepthWriter_sharedRenderPipelineStateWithDevice_sampleCount___block_invoke;
  v5[3] = &unk_279AA9C28;
  v5[4] = device;
  v5[5] = count;
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

+ (id)sharedDepthStencilStateWithDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __57__LiPersonDepthWriter_sharedDepthStencilStateWithDevice___block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = device;
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

- (id)renderPassDescriptorWithColorTexture:(id)texture depthTexture:(id)depthTexture
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