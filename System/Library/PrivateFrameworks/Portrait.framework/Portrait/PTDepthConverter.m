@interface PTDepthConverter
- (PTDepthConverter)initWithMetalContext:(id)a3;
- (int)disparityToDepth:(id)a3 inBaseDisparity:(id)a4 outDepth:(id)a5 depthNearFar:(float)a6 disparityBias:(BOOL)a7 reverseZ:;
- (int)segmentationToDepth:(id)a3 inSegmentation:(id)a4 inAlphaMask:(id)a5 outDepth:(id)a6 depthNearFar:(BOOL)a7 segmentationDepthNearFar:(float)a8 reverseZ:threshold:cropRect:;
- (int)thresholdedDisparityToDepth:(id)a3 inBaseDisparity:(id)a4 outDepth:(id)a5 depthNearFar:(BOOL)a6 segmentationDepthNearFar:(id)a7 disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:;
@end

@implementation PTDepthConverter

- (PTDepthConverter)initWithMetalContext:(id)a3
{
  v5 = a3;
  v126.receiver = self;
  v126.super_class = PTDepthConverter;
  v6 = [(PTDepthConverter *)&v126 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v8 = [v5 functionWithName:@"disparityToDepthVert" withConstants:0];
    if (v8)
    {
      v9 = [v5 functionWithName:@"disparityToDepthFrag" withConstants:0];
      if (v9)
      {
        v10 = v9;
        v11 = objc_alloc_init(MEMORY[0x277CD6F78]);
        if (!v11)
        {
          v12 = _PTLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(PTDepthConverter *)v12 initWithMetalContext:v13, v14, v15, v16, v17, v18, v19];
          }
        }

        [v11 setVertexFunction:v8];
        [v11 setFragmentFunction:v10];
        [v11 setDepthAttachmentPixelFormat:260];
        v20 = [v5 pipelineLibrary];
        [v11 setPipelineLibrary:v20];

        v21 = [v5 device];
        v125 = 0;
        v22 = [v21 newRenderPipelineStateWithDescriptor:v11 error:&v125];
        v23 = v125;
        disparityToDepth = v7->_disparityToDepth;
        v7->_disparityToDepth = v22;

        if (v7->_disparityToDepth)
        {
          v25 = [v5 functionWithName:@"thresholdedDisparityToDepthFrag" withConstants:0];

          if (!v25)
          {
            v10 = _PTLogSystem();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v10 initWithMetalContext:v85, v86, v87, v88, v89, v90, v91];
            }

            goto LABEL_34;
          }

          if (!v11)
          {
            v26 = _PTLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v26 initWithMetalContext:v27, v28, v29, v30, v31, v32, v33];
            }
          }

          [v11 setFragmentFunction:v25];
          v34 = [v5 device];
          v124 = v23;
          v35 = [v34 newRenderPipelineStateWithDescriptor:v11 error:&v124];
          v36 = v124;

          thresholdedDisparityToDepth = v7->_thresholdedDisparityToDepth;
          v7->_thresholdedDisparityToDepth = v35;

          if (v7->_thresholdedDisparityToDepth)
          {
            v10 = [v5 functionWithName:@"segmentationToDepthFrag" withConstants:0];

            if (v10)
            {
              if (!v11)
              {
                v38 = _PTLogSystem();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  [(PTDepthConverter *)v38 initWithMetalContext:v39, v40, v41, v42, v43, v44, v45];
                }
              }

              [v11 setFragmentFunction:v10];
              v46 = [v5 device];
              v123 = v36;
              v47 = [v46 newRenderPipelineStateWithDescriptor:v11 error:&v123];
              v23 = v123;

              segmentationToDepth = v7->_segmentationToDepth;
              v7->_segmentationToDepth = v47;

              if (v7->_segmentationToDepth)
              {
                v49 = objc_opt_new();
                GBufferRenderPassDescriptor = v7->_GBufferRenderPassDescriptor;
                v7->_GBufferRenderPassDescriptor = v49;

                v51 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [v51 setClearDepth:1.0];

                v52 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [v52 setLoadAction:2];

                v53 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [v53 setStoreAction:1];

                v54 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [v54 setClearStencil:0];

                v55 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [v55 setLoadAction:0];

                v56 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [v56 setStoreAction:0];

                v57 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [v57 setTexture:0];

                v58 = objc_opt_new();
                [v58 setDepthCompareFunction:7];
                [v58 setDepthWriteEnabled:1];
                v59 = [v5 device];
                v60 = [v59 newDepthStencilStateWithDescriptor:v58];
                depthStencilState = v7->_depthStencilState;
                v7->_depthStencilState = v60;

                if (v7->_depthStencilState)
                {
                  v62 = v7;
                }

                else
                {
                  v114 = _PTLogSystem();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                  {
                    [(PTDepthConverter *)v114 initWithMetalContext:v115, v116, v117, v118, v119, v120, v121];
                  }

                  v62 = 0;
                }

                goto LABEL_48;
              }

              v77 = _PTLogSystem();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                [(PTDepthConverter *)v77 initWithMetalContext:v107, v108, v109, v110, v111, v112, v113];
              }

              goto LABEL_31;
            }

            v10 = _PTLogSystem();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v10 initWithMetalContext:v100, v101, v102, v103, v104, v105, v106];
            }

            v62 = 0;
          }

          else
          {
            v92 = _PTLogSystem();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v92 initWithMetalContext:v93, v94, v95, v96, v97, v98, v99];
            }

            v62 = 0;
            v10 = v25;
          }

          v23 = v36;
          goto LABEL_48;
        }

        v77 = _PTLogSystem();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          [(PTDepthConverter *)v77 initWithMetalContext:v78, v79, v80, v81, v82, v83, v84];
        }

LABEL_31:

LABEL_34:
        v62 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTDepthConverter *)v23 initWithMetalContext:v70, v71, v72, v73, v74, v75, v76];
      }
    }

    else
    {
      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTDepthConverter *)v23 initWithMetalContext:v63, v64, v65, v66, v67, v68, v69];
      }
    }

    v62 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v62 = 0;
LABEL_50:

  return v62;
}

- (int)disparityToDepth:(id)a3 inBaseDisparity:(id)a4 outDepth:(id)a5 depthNearFar:(float)a6 disparityBias:(BOOL)a7 reverseZ:
{
  v24 = *&a6;
  v23 = v7;
  v22 = a7;
  if (a7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [v16 setClearDepth:v11];

  v17 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [v17 setTexture:v13];

  v18 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor stencilAttachment];
  [v18 setTexture:v13];

  v19 = [v15 renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v19 setRenderPipelineState:self->_disparityToDepth];
  [v19 setDepthStencilState:self->_depthStencilState];
  v21 = xmmword_2244A5570;
  [v19 setVertexBytes:&v21 length:16 atIndex:0];
  [v19 setFragmentTexture:v14 atIndex:0];

  [v19 setFragmentBytes:&v24 length:8 atIndex:0];
  [v19 setFragmentBytes:&v23 length:4 atIndex:1];
  [v19 setFragmentBytes:&v22 length:1 atIndex:2];
  [v19 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v19 endEncoding];

  return 0;
}

- (int)thresholdedDisparityToDepth:(id)a3 inBaseDisparity:(id)a4 outDepth:(id)a5 depthNearFar:(BOOL)a6 segmentationDepthNearFar:(id)a7 disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:
{
  v28 = v8;
  v29 = v7;
  v27 = v9;
  v26 = a6;
  v25 = v10;
  if (a6)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [v21 setClearDepth:v15];

  v22 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [v22 setTexture:v18];

  v23 = [v20 renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_thresholdedDisparityToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:v19 atIndex:0];

  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&v27 length:8 atIndex:2];
  [v23 setFragmentBytes:&v26 length:1 atIndex:3];
  [v23 setFragmentBuffer:v17 offset:0 atIndex:4];

  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

- (int)segmentationToDepth:(id)a3 inSegmentation:(id)a4 inAlphaMask:(id)a5 outDepth:(id)a6 depthNearFar:(BOOL)a7 segmentationDepthNearFar:(float)a8 reverseZ:threshold:cropRect:
{
  v28 = v8;
  v29 = *&a8;
  v27 = a7;
  v26 = v9;
  v25 = v10;
  if (a7)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [v21 setClearDepth:v15];

  v22 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [v22 setTexture:v17];

  v23 = [v20 renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_segmentationToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:v19 atIndex:0];

  [v23 setFragmentTexture:v18 atIndex:1];
  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&v27 length:1 atIndex:2];
  [v23 setFragmentBytes:&v26 length:4 atIndex:3];
  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

@end