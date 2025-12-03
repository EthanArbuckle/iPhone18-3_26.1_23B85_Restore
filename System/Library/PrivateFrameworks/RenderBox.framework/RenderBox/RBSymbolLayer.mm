@interface RBSymbolLayer
- ($A37143018C4D5433AE0D7FFC21A1DA3D)symbolTransform;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)resolveStyle:(unsigned int)style colorName:(id)name;
- (BOOL)resolveFill:(id)fill alignmentRect:(CGRect)rect style:(unsigned int)style colorName:(id)name;
- (RBSymbolLayer)init;
- (RBSymbolLayer)initWithCoder:(id)coder;
- (RBSymbolLayer)initWithLayer:(id)layer;
- (id).cxx_construct;
- (id)RBLayerDefaultDevice:(id)device;
- (id)actionForKey:(id)key;
- (void)clearContents;
- (void)configureSublayer:(id)sublayer type:(unsigned int)type;
- (void)dealloc;
- (void)display;
- (void)drawingContents;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)layoutSublayers;
- (void)renderInContext:(CGContext *)context;
- (void)setAnimator:(id)animator;
- (void)setFillResolver:(id)resolver;
- (void)setNeedsLayout;
- (void)setStyleResolver:(id)resolver;
- (void)setSymbolTransform:(id)transform;
- (void)symbolAnimatorDidChange:(id)change;
- (void)updateForTime:(uint64_t)time;
@end

@implementation RBSymbolLayer

- (RBSymbolLayer)init
{
  v8.receiver = self;
  v8.super_class = RBSymbolLayer;
  result = [(RBSymbolLayer *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(result + 104) = _Q0;
    *(result + 15) = 0;
    *(result + 16) = 0;
  }

  return result;
}

- (RBSymbolLayer)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = RBSymbolLayer;
  result = [(RBSymbolLayer *)&v9 initWithCoder:coder];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(result + 104) = _Q0;
    *(result + 15) = 0;
    *(result + 16) = 0;
  }

  return result;
}

- (RBSymbolLayer)initWithLayer:(id)layer
{
  v14.receiver = self;
  v14.super_class = RBSymbolLayer;
  v4 = [(RBSymbolLayer *)&v14 initWithLayer:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(layer + 6);
    v7 = *(v4 + 6);
    if (v7 != v6)
    {

      *(v5 + 6) = v6;
    }

    v8 = *(layer + 120);
    *(v5 + 104) = *(layer + 104);
    *(v5 + 120) = v8;
    *(v5 + 25) = *(layer + 25);
    v9 = *(layer + 7);
    v10 = *(v5 + 7);
    if (v10 != v9)
    {

      *(v5 + 7) = v9;
    }

    v11 = *(layer + 8);
    v12 = *(v5 + 8);
    if (v12 != v11)
    {

      *(v5 + 8) = v11;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(RBSymbolAnimator *)*(self + 6) removeObserver:?];
  [(CALayer *)MEMORY[0x1E6979398] cancelAnimation:?];
  v3.receiver = self;
  v3.super_class = RBSymbolLayer;
  [(RBSymbolLayer *)&v3 dealloc];
}

- (void)setAnimator:(id)animator
{
  os_unfair_lock_lock(self + 22);
  v5 = *(self + 6);
  if (v5 == animator)
  {
    v5 = 0;
  }

  else
  {
    *(self + 6) = 0;
    if (animator)
    {

      *(self + 6) = animator;
    }
  }

  os_unfair_lock_unlock(self + 22);
  if (v5 != animator)
  {
    [(RBSymbolAnimator *)v5 removeObserver:?];
    [(RBSymbolAnimator *)animator addObserver:?];
    [(RBSymbolLayer *)self setNeedsLayout];
  }
}

- (void)setSymbolTransform:(id)transform
{
  dy = transform.var1.dy;
  dx = transform.var1.dx;
  v5 = transform.var0.dy;
  v6 = transform.var0.dx;
  os_unfair_lock_lock(self + 22);
  if (v6 == *(self + 13) && v5 == *(self + 14) && dx == *(self + 15) && dy == *(self + 16))
  {

    os_unfair_lock_unlock(self + 22);
  }

  else
  {
    *(self + 13) = v6;
    *(self + 14) = v5;
    *(self + 15) = dx;
    *(self + 16) = dy;
    os_unfair_lock_unlock(self + 22);

    [(RBSymbolLayer *)self setNeedsLayout];
  }
}

- (void)setStyleResolver:(id)resolver
{
  os_unfair_lock_lock(self + 22);
  if (*(self + 7) == resolver)
  {

    os_unfair_lock_unlock(self + 22);
  }

  else
  {
    v5 = [resolver copy];

    *(self + 7) = v5;
    os_unfair_lock_unlock(self + 22);

    [(RBSymbolLayer *)self setNeedsLayout];
  }
}

- (void)setFillResolver:(id)resolver
{
  os_unfair_lock_lock(self + 22);
  if (*(self + 8) == resolver)
  {

    os_unfair_lock_unlock(self + 22);
  }

  else
  {
    v5 = [resolver copy];

    *(self + 8) = v5;
    os_unfair_lock_unlock(self + 22);

    [(RBSymbolLayer *)self setNeedsLayout];
  }
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)resolveStyle:(unsigned int)style colorName:(id)name
{
  v4 = *(self + 7);
  if (v4)
  {
    (*(v4 + 16))(v4, *&style, name);
  }

  else
  {
    v5 = -32768.0;
    v6 = -32768.0;
    v7 = -32768.0;
    v8 = -32768.0;
  }

  result.var3 = v8;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (BOOL)resolveFill:(id)fill alignmentRect:(CGRect)rect style:(unsigned int)style colorName:(id)name
{
  v7 = *&style;
  v10 = *(self + 8);
  if (v10 && ((*(v10 + 16))(v10, fill, *&style, name, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height) & 1) != 0)
  {
    return 1;
  }

  [(RBSymbolLayer *)self resolveStyle:v7 colorName:name, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (v12 == -32768.0)
  {
    return 0;
  }

  v11 = 1;
  [fill setColor:1 colorSpace:?];
  return v11;
}

- (void)symbolAnimatorDidChange:(id)change
{
  [(RBSymbolLayer *)self setNeedsLayout];
  superlayer = [(RBSymbolLayer *)self superlayer];

  [superlayer setNeedsLayout];
}

- (void)setNeedsLayout
{
  if (!*(self + 23))
  {
    [(CALayer *)MEMORY[0x1E6979398] cancelAnimation:?];
    v3.receiver = self;
    v3.super_class = RBSymbolLayer;
    [(RBSymbolLayer *)&v3 setNeedsLayout];
  }
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  *(self + 97) = visible;
  [(RBSymbolLayer *)self setNeedsLayout];
  v5.receiver = self;
  v5.super_class = RBSymbolLayer;
  [(RBSymbolLayer *)&v5 layerDidBecomeVisible:visibleCopy];
}

- (void)layoutSublayers
{
  v3 = CACurrentMediaTime();

  [(RBSymbolLayer *)self updateForTime:v3];
}

- (void)updateForTime:(uint64_t)time
{
  v63[5] = *MEMORY[0x1E69E9840];
  if (time)
  {
    os_unfair_lock_lock((time + 88));
    *(time + 92) = 1;
    if (*(time + 80) > a2)
    {
      a2 = *(time + 80);
    }

    *(time + 80) = a2;
    v4 = *(time + 48);
    if (!v4 || (*(time + 97) & 1) == 0)
    {
      [(RBSymbolLayer *)time clearContents];
LABEL_60:
      *(time + 92) = 0;
      os_unfair_lock_unlock((time + 88));
      return;
    }

    rb_animation = [(RBAnimation *)v4 rb_animation];
    RB::Symbol::Animator::set_current_time(rb_animation, a2);
    if (v58 == 1)
    {
      [(RBSymbolLayer *)time clearContents];
LABEL_59:
      v39 = v57 * v52;
      [(CALayer *)time scheduleAnimation:time atTime:v51 maxVelocityInPixels:v39];
      [(RBSymbolAnimator *)*(time + 48) unblockObservers];
      RB::Symbol::Presentation::~Presentation(v47);
      goto LABEL_60;
    }

    drawingOptions = [(RB::Symbol::Model *)v46[0] drawingOptions];
    v7 = drawingOptions;
    v8 = vandq_s8(vandq_s8(vceqq_f64(v54, xmmword_195E42770), vceqq_f64(v53, xmmword_195E42760)), vceqzq_f64(v55));
    if ((vandq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) != 0 && (drawingOptions & 2) == 0 && (RB::Symbol::Presentation::style_mask(v47) & 0x1000) == 0)
    {
      RB::Symbol::Presentation::template_image(v47, &v59);
      v9 = v59.n128_u64[0];
      if (v59.n128_u64[0])
      {
        v10 = v59.n128_f64[1];
        v11 = v60;
        if (*(v46[0] + 96) != 3 || (v12 = [-[RB::Symbol::Model sublayers](v46[0] "sublayers")]) == 0)
        {
          v12 = objc_opt_new();
          [(RB::Symbol::Model *)v46[0] configureSublayer:v12 type:0];
          if (color_symbols())
          {
            {
            }
          }

          [v12 setContentsGravity:*MEMORY[0x1E6979DC0]];
          [v12 setContentsSwizzle:*MEMORY[0x1E6979E30]];
          [v12 setDelegate:v46[0]];
          v63[0] = v12;
          -[RB::Symbol::Model setSublayers:](v46[0], "setSublayers:", [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1]);

          if (v46[0] && *(v46[0] + 96) != 3)
          {
            *(v46[0] + 96) = 3;
          }
        }

        [v12 setContents:v9];
        [v12 setContentsScale:v10];
        LODWORD(v13) = v11;
        [v12 setOpacity:v13];
        if (color_symbols())
        {
          [(RB::Symbol::Model *)v46[0] bounds];
          [v12 setFrame:?];
        }

        v14 = &v48;
        if (v50)
        {
          v14 = (v50 + 8);
        }

        v15 = (v50 + 440);
        if (!v50)
        {
          v15 = &v49;
        }

        v16 = *v15;
        if (!v16)
        {
          v16 = v14;
        }

        v17 = v16[7];
        if (v17 == -32768.0)
        {
          [(RB::Symbol::Model *)v46[0] resolveStyle:0 colorName:0];
          v17 = v21;
          if (v21 == -32768.0)
          {
            v22 = 0.0;
            v23 = 1.0;
            v24 = 1.0;
            v17 = 1.0;
          }

          else
          {
            v23 = v18;
            v22 = v19;
            v24 = v20;
          }
        }

        else
        {
          v23 = v16[4];
          v22 = v16[5];
          v24 = v16[6];
        }

        contentsMultiplyColor = [v12 contentsMultiplyColor];
        if (!contentsMultiplyColor || (v41 = RBColorFromCGColor(contentsMultiplyColor, 0), v23 != *&v41) || v22 != v42 || v24 != v43 || v17 != v44)
        {
          v45 = RBColorCopyCGColor(1, v23, v22, v24, v17);
          [v12 setContentsMultiplyColor:v45];
          if (v45)
          {
            CFRelease(v45);
          }
        }

        goto LABEL_59;
      }
    }

    if (v7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    if (*(v46[0] + 96) == v25 && (v26 = [-[RB::Symbol::Model sublayers](v46[0] "sublayers")], (v27 = v26) != 0))
    {
      [(CALayer *)v26 position];
      if (v29 == rect2.origin.x && v28 == rect2.origin.y)
      {
        [(CALayer *)v27 bounds];
        if (CGRectEqualToRect(v64, rect2))
        {
          [(CALayer *)v27 contentsScale];
          if (v30 == v57)
          {
LABEL_55:
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = ___ZN12_GLOBAL__N_17Updater13update_mergedEv_block_invoke;
            v63[3] = &__block_descriptor_40_e66_B60__0__RBFill_8_CGRect__CGPoint_dd__CGSize_dd__16I48__NSString_52l;
            v63[4] = v46;
            if (v7)
            {
              v33 = objc_opt_new();
              [v33 setProfile:4];
              v60 = v34;
              v61 = v35;
              [v33 concat:&v59];
              State = RBDisplayListGetState(v33);
              RB::Symbol::Presentation::draw(v47, State, 0, v63, 1.0);
              v37 = v46[0];
              moveContents = [v33 moveContents];

              *(v37 + 9) = moveContents;
              [(CALayer *)v27 setNeedsDisplay];
            }

            else
            {
              v59.n128_u64[0] = MEMORY[0x1E69E9820];
              v59.n128_u64[1] = 3221225472;
              *&v60 = ___ZN12_GLOBAL__N_17Updater13update_mergedEv_block_invoke_2;
              *(&v60 + 1) = &unk_1E744CD10;
              *(&v61 + 1) = v63;
              v62 = v46;
              *&v61 = v27;
              [(CALayer *)v27 displayWithBounds:&v59 callback:rect2.origin.x, rect2.origin.y, rect2.size.width, rect2.size.height];
              if ([(CALayer *)v27 needsDisplay])
              {
                [(CALayer *)v27 setContents:[(CALayer *)v27 contents]];
              }
            }

            goto LABEL_59;
          }
        }
      }
    }

    else
    {
      v27 = objc_opt_new();
      if (v7)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      [(RB::Symbol::Model *)v46[0] configureSublayer:v27 type:v31];
      if (color_symbols())
      {
        {
        }

        {
        }

        if (v7)
        {
        }

        [(CALayer *)v27 setBackgroundColor:*v32];
      }

      [(CALayer *)v27 setOpaque:0];
      [(CALayer *)v27 setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      [(CALayer *)v27 setDelegate:v46[0]];
      v59.n128_u64[0] = v27;
      -[RB::Symbol::Model setSublayers:](v46[0], "setSublayers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1]);

      if (v46[0] && *(v46[0] + 96) != v25)
      {
        *(v46[0] + 96) = v25;
      }
    }

    [(CALayer *)v27 setPosition:rect2.origin.x, rect2.origin.y];
    [(CALayer *)v27 setBounds:rect2.origin.x, rect2.origin.y, rect2.size.width, rect2.size.height];
    [(CALayer *)v27 setContentsScale:v57];
    goto LABEL_55;
  }
}

- (void)drawingContents
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    *a2 = *(self + 72);

    os_unfair_lock_unlock((self + 88));
  }

  else
  {
    *a2 = 0;
  }
}

- (id)actionForKey:(id)key
{
  if ([key isEqualToString:@"sublayers"])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = RBSymbolLayer;
  return [(RBSymbolLayer *)&v6 actionForKey:key];
}

- (void)display
{
  [(RBSymbolLayer *)self layoutSublayers];

  [(RBSymbolLayer *)self setContents:0];
}

- (void)renderInContext:(CGContext *)context
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(self + 6);
  if (v4)
  {
    rb_animation = [(RBAnimation *)v4 rb_animation];
    if (v24[252])
    {
      v15 = v7;
      v16 = v8;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __33__RBSymbolLayer_renderInContext___block_invoke;
      v22[3] = &unk_1E744CCC8;
      v22[4] = self;
      v20 = 0;
      v21 = 1.0;
      v9 = RBDrawingStateFromCGContext(context, &v21, &v20);
      v10 = v9;
      if (v9)
      {
        v11 = RBDrawingStateBeginLayer(v9, 0);
        v17 = v14;
        v18 = v15;
        v19 = v16;
        RBDrawingStateConcatCTM(v11, &v17);
        RB::Symbol::Presentation::draw(v24, v11, 0, v22, 1.0);
        RBDrawingStateDrawLayer(v10, v11, v20, v21);
      }

      else
      {
        v12 = objc_opt_new();
        [v12 setProfile:3];
        v17 = v14;
        v18 = v15;
        v19 = v16;
        [v12 concat:&v17];
        State = RBDisplayListGetState(v12);
        RB::Symbol::Presentation::draw(v24, State, 0, v22, 1.0);
        [v12 renderInContext:context options:0];
      }
    }

    RB::Symbol::Presentation::~Presentation(v24);
  }
}

- (void)configureSublayer:(id)sublayer type:(unsigned int)type
{
  v4 = *&type;
  delegate = [(RBSymbolLayer *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    if (objc_opt_respondsToSelector())
    {

      [v8 rbSymbolLayer:self configureSublayer:sublayer type:v4];
    }
  }
}

- (id)RBLayerDefaultDevice:(id)device
{
  delegate = [(RBSymbolLayer *)self delegate];
  if (!delegate)
  {
    return 0;
  }

  v5 = delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v5 RBLayerDefaultDevice:device];
}

- ($A37143018C4D5433AE0D7FFC21A1DA3D)symbolTransform
{
  v2 = *(self + 13);
  v3 = *(self + 14);
  v4 = *(self + 15);
  v5 = *(self + 16);
  result.var1.dy = v5;
  result.var1.dx = v4;
  result.var0.dy = v3;
  result.var0.dx = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  return self;
}

- (void)clearContents
{
  if (self && *(self + 96))
  {
    [self setSublayers:0];

    *(self + 72) = 0;
    if (*(self + 96))
    {
      *(self + 96) = 0;
    }
  }
}

@end