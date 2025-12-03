@interface RenderBundleICBWithResources
- (RenderBundleICBWithResources)initWithICB:(id)b containerBuffer:(id)buffer pipelineState:(id)state depthStencilState:(id)stencilState cullMode:(unint64_t)mode frontFace:(unint64_t)face depthClipMode:(unint64_t)clipMode depthBias:(float)self0 depthBiasSlopeScale:(float)self1 depthBiasClamp:(float)self2 fragmentDynamicOffsetsBuffer:(id)self3 pipeline:(const void *)self4 minVertexCounts:(void *)self5 outOfBoundsReadFlag:(id)self6;
- (WeakPtr<WebGPU::RenderPipeline,)pipeline;
- (id).cxx_construct;
@end

@implementation RenderBundleICBWithResources

- (RenderBundleICBWithResources)initWithICB:(id)b containerBuffer:(id)buffer pipelineState:(id)state depthStencilState:(id)stencilState cullMode:(unint64_t)mode frontFace:(unint64_t)face depthClipMode:(unint64_t)clipMode depthBias:(float)self0 depthBiasSlopeScale:(float)self1 depthBiasClamp:(float)self2 fragmentDynamicOffsetsBuffer:(id)self3 pipeline:(const void *)self4 minVertexCounts:(void *)self5 outOfBoundsReadFlag:(id)self6
{
  bCopy = b;
  bufferCopy = buffer;
  stateCopy = state;
  stencilStateCopy = stencilState;
  offsetsBufferCopy = offsetsBuffer;
  flagCopy = flag;
  v51.receiver = self;
  v51.super_class = RenderBundleICBWithResources;
  v27 = [(RenderBundleICBWithResources *)&v51 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_outOfBoundsReadFlag, flag);
    objc_storeStrong(&v28->_indirectCommandBuffer, b);
    objc_storeStrong(&v28->_indirectCommandBufferContainer, buffer);
    objc_storeStrong(&v28->_currentPipelineState, state);
    objc_storeStrong(&v28->_depthStencilState, stencilState);
    v28->_cullMode = mode;
    v28->_frontFace = face;
    v28->_depthClipMode = clipMode;
    v28->_depthBias = bias;
    v28->_depthBiasSlopeScale = scale;
    v28->_depthBiasClamp = clamp;
    objc_storeStrong(&v28->_fragmentDynamicOffsetsBuffer, offsetsBuffer);
    if (!pipeline)
    {
      v30 = 0;
      goto LABEL_9;
    }

    v30 = *pipeline;
    if (!*pipeline)
    {
      v30 = WTF::fastCompactMalloc(0x10);
      *v30 = 1;
      *(v30 + 8) = pipeline;
      v31 = *pipeline;
      *pipeline = v30;
      if (v31)
      {
        if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v31);
          WTF::fastFree(v31, v29);
          v30 = *pipeline;
          if (!*pipeline)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v30 = *pipeline;
          if (!*pipeline)
          {
LABEL_9:
            m_ptr = v28->_pipeline.m_impl.m_ptr;
            v28->_pipeline.m_impl.m_ptr = v30;
            if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, m_ptr);
              WTF::fastFree(m_ptr, v29);
              v45 = *counts;
              *counts = 0;
              m_table = v28->_minVertexCountForDrawCommand.m_impl.m_table;
              v28->_minVertexCountForDrawCommand.m_impl.m_table = v45;
              if (m_table)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v33 = *counts;
              *counts = 0;
              m_table = v28->_minVertexCountForDrawCommand.m_impl.m_table;
              v28->_minVertexCountForDrawCommand.m_impl.m_table = v33;
              if (m_table)
              {
LABEL_12:
                v35 = *(m_table - 1);
                if (v35)
                {
                  for (i = 0; i != v35; ++i)
                  {
                    v37 = &m_table[22 * i];
                    if (*v37 != -2)
                    {
                      v38 = *(v37 + 1);
                      *(v37 + 1) = 0;
                      if (v38)
                      {
                        do
                        {
                          v39 = *v38;
                          if ((*v38 & 1) == 0)
                          {
                            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v38, v29);
                            goto LABEL_15;
                          }

                          v40 = *v38;
                          atomic_compare_exchange_strong_explicit(v38, &v40, v39 - 2, memory_order_relaxed, memory_order_relaxed);
                        }

                        while (v40 != v39);
                        if (v39 == 3)
                        {
                          WebGPU::Buffer::~Buffer(v38);
                          bmalloc::api::tzoneFree(v41, v42);
                        }
                      }
                    }

LABEL_15:
                    ;
                  }
                }

                WTF::fastFree((m_table - 4), v29);
              }
            }

            v43 = v28;
            goto LABEL_24;
          }
        }
      }
    }

    atomic_fetch_add(v30, 1u);
    goto LABEL_9;
  }

LABEL_24:

  return v28;
}

- (WeakPtr<WebGPU::RenderPipeline,)pipeline
{
  m_ptr = self->_pipeline.m_impl.m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  *v2 = m_ptr;
  return self;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end