@interface RBDevice
+ (BOOL)isRunningInBackground;
+ (NSArray)allDevices;
+ (RBDevice)appleGPUFamily;
+ (RBDevice)sharedDefaultDevice;
+ (id)sharedDefaultDevice;
+ (id)sharedDevice:(id)device;
+ (uint64_t)purgeResources;
+ (unint64_t)defaultBackgroundGPUPriority;
+ (unint64_t)defaultGPUPriority;
+ (void)allDevices;
+ (void)didEnterBackground:(id)background;
+ (void)purgeResources;
+ (void)setDefaultBackgroundGPUPriority:(unint64_t)priority;
+ (void)setDefaultGPUPriority:(unint64_t)priority;
+ (void)willEnterForeground:(id)foreground;
- (BOOL)compileShader:(id)shader error:(id *)error;
- (RBDevice)initWithDevice:(id)device;
- (id).cxx_construct;
- (id)pipelineDescriptions:(id)descriptions format:(int)format;
- (uint64_t)_purgeResources;
- (unint64_t)GPUPriority;
- (unint64_t)backgroundGPUPriority;
- (unint64_t)pixelFormatForColorMode:(int)mode displayList:(id)list flags:(unsigned int)flags;
- (void)collectResources;
- (void)compileShader:(id)shader completionQueue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)purgeResources;
- (void)setBackgroundGPUPriority:(unint64_t)priority;
- (void)setGPUPriority:(unint64_t)priority;
@end

@implementation RBDevice

+ (RBDevice)sharedDefaultDevice
{
  {
    +[RBDevice sharedDefaultDevice]::device = +[RBDevice sharedDefaultDevice]::$_3::operator()();
  }

  return +[RBDevice sharedDefaultDevice]::device;
}

+ (BOOL)isRunningInBackground
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL29init_background_notificationsPU19objcproto9MTLDevice11objc_object_block_invoke;
  block[3] = &unk_1E744C6E8;
  block[4] = 0;
  if (init_background_notifications(objc_object  {objcproto9MTLDevice}*)::background_once != -1)
  {
    dispatch_once(&init_background_notifications(objc_object  {objcproto9MTLDevice}*)::background_once, block);
  }

  return is_running_in_background & ~allows_rendering_in_background & 1;
}

- (void)collectResources
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_pending_collect, &v2, 1u);
  if (!v2)
  {
    dispatch_time(0, 1000000000);
    operator new();
  }
}

+ (id)sharedDefaultDevice
{
  v0 = MTLCreateSystemDefaultDevice();
  if (v0)
  {
    v1 = [RBDevice sharedDevice:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

- (BOOL)compileShader:(id)shader error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = rb_shader_type([shader type]);
  if ((v7 & 0x100000000) != 0)
  {
    v9 = v7;
    fontUID = [(RBDecodedFontMetadata *)self fontUID];

    return RB::FunctionLibrary::compile_shader(fontUID, shader + 2, v9, error);
  }

  else
  {
    if (error)
    {
      v11 = *MEMORY[0x1E696A578];
      v12[0] = @"Missing shader type.";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
    }

    return 0;
  }
}

- (void)compileShader:(id)shader completionQueue:(id)queue handler:(id)handler
{
  if ((atomic_load_explicit(&qword_1ED6D5388, memory_order_acquire) & 1) == 0)
  {
    [RBDevice(RBShader) compileShader:completionQueue:handler:];
  }

  selfCopy = self;
  shaderCopy = shader;
  queueCopy = queue;
  v12 = [handler copy];
  v13 = _MergedGlobals_1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __60__RBDevice_RBShader__compileShader_completionQueue_handler___block_invoke;
  v14[3] = &__block_descriptor_64_e8_32c30_ZTSN2RB8objc_ptrIP8RBDeviceEE40c30_ZTSN2RB8objc_ptrIP8RBShaderEE48c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE56c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE_e5_v8__0l;
  v15 = selfCopy;
  v16 = shaderCopy;
  v17 = v12;
  v18 = queueCopy;
  dispatch_async(v13, v14);
}

void __60__RBDevice_RBShader__compileShader_completionQueue_handler___block_invoke(uint64_t a1)
{
  v7 = 0;
  [*(a1 + 32) compileShader:*(a1 + 40) error:&v7];
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 56))
    {
      v3 = *(a1 + 56);
    }

    else
    {
      v3 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __60__RBDevice_RBShader__compileShader_completionQueue_handler___block_invoke_2;
    block[3] = &unk_1F0A3D908;
    v4 = v2;
    block[4] = v7;
    v6 = v4;
    dispatch_async(v3, block);
  }
}

+ (RBDevice)appleGPUFamily
{
  objc_opt_self();
  result = +[RBDevice sharedDefaultDevice];
  if (result)
  {
    return *(result->_device._p + 331);
  }

  return result;
}

+ (id)sharedDevice:(id)device
{
  lock = &devices_lock;
  v11 = 1;
  os_unfair_lock_lock(&devices_lock);
  if (!device_table)
  {
    operator new();
  }

  v12 = 0;
  v5 = RB::UntypedTable::lookup(device_table, device, &v12);
  if (v12)
  {
    v6 = v5;
  }

  else
  {
    os_unfair_lock_unlock(&devices_lock);
    v11 = 0;
    v6 = [[self alloc] initWithDevice:device];
    std::unique_lock<RB::spin_lock>::lock[abi:nn200100](&lock);
    v12 = 0;
    v7 = RB::UntypedTable::lookup(device_table, device, &v12);
    if (v12)
    {
      v8 = v7;

      v6 = v8;
    }

    else
    {
      RB::UntypedTable::insert(device_table, device, v6);

      all_devices = 0;
    }
  }

  if (v11 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  return v6;
}

+ (NSArray)allDevices
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&devices_lock);
  v2 = all_devices;
  if (!all_devices)
  {
    v9 = 0;
    v10 = 0;
    v11 = 8;
    if (device_table)
    {
      v7 = v8;
      RB::UntypedTable::for_each(device_table, RB::Table<objc_object  {objcproto9MTLDevice}*,RBDevice *>::for_each<+[RBDevice allDevices]::$_2>(+[RBDevice allDevices]::$_2 const&)const::{lambda(void const*,void const,void const)#1}::__invoke, &v7);
    }

    v3 = objc_alloc(MEMORY[0x1E695DEC8]);
    if (v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = v8;
    }

    v2 = [v3 initWithObjects:v4 count:v10];
    all_devices = v2;
    if (v9)
    {
      free(v9);
      v2 = all_devices;
    }
  }

  v5 = v2;
  os_unfair_lock_unlock(&devices_lock);
  return v5;
}

+ (unint64_t)defaultGPUPriority
{
  if (HIBYTE(RB::Device::default_gpu_priority))
  {
    return RB::Device::default_gpu_priority;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

+ (void)setDefaultGPUPriority:(unint64_t)priority
{
  if (priority > 0xFF)
  {
    if (HIBYTE(RB::Device::default_gpu_priority) == 1)
    {
      HIBYTE(RB::Device::default_gpu_priority) = 0;
    }
  }

  else
  {
    RB::Device::default_gpu_priority = priority | 0x100;
  }
}

+ (unint64_t)defaultBackgroundGPUPriority
{
  if (HIBYTE(RB::Device::default_bg_gpu_priority))
  {
    return RB::Device::default_bg_gpu_priority;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

+ (void)setDefaultBackgroundGPUPriority:(unint64_t)priority
{
  if (priority > 0xFF)
  {
    if (HIBYTE(RB::Device::default_bg_gpu_priority) == 1)
    {
      HIBYTE(RB::Device::default_bg_gpu_priority) = 0;
    }
  }

  else
  {
    RB::Device::default_bg_gpu_priority = priority | 0x100;
  }
}

- (void)dealloc
{
  *(self->_device._p + 2) = 0;
  do
  {
    v2 = atomic_load(&self->_pending_collect.__a_.__a_value);
    v3 = v2;
    atomic_compare_exchange_strong(&self->_pending_collect, &v3, 2u);
  }

  while (v3 != v2);
  v4.receiver = self;
  v4.super_class = RBDevice;
  [(RBDevice *)&v4 dealloc];
}

- (RBDevice)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = RBDevice;
  if ([(RBDevice *)&v4 init])
  {
    operator new();
  }

  return 0;
}

+ (void)purgeResources
{
  v7 = *MEMORY[0x1E69E9840];
  allDevices = [self allDevices];
  v3 = [allDevices countByEnumeratingWithState:&v5 objects:v6 count:16];
  if (v3)
  {
    v3 = [(RBDevice *)&v5 purgeResources:allDevices];
  }

  v4 = RB::SurfacePool::shared(v3);
  RB::SurfacePool::collect(v4, 1);
}

+ (void)didEnterBackground:(id)background
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = RB::misc_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 67109376;
    v19 = is_running_in_background;
    v20 = 1024;
    v21 = allows_rendering_in_background;
    _os_log_impl(&dword_195CE8000, v3, OS_LOG_TYPE_DEFAULT, "RBDevice.didEnterBackground: in bg %{BOOL}d, allows bg: %{BOOL}d", buf, 0xEu);
  }

  if ((allows_rendering_in_background & 1) == 0)
  {
    RB::ImageProvider::submit_all(v4);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = +[RBDevice allDevices];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = RB::Device::shared_surfaces(v10[1]);
          RB::SharedSurfaceGroup::flush(v11);
          dispatch_sync_f([v10 queue], 0, +[RBDevice didEnterBackground:]::$_6::__invoke);
          v9 = (v9 + 1);
        }

        while (v7 != v9);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v7 = v6;
      }

      while (v6);
    }

    is_running_in_background = 1;
    v12 = RB::misc_log(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195CE8000, v12, OS_LOG_TYPE_DEFAULT, "RBDevice.didEnterBackground: done", buf, 2u);
    }
  }
}

+ (void)willEnterForeground:(id)foreground
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = RB::misc_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = is_running_in_background;
    v5 = 1024;
    v6 = allows_rendering_in_background;
    _os_log_impl(&dword_195CE8000, v3, OS_LOG_TYPE_DEFAULT, "RBDevice.willEnterForeground: in bg %{BOOL}d, allows bg: %{BOOL}d", v4, 0xEu);
  }

  is_running_in_background = 0;
  if ((allows_rendering_in_background & 1) == 0)
  {
    +[RBLayer willEnterForeground];
  }
}

- (unint64_t)GPUPriority
{
  if ((*(self->_device._p + 343) & 0x100) != 0)
  {
    return *(self->_device._p + 343);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setGPUPriority:(unint64_t)priority
{
  v3 = *(self->_device._p + 4);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__RBDevice_setGPUPriority___block_invoke;
  v4[3] = &unk_1E744C670;
  v4[4] = self;
  v4[5] = priority;
  dispatch_sync(v3, v4);
}

uint64_t __27__RBDevice_setGPUPriority___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 0x100)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 | 0x100;
  }

  *(*(*(result + 32) + 8) + 343) = v2;
  return result;
}

- (unint64_t)backgroundGPUPriority
{
  if ((*(self->_device._p + 341) & 0x100) != 0)
  {
    return *(self->_device._p + 341);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setBackgroundGPUPriority:(unint64_t)priority
{
  v3 = *(self->_device._p + 4);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__RBDevice_setBackgroundGPUPriority___block_invoke;
  v4[3] = &unk_1E744C670;
  v4[4] = self;
  v4[5] = priority;
  dispatch_sync(v3, v4);
}

uint64_t __37__RBDevice_setBackgroundGPUPriority___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 0x100)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 | 0x100;
  }

  *(*(*(result + 32) + 8) + 341) = v2;
  return result;
}

- (unint64_t)pixelFormatForColorMode:(int)mode displayList:(id)list flags:(unsigned int)flags
{
  flagsCopy = flags;
  RB::ColorMode::ColorMode(v12, *&mode);
  if ((flagsCopy & 2) == 0)
  {
    _rb_contents = [list _rb_contents];
    if (_rb_contents)
    {
      v10 = RB::DisplayList::Layer::color_info((_rb_contents + 320), v9);
      RB::ColorMode::merge_depth(v12, v10);
    }
  }

  return RB::ColorMode::pixel_format(v12, self->_device._p, flagsCopy & 1, 0);
}

- (id)pipelineDescriptions:(id)descriptions format:(int)format
{
  descriptionsCopy = descriptions;
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 1065353216;
  memset(v15, 0, sizeof(v15));
  if ([descriptions countByEnumeratingWithState:v15 objects:v21 count:16])
  {
    RB::FormattedRenderState::ID::ID(&v19, [**(&v15[0] + 1) UTF8String]);
    std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__emplace_unique_impl<RB::FormattedRenderState::ID>();
  }

  if (!*(&v17 + 1))
  {
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_8;
  }

  if (format == 1)
  {
    descriptionsCopy = [MEMORY[0x1E695DF70] array];
    for (i = v17; i; i = *i)
    {
      v19 = i[2];
      v20 = *(i + 6);
      RB::FormattedRenderState::description(&v19, &v13);
      if (v13)
      {
        [descriptionsCopy addObject:?];
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else if (!format)
  {
    p = self->_device._p;
    std::unordered_set<RB::FormattedRenderState>::unordered_set(v14, &v16);
    pipeline_set = RB::JSONPipeline::make_pipeline_set(p, v14);
    std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(v14);
    array = pipeline_set;
LABEL_8:
    descriptionsCopy = array;
  }

  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(&v16);
  return descriptionsCopy;
}

- (uint64_t)_purgeResources
{
  RB::Device::prune_caches(self, 1);
  v2 = *(self + 3);
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [v2 _purgeDevice];
  }

  return result;
}

+ (void)allDevices
{
  v4 = *a3;
  v5 = *(*a3 + 9);
  if (*(*a3 + 10) < (v5 + 1))
  {
    result = RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(*a3, v5 + 1);
    v5 = v4[9];
  }

  v6 = v4[8];
  if (!v6)
  {
    v6 = v4;
  }

  v6[v5] = a2;
  ++v4[9];
  return result;
}

- (void)purgeResources
{
  if (self)
  {
    [(RBDevice *)self queue];
    OUTLINED_FUNCTION_0_1();
    dispatch_sync_f(v2, v3, v4);
  }

  v5 = RB::SurfacePool::shared(self);

  RB::SurfacePool::collect(v5, 1);
}

+ (uint64_t)purgeResources
{
  v8 = **(self + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(self + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(self + 8);
      if (*(v10 + 8 * v9))
      {
        [*(v10 + 8 * v9) queue];
        OUTLINED_FUNCTION_0_1();
        dispatch_sync_f(v11, v12, v13);
      }

      ++v9;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:self objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

@end