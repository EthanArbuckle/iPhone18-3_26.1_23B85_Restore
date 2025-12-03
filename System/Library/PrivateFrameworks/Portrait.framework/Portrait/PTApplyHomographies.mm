@interface PTApplyHomographies
- (PTApplyHomographies)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize;
- (id)updateDisparity:(id)disparity inDisparity:(id)inDisparity;
- (id)updatePTTexture:(id)texture inPTTexture:(id)tTexture;
- (void)_ensureSufficientBufferSizesNumberOfRows:(int)rows numberOfCols:(int)cols;
@end

@implementation PTApplyHomographies

- (PTApplyHomographies)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize
{
  height = disparitySize.height;
  width = disparitySize.width;
  v114 = size.width;
  v115 = size.height;
  contextCopy = context;
  v118.receiver = self;
  v118.super_class = PTApplyHomographies;
  v10 = [(PTApplyHomographies *)&v118 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, context);
    v12 = dispatch_semaphore_create(2);
    v13 = v11[12];
    v11[12] = v12;

    v14.f64[0] = v114;
    v14.f64[1] = v115;
    v11[17] = vmovn_s64(vcvtq_u64_f64(v14));
    v11[18].i16[0] = 256;
    v15 = [[PTColorConversion alloc] initWithMetalContext:*&v11[1]];
    v16 = v11[4];
    v11[4] = v15;

    if (!*&v11[4])
    {
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(PTApplyHomographies *)v17 initWithMetalContext:v55 colorSize:v56 disparitySize:v57, v58, v59, v60, v61];
      }

      v54 = 0;
      goto LABEL_36;
    }

    v17 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v114 height:v115 mipmapped:0];
    [v17 setUsage:7];
    device = [*&v11[1] device];
    v19 = [device newTextureWithDescriptor:v17];
    v20 = v11[5];
    v11[5] = v19;

    if (v11[5])
    {
      [v17 setUsage:7];
      device2 = [*&v11[1] device];
      v22 = [device2 newTextureWithDescriptor:v17];
      v23 = v11[6];
      v11[6] = v22;

      if (v11[6])
      {
        [v17 setWidth:width];
        [v17 setHeight:height];
        [v17 setPixelFormat:25];
        device3 = [*&v11[1] device];
        v25 = [device3 newTextureWithDescriptor:v17];
        v26 = v11[7];
        v11[7] = v25;

        if (v11[7])
        {
          v27 = objc_opt_new();
          v28 = v11[21];
          v11[21] = v27;

          colorAttachments = [*&v11[21] colorAttachments];
          v30 = [colorAttachments objectAtIndexedSubscript:0];
          [v30 setLoadAction:0];

          colorAttachments2 = [*&v11[21] colorAttachments];
          v32 = [colorAttachments2 objectAtIndexedSubscript:0];
          [v32 setStoreAction:1];

          colorAttachments3 = [*&v11[21] colorAttachments];
          v34 = [colorAttachments3 objectAtIndexedSubscript:0];
          [v34 setClearColor:{0.0, 1.0, 0.0, 1.0}];

          v35 = objc_alloc_init(MEMORY[0x277CD6F78]);
          v36 = [*&v11[1] functionWithName:@"vertexShaderHomography" withConstants:0];
          [v35 setVertexFunction:v36];

          vertexFunction = [v35 vertexFunction];

          if (vertexFunction)
          {
            v38 = [*&v11[1] functionWithName:@"fragmentShaderSample" withConstants:0];
            [v35 setFragmentFunction:v38];

            fragmentFunction = [v35 fragmentFunction];

            if (fragmentFunction)
            {
              pixelFormat = [*&v11[6] pixelFormat];
              colorAttachments4 = [v35 colorAttachments];
              v42 = [colorAttachments4 objectAtIndexedSubscript:0];
              [v42 setPixelFormat:pixelFormat];

              device4 = [*&v11[1] device];
              v117 = 0;
              v44 = [device4 newRenderPipelineStateWithDescriptor:v35 error:&v117];
              v45 = v117;
              v46 = v11[19];
              v11[19] = v44;

              if (v11[19])
              {
                pixelFormat2 = [*&v11[7] pixelFormat];
                colorAttachments5 = [v35 colorAttachments];
                v49 = [colorAttachments5 objectAtIndexedSubscript:0];
                [v49 setPixelFormat:pixelFormat2];

                device5 = [*&v11[1] device];
                v116 = v45;
                v51 = [device5 newRenderPipelineStateWithDescriptor:v35 error:&v116];
                v52 = v116;

                v53 = v11[20];
                v11[20] = v51;

                if (v11[20])
                {
                  v54 = v11;
                }

                else
                {
                  v105 = _PTLogSystem();
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                  {
                    [(PTApplyHomographies *)v105 initWithMetalContext:v106 colorSize:v107 disparitySize:v108, v109, v110, v111, v112];
                  }

                  v54 = 0;
                }

                v45 = v52;
                goto LABEL_34;
              }

              v97 = _PTLogSystem();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                [(PTApplyHomographies *)v97 initWithMetalContext:v98 colorSize:v99 disparitySize:v100, v101, v102, v103, v104];
              }
            }

            else
            {
              v45 = _PTLogSystem();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                [(PTApplyHomographies *)v45 initWithMetalContext:v90 colorSize:v91 disparitySize:v92, v93, v94, v95, v96];
              }
            }
          }

          else
          {
            v45 = _PTLogSystem();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [(PTApplyHomographies *)v45 initWithMetalContext:v83 colorSize:v84 disparitySize:v85, v86, v87, v88, v89];
            }
          }

          v54 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v35 = _PTLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(PTApplyHomographies *)v35 initWithMetalContext:v76 colorSize:v77 disparitySize:v78, v79, v80, v81, v82];
        }
      }

      else
      {
        v35 = _PTLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(PTApplyHomographies *)v35 initWithMetalContext:v69 colorSize:v70 disparitySize:v71, v72, v73, v74, v75];
        }
      }
    }

    else
    {
      v35 = _PTLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(PTApplyHomographies *)v35 initWithMetalContext:v62 colorSize:v63 disparitySize:v64, v65, v66, v67, v68];
      }
    }

    v54 = 0;
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  v54 = 0;
LABEL_37:

  return v54;
}

- (void)_ensureSufficientBufferSizesNumberOfRows:(int)rows numberOfCols:(int)cols
{
  v7 = cols + 2 * rows * (cols - 1);
  self->_vertexCountHomography = cols * rows;
  self->_indexCountHomography = v7;
  v8 = (cols * rows) << 6;
  if (v8 > [(MTLBuffer *)self->_vertexBufferHomography[0] length])
  {
    device = [(PTMetalContext *)self->_metalContext device];
    v10 = [device newBufferWithLength:v8 options:0];
    v11 = self->_vertexBufferHomography[0];
    self->_vertexBufferHomography[0] = v10;

    device2 = [(PTMetalContext *)self->_metalContext device];
    v13 = [device2 newBufferWithLength:v8 options:0];
    v14 = self->_vertexBufferHomography[1];
    self->_vertexBufferHomography[1] = v13;
  }

  if (self->_numberOfRowsOverscan != rows || self->_numberOfColsOverscan != cols)
  {
    device3 = [(PTMetalContext *)self->_metalContext device];
    v15 = [device3 newBufferWithLength:2 * v7 options:0];
    indexBufferHomography = self->_indexBufferHomography;
    self->_indexBufferHomography = v15;
  }
}

- (id)updatePTTexture:(id)texture inPTTexture:(id)tTexture
{
  colorConversion = self->_colorConversion;
  rgbaLinear = self->_rgbaLinear;
  textureCopy = texture;
  [(PTColorConversion *)colorConversion convertRGBLinearFromPTTexture:textureCopy inPTTexture:tTexture outRGBA:rgbaLinear];
  rgbaLinearVIS = self->_rgbaLinearVIS;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_homographyRenderPassDescriptor colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];
  [v11 setTexture:rgbaLinearVIS];

  v12 = [textureCopy renderCommandEncoderWithDescriptor:self->_homographyRenderPassDescriptor];

  [v12 setRenderPipelineState:self->_renderPipelineState];
  [v12 setVertexBuffer:self->_vertexBufferHomography[self->_frameCounter & 1] offset:0 atIndex:0];
  [v12 setVertexBytes:self->_inputColorSize length:8 atIndex:1];
  [v12 setFragmentTexture:self->_rgbaLinear atIndex:0];
  [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  if (self->_showGrid)
  {
    [v12 setFragmentTexture:self->_textureMarker atIndex:0];
    [v12 setTriangleFillMode:1];
    [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  }

  [v12 endEncoding];
  v13 = [PTTexture createRGBA:self->_rgbaLinearVIS];
  [v13 setTransferFunction:*MEMORY[0x277CC4CE0]];

  return v13;
}

- (id)updateDisparity:(id)disparity inDisparity:(id)inDisparity
{
  disparityVIS = self->_disparityVIS;
  homographyRenderPassDescriptor = self->_homographyRenderPassDescriptor;
  inDisparityCopy = inDisparity;
  disparityCopy = disparity;
  colorAttachments = [(MTLRenderPassDescriptor *)homographyRenderPassDescriptor colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];
  [v11 setTexture:disparityVIS];

  v12 = [disparityCopy renderCommandEncoderWithDescriptor:self->_homographyRenderPassDescriptor];

  [v12 setRenderPipelineState:self->_renderPipelineStateDisparity];
  [v12 setVertexBuffer:self->_vertexBufferHomography[self->_frameCounter & 1] offset:0 atIndex:0];
  [v12 setVertexBytes:self->_inputColorSize length:8 atIndex:1];
  [v12 setFragmentTexture:inDisparityCopy atIndex:0];

  [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  [v12 endEncoding];
  v13 = self->_disparityVIS;
  v14 = v13;

  return v13;
}

@end