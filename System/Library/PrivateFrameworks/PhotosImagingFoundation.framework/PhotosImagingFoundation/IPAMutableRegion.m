@interface IPAMutableRegion
- (id)copyWithZone:(_NSZone *)a3;
- (void)addRect:(CGRect)a3;
- (void)addRectArray:(id)a3;
- (void)addRegion:(id)a3;
- (void)applyAffineTransform:(CGAffineTransform *)a3;
- (void)applyOrientation:(int64_t)a3 imageSize:(CGSize)a4;
- (void)clipToRect:(CGRect)a3;
- (void)clipToRectArray:(id)a3;
- (void)clipToRegion:(id)a3;
- (void)diffWithRect:(CGRect)a3;
- (void)diffWithRegion:(id)a3;
- (void)flipInRect:(CGRect)a3;
- (void)growBy:(CGPoint)a3;
- (void)growBy:(CGPoint)a3 inRect:(CGRect)a4;
- (void)removeRect:(CGRect)a3;
- (void)removeRectArray:(id)a3;
- (void)removeRegion:(id)a3;
- (void)roundDown;
- (void)scaleBy:(CGPoint)a3;
- (void)setRegion:(id)a3;
- (void)shrinkBy:(CGPoint)a3;
- (void)shrinkBy:(CGPoint)a3 inRect:(CGRect)a4;
- (void)translateBy:(CGPoint)a3;
@end

@implementation IPAMutableRegion

- (void)applyAffineTransform:(CGAffineTransform *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  imp = self->super._imp;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  for (i = *(imp + 2); i; i = *i)
  {
    v12 = *(i + 2);
    v6 = *&a3->c;
    *&v10.a = *&a3->a;
    *&v10.c = v6;
    *&v10.tx = *&a3->tx;
    v13 = CGRectApplyAffineTransform(v12, &v10);
    v10.a = v13.origin.x;
    v10.b = v13.origin.y;
    v10.c = v13.size.width;
    v10.d = v13.size.height;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v7, &v10);
  }

  if (&v7 != imp)
  {
    *(imp + 8) = v9;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, v8);
  }

  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v7);
}

- (void)applyOrientation:(int64_t)a3 imageSize:(CGSize)a4
{
  width = a4.width;
  v15[5] = *MEMORY[0x277D85DE8];
  imp = self->super._imp;
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v6 = *(imp + 2);
  if (v6)
  {
    height = a4.height;
    do
    {
      v15[0] = IPAOrientationTransformImageRect(a3, width, height, v6[2], v6[3], v6[4], v6[5]);
      v15[1] = v9;
      v15[2] = v10;
      v15[3] = v11;
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v12, v15);
      v6 = *v6;
    }

    while (v6);
  }

  if (&v12 != imp)
  {
    *(imp + 8) = v14;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, v13);
  }

  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v12);
}

- (void)roundDown
{
  imp = self->super._imp;
  v3.f64[0] = PA::Region::GetBounds(imp[2]);
  v3.f64[1] = v4;
  __asm { FMOV            V1.2D, #-1.0 }

  v10 = vaddq_f64(v3, _Q1);
  v12.f64[1] = v11;
  v13 = vaddq_f64(v10, vsubq_f64(vaddq_f64(v3, v12), v10));
  __asm { FMOV            V2.2D, #1.0 }

  v18[0] = v10;
  v18[1] = vsubq_f64(vaddq_f64(v13, _Q2), v10);
  PA::Region::Region(v16, v18);
  PA::Region::Break(imp[2], v16);
  PA::Region::MergeVertically(v16);
  PA::Region::RoundUp(v16);
  PA::Region::Region(v15, v18);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__move_assign(imp, v15);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v15);
  PA::Region::Break(v17, imp);
  PA::Region::MergeVertically(imp);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v16);
}

- (void)shrinkBy:(CGPoint)a3 inRect:(CGRect)a4
{
  if (a3.x < 0.0 || a3.y < 0.0)
  {
    v5 = _PFAssertFailHandler();
    PA::Region::ShrinkInRect(v5, v7, v8, v6);
  }

  else
  {
    imp = self->super._imp;
    v9 = a4;
    PA::Region::ShrinkInRect(imp, a3.x, a3.y, &v9);
  }
}

- (void)shrinkBy:(CGPoint)a3
{
  if (a3.x < 0.0 || (y = a3.y, a3.y < 0.0))
  {
    v10 = _PFAssertFailHandler();
    [(IPAMutableRegion *)v10 growBy:v11 inRect:v13, v14];
  }

  else
  {
    x = a3.x;
    imp = self->super._imp;
    Bounds = PA::Region::GetBounds(imp[2]);
    v12[0] = Bounds - x;
    v12[1] = v9 - y;
    v12[2] = v12[0] + Bounds + v7 - (Bounds - x) + x - v12[0];
    v12[3] = v9 - y + v9 + v8 - (v9 - y) + y - (v9 - y);
    PA::Region::ShrinkInRect(imp, x, y, v12);
  }
}

- (void)growBy:(CGPoint)a3 inRect:(CGRect)a4
{
  if (a3.x < 0.0 || a3.y < 0.0)
  {
    v5 = _PFAssertFailHandler();
    PA::Region::Clip(v5, v6);
  }

  else
  {
    imp = self->super._imp;
    v7 = a4;
    PA::Region::Grow(imp, a3.x, a3.y);
    PA::Region::Clip(imp, &v7);
  }
}

- (void)growBy:(CGPoint)a3
{
  if (a3.x < 0.0 || a3.y < 0.0)
  {
    v5 = _PFAssertFailHandler();
    [(IPAMutableRegion *)v5 setRegion:v6, v7];
  }

  else
  {
    imp = self->super._imp;

    PA::Region::Grow(imp, a3.x, a3.y);
  }
}

- (void)setRegion:(id)a3
{
  v6 = a3;
  v4 = v6[1];
  imp = self->super._imp;
  if (imp != v4)
  {
    imp[8] = *(v4 + 32);
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, *(v4 + 16));
  }
}

- (void)scaleBy:(CGPoint)a3
{
  v17 = *MEMORY[0x277D85DE8];
  imp = self->super._imp;
  if (a3.x == 0.0 || a3.y == 0.0)
  {

    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::clear(imp);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    v4 = *(imp + 2);
    if (v4)
    {
      y = a3.y;
      do
      {
        v6 = v4[2];
        v14 = v4[1];
        v15 = v6;
        v16 = v4[3].f64[0];
        v7 = vmulq_f64(v6, a3);
        v8 = vmulq_f64(v14, a3);
        v6.f64[0] = v8.f64[1];
        v9 = v7.f64[1];
        v19 = CGRectStandardize(*(&v6 - 8));
        v14.f64[0] = v19.origin.x;
        v14.f64[1] = v19.origin.y;
        v15.f64[0] = v19.size.width;
        v15.f64[1] = v19.size.height;
        std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect const&>(&v11, &v14);
        v4 = *&v4->f64[0];
      }

      while (v4);
    }

    if (&v11 != imp)
    {
      *(imp + 8) = v13;
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, v12);
    }

    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v11);
  }
}

- (void)translateBy:(CGPoint)a3
{
  v13 = *MEMORY[0x277D85DE8];
  imp = self->super._imp;
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  v4 = *(imp + 2);
  if (v4)
  {
    y = a3.y;
    do
    {
      v6 = v4[2];
      v11[0] = v4[1];
      v11[1] = v6;
      v12 = v4[3].f64[0];
      v11[0] = vaddq_f64(v11[0], a3);
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect const&>(&v8, v11);
      v4 = *&v4->f64[0];
    }

    while (v4);
  }

  if (&v8 != imp)
  {
    *(imp + 8) = v10;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, v9);
  }

  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v8);
}

- (void)flipInRect:(CGRect)a3
{
  x = a3.origin.x;
  v13 = *MEMORY[0x277D85DE8];
  imp = self->super._imp;
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  v5 = *(imp + 2);
  if (v5)
  {
    v6 = a3.origin.y + a3.size.height;
    do
    {
      v7 = *(v5 + 2);
      v11[0] = *(v5 + 1);
      v11[1] = v7;
      v12 = v5[6];
      *v11 = *v11 - x;
      *(v11 + 1) = v6 - (*(v11 + 1) + *(&v7 + 1));
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect const&>(&v8, v11);
      v5 = *v5;
    }

    while (v5);
  }

  if (&v8 != imp)
  {
    *(imp + 8) = v10;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(imp, v9);
  }

  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v8);
}

- (void)diffWithRegion:(id)a3
{
  if (a3)
  {
    PA::Region::Diff(self->super._imp, *(a3 + 1));
  }
}

- (void)diffWithRect:(CGRect)a3
{
  imp = self->super._imp;
  v4 = a3;
  PA::Region::Region(v5, &v4);
  PA::Region::Diff(imp, v5);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v5);
}

- (void)clipToRectArray:(id)a3
{
  v4 = [IPARegion regionWithRectArray:a3];
  [(IPAMutableRegion *)self clipToRegion:?];
}

- (void)clipToRegion:(id)a3
{
  if (a3)
  {
    PA::Region::Clip(self->super._imp, *(a3 + 1));
  }
}

- (void)clipToRect:(CGRect)a3
{
  imp = self->super._imp;
  v4 = a3;
  PA::Region::Clip(imp, &v4);
}

- (void)removeRectArray:(id)a3
{
  v4 = [IPARegion regionWithRectArray:a3];
  [(IPAMutableRegion *)self removeRegion:?];
}

- (void)addRectArray:(id)a3
{
  v4 = [IPARegion regionWithRectArray:a3];
  [(IPAMutableRegion *)self addRegion:?];
}

- (void)removeRegion:(id)a3
{
  if (a3)
  {
    imp = self->super._imp;
    PA::Region::Break(*(*(a3 + 1) + 16), imp);

    PA::Region::MergeVertically(imp);
  }
}

- (void)addRegion:(id)a3
{
  if (a3)
  {
    PA::Region::Add(self->super._imp, *(a3 + 1));
  }
}

- (void)removeRect:(CGRect)a3
{
  imp = self->super._imp;
  v4 = a3;
  PA::Region::Region(v5, &v4);
  PA::Region::Break(v6, imp);
  PA::Region::MergeVertically(imp);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v5);
}

- (void)addRect:(CGRect)a3
{
  imp = self->super._imp;
  v4 = a3;
  PA::Region::Add(imp, &v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IPARegion allocWithZone:a3];

  return [(IPARegion *)v4 initWithRegion:self];
}

@end