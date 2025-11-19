@interface RenderBundleICBWithResources
- (RenderBundleICBWithResources)initWithICB:(id)a3 containerBuffer:(id)a4 pipelineState:(id)a5 depthStencilState:(id)a6 cullMode:(unint64_t)a7 frontFace:(unint64_t)a8 depthClipMode:(unint64_t)a9 depthBias:(float)a10 depthBiasSlopeScale:(float)a11 depthBiasClamp:(float)a12 fragmentDynamicOffsetsBuffer:(id)a13 pipeline:(const void *)a14 minVertexCounts:(void *)a15 outOfBoundsReadFlag:(id)a16;
- (WeakPtr<WebGPU::RenderPipeline,)pipeline;
- (id).cxx_construct;
@end

@implementation RenderBundleICBWithResources

- (RenderBundleICBWithResources)initWithICB:(id)a3 containerBuffer:(id)a4 pipelineState:(id)a5 depthStencilState:(id)a6 cullMode:(unint64_t)a7 frontFace:(unint64_t)a8 depthClipMode:(unint64_t)a9 depthBias:(float)a10 depthBiasSlopeScale:(float)a11 depthBiasClamp:(float)a12 fragmentDynamicOffsetsBuffer:(id)a13 pipeline:(const void *)a14 minVertexCounts:(void *)a15 outOfBoundsReadFlag:(id)a16
{
  v26 = a3;
  v50 = a4;
  v49 = a5;
  v48 = a6;
  v47 = a13;
  v46 = a16;
  v51.receiver = self;
  v51.super_class = RenderBundleICBWithResources;
  v27 = [(RenderBundleICBWithResources *)&v51 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_outOfBoundsReadFlag, a16);
    objc_storeStrong(&v28->_indirectCommandBuffer, a3);
    objc_storeStrong(&v28->_indirectCommandBufferContainer, a4);
    objc_storeStrong(&v28->_currentPipelineState, a5);
    objc_storeStrong(&v28->_depthStencilState, a6);
    v28->_cullMode = a7;
    v28->_frontFace = a8;
    v28->_depthClipMode = a9;
    v28->_depthBias = a10;
    v28->_depthBiasSlopeScale = a11;
    v28->_depthBiasClamp = a12;
    objc_storeStrong(&v28->_fragmentDynamicOffsetsBuffer, a13);
    if (!a14)
    {
      v30 = 0;
      goto LABEL_9;
    }

    v30 = *a14;
    if (!*a14)
    {
      v30 = WTF::fastCompactMalloc(0x10);
      *v30 = 1;
      *(v30 + 8) = a14;
      v31 = *a14;
      *a14 = v30;
      if (v31)
      {
        if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v31);
          WTF::fastFree(v31, v29);
          v30 = *a14;
          if (!*a14)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v30 = *a14;
          if (!*a14)
          {
LABEL_9:
            m_ptr = v28->_pipeline.m_impl.m_ptr;
            v28->_pipeline.m_impl.m_ptr = v30;
            if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, m_ptr);
              WTF::fastFree(m_ptr, v29);
              v45 = *a15;
              *a15 = 0;
              m_table = v28->_minVertexCountForDrawCommand.m_impl.m_table;
              v28->_minVertexCountForDrawCommand.m_impl.m_table = v45;
              if (m_table)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v33 = *a15;
              *a15 = 0;
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