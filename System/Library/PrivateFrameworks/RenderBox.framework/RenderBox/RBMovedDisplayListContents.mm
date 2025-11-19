@interface RBMovedDisplayListContents
- (BOOL)isEmpty;
- (CGRect)boundingRect;
- (float)contentHeadroom;
- (id).cxx_construct;
- (void)_drawInState:(_RBDrawingState *)a3 alpha:(float)a4;
- (void)initWithContents:(uint64_t *)a3 xmlDocument:;
- (void)renderInContext:(CGContext *)a3 options:(id)a4;
@end

@implementation RBMovedDisplayListContents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (CGRect)boundingRect
{
  p = self->_contents._p;
  if (p)
  {
    v3 = RB::DisplayList::Layer::bounds(p + 40);
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

- (BOOL)isEmpty
{
  p = self->_contents._p;
  if (!p)
  {
    return 1;
  }

  if (*(p + 42))
  {
    return 0;
  }

  return *(p + 44) == 0;
}

- (float)contentHeadroom
{
  p = self->_contents._p;
  if (!p)
  {
    return 0.0;
  }

  _H0 = RB::DisplayList::Layer::color_info((p + 320), v2) >> 16;
  __asm { FCVT            S0, H0 }

  return result;
}

- (void)_drawInState:(_RBDrawingState *)a3 alpha:(float)a4
{
  v8 = *(a3 + 1);
  if (!*(v8 + 24))
  {
    make_contents(*(a3 + 1));
  }

  p = self->_contents._p;
  if (p)
  {
    RB::DisplayList::Builder::draw(v8 + 16, p, a3, a4, 0, 0);
  }

  v10 = *(v8 + 320);
  if (v10)
  {
    ptr = self->_xml_document.__ptr_;
    if (ptr)
    {

      RB::XML::DisplayList::draw_list(v10, a3, ptr, v4, a4);
    }
  }
}

- (void)renderInContext:(CGContext *)a3 options:(id)a4
{
  p = self->_contents._p;
  if (p)
  {
    render_contents(a3, a4, p, self->_xml_document.__ptr_);

    RBXMLRecorderMarkCGFrame(self, a3);
  }
}

- (void)initWithContents:(uint64_t *)a3 xmlDocument:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = RBMovedDisplayListContents;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    v7 = v5[1];
    v5[1] = *a2;
    *a2 = v7;
    v8 = *a3;
    *a3 = 0;
    std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](v5 + 2, v8);
  }

  return v6;
}

@end