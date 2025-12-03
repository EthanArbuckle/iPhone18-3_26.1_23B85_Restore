@interface RBDisplayListInterpolator
+ (id)interpolatorWithFrom:(id)from to:(id)to options:(id)options;
+ (id)newInterpolatorWithFrom:(id)from to:(id)to options:(id)options;
- (CGRect)boundingRectWithProgress:(float)progress;
- (RBDisplayListInterpolator)initWithFrom:(id)from to:(id)to options:(id)options;
- (double)activeDuration;
- (double)maxAbsoluteVelocityWithProgress:(float)progress;
- (id).cxx_construct;
- (id)contentsWithProgress:(float)progress;
- (id)copyContentsWithProgress:(float)progress;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_drawInState:(float32_t)state alpha:(float)alpha by:;
- (void)setFrom:(id)from;
@end

@implementation RBDisplayListInterpolator

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (double)activeDuration
{
  p = self->_interp._p;
  if (p)
  {
    return *(p + 40);
  }

  else
  {
    return 0.0;
  }
}

+ (id)interpolatorWithFrom:(id)from to:(id)to options:(id)options
{
  v5 = [self newInterpolatorWithFrom:from to:to options:options];

  return v5;
}

+ (id)newInterpolatorWithFrom:(id)from to:(id)to options:(id)options
{
  v8 = [RBDisplayListInterpolator alloc];

  return [(RBDisplayListInterpolator *)v8 initWithFrom:from to:to options:options];
}

- (RBDisplayListInterpolator)initWithFrom:(id)from to:(id)to options:(id)options
{
  v15.receiver = self;
  v15.super_class = RBDisplayListInterpolator;
  v8 = [(RBDisplayListInterpolator *)&v15 init];
  v9 = v8;
  if (v8)
  {
    p = v8->_from._p;
    if (p != from)
    {

      v9->_from._p = from;
    }

    v11 = v9->_to._p;
    if (v11 != to)
    {

      v9->_to._p = to;
    }

    v12 = [options copy];

    v9->_options._p = v12;
    v13 = [options objectForKeyedSubscript:RBDisplayListInterpolatorTransition];
    {
      {
        [RBDisplayListInterpolator initWithFrom:to:options:]::$_0::operator()();
      }
    }

    operator new();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
    p = self->_interp._p;
    if (v6 != p)
    {
      if (v6)
      {
        if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBDisplayListInterpolator copyWithZone:];
        }

        p = self->_interp._p;
      }

      if (p)
      {
        atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
      }

      v5[1] = p;
    }

    v8 = self->_from._p;
    v9 = v5[2];
    if (v9 != v8)
    {

      v5[2] = v8;
    }

    v10 = self->_to._p;
    v11 = v5[3];
    if (v11 != v10)
    {

      v5[3] = v10;
    }

    v12 = self->_options._p;
    v13 = v5[4];
    if (v13 != v12)
    {

      v5[4] = v12;
    }
  }

  return v5;
}

- (void)setFrom:(id)from
{
  p = self->_from._p;
  if (p != from)
  {

    self->_from._p = from;
  }
}

- (CGRect)boundingRectWithProgress:(float)progress
{
  _rb_contents = [(_RBDisplayListContents *)self->_from._p _rb_contents];
  _rb_contents2 = [(_RBDisplayListContents *)self->_to._p _rb_contents];
  p = self->_interp._p;
  if (p)
  {
    RB::DisplayList::interpolated_bounds((p + 152), 0, progress, _rb_contents, _rb_contents2, v7);
    v10 = vcvtq_f64_f32(v9);
    v12 = vcvtq_f64_f32(v11);
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 16);
  }

  v13 = v12.f64[1];
  v14 = v10.f64[1];
  result.size.width = v10.f64[0];
  result.origin.x = v12.f64[0];
  result.size.height = v14;
  result.origin.y = v13;
  return result;
}

- (double)maxAbsoluteVelocityWithProgress:(float)progress
{
  p = self->_interp._p;
  result = 0.0;
  if (p)
  {
    v7 = *(p + 86);
    if ((v7 & 0x44) != 0 || *(p + 402) == 1 && ((v7 & 3) != 0 || (*(p + 400) & 1) == 0))
    {
      [(_RBDisplayListContents *)self->_from._p boundingRect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(_RBDisplayListContents *)self->_to._p boundingRect];
      v24.origin.x = v16;
      v24.origin.y = v17;
      v24.size.width = v18;
      v24.size.height = v19;
      v22.origin.x = v9;
      v22.origin.y = v11;
      v22.size.width = v13;
      v22.size.height = v15;
      v23 = CGRectUnion(v22, v24);
      if (v23.size.width >= v23.size.height)
      {
        width = v23.size.width;
      }

      else
      {
        width = v23.size.height;
      }

      progressCopy = progress;
      return width * RB::DisplayList::Interpolator::Contents::max_animation_speed((self->_interp._p + 16), v23.origin.x, v23.origin.y);
    }
  }

  return result;
}

- (id)copyContentsWithProgress:(float)progress
{
  v5 = [RBInterpolatedDisplayListContents alloc];

  return [(RBInterpolatedDisplayListContents *)v5 initWithInterpolator:progress by:?];
}

- (id)contentsWithProgress:(float)progress
{
  v3 = [(RBDisplayListInterpolator *)self copyContentsWithProgress:?];

  return v3;
}

- (void)_drawInState:(float32_t)state alpha:(float)alpha by:
{
  if (self)
  {
    _rb_contents = [*(self + 16) _rb_contents];
    _rb_contents2 = [*(self + 24) _rb_contents];
    v10 = a2[1];
    if (!*(v10 + 24))
    {
      make_contents(a2[1]);
    }

    [v10 deviceScale];
    *&v11 = 0;
    *(&v11 + 1) = v12;
    v17 = v12;
    v18 = v11;
    v19 = 0;
    v20 = 0;
    v13 = *(self + 8);
    if (v13)
    {
      RB::DisplayList::Builder::draw_interpolated((v10 + 16), a2, (v13 + 152), state, alpha, _rb_contents, _rb_contents2, &v17);
    }

    if (*(v10 + 320))
    {
      _rb_xml_document = [*(self + 16) _rb_xml_document];
      _rb_xml_document2 = [*(self + 24) _rb_xml_document];
      if (_rb_xml_document)
      {
        if (_rb_xml_document2)
        {
          RB::XML::DisplayList::draw_interpolated(*(v10 + 320), a2, self, _rb_xml_document, _rb_xml_document2, v16, state, alpha);
        }
      }
    }
  }
}

@end