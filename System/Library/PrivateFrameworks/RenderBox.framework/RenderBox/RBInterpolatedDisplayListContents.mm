@interface RBInterpolatedDisplayListContents
- (BOOL)isEmpty;
- (CGRect)boundingRect;
- (NSString)xmlDescription;
- (const)_rb_contents;
- (const)_rb_xml_document;
- (float)contentHeadroom;
- (id).cxx_construct;
- (id)encodedDataForDelegate:(id)delegate error:(id *)error;
- (id)initWithInterpolator:(float)interpolator by:;
- (void)_contentsWithScale:(double)scale@<D0>;
- (void)renderInContext:(CGContext *)context options:(id)options;
@end

@implementation RBInterpolatedDisplayListContents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)_contentsWithScale:(double)scale@<D0>
{
  if (self)
  {
    os_unfair_lock_lock((self + 20));
    v6 = *(self + 24);
    if (!v6 || *(self + 32) != scale)
    {
      v7 = objc_opt_new();
      [v7 setDeviceScale:scale];
      LODWORD(v8) = 1.0;
      [self _drawInState:v7[37] alpha:v8];
      moveContents = [v7 moveContents];

      *(self + 24) = moveContents;
      *(self + 32) = scale;

      v6 = *(self + 24);
    }

    *a2 = v6;

    os_unfair_lock_unlock((self + 20));
  }

  else
  {
    *a2 = 0;
  }
}

- (CGRect)boundingRect
{
  *&v2 = self->_progress;
  [(RBDisplayListInterpolator *)self->_interp._p boundingRectWithProgress:v2];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (float)contentHeadroom
{
  [(RBDisplayListContents *)[(RBDisplayListInterpolator *)self->_interp._p from] contentHeadroom];
  v4 = v3;
  [(RBDisplayListContents *)[(RBDisplayListInterpolator *)self->_interp._p to] contentHeadroom];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (void)renderInContext:(CGContext *)context options:(id)options
{
  v7 = [options objectForKeyedSubscript:RBDisplayListRenderRasterizationScale];
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    v8 = 1.0;
  }

  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:v8];
  v9 = v10;
  [v10 renderInContext:context options:options];
}

- (NSString)xmlDescription
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  xmlDescription = [v5 xmlDescription];

  return xmlDescription;
}

- (id)encodedDataForDelegate:(id)delegate error:(id *)error
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v6 = v9;
  v7 = [v9 encodedDataForDelegate:delegate error:error];

  return v7;
}

- (const)_rb_contents
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  _rb_contents = [v5 _rb_contents];

  return _rb_contents;
}

- (const)_rb_xml_document
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  _rb_xml_document = [v5 _rb_xml_document];

  return _rb_xml_document;
}

- (id)initWithInterpolator:(float)interpolator by:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = RBInterpolatedDisplayListContents;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  if (v5)
  {
    v6 = [a2 copy];

    v5[1] = v6;
    *(v5 + 4) = interpolator;
  }

  return v5;
}

- (BOOL)isEmpty
{
  p = self->_interp._p;
  result = 0;
  if (p)
  {
    v3 = p->_from._p;
    if (!v3 || [(_RBDisplayListContents *)v3 isEmpty])
    {
      v4 = p->_to._p;
      if (!v4 || ([(_RBDisplayListContents *)v4 isEmpty]& 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

@end