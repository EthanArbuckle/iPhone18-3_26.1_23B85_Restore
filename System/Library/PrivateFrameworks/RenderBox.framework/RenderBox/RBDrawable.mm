@interface RBDrawable
- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor;
- (CGSize)size;
- (RBDrawable)initWithDevice:(id)device;
- (RBDrawableDelegate)delegate;
- (id).cxx_construct;
- (id)statisticsHandler;
- (uint64_t)statisticsHandler;
- (unint64_t)GPUPriority;
- (unint64_t)backgroundGPUPriority;
- (void)dealloc;
- (void)dumpTexture:(id)texture name:(id)name;
- (void)renderDisplayList:(id)list flags:(unsigned int)flags;
- (void)renderDisplayList:(id)list sourceRect:(id *)rect destinationOffset:(id *)offset flags:(unsigned int)flags;
- (void)renderItems:(id)items flags:(unsigned int)flags;
- (void)renderWithFlags:(uint64_t)flags items:(uint64_t)items count:(void *)count displayList:;
- (void)setBackgroundGPUPriority:(unint64_t)priority;
- (void)setClearColor:(id)color;
- (void)setCompletedHandler:(id)handler;
- (void)setErrorHandler:(id)handler;
- (void)setEvent:(id)event;
- (void)setGPUPriority:(unint64_t)priority;
- (void)setLabel:(id)label;
- (void)setScheduledHandler:(id)handler;
- (void)setStatisticsHandler:(id)handler;
- (void)setTexture:(id)texture;
@end

@implementation RBDrawable

- (id).cxx_construct
{
  *(self + 68) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    RB::Drawable::set_statistics_handler(v3, 0);
  }

  v4.receiver = self;
  v4.super_class = RBDrawable;
  [(RBDrawable *)&v4 dealloc];
}

- (RBDrawable)initWithDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = RBDrawable;
  v4 = [(RBDrawable *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 3);
    if (v6 != device)
    {

      *(v5 + 3) = device;
    }

    *(v5 + 13) = 0x3FF0000000000000;
    *(v5 + 21) = 0;
    *(v5 + 22) = 0;
    *(v5 + 23) = 1065353216;
    operator new();
  }

  return 0;
}

- (unint64_t)GPUPriority
{
  if (*(self + 81) == 1)
  {
    return *(self + 80);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setGPUPriority:(unint64_t)priority
{
  if (priority == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(self + 81) == 1)
    {
      *(self + 81) = 0;
    }
  }

  else
  {
    *(self + 40) = priority | 0x100;
  }
}

- (unint64_t)backgroundGPUPriority
{
  if (*(self + 83) == 1)
  {
    return *(self + 82);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setBackgroundGPUPriority:(unint64_t)priority
{
  if (priority == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(self + 83) == 1)
    {
      *(self + 83) = 0;
    }
  }

  else
  {
    *(self + 41) = priority | 0x100;
  }
}

- (RBDrawableDelegate)delegate
{
  v2 = objc_loadWeakRetained(self + 2);

  return v2;
}

- (void)setTexture:(id)texture
{
  v4 = *(self + 4);
  if (v4 != texture)
  {

    *(self + 4) = texture;
  }
}

- (void)setLabel:(id)label
{
  v4 = [label copy];

  *(self + 5) = v4;
}

- (void)setEvent:(id)event
{
  v4 = *(self + 6);
  if (v4 != event)
  {

    *(self + 6) = event;
  }
}

- (void)setScheduledHandler:(id)handler
{
  v4 = [handler copy];

  *(self + 7) = v4;
}

- (void)setCompletedHandler:(id)handler
{
  v4 = [handler copy];

  *(self + 8) = v4;
}

- (void)setErrorHandler:(id)handler
{
  v4 = [handler copy];

  *(self + 9) = v4;
}

- (void)renderDisplayList:(id)list flags:(unsigned int)flags
{
  memset(v4, 0, sizeof(v4));
  v5[0] = 0;
  v5[1] = 0;
  v6 = vcvtq_u64_f64(*(self + 8));
  [(RBDrawable *)self renderDisplayList:list sourceRect:v5 destinationOffset:v4 flags:*&flags];
}

- (void)renderDisplayList:(id)list sourceRect:(id *)rect destinationOffset:(id *)offset flags:(unsigned int)flags
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(self + 24);
  if (v7 >= 3)
  {
    abort();
  }

  v8 = *&flags;
  v6.i64[0] = *(self + 18);
  v6.i32[2] = *(self + 38);
  v25 = v6;
  v24 = *(self + 39);
  _rb_contents = [list _rb_contents];
  if (_rb_contents)
  {
    v14 = vmovn_s64(*&rect->var2);
    v15 = vclez_s32(v14);
    if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
    {
      v16 = _rb_contents;
      v17 = vmovn_s64(*&rect->var0);
      if (*(_rb_contents + 424) == 1)
      {
        RB::DisplayList::Builder::Builder(v27);
        RB::DisplayList::Builder::set_optimized(v27, 1);
        v18.i32[0] = 0;
        v19 = vceq_s32(v14, 0x8000000080000000);
        v20 = vdup_lane_s32(vcgt_s32(v18, vpmin_u32(v19, v19)), 0);
        RB::DisplayList::Builder::set_crop(v27, v33, vbsl_s8(v20, 0x100000001000000, vcvt_f32_s32(v17)), vbsl_s8(v20, vneg_f32(0x80000000800000), vcvt_f32_s32(v14)));
        RB::DisplayList::Builder::draw(v27, v16, v31, 1.0, 0, 0);
        RB::DisplayList::Builder::move_contents(v27, v21, &v26);
        v22 = v26;
        RB::DisplayList::Builder::~Builder(v27);
        v16 = v22;
      }

      else
      {
        v22 = 0;
      }

      v23 = v25;
      v23.i32[3] = 1.0;
      v27[0] = v16;
      v27[1] = 0;
      v27[2] = v17;
      v27[3] = v14;
      v27[4] = vmovn_s64(*&offset->var0);
      v28 = *(self + 23);
      v29 = v7;
      v30 = vmulq_n_f32(v23, v24);
      [(RBDrawable *)self renderWithFlags:v8 items:v27 count:1 displayList:list];
      if (v22)
      {
        if (atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBDisplayList moveContents];
        }
      }
    }
  }
}

- (void)renderWithFlags:(uint64_t)flags items:(uint64_t)items count:(void *)count displayList:
{
  if (!self)
  {
    return;
  }

  v6 = vmovn_s64(vcvtq_s64_f64(*(self + 128)));
  v7 = vclez_s32(v6);
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0 || *(self + 104) == 0.0)
  {
    return;
  }

  v11 = a2;
  pixelFormat = *(self + 112);
  if (!pixelFormat)
  {
    v13 = *(self + 32);
    if (v13)
    {
      pixelFormat = [v13 pixelFormat];
    }

    else
    {
      pixelFormat = 80;
    }
  }

  v14 = RB::pixel_format_traits(pixelFormat, a2);
  v15 = v14;
  v16 = v14[1] & 2;
  if ((v14[1] & 0x10) != 0)
  {
    v17 = rb_color_space(*(self + 84));
    v18 = (v17 >> 8) & 1;
    goto LABEL_12;
  }

  if ((v14[1] & 2) != 0)
  {
    v20 = *(v14 + 18);
    v17 = rb_color_space(*(self + 84));
    v18 = (v17 >> 8) & 1;
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_12:
    v19 = 1;
    goto LABEL_15;
  }

  v17 = rb_color_space(*(self + 84));
  v18 = (v17 >> 8) & 1;
LABEL_14:
  v19 = 17;
LABEL_15:
  if (v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  v22 = rb_color_space(*(self + 88));
  if (*(v15 + 17))
  {
    v24 = *(v15 + 16);
  }

  else
  {
    v24 = v21;
  }

  if ((v22 & 0x100) != 0)
  {
    v24 = v22;
  }

  v32 = v24;
  if (v21 >= 0x10u && (v21 & 0xF0) != 16)
  {
    RB::ColorMode::pixel_format(v22, v23);
  }

  WeakRetained = objc_loadWeakRetained((self + 16));
  v36 = *(self + 24);
  v26 = *(self + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
  }

  v34 = *(self + 32);
  v31 = *(self + 48);
  v27 = *(self + 120);
  *(self + 120) = v27 + 1;
  v30 = *(self + 56);
  v29 = *(self + 64);
  v28 = *(self + 72);
  v33 = *(self + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke;
  block[3] = &unk_1F0A3EAB0;
  v38 = v34;
  v39 = WeakRetained;
  block[4] = self;
  v52 = v11;
  v40 = v36;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
  }

  v41 = v26;
  v42 = v33;
  v43 = pixelFormat;
  v44 = v6;
  v53 = v32;
  v54 = v21;
  v55 = v16 >> 1;
  flagsCopy = flags;
  itemsCopy = items;
  v47 = v30;
  v48 = v29;
  v49 = v28;
  block[5] = count;
  v50 = v31;
  v51 = v27;
  RB::Drawable::begin_frame(v26);
  if ((v11 & 8) != 0)
  {
    dispatch_async([v36 queue], block);
    if (!count)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  dispatch_sync([v36 queue], block);
  if (count)
  {
LABEL_36:
    RBXMLRecorderMarkFrame(self, count, v32, *(self + 128), *(self + 136));
  }

LABEL_37:

  if (v41 && atomic_fetch_add_explicit(v41 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
  }

  if (v26)
  {
    if (atomic_fetch_add_explicit(v26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }
  }
}

- (void)renderItems:(id)items flags:(unsigned int)flags
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = [items count];
  if (!(v7 >> 58))
  {
    v51 = v7 << 6;
    if (v7 << 6 <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](v7, v8);
      v9 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, v10);
    }

    else
    {
      v9 = malloc_type_malloc(v7 << 6, 0x10E004033E69A99uLL);
      if (!v9)
      {
LABEL_50:
        free(v9);
        return;
      }
    }

    v67 = 0;
    v68 = 0x800000000;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = [items countByEnumeratingWithState:&v58 objects:v65 count:16];
    selfCopy = self;
    flagsCopy = flags;
    v12 = 0;
    if (v11)
    {
      v13 = *v59;
      v14 = vneg_f32(0x80000000800000);
      __asm { FMOV            V0.4S, #1.0 }

      v52 = _Q0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(items);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
          displayList = [v21 displayList];
          if (displayList)
          {
            _rb_contents = [displayList _rb_contents];
            if (_rb_contents)
            {
              v24 = 0uLL;
              v56 = 0u;
              v57 = 0u;
              if (v21)
              {
                [v21 sourceRect];
                v24 = vuzp1q_s32(v56, v57);
              }

              v54 = v24;
              v53 = vextq_s8(v24, v24, 8uLL);
              v25 = vclez_s32(*v53.i8);
              if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) == 0)
              {
                if (*(_rb_contents + 424) == 1)
                {
                  RB::DisplayList::Builder::Builder(&v62);
                  RB::DisplayList::Builder::set_optimized(&v62, 1);
                  v26.i32[0] = 0;
                  v27 = vceq_s32(*v53.i8, 0x8000000080000000);
                  v28 = vdup_lane_s32(vcgt_s32(v26, vpmin_u32(v27, v27)), 0);
                  RB::DisplayList::Builder::set_crop(&v62, v70, vbsl_s8(v28, 0x100000001000000, vcvt_f32_s32(*v54.i8)), vbsl_s8(v28, v14, vcvt_f32_s32(*v53.i8)));
                  RB::DisplayList::Builder::draw(&v62, _rb_contents, v64, 1.0, 0, 0);
                  RB::DisplayList::Builder::move_contents(&v62, v29, &v55);
                  v30 = v68;
                  v31 = v68 + 1;
                  if (HIDWORD(v68) < (v68 + 1))
                  {
                    RB::vector<RB::objc_ptr<void({block_pointer})(NSError *)>,8ul,unsigned int>::reserve_slow(__dst, v31);
                    v30 = v68;
                    v31 = v68 + 1;
                  }

                  v32 = v67;
                  if (!v67)
                  {
                    v32 = __dst;
                  }

                  *&v32[8 * v30] = v55;
                  LODWORD(v68) = v31;
                  _rb_contents = *&v32[8 * v30];
                  RB::DisplayList::Builder::~Builder(&v62);
                }

                v33 = &v9[64 * v12];
                v33->i64[0] = _rb_contents;
                v34 = v53.i64[0];
                v33[1].i64[0] = v54.i64[0];
                v33[1].i64[1] = v34;
                v62 = 0uLL;
                v63 = 0;
                if (v21)
                {
                  [v21 destinationOffset];
                  v35 = vmovn_s64(v62);
                }

                else
                {
                  v35 = 0;
                }

                *v33[2].f32 = v35;
                [v21 targetHeadroom];
                v33[2].i32[2] = v36;
                initialState = [v21 initialState];
                switch(initialState)
                {
                  case 2:
                    v33[2].i32[3] = 2;
                    [v21 clearColor];
                    v40.i64[0] = __PAIR64__(v39, v38);
                    v40.i64[1] = __PAIR64__(HIDWORD(v52), v41);
                    v33[3] = vmulq_n_f32(v40, v42);
                    break;
                  case 1:
                    v33[2].i32[3] = 1;
                    break;
                  case 0:
                    v33[2].i32[3] = 0;
                    break;
                }

                ++v12;
              }
            }
          }
        }

        v11 = [items countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v11);
    }

    if ([items count] == 1)
    {
      v43 = [objc_msgSend(items objectAtIndexedSubscript:{0), "displayList"}];
    }

    else
    {
      v43 = 0;
    }

    [(RBDrawable *)selfCopy renderWithFlags:flagsCopy items:v9 count:v12 displayList:v43];
    v44 = v67;
    if (v67)
    {
      v45 = v67;
    }

    else
    {
      v45 = __dst;
    }

    if (v68)
    {
      v46 = 0;
      do
      {
        v47 = *&v45[8 * v46];
        if (v47 && atomic_fetch_add_explicit((v47 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBDisplayList moveContents];
        }

        ++v46;
      }

      while (v46 < v68);
      v44 = v67;
    }

    if (v44)
    {
      free(v44);
    }

    if (v51 > 0x1000)
    {
      goto LABEL_50;
    }
  }
}

void __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3052000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v41 = __Block_byref_object_dispose__1;
  v42 = v4;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3321888768;
  v31 = __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke_3;
  v32 = &unk_1F0A3EA48;
  v34 = &v37;
  v35 = &v43;
  v36 = v3;
  v33 = *(a1 + 32);
  v5 = *(a1 + 160);
  v6 = [(RBDecodedFontMetadata *)*(a1 + 64) fontUID];
  if (*(a1 + 80))
  {
    v7 = *(a1 + 80);
  }

  else
  {
    v7 = @"RBDrawable";
  }

  RB::RenderFrame::RenderFrame(v49, v6, *(a1 + 72), 0, v7, (v5 & 5) != 0);
  v8 = *(a1 + 32);
  v51 = *(v8 + 80);
  v52 = *(v8 + 82);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 164);
  v12 = *(a1 + 165);
  v14 = RB::pixel_format_required_component(v9, v13);
  RB::RenderParams::RenderParams(&v28, v49, v9, v11, v12, v14, *(a1 + 166), v10);
  v15 = *(a1 + 160);
  v16 = (v15 >> 2) & 4;
  if (v15 < 0)
  {
    LOBYTE(v16) = 0;
  }

  v29 = v16 | v15 & 0x20 | (v15 >> 4) & 8 | v29 & 0xD3;
  RB::DisplayList::render_many(&v28, v30, *(a1 + 104), *(a1 + 112));
  v17 = *(a1 + 120);
  if (v17)
  {
    RB::RenderFrame::add_scheduled_handler(v49, v17);
  }

  v18 = *(a1 + 136);
  if (*(a1 + 128) != 0)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3321888768;
    v25[2] = __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke_10;
    v25[3] = &__block_descriptor_48_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE40c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE_e17_v16__0__NSError_8l;
    v26 = v18;
    v27 = *(a1 + 128);
    RB::RenderFrame::add_completed_handler(v49, v25);
  }

  if ((*(v49[0] + 340) & 2) != 0)
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      if (v50 != v19)
      {

        v50 = v19;
      }
    }
  }

  v20 = *(a1 + 160);
  if ((v20 & 0x40) != 0)
  {
    v21 = v31(v30);
    RB::RenderFrame::generate_mipmaps(v49, v21);
    v20 = *(a1 + 160);
  }

  if (v20)
  {
    if (!v38[5])
    {
      v31(v30);
    }

    if (v44[5])
    {
      v22 = objc_opt_respondsToSelector();
      v23 = 0.0;
      if (v22)
      {
        [*(a1 + 56) RBDrawablePresentationTime:{*(a1 + 32), 0.0}];
      }

      RB::RenderFrame::present(v49, v44[5], v23);
    }
  }

  if ((*(a1 + 160) & 2) != 0)
  {
    v31(v30);
    RBStrokeRef::clip(v49);
  }

  v24 = *(a1 + 144);
  if (v24)
  {
    RB::RenderFrame::signal_event(v49, v24, *(a1 + 152));
  }

  RB::RenderFrame::~RenderFrame(v49);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  objc_autoreleasePoolPop(v2);
}

uint64_t __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke_3(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [objc_msgSend(*(a1 + 56) RBDrawableLayer:{*(a1 + 32)), "nextDrawable"}];
      *(*(*(a1 + 48) + 8) + 40) = v2;
      v3 = [v2 texture];
LABEL_6:
      *(*(*(a1 + 40) + 8) + 40) = v3;
      return *(*(*(a1 + 40) + 8) + 40);
    }

    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 56) RBDrawableTexture:*(a1 + 32)];
      goto LABEL_6;
    }
  }

  return *(*(*(a1 + 40) + 8) + 40);
}

uint64_t __54__RBDrawable_renderWithFlags_items_count_displayList___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      return (*(v2 + 16))(*(a1 + 32));
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dumpTexture:(id)texture name:(id)name
{
  queue = [*(self + 3) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RBDrawable_dumpTexture_name___block_invoke;
  block[3] = &unk_1E744CBE0;
  block[4] = self;
  block[5] = name;
  block[6] = texture;
  dispatch_sync(queue, block);
}

uint64_t __31__RBDrawable_dumpTexture_name___block_invoke(void *a1)
{
  v2 = [(RBDecodedFontMetadata *)*(a1[4] + 24) fontUID];
  v3 = [RB::Device::command_queue(v2 1)];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v5 = [v3 debugCommandEncoder];
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        v8 = [v7 UTF8String];
      }

      else
      {
        v8 = "RBDrawable_texture";
      }

      [v5 dumpTexture:a1[6] name:v8];
    }

    else
    {
      v10 = RB::error_log(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __31__RBDrawable_dumpTexture_name___block_invoke_cold_2(v5, v10);
      }
    }

    [v5 endEncoding];
  }

  else
  {
    v9 = RB::error_log(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __31__RBDrawable_dumpTexture_name___block_invoke_cold_1(v3, v9);
    }
  }

  [v3 commit];
  return [v3 waitUntilCompleted];
}

- (id)statisticsHandler
{
  RB::Drawable::statistics_handler(*(self + 1), &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 16);
  if (v4 && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable statisticsHandler];
  }

  return v2;
}

- (void)setStatisticsHandler:(id)handler
{
  if (handler)
  {
    operator new();
  }

  v3 = *(self + 1);

  RB::Drawable::set_statistics_handler(v3, 0);
}

- (CGSize)size
{
  v2 = *(self + 16);
  v3 = *(self + 17);
  result.height = v3;
  result.width = v2;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor
{
  v2 = *(self + 36);
  v3 = *(self + 37);
  v4 = *(self + 38);
  v5 = *(self + 39);
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)setClearColor:(id)color
{
  *(self + 36) = LODWORD(color.var0);
  *(self + 37) = LODWORD(color.var1);
  *(self + 38) = LODWORD(color.var2);
  *(self + 39) = LODWORD(color.var3);
}

- (uint64_t)renderDisplayList:(uint64_t)a1 sourceRect:destinationOffset:flags:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_0();
    result = (*(v6 + 8))();
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

- (uint64_t)renderWithFlags:(uint64_t)result items:count:displayList:.cold.4(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

void __31__RBDrawable_dumpTexture_name___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_195CE8000, a2, OS_LOG_TYPE_ERROR, "%@ does not respond to -debugCommandEncoder", &v2, 0xCu);
}

void __31__RBDrawable_dumpTexture_name___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_195CE8000, a2, OS_LOG_TYPE_ERROR, "%@ does not respond to -dumpTexture:name:", &v2, 0xCu);
}

- (uint64_t)statisticsHandler
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

@end