@interface VGMLEspressoBuffer
- (BOOL)bindImage:(__CVBuffer *)a3;
- (BOOL)bindManagedBuffer;
- (BOOL)bindTensor:(id)a3;
- (BOOL)checkBufferAndIOSurfaceConsistency:(id)a3;
- (BOOL)copyBufferIntoIOSurface:(id)a3;
- (VGMLEspressoBuffer)initWithNetwork:(id *)a3 withLayerName:(id)a4 withMode:(int)a5;
@end

@implementation VGMLEspressoBuffer

- (VGMLEspressoBuffer)initWithNetwork:(id *)a3 withLayerName:(id)a4 withMode:(int)a5
{
  v9 = a4;
  self->_network = a3;
  objc_storeStrong(&self->_layerName, a4);
  self->_mode = a5;
  network = self->_network;
  var0 = network->var0;
  v12 = *&network->var1;
  [(NSString *)self->_layerName UTF8String];
  espresso_network_query_blob_dimensions();

  return self;
}

- (BOOL)bindManagedBuffer
{
  network = self->_network;
  var0 = network->var0;
  v4 = *&network->var1;
  [(NSString *)self->_layerName UTF8String];
  espresso_network_bind_buffer();
  return 1;
}

- (BOOL)bindTensor:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_buffer.data = [v4 getData];
  v11 = vextq_s8(*&self->_dimensions[2], *&self->_dimensions[2], 8uLL);
  v12 = vextq_s8(*self->_dimensions, *self->_dimensions, 8uLL);
  espresso_buffer_pack_tensor_shape();
  network = self->_network;
  var0 = network->var0;
  v7 = *&network->var1;
  [(NSString *)self->_layerName UTF8String:*&v11];
  mode = self->_mode;
  espresso_network_bind_buffer();

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)bindImage:(__CVBuffer *)a3
{
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  network = self->_network;
  layerName = self->_layerName;
  var0 = network->var0;
  v8 = *&network->var1;
  [(NSString *)layerName UTF8String];
  espresso_network_bind_cvpixelbuffer();
  return 1;
}

- (BOOL)checkBufferAndIOSurfaceConsistency:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 pixelFormat];
  v6 = [v4 width];
  v7 = [v4 height];
  v8 = VGGetChannelsFromPixelFormat(v5);
  v9 = [v4 baseAddress];
  v10 = v9 != 0;
  if (!v9)
  {
    v11 = __VGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " IOSurface provided for VGMLEspresso buffer output is empty. ", &v20, 2u);
    }
  }

  if (v8 != self->_dimensions[0])
  {
    v12 = __VGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_dimensions[0];
      v20 = 134218240;
      v21 = v8;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_ERROR, " IOSurface channels %zu != %zu ", &v20, 0x16u);
    }

    v10 = 0;
  }

  if (v7 != self->_dimensions[1])
  {
    v14 = __VGLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_dimensions[1];
      v20 = 134218240;
      v21 = v7;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " IOSurface height %zu != %zu ", &v20, 0x16u);
    }

    v10 = 0;
  }

  if (v6 != self->_dimensions[2])
  {
    v16 = __VGLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_dimensions[2];
      v20 = 134218240;
      v21 = v6;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " IOSurface width %zu != %zu ", &v20, 0x16u);
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)copyBufferIntoIOSurface:(id)a3
{
  v4 = a3;
  data = self->_buffer.data;
  v47 = v4;
  v6 = [v4 count];
  if (v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = [v47 objectAtIndexedSubscript:v7];
        v8 = [(VGMLEspressoBuffer *)self checkBufferAndIOSurfaceConsistency:v9];
      }

      else
      {
        v8 = 0;
      }

      ++v7;
    }

    while (v6 != v7);
    if (!v8)
    {
      v19 = __VGLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " IOSurface(s) not consistent with the espresso output buffer. ", &buf, 2u);
      }

      v17 = 0;
      goto LABEL_32;
    }
  }

  v10 = [v47 objectAtIndexedSubscript:0];
  v11 = [v10 pixelFormat];

  v12 = [v47 objectAtIndexedSubscript:0];
  v13 = [v12 width];

  v14 = [v47 objectAtIndexedSubscript:0];
  v46 = [v14 height];

  v15 = VGGetChannelsFromPixelFormat(v11);
  v16 = v15 * v13;
  v17 = 1;
  if (v11 <= 1278226535)
  {
    if (v11 != 843264102)
    {
      v18 = 843264104;
LABEL_17:
      if (v11 != v18)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v11 == 1278226536)
    {
LABEL_18:
      if (v6)
      {
        v44 = v6;
        v45 = data;
        v20 = 0;
        v43 = 4 * v13 * v15 * v46;
        v21 = 4 * v13 * v15;
        do
        {
          v22 = [v47 objectAtIndexedSubscript:{v20, v43, v44}];
          [v22 lockWithOptions:0 seed:0];

          if (v46)
          {
            v23 = 0;
            v24 = v45;
            do
            {
              v25 = [v47 objectAtIndexedSubscript:v20];
              v26 = [v25 baseAddress];
              v27 = [v47 objectAtIndexedSubscript:v20];
              v28 = (v26 + [v27 bytesPerRow] * v23);

              buf.data = v28;
              buf.height = 1;
              buf.width = v16;
              buf.rowBytes = 2 * v16;
              src.data = v24;
              src.height = 1;
              src.width = v16;
              src.rowBytes = 4 * v16;
              vImageConvert_PlanarFtoPlanar16F(&src, &buf, 0);
              ++v23;
              v24 += v21;
            }

            while (v46 != v23);
          }

          v29 = [v47 objectAtIndexedSubscript:v20];
          [v29 unlockWithOptions:0 seed:0];

          ++v20;
          v45 += v43;
        }

        while (v20 != v44);
LABEL_31:
        v17 = 1;
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (v11 != 1380410945)
    {
      v18 = 1380411457;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v30 = v6;
    v31 = 0;
    v32 = 4 * v16;
    v33 = 4 * v13 * v46 * v15;
    do
    {
      v34 = [v47 objectAtIndexedSubscript:v31];
      [v34 lockWithOptions:0 seed:0];

      if (v46)
      {
        v35 = 0;
        v36 = data;
        do
        {
          v37 = [v47 objectAtIndexedSubscript:v31];
          v38 = [v37 baseAddress];
          v39 = [v47 objectAtIndexedSubscript:v31];
          v40 = (v38 + [v39 bytesPerRow] * v35);

          memcpy(v40, v36, v32);
          ++v35;
          v36 += v32;
        }

        while (v46 != v35);
      }

      v41 = [v47 objectAtIndexedSubscript:v31];
      [v41 unlockWithOptions:0 seed:0];

      ++v31;
      data += v33;
    }

    while (v31 != v30);
    goto LABEL_31;
  }

LABEL_32:

  return v17;
}

@end