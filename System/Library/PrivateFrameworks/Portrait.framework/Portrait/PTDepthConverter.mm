@interface PTDepthConverter
- (PTDepthConverter)initWithMetalContext:(id)context;
- (int)disparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(float)far disparityBias:(BOOL)bias reverseZ:;
- (int)segmentationToDepth:(id)depth inSegmentation:(id)segmentation inAlphaMask:(id)mask outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(float)nearFar reverseZ:threshold:cropRect:;
- (int)thresholdedDisparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(id)nearFar disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:;
@end

@implementation PTDepthConverter

- (PTDepthConverter)initWithMetalContext:(id)context
{
  contextCopy = context;
  v126.receiver = self;
  v126.super_class = PTDepthConverter;
  v6 = [(PTDepthConverter *)&v126 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = [contextCopy functionWithName:@"disparityToDepthVert" withConstants:0];
    if (v8)
    {
      v9 = [contextCopy functionWithName:@"disparityToDepthFrag" withConstants:0];
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
        pipelineLibrary = [contextCopy pipelineLibrary];
        [v11 setPipelineLibrary:pipelineLibrary];

        device = [contextCopy device];
        v125 = 0;
        v22 = [device newRenderPipelineStateWithDescriptor:v11 error:&v125];
        v23 = v125;
        disparityToDepth = v7->_disparityToDepth;
        v7->_disparityToDepth = v22;

        if (v7->_disparityToDepth)
        {
          v25 = [contextCopy functionWithName:@"thresholdedDisparityToDepthFrag" withConstants:0];

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
          device2 = [contextCopy device];
          v124 = v23;
          v35 = [device2 newRenderPipelineStateWithDescriptor:v11 error:&v124];
          v36 = v124;

          thresholdedDisparityToDepth = v7->_thresholdedDisparityToDepth;
          v7->_thresholdedDisparityToDepth = v35;

          if (v7->_thresholdedDisparityToDepth)
          {
            v10 = [contextCopy functionWithName:@"segmentationToDepthFrag" withConstants:0];

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
              device3 = [contextCopy device];
              v123 = v36;
              v47 = [device3 newRenderPipelineStateWithDescriptor:v11 error:&v123];
              v23 = v123;

              segmentationToDepth = v7->_segmentationToDepth;
              v7->_segmentationToDepth = v47;

              if (v7->_segmentationToDepth)
              {
                v49 = objc_opt_new();
                GBufferRenderPassDescriptor = v7->_GBufferRenderPassDescriptor;
                v7->_GBufferRenderPassDescriptor = v49;

                depthAttachment = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment setClearDepth:1.0];

                depthAttachment2 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment2 setLoadAction:2];

                depthAttachment3 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment3 setStoreAction:1];

                stencilAttachment = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment setClearStencil:0];

                stencilAttachment2 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment2 setLoadAction:0];

                stencilAttachment3 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment3 setStoreAction:0];

                stencilAttachment4 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment4 setTexture:0];

                v58 = objc_opt_new();
                [v58 setDepthCompareFunction:7];
                [v58 setDepthWriteEnabled:1];
                device4 = [contextCopy device];
                v60 = [device4 newDepthStencilStateWithDescriptor:v58];
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

- (int)disparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(float)far disparityBias:(BOOL)bias reverseZ:
{
  v24 = *&far;
  v23 = v7;
  biasCopy = bias;
  if (bias)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  outDepthCopy = outDepth;
  disparityCopy = disparity;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v11];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  stencilAttachment = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:outDepthCopy];

  v19 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v19 setRenderPipelineState:self->_disparityToDepth];
  [v19 setDepthStencilState:self->_depthStencilState];
  v21 = xmmword_2244A5570;
  [v19 setVertexBytes:&v21 length:16 atIndex:0];
  [v19 setFragmentTexture:disparityCopy atIndex:0];

  [v19 setFragmentBytes:&v24 length:8 atIndex:0];
  [v19 setFragmentBytes:&v23 length:4 atIndex:1];
  [v19 setFragmentBytes:&biasCopy length:1 atIndex:2];
  [v19 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v19 endEncoding];

  return 0;
}

- (int)thresholdedDisparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(id)nearFar disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:
{
  v28 = v8;
  v29 = v7;
  v27 = v9;
  farCopy = far;
  v25 = v10;
  if (far)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  nearFarCopy = nearFar;
  outDepthCopy = outDepth;
  disparityCopy = disparity;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v15];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  v23 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_thresholdedDisparityToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:disparityCopy atIndex:0];

  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&v27 length:8 atIndex:2];
  [v23 setFragmentBytes:&farCopy length:1 atIndex:3];
  [v23 setFragmentBuffer:nearFarCopy offset:0 atIndex:4];

  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

- (int)segmentationToDepth:(id)depth inSegmentation:(id)segmentation inAlphaMask:(id)mask outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(float)nearFar reverseZ:threshold:cropRect:
{
  v28 = v8;
  v29 = *&nearFar;
  farCopy = far;
  v26 = v9;
  v25 = v10;
  if (far)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  outDepthCopy = outDepth;
  maskCopy = mask;
  segmentationCopy = segmentation;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v15];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  v23 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_segmentationToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:segmentationCopy atIndex:0];

  [v23 setFragmentTexture:maskCopy atIndex:1];
  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&farCopy length:1 atIndex:2];
  [v23 setFragmentBytes:&v26 length:4 atIndex:3];
  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

@end