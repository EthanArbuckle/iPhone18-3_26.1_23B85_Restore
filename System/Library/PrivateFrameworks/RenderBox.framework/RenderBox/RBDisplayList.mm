@interface RBDisplayList
- (BOOL)isEmpty;
- (CGAffineTransform)CTM;
- (CGContext)beginCGContextWithAlpha:(float)alpha;
- (CGContext)beginCGContextWithAlpha:(float)alpha flags:(unsigned int)flags;
- (CGRect)boundingRect;
- (CGRect)clipBoundingBox;
- (CGRect)contentRect;
- (NSUUID)identifierNamespace;
- (RBAnimationSequencer)layerAnimationSequencer;
- (RBDisplayList)init;
- (RBTransition)transition;
- (float)contentHeadroom;
- (float)targetHeadroom;
- (id).cxx_construct;
- (id)moveContents;
- (uint64_t)moveContents;
- (void)_drawInState:(_RBDrawingState *)state alpha:(float)alpha;
- (void)addAffineTransformStyle:(CGAffineTransform *)style;
- (void)addAlphaGradientFilterWithStopCount:(int64_t)count colors:(id *)colors colorSpace:(int)space locations:(const double *)locations flags:(unsigned int)flags;
- (void)addAlphaMultiplyFilterWithColor:(id)color;
- (void)addAlphaMultiplyFilterWithColor:(id)color colorSpace:(int)space flags:(unsigned int)flags;
- (void)addAlphaThresholdFilterWithAlpha:(float)alpha color:(id)color colorSpace:(int)space;
- (void)addAlphaThresholdFilterWithMinAlpha:(float)alpha maxAlpha:(float)maxAlpha color:(id)color colorSpace:(int)space;
- (void)addColorMonochromeFilterWithAmount:(float)amount color:(id)color bias:(float)bias;
- (void)addColorMonochromeFilterWithAmount:(float)amount color:(id)color colorSpace:(int)space bias:(float)bias flags:(unsigned int)flags;
- (void)addColorMultiplyFilterWithColor:(id)color;
- (void)addColorMultiplyFilterWithColor:(id)color colorSpace:(int)space flags:(unsigned int)flags;
- (void)addFilterLayerWithShader:(id)shader border:(CGSize)border layerBorder:(CGSize)layerBorder bounds:(const CGRect *)bounds flags:(unsigned int)flags;
- (void)addGrayscaleFilterWithAmount:(float)amount;
- (void)addGrayscaleFilterWithAmount:(float)amount flags:(unsigned int)flags;
- (void)addLuminanceCurveFilterWithCurve:(float)curve[4] color:(id)color colorSpace:(int)space flags:(unsigned int)flags;
- (void)addPathProjectionStyleWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint path:(RBPath)path transform:(CGAffineTransform *)transform flags:(unsigned int)flags;
- (void)addShadowStyleWithRadius:(double)radius midpoint:(float)midpoint offset:(CGSize)offset color:(id)color colorSpace:(int)space blendMode:(int)mode flags:(unsigned int)flags;
- (void)addShadowStyleWithRadius:(double)radius offset:(CGSize)offset color:(id)color colorSpace:(int)space blendMode:(int)mode flags:(unsigned int)flags;
- (void)addShadowStyleWithRadius:(double)radius offset:(CGSize)offset color:(id)color mode:(unsigned int)mode;
- (void)addVariableBlurLayerWithAlpha:(float)alpha scale:(double)scale radius:(double)radius bounds:(CGRect)bounds flags:(unsigned int)flags;
- (void)beginLayerWithFlags:(unsigned int)flags;
- (void)beginRecordingXML;
- (void)clear;
- (void)clearCaches;
- (void)clipLayerWithAlpha:(float)alpha mode:(int)mode;
- (void)concat:(CGAffineTransform *)concat;
- (void)dealloc;
- (void)drawDebugSeed:(void *)seed;
- (void)drawLayerWithAlpha:(float)alpha blendMode:(int)mode;
- (void)renderInContext:(CGContext *)context options:(id)options;
- (void)restore;
- (void)save;
- (void)setCGStyleHandler:(id)handler;
- (void)setCTM:(CGAffineTransform *)m;
- (void)setContentRect:(CGRect)rect;
- (void)setDefaultColorSpace:(int)space;
- (void)setDeviceScale:(double)scale;
- (void)setLayerAnimationSequencer:(id)sequencer;
- (void)setLinearColors:(BOOL)colors;
- (void)setProfile:(unsigned int)profile;
@end

@implementation RBDisplayList

- (id)moveContents
{
  v3 = *(self + 40);
  *(self + 40) = 0;
  v11[0] = v3;
  if (v3)
  {
    operator new();
  }

  v4 = [RBMovedDisplayListContents alloc];
  RB::DisplayList::Builder::move_contents((self + 16), v5, &v10);
  v6 = v11[0];
  v11[0] = 0;
  v9 = v6;
  v7 = [(RBMovedDisplayListContents *)v4 initWithContents:&v9 xmlDocument:?];
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](&v9, 0);
  if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDisplayList moveContents];
  }

  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](v11, 0);
  return v7;
}

- (RBDisplayList)init
{
  v5.receiver = self;
  v5.super_class = RBDisplayList;
  v2 = [(RBDisplayList *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 93) = 0;
    *(v2 + 47) = 0x3FF0000000000000;
    *(*(v2 + 37) + 8) = v2;
    if (RBXMLRecorderInstalled())
    {
      [(RBDisplayList *)v3 beginRecordingXML];
    }
  }

  return v3;
}

- (id).cxx_construct
{
  RB::DisplayList::Builder::Builder((self + 16));
  *(self + 44) = 0;
  *(self + 20) = 0u;
  *(self + 45) = 0x100000000;
  return self;
}

- (void)save
{
  RB::DisplayList::Builder::save((self + 16));
  v4 = *(self + 40);
  if (v4)
  {

    RB::XML::DisplayList::save(v4, v3);
  }
}

- (void)restore
{
  RB::DisplayList::Builder::restore((self + 16), 0);
  v4 = *(self + 40);
  if (v4)
  {

    RB::XML::DisplayList::restore(v4, v3);
  }
}

- (void)dealloc
{
  if (*(self + 92))
  {
    [(RBDisplayList *)self dealloc];
  }

  v2.receiver = self;
  v2.super_class = RBDisplayList;
  [(RBDisplayList *)&v2 dealloc];
}

- (CGRect)boundingRect
{
  v2 = *(self + 3);
  if (v2)
  {
    v3 = RB::DisplayList::Layer::bounds(v2 + 40);
    v5 = vcvtq_f64_f32(v4);
    v6 = vcvtq_f64_f32(v3);
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 16);
  }

  v7 = v6.f64[1];
  v8 = v5.f64[1];
  result.size.width = v5.f64[0];
  result.origin.x = v6.f64[0];
  result.size.height = v8;
  result.origin.y = v7;
  return result;
}

- (void)clearCaches
{
  v3 = *(self + 90);
  if (*(self + 91) > v3)
  {
    *(self + 44) = RB::details::realloc_vector<unsigned int,16ul>(*(self + 44), self + 336, 1u, self + 91, v3);
  }

  RB::DisplayList::Builder::clear_caches((self + 16));
}

- (CGRect)contentRect
{
  v2 = *(self + 280);
  v3 = vcge_f32(vabs_f32(v2), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    v7 = MEMORY[0x1E695F040];
LABEL_6:
    v6 = *v7;
    v5 = v7[1];
    goto LABEL_7;
  }

  v4 = vceqz_f32(v2);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    v7 = MEMORY[0x1E695F050];
    goto LABEL_6;
  }

  v5 = vcvtq_f64_f32(v2);
  v6 = vcvtq_f64_f32(*(self + 272));
LABEL_7:
  v8 = v6.f64[1];
  v9 = v5.f64[1];
  result.size.width = v5.f64[0];
  result.origin.x = v6.f64[0];
  result.size.height = v9;
  result.origin.y = v8;
  return result;
}

- (void)setContentRect:(CGRect)rect
{
  y = rect.origin.y;
  height = rect.size.height;
  RB::DisplayList::Builder::set_crop(self + 2, a2, vcvt_f32_f64(rect.origin), vcvt_f32_f64(rect.size));
}

- (float)contentHeadroom
{
  v3 = *(self + 3);
  if (!v3)
  {
    return 0.0;
  }

  _H0 = RB::DisplayList::Layer::color_info((v3 + 320), v2) >> 16;
  __asm { FCVT            S0, H0 }

  return result;
}

- (void)setDeviceScale:(double)scale
{
  if (*(self + 47) != scale)
  {
    *(self + 47) = scale;
    v3 = *(self + 40);
    if (v3)
    {
      RB::XML::DisplayList::device_scale(v3, a2, scale);
    }
  }
}

- (void)setProfile:(unsigned int)profile
{
  v4 = *(self + 3);
  if (v4 && (*(v4 + 336) || *(v4 + 352)))
  {
    [(RBDisplayList *)self setProfile:a2];
  }

  if (*(self + 93) != profile)
  {
    *(self + 93) = profile;
    v5 = self + 16;

    RB::DisplayList::Builder::set_optimized(v5, profile != 0);
  }
}

- (BOOL)isEmpty
{
  v2 = *(self + 3);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 336))
  {
    return 0;
  }

  return *(v2 + 352) == 0;
}

- (void)setDefaultColorSpace:(int)space
{
  v4 = *(self + 37);
  v5 = *(v4 + 8);
  *(v4 + 156) = rb_color_space(space);
  v6 = *(v5 + 320);
  if (v6)
  {
    *(v6 + 112) = space;
  }
}

- (void)setLinearColors:(BOOL)colors
{
  colorsCopy = colors;
  v5 = rb_color_space([(RBDisplayList *)self defaultColorSpace]);
  v6 = v5 & 0xF;
  if (colorsCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  if ((v5 & 0x100) == 0)
  {
    v6 = 1;
  }

  v8 = v6 | v7 | 0x100;
  *(*(self + 37) + 156) = v8;
  if (*(self + 40))
  {
    *(*(self + 40) + 112) = rb_color_space(v8);
  }
}

- (float)targetHeadroom
{
  _H0 = *(*(self + 37) + 176);
  __asm { FCVT            S0, H0 }

  return result;
}

- (void)clear
{
  [(RBDisplayList *)self clearCaches];
  RB::DisplayList::Builder::~Builder((self + 16));
  RB::DisplayList::Builder::Builder((self + 16));
  *(*(self + 37) + 8) = self;
  if (*(self + 40))
  {
    operator new();
  }
}

- (void)beginLayerWithFlags:(unsigned int)flags
{
  v3 = *&flags;
  if ((flags & 4) != 0)
  {
    v5 = 119;
  }

  else
  {
    v5 = 123;
  }

  v6 = v5 & flags;
  if ((flags & 0xA0) != 0)
  {
    v7 = v6 | 0x80;
  }

  else
  {
    v7 = v6;
  }

  v8 = RB::DisplayList::Builder::begin_layer((self + 16), *(self + 37), v7);
  RB::DisplayList::Builder::save((self + 16), v8);
  v9 = *(self + 40);
  if (v9)
  {
    v10 = *(self + 37);

    RB::XML::DisplayList::begin_layer(v9, v10, v3);
  }
}

- (RBAnimationSequencer)layerAnimationSequencer
{
  v2 = RB::DisplayList::Builder::current_layer(self + 16, *(self + 37));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = objc_opt_new();
  [(RBAnimationSequencer *)v4 setRBSequencer:v3];

  return v4;
}

- (void)setLayerAnimationSequencer:(id)sequencer
{
  v5 = RB::DisplayList::Builder::current_layer(self + 16, *(self + 37));
  if (!v5 || (v7 = v5, (*(v5 + 77) & 1) != 0))
  {
    [(RBDisplayList *)v5 setLayerAnimationSequencer:v6];
  }

  if ((*(self + 304) & 1) == 0)
  {
    if (sequencer)
    {
      v8 = *(self + 3);
      rb_animation = [(RBAnimation *)sequencer rb_animation];
      v10 = ((v8[4] + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 + 3) > v8[5])
      {
        v10 = RB::Heap::alloc_slow(v8 + 2, 0x30uLL, 7);
      }

      else
      {
        v8[4] = (v10 + 3);
      }

      v11 = *rb_animation;
      v12 = rb_animation[2];
      v10[1] = rb_animation[1];
      v10[2] = v12;
      *v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 40) = v10;
  }
}

- (void)drawLayerWithAlpha:(float)alpha blendMode:(int)mode
{
  v7 = RB::DisplayList::Builder::end_layer((self + 16), *(self + 37));
  RB::DisplayList::Builder::restore((self + 16), 1);
  v8 = *(self + 37);
  v9 = rb_blend_mode(mode);
  RB::DisplayList::Builder::draw_layer(self + 16, v7, v8, v9, alpha);
  v10 = *(self + 40);
  if (v10)
  {

    RB::XML::DisplayList::draw_layer(v10, mode, alpha);
  }
}

- (void)clipLayerWithAlpha:(float)alpha mode:(int)mode
{
  v7 = RB::DisplayList::Builder::end_layer((self + 16), *(self + 37));
  RB::DisplayList::Builder::restore((self + 16), 1);
  v8 = *(self + 37);
  v9 = rb_clip_mode(mode);
  RB::DisplayList::Builder::clip_layer(self + 2, v7, v8, v9, alpha);
  if (*(self + 40))
  {

    RB::XML::DisplayList::clip_layer();
  }
}

- (CGContext)beginCGContextWithAlpha:(float)alpha
{
  v4 = *(self + 37);
  [(RBDisplayList *)self deviceScale];

  return begin_cgcontext(v4, alpha, v5, 0);
}

- (CGContext)beginCGContextWithAlpha:(float)alpha flags:(unsigned int)flags
{
  v6 = *(self + 37);
  [(RBDisplayList *)self deviceScale];

  return begin_cgcontext(v6, alpha, v7, flags);
}

- (void)setCGStyleHandler:(id)handler
{
  v4 = [handler copy];

  *(self + 41) = v4;
}

- (void)renderInContext:(CGContext *)context options:(id)options
{
  v5 = *(self + 3);
  if (v5)
  {
    render_contents(context, options, v5, *(self + 40));

    RBXMLRecorderMarkCGFrame(self, context);
  }
}

- (CGAffineTransform)CTM
{
  b = self[6].b;
  v4 = *(*&b + 32);
  *&retstr->a = *(*&b + 16);
  *&retstr->c = v4;
  *&retstr->tx = *(*&b + 48);
  return self;
}

- (void)setCTM:(CGAffineTransform *)m
{
  v3 = *(self + 37);
  v4 = *&m->c;
  v5[0] = *&m->a;
  v5[1] = v4;
  v5[2] = *&m->tx;
  RBDrawingStateSetCTM(v3, v5);
}

- (CGRect)clipBoundingBox
{
  RBDrawingStateGetClipBoundingBox(*(self + 37));
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)concat:(CGAffineTransform *)concat
{
  v3 = *(self + 37);
  v4 = *&concat->c;
  v5 = *&concat->tx;
  v6[0] = *&concat->a;
  v6[1] = v4;
  v6[2] = v5;
  RBDrawingStateConcatCTM(v3, v6);
}

- (NSUUID)identifierNamespace
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *(*(self + 37) + 68);
  return [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v3];
}

- (RBTransition)transition
{
  v2 = RBDrawingStateCopyTransition(*(self + 37));

  return v2;
}

- (void)_drawInState:(_RBDrawingState *)state alpha:(float)alpha
{
  [(RBDisplayList *)self clearCaches];
  v8 = *(state + 1);
  if (!*(v8 + 24))
  {
    make_contents(*(state + 1));
  }

  v9 = *(self + 3);
  if (v9)
  {
    RB::DisplayList::Builder::draw(v8 + 16, v9, state, alpha, 0, 0);
  }

  v10 = *(v8 + 320);
  if (v10)
  {
    v11 = *(self + 40);
    if (v11)
    {

      RB::XML::DisplayList::draw_list(v10, state, v11, v7, alpha);
    }
  }
}

- (void)addShadowStyleWithRadius:(double)radius midpoint:(float)midpoint offset:(CGSize)offset color:(id)color colorSpace:(int)space blendMode:(int)mode flags:(unsigned int)flags
{
  v9 = *(self + 37);
  radiusCopy = radius;
  offsetCopy = offset;
  colorCopy = color;
  spaceCopy = space;
  v14 = 0;
  midpointCopy = midpoint;
  modeCopy = mode;
  flagsCopy = flags;
  add_style(v9, &radiusCopy);
}

- (void)addShadowStyleWithRadius:(double)radius offset:(CGSize)offset color:(id)color colorSpace:(int)space blendMode:(int)mode flags:(unsigned int)flags
{
  v8 = *(self + 37);
  radiusCopy = radius;
  offsetCopy = offset;
  colorCopy = color;
  spaceCopy = space;
  v13 = 0x3F00000000000000;
  modeCopy = mode;
  flagsCopy = flags;
  add_style(v8, &radiusCopy);
}

- (void)addShadowStyleWithRadius:(double)radius offset:(CGSize)offset color:(id)color mode:(unsigned int)mode
{
  v6 = *(self + 37);
  radiusCopy = radius;
  offsetCopy = offset;
  colorCopy = color;
  v10 = 0;
  v11 = 0x3F00000000000000;
  v12 = 0;
  modeCopy = mode;
  add_style(v6, &radiusCopy);
}

- (void)addAffineTransformStyle:(CGAffineTransform *)style
{
  v3 = *(self + 37);
  v4 = *&style->c;
  v5[0] = *&style->a;
  v5[1] = v4;
  v5[2] = *&style->tx;
  RBDrawingStateAddAffineTransformStyle(v3, v5);
}

- (void)addPathProjectionStyleWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint path:(RBPath)path transform:(CGAffineTransform *)transform flags:(unsigned int)flags
{
  v7 = *(self + 37);
  v8 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v8;
  v9[2] = *&transform->tx;
  RBDrawingStateAddPathProjectionStyle(v7, path.var0, path.var1, v9, *&flags, point, point.y, endPoint.x, endPoint.y);
}

- (void)addVariableBlurLayerWithAlpha:(float)alpha scale:(double)scale radius:(double)radius bounds:(CGRect)bounds flags:(unsigned int)flags
{
  v7 = *&flags;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = RB::DisplayList::Builder::end_layer((self + 16), *(self + 37));
  RB::DisplayList::Builder::restore((self + 16), 1);
  v17 = *(self + 37);
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;

  add_variable_blur_layer(v17, v16, scale, alpha, radius, *&v18, v7);
}

- (void)addAlphaThresholdFilterWithMinAlpha:(float)alpha maxAlpha:(float)maxAlpha color:(id)color colorSpace:(int)space
{
  if (maxAlpha >= 1.0)
  {
    maxAlpha = INFINITY;
  }

  v6 = *(self + 37);
  v7[0] = 3;
  *&v7[1] = alpha;
  *&v7[2] = maxAlpha;
  colorCopy = color;
  spaceCopy = space;
  v10 = 0;
  add_style(v6, v7);
}

- (void)addAlphaThresholdFilterWithAlpha:(float)alpha color:(id)color colorSpace:(int)space
{
  v5 = *(self + 37);
  v6[0] = 3;
  *&v6[1] = alpha;
  v6[2] = 2139095040;
  colorCopy = color;
  spaceCopy = space;
  v9 = 0;
  add_style(v5, v6);
}

- (void)addAlphaGradientFilterWithStopCount:(int64_t)count colors:(id *)colors colorSpace:(int)space locations:(const double *)locations flags:(unsigned int)flags
{
  v7 = *(self + 37);
  v8 = 0u;
  LOBYTE(v8) = 3;
  DWORD2(v8) = 1065353216;
  countCopy = count;
  colorsCopy = colors;
  spaceCopy = space;
  locationsCopy = locations;
  flagsCopy = flags;
  add_style(v7, &v8);
}

- (void)addColorMultiplyFilterWithColor:(id)color colorSpace:(int)space flags:(unsigned int)flags
{
  v5 = *(self + 37);
  colorCopy = color;
  spaceCopy = space;
  v8 = 0;
  flagsCopy = flags;
  add_color_multiply_style(v5, &colorCopy);
}

- (void)addColorMultiplyFilterWithColor:(id)color
{
  v3 = *(self + 37);
  colorCopy = color;
  v5 = 0;
  v6 = 0;
  add_color_multiply_style(v3, &colorCopy);
}

- (void)addAlphaMultiplyFilterWithColor:(id)color colorSpace:(int)space flags:(unsigned int)flags
{
  v5 = *(self + 37);
  colorCopy = color;
  spaceCopy = space;
  v8 = 0;
  flagsCopy = flags;
  add_alpha_multiply_style(v5, &colorCopy);
}

- (void)addAlphaMultiplyFilterWithColor:(id)color
{
  v3 = *(self + 37);
  colorCopy = color;
  v5 = 0;
  v6 = 0;
  add_alpha_multiply_style(v3, &colorCopy);
}

- (void)addGrayscaleFilterWithAmount:(float)amount flags:(unsigned int)flags
{
  v4 = *(self + 37);
  v5 = LODWORD(amount);
  v6 = RBColorWhite;
  v7 = 0;
  flagsCopy = flags;
  add_style(v4, &v5);
}

- (void)addGrayscaleFilterWithAmount:(float)amount
{
  v3 = *(self + 37);
  v4 = LODWORD(amount);
  v5 = RBColorWhite;
  v6 = 0;
  v7 = 0;
  add_style(v3, &v4);
}

- (void)addColorMonochromeFilterWithAmount:(float)amount color:(id)color colorSpace:(int)space bias:(float)bias flags:(unsigned int)flags
{
  v7 = *(self + 37);
  *&v8 = amount;
  *(&v8 + 1) = bias;
  colorCopy = color;
  spaceCopy = space;
  v11 = 0;
  add_style(v7, &v8);
}

- (void)addColorMonochromeFilterWithAmount:(float)amount color:(id)color bias:(float)bias
{
  v5 = *(self + 37);
  *&v6 = amount;
  *(&v6 + 1) = bias;
  colorCopy = color;
  v8 = 0;
  v9 = 0;
  add_style(v5, &v6);
}

- (void)addLuminanceCurveFilterWithCurve:(float)curve[4] color:(id)color colorSpace:(int)space flags:(unsigned int)flags
{
  v6 = *(self + 37);
  v7[0] = *curve;
  v7[1] = color;
  spaceCopy = space;
  v9 = 0;
  flagsCopy = flags;
  add_style(v6, v7);
}

- (void)addFilterLayerWithShader:(id)shader border:(CGSize)border layerBorder:(CGSize)layerBorder bounds:(const CGRect *)bounds flags:(unsigned int)flags
{
  v7 = *&flags;
  height = layerBorder.height;
  width = layerBorder.width;
  v11 = border.height;
  v12 = border.width;
  v15 = RB::DisplayList::Builder::end_layer((self + 16), *(self + 37));
  RB::DisplayList::Builder::restore((self + 16), 1);
  v16 = *(self + 37);
  v17 = v12;
  v18 = v11;
  v19 = width;
  v20 = height;

  add_shader_filter_layer(v16, shader, v15, *&v17, *&v19, bounds, v7);
}

- (void)beginRecordingXML
{
  if (!*(self + 40))
  {
    operator new();
  }
}

- (void)drawDebugSeed:(void *)seed
{
  v22 = *MEMORY[0x1E69E9840];
  if (seed)
  {
    if ([RBDisplayList drawDebugSeed:]::once != -1)
    {
      [RBDisplayList drawDebugSeed:];
    }

    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = a2 >> 28;
      if (v7 == 1 || v6 || v8)
      {
        v21[v6] = [RBDisplayList drawDebugSeed:]::glyph_ids[v8];
        v9 = &v20[v6];
        *v9 = v6 * 0.75;
        *(v9 + 1) = 0x3FB999999999999ALL;
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      a2 *= 16;
      --v7;
    }

    while (v7);
    [v4 setRect:{0.0, 0.0, v6 * 12.0 + 2.0, 18.0}];
    LODWORD(v10) = 0;
    LODWORD(v11) = 0;
    LODWORD(v12) = 0;
    LODWORD(v13) = 1065353216;
    [v5 setColor:{v10, v11, v12, v13}];
    LODWORD(v14) = 1.0;
    [seed drawShape:v4 fill:v5 alpha:0 blendMode:v14];
    [seed save];
    [seed translateByX:1.0 Y:17.0];
    [seed scaleByX:16.0 Y:-16.0];
    [v4 setGlyphs:v21 positions:v20 count:v6 font:-[RBDisplayList drawDebugSeed:]::font renderingStyle:13];
    LODWORD(v15) = 1065353216;
    LODWORD(v16) = 1065353216;
    LODWORD(v17) = 1065353216;
    LODWORD(v18) = 1065353216;
    [v5 setColor:{v15, v16, v17, v18}];
    LODWORD(v19) = 1.0;
    [seed drawShape:v4 fill:v5 alpha:0 blendMode:v19];
    [seed restore];
  }
}

CGFontRef __31__RBDisplayList_drawDebugSeed___block_invoke()
{
  result = CGFontCreateWithFontName(@"Helvetica");
  [RBDisplayList drawDebugSeed:]::font = result;
  if (result)
  {
    return CGFontGetGlyphsForUnichars();
  }

  return result;
}

- (uint64_t)moveContents
{
  result = OUTLINED_FUNCTION_0_2(self);
  if (v8)
  {
    OUTLINED_FUNCTION_0();
    result = (*(v9 + 8))();
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

@end