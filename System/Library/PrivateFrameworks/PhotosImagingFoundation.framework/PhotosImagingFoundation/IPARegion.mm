@interface IPARegion
+ (id)region;
+ (id)regionWithRect:(CGRect)a3;
+ (id)regionWithRectArray:(id)a3;
+ (id)regionWithRegion:(id)a3;
- (BOOL)includesRect:(CGRect)a3;
- (BOOL)intersectsRect:(CGRect)a3;
- (BOOL)intersectsRegion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegion:(id)a3;
- (CGRect)bounds;
- (IPARegion)init;
- (IPARegion)initWithRect:(CGRect)a3;
- (IPARegion)initWithRectArray:(id)a3;
- (IPARegion)initWithRegion:(id)a3;
- (double)area;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)regionByAddingRect:(CGRect)a3;
- (id)regionByAddingRectArray:(id)a3;
- (id)regionByAddingRegion:(id)a3;
- (id)regionByApplyingAffineTransform:(CGAffineTransform *)a3;
- (id)regionByApplyingOrientation:(int64_t)a3 imageSize:(CGSize)a4;
- (id)regionByClippingToRect:(CGRect)a3;
- (id)regionByClippingToRectArray:(id)a3;
- (id)regionByClippingToRegion:(id)a3;
- (id)regionByExcludingRect:(CGRect)a3;
- (id)regionByExcludingRegion:(id)a3;
- (id)regionByFlippingInRect:(CGRect)a3;
- (id)regionByGrowingBy:(CGPoint)a3;
- (id)regionByGrowingBy:(CGPoint)a3 inRect:(CGRect)a4;
- (id)regionByRemovingRect:(CGRect)a3;
- (id)regionByRemovingRectArray:(id)a3;
- (id)regionByRemovingRegion:(id)a3;
- (id)regionByRoundingDown;
- (id)regionByRoundingUp;
- (id)regionByScalingBy:(CGPoint)a3;
- (id)regionByShrinkingBy:(CGPoint)a3;
- (id)regionByShrinkingBy:(CGPoint)a3 inRect:(CGRect)a4;
- (id)regionByTranslatingBy:(CGPoint)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)enumerateRects:(id)a3;
@end

@implementation IPARegion

- (double)area
{
  v2 = *(self->_imp + 2);
  if (!v2)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    result = result + v2[4] * v2[5];
    v2 = *v2;
  }

  while (v2);
  return result;
}

- (BOOL)includesRect:(CGRect)a3
{
  imp = self->_imp;
  v5 = a3;
  PA::Region::Region(v6, &v5);
  LOBYTE(imp) = PA::Region::Includes(imp, v6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v6);
  return imp;
}

- (BOOL)intersectsRegion:(id)a3
{
  if (a3)
  {
    return PA::Region::Intersects(*(self->_imp + 2), *(a3 + 1));
  }

  else
  {
    return 0;
  }
}

- (BOOL)intersectsRect:(CGRect)a3
{
  imp = self->_imp;
  v5 = a3;
  PA::Region::Region(v6, &v5);
  LOBYTE(imp) = PA::Region::Intersects(imp[2], v6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v6);
  return imp;
}

- (CGRect)bounds
{
  Bounds = PA::Region::GetBounds(*(self->_imp + 2));
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = Bounds;
  return result;
}

- (void)enumerateRects:(id)a3
{
  for (i = *(self->_imp + 2); i; i = *i)
  {
    (*(a3 + 2))(a3, a2, i[2], i[3], i[4], i[5]);
  }
}

- (BOOL)isEqualToRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  imp = self->_imp;
  v4 = *(a3 + 1);
  if (imp[3] == v4[3])
  {
    v5 = imp + 2;
    while (1)
    {
      v5 = *v5;
      result = v5 == 0;
      if (!v5)
      {
        return result;
      }

      v7 = v4[1];
      if (!*&v7)
      {
        return 0;
      }

      v8 = (v5[2] + 4095) & 0xFFFFFFFF00000000 ^ ((v5[3] + 4095) >> 32 << 24) ^ ((v5[4] + 4095) >> 32 << 8) ^ ((v5[5] + 4095) >> 32);
      v9 = vcnt_s8(v7);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = (v5[2] + 4095) & 0xFFFFFFFF00000000 ^ ((v5[3] + 4095) >> 32 << 24) ^ ((v5[4] + 4095) >> 32 << 8) ^ ((v5[5] + 4095) >> 32);
        if (v8 >= *&v7)
        {
          v11 = v8 % *&v7;
        }
      }

      else
      {
        v11 = v8 & (*&v7 - 1);
      }

      v12 = *(*v4 + 8 * v11);
      if (!v12)
      {
        return 0;
      }

      v13 = *v12;
      if (!*v12)
      {
        return 0;
      }

      while (1)
      {
        v14 = v13[1];
        if (v8 == v14)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v11)
        {
          return 0;
        }

LABEL_20:
        v13 = *v13;
        if (!v13)
        {
          return 0;
        }
      }

      if (!PA::RectEqualTo::operator()(v13 + 2, v5 + 2))
      {
        goto LABEL_20;
      }

      v15 = PA::RectEqualTo::operator()(v5 + 2, v13 + 2);
      result = 0;
      if (!v15)
      {
        return result;
      }
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToRegion:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = *(self->_imp + 2);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = vdupq_n_s64(0xFFFuLL);
  do
  {
    v5 = vandq_s8(vshlq_u64(vaddq_s64(*(v2 + 3), v4), xmmword_25E5E03D0), xmmword_25E5E03E0);
    result ^= (v2[2] + 4095) & 0xFFFFFFFF00000000 ^ v5.i64[0] ^ v5.i64[1] ^ ((v2[5] + 4095) >> 32);
    v2 = *v2;
  }

  while (v2);
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [IPAMutableRegion allocWithZone:a3];

  return [(IPARegion *)v4 initWithRegion:self];
}

+ (id)regionWithRegion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRegion:v4];

  return v5;
}

+ (id)regionWithRectArray:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRectArray:v4];

  return v5;
}

+ (id)regionWithRect:(CGRect)a3
{
  v3 = [[a1 alloc] initWithRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return v3;
}

+ (id)region
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__IPARegion_description__block_invoke;
  v11[3] = &unk_279A263C8;
  v4 = v3;
  v12 = v4;
  [(IPARegion *)self enumerateRects:v11];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(IPARegion *)self count];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@:%p %lu rects: %@>", v6, self, v7, v8];

  return v9;
}

void __24__IPARegion_description__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%g, %g}, {%g, %g}}", *&a2, *&a3, *&a4, *&a5];
  [*(a1 + 32) addObject:?];
}

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {
    v4 = std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(imp);
    MEMORY[0x25F8B8D30](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = IPARegion;
  [(IPARegion *)&v5 dealloc];
}

- (IPARegion)initWithRectArray:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6.receiver = self;
    v6.super_class = IPARegion;
    if ([(IPARegion *)&v6 init])
    {
      operator new();
    }

    return 0;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

uint64_t __31__IPARegion_initWithRectArray___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  return PA::Region::Add(v5, v7);
}

- (IPARegion)initWithRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6.receiver = self;
    v6.super_class = IPARegion;
    if ([(IPARegion *)&v6 init])
    {
      operator new();
    }

    return 0;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

- (IPARegion)initWithRect:(CGRect)a3
{
  if (CGRectIsInfinite(a3))
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = IPARegion;
    if ([(IPARegion *)&v5 init])
    {
      operator new();
    }

    return 0;
  }

  return result;
}

- (IPARegion)init
{
  v3.receiver = self;
  v3.super_class = IPARegion;
  if ([(IPARegion *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id)regionByFlippingInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 flipInRect:{x, y, width, height}];

  return v7;
}

- (id)regionByApplyingAffineTransform:(CGAffineTransform *)a3
{
  v4 = [(IPARegion *)self mutableCopy];
  v5 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v5;
  v7[2] = *&a3->tx;
  [v4 applyAffineTransform:v7];

  return v4;
}

- (id)regionByApplyingOrientation:(int64_t)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 applyOrientation:a3 imageSize:{width, height}];

  return v7;
}

- (id)regionByRoundingDown
{
  v2 = [(IPARegion *)self mutableCopy];
  [v2 roundDown];

  return v2;
}

- (id)regionByRoundingUp
{
  v2 = [(IPARegion *)self mutableCopy];
  [v2 roundUp];

  return v2;
}

- (id)regionByShrinkingBy:(CGPoint)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = [(IPARegion *)self mutableCopy];
  [v10 shrinkBy:v9 inRect:{v8, x, y, width, height}];

  return v10;
}

- (id)regionByShrinkingBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 shrinkBy:{x, y}];

  return v5;
}

- (id)regionByGrowingBy:(CGPoint)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = [(IPARegion *)self mutableCopy];
  [v10 growBy:v9 inRect:{v8, x, y, width, height}];

  return v10;
}

- (id)regionByGrowingBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 growBy:{x, y}];

  return v5;
}

- (id)regionByTranslatingBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 translateBy:{x, y}];

  return v5;
}

- (id)regionByScalingBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 scaleBy:{x, y}];

  return v5;
}

- (id)regionByExcludingRegion:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 diffWithRegion:v4];

  return v5;
}

- (id)regionByExcludingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 diffWithRect:{x, y, width, height}];

  return v7;
}

- (id)regionByClippingToRectArray:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 clipToRectArray:v4];

  return v5;
}

- (id)regionByClippingToRegion:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 clipToRegion:v4];

  return v5;
}

- (id)regionByClippingToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 clipToRect:{x, y, width, height}];

  return v7;
}

- (id)regionByRemovingRectArray:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 removeRectArray:v4];

  return v5;
}

- (id)regionByRemovingRegion:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 removeRegion:v4];

  return v5;
}

- (id)regionByRemovingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 removeRect:{x, y, width, height}];

  return v7;
}

- (id)regionByAddingRectArray:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 addRectArray:v4];

  return v5;
}

- (id)regionByAddingRegion:(id)a3
{
  v4 = a3;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 addRegion:v4];

  return v5;
}

- (id)regionByAddingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 addRect:{x, y, width, height}];

  return v7;
}

@end