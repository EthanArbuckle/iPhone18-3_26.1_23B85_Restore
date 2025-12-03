@interface RBDisplayListTransform
+ (id)transform;
- (id).cxx_construct;
- (id)applyingToDisplayList:(id)list;
- (id)copyApplyingToDisplayList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addColorReplacementFrom:(id)from to:(id)to colorSpace:(int)space;
- (void)addColorReplacementTo:(id)to colorSpace:(int)space;
- (void)applyToDisplayList:(id)list;
@end

@implementation RBDisplayListTransform

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0x100000000;
  return self;
}

+ (id)transform
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  p_transform = &self->_transform;
  v7 = (v4 + 8);
  if (*(v4 + 48))
  {
    v8 = *(v4 + 48);
  }

  else
  {
    v8 = (v4 + 8);
  }

  v9 = *(v5 + 56);
  if (v9)
  {
    v10 = 40 * v9;
    do
    {
      RB::DisplayList::Transform::Term::~Term(v8);
      v8 = (v11 + 40);
      v10 -= 40;
    }

    while (v10);
  }

  *(v5 + 56) = 0;
  if (self->_transform._terms._p_2)
  {
    p_transform = self->_transform._terms._p_2;
  }

  size = self->_transform._terms._size;
  if (*(v5 + 60) < size)
  {
    RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(v7, size);
    v13 = *(v5 + 56);
  }

  else
  {
    if (!size)
    {
      v18 = 0;
      goto LABEL_18;
    }

    v13 = 0;
  }

  v14 = *(v5 + 48);
  if (!v14)
  {
    v14 = v7;
  }

  v15 = &v14[40 * v13];
  v16 = size;
  do
  {
    v17 = RB::DisplayList::Transform::Term::Term(v15, p_transform);
    p_transform = (p_transform + 40);
    v15 = (v17 + 40);
    --v16;
  }

  while (v16);
  v18 = *(v5 + 56);
LABEL_18:
  *(v5 + 56) = v18 + size;
  return v5;
}

- (void)addColorReplacementFrom:(id)from to:(id)to colorSpace:(int)space
{
  _S8 = to.var3;
  _S9 = to.var2;
  _S10 = to.var1;
  _S11 = to.var0;
  _S12 = from.var3;
  _S13 = from.var2;
  _S14 = from.var1;
  _S15 = from.var0;
  v14 = rb_color_space(space);
  __asm { FCVT            H0, S15 }

  v30[0] = _H0;
  __asm { FCVT            H0, S14 }

  v30[1] = _H0;
  __asm
  {
    FCVT            H0, S13
    FCVT            H1, S12
  }

  v30[2] = _H0;
  v30[3] = _H1;
  v31 = 0;
  v32 = v14;
  __asm
  {
    FCVT            H0, S11
    FCVT            H1, S10
    FCVT            H2, S9
    FCVT            H3, S8
  }

  v27[0] = _H0;
  v27[1] = _H1;
  v27[2] = _H2;
  v27[3] = _H3;
  v28 = 0;
  v29 = v14;
  RB::DisplayList::Transform::add_color_from_to(self->_transform._terms._p, v30, v27);
}

- (void)addColorReplacementTo:(id)to colorSpace:(int)space
{
  _S8 = to.var3;
  _S9 = to.var2;
  _S10 = to.var1;
  _S11 = to.var0;
  v9 = rb_color_space(space);
  __asm
  {
    FCVT            H0, S11
    FCVT            H1, S10
    FCVT            H2, S9
  }

  v18[0] = _H0;
  v18[1] = _H1;
  __asm { FCVT            H0, S8 }

  v18[2] = _H2;
  v18[3] = _H0;
  v19 = 0;
  v20 = v9;
  RB::DisplayList::Transform::add_color_to(self->_transform._terms._p, v18);
}

- (void)applyToDisplayList:(id)list
{
  _rb_contents = [list _rb_contents];
  if (_rb_contents)
  {

    RB::DisplayList::Contents::apply_transform(_rb_contents, &self->_transform);
  }
}

- (id)copyApplyingToDisplayList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  _rb_contents = [list _rb_contents];
  if (_rb_contents)
  {
    RB::DisplayList::Builder::Builder(v15);
    RB::DisplayList::Builder::draw(v15, _rb_contents, v16, 1.0, 0, 0);
    RB::DisplayList::Builder::move_contents(v15, v6, &v12);
    v14 = v12;
    RB::DisplayList::Contents::apply_transform(v12, &self->_transform);
    RB::DisplayList::Builder::~Builder(v15);
  }

  if ([list _rb_xml_document])
  {
    operator new();
  }

  v7 = [RBMovedDisplayListContents alloc];
  v8 = v13;
  v13 = 0;
  v11 = v8;
  v9 = [(RBMovedDisplayListContents *)v7 initWithContents:&v11 xmlDocument:?];
  [(RBDisplayListTransform *)&v11 copyApplyingToDisplayList:&v14];
  return v9;
}

- (id)applyingToDisplayList:(id)list
{
  v3 = [(RBDisplayListTransform *)self copyApplyingToDisplayList:list];

  return v3;
}

- (uint64_t)copyApplyingToDisplayList:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](a1, 0);
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](a2, 0);
  result = *a3;
  if (*a3)
  {
    result = OUTLINED_FUNCTION_0_2(result);
    if (v6)
    {
      OUTLINED_FUNCTION_0();
      return (*(v7 + 8))();
    }
  }

  return result;
}

@end