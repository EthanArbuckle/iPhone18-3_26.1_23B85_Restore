@interface RBSurface
- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor;
- (CGImage)copyCGImageUsingDevice:(id)a3;
- (CGSize)size;
- (RBSurface)init;
- (id).cxx_construct;
- (int32x2_t)invalidateInRect:(float32x2_t)a3;
- (uint64_t)_updateWithDevice:(RB:(int)a4 :RenderFrame *)a3 frame:synchronized:;
- (void)dealloc;
- (void)invalidate;
- (void)setClearColor:(id)a3;
- (void)setClearsBackground:(BOOL)a3;
- (void)setColorMode:(int)a3;
- (void)setDisplayList:(id)a3;
- (void)setDisplayList:(id)a3 dirtyRect:(CGRect)a4;
- (void)setScale:(double)a3;
- (void)setSize:(CGSize)a3;
- (void)updateUsingDevice:(id)a3;
@end

@implementation RBSurface

- (RBSurface)init
{
  v3.receiver = self;
  v3.super_class = RBSurface;
  result = [(RBSurface *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
    result->_colorMode = 1;
    *&result->_clearsBackground = 1;
    *&result->_clearColor.red = 0;
    *&result->_clearColor.blue = 0;
  }

  return result;
}

- (void)dealloc
{
  p = self->_drawable._p;
  if (p)
  {
    RB::Drawable::finish(p);
  }

  v4.receiver = self;
  v4.super_class = RBSurface;
  [(RBSurface *)&v4 dealloc];
}

- (void)setSize:(CGSize)a3
{
  if (self->_size.width != a3.width || self->_size.height != a3.height)
  {
    self->_size = a3;
    [(RBSurface *)self invalidate];
  }
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(RBSurface *)self invalidate];
  }
}

- (void)setColorMode:(int)a3
{
  if (self->_colorMode != a3)
  {
    self->_colorMode = a3;
    [(RBSurface *)self invalidate];
  }
}

- (void)setClearsBackground:(BOOL)a3
{
  if (self->_clearsBackground != a3)
  {
    self->_clearsBackground = a3;
    [(RBSurface *)self invalidate];
  }
}

- (void)setClearColor:(id)a3
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_clearColor, a3))) & 1) == 0)
  {
    self->_clearColor = a3;
    [(RBSurface *)self invalidate];
  }
}

- (void)setDisplayList:(id)a3
{
  p = self->_displayList._p;
  if (p != a3)
  {

    self->_displayList._p = a3;

    [(RBSurface *)self invalidate];
  }
}

- (void)setDisplayList:(id)a3 dirtyRect:(CGRect)a4
{
  p = self->_displayList._p;
  if (p != a3)
  {
    height = a4.size.height;
    y = a4.origin.y;
    width = a4.size.width;
    x = a4.origin.x;

    self->_displayList._p = a3;
    v7.f64[0] = x;
    v7.f64[1] = y;
    v8 = vcvt_f32_f64(v7);
    v9.f64[0] = width;
    v9.f64[1] = height;
    v10 = vcvt_f32_f64(v9);

    [(RBSurface *)self invalidateInRect:v8, v10];
  }
}

- (CGImage)copyCGImageUsingDevice:(id)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v5 = [a3 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__RBSurface_copyCGImageUsingDevice___block_invoke;
  block[3] = &unk_1E744E1B8;
  block[5] = a3;
  block[6] = &v26;
  block[4] = self;
  dispatch_sync(v5, block);
  if ((v27[3] & 1) != 0 && ((RB::Drawable::finish(self->_drawable._p), HasExtendedRange = RBColorModeHasExtendedRange(self->_colorMode), v7 = HasExtendedRange, width = self->_size.width, height = self->_size.height, !HasExtendedRange) ? (v10 = 2) : (v10 = 3), v11 = ((width << v10) + 63) & 0xFFFFFFC0, (v12 = malloc_type_malloc(v11 * height, 0x100004077774924uLL)) != 0))
  {
    v13 = *(self->_texture._p + 2);
    memset(v24, 0, 24);
    v24[3] = width;
    v24[4] = height;
    v24[5] = 1;
    [v13 getBytes:v12 bytesPerRow:v11 fromRegion:v24 mipmapLevel:0];
    v14 = CGDataProviderCreateWithData(0, v12, v11 * height, free_data);
    v15 = v14;
    if (v7)
    {
      v16 = RBColorModeWorkingColorSpace(self->_colorMode);
      if (v16 == 1)
      {
        v17 = RB::extended_srgb_colorspace(v16);
      }

      else
      {
        v17 = RB::extended_linear_srgb_colorspace(v16);
      }

      v19 = v17;
      v20 = 4353;
      v21 = 16;
      v22 = 64;
    }

    else
    {
      v19 = RB::srgb_colorspace(v14);
      v20 = 8194;
      v21 = 8;
      v22 = 32;
    }

    v18 = CGImageCreate(width, height, v21, v22, v11, v19, v20, v15, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v18;
}

uint64_t __36__RBSurface_copyCGImageUsingDevice___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [(RBDecodedFontMetadata *)a1[5] fontUID];
  result = [(RBSurface *)v2 _updateWithDevice:v3 frame:0 synchronized:1];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (uint64_t)_updateWithDevice:(RB:(int)a4 :RenderFrame *)a3 frame:synchronized:
{
  v38 = a3;
  v4 = a1;
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = *(a1 + 8);
    RB::ColorMode::ColorMode(&v45, *(v4 + 68));
    if (!v7)
    {
      v8 = objc_opt_new();

      [v8 setProfile:2];
      v7 = v8;
      [v8 setDefaultColorSpace:rb_color_space(v46 | 0x100u)];
    }

    if (!*(v4 + 16))
    {
      operator new();
    }

    if (*(v4 + 24) != *(a2 + 3))
    {
      [v4 invalidate];
      v9 = *(a2 + 3);
      v10 = *(v4 + 24);
      if (v10 != v9)
      {

        *(v4 + 24) = v9;
      }
    }

    v11 = *(v4 + 65);
    v44 = 0;
    v12 = RB::ColorMode::pixel_format(&v45, a2, v11 ^ 1u, &v44);
    v14 = v12;
    v15 = *(v4 + 32);
    if (*&v15 && *(*&v15 + 56) == v12)
    {
      v16 = *(v4 + 40) == 0;
    }

    else
    {
      v17 = vcvtq_s64_f64(*(v4 + 80));
      v17.n128_u64[0] = vmovn_s64(v17);
      RB::Texture::alloc(a2, v12, 0, 1, 0, &v39, v17);
      v18 = *(v4 + 32);
      v15 = v39;
      *(v4 + 32) = v39;
      v39 = v18;
      if (v18)
      {
        v19 = v18[2] - 1;
        v18[2] = v19;
        if (!v19)
        {
          (*(*v18 + 8))(v18);
        }

        v15 = *(v4 + 32);
      }

      if (!*&v15)
      {
        v4 = 0;
LABEL_35:

        return v4;
      }

      if ((v44 & 4) != 0)
      {
        *(*&v15 + 77) |= 8u;
        v15 = *(v4 + 32);
      }

      *(v4 + 48) = vdup_n_s32(0xC0000001);
      *(v4 + 56) = 0x8000000080000000;
      *(v4 + 40) = 0;
      v16 = 1;
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50__RBSurface__updateWithDevice_frame_synchronized___block_invoke;
    v43[3] = &__block_descriptor_40_e19____MTLTexture__8__0l;
    v43[4] = v15;
    v20 = *(*&v15 + 64);
    v41 = 0;
    v42 = v20;
    v21 = 1;
    if (v16)
    {
      if (*(v4 + 64))
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      RB::Bounds::intersect(&v41, *(v4 + 48), *(v4 + 56));
    }

    v13.i64[0] = *(v4 + 96);
    v13.i32[2] = *(v4 + 104);
    v37 = v13;
    v13.i32[0] = *(v4 + 108);
    v36 = v13;
    v22 = v38;
    if (!v38)
    {
      v23 = RB::Drawable::begin_frame(*(v4 + 16));
      MEMORY[0x1EEE9AC00](v23, v24);
      v22 = v34;
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      RB::RenderFrame::RenderFrame(v34, a2, *(v4 + 16), 3, 0, 0);
    }

    v25 = *(*&v15 + 64);
    v26 = v47;
    v27 = v46;
    v28 = v45;
    HasExtendedRange = RBColorModeHasExtendedRange(*(v4 + 68));
    RB::RenderParams::RenderParams(&v39, v22, v14, v26, v27, v28, HasExtendedRange, v25);
    v40 = (2 * v44) & 8 | v40 & 0xF7;
    v30 = [v7 _rb_contents];
    v31 = v30;
    if (v30)
    {
      v32 = v37;
      v32.i32[3] = 1.0;
      RB::DisplayList::render(v30, &v39, v43, v21, *(v4 + 40), v41, v42, 0.0, vmulq_n_f32(v32, v36.f32[0]));
      *(v4 + 40) = *(v31 + 43);
    }

    if (a4)
    {
      RBStrokeRef::clip(v22);
    }

    if (!v38)
    {
      RB::RenderFrame::~RenderFrame(v22);
    }

    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    RBXMLRecorderMarkFrame(v4, v7, v47, *(v4 + 80), *(v4 + 88));
    v4 = 1;
    goto LABEL_35;
  }

  return v4;
}

- (void)updateUsingDevice:(id)a3
{
  v5 = [a3 queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__RBSurface_updateUsingDevice___block_invoke;
  v6[3] = &unk_1E744E1E0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

uint64_t __31__RBSurface_updateUsingDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(RBDecodedFontMetadata *)*(a1 + 40) fontUID];

  return [(RBSurface *)v1 _updateWithDevice:v2 frame:0 synchronized:0];
}

- (void)invalidate
{
  p = self->_texture._p;
  self->_texture._p = 0;
  if (p)
  {
    v4 = *(p + 2) - 1;
    *(p + 2) = v4;
    if (!v4)
    {
      (*(*p + 8))();
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  return self;
}

- (int32x2_t)invalidateInRect:(float32x2_t)a3
{
  if (result)
  {
    v3 = result;
    v4 = RB::Rect::from_bounds(vrndm_f32(a2), vrndp_f32(vadd_f32(a3, a2)));
    RB::Bounds::Bounds(v8, *&v4, v5, v6, v7);
    result = RB::Bounds::Union(v3 + 6, v8[0], v8[1]);
    v3[5] = 0;
  }

  return result;
}

@end