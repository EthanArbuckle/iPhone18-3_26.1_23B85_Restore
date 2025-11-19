@interface IPARectArray
+ (id)rectArray;
+ (id)rectArrayWithRect:(CGRect)a3;
- (CGRect)rectAtIndex:(unint64_t)a3;
- (IPARectArray)init;
- (IPARectArray)initWithRect:(CGRect)a3;
- (IPARectArray)initWithRectArray:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)enumerateRects:(id)a3;
@end

@implementation IPARectArray

- (void)enumerateRects:(id)a3
{
  v6 = a3;
  imp = self->_imp;
  v5 = *imp;
  if (*imp != imp[1])
  {
    do
    {
      v6[2](*v5, v5[1], v5[2], v5[3]);
      v5 += 4;
    }

    while (v5 != *(self->_imp + 1));
  }
}

- (CGRect)rectAtIndex:(unint64_t)a3
{
  v3 = *self->_imp;
  if (a3 >= ((*(self->_imp + 1) - v3) >> 5))
  {
    std::vector<PA::Rect>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = (v3 + 32 * a3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [IPAMutableRectArray allocWithZone:a3];

  return [(IPARectArray *)v4 initWithRectArray:self];
}

+ (id)rectArrayWithRect:(CGRect)a3
{
  v3 = [[a1 alloc] initWithRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return v3;
}

+ (id)rectArray
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__IPARectArray_description__block_invoke;
  v11[3] = &unk_279A263C8;
  v4 = v3;
  v12 = v4;
  [(IPARectArray *)self enumerateRects:v11];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(IPARectArray *)self count];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@:%p %lu rects: %@>", v6, self, v7, v8];

  return v9;
}

void __27__IPARectArray_description__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = NSStringFromRect(*&a2);
  [v5 addObject:?];
}

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {
    v4 = *imp;
    if (*imp)
    {
      imp[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F8B8D30](imp, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = IPARectArray;
  [(IPARectArray *)&v5 dealloc];
}

- (IPARectArray)initWithRectArray:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6.receiver = self;
    v6.super_class = IPARectArray;
    if ([(IPARectArray *)&v6 init])
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

- (IPARectArray)initWithRect:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = IPARectArray;
  if ([(IPARectArray *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (IPARectArray)init
{
  v3.receiver = self;
  v3.super_class = IPARectArray;
  if ([(IPARectArray *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end