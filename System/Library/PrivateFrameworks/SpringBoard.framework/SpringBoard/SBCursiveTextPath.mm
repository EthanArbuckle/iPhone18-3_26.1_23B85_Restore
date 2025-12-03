@interface SBCursiveTextPath
- (CGAffineTransform)transformForRect:(SEL)rect pointSize:(CGRect)size flipped:(double)flipped;
- (CGPath)pathForFraction:(double)fraction calculateLength:(BOOL)length;
- (SBCursiveTextPath)initWithURL:(id)l resolution:(int64_t)resolution;
- (id).cxx_construct;
@end

@implementation SBCursiveTextPath

- (SBCursiveTextPath)initWithURL:(id)l resolution:(int64_t)resolution
{
  v84 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v78.receiver = self;
  v78.super_class = SBCursiveTextPath;
  v5 = [(SBCursiveTextPath *)&v78 init];
  v6 = v5;
  v66 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_21F8A5880;
    *(v5 + 3) = 0x3FD0000000000000;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
    v55 = v7;
    if (v7)
    {
      v77 = 0;
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:&v77];
      v54 = v77;
      v57 = v8;
      if (v8)
      {
        v9 = [v8 objectForKeyedSubscript:@"unitsPerEm"];
        [v9 floatValue];
        v6[10] = v10;

        v11 = [v8 objectForKeyedSubscript:@"ascender"];
        [v11 floatValue];
        *(v66 + 11) = v12;

        v13 = [v8 objectForKeyedSubscript:@"descender"];
        [v13 floatValue];
        *(v66 + 12) = v14;

        v15 = [v8 objectForKeyedSubscript:@"scale"];
        v16 = v15;
        v67 = 0u;
        if (v15 && [v15 count] == 4)
        {
          v17 = [v16 objectAtIndexedSubscript:0];
          [v17 floatValue];
          v68 = v18;
          v19 = [v16 objectAtIndexedSubscript:1];
          [v19 floatValue];
          v64 = v20;
          v21 = [v16 objectAtIndexedSubscript:2];
          [v21 floatValue];
          v62 = v22;
          v23 = [v16 objectAtIndexedSubscript:3];
          [v23 floatValue];
          v60 = v24;

          v25.i64[0] = __PAIR64__(v64, v68);
          v25.i64[1] = __PAIR64__(v60, v62);
          v67 = v25;
        }

        v53 = [v8 objectForKeyedSubscript:@"strokes"];
        std::vector<std::vector<BezierCurve>>::reserve(v66 + 13, [v53 count]);
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v53;
        v26 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v26)
        {
          v61 = *v74;
          do
          {
            v27 = 0;
            v63 = v26;
            do
            {
              if (*v74 != v61)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v73 + 1) + 8 * v27);
              *buf = 0;
              v81 = 0;
              v82 = 0;
              std::vector<BezierCurve>::reserve(buf, [v28 count]);
              v65 = v27;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v69 objects:v79 count:16];
              if (v30)
              {
                v31 = *v70;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v70 != v31)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v33 = v81;
                    if (v81 >= v82)
                    {
                      v35 = (v81 - *buf) >> 6;
                      if ((v35 + 1) >> 58)
                      {
                        std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
                      }

                      v36 = (v82 - *buf) >> 5;
                      if (v36 <= v35 + 1)
                      {
                        v36 = v35 + 1;
                      }

                      if (v82 - *buf >= 0x7FFFFFFFFFFFFFC0)
                      {
                        v37 = 0x3FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v37 = v36;
                      }

                      if (v37)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<BezierCurve>>(buf, v37);
                      }

                      v38 = BezierCurve::BezierCurve((v35 << 6), *(*(&v69 + 1) + 8 * i), v67);
                      v34 = v38 + 4;
                      v39 = (v38 - (v81 - *buf));
                      memcpy(v39, *buf, v81 - *buf);
                      v40 = *buf;
                      *buf = v39;
                      v81 = v34;
                      v82 = 0;
                      if (v40)
                      {
                        operator delete(v40);
                      }
                    }

                    else
                    {
                      BezierCurve::BezierCurve(v81, *(*(&v69 + 1) + 8 * i), v67);
                      v34 = v33 + 4;
                    }

                    v81 = v34;
                  }

                  v30 = [v29 countByEnumeratingWithState:&v69 objects:v79 count:16];
                }

                while (v30);
              }

              v41 = *(v66 + 14);
              if (v41 >= *(v66 + 15))
              {
                v42 = std::vector<std::vector<BezierCurve>>::__emplace_back_slow_path<std::vector<BezierCurve>&>((v66 + 104), buf);
                v43 = v66;
              }

              else
              {
                *v41 = 0;
                v41[1] = 0;
                v41[2] = 0;
                if (v81 != *buf)
                {
                  std::vector<BezierCurve>::__vallocate[abi:nn200100](v41, (v81 - *buf) >> 6);
                }

                v42 = (v41 + 3);
                v43 = v66;
                *(v66 + 14) = v41 + 3;
              }

              *(v43 + 14) = v42;
              if (*buf)
              {
                v81 = *buf;
                operator delete(*buf);
              }

              v27 = v65 + 1;
            }

            while (v65 + 1 != v63);
            v26 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v26);
        }

        *(v66 + 16) = resolution;
        v44 = [v66 pathForFraction:1 calculateLength:0.0];
        *(v66 + 48) = CGPathGetPathBoundingBox(v44);
        CGPathRelease(v44);
        v45 = *(v66 + 4) / 3000.0;
        *(v66 + 5) = ((powf((fminf(fmaxf(v45, 0.0), 10.0) / 10.0) + -1.0, 3.0) + 1.0) * 4.0);

        v6 = v66;
        goto LABEL_41;
      }

      v49 = SBLogDashBoard();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [lCopy absoluteString];
        v51 = [v54 description];
        [(SBCursiveTextPath *)absoluteString initWithURL:v51 resolution:buf, v49];
      }
    }

    else
    {
      v47 = SBLogDashBoard();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        absoluteString2 = [lCopy absoluteString];
        [(SBCursiveTextPath *)absoluteString2 initWithURL:buf resolution:v47];
      }
    }

    v46 = 0;
    goto LABEL_49;
  }

LABEL_41:
  v46 = v6;
LABEL_49:

  return v46;
}

- (CGAffineTransform)transformForRect:(SEL)rect pointSize:(CGRect)size flipped:(double)flipped
{
  v6 = a6;
  descender = self->_descender;
  v10 = self->_ascender - descender;
  v11 = -descender / v10;
  v12 = v10 / self->_unitsPerM * flipped;
  v32 = (CGRectGetHeight(size) - v12) * 0.5;
  x = self->_boundingBoxOfPath.origin.x;
  y = self->_boundingBoxOfPath.origin.y;
  width = self->_boundingBoxOfPath.size.width;
  height = self->_boundingBoxOfPath.size.height;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = CGRectGetWidth(v39);
  CGAffineTransformMakeTranslation(retstr, -(MinX + v18 * 0.5), 0.0);
  if (v6)
  {
    v19 = 1.0 - v11;
  }

  else
  {
    v19 = v11;
  }

  v20 = v32 + v19 * v12;
  v21 = flipped / self->_unitsPerM;
  v22 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v22;
  *&t1.tx = *&retstr->tx;
  v23 = -v21;
  if (!v6)
  {
    v23 = v21;
  }

  CGAffineTransformMakeScale(&t2, v21, v23);
  CGAffineTransformConcat(&v37, &t1, &t2);
  v24 = *&v37.c;
  *&retstr->a = *&v37.a;
  *&retstr->c = v24;
  *&retstr->tx = *&v37.tx;
  v25 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v25;
  *&t1.tx = *&retstr->tx;
  v26 = size.origin.x;
  *&v25 = size.origin.y;
  v27 = size.size.width;
  v28 = size.size.height;
  v29 = CGRectGetWidth(*(&v25 - 8));
  CGAffineTransformMakeTranslation(&t2, v29 * 0.5, v20);
  result = CGAffineTransformConcat(&v37, &t1, &t2);
  v31 = *&v37.c;
  *&retstr->a = *&v37.a;
  *&retstr->c = v31;
  *&retstr->tx = *&v37.tx;
  return result;
}

- (CGPath)pathForFraction:(double)fraction calculateLength:(BOOL)length
{
  lengthCopy = length;
  rampTime = self->_rampTime;
  duration = self->_duration;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  begin = self->_bezierArrays.__begin_;
  end = self->_bezierArrays.__end_;
  if (begin == end)
  {
    v16 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = rampTime / duration;
    v12 = 1.0;
    v13 = -(v11 - (v11 + 1.0) * fraction);
    v14 = v13;
    v15 = v11;
    v101 = v11 + v13;
    v16 = 0.0;
    v105 = 0u;
    __asm
    {
      FMOV            V1.4S, #3.0
      FMOV            V0.4S, #6.0
    }

    v102 = _Q0;
    v103 = _Q1;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v107 = 0;
      v23 = *begin;
      v99 = begin[1];
      v100 = begin;
      if (*begin == v99)
      {
LABEL_30:
        v61 = v109;
        if (v109 >= v110)
        {
          v68 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3);
          v69 = v68 + 1;
          if (v68 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_72:
            std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v110 - v108) >> 3) > v69)
          {
            v69 = 0x5555555555555556 * ((v110 - v108) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v110 - v108) >> 3) >= 0x555555555555555)
          {
            v70 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v70 = v69;
          }

          v115 = &v108;
          if (v70)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BezierCurve>>>(&v108, v70);
          }

          v75 = (8 * ((v109 - v108) >> 3));
          *v75 = 0;
          v75[1] = 0;
          v75[2] = 0;
          *v75 = *__p;
          v75[2] = v107;
          __p[0] = 0;
          __p[1] = 0;
          v107 = 0;
          v63 = 24 * v68 + 24;
          v76 = (24 * v68 - (v109 - v108));
          memcpy(v75 - (v109 - v108), v108, v109 - v108);
          v77 = v108;
          v78 = v110;
          v108 = v76;
          v109 = v63;
          v110 = 0;
          v111 = v77;
          v113 = v77;
          v114 = v78;
          v112 = v77;
          std::__split_buffer<std::vector<BezierCurve>>::~__split_buffer(&v111);
          v62 = 0;
        }

        else
        {
          v62 = 0;
          *v109 = 0;
          *(v61 + 1) = 0;
          *(v61 + 2) = 0;
          *v61 = *__p;
          *(v61 + 2) = v107;
          __p[0] = 0;
          __p[1] = 0;
          v107 = 0;
          v63 = (v61 + 24);
        }
      }

      else
      {
        v24 = 0;
        while ((vminvq_u32(vceqq_f32(*v23, v23[3])) & 0x80000000) == 0)
        {
          resolution = self->_resolution;
          if ((resolution & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_29:
          v23 += 4;
          v10 = 1;
          if (v23 == v99)
          {
            goto LABEL_30;
          }
        }

        resolution = 0;
LABEL_9:
        v26 = 0;
        v27 = resolution + 1;
        while (1)
        {
          v28 = v105;
          v29 = v12 / self->_resolution * v26;
          v30 = v23[1];
          v31 = vmulq_f32(v30, v103);
          v32 = v23[2];
          v33 = v23[3];
          v34 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v32, v103), v29), v29);
          v35 = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v33, v29), v29), v29), vaddq_f32(vmulq_n_f32(v34, 1.0 - v29), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v31, v29), 1.0 - v29), 1.0 - v29), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(*v23, 1.0 - v29), 1.0 - v29), 1.0 - v29))));
          v36 = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v33, v103), v29), v29), vsubq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v32, v102), 1.0 - v29), v29), vsubq_f32(vsubq_f32(vmulq_n_f32(vmulq_n_f32(v31, 1.0 - v29), 1.0 - v29), vmulq_n_f32(vmulq_n_f32(vmulq_f32(*v23, v103), 1.0 - v29), 1.0 - v29)), vmulq_n_f32(vmulq_n_f32(vmulq_f32(v30, v102), 1.0 - v29), v29))), v34)).u64[0];
          v37 = -v36.f32[0];
          v36.i32[0] = vdup_lane_s32(v36, 1).u32[0];
          v36.f32[1] = v37;
          v38 = vmul_f32(v36, v36);
          v38.i32[0] = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
          v39 = vrsqrte_f32(v38.u32[0]);
          v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
          v104 = vmul_n_f32(v36, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]);
          v105 = v35;
          if (v9)
          {
            v41 = vsubq_f32(v35, v28);
            v42 = vmulq_f32(v41, v41);
            v43 = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
            v44 = 0.5;
            if ((v10 & 1) == 0)
            {
              v44 = v12;
            }

            v16 = v16 + v43 * v44;
            v10 = 0;
          }

          v45 = v16 / self->_length;
          v46 = v45;
          initialWeight = self->_initialWeight;
          finalWeight = self->_finalWeight;
          v49 = powf((1.0 - fminf(fmaxf((v46 - v14) / v15, 0.0), 1.0)) + -1.0, 3.0);
          if (!lengthCopy && v45 > v101)
          {
            break;
          }

          v50 = vbsl_s8(vdup_n_s32(0), 0x3F80000000000000, v104);
          v51 = initialWeight;
          v52 = finalWeight;
          v53 = vmuls_lane_f32(v51 + ((v49 + 1.0) * (v52 - v51)), v105, 3);
          if (v24 >= v107)
          {
            v55 = 0xAAAAAAAAAAAAAAABLL * ((v24 - __p[0]) >> 3);
            v56 = v55 + 1;
            if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::vector<BezierCurve>>::__throw_length_error[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v107 - __p[0]) >> 3) > v56)
            {
              v56 = 0x5555555555555556 * ((v107 - __p[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v107 - __p[0]) >> 3) >= 0x555555555555555)
            {
              v57 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v57 = v56;
            }

            if (v57)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<PathPoint>>(__p, v57);
            }

            v58 = 8 * ((v24 - __p[0]) >> 3);
            v59 = v16;
            *v58 = v105.i64[0];
            *(v58 + 8) = v50;
            *(v58 + 16) = v53;
            *(v58 + 20) = v59;
            v24 = (24 * v55 + 24);
            memcpy((24 * v55 - (__p[1] - __p[0])), __p[0], __p[1] - __p[0]);
            v60 = __p[0];
            __p[0] = (24 * v55 - (__p[1] - __p[0]));
            __p[1] = v24;
            v107 = 0;
            if (v60)
            {
              operator delete(v60);
            }
          }

          else
          {
            v54 = v16;
            *v24 = v105.i64[0];
            *(v24 + 1) = v50;
            *(v24 + 4) = v53;
            *(v24 + 5) = v54;
            v24 += 24;
          }

          v12 = 1.0;
          __p[1] = v24;
          ++v26;
          v9 = 1;
          if (v27 == v26)
          {
            goto LABEL_29;
          }
        }

        v64 = v109;
        if (v109 >= v110)
        {
          v65 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3);
          v66 = v65 + 1;
          if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_72;
          }

          if (0x5555555555555556 * ((v110 - v108) >> 3) > v66)
          {
            v66 = 0x5555555555555556 * ((v110 - v108) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v110 - v108) >> 3) >= 0x555555555555555)
          {
            v67 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v67 = v66;
          }

          v115 = &v108;
          if (v67)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BezierCurve>>>(&v108, v67);
          }

          v71 = (8 * ((v109 - v108) >> 3));
          *v71 = 0;
          v71[1] = 0;
          v71[2] = 0;
          *v71 = *__p;
          v71[2] = v107;
          __p[0] = 0;
          __p[1] = 0;
          v107 = 0;
          v63 = 24 * v65 + 24;
          v72 = (24 * v65 - (v109 - v108));
          memcpy(v71 - (v109 - v108), v108, v109 - v108);
          v73 = v108;
          v74 = v110;
          v108 = v72;
          v109 = v63;
          v110 = 0;
          v111 = v73;
          v113 = v73;
          v114 = v74;
          v112 = v73;
          std::__split_buffer<std::vector<BezierCurve>>::~__split_buffer(&v111);
        }

        else
        {
          *v109 = 0;
          *(v64 + 1) = 0;
          *(v64 + 2) = 0;
          *v64 = *__p;
          *(v64 + 2) = v107;
          __p[0] = 0;
          __p[1] = 0;
          v107 = 0;
          v63 = (v64 + 24);
        }

        v62 = 9;
        v9 = 1;
      }

      v109 = v63;
      if (v62)
      {
        break;
      }

      begin = v100 + 3;
    }

    while (v100 + 3 != end);
  }

  if (lengthCopy)
  {
    self->_length = v16;
  }

  Mutable = CGPathCreateMutable();
  v80 = v108;
  v81 = v109;
  if (v108 != v109)
  {
    do
    {
      v82 = *v80;
      v83 = v80[1];
      if (*v80 != v83)
      {
        v84 = vmla_n_f32(*v82, v82[1], v82[2].f32[0]);
        CGPathMoveToPoint(Mutable, 0, v84.f32[0], v84.f32[1]);
        v85 = 0xAAAAAAAAAAAAAAABLL * (v80[1] - *v80);
        if (v85 - 1 >= 2)
        {
          v86 = 0;
          v87 = v85 - 2;
          do
          {
            v88 = vmla_n_f32((*v80)[v86 + 3], (*v80)[v86 + 4], (*v80)[v86 + 5].f32[0]);
            CGPathAddLineToPoint(Mutable, 0, v88.f32[0], v88.f32[1]);
            v86 += 3;
            --v87;
          }

          while (v87);
        }

        v89 = atan2f(COERCE_FLOAT(HIDWORD(*&v83[-2])), COERCE_FLOAT(*&v83[-2]));
        CGPathAddArc(Mutable, 0, COERCE_FLOAT(*&v83[-3]), COERCE_FLOAT(HIDWORD(*&v83[-3])), v83[-1].f32[0], v89, v89 + 3.14159265, 0);
        v91 = v80[1] - *v80;
        if (v91 >= 49)
        {
          v92 = v91 / 0x18uLL - 1;
          v93 = 3 * (v91 / 0x18uLL);
          do
          {
            v94 = &(*v80)[v93];
            v90.i32[0] = *(v94 - 32);
            v95 = vmls_lane_f32(*(v94 - 48), *(v94 - 40), v90, 0);
            CGPathAddLineToPoint(Mutable, 0, v95.f32[0], v95.f32[1]);
            --v92;
            v93 -= 3;
          }

          while (v92 > 1);
        }

        v96 = atan2f(-COERCE_FLOAT(HIDWORD(*&v82[1])), -COERCE_FLOAT(*&v82[1]));
        CGPathAddArc(Mutable, 0, COERCE_FLOAT(*v82), COERCE_FLOAT(HIDWORD(*v82)), v82[2].f32[0], v96, v96 + 3.14159265, 0);
      }

      v80 += 3;
    }

    while (v80 != v81);
  }

  v111 = &v108;
  std::vector<std::vector<PathPoint>>::__destroy_vector::operator()[abi:nn200100](&v111);
  return Mutable;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  return self;
}

- (void)initWithURL:(uint8_t *)buf resolution:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[SBCursiveTextPath] Indecipherable plist for url: %@, error: %@", buf, 0x16u);
}

- (void)initWithURL:(os_log_t)log resolution:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[SBCursiveTextPath] No data for url %@", buf, 0xCu);
}

@end