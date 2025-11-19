@interface VKRoadSignArtwork
- (Box<float,)localCollisionBounds;
- (Box<float,)localRenderBounds;
- (Box<float,)localSignBounds;
- (Matrix<float,)offsetPixelForPixel:()Matrix<float;
- (char)initWithFramesetter:(const void *)a3 signMetrics:(_OWORD *)a4 textMetrics:(__int128 *)a5 signColoring:(void *)a6 glyph:(uint64_t *)a7 cgGlyph:(CGImage *)a8 resourceStore:(uint64_t *)a9;
- (char)initWithLine:(const void *)a3 signMetrics:(_OWORD *)a4 textMetrics:(__int128 *)a5 signColoring:(void *)a6 glyph:(uint64_t *)a7 cgGlyph:(CGImage *)a8 resourceStore:(uint64_t *)a9;
- (id).cxx_construct;
- (id)image;
- (void)addDebugPoint:(CGPoint)a3 color:()Color<float;
- (void)addDebugRect:(CGRect)a3 color:()Color<float;
- (void)dealloc;
@end

@implementation VKRoadSignArtwork

- (void)dealloc
{
  v3 = *(self + 213);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(self + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(self + 2);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(self + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  v7.receiver = self;
  v7.super_class = VKRoadSignArtwork;
  [(VKRoadSignArtwork *)&v7 dealloc];
}

- (id).cxx_construct
{
  *(self + 32) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(self + 40) = _Q0;
  *(self + 56) = xmmword_1B33B1570;
  *(self + 72) = 0u;
  v8 = MEMORY[0x1E695F060];
  v9 = *MEMORY[0x1E695F060];
  *(self + 88) = *MEMORY[0x1E695F060];
  *(self + 13) = 0x4034000000000000;
  *(self + 7) = 0u;
  *(self + 8) = xmmword_1B33B1580;
  *(self + 9) = 0u;
  *(self + 20) = 0x401A000000000000;
  *(self + 168) = v9;
  *(self + 184) = xmmword_1B33B0740;
  *(self + 200) = xmmword_1B33B1590;
  __asm { FMOV            V0.2D, #6.0 }

  *(self + 216) = _Q0;
  __asm { FMOV            V0.2D, #17.0 }

  *(self + 232) = _Q0;
  *(self + 33) = 0;
  *(self + 248) = 0u;
  *(self + 37) = 0;
  *(self + 280) = 0u;
  *(self + 312) = 0u;
  *(self + 164) = 1;
  *(self + 336) = 0;
  *(self + 344) = *v8;
  v12 = MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *MEMORY[0x1E695F058];
  *(self + 360) = *MEMORY[0x1E695F058];
  *(self + 376) = v13;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 417) = 0u;
  v15 = MEMORY[0x1E695EFF8];
  v16 = *MEMORY[0x1E695EFF8];
  *(self + 440) = *MEMORY[0x1E695EFF8];
  *(self + 456) = v16;
  *(self + 472) = v16;
  v17 = *v15;
  *(self + 488) = *v15;
  *(self + 63) = 0;
  *(self + 512) = 0;
  *(self + 520) = *v8;
  v18 = v12[1];
  *(self + 536) = *v12;
  *(self + 552) = v18;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 593) = 0u;
  *(self + 616) = v17;
  *(self + 632) = v17;
  *(self + 648) = v17;
  *(self + 664) = v17;
  *(self + 85) = 0;
  *(self + 688) = 0;
  *(self + 696) = *v8;
  v19 = v12[1];
  *(self + 712) = *v12;
  *(self + 728) = v19;
  *(self + 769) = 0u;
  *(self + 744) = 0u;
  *(self + 760) = 0u;
  *(self + 792) = *v15;
  *(self + 808) = *v15;
  *(self + 824) = *v15;
  *(self + 840) = *v15;
  *(self + 107) = 0;
  *(self + 864) = 0;
  *(self + 872) = *v8;
  v20 = v12[1];
  *(self + 888) = *v12;
  *(self + 904) = v20;
  *(self + 945) = 0u;
  *(self + 920) = 0u;
  *(self + 936) = 0u;
  *(self + 968) = *v15;
  *(self + 984) = *v15;
  *(self + 1000) = *v15;
  *(self + 1016) = *v15;
  *(self + 129) = 0;
  *(self + 1040) = 0;
  *(self + 1048) = *v8;
  v21 = v12[1];
  *(self + 1064) = *v12;
  *(self + 1080) = v21;
  v22 = v12[1];
  *(self + 1096) = *v12;
  *(self + 1112) = v22;
  *(self + 141) = 0;
  *(self + 71) = *v15;
  *(self + 72) = *v15;
  *(self + 73) = *v15;
  v23 = *v12;
  *(self + 75) = v12[1];
  *(self + 74) = v23;
  v24 = *v12;
  *(self + 77) = v12[1];
  *(self + 76) = v24;
  v25 = *v12;
  *(self + 79) = v12[1];
  *(self + 78) = v25;
  v26 = *v12;
  *(self + 81) = v12[1];
  *(self + 80) = v26;
  v27 = *v12;
  *(self + 83) = v12[1];
  *(self + 82) = v27;
  v28 = *v12;
  *(self + 85) = v12[1];
  *(self + 84) = v28;
  *(self + 87) = v12[1];
  *(self + 86) = v14;
  *(self + 176) = 0;
  md::RoadSignColoring::RoadSignColoring((self + 1416));
  *(self + 1688) = 0u;
  *(self + 107) = 0u;
  *(self + 108) = 0u;
  *(self + 109) = 0u;
  *(self + 110) = 0u;
  *(self + 222) = 850045863;
  *(self + 1784) = 0u;
  *(self + 1800) = 0u;
  *(self + 1816) = 0u;
  *(self + 229) = 0;
  *(self + 230) = &unk_1F2A43EB8;
  *(self + 231) = 0;
  return self;
}

- (void)addDebugRect:(CGRect)a3 color:()Color<float
{
  v6 = *(self + 218);
  v7 = *(self + 219);
  if (v6 >= v7)
  {
    v9 = *(self + 217);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 4) + 1;
    if (v10 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 16 * ((v6 - v9) >> 4);
    *v13 = a3;
    *(v13 + 32) = *v4;
    v8 = v13 + 48;
    v14 = v13 - (v6 - v9);
    if (v9 != v6)
    {
      v15 = (16 * ((v6 - v9) >> 4) - (v6 - v9));
      do
      {
        v16 = *(v9 + 1);
        *v15 = *v9;
        v15[1] = v16;
        v15[2] = *(v9 + 2);
        v9 += 48;
        v15 += 3;
      }

      while (v9 != v6);
      v9 = *(self + 217);
    }

    *(self + 217) = v14;
    *(self + 218) = v8;
    *(self + 219) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v6 = a3;
    *(v6 + 2) = *v4;
    v8 = (v6 + 48);
  }

  *(self + 218) = v8;
}

- (void)addDebugPoint:(CGPoint)a3 color:()Color<float
{
  v6 = *(self + 215);
  v7 = *(self + 216);
  if (v6 >= v7)
  {
    v9 = *(self + 214);
    v10 = (v6 - v9) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v7 - v9;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = 32 * v10;
    *v14 = a3;
    *(v14 + 16) = *v4;
    v8 = 32 * v10 + 32;
    if (v9 != v6)
    {
      v15 = 0;
      do
      {
        *v15 = *v9;
        v15[1] = *(v9 + 1);
        v9 += 32;
        v15 += 2;
      }

      while (v9 != v6);
      v9 = *(self + 214);
    }

    *(self + 214) = 0;
    *(self + 215) = v8;
    *(self + 216) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v6 = a3;
    *(v6 + 1) = *v4;
    v8 = (v6 + 32);
  }

  *(self + 215) = v8;
}

- (Box<float,)localCollisionBounds
{
  [(VKRoadSignArtwork *)self localSignBounds];
  v6 = 0;
  v7 = 0;
  v11 = v2;
  v12 = v3;
  v8 = &v11;
  *v13 = v4;
  *&v13[1] = v5;
  do
  {
    v9 = *&v13[v7];
    v10 = *v8;
    if (v6)
    {
      break;
    }

    v6 = 1;
    v8 = &v12;
    v7 = 1;
  }

  while (v9 >= v10);
  if (v9 < v10)
  {
    v4 = -3.4028e38;
    v2 = 3.4028e38;
    v3 = 3.4028e38;
    v5 = -3.4028e38;
  }

  result._maximum._e[1] = v5;
  result._maximum._e[0] = v4;
  result._minimum._e[1] = v3;
  result._minimum._e[0] = v2;
  return result;
}

- (Box<float,)localSignBounds
{
  v2 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *v8.f32 = vcvt_f32_f64(vmulq_f64(*(self + 1048), _Q0));
  v9 = &v21;
  *&_Q0.f64[0] = vcvt_f32_f64(*(self + 1064));
  v10 = vadd_f32(vcvt_f32_f64(*(self + 1080)), *&_Q0.f64[0]);
  v21.i64[0] = *&_Q0.f64[0];
  *&v21.u32[2] = v10;
  v11 = xmmword_1B33B0730;
  v12 = 1;
  while (v21.f32[v2 + 2] >= v9->f32[0])
  {
    v13 = v12;
    v12 = 0;
    v9 = &v21.i32[1];
    v2 = 1;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
      v22 = v21;
      v15 = &v22;
      v16 = 1;
      while (v22.f32[v14 + 2] >= v15->f32[0])
      {
        v17 = v16;
        v16 = 0;
        v15 = &v22.i32[1];
        v14 = 1;
        if ((v17 & 1) == 0)
        {
          v8.i64[1] = v8.i64[0];
          v11 = vsubq_f32(v22, v8);
          goto LABEL_9;
        }
      }

      v11 = v22;
      break;
    }
  }

LABEL_9:
  v18 = v11.f32[1];
  v20 = v11.f32[3];
  v19 = v11.f32[2];
  result._minimum._e[0] = v11.f32[0];
  result._maximum._e[1] = v20;
  result._maximum._e[0] = v19;
  result._minimum._e[1] = v18;
  return result;
}

- (Box<float,)localRenderBounds
{
  v2 = *(self + 131);
  v3 = *(self + 132);
  v4 = v2 * -0.5;
  v5 = v3 * -0.5;
  v6 = v2 * 0.5;
  v7 = v3 * 0.5;
  result._maximum._e[1] = v7;
  result._maximum._e[0] = v6;
  result._minimum._e[1] = v5;
  result._minimum._e[0] = v4;
  return result;
}

- (Matrix<float,)offsetPixelForPixel:()Matrix<float
{
  if ((*(self + 432) & 1) != 0 || (*(self + 608) & 1) != 0 || (v3 = *MEMORY[0x1E695EFF8], *(self + 1040) == 1) && *(self + 960) == 1)
  {
    v3 = *(self + 72);
  }

  __asm { FMOV            V2.2D, #-0.5 }

  v9 = vcvt_f32_f64(vnegq_f64(vmlaq_f64(v3, _Q2, *(self + 1048))));
  v10 = v9.f32[1];
  result._e[0] = v9.f32[0];
  result._e[1] = v10;
  return result;
}

- (id)image
{
  std::mutex::lock((self + 1776));
  v3 = *(self + 231);
  if (v3)
  {
LABEL_41:
    v8 = v3;
    goto LABEL_42;
  }

  v4 = *(self + 131);
  v5 = *(self + 132);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  if (_colorSpace(void)::once != -1)
  {
    dispatch_once(&_colorSpace(void)::once, &__block_literal_global_18781);
  }

  v7 = CGBitmapContextCreate(0, v4, v5, 8uLL, AlignedBytesPerRow, _colorSpace(void)::colorspace, 0x2002u);
  v8 = v7;
  if (v7)
  {
    v85.origin.x = 0.0;
    v85.origin.y = 0.0;
    v85.size.width = v4;
    v85.size.height = v5;
    CGContextClearRect(v7, v85);
    v9 = *(self + 220);
    v10 = *(self + 221);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v81 = v9;
      v82 = v10;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v81 = *(self + 220);
      v82 = 0;
    }

    v11 = VKCreateRoadSignImageWithSignType(self + 32, self + 86, self + 1416, &v81);
    if (v82)
    {
      std::__shared_weak_count::__release_weak(v82);
    }

    v79 = v9;
    v80 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = VKCreateRoadSignImageWithSignType(self + 32, self + 42, self + 1416, &v79);
    if (v80)
    {
      std::__shared_weak_count::__release_weak(v80);
    }

    v77 = v9;
    v78 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = VKCreateRoadSignImageWithSignType(self + 32, self + 64, self + 1416, &v77);
    if (v78)
    {
      std::__shared_weak_count::__release_weak(v78);
    }

    v14 = *(self + 32);
    if (v14 <= 0xD)
    {
      v15 = 1 << v14;
      if ((v15 & 0x3BF6) != 0)
      {
        v16 = *(self + 152);
        v17 = *(self + 153);
        v18 = *(self + 154);
        v19 = *(self + 155);
        v20 = [v12 image];
        v86.origin.x = v16;
        v86.origin.y = v17;
        v86.size.width = v18;
        v86.size.height = v19;
        CGContextDrawImage(v8, v86, v20);
        v21 = *(self + 160);
        v22 = *(self + 161);
        v23 = *(self + 162);
        v24 = *(self + 163);
        v25 = [v11 image];
        v87.origin.x = v21;
        v87.origin.y = v22;
        v87.size.width = v23;
        v87.size.height = v24;
        CGContextDrawImage(v8, v87, v25);
        v26 = *(self + 156);
        v27 = *(self + 157);
        v28 = *(self + 158);
        v29 = *(self + 159);
        v30 = [v13 image];
        v88.origin.x = v26;
        v88.origin.y = v27;
        v88.size.width = v28;
        v88.size.height = v29;
        CGContextDrawImage(v8, v88, v30);
      }

      else if ((v15 & 0x408) != 0)
      {
        v75 = v9;
        v76 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = VKCreateRoadSignImageWithSignType(self + 32, self + 108, self + 1416, &v75);
        if (v76)
        {
          std::__shared_weak_count::__release_weak(v76);
        }

        v47 = *(self + 152);
        v48 = *(self + 153);
        v49 = *(self + 154);
        v50 = *(self + 155);
        v51 = [v12 image];
        v90.origin.x = v47;
        v90.origin.y = v48;
        v90.size.width = v49;
        v90.size.height = v50;
        CGContextDrawImage(v8, v90, v51);
        if (*(self + 141) > 0.0)
        {
          v52 = *(self + 168);
          v53 = *(self + 169);
          v54 = *(self + 170);
          v55 = *(self + 171);
          v56 = [v11 image];
          v91.origin.x = v52;
          v91.origin.y = v53;
          v91.size.width = v54;
          v91.size.height = v55;
          CGContextDrawImage(v8, v91, v56);
        }

        v57 = *(self + 164);
        v58 = *(self + 165);
        v59 = *(self + 166);
        v60 = *(self + 167);
        v61 = [v46 image];
        v92.origin.x = v57;
        v92.origin.y = v58;
        v92.size.width = v59;
        v92.size.height = v60;
        CGContextDrawImage(v8, v92, v61);
        if (*(self + 141) > 0.0)
        {
          v62 = *(self + 172);
          v63 = *(self + 173);
          v64 = *(self + 174);
          v65 = *(self + 175);
          v66 = [v11 image];
          v93.origin.x = v62;
          v93.origin.y = v63;
          v93.size.width = v64;
          v93.size.height = v65;
          CGContextDrawImage(v8, v93, v66);
        }

        v67 = *(self + 156);
        v68 = *(self + 157);
        v69 = *(self + 158);
        v70 = *(self + 159);
        v71 = [v13 image];
        v94.origin.x = v67;
        v94.origin.y = v68;
        v94.size.width = v69;
        v94.size.height = v70;
        CGContextDrawImage(v8, v94, v71);
      }
    }

    v31 = *(self + 215);
    for (i = *(self + 214); i != v31; i += 32)
    {
      CGContextSetRGBFillColor(v8, *(i + 16), *(i + 20), *(i + 24), *(i + 28));
      v89.origin.x = *i + -2.0;
      v89.origin.y = *(i + 8) + -2.0;
      v89.size.width = 4.0;
      v89.size.height = 4.0;
      CGContextFillRect(v8, v89);
    }

    v33 = *(self + 217);
    v34 = *(self + 218);
    while (v33 != v34)
    {
      CGContextSetRGBStrokeColor(v8, *(v33 + 32), *(v33 + 36), *(v33 + 40), *(v33 + 44));
      CGContextStrokeRect(v8, *v33);
      v33 += 48;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (*(self + 1))
    {
      CGContextSetTextPosition(v8, *(self + 146), *(self + 147));
      CTLineDraw(*(self + 1), v8);
    }

    else
    {
      v35 = *(self + 2);
      if (v35 || *(self + 3) && (Mutable = CGPathCreateMutable(), CGPathAddRect(Mutable, 0, *(self + 37)), v84.location = 0, v84.length = 0, *(self + 2) = CTFramesetterCreateFrame(*(self + 3), v84, Mutable, 0), CFRelease(*(self + 3)), *(self + 3) = 0, CFRelease(Mutable), (v35 = *(self + 2)) != 0))
      {
        CTFrameDraw(v35, v8);
      }
    }

    v36 = *(self + 211);
    if (v36)
    {
      v37 = md::LabelIcon::image(v36);
      v38 = [v37 image];
    }

    else
    {
      v38 = *(self + 213);
      if (!v38)
      {
LABEL_36:
        Image = CGBitmapContextCreateImage(v8);
        CGContextRelease(v8);
        v40 = [VKImage alloc];
        v41 = *(self + 6);
        v42 = *(self + 221);
        v73 = *(self + 220);
        v74 = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = [(VKImage *)v40 initWithCGImage:Image scale:&v73 resourceStore:v41];
        v44 = v43;
        objc_storeStrong(self + 231, v43);

        if (v74)
        {
          std::__shared_weak_count::__release_weak(v74);
        }

        CGImageRelease(Image);
        v3 = *(self + 231);
        goto LABEL_41;
      }
    }

    CGContextDrawImage(v8, *(self + 1096), v38);
    goto LABEL_36;
  }

LABEL_42:
  std::mutex::unlock((self + 1776));

  return v8;
}

- (char)initWithLine:(const void *)a3 signMetrics:(_OWORD *)a4 textMetrics:(__int128 *)a5 signColoring:(void *)a6 glyph:(uint64_t *)a7 cgGlyph:(CGImage *)a8 resourceStore:(uint64_t *)a9
{
  v58.receiver = a1;
  v58.super_class = VKRoadSignArtwork;
  v15 = [(VKRoadSignArtwork *)&v58 init];
  v16 = v15;
  if (v15)
  {
    v17 = a4[1];
    *(v15 + 2) = *a4;
    *(v15 + 3) = v17;
    v18 = a4[2];
    v19 = a4[3];
    v20 = a4[5];
    *(v15 + 6) = a4[4];
    *(v15 + 7) = v20;
    *(v15 + 4) = v18;
    *(v15 + 5) = v19;
    v21 = a4[6];
    v22 = a4[7];
    v23 = a4[9];
    *(v15 + 10) = a4[8];
    *(v15 + 11) = v23;
    *(v15 + 8) = v21;
    *(v15 + 9) = v22;
    v24 = *a5;
    v25 = a5[1];
    v26 = a5[2];
    *(v15 + 30) = *(a5 + 6);
    *(v15 + 13) = v25;
    *(v15 + 14) = v26;
    *(v15 + 12) = v24;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v15 + 31, a5 + 7);
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v16 + 35, a5 + 11);
    v27 = *(a5 + 120);
    *(v16 + 164) = *(a5 + 68);
    *(v16 + 312) = v27;
    v28 = a6 + 1;
    *(v16 + 177) = *a6;
    for (i = 178; i != 182; ++i)
    {
      v30 = *v28++;
      *&v16[8 * i] = v30;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      v33 = 0;
      v34 = v31;
      v35 = &v16[32 * v32 + 1456];
      v36 = &a6[4 * v32 + 5];
      do
      {
        *(v35 + v33) = *(v36 + v33);
        v33 += 8;
      }

      while (v33 != 32);
      v31 = 1;
      v32 = 1;
    }

    while ((v34 & 1) == 0);
    v37 = a6 + 13;
    for (j = 190; j != 194; ++j)
    {
      v39 = *v37++;
      *&v16[8 * j] = v39;
    }

    v40 = a6 + 17;
    do
    {
      v41 = *v40++;
      *&v16[8 * j++] = v41;
    }

    while (j != 198);
    v42 = a6 + 21;
    do
    {
      v43 = *v42++;
      *&v16[8 * j++] = v43;
    }

    while (j != 202);
    v44 = a6 + 25;
    do
    {
      v45 = *v44++;
      *&v16[8 * j++] = v45;
    }

    while (j != 206);
    v46 = a6 + 29;
    do
    {
      v47 = *v46++;
      *&v16[8 * j++] = v47;
    }

    while (j != 210);
    *(v16 + 210) = a6[33];
    v49 = *a7;
    v48 = a7[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    *(v16 + 211) = v49;
    v50 = *(v16 + 212);
    *(v16 + 212) = v48;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    *(v16 + 213) = a8;
    if (a3)
    {
      v51 = CFRetain(a3);
    }

    else
    {
      v51 = 0;
    }

    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = v51;
    v53 = *a9;
    v52 = a9[1];
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 16), 1uLL, memory_order_relaxed);
    }

    *(v16 + 220) = v53;
    v54 = *(v16 + 221);
    *(v16 + 221) = v52;
    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    md::RoadSignGeneratedMetrics::RoadSignGeneratedMetrics(__src, (v16 + 32), (v16 + 192));
    memcpy(v16 + 336, __src, 0x438uLL);
    if (*(v16 + 213))
    {
      CGImageRetain(a8);
    }

    v55 = v16;
  }

  return v16;
}

- (char)initWithFramesetter:(const void *)a3 signMetrics:(_OWORD *)a4 textMetrics:(__int128 *)a5 signColoring:(void *)a6 glyph:(uint64_t *)a7 cgGlyph:(CGImage *)a8 resourceStore:(uint64_t *)a9
{
  v58.receiver = a1;
  v58.super_class = VKRoadSignArtwork;
  v15 = [(VKRoadSignArtwork *)&v58 init];
  v16 = v15;
  if (v15)
  {
    v17 = a4[1];
    *(v15 + 2) = *a4;
    *(v15 + 3) = v17;
    v18 = a4[2];
    v19 = a4[3];
    v20 = a4[5];
    *(v15 + 6) = a4[4];
    *(v15 + 7) = v20;
    *(v15 + 4) = v18;
    *(v15 + 5) = v19;
    v21 = a4[6];
    v22 = a4[7];
    v23 = a4[9];
    *(v15 + 10) = a4[8];
    *(v15 + 11) = v23;
    *(v15 + 8) = v21;
    *(v15 + 9) = v22;
    v24 = *a5;
    v25 = a5[1];
    v26 = a5[2];
    *(v15 + 30) = *(a5 + 6);
    *(v15 + 13) = v25;
    *(v15 + 14) = v26;
    *(v15 + 12) = v24;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v15 + 31, a5 + 7);
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v16 + 35, a5 + 11);
    v27 = *(a5 + 120);
    *(v16 + 164) = *(a5 + 68);
    *(v16 + 312) = v27;
    v28 = a6 + 1;
    *(v16 + 177) = *a6;
    for (i = 178; i != 182; ++i)
    {
      v30 = *v28++;
      *&v16[8 * i] = v30;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      v33 = 0;
      v34 = v31;
      v35 = &v16[32 * v32 + 1456];
      v36 = &a6[4 * v32 + 5];
      do
      {
        *(v35 + v33) = *(v36 + v33);
        v33 += 8;
      }

      while (v33 != 32);
      v31 = 1;
      v32 = 1;
    }

    while ((v34 & 1) == 0);
    v37 = a6 + 13;
    for (j = 190; j != 194; ++j)
    {
      v39 = *v37++;
      *&v16[8 * j] = v39;
    }

    v40 = a6 + 17;
    do
    {
      v41 = *v40++;
      *&v16[8 * j++] = v41;
    }

    while (j != 198);
    v42 = a6 + 21;
    do
    {
      v43 = *v42++;
      *&v16[8 * j++] = v43;
    }

    while (j != 202);
    v44 = a6 + 25;
    do
    {
      v45 = *v44++;
      *&v16[8 * j++] = v45;
    }

    while (j != 206);
    v46 = a6 + 29;
    do
    {
      v47 = *v46++;
      *&v16[8 * j++] = v47;
    }

    while (j != 210);
    *(v16 + 210) = a6[33];
    v49 = *a7;
    v48 = a7[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    *(v16 + 211) = v49;
    v50 = *(v16 + 212);
    *(v16 + 212) = v48;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    *(v16 + 213) = a8;
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    if (a3)
    {
      v51 = CFRetain(a3);
    }

    else
    {
      v51 = 0;
    }

    *(v16 + 3) = v51;
    v53 = *a9;
    v52 = a9[1];
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 16), 1uLL, memory_order_relaxed);
    }

    *(v16 + 220) = v53;
    v54 = *(v16 + 221);
    *(v16 + 221) = v52;
    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    if (*(v16 + 213))
    {
      CGImageRetain(a8);
    }

    md::RoadSignGeneratedMetrics::RoadSignGeneratedMetrics(__src, (v16 + 32), (v16 + 192));
    memcpy(v16 + 336, __src, 0x438uLL);
    v55 = v16;
  }

  return v16;
}

@end