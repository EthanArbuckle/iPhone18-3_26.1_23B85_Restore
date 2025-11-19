@interface PVCameraPreviewRenderer
- (HGRef<PVRenderManager>)renderManager;
- (PVCameraPreviewRenderer)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)enqueueRenderRequest:(id)a3 completion:(id)a4;
@end

@implementation PVCameraPreviewRenderer

- (PVCameraPreviewRenderer)init
{
  v10.receiver = self;
  v10.super_class = PVCameraPreviewRenderer;
  v2 = [(PVCameraPreviewRenderer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    PVRenderManager::INSTANCE(v2, &v9);
    m_Obj = v3->_renderManager.m_Obj;
    v5 = v9;
    if (m_Obj == v9)
    {
      if (m_Obj)
      {
        (*(*v9 + 24))();
        v5 = v3->_renderManager.m_Obj;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v3->_renderManager.m_Obj);
        v5 = v9;
      }

      v3->_renderManager.m_Obj = v5;
    }

    PVRenderManager::SetupTextureFactories(v5, 0.5);
    v6 = +[PVVideoCompositingContext createContextForGPU];
    compositingContext = v3->_compositingContext;
    v3->_compositingContext = v6;
  }

  return v3;
}

- (void)dealloc
{
  PVRenderManager::TearDownTextureFactories(self->_renderManager.m_Obj);
  v3.receiver = self;
  v3.super_class = PVCameraPreviewRenderer;
  [(PVCameraPreviewRenderer *)&v3 dealloc];
}

- (HGRef<PVRenderManager>)renderManager
{
  m_Obj = self->_renderManager.m_Obj;
  *v2 = m_Obj;
  if (m_Obj)
  {
    return (*(*m_Obj + 16))();
  }

  return m_Obj;
}

- (void)enqueueRenderRequest:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && v6)
  {
    if (self->_currentRenderJob.m_Obj)
    {
      PVRenderManager::CancelRenderJob(self->_renderManager.m_Obj, &self->_currentRenderJob.m_Obj);
    }

    v7 = HGObject::operator new(0x180uLL);
    m_Obj = self->_renderManager.m_Obj;
    v10 = m_Obj;
    if (m_Obj)
    {
      (*(*m_Obj + 16))(m_Obj);
    }

    PVCameraPreviewGraphBuildJob::PVCameraPreviewGraphBuildJob(v7, &v10, v9, self->_compositingContext, v6);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end