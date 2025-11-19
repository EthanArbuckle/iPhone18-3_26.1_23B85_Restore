@interface OverlayLayerDataSourceRenderTargetSizeObserver
- (CGSize)size;
- (void)sizeDidChange:(CGSize)a3;
@end

@implementation OverlayLayerDataSourceRenderTargetSizeObserver

- (CGSize)size
{
  v3 = pthread_rwlock_rdlock(&self->_mtx._lock);
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  width = self->_size.width;
  height = self->_size.height;
  geo::read_write_lock::unlock(&self->_mtx._lock);
  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)sizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_mtx = &self->_mtx;
  v6 = pthread_rwlock_wrlock(&self->_mtx._lock);
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "write lock", v7);
  }

  self->_size.width = width;
  self->_size.height = height;
  geo::write_lock_guard::~write_lock_guard(&p_mtx);
}

@end