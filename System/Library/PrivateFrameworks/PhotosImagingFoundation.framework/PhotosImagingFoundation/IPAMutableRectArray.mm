@interface IPAMutableRectArray
- (id)copyWithZone:(_NSZone *)zone;
- (void)addRect:(CGRect)rect;
- (void)insertRect:(CGRect)rect atIndex:(unint64_t)index;
- (void)removeRectAtIndex:(unint64_t)index;
- (void)setRectArray:(id)array;
@end

@implementation IPAMutableRectArray

- (void)removeRectAtIndex:(unint64_t)index
{
  imp = self->super._imp;
  v4 = 32 * index;
  v5 = imp[1];
  v6 = *imp + v4;
  v7 = v5 - (v6 + 32);
  if (v5 != v6 + 32)
  {
    memmove((*imp + v4), (v6 + 32), v5 - (v6 + 32));
  }

  imp[1] = v6 + v7;
}

- (void)insertRect:(CGRect)rect atIndex:(unint64_t)index
{
  imp = self->super._imp;
  *&v29 = rect.origin.x;
  *(&v29 + 1) = *&rect.origin.y;
  *&v30 = rect.size.width;
  *(&v30 + 1) = *&rect.size.height;
  v5 = 32 * index;
  v7 = *imp;
  v6 = imp[1];
  v8 = (v5 + *imp);
  v9 = imp[2];
  if (v6 >= v9)
  {
    v13 = ((v6 - v7) >> 5) + 1;
    if (v13 >> 59)
    {
      std::vector<PA::Rect>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v7;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PA::Rect>>(v15);
    }

    v17 = (32 * index);
    v18 = v17;
    if (!index)
    {
      if (!v5)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PA::Rect>>(1uLL);
      }

      v18 = 32 * index;
    }

    v22 = v30;
    *v17 = v29;
    *(32 * index + 0x10) = v22;
    v23 = v18 + 32;
    memcpy((v18 + 32), v8, imp[1] - v8);
    v24 = *imp;
    v28 = (v23 + imp[1] - v8);
    imp[1] = v8;
    v25 = v8 - v24;
    v26 = v17 - (v8 - v24);
    memcpy(v26, v24, v25);
    v27 = *imp;
    *imp = v26;
    *(imp + 1) = v28;
    if (v27)
    {

      operator delete(v27);
    }
  }

  else if (v8 == v6)
  {
    v16 = v30;
    *v6 = v29;
    *(v6 + 1) = v16;
    imp[1] = v6 + 32;
  }

  else
  {
    v10 = v8 + 32;
    if (v6 < 0x20)
    {
      v11 = imp[1];
    }

    else
    {
      v11 = (v6 + 32);
      v12 = *(v6 - 1);
      *v6 = *(v6 - 2);
      *(v6 + 1) = v12;
    }

    imp[1] = v11;
    if (v6 != v10)
    {
      memmove(v8 + 32, v8, v6 - v10);
      v11 = imp[1];
    }

    v19 = v11 <= &v29 || v8 > &v29;
    v20 = 32;
    if (v19)
    {
      v20 = 0;
    }

    v21 = *(&v29 + v20 + 16);
    *v8 = *(&v29 + v20);
    *(v8 + 1) = v21;
  }
}

- (void)addRect:(CGRect)rect
{
  imp = self->super._imp;
  *&v4 = rect.origin.x;
  *(&v4 + 1) = *&rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  std::vector<PA::Rect>::push_back[abi:ne200100](imp, &v4);
}

- (void)setRectArray:(id)array
{
  arrayCopy = array;
  v19 = arrayCopy;
  if (arrayCopy)
  {
    v5 = arrayCopy[1];
    imp = self->super._imp;
    if (imp != v5)
    {
      v7 = *v5;
      v8 = v5[1];
      v9 = v8 - *v5;
      v10 = imp[2];
      v11 = *imp;
      if (v10 - *imp < v9)
      {
        v12 = v9 >> 5;
        if (v11)
        {
          imp[1] = v11;
          operator delete(v11);
          v10 = 0;
          *imp = 0;
          imp[1] = 0;
          imp[2] = 0;
        }

        if (!(v12 >> 59))
        {
          v13 = v10 >> 4;
          if (v10 >> 4 <= v12)
          {
            v13 = v9 >> 5;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFE0)
          {
            v14 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          std::vector<PA::Rect>::__vallocate[abi:ne200100](imp, v14);
        }

        std::vector<PA::Rect>::__throw_length_error[abi:ne200100]();
      }

      v15 = imp[1];
      v16 = v15 - v11;
      if (v15 - v11 >= v9)
      {
        if (v8 != v7)
        {
          memmove(v11, v7, v9);
        }

        v18 = &v11[v9];
      }

      else
      {
        v17 = &v7[v16];
        if (v15 != v11)
        {
          memmove(*imp, v7, v16);
          v15 = imp[1];
        }

        if (v8 != v17)
        {
          memmove(v15, v17, v8 - v17);
        }

        v18 = &v15[v8 - v17];
      }

      imp[1] = v18;
    }
  }

  else
  {
    _PFAssertFailHandler();
    __break(1u);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IPARectArray allocWithZone:zone];

  return [(IPARectArray *)v4 initWithRectArray:self];
}

@end