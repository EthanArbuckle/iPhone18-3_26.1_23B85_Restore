@interface PLCacheMetricsCollectorServer
- ($5E5F304956FB491AF6F034FDF0808287)getSharedImageRequestCacheMetrics;
- (PLCacheMetricsCollectorServer)initWithXPCObject:(id)a3;
- (void)dealloc;
@end

@implementation PLCacheMetricsCollectorServer

- (void)dealloc
{
  v3 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCacheMetricsCollectorServer Deallocated on assetsd", buf, 2u);
  }

  munmap(self->_sharedRegion, self->_bufferSize);
  v4.receiver = self;
  v4.super_class = PLCacheMetricsCollectorServer;
  [(PLCacheMetricsCollectorServer *)&v4 dealloc];
}

- ($5E5F304956FB491AF6F034FDF0808287)getSharedImageRequestCacheMetrics
{
  sharedRegion = self->_sharedRegion;
  v3 = *sharedRegion;
  v4 = sharedRegion[1];
  result.var2 = v4;
  result.var3 = HIDWORD(v4);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (PLCacheMetricsCollectorServer)initWithXPCObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLCacheMetricsCollectorServer;
  v5 = [(PLCacheMetricsCollectorServer *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = xpc_shmem_map(v4, &v5->_sharedRegion);
      v6->_bufferSize = v7;
      v8 = PLCacheMetricsCollectorGetLog();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Successfully mapped server-side buffer", v12, 2u);
        }

        goto LABEL_7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Shmem_map failed in PLCacheMetricsCollectorServer initialization", v12, 2u);
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v10 = v6;
LABEL_12:

  return v10;
}

@end