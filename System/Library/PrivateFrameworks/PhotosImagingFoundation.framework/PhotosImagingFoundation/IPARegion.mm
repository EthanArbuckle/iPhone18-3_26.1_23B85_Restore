@interface IPARegion
+ (id)region;
+ (id)regionWithRect:(CGRect)rect;
+ (id)regionWithRectArray:(id)array;
+ (id)regionWithRegion:(id)region;
- (BOOL)includesRect:(CGRect)rect;
- (BOOL)intersectsRect:(CGRect)rect;
- (BOOL)intersectsRegion:(id)region;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegion:(id)region;
- (CGRect)bounds;
- (IPARegion)init;
- (IPARegion)initWithRect:(CGRect)rect;
- (IPARegion)initWithRectArray:(id)array;
- (IPARegion)initWithRegion:(id)region;
- (double)area;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)regionByAddingRect:(CGRect)rect;
- (id)regionByAddingRectArray:(id)array;
- (id)regionByAddingRegion:(id)region;
- (id)regionByApplyingAffineTransform:(CGAffineTransform *)transform;
- (id)regionByApplyingOrientation:(int64_t)orientation imageSize:(CGSize)size;
- (id)regionByClippingToRect:(CGRect)rect;
- (id)regionByClippingToRectArray:(id)array;
- (id)regionByClippingToRegion:(id)region;
- (id)regionByExcludingRect:(CGRect)rect;
- (id)regionByExcludingRegion:(id)region;
- (id)regionByFlippingInRect:(CGRect)rect;
- (id)regionByGrowingBy:(CGPoint)by;
- (id)regionByGrowingBy:(CGPoint)by inRect:(CGRect)rect;
- (id)regionByRemovingRect:(CGRect)rect;
- (id)regionByRemovingRectArray:(id)array;
- (id)regionByRemovingRegion:(id)region;
- (id)regionByRoundingDown;
- (id)regionByRoundingUp;
- (id)regionByScalingBy:(CGPoint)by;
- (id)regionByShrinkingBy:(CGPoint)by;
- (id)regionByShrinkingBy:(CGPoint)by inRect:(CGRect)rect;
- (id)regionByTranslatingBy:(CGPoint)by;
- (unint64_t)hash;
- (void)dealloc;
- (void)enumerateRects:(id)rects;
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

- (BOOL)includesRect:(CGRect)rect
{
  imp = self->_imp;
  rectCopy = rect;
  PA::Region::Region(v6, &rectCopy);
  LOBYTE(imp) = PA::Region::Includes(imp, v6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v6);
  return imp;
}

- (BOOL)intersectsRegion:(id)region
{
  if (region)
  {
    return PA::Region::Intersects(*(self->_imp + 2), *(region + 1));
  }

  else
  {
    return 0;
  }
}

- (BOOL)intersectsRect:(CGRect)rect
{
  imp = self->_imp;
  rectCopy = rect;
  PA::Region::Region(v6, &rectCopy);
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

- (void)enumerateRects:(id)rects
{
  for (i = *(self->_imp + 2); i; i = *i)
  {
    (*(rects + 2))(rects, a2, i[2], i[3], i[4], i[5]);
  }
}

- (BOOL)isEqualToRegion:(id)region
{
  if (!region)
  {
    return 0;
  }

  imp = self->_imp;
  v4 = *(region + 1);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToRegion:self];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [IPAMutableRegion allocWithZone:zone];

  return [(IPARegion *)v4 initWithRegion:self];
}

+ (id)regionWithRegion:(id)region
{
  regionCopy = region;
  v5 = [[self alloc] initWithRegion:regionCopy];

  return v5;
}

+ (id)regionWithRectArray:(id)array
{
  arrayCopy = array;
  v5 = [[self alloc] initWithRectArray:arrayCopy];

  return v5;
}

+ (id)regionWithRect:(CGRect)rect
{
  v3 = [[self alloc] initWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

+ (id)region
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__IPARegion_description__block_invoke;
  v11[3] = &unk_279A263C8;
  v4 = array;
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

- (IPARegion)initWithRectArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
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

- (IPARegion)initWithRegion:(id)region
{
  regionCopy = region;
  if (regionCopy)
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

- (IPARegion)initWithRect:(CGRect)rect
{
  if (CGRectIsInfinite(rect))
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

- (id)regionByFlippingInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 flipInRect:{x, y, width, height}];

  return v7;
}

- (id)regionByApplyingAffineTransform:(CGAffineTransform *)transform
{
  v4 = [(IPARegion *)self mutableCopy];
  v5 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v5;
  v7[2] = *&transform->tx;
  [v4 applyAffineTransform:v7];

  return v4;
}

- (id)regionByApplyingOrientation:(int64_t)orientation imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 applyOrientation:orientation imageSize:{width, height}];

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

- (id)regionByShrinkingBy:(CGPoint)by inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = by.y;
  v9 = by.x;
  v10 = [(IPARegion *)self mutableCopy];
  [v10 shrinkBy:v9 inRect:{v8, x, y, width, height}];

  return v10;
}

- (id)regionByShrinkingBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 shrinkBy:{x, y}];

  return v5;
}

- (id)regionByGrowingBy:(CGPoint)by inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = by.y;
  v9 = by.x;
  v10 = [(IPARegion *)self mutableCopy];
  [v10 growBy:v9 inRect:{v8, x, y, width, height}];

  return v10;
}

- (id)regionByGrowingBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 growBy:{x, y}];

  return v5;
}

- (id)regionByTranslatingBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 translateBy:{x, y}];

  return v5;
}

- (id)regionByScalingBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 scaleBy:{x, y}];

  return v5;
}

- (id)regionByExcludingRegion:(id)region
{
  regionCopy = region;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 diffWithRegion:regionCopy];

  return v5;
}

- (id)regionByExcludingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 diffWithRect:{x, y, width, height}];

  return v7;
}

- (id)regionByClippingToRectArray:(id)array
{
  arrayCopy = array;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 clipToRectArray:arrayCopy];

  return v5;
}

- (id)regionByClippingToRegion:(id)region
{
  regionCopy = region;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 clipToRegion:regionCopy];

  return v5;
}

- (id)regionByClippingToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 clipToRect:{x, y, width, height}];

  return v7;
}

- (id)regionByRemovingRectArray:(id)array
{
  arrayCopy = array;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 removeRectArray:arrayCopy];

  return v5;
}

- (id)regionByRemovingRegion:(id)region
{
  regionCopy = region;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 removeRegion:regionCopy];

  return v5;
}

- (id)regionByRemovingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 removeRect:{x, y, width, height}];

  return v7;
}

- (id)regionByAddingRectArray:(id)array
{
  arrayCopy = array;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 addRectArray:arrayCopy];

  return v5;
}

- (id)regionByAddingRegion:(id)region
{
  regionCopy = region;
  v5 = [(IPARegion *)self mutableCopy];
  [v5 addRegion:regionCopy];

  return v5;
}

- (id)regionByAddingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(IPARegion *)self mutableCopy];
  [v7 addRect:{x, y, width, height}];

  return v7;
}

@end