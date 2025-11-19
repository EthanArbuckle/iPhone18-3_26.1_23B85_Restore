@interface TSDGPUVoronoiTriangleDataCell
- ($94F468A8D4C62B317260615823C2B210)centerPoint;
- (CGRect)bounds;
- (TSDGPUVoronoiTriangleDataCell)initWithEdges:()vector<boost:(std::allocator<boost::polygon::segment_data<double>>> *)a3 :polygon::segment_data<double>;
- (TSDGPUVoronoiTriangleDataCell)initWithTrianglePoints:(id *)a3;
- (id)cellsBySplittingCellIntoTriangles;
- (void)dealloc;
- (void)p_setupTriangleDataWithEdges:()vector<boost:(std::allocator<boost::polygon::segment_data<double>>> *)a3 :polygon::segment_data<double>;
@end

@implementation TSDGPUVoronoiTriangleDataCell

- (void)p_setupTriangleDataWithEdges:()vector<boost:(std::allocator<boost::polygon::segment_data<double>>> *)a3 :polygon::segment_data<double>
{
  v5 = (a3->var1 - a3->var0) >> 5;
  v6 = v5 - 2;
  if (v5 <= 2)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleDataCell p_setupTriangleDataWithEdges:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 351, @"Less than 3 edges in this cell!"}];
  }

  v9 = malloc_type_calloc(8uLL, v5, 0x100004000313F17uLL);
  v10 = v9;
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 == var1)
  {
    v19 = 1.79769313e308;
    v39 = 2.22507386e-308;
    v38 = 1.79769313e308;
  }

  else
  {
    v13 = vdupq_n_s64(0x10000000000000uLL);
    v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v15 = v9;
    do
    {
      v16 = *var0;
      var0 += 2;
      v17 = vcvt_f32_f64(v16);
      *v15++ = v17;
      v18 = vcvtq_f64_f32(v17);
      v13 = vbslq_s8(vcgtq_f64(v13, v18), v13, v18);
      v14 = vbslq_s8(vcgtq_f64(v18, v14), v14, v18);
    }

    while (var0 != var1);
    v38 = v14.f64[0];
    v39 = v13.f64[0];
    v19 = v14.f64[1];
  }

  self->_triangleCount = v6;
  self->_vertexCount = 3 * v6;
  v20 = malloc_type_calloc(8uLL, 3 * v6, 0x100004000313F17uLL);
  v21 = v20;
  if (self->_triangleCount >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = v5 - 1;
    v25 = (v20 + 16);
    v26 = 1;
    do
    {
      v27 = v10[v22];
      if (v26)
      {
        v28 = v10[v24];
      }

      else
      {
        v28 = v10[v22];
      }

      if (v26)
      {
        v29 = v22 + 1;
      }

      else
      {
        v27 = v10[v24];
        v29 = v24 - 1;
      }

      if (v26)
      {
        ++v22;
      }

      else
      {
        --v24;
      }

      v30 = v10[v29];
      v25[-2] = v27;
      v25[-1] = v28;
      *v25 = v30;
      v25 += 3;
      v26 ^= 1u;
      ++v23;
    }

    while (v23 < self->_triangleCount);
  }

  vertexData = self->_vertexData;
  if (vertexData)
  {
    free(vertexData);
  }

  self->_vertexData = v21;
  v32 = TSDRectWithPoints(v38, v19, v39);
  self->_bounds.origin.x = v32;
  self->_bounds.origin.y = v33;
  self->_bounds.size.width = v34;
  self->_bounds.size.height = v35;
  v36 = TSDCenterOfRect(v32, v33, v34, v35);
  *&v37 = v37;
  self->_centerPoint.x = v36;
  self->_centerPoint.y = *&v37;

  free(v10);
}

- (id)cellsBySplittingCellIntoTriangles
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TSDGPUVoronoiTriangleDataCell triangleCount](self, "triangleCount")}];
  if ([(TSDGPUVoronoiTriangleDataCell *)self triangleCount])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [[TSDGPUVoronoiTriangleDataCell alloc] initWithTrianglePoints:&self->_vertexData[v4]];
      [v3 addObject:v6];

      ++v5;
      v4 += 3;
    }

    while (v5 < [(TSDGPUVoronoiTriangleDataCell *)self triangleCount]);
  }

  return v3;
}

- (TSDGPUVoronoiTriangleDataCell)initWithEdges:()vector<boost:(std::allocator<boost::polygon::segment_data<double>>> *)a3 :polygon::segment_data<double>
{
  v9.receiver = self;
  v9.super_class = TSDGPUVoronoiTriangleDataCell;
  v4 = [(TSDGPUVoronoiTriangleDataCell *)&v9 init];
  if (v4)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(&__p, a3->var0, a3->var1, (a3->var1 - a3->var0) >> 5);
    [(TSDGPUVoronoiTriangleDataCell *)v4 p_setupTriangleDataWithEdges:&__p];
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  return v4;
}

- (TSDGPUVoronoiTriangleDataCell)initWithTrianglePoints:(id *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleDataCell initWithTrianglePoints:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 459, @"points is NULL!"}];
  }

  v24.receiver = self;
  v24.super_class = TSDGPUVoronoiTriangleDataCell;
  v7 = [(TSDGPUVoronoiTriangleDataCell *)&v24 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = xmmword_26CA66280;
    *(v7 + 3) = malloc_type_calloc(8uLL, 3uLL, 0x100004000313F17uLL);
    if (*(v8 + 2))
    {
      v9 = 0;
      do
      {
        *(*(v8 + 3) + 8 * v9) = a3[v9];
        ++v9;
        v10 = *(v8 + 2);
      }

      while (v9 < v10);
      if (v10)
      {
        v11 = vdupq_n_s64(0x10000000000000uLL);
        v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v13 = *(v8 + 3);
        do
        {
          v14 = *v13++;
          v15 = vcvtq_f64_f32(v14);
          v11 = vbslq_s8(vcgtq_f64(v11, v15), v11, v15);
          v12 = vbslq_s8(vcgtq_f64(v15, v12), v12, v15);
          --v10;
        }

        while (v10);
        v16 = v12.f64[1];
        goto LABEL_14;
      }

      v16 = 1.79769313e308;
    }

    else
    {
      v16 = 1.79769313e308;
    }

    v11.f64[0] = 2.22507386e-308;
    v12.f64[0] = 1.79769313e308;
LABEL_14:
    v17 = TSDRectWithPoints(v12.f64[0], v16, v11.f64[0]);
    *(v8 + 5) = v17;
    *(v8 + 6) = v18;
    *(v8 + 7) = v19;
    *(v8 + 8) = v20;
    v21 = TSDCenterOfRect(v17, v18, v19, v20);
    *&v22 = v22;
    *(v8 + 8) = v21;
    *(v8 + 9) = LODWORD(v22);
  }

  return v8;
}

- (void)dealloc
{
  vertexData = self->_vertexData;
  if (vertexData)
  {
    free(vertexData);
    self->_vertexData = 0;
  }

  v4.receiver = self;
  v4.super_class = TSDGPUVoronoiTriangleDataCell;
  [(TSDGPUVoronoiTriangleDataCell *)&v4 dealloc];
}

- ($94F468A8D4C62B317260615823C2B210)centerPoint
{
  x = self->_centerPoint.x;
  y = self->_centerPoint.y;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end