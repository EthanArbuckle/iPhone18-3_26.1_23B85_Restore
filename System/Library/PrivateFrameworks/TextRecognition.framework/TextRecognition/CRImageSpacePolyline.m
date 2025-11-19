@interface CRImageSpacePolyline
- (BOOL)isEqual:(id)a3;
- (CGPath)path;
- (CGRect)boundingRect;
- (CGSize)estimatedLineSizeForPairedPointPolygon;
- (CRImageSpacePolyline)initWithCRCodableDataRepresentation:(id)a3;
- (CRImageSpacePolyline)initWithCoder:(id)a3;
- (CRImageSpacePolyline)initWithPointValues:(id)a3;
- (CRImageSpacePolyline)initWithPoints:(CGPoint *)a3 count:(unint64_t)a4;
- (CRImageSpacePolyline)initWithPolyline:(id)a3;
- (NSArray)pointValues;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)crCodableDataRepresentation;
- (id)initWithPoints:(void *)a1;
- (id)polylineByAppendingPoint:(CGPoint)a3;
- (id)polylineByAppendingPolyline:(id)a3;
- (id)rotated180;
- (id)simplified;
- (void)appendPoint:(double)a3;
- (void)appendPolyline:(uint64_t)a1;
- (void)createPathWithTransformer:(void *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumeratePointsWithTransformer:(void *)a3 block:;
@end

@implementation CRImageSpacePolyline

- (CRImageSpacePolyline)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CRPolylineData"];
  v6 = uncompressDataOfSize(v5, [v4 decodeIntegerForKey:@"CRPolylineUncompressedDataSize"]);
  v7 = [(CRImageSpacePolyline *)self initWithCRCodableDataRepresentation:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CRImageSpacePolyline *)self crCodableDataRepresentation];
  v5 = compressData(v4);
  [v6 encodeObject:v5 forKey:@"CRPolylineData"];
  [v6 encodeInteger:objc_msgSend(v4 forKey:{"length"), @"CRPolylineUncompressedDataSize"}];
}

- (id)initWithPoints:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = CRImageSpacePolyline;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    if (a2)
    {
      operator new();
    }

    operator new();
  }

  return v3;
}

- (CRImageSpacePolyline)initWithPolyline:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CRImageSpacePolyline *)self initWithPoints:v6];

  return v7;
}

- (CRImageSpacePolyline)initWithPointValues:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = &unk_1B4305E9E;
  std::vector<CGPoint>::vector[abi:ne200100](__p, [v4 count]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CRImageSpacePolyline_initWithPointValues___block_invoke;
  v7[3] = &unk_1E7BC2AF8;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = [(CRImageSpacePolyline *)self initWithPoints:?];
  _Block_object_dispose(&v8, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

void __44__CRImageSpacePolyline_initWithPointValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  [v8 pointValue];
  v5 = (*(*(*(a1 + 32) + 8) + 48) + 16 * a3);
  *v5 = v6;
  v5[1] = v7;
}

- (CRImageSpacePolyline)initWithPoints:(CGPoint *)a3 count:(unint64_t)a4
{
  v6 = [(CRImageSpacePolyline *)self init];
  v7 = v6;
  if (v6)
  {
    if (a4 > (*(v6->__points + 2) - *v6->__points) >> 4)
    {
      if (!(a4 >> 60))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(v6->__points, a4);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    for (; a4; --a4)
    {
      std::vector<CGPoint>::push_back[abi:ne200100](v7->__points, a3++);
    }
  }

  return v7;
}

- (id)polylineByAppendingPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRImageSpacePolyline *)self copy];
  [(CRImageSpacePolyline *)v5 appendPoint:y];

  return v5;
}

- (void)appendPoint:(double)a3
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (a1)
  {
    std::vector<CGPoint>::push_back[abi:ne200100](*(a1 + 8), &v5);
    src = 0;
    objc_copyCppObjectAtomic((a1 + 16), &src, __assign_helper_atomic_property_);
    if (src)
    {
      CFRelease(src);
    }
  }
}

- (id)polylineByAppendingPolyline:(id)a3
{
  v4 = a3;
  v5 = [(CRImageSpacePolyline *)self copy];
  [(CRImageSpacePolyline *)v5 appendPolyline:v4];

  return v5;
}

- (void)appendPolyline:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3[1];
    v7 = *v5;
    v6 = v5[1];
    v8 = v6 - v7;
    v9 = (v6 - v7) >> 4;
    if (v9 >= 1)
    {
      v10 = *(a1 + 8);
      v12 = *(v10 + 8);
      v11 = *(v10 + 16);
      if (v11 - v12 >= v8)
      {
        if (v7 != v6)
        {
          memmove(*(v10 + 8), v7, v6 - v7);
        }

        *(v10 + 8) = &v12[v8];
      }

      else
      {
        v13 = *v10;
        v14 = &v12[-*v10];
        v15 = v9 + (v14 >> 4);
        if (v15 >> 60)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - v13;
        v17 = (v11 - v13) >> 3;
        if (v17 > v15)
        {
          v15 = v17;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v15;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(*(a1 + 8), v18);
        }

        v19 = 16 * (v14 >> 4);
        v20 = (v19 + v8);
        v21 = v19;
        do
        {
          v22 = *v7;
          v7 += 16;
          *v21++ = v22;
          v8 -= 16;
        }

        while (v8);
        memcpy(v20, v12, *(v10 + 8) - v12);
        v23 = *v10;
        v24 = &v20[*(v10 + 8) - v12];
        *(v10 + 8) = v12;
        v25 = v12 - v23;
        v26 = (v19 - (v12 - v23));
        memcpy(v26, v23, v25);
        v27 = *v10;
        *v10 = v26;
        *(v10 + 8) = v24;
        *(v10 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }
    }

    src = 0;
    objc_copyCppObjectAtomic((a1 + 16), &src, __assign_helper_atomic_property_);
    if (src)
    {
      CFRelease(src);
    }
  }
}

- (void)dealloc
{
  if (self)
  {
    points = self->__points;
    if (points)
    {
      v4 = *points;
      if (*points)
      {
        points[1] = v4;
        operator delete(v4);
      }

      MEMORY[0x1B8C73EF0](points, 0x20C40960023A9);
      self->__points = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = CRImageSpacePolyline;
  [(CRImageSpacePolyline *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"Points: [\n"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CRImageSpacePolyline_description__block_invoke;
  v7[3] = &unk_1E7BC2B20;
  v4 = v3;
  v8 = v4;
  [(CRImageSpacePolyline *)self enumeratePoints:v7];
  [v4 appendString:@"]"];
  v5 = [MEMORY[0x1E696AEC0] stringWithString:v4];

  return v5;
}

void __35__CRImageSpacePolyline_description__block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = NSStringFromPoint(*&a2);
  [v3 appendFormat:@"%@\n", v4];
}

- (CGPath)path
{
  v2 = self;
  if (self)
  {
    objc_copyCppObjectAtomic(&dest, &self->__pathRef, __copy_helper_atomic_property_);
    if (dest)
    {
      CFRelease(dest);
    }

    else
    {
      [(CRImageSpacePolyline *)&cf createPathWithTransformer:v2, 0];
      objc_copyCppObjectAtomic(&v2->__pathRef, &cf, __assign_helper_atomic_property_);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    objc_copyCppObjectAtomic(&dest, &v2->__pathRef, __copy_helper_atomic_property_);
    v2 = dest;
    if (dest)
    {
      CFRelease(dest);
    }
  }

  return v2;
}

- (void)createPathWithTransformer:(void *)a3
{
  v5 = a3;
  if (a2)
  {
    Mutable = CGPathCreateMutable();
    v10 = Mutable;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = __50__CRImageSpacePolyline_createPathWithTransformer___block_invoke;
    v7[3] = &unk_1F2BAF630;
    v8 = v5;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    cf = Mutable;
    [a2 enumeratePoints:v7];
    *a1 = MEMORY[0x1B8C73450](Mutable);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void __50__CRImageSpacePolyline_createPathWithTransformer___block_invoke(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(a1 + 40);
  if (a2)
  {

    CGPathAddLineToPoint(v7, 0, a3, a4);
  }

  else
  {

    CGPathMoveToPoint(v7, 0, a3, a4);
  }
}

- (NSArray)pointValues
{
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CRImageSpacePolyline_pointValues__block_invoke;
  v7[3] = &unk_1E7BC2B20;
  v4 = v3;
  v8 = v4;
  [(CRImageSpacePolyline *)self enumeratePoints:v7];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v5;
}

void __35__CRImageSpacePolyline_pointValues__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696B098] valueWithPoint:?];
  [v1 addObject:?];
}

- (void)enumeratePointsWithTransformer:(void *)a3 block:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10 = *v9;
    if (*v9 != v9[1])
    {
      v11 = *v9;
      do
      {
        v12 = 0;
        v7.n128_u64[0] = *v11;
        v8.n128_u64[0] = v11[1];
        if (v5)
        {
          v5[2](v5, v7.n128_f64[0], v8.n128_f64[0]);
          v9 = *(a1 + 8);
        }

        v6[2](v6, (v10 - *v9) >> 4, &v12, v7, v8);
        if (v12)
        {
          break;
        }

        v9 = *(a1 + 8);
        v10 += 2;
        v11 += 2;
      }

      while (v11 != v9[1]);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CRImageSpacePolyline *)self pointCount];
      if (v6 == [(CRImageSpacePolyline *)v5 pointCount])
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v16 = 1;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __32__CRImageSpacePolyline_isEqual___block_invoke;
        v9[3] = &unk_1E7BC2B48;
        v11 = &v13;
        v12 = 0x3FE0000000000000;
        v10 = v5;
        [(CRImageSpacePolyline *)self enumeratePoints:v9];
        v7 = *(v14 + 24);

        _Block_object_dispose(&v13, 8);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t __32__CRImageSpacePolyline_isEqual___block_invoke(uint64_t result, unint64_t a2, _BYTE *a3, double a4, double a5)
{
  v5 = **(*(result + 32) + 8);
  if (a2 >= (*(*(*(result + 32) + 8) + 8) - v5) >> 4)
  {
    std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = (v5 + 16 * a2);
  v7 = *(result + 48);
  v8 = vabdd_f64(a5, v6[1]);
  if (vabdd_f64(a4, *v6) > v7 || v8 > v7)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (id)simplified
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4812000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = &unk_1B4305E9E;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CRImageSpacePolyline_simplified__block_invoke;
  v5[3] = &unk_1E7BC2B70;
  v5[4] = &v6;
  [(CRImageSpacePolyline *)self enumeratePoints:v5];
  v2 = [CRImageSpacePolyline alloc];
  v3 = [(CRImageSpacePolyline *)v2 initWithPoints:?];
  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v3;
}

double __34__CRImageSpacePolyline_simplified__block_invoke(uint64_t a1, uint64_t a2, double result, double a4)
{
  *&v12 = result;
  *(&v12 + 1) = a4;
  v4 = *(*(a1 + 32) + 8);
  if (!a2)
  {
LABEL_8:
    std::vector<CGPoint>::push_back[abi:ne200100](v4 + 48, &v12);
    return result;
  }

  v5 = *(v4 + 56);
  v6 = *(v5 - 16);
  v7 = *(v5 - 8);
  if (v6 != result || v7 != a4)
  {
    v9 = *(v4 + 48);
    v10 = v5 - v9;
    if (v10 >= 0x11)
    {
      v11 = v9 + v10;
      if ((a4 - v7) * (result - *(v11 - 32)) == (result - v6) * (a4 - *(v11 - 24)))
      {
        result = *&v12;
        *(v11 - 16) = v12;
        return result;
      }
    }

    goto LABEL_8;
  }

  return result;
}

- (id)rotated180
{
  if (([(CRImageSpacePolyline *)self pointCount]& 1) == 0 && self && (points = self->__points) != 0)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, *points, points[1], (points[1] - *points) >> 4);
    v4 = __p;
    v5 = [(CRImageSpacePolyline *)self pointCount];
    v6 = (8 * v5) & 0x7FFFFFFFFFFFFFF0;
    if (v6)
    {
      v7 = v4 + v6;
      v8 = v30;
      if (v4 + v6 != v30)
      {
        if (v6 == 16)
        {
          v32 = *v4;
          v9 = v30 - v7;
          memmove(v4, v7, v30 - v7);
          *(v4 + v9) = v32;
        }

        else if (v7 + 16 == v30)
        {
          v32 = *(v30 - 1);
          if (v30 - 16 != v4)
          {
            memmove(v4 + 1, v4, v30 - 16 - v4);
          }

          *v4 = v32;
        }

        else
        {
          v11 = v5 >> 1;
          if (v5 >> 1 == (v30 - v7) >> 4)
          {
            v12 = (v4 + 1);
            v13 = v7 + 16;
            do
            {
              v14 = *(v12 - 1);
              *(v12 - 1) = *(v13 - 1);
              *(v13 - 1) = v14;
              if (v12 == v7)
              {
                break;
              }

              v12 += 16;
              v15 = v13 == v8;
              v13 += 16;
            }

            while (!v15);
          }

          else
          {
            v16 = (v30 - v7) >> 4;
            v17 = v5 >> 1;
            do
            {
              v18 = v17;
              v17 = v16;
              v16 = v18 % v16;
            }

            while (v16);
            v19 = &v4[v17];
            do
            {
              v20 = *--v19;
              v32 = v20;
              v21 = (v19 + v6);
              v22 = v19;
              do
              {
                v23 = v21;
                *v22 = *v21;
                v24 = &v21[v11];
                v25 = __OFSUB__(v11, (v8 - v21) >> 4);
                v27 = v11 - ((v8 - v21) >> 4);
                v26 = (v27 < 0) ^ v25;
                v21 = &v4[v27];
                if (v26)
                {
                  v21 = v24;
                }

                v22 = v23;
              }

              while (v21 != v19);
              *v23 = v32;
            }

            while (v19 != v4);
          }
        }
      }
    }

    v10 = [[CRImageSpacePolyline alloc] initWithPoints:?];
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v10 = [(CRImageSpacePolyline *)self copy];
  }

  return v10;
}

- (CGSize)estimatedLineSizeForPairedPointPolygon
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __62__CRImageSpacePolyline_estimatedLineSizeForPairedPointPolygon__block_invoke;
  v39[3] = &unk_1E7BC2B98;
  v39[4] = self;
  v39[5] = &v44;
  v39[6] = &v40;
  [(CRImageSpacePolyline *)self enumeratePoints:v39];
  points = self->__points;
  v4 = *points;
  if (points[1] == *points || (v5 = *v4, v6 = v4[1], v7 = [(CRImageSpacePolyline *)self pointCount]- 1, v7 >= (points[1] - *points) >> 4))
  {
    std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = &(*points)[2 * v7];
  v9 = *v8;
  v10 = v8[1];
  v11 = MEMORY[0x1E695F060];
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  v14 = self->__points;
  v15 = [(CRImageSpacePolyline *)self pointCount]>> 1;
  if (v15 >= (v14[1] - *v14) >> 4 || (v16 = (*v14 + 16 * v15), v18 = *v16, v17 = v16[1], v19 = self->__points, v20 = ([(CRImageSpacePolyline *)self pointCount]>> 1) - 1, v20 >= (v19[1] - *v19) >> 4))
  {
    std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(*v19 + 16 * v20);
  v22 = v11->f64[0] > 0.0;
  v23 = v11->f64[1] > 0.0;
  v24 = v18 * v11->f64[0];
  v25 = vmuld_lane_f64(v17, *v11, 1);
  v26 = vmulq_f64(v21, *v11);
  v27 = !v22 || !v23;
  if (v22 && v23)
  {
    v28 = -1;
  }

  else
  {
    v24 = v18;
    v28 = 0;
  }

  v29 = vdupq_n_s64(v28);
  if (v27)
  {
    v25 = v17;
  }

  v30 = vbslq_s8(v29, v26, v21);
  v31 = v5 * v12;
  v32 = v6 * v13;
  v33 = v9 * v12;
  v34 = v10 * v13;
  if (v13 <= 0.0)
  {
    v33 = v9;
    v34 = v10;
    v31 = v5;
    v32 = v6;
  }

  if (v12 <= 0.0)
  {
    v33 = v9;
    v34 = v10;
    v31 = v5;
    v32 = v6;
  }

  v35 = (v45[3] + v41[3]) * 0.5;
  v36 = (sqrt((v25 - *&v30.i64[1]) * (v25 - *&v30.i64[1]) + (v24 - *v30.i64) * (v24 - *v30.i64)) + sqrt((v32 - v34) * (v32 - v34) + (v31 - v33) * (v31 - v33))) * 0.5;
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  v37 = v35;
  v38 = v36;
  result.height = v38;
  result.width = v37;
  return result;
}

unint64_t __62__CRImageSpacePolyline_estimatedLineSizeForPairedPointPolygon__block_invoke(unint64_t result, unint64_t a2, double a3, double a4)
{
  if (a2)
  {
    v7 = result;
    result = [*(result + 32) pointCount];
    if (a2 != result >> 1)
    {
      v8 = *(v7 + 32);
      v9 = *v8[1];
      if (a2 - 1 >= (v8[1][1] - v9) >> 4)
      {
        std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
      }

      v10 = *(v9 + 16 * (a2 - 1));
      v11 = a3 * *MEMORY[0x1E695F060];
      v12 = vmuld_lane_f64(a4, *MEMORY[0x1E695F060], 1);
      v13 = vmulq_f64(v10, *MEMORY[0x1E695F060]);
      if (*MEMORY[0x1E695F060] > 0.0 && *(MEMORY[0x1E695F060] + 8) > 0.0)
      {
        v14 = -1;
      }

      else
      {
        v11 = a3;
        v12 = a4;
        v14 = 0;
      }

      v15 = vbslq_s8(vdupq_n_s64(v14), v13, v10);
      v16 = sqrt((v12 - *&v15.i64[1]) * (v12 - *&v15.i64[1]) + (v11 - *v15.i64) * (v11 - *v15.i64));
      result = [v8 pointCount];
      v17 = 48;
      if (a2 < result >> 1)
      {
        v17 = 40;
      }

      *(*(*(v7 + v17) + 8) + 24) = v16 + *(*(*(v7 + v17) + 8) + 24);
    }
  }

  return result;
}

- (CGRect)boundingRect
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FEFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FEFFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x10000000000000;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x10000000000000;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__CRImageSpacePolyline_boundingRect__block_invoke;
  v10[3] = &unk_1E7BC2BC0;
  v10[4] = &v23;
  v10[5] = &v19;
  v10[6] = &v15;
  v10[7] = &v11;
  [(CRImageSpacePolyline *)self enumeratePoints:v10];
  v2 = v24[3];
  v3 = v20[3];
  v4 = v16[3] - v2;
  v5 = v12[3] - v3;
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

void *__36__CRImageSpacePolyline_boundingRect__block_invoke(void *result, double a2, double a3)
{
  v3 = *(result[4] + 8);
  if (a2 < *(v3 + 24))
  {
    *(v3 + 24) = a2;
  }

  v4 = *(result[5] + 8);
  if (a3 < *(v4 + 24))
  {
    *(v4 + 24) = a3;
  }

  v5 = *(result[6] + 8);
  if (a2 > *(v5 + 24))
  {
    *(v5 + 24) = a2;
  }

  v6 = *(result[7] + 8);
  if (a3 > *(v6 + 24))
  {
    *(v6 + 24) = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRImageSpacePolyline allocWithZone:a3];

  return [(CRImageSpacePolyline *)v4 initWithPolyline:self];
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  [CRCodingUtilities appendUInteger:(*(self->__points + 1) - *self->__points) >> 4 toData:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CRImageSpacePolyline_crCodableDataRepresentation__block_invoke;
  v6[3] = &unk_1E7BC2B20;
  v4 = v3;
  v7 = v4;
  [(CRImageSpacePolyline *)self enumeratePoints:v6];

  return v4;
}

- (CRImageSpacePolyline)initWithCRCodableDataRepresentation:(id)a3
{
  v4 = a3;
  v13 = 0;
  if ([CRCodingUtilities integerFromEncodingData:v4 offset:&v13]== 1)
  {
    v5 = [CRCodingUtilities unsignedIntegerFromEncodingData:v4 offset:&v13];
    std::vector<CGPoint>::vector[abi:ne200100](__p, v5);
    if (v5)
    {
      v6 = 0;
      do
      {
        [CRCodingUtilities pointFromEncodingData:v4 offset:&v13];
        v7 = __p[0] + v6;
        *v7 = v8;
        v7[1] = v9;
        v6 += 16;
        --v5;
      }

      while (v5);
    }

    self = [(CRImageSpacePolyline *)self initWithPoints:?];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end