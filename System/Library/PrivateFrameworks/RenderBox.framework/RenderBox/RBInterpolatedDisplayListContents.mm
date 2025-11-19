@interface RBInterpolatedDisplayListContents
- (BOOL)isEmpty;
- (CGRect)boundingRect;
- (NSString)xmlDescription;
- (const)_rb_contents;
- (const)_rb_xml_document;
- (float)contentHeadroom;
- (id).cxx_construct;
- (id)encodedDataForDelegate:(id)a3 error:(id *)a4;
- (id)initWithInterpolator:(float)a3 by:;
- (void)_contentsWithScale:(double)a3@<D0>;
- (void)renderInContext:(CGContext *)a3 options:(id)a4;
@end

@implementation RBInterpolatedDisplayListContents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)_contentsWithScale:(double)a3@<D0>
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 20));
    v6 = *(a1 + 24);
    if (!v6 || *(a1 + 32) != a3)
    {
      v7 = objc_opt_new();
      [v7 setDeviceScale:a3];
      LODWORD(v8) = 1.0;
      [a1 _drawInState:v7[37] alpha:v8];
      v9 = [v7 moveContents];

      *(a1 + 24) = v9;
      *(a1 + 32) = a3;

      v6 = *(a1 + 24);
    }

    *a2 = v6;

    os_unfair_lock_unlock((a1 + 20));
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

- (void)renderInContext:(CGContext *)a3 options:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:RBDisplayListRenderRasterizationScale];
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
  [v10 renderInContext:a3 options:a4];
}

- (NSString)xmlDescription
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  v3 = [v5 xmlDescription];

  return v3;
}

- (id)encodedDataForDelegate:(id)a3 error:(id *)a4
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v6 = v9;
  v7 = [v9 encodedDataForDelegate:a3 error:a4];

  return v7;
}

- (const)_rb_contents
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  v3 = [v5 _rb_contents];

  return v3;
}

- (const)_rb_xml_document
{
  [(RBInterpolatedDisplayListContents *)self _contentsWithScale:1.0];
  v2 = v5;
  v3 = [v5 _rb_xml_document];

  return v3;
}

- (id)initWithInterpolator:(float)a3 by:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = RBInterpolatedDisplayListContents;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  if (v5)
  {
    v6 = [a2 copy];

    v5[1] = v6;
    *(v5 + 4) = a3;
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