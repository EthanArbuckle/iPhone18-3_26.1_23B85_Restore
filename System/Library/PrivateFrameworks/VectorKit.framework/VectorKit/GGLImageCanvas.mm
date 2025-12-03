@interface GGLImageCanvas
- (CGRect)bounds;
- (CGSize)size;
- (CGSize)sizeInPixels;
- (GGLImageCanvas)initWithSize:(CGSize)size scale:(double)scale useMultisampling:(BOOL)multisampling extraColorFormats:(const void *)formats taskContext:(const void *)context device:(void *)device services:(void *)services signpostId:(unint64_t)self0;
- (GGLRenderQueueSource)renderSource;
- (__IOSurface)flipImage;
- (id).cxx_construct;
- (shared_ptr<ggl::BitmapDataBase>)bitmapData;
- (void)dealloc;
- (void)debugConsoleForId:(int)id;
- (void)destroyRenderTarget;
- (void)imageTexture;
- (void)prepareRenderTask:;
- (void)prepareRenderTask:(const void *)task;
- (void)setBounds:(CGRect)bounds;
- (void)setContentScale:(double)scale;
- (void)setSize:(CGSize)size;
- (void)willDealloc;
- (void)willDrawView;
@end

@implementation GGLImageCanvas

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 48) = 0;
  *(self + 49) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 46) = 0;
  *(self + 52) = 850045863;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 472) = 0u;
  return self;
}

- (GGLRenderQueueSource)renderSource
{
  WeakRetained = objc_loadWeakRetained(self + 11);

  return WeakRetained;
}

- (void)setBounds:(CGRect)bounds
{
  *(self + 6) = *&bounds.origin.x;
  *(self + 7) = *&bounds.origin.y;
  *(self + 8) = *&bounds.size.width;
  *(self + 9) = *&bounds.size.height;
}

- (CGRect)bounds
{
  v2 = *(self + 6);
  v3 = *(self + 7);
  v4 = *(self + 8);
  v5 = *(self + 9);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)size
{
  v2 = *(self + 3);
  v3 = *(self + 4);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)debugConsoleForId:(int)id
{
  std::mutex::lock((self + 416));
  v5 = *(self + 60);
  if (!v5)
  {
    operator new();
  }

  v6 = md::DebugConsoleManager::console(v5, id);
  std::mutex::unlock((self + 416));
  return v6;
}

- (void)willDrawView
{
  if (!*(self + 24) || (*(*(self + 1) + 20) & 1) == 0 && !*(self + 38) || *(self + 81) == 1)
  {
    [(GGLImageCanvas *)self destroyRenderTarget];
    [(GGLImageCanvas *)self createRenderTarget];
    *(self + 81) = 0;
  }

  *(self + 80) = 0;
}

- (void)prepareRenderTask:(const void *)task
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = gdc::ServiceLocator::resolve<md::FrameService>(**(self + 61), *(*(self + 61) + 8));
  objc_initWeak(&location, self);
  v6 = *task;
  objc_copyWeak(&to, &location);
  v11 = 0;
  v9 = &unk_1F2A201A8;
  objc_moveWeak(&v10, &to);
  v11 = &v9;
  objc_destroyWeak(&to);
  (*(*v5 + 64))(v5, v6, 0, &v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v9);
  objc_destroyWeak(&location);
}

- (void)prepareRenderTask:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (void)destroyRenderTarget
{
  if (*(self + 17) >= 2uLL)
  {
    v3 = 1;
    v4 = 1;
    do
    {
      v5 = (self + 16 * v3 + 224);
      v6 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v7 = (self + 16 * v3 + 328);
      v8 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v3 = ++v4;
    }

    while (*(self + 17) > v4);
  }

  v9 = *(self + 13);
  *(self + 13) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9, a2);
  }

  v10 = *(self + 12);
  *(self + 12) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10, a2);
  }

  v11 = *(self + 26);
  *(self + 25) = 0;
  *(self + 26) = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(self + 24);
  *(self + 24) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12, a2);
  }

  v13 = *(self + 27);
  *(self + 27) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13, a2);
  }

  v14 = *(self + 40);
  *(self + 39) = 0;
  *(self + 40) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(self + 38);
  *(self + 38) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15, a2);
  }

  *(self + 80) = 0;
}

- (__IOSurface)flipImage
{
  CFRetain(*(*(self + 12) + 160));
  [(GGLImageCanvas *)self sizeInPixels];
  v4 = 0;
  std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Filter,ggl::Filter,0>();
}

- (void)setContentScale:(double)scale
{
  if (*(self + 5) != scale)
  {
    *(self + 5) = scale;
    *(self + 40) = 256;
  }
}

- (void)setSize:(CGSize)size
{
  if (*(self + 3) != size.width || *(self + 4) != size.height)
  {
    *(self + 3) = *&size.width;
    *(self + 4) = *&size.height;
    *(self + 40) = 256;
  }
}

- (shared_ptr<ggl::BitmapDataBase>)bitmapData
{
  if (*(self + 80))
  {
    v3 = *([(GGLImageCanvas *)self finalSurface]+ 68);
    if (v3 - 44 >= 0xE && ((v5 = v3 > 0xF, v6 = (1 << v3) & 0xA800, !v5) ? (v7 = v6 == 0) : (v7 = 1), v7))
    {
      v4 = MEMORY[0x1E695F1B0];
    }

    else
    {
      v4 = MEMORY[0x1E695F1C0];
    }

    CGColorSpaceCreateWithName(*v4);
    operator new();
  }

  *v2 = 0;
  v2[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (void)imageTexture
{
  v2 = *(self + 376);
  renderTarget = [(GGLImageCanvas *)self renderTarget];
  v4 = 88;
  if (v2)
  {
    v4 = 184;
  }

  return *&renderTarget[v4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GGLImageCanvas;
  [(GGLImageCanvas *)&v2 dealloc];
}

- (GGLImageCanvas)initWithSize:(CGSize)size scale:(double)scale useMultisampling:(BOOL)multisampling extraColorFormats:(const void *)formats taskContext:(const void *)context device:(void *)device services:(void *)services signpostId:(unint64_t)self0
{
  height = size.height;
  width = size.width;
  v49 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = GGLImageCanvas;
  v19 = [(GGLImageCanvas *)&v44 init];
  v20 = v19;
  v21 = v19;
  if (v19)
  {
    *(v19 + 61) = services;
    *(v19 + 3) = width;
    *(v19 + 4) = height;
    *(v19 + 5) = scale;
    v19[376] = multisampling;
    *(v19 + 50) = id;
    *(v19 + 51) = device;
    v23 = *(device + 1);
    v22 = *(device + 2);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = *(v19 + 2);
    *(v21 + 1) = v23;
    *(v21 + 2) = v22;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    v25 = (*(**(device + 1) + 16))(*(device + 1), *(*context + 16), *(device + 3), *(v21 + 50));
    v26 = *(v21 + 23);
    *(v21 + 23) = v25;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    if (v21[376])
    {
      v27 = 4;
    }

    else
    {
      v27 = 1;
    }

    LODWORD(__dst) = *(*(v21 + 1) + 60);
    std::vector<ggl::PixelFormat>::vector[abi:nn200100](&__p, &__dst, 1uLL);
    std::vector<ggl::PixelFormat>::__insert_with_size[abi:nn200100]<std::__wrap_iter<ggl::PixelFormat const*>,std::__wrap_iter<ggl::PixelFormat const*>>(&__p, v43, *formats, *(formats + 1), (*(formats + 1) - *formats) >> 2);
    __dst = 0uLL;
    *(&v48 + 1) = v27 | 0x1A00000000;
    v28 = v43 - __p;
    v29 = (v43 - __p) >> 2;
    *&v48 = v29;
    if (v43 == __p || (memcpy(&__dst, __p, v43 - __p), v29 <= 3))
    {
      bzero(&__dst + v28, 16 - v28);
    }

    v30 = v48;
    *(v21 + 120) = __dst;
    *(v21 + 136) = v30;
    v31 = *(v21 + 1);
    v32 = *(v31 + 20);
    v21[82] = v32;
    if ((v32 & 1) == 0)
    {
      LODWORD(__dst) = *(v31 + 56);
      std::vector<ggl::PixelFormat>::vector[abi:nn200100](&v45, &__dst, 1uLL);
      std::vector<ggl::PixelFormat>::__insert_with_size[abi:nn200100]<std::__wrap_iter<ggl::PixelFormat const*>,std::__wrap_iter<ggl::PixelFormat const*>>(&v45, v46, *formats, *(formats + 1), (*(formats + 1) - *formats) >> 2);
      v33 = v45;
      __dst = 0uLL;
      *(&v48 + 1) = v27 | 0x1A00000000;
      v34 = v46 - v45;
      v35 = (v46 - v45) >> 2;
      *&v48 = v35;
      if (v46 == v45)
      {
        bzero(&__dst + v34, 16 - v34);
        v37 = v48;
        *(v21 + 17) = __dst;
        *(v21 + 18) = v37;
        if (!v33)
        {
          goto LABEL_21;
        }
      }

      else
      {
        memcpy(&__dst, v45, v46 - v45);
        if (v35 <= 3)
        {
          bzero(&__dst + v34, 16 - v34);
        }

        v36 = v48;
        *(v21 + 17) = __dst;
        *(v21 + 18) = v36;
      }

      v46 = v33;
      operator delete(v33);
    }

LABEL_21:
    v38 = *(v21 + 17);
    __dst = 0u;
    *&v48 = v38;
    *(&v48 + 1) = 1;
    if (v38)
    {
      v39 = 4 * v38;
      memcpy(&__dst, v20 + 120, 4 * v38);
      if (v38 > 3)
      {
LABEL_26:
        v40 = v48;
        *(v21 + 152) = __dst;
        *(v21 + 168) = v40;
        operator new();
      }
    }

    else
    {
      v39 = 0;
    }

    bzero(&__dst + v39, 16 - v39);
    goto LABEL_26;
  }

  return 0;
}

- (CGSize)sizeInPixels
{
  v2 = *(self + 5);
  v3 = v2 * *(self + 3);
  v4 = *(self + 4) * v2;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)willDealloc
{
  v3 = *(self + 2);
  *(self + 1) = 0;
  *(self + 2) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(self + 12);
  *(self + 12) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(self + 13);
  *(self + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  std::unique_ptr<md::YFlipPass>::reset[abi:nn200100](self + 14, 0);
  std::mutex::lock((self + 416));
  if (*(self + 60))
  {
    std::unique_ptr<md::DebugConsoleManager>::reset[abi:nn200100](self + 60, 0);
  }

  std::mutex::unlock((self + 416));
  v6 = *(self + 23);
  *(self + 23) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(self + 24);
  *(self + 24) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(self + 26);
  *(self + 25) = 0;
  *(self + 26) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(self + 27);
  *(self + 27) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = (self + 232);
  v11 = 48;
  do
  {
    v12 = *v10;
    *(v10 - 1) = 0;
    *v10 = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v10 += 2;
    v11 -= 16;
  }

  while (v11);
  v13 = *(self + 38);
  *(self + 38) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(self + 40);
  *(self + 39) = 0;
  *(self + 40) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = (self + 328);
  v16 = 48;
  do
  {
    v17 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v15 += 2;
    v16 -= 16;
  }

  while (v16);
  v18 = *(self + 49);
  *(self + 48) = 0;
  *(self + 49) = 0;
  if (v18)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

@end