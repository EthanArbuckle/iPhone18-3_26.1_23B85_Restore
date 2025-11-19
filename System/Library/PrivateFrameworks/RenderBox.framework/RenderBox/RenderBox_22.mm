void RB::Surface::remove_queue_id(os_unfair_lock_s *this, _CAImageQueue *a2)
{
  os_unfair_lock_lock(this + 3);
  v4 = *&this[28]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = 0;
    do
    {
      if (*&this[26]._os_unfair_lock_opaque)
      {
        v6 = *&this[26]._os_unfair_lock_opaque;
      }

      else
      {
        v6 = this + 18;
      }

      v7 = &v6[4 * v5];
      v8 = *v7;
      if (*v7 == a2)
      {
        v9 = &v6[4 * v4];
        v10 = v7[1];
        v11 = *(v9 - 1);
        *v7 = *(v9 - 2);
        v7[1] = v11;
        *(v9 - 2) = v8;
        *(v9 - 1) = v10;
        *&this[28]._os_unfair_lock_opaque = --v4;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v4);
  }

  os_unfair_lock_unlock(this + 3);
}

void *RB::vector<RB::cf_ptr<_CAImageQueue *>,8ul,unsigned long>::~vector(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v6 = v4[i];
      if (v6)
      {
        CFRelease(v6);
        v3 = a1[9];
      }
    }

    v2 = a1[8];
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t ___ZN2RB11SurfacePool7collectEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 16) = 0x7FF0000000000000;
  return RB::SurfacePool::collect(v1, 0);
}

uint64_t RB::SurfacePool::print_locked(RB::SurfacePool *this, int a2)
{
  v4 = CACurrentMediaTime();
  printf("SurfacePool %p at %f\n", this, v4);
  v5 = *(this + 11);
  if (*(this + 10))
  {
    v6 = *(this + 10);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v5)
  {
    v7 = &v6[2 * v5];
    do
    {
      printf("  Erased Queue %p; deadline %f\n", *v6, v6[1]);
      v6 += 2;
    }

    while (v6 != v7);
  }

  v19 = this;
  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 3);
    v10 = &v9[v8];
    do
    {
      if (HIBYTE((*v9)[40]._os_unfair_lock_opaque))
      {
        v11 = " volatile";
      }

      else
      {
        v11 = "";
      }

      printf("  Surface %p; [%d %d]; IOSurface %lx%s; owner %p; last used %f\n", *v9, *&(*v9)[6]._os_unfair_lock_opaque, HIDWORD(*&(*v9)[6]._os_unfair_lock_opaque), (*v9)[11]._os_unfair_lock_opaque, v11, *&(*v9)[32]._os_unfair_lock_opaque, *&(*v9)[36]._os_unfair_lock_opaque);
      if (a2)
      {
        v12 = *v9;
        os_unfair_lock_lock(*v9 + 3);
        v13 = *&(*v9)[28]._os_unfair_lock_opaque;
        if (*&(*v9)[26]._os_unfair_lock_opaque)
        {
          v14 = *&(*v9)[26]._os_unfair_lock_opaque;
        }

        else
        {
          v14 = &(*v9)[18];
        }

        if (v13)
        {
          v15 = v14 + 16 * v13;
          do
          {
            v16 = *v14;
            v17 = *(v14 + 8);
            v14 += 16;
            printf("    queue %p -> %llx\n", v16, v17);
          }

          while (v14 != v15);
        }

        os_unfair_lock_unlock(v12 + 3);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return printf("  Resident: %.2f MB (max %.2f), volatile: %.2f MB (max %.2f).\n\n", v19[18] * 0.000000953674316, v19[20] * 0.000000953674316, v19[19] * 0.000000953674316, v19[21] * 0.000000953674316);
}

void RB::SurfacePool::watch_queue(RB::SurfacePool *this, _CAImageQueue *a2, CALayer *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 134218496;
    v14 = CACurrentMediaTime();
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_195CE8000, v6, OS_LOG_TYPE_INFO, "%f: watch_queue: %p, %p\n", &v13, 0x20u);
  }

  os_unfair_lock_lock(this);
  v7 = *(this + 13);
  v8 = *(this + 14);
  if (v8)
  {
    v9 = (v7 + 8);
    v10 = 16 * v8;
    while (*(v9 - 1) != a2 || *v9 != a3)
    {
      v9 += 2;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = v8 + 1;
    if (*(this + 15) < (v8 + 1))
    {
      RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(this + 104, v11);
      v7 = *(this + 13);
      v8 = *(this + 14);
      v11 = v8 + 1;
    }

    v12 = (v7 + 16 * v8);
    *v12 = a2;
    v12[1] = a3;
    *(this + 14) = v11;
  }

  os_unfair_lock_unlock(this);
}

void ___ZN2RB11SurfacePool27remove_watched_queue_lockedEP13_CAImageQueueb_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(*(a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setNeedsDisplay];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    objc_destroyWeak(v4);

    JUMPOUT(0x19A8C09E0);
  }
}

uint64_t RB::Surface::Surface(uint64_t a1, MTLPixelFormat a2, RB *this, unsigned __int8 a4, int a5, double a6)
{
  *a1 = &unk_1F0A383F8;
  *(a1 + 8) = 1;
  *(a1 + 16) = a2;
  *(a1 + 24) = a6;
  *(a1 + 32) = this;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  v10 = (a1 + 48);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a4;
  *(a1 + 161) = RB::pixel_format_bytes_per_pixel(this, a2);
  *(a1 + 162) = 0;
  *(a1 + 164) = 0;
  iosurface = RB::create_iosurface(this, LODWORD(a6), HIDWORD(a6), a5);
  if (*v10)
  {
    CFRelease(*v10);
  }

  *v10 = iosurface;
  if (iosurface)
  {
    *(a1 + 44) = IOSurfaceGetID(iosurface);
    v13 = *(RB::pixel_format_traits(this, v12) + 4);
    if ((v13 & 0x10) != 0)
    {
      v14 = a4 & 0xF | 0x10;
    }

    else
    {
      v14 = a4;
    }

    {
      operator new();
    }

    v15 = v13 & 0xA;
    v40[0] = v14;
    if (v15)
    {
      v17 = v14 | 0x80000000;
    }

    else
    {
      v17 = v14;
    }

    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = &v18[4 * v19];
    while (v19)
    {
      v21 = v19 >> 1;
      v22 = &v18[4 * (v19 >> 1)];
      v24 = *v22;
      v23 = v22 + 4;
      v19 += ~(v19 >> 1);
      if (v24 < v17)
      {
        v18 = v23;
      }

      else
      {
        v19 = v21;
      }
    }

    if (v18 == v20 || *v18 != v17)
    {
      v26 = RB::ColorSpace::cg_color_space(v40, v15 != 0);
      if (v26)
      {
        v25 = CGColorSpaceCopyPropertyList(v26);
      }

      else
      {
        v25 = 0;
      }

      v27 = v40[0];
      v29 = *(v16 + 8);
      v28 = *(v16 + 16);
      if (*(v16 + 24) < v28 + 1)
      {
        RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(v16 + 8, v28 + 1);
        v30 = *(v16 + 8);
        v28 = *(v16 + 16);
      }

      else
      {
        v30 = *(v16 + 8);
      }

      v31 = v18 - v29;
      if (v28 > v31 >> 4)
      {
        memmove((v30 + v31 + 16), (v30 + v31), 16 * (v28 - (v31 >> 4)));
        v28 = *(v16 + 16);
      }

      v32 = v30 + v31;
      *v32 = v27;
      *(v32 + 8) = v25;
      *(v16 + 16) = v28 + 1;
    }

    else
    {
      v25 = *(v18 + 1);
    }

    os_unfair_lock_unlock(v16);
    if (v25)
    {
      IOSurfaceSetValue(*v10, *MEMORY[0x1E696CEE0], v25);
      return a1;
    }

    v33 = a4 & 0xF;
    v34 = -64;
    if (v33 <= 3)
    {
      if (v33 < 2)
      {
        v35 = 1;
      }

      else if (v33 == 2)
      {
        v35 = 12;
      }

      else
      {
        if (v33 != 3)
        {
          goto LABEL_46;
        }

        v35 = 9;
      }
    }

    else
    {
      if ((a4 & 0xFu) > 6)
      {
        if (v33 - 7 < 2)
        {
          v34 = 0x80;
        }

LABEL_46:
        v36 = v14 >> 4;
        if (v36 <= 3)
        {
          if ((v14 >> 4) > 1u)
          {
            if (v36 == 2)
            {
              v37 = 16;
            }

            else
            {
              if (v36 != 3)
              {
                goto LABEL_63;
              }

              v37 = 18;
            }
          }

          else if (v14 >> 4)
          {
            v37 = 13;
          }

          else
          {
            v37 = 8;
          }
        }

        else if (v36 - 4 < 2)
        {
          v37 = 1;
        }

        else
        {
          if (v36 - 7 < 2)
          {
            if ((v34 & 0x40) == 0)
            {
              return a1;
            }

LABEL_63:
            IOSurfaceSetBulkAttachments2();
            return a1;
          }

          if (v36 != 6)
          {
            goto LABEL_63;
          }

          v37 = 17;
        }

        v40[60] = v37;
        goto LABEL_63;
      }

      switch(v33)
      {
        case 4u:
          v35 = 5;
          break;
        case 5u:
          v35 = 6;
          break;
        case 6u:
          v35 = 11;
          break;
        default:
          goto LABEL_46;
      }
    }

    v40[59] = v35;
    v34 = -64;
    goto LABEL_46;
  }

  return a1;
}

void sub_195E2AB60(_Unwind_Exception *a1)
{

  v3 = *(v1 + 104);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Surface::texture(uint64_t a1, MTLPixelFormat a2, __int16 a3)
{
  result = *(a1 + 56);
  if (a2 && !result)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 24);
    v9 = 5;
    if ((RB::pixel_format_traits(v11, a2)[1] & 0x40) != 0 || (a3 & 0x100) != 0 && *(a1 + 160) != a3)
    {
      RB::Device::ensure_native_texture(a2, &v11, &v10, &v9);
    }

    v7 = objc_opt_new();
    [v7 setPixelFormat:v11];
    [v7 setWidth:v10];
    [v7 setHeight:SHIDWORD(v10)];
    [v7 setUsage:v9];
    v8 = [*(a2 + 24) newTextureWithDescriptor:v7 iosurface:*(a1 + 48) plane:0];

    *(a1 + 56) = v8;
    if (v8)
    {
      RB::Resource::set_label(v8, "surface-pool", RB::Surface::texture(RB::Device *,std::optional<RB::ColorSpace>)::counter);
    }

    return *(a1 + 56);
  }

  return result;
}

void RB::Surface::invalidate_iosurface(RB::Surface *this)
{
  os_unfair_lock_lock(this + 3);

  *(this + 8) = 0;
  v2 = *(this + 14);
  if (*(this + 13))
  {
    v3 = *(this + 13);
  }

  else
  {
    v3 = this + 72;
  }

  if (v2)
  {
    v4 = &v3[16 * v2];
    do
    {
      CAImageQueueUnregisterBuffer();
      v3 += 16;
    }

    while (v3 != v4);
  }

  *(this + 14) = 0;

  os_unfair_lock_unlock(this + 3);
}

void *RB::Surface::layer_contents(RB::Surface *this)
{
  os_unfair_lock_lock(this + 3);
  v2 = *(this + 8);
  if (!v2)
  {
    if (*(this + 6))
    {
      v2 = [[RBSurfaceContents alloc] initWithIOSurface:?];

      *(this + 8) = v2;
    }

    else
    {
      v2 = 0;
    }
  }

  os_unfair_lock_unlock(this + 3);
  return v2;
}

uint64_t RB::Refcount<RB::Surface,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return [RBImageQueueContents .cxx_destruct];
  }

  return result;
}

void std::stable_sort[abi:nn200100]<RB::DisplayList::EditAdaptor::Element *,RB::DisplayList::EditAdaptor::(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 < 3073)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E5398];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    while (1)
    {
      v8 = operator new(24 * v7, v6);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(a1, a2, v5, v11, v7, a3);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_195E2AFA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  v5 = *(*a2 + 32);
  if (v4 == v5)
  {
    goto LABEL_12;
  }

  if (!v4)
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = RB::DisplayList::Metadata::identity_ns(*(*a1 + 32));
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  v7 = RB::DisplayList::Metadata::identity_ns(v5);
LABEL_7:
  if (v6 == v7)
  {
    goto LABEL_12;
  }

  if (!v6 || !v7)
  {
    v12 = v6 >= v7;
    return !v12;
  }

  v8 = bswap64(*v6);
  v9 = bswap64(*v7);
  if (v8 == v9)
  {
    v8 = bswap64(v6[1]);
    v9 = bswap64(v7[1]);
    if (v8 == v9)
    {
LABEL_12:
      v10 = *(*a1 + 40);
      v11 = *(*a2 + 40);
      v12 = v10 >= v11;
      if (v10 == v11)
      {
        if (v4)
        {
          v13 = RB::DisplayList::Metadata::transition(v4);
          if (!v13)
          {
            LODWORD(v4) = 0;
            if (!v5)
            {
              goto LABEL_25;
            }

LABEL_17:
            v14 = RB::DisplayList::Metadata::transition(v5);
            if (v14)
            {
              v15 = *(v14 + 3);
              goto LABEL_26;
            }

LABEL_25:
            v15 = 0;
LABEL_26:
            v12 = v4 >= v15;
            if (v4 == v15)
            {
              return (*(*a1 + 46) & 0x1000) != 0 && (*(*a2 + 46) & 0x1000) == 0;
            }

            return !v12;
          }

          LODWORD(v4) = *(v13 + 3);
        }

        if (!v5)
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      return !v12;
    }
  }

  if (v8 < v9)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16 >> 31;
}

uint64_t RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (*a3 < *(a2 + 8))
  {
    v7 = 0;
    while (1)
    {
      v8 = (*a2 + 24 * v3);
      v9 = *a1;
      v10 = *(*v8 + 40);
      if (v10 != *(*a1 + 8))
      {
        return v7;
      }

      v11 = *(*v8 + 32);
      if (v10)
      {
        v12 = *v9;
        if (v11 != *v9)
        {
          break;
        }
      }

      if (v11 && (v15 = RB::DisplayList::Metadata::transition(*(*v8 + 32))) != 0)
      {
        v16 = *(v15 + 3);
      }

      else
      {
        v16 = 0;
      }

      if (*v9 && (v17 = RB::DisplayList::Metadata::transition(*v9)) != 0)
      {
        v18 = *(v17 + 3);
      }

      else
      {
        v18 = 0;
      }

      if (v16 != v18)
      {
        return v7;
      }

LABEL_26:
      v19 = a1[2];
      v8[4] = v7;
      v8[5] = v19;
      v3 = *a3 + 1;
      *a3 = v3;
      v7 = (v7 + 1);
      if (v3 >= *(a2 + 8))
      {
        return v7;
      }
    }

    if (v11)
    {
      v13 = RB::DisplayList::Metadata::identity_ns(*(*v8 + 32));
      v12 = *v9;
      if (!*v9)
      {
LABEL_9:
        if (v13 != v12)
        {
          if (!v13 || !v12)
          {
            return v7;
          }

          if (*v13 != *v12 || v13[1] != v12[1])
          {
            return v7;
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      v13 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v12 = RB::DisplayList::Metadata::identity_ns(v12);
    goto LABEL_9;
  }

  return 0;
}

double RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0uLL;
  v5 = *a3;
  if (*a3 >= *(a2 + 8))
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (*a2 + 24 * v5);
      if (v11[5] != *(a1 + 8))
      {
        break;
      }

      v12 = *v11;
      v13 = *(*v11 + 32);
      if (v13)
      {
        v14 = *a1;
        v15 = RB::DisplayList::Metadata::transition(v13);
        v16 = RB::DisplayList::Interpolator::Layer::item_transition(v14, v15);
        v17 = *(a1 + 16);
        v18 = *(a1 + 24);
        v19 = *v17;
        if (*v17 <= *(v16 + 3))
        {
          v19 = *(v16 + 3);
        }

        *v17 = v19;
        v20 = *(v16 + 5);
        if (*v18 > v20)
        {
          v20 = *v18;
        }

        *v18 = v20;
        **(a1 + 32) |= RB::Transition::properties(v16);
        v5 = *a3;
        v12 = *(*a2 + 24 * *a3);
      }

      if (v12 != v9)
      {
        v21 = RB::DisplayList::Item::styled_bounds(v12, 0);
        RB::Rect::Union(&v24, v21, v22);
        v5 = *a3;
        v9 = v12;
      }

      *a3 = ++v5;
      ++v10;
    }

    while (v5 < *(a2 + 8));
  }

  *a4 = v10;
  result = *&v24;
  *(a4 + 8) = v24;
  return result;
}

void RB::DisplayList::EditAdaptor::find_motion_projection(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4, int a5, void *a6, unsigned int a7, uint64_t a8)
{
  v79 = COERCE_FLOAT32X2_T((*(**a3 + 64))(*a3, a3[3], 1));
  v12 = vceqz_f32(v11);
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0 || !a7)
  {
    return;
  }

  v13 = 0;
  v14 = 0;
  v78 = vadd_f32(v11, v79);
  v15 = a7;
  v77 = -1;
  v16 = 0x7FFFFFFF;
  v17 = vneg_f32(0x3F0000003FLL);
  v18 = a6;
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = *a4 & 0xF;
    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if ((*a4 & 0xF) != 0)
    {
      v23 = 176;
    }

    else
    {
      v23 = 96;
    }

    if ((*a4 & 0xF) != 0)
    {
      v24 = 112;
    }

    else
    {
      v24 = 32;
    }

    v25 = a1 + v24;
    if ((*a4 & 0xF) != 0)
    {
      v26 = 20;
    }

    else
    {
      v26 = 12;
    }

    v27 = LODWORD(v18[v22]);
    v28 = *(a1 + v23);
    if (!v28)
    {
      v28 = v25;
    }

    v29 = *(v28 + 8 * v27);
    v30 = *(v18 + v26);
    v31 = *(a8 + 8);
    if (v14 >= v31)
    {
      if (*(a8 + 12) <= v31)
      {
        RB::vector<RB::BinAllocator::Shelf,0ul,unsigned int>::reserve_slow(a8, v31 + 1);
        v15 = a7;
        v31 = *(a8 + 8);
      }

      v32 = (*a8 + 32 * v31);
      *v32 = 0;
      v32[1] = v17;
      v32[2] = 0;
      v32[3] = v17;
      ++*(a8 + 8);
      v21 = *a4 & 0xF;
    }

    if (v21)
    {
      v33 = (*a8 + v13 + 16);
    }

    else
    {
      v33 = (*a8 + v13);
    }

    v34 = v33[1];
    v35 = vmvn_s8(vceq_f32(v34, v34));
    if ((vpmax_u32(v35, v35).u32[0] & 0x80000000) != 0)
    {
      v36 = (*(*v29 + 64))(v29, v30, *v18 >> 36);
      v15 = a7;
      *v33 = v36;
      v33[1] = v34;
    }

    v37 = vceqz_f32(v34);
    if ((vpmax_u32(v37, v37).u32[0] & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 != 1)
        {
          goto LABEL_62;
        }

        v39 = *v33;
        v40 = vsub_f32(*v33, v79).u32[0];
      }

      else
      {
        v39 = *v33;
        v40 = vsub_f32(v78, vadd_f32(v34, *v33)).u32[0];
      }

      if (*&v40 >= 0.0 && *&v40 < v16)
      {
        LODWORD(v45) = vadd_f32(v39, v34).i32[1];
        if (v45 >= v78.f32[1])
        {
          v45 = v78.f32[1];
        }

        v46 = v39.f32[1];
        if (v79.f32[1] >= v39.f32[1])
        {
          v46 = v79.f32[1];
        }

        if (v45 > v46)
        {
          v16 = *&v40;
          v20 = v39;
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (a5 == 2)
      {
        v38 = v78.f32[1] - (v34.f32[1] + v33->f32[1]);
      }

      else
      {
        if (a5 != 3)
        {
          if ((a5 - 4) < 2)
          {
            return;
          }

          goto LABEL_62;
        }

        v38 = v33->f32[1] - v79.f32[1];
      }

      if (v38 >= 0.0 && v38 < v16)
      {
        v42 = vadd_f32(*v33, v34);
        if ((vcgt_f32(v78, v42).u8[0] & 1) == 0)
        {
          v42.f32[0] = v78.f32[0];
        }

        if (vcgt_f32(*v33, v79).u32[0])
        {
          LODWORD(v43) = *v33->f32;
        }

        else
        {
          v43 = v79.f32[0];
        }

        if (v42.f32[0] > v43)
        {
          v16 = v38;
          v20 = *v33;
LABEL_60:
          v19 = v34;
          v77 = v14;
        }
      }
    }

LABEL_62:
    if (!v16)
    {
      break;
    }

    v18 += 5;
    ++v14;
    v13 += 32;
  }

  while (v14 < v15);
  if (v77 < a7)
  {
    v47 = &a6[5 * v77];
    v48 = *a4;
    v49 = *a8;
    if ((*a4 & 0xF) != 0)
    {
      v50 = a1 + 32;
      if (*(a1 + 96))
      {
        v50 = *(a1 + 96);
      }

      v51 = (v50 + 8 * *(v47 + 2));
      v52 = v47 + 3;
      v53 = v49 + 32 * v77;
    }

    else
    {
      v54 = a1 + 112;
      if (*(a1 + 176))
      {
        v54 = *(a1 + 176);
      }

      v51 = (v54 + 8 * *(v47 + 4));
      v52 = v47 + 5;
      v53 = v49 + 32 * v77 + 16;
    }

    v55 = *(v53 + 8);
    v56 = vmvn_s8(vceq_f32(v55, v55));
    if ((vpmax_u32(v56, v56).u32[0] & 0x80000000) != 0)
    {
      v57 = (*(**v51 + 64))(*v51, *v52, *v47 >> 36, 12);
      *v53 = v57;
      *(v53 + 8) = v55;
      v48 = *a4;
    }

    else
    {
      v57 = *v53;
    }

    v58 = v48 & 0xF;
    if (v58 == 8 || v58 == 1)
    {
      v59 = v55;
      v60 = *&v57;
    }

    else
    {
      v59 = v19;
      v60 = v20;
      v19 = v55;
      v20 = *&v57;
    }

    v61 = *(a2 + 240);
    if (v61 < 2)
    {
      goto LABEL_84;
    }

    v62 = *(a2 + 232);
    if (!v62)
    {
      v62 = a2 + 200;
    }

    v63 = vand_s8(vceq_f32(*(v62 + 16 * (v61 - 2) + 8), v59), vceq_f32(*(v62 + 16 * (v61 - 2)), v60));
    if ((vpmin_u32(v63, v63).u32[0] & 0x80000000) != 0 && (v64 = v61 - 1, v65 = vand_s8(vceq_f32(*(v62 + 16 * v64 + 8), v19), vceq_f32(*(v62 + 16 * v64), v20)), (vpmin_u32(v65, v65).u32[0] & 0x80000000) != 0))
    {
      v61 -= 2;
    }

    else
    {
LABEL_84:
      v64 = v61 + 1;
      v66 = *(a2 + 240);
      if (*(a2 + 244) < v61 + 1)
      {
        RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow((a2 + 200), v61 + 1);
        v66 = *(a2 + 240);
      }

      v67 = *(a2 + 232);
      if (!v67)
      {
        v67 = a2 + 200;
      }

      v68 = (v67 + 16 * v66);
      *v68 = v60;
      v68[1] = v59;
      v69 = *(a2 + 240);
      v70 = *(a2 + 244);
      v71 = v69 + 1;
      *(a2 + 240) = v69 + 1;
      if (v70 < v69 + 2)
      {
        RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow((a2 + 200), v69 + 2);
        v71 = *(a2 + 240);
      }

      v72 = *(a2 + 232);
      if (!v72)
      {
        v72 = a2 + 200;
      }

      v73 = (v72 + 16 * v71);
      *v73 = v20;
      v73[1] = v19;
      ++*(a2 + 240);
    }

    *(a4 + 6) = v61;
    *(a4 + 7) = v64;
  }
}

void *RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 387) + (*(__dst + 387) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 387) + (*(__dst + 387) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,12ul>(*(__dst + 192), __dst, 0x80u, __dst + 387, v3);
  *(__dst + 192) = result;
  return result;
}

void *RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement,8ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 35) + (*(__dst + 35) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 35) + (*(__dst + 35) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,16ul>(*(__dst + 16), __dst, 8u, __dst + 35, v3);
  *(__dst + 16) = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[1];
  v7 = a3->n128_f32[1];
  if (v6 >= a1->n128_f32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[1] < a3->n128_f32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[1];
  if (result.n128_f32[0] < a4->n128_f32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[1];
    if (result.n128_f32[0] < a3->n128_f32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[1];
      if (result.n128_f32[0] < a2->n128_f32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[1];
        if (result.n128_f32[0] < a1->n128_f32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f32[1];
      v7 = a2[-1].n128_f32[1];
      if (v6 < a1->n128_f32[1])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f32[1] >= a1[1].n128_f32[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f32[1] < a1->n128_f32[1])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f32[1];
    v15 = a1->n128_f32[1];
    v16 = a1[2].n128_f32[1];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f32[1] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_f32[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f32[1] >= a1[2].n128_f32[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f32[1] >= a1[1].n128_f32[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[1] < a1->n128_f32[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f32[1];
  v11 = a1->n128_f32[1];
  v12 = a1[2].n128_f32[1];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f32[1] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_f32[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f32[1];
    if (v28 < v9->n128_f32[1])
    {
      v29 = v25->n128_u32[0];
      v30 = v25->n128_u64[1];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_f32[1] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = &a1[3] + v31;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v29;
      *(v33 + 4) = v28;
      *(v33 + 8) = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

void RB::DisplayList::EditAdaptor::~EditAdaptor(RB::DisplayList::EditAdaptor *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    free(v5);
  }

  if (*this)
  {
    free(*this);
  }
}

double std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = (a2 - 24);
      if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(&a2[-2].n128_i64[1], a1))
      {
        v9 = v7[1].n128_u64[0];
        a6 = *v7;
        v10 = a2[-1].n128_u64[1];
        *v7 = *v8;
        v7[1].n128_u64[0] = v10;
        *v8 = a6;
        a2[-1].n128_u64[1] = v9;
      }
    }

    else if (a3 > 128)
    {
      v20 = a4;
      v21 = a3 >> 1;
      v22 = (a1 + 24 * (a3 >> 1));
      v23 = a3 >> 1;
      if (a3 <= a5)
      {
        v24 = std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(a1, v22, v23, a4, a6);
        v25 = (v20 + 24 * v21);
        a6.n128_u64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>((v7 + 24 * (a3 >> 1)), a2, a3 - (a3 >> 1), v25, v24).n128_u64[0];
        v26 = (v20 + 24 * a3);
        v27 = v25;
        while (v27 != v26)
        {
          if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v27, v20))
          {
            a6 = *v27;
            v7[1].n128_u64[0] = v27[1].n128_u64[0];
            *v7 = a6;
            v27 = (v27 + 24);
          }

          else
          {
            a6 = *v20;
            v7[1].n128_u64[0] = v20[1].n128_u64[0];
            *v7 = a6;
            v20 = (v20 + 24);
          }

          v7 = (v7 + 24);
          if (v20 == v25)
          {
            while (v27 != v26)
            {
              a6 = *v27;
              v7[1].n128_u64[0] = v27[1].n128_u64[0];
              *v7 = a6;
              v7 = (v7 + 24);
              v27 = (v27 + 24);
            }

            return a6.n128_f64[0];
          }
        }

        while (v20 != v25)
        {
          a6 = *v20;
          v7[1].n128_u64[0] = v20[1].n128_u64[0];
          *v7 = a6;
          v7 = (v7 + 24);
          v20 = (v20 + 24);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(a1, v22, v23, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(v7 + 24 * (a3 >> 1), a2, a3 - (a3 >> 1), v20, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(v7, v7 + 24 * (a3 >> 1), a2, a3 >> 1, a3 - (a3 >> 1), v20, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v12 = &a1[1].n128_i64[1];
      if (&a1[1].n128_i8[8] != a2)
      {
        v13 = 0;
        v14 = a1;
        do
        {
          v15 = v14;
          v14 = v12;
          if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v12, v15))
          {
            v29 = *v14;
            v30 = *(v14 + 16);
            v16 = v13;
            while (1)
            {
              v17 = v7 + v16;
              *(v17 + 24) = *(v7 + v16);
              *(v17 + 5) = *(v7[1].n128_u64 + v16);
              if (!v16)
              {
                break;
              }

              v16 -= 24;
              if (!RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(&v29, v7 + v16))
              {
                v18 = &v7[1].n128_i64[1] + v16;
                goto LABEL_16;
              }
            }

            v18 = v7;
LABEL_16:
            a6.n128_u64[0] = v29;
            *v18 = v29;
            *(v18 + 16) = v30;
          }

          v12 = v14 + 24;
          v13 += 24;
        }

        while ((v14 + 24) != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = (a2 - 24);
      if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(&a2[-2].n128_i64[1], a1))
      {
        v10 = *v9;
        v5[1].n128_u64[0] = v9[1].n128_u64[0];
        *v5 = v10;
        result = *v8;
        v11 = v8[1].n128_u64[0];
      }

      else
      {
        v18 = *v8;
        v5[1].n128_u64[0] = v8[1].n128_u64[0];
        *v5 = v18;
        result = *v9;
        v11 = v9[1].n128_u64[0];
      }

      v5[2].n128_u64[1] = v11;
      *(v5 + 24) = result;
    }

    else if (a3 == 1)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
    }

    else if (a3 > 8)
    {
      v19 = (a1 + 24 * (a3 >> 1));
      std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(a1, v19, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(v8 + 24 * (a3 >> 1), a2, a3 - (a3 >> 1), v5 + 24 * (a3 >> 1), a3 - (a3 >> 1));
      v20 = (v8 + 24 * (a3 >> 1));
      while (v20 != a2)
      {
        if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v20, v8))
        {
          result = *v20;
          v5[1].n128_u64[0] = v20[1].n128_u64[0];
          *v5 = result;
          v20 = (v20 + 24);
        }

        else
        {
          result = *v8;
          v5[1].n128_u64[0] = v8[1].n128_u64[0];
          *v5 = result;
          v8 = (v8 + 24);
        }

        v5 = (v5 + 24);
        if (v8 == v19)
        {
          while (v20 != a2)
          {
            result = *v20;
            v5[1].n128_u64[0] = v20[1].n128_u64[0];
            *v5 = result;
            v5 = (v5 + 24);
            v20 = (v20 + 24);
          }

          return result;
        }
      }

      while (v8 != v19)
      {
        result = *v8;
        v5[1].n128_u64[0] = v8[1].n128_u64[0];
        *v5 = result;
        v5 = (v5 + 24);
        v8 = (v8 + 24);
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      v12 = (a1 + 24);
      if (&a1[1].n128_i8[8] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v14;
          v14 = (v14 + 24);
          v16 = v14;
          if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v12, v15))
          {
            *v14 = *v15;
            v14[1].n128_u64[0] = *(v15 + 16);
            v16 = v5;
            if (v15 != v5)
            {
              v17 = v13;
              while (1)
              {
                v16 = (v5 + v17);
                if (!RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v12, &v5[-1] + v17 - 8))
                {
                  break;
                }

                *v16 = *(v5 + v17 - 24);
                v16[1].n128_u64[0] = *(&v5->n128_u64[-1] + v17);
                v17 -= 24;
                if (!v17)
                {
                  v16 = v5;
                  break;
                }
              }
            }
          }

          result = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = result;
          v12 = (v12 + 24);
          v13 += 24;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(__n128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7)
{
  v51 = a5;
  if (a5)
  {
    while (v51 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = a1;
      while (!RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(a2, a1))
      {
        a1 = (a1 + 24);
        v13 = (v13 + 24);
        if (!--a4)
        {
          return result;
        }
      }

      v15 = v51;
      __src = a6;
      v50 = a3;
      if (a4 >= v51)
      {
        if (a4 == 1)
        {
          v53 = a1[1].n128_u64[0];
          v52 = *a1;
          v46 = *a2;
          a1[1].n128_u64[0] = *(a2 + 16);
          *a1 = v46;
          result = v52;
          *(a2 + 16) = v53;
          *a2 = v52;
          return result;
        }

        v21 = a4 / 2;
        v19 = (a1 + 24 * (a4 / 2));
        if (a3 == a2)
        {
          v17 = a2;
        }

        else
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v17 = a2;
          do
          {
            v23 = v17 + 24 * (v22 >> 1);
            v24 = RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v23, a1 + 24 * (a4 / 2));
            if (v24)
            {
              v22 += ~(v22 >> 1);
            }

            else
            {
              v22 >>= 1;
            }

            if (v24)
            {
              v17 = (v23 + 24);
            }
          }

          while (v22);
          v21 = a4 / 2;
          v15 = v51;
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - a2) >> 3);
      }

      else
      {
        v16 = v51 / 2;
        v17 = (a2 + 24 * (v51 / 2));
        v18 = v13;
        v19 = a1;
        if (a1 != a2)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v13) >> 3);
          v19 = a1;
          do
          {
            if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v17, v19 + 24 * (v20 >> 1)))
            {
              v20 >>= 1;
            }

            else
            {
              v19 = (v19 + 24 * (v20 >> 1) + 24);
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v18 = v19;
          v16 = v51 / 2;
          v15 = v51;
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v13) >> 3);
      }

      v25 = a4 - v21;
      v26 = v15 - v16;
      v27 = a2;
      v28 = v15;
      v29 = v21;
      v30 = v16;
      v31 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::Element *,RB::DisplayList::EditAdaptor::Element *>(v19, v27, v17);
      v32 = v29;
      v33 = v31;
      if (v32 + v30 >= v28 - (v32 + v30) + a4)
      {
        v35 = v32;
        std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(v31, v17, v50, v25, v26, __src, a7);
        v17 = v19;
        a6 = __src;
        v26 = v30;
        v25 = v35;
        v50 = v33;
      }

      else
      {
        v34 = v19;
        a6 = __src;
        std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2 &,RB::DisplayList::EditAdaptor::Element *>(a1, v34, v31, v32, v30, __src, a7);
        a1 = v33;
      }

      a4 = v25;
      v51 = v26;
      a2 = v17;
      a3 = v50;
      if (!v26)
      {
        return result;
      }
    }

    if (a4 <= v51)
    {
      if (a1 != a2)
      {
        v42 = -a6;
        v43 = a6;
        v44 = a1;
        do
        {
          v45 = *v44;
          v43[1].n128_u64[0] = v44[1].n128_u64[0];
          *v43 = v45;
          v43 = (v43 + 24);
          v44 = (v44 + 24);
          v42 -= 24;
        }

        while (v44 != a2);
        while (a2 != a3)
        {
          if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(a2, a6))
          {
            result = *a2;
            a1[1].n128_u64[0] = *(a2 + 16);
            *a1 = result;
            a2 += 24;
          }

          else
          {
            result = *a6;
            a1[1].n128_u64[0] = a6[1].n128_u64[0];
            *a1 = result;
            a6 = (a6 + 24);
          }

          a1 = (a1 + 24);
          if (v43 == a6)
          {
            return result;
          }
        }

        memmove(a1, a6, -(a6 + v42));
      }
    }

    else if (a2 != a3)
    {
      v36 = 0;
      do
      {
        v37 = (a6 + v36);
        result = *(a2 + v36);
        v37[1].n128_u64[0] = *(a2 + v36 + 16);
        *v37 = result;
        v36 += 24;
      }

      while ((a2 + v36) != a3);
      v38 = (a6 + v36);
      while (a2 != a1)
      {
        v39 = RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(&v38[-2].n128_i64[1], a2 - 24);
        if (v39)
        {
          v40 = (a2 - 24);
        }

        else
        {
          v40 = (v38 - 24);
        }

        v41 = v40[1].n128_u64[0];
        result = *v40;
        *(a3 - 24) = *v40;
        *(a3 - 1) = v41;
        a3 = (a3 - 24);
        if (v39)
        {
          a2 -= 24;
        }

        else
        {
          v38 = (v38 - 24);
        }

        if (v38 == a6)
        {
          return result;
        }
      }

      if (v38 != a6)
      {
        v47 = -24;
        do
        {
          result = *(v38 - 24);
          v48 = (a3 + v47);
          v48[1].n128_u64[0] = v38[-1].n128_u64[1];
          *v48 = result;
          v47 -= 24;
          v38 = (v38 - 24);
        }

        while (v38 != a6);
      }
    }
  }

  return result;
}

__int128 *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::Element *,RB::DisplayList::EditAdaptor::Element *>(__int128 *__src, __int128 *a2, __int128 *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if ((__src + 24) == a2)
    {
      v9 = *__src;
      v11 = *(__src + 2);
      v6 = a3 - a2;
      memmove(__src, __src + 24, a3 - a2);
      v4 = (__src + v6);
      *v4 = v9;
      *(v4 + 2) = v11;
    }

    else if ((a2 + 24) == a3)
    {
      v4 = (__src + 24);
      v10 = *(a3 - 24);
      v12 = *(a3 - 1);
      v7 = a3 - 24 - __src;
      if ((a3 - 24) != __src)
      {
        memmove(__src + 24, __src, v7);
      }

      *__src = v10;
      *(__src + 2) = v12;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::Element *>(__src, a2, a3);
    }
  }

  return v4;
}

__int128 *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::Element *>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (v4 == v5)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = (a2 + 24);
      v7 = (a1 + 24);
      do
      {
        v8 = *(v7 - 1);
        v9 = *(v7 - 24);
        v10 = *(v6 - 1);
        *(v7 - 24) = *(v6 - 24);
        *(v7 - 1) = v10;
        *(v6 - 24) = v9;
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 = (v7 + 24);
        v11 = v6 == a3;
        v6 = (v6 + 24);
      }

      while (!v11);
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      v13 = v12;
      v12 = v5;
      v5 = v13 % v5;
    }

    while (v5);
    v14 = (a1 + 24 * v12);
    do
    {
      v15 = *(v14 - 24);
      v16 = *(v14 - 1);
      v14 = (v14 - 24);
      v26 = v15;
      v27 = v16;
      v17 = (v14 + v3);
      v18 = v14;
      do
      {
        v19 = v18;
        v18 = v17;
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v17) >> 3);
        v22 = __OFSUB__(v4, v21);
        v24 = v4 - v21;
        v23 = (v24 < 0) ^ v22;
        v17 = (a1 + 24 * v24);
        if (v23)
        {
          v17 = (v18 + v3);
        }
      }

      while (v17 != v14);
      *(v18 + 2) = v27;
      *v18 = v26;
    }

    while (v14 != a1);
    return (a1 + a3 - a2);
  }

  return a2;
}

void *RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 11) + (*(__dst + 11) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 11) + (*(__dst + 11) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,16ul>(*(__dst + 4), __dst, 2u, __dst + 11, v3);
  *(__dst + 4) = result;
  return result;
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, __n128 result)
{
  if (!a3)
  {
    return result;
  }

  v5 = a4;
  v8 = a1;
  if (a3 == 2)
  {
    v10 = (a2 - 5);
    v11 = *(a2 - 5);
    v12 = *a1;
    if (v11 >> 4 == *a1 >> 4)
    {
      v13 = *a1 & 0xF;
      v14 = (v11 & 0xF) == 0 || v13 == 0;
      if (v14 || (v100 = *(a2 - 6), v101 = *(a1 + 4), v72 = v100 >= v101, v100 == v101) && (v102 = *(a2 - 5), v103 = *(a1 + 5), v72 = v102 >= v103, v102 == v103))
      {
        v15 = v11 & 0xF;
        if (v15 == 1 || v15 == 8 || (v16 = v12 & 0xF, v16 == 1) || v16 == 8 || (v104 = *(a2 - 8), v105 = *(a1 + 2), v72 = v104 >= v105, v104 == v105) && (v106 = *(a2 - 7), v107 = *(a1 + 3), v72 = v106 >= v107, v106 == v107))
        {
          if ((*(a2 - 5) & 0xF) != 0 && !v13)
          {
            goto LABEL_17;
          }

          goto LABEL_89;
        }
      }
    }

    else
    {
      v72 = v11 >> 4 >= v12 >> 4;
    }

    if (!v72)
    {
LABEL_17:
      v17 = *v10;
      v18 = *(a2 - 3);
      a4[4] = *(a2 - 1);
      *a4 = v17;
      *(a4 + 1) = v18;
      result = *a1;
      v19 = *(a1 + 1);
      v20 = a1[4];
LABEL_90:
      a4[9] = v20;
      *(a4 + 7) = v19;
      *(a4 + 5) = result;
      return result;
    }

LABEL_89:
    v73 = *a1;
    v74 = *(a1 + 1);
    a4[4] = a1[4];
    *a4 = v73;
    *(a4 + 1) = v74;
    result = *v10;
    v19 = *(a2 - 3);
    v20 = *(a2 - 1);
    goto LABEL_90;
  }

  if (a3 == 1)
  {
    result = *a1;
    v9 = *(a1 + 1);
    a4[4] = a1[4];
    *a4 = result;
    *(a4 + 1) = v9;
    return result;
  }

  if (a3 > 8)
  {
    v75 = &a1[5 * (a3 >> 1)];
    std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(a1, v75, a3 >> 1, a4, a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(&v8[5 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[5 * (a3 >> 1)], a3 - (a3 >> 1));
    v76 = &v8[5 * (a3 >> 1)];
    while (1)
    {
      if (v76 == a2)
      {
        while (v8 != v75)
        {
          result = *v8;
          v98 = *(v8 + 1);
          v5[4] = v8[4];
          *v5 = result;
          *(v5 + 1) = v98;
          v8 += 5;
          v5 += 5;
        }

        return result;
      }

      v77 = *v76;
      v78 = *v76 >> 4;
      v79 = *v8;
      if (v78 != *v8 >> 4)
      {
        break;
      }

      v80 = *v8 & 0xF;
      if ((v77 & 0xF) != 0 && v80 != 0)
      {
        v90 = *(v76 + 4);
        v91 = *(v8 + 4);
        v88 = v90 >= v91;
        if (v90 != v91)
        {
          goto LABEL_114;
        }

        v92 = *(v76 + 5);
        v93 = *(v8 + 5);
        v88 = v92 >= v93;
        if (v92 != v93)
        {
          goto LABEL_114;
        }
      }

      v82 = v77 & 0xF;
      v83 = v82 == 1 || v82 == 8;
      v84 = v79 & 0xF;
      v85 = v83 || v84 == 1;
      if (!v85 && v84 != 8)
      {
        v94 = *(v76 + 2);
        v95 = *(v8 + 2);
        v88 = v94 >= v95;
        if (v94 != v95)
        {
          goto LABEL_114;
        }

        v96 = *(v76 + 3);
        v97 = *(v8 + 3);
        v88 = v96 >= v97;
        if (v96 != v97)
        {
          goto LABEL_114;
        }
      }

      if ((*v76 & 0xF) == 0 || v80)
      {
LABEL_116:
        result = *v8;
        v89 = *(v8 + 1);
        v5[4] = v8[4];
        *v5 = result;
        *(v5 + 1) = v89;
        v8 += 5;
        goto LABEL_117;
      }

LABEL_112:
      result = *v76;
      v87 = *(v76 + 1);
      v5[4] = v76[4];
      *v5 = result;
      *(v5 + 1) = v87;
      v76 += 5;
LABEL_117:
      v5 += 5;
      if (v8 == v75)
      {
        while (v76 != a2)
        {
          result = *v76;
          v99 = *(v76 + 1);
          v5[4] = v76[4];
          *v5 = result;
          *(v5 + 1) = v99;
          v76 += 5;
          v5 += 5;
        }

        return result;
      }
    }

    v88 = v78 >= v79 >> 4;
LABEL_114:
    if (v88)
    {
      goto LABEL_116;
    }

    goto LABEL_112;
  }

  if (a1 != a2)
  {
    result = *a1;
    v21 = *(a1 + 1);
    a4[4] = a1[4];
    *a4 = result;
    *(a4 + 1) = v21;
    v22 = a1 + 5;
    if (a1 + 5 != a2)
    {
      v23 = 0;
      v24 = a4;
      do
      {
        v25 = v8;
        v26 = v24;
        v8 = v22;
        v28 = *v24;
        v24 += 5;
        v27 = v28;
        v29 = v25[5];
        if (v29 >> 4 == v28 >> 4)
        {
          v30 = v27 & 0xF;
          v31 = (v29 & 0xF) == 0 || v30 == 0;
          if (!v31 && ((v39 = *(v25 + 14), v40 = *(v26 + 4), v41 = v39 >= v40, v39 != v40) || (v42 = *(v25 + 15), v43 = *(v26 + 5), v41 = v42 >= v43, v42 != v43)) || ((v32 = v29 & 0xF, v32 != 1) ? (v33 = v32 == 8) : (v33 = 1), (v34 = v27 & 0xF, !v33) ? (v35 = v34 == 1) : (v35 = 1), !v35 ? (v36 = v34 == 8) : (v36 = 1), !v36 && ((v44 = *(v25 + 12), v45 = *(v26 + 2), v41 = v44 >= v45, v44 != v45) || (v46 = *(v25 + 13), v47 = *(v26 + 3), v41 = v46 >= v47, v46 != v47))))
          {
            v37 = v24;
            if (v41)
            {
              goto LABEL_84;
            }

LABEL_50:
            v48 = *(v26 + 1);
            *v24 = *v26;
            *(v24 + 1) = v48;
            v24[4] = v26[4];
            v37 = v5;
            if (v26 == v5)
            {
              goto LABEL_84;
            }

            v49 = v23;
            while (2)
            {
              v50 = v5 + v49;
              v51 = *(v5 + v49 - 40);
              v52 = *v8;
              v53 = *v8 >> 4;
              if (v53 == v51 >> 4)
              {
                v54 = *(v5 + v49 - 40) & 0xF;
                if ((v52 & 0xF) != 0 && v54 != 0)
                {
                  v63 = *(v25 + 14);
                  v64 = *(v5 + v49 - 24);
                  v61 = v63 >= v64;
                  if (v63 != v64)
                  {
                    goto LABEL_73;
                  }

                  v65 = *(v25 + 15);
                  v66 = *(v5 + v49 - 20);
                  v61 = v65 >= v66;
                  if (v65 != v66)
                  {
                    goto LABEL_73;
                  }
                }

                v56 = v52 & 0xF;
                v57 = v56 == 1 || v56 == 8;
                v58 = v51 & 0xF;
                v59 = v57 || v58 == 1;
                if (!v59 && v58 != 8)
                {
                  v67 = *(v25 + 12);
                  v68 = *(v5 + v49 - 32);
                  v61 = v67 >= v68;
                  if (v67 != v68)
                  {
                    goto LABEL_73;
                  }

                  v69 = *(v25 + 13);
                  v70 = *(v5 + v49 - 28);
                  v61 = v69 >= v70;
                  if (v69 != v70)
                  {
                    goto LABEL_73;
                  }
                }

                if ((*v8 & 0xF) == 0 || v54)
                {
                  v37 = (v5 + v49);
                  goto LABEL_84;
                }
              }

              else
              {
                v61 = v53 >= v51 >> 4;
LABEL_73:
                if (v61)
                {
                  v37 = v26;
                  goto LABEL_84;
                }
              }

              v26 -= 5;
              v62 = *(v5 + v49 - 24);
              *v50 = *(v5 + v49 - 40);
              *(v50 + 16) = v62;
              *(v50 + 32) = *(v5 + v49 - 8);
              v49 -= 40;
              if (!v49)
              {
                v37 = v5;
                goto LABEL_84;
              }

              continue;
            }
          }

          v37 = v24;
          if ((v25[5] & 0xF) != 0)
          {
            v37 = v24;
            if (!v30)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
          v38 = v27 >> 4;
          v37 = v24;
          if (v29 >> 4 < v38)
          {
            goto LABEL_50;
          }
        }

LABEL_84:
        result = *v8;
        v71 = *(v8 + 1);
        v37[4] = v8[4];
        *v37 = result;
        *(v37 + 1) = v71;
        v22 = v8 + 5;
        v23 += 40;
      }

      while (v8 + 5 != a2);
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  v9 = a5;
  while (v9 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v12 = 0;
    v13 = *a2 >> 4;
    v14 = *a2 & 0xFLL;
    v15 = -a4;
    while (1)
    {
      v16 = *(a1 + v12);
      if (v13 != v16 >> 4)
      {
        v19 = v13 >= v16 >> 4;
LABEL_23:
        if (!v19)
        {
          break;
        }

        goto LABEL_25;
      }

      if (v14)
      {
        if ((v16 & 0xF) != 0)
        {
          v17 = *(a2 + 4);
          v18 = *(a1 + v12 + 16);
          v19 = v17 >= v18;
          if (v17 != v18)
          {
            goto LABEL_23;
          }

          v20 = *(a2 + 5);
          v21 = *(a1 + v12 + 20);
          v19 = v20 >= v21;
          if (v20 != v21)
          {
            goto LABEL_23;
          }
        }
      }

      if (v14 != 1 && v14 != 8)
      {
        v22 = v16 & 0xF;
        if (v22 != 1 && v22 != 8)
        {
          v24 = *(a2 + 2);
          v25 = *(a1 + v12 + 8);
          v19 = v24 >= v25;
          if (v24 != v25)
          {
            goto LABEL_23;
          }

          v26 = *(a2 + 3);
          v27 = *(a1 + v12 + 12);
          v19 = v26 >= v27;
          if (v26 != v27)
          {
            goto LABEL_23;
          }
        }
      }

      if (v14 && (*(a1 + v12) & 0xFLL) == 0)
      {
        break;
      }

LABEL_25:
      v12 += 40;
      v19 = __CFADD__(v15++, 1);
      if (v19)
      {
        return result;
      }
    }

    v28 = -v15;
    v29 = (a1 + v12);
    v140 = a3;
    __src = a6;
    v138 = a1 + v12;
    v139 = a7;
    if (-v15 >= v9)
    {
      if (v15 == -1)
      {
        v130 = a1 + v12;
        v144 = *(v130 + 4);
        v142 = *v130;
        v143 = *(v130 + 1);
        v131 = *a2;
        v132 = a2[1];
        *(v130 + 4) = *(a2 + 4);
        *v130 = v131;
        *(v130 + 1) = v132;
        result = v142;
        *(a2 + 4) = v144;
        *a2 = v142;
        a2[1] = v143;
        return result;
      }

      v51 = v28 / 2;
      v40 = (a1 + 40 * (v28 / 2) + v12);
      if (a3 == a2)
      {
        v31 = a2;
LABEL_89:
        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - a2) >> 3);
        goto LABEL_90;
      }

      v52 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
      v53 = *v40 >> 4;
      v54 = *v40 & 0xFLL;
      v55 = (a1 + 40 * v51 + v12);
      v56 = v55[4];
      v57 = v55[5];
      v58 = v55[2];
      v59 = v55[3];
      v31 = a2;
      while (2)
      {
        v60 = v52 >> 1;
        v61 = v31 + 40 * (v52 >> 1);
        v62 = *v61;
        v63 = *v61 >> 4;
        v64 = v63 >= v53;
        if (v63 == v53 && (!v54 || (v62 & 0xF) == 0 || (v65 = *(v61 + 4), v64 = v65 >= v56, v65 == v56) && (v66 = *(v61 + 5), v64 = v66 >= v57, v66 == v57)) && ((v67 = v62 & 0xF, v67 != 1) ? (v68 = v67 == 8) : (v68 = 1), !v68 ? (v69 = v54 == 1) : (v69 = 1), !v69 ? (v70 = v54 == 8) : (v70 = 1), v70 || (v71 = *(v61 + 2), v64 = v71 >= v58, v71 == v58) && (v72 = *(v61 + 3), v64 = v72 >= v59, v72 == v59)))
        {
          if (!v54 && (*v61 & 0xFLL) != 0)
          {
LABEL_83:
            v31 = (v61 + 40);
            v60 = v52 + ~v60;
          }
        }

        else if (!v64)
        {
          goto LABEL_83;
        }

        v52 = v60;
        if (!v60)
        {
          goto LABEL_89;
        }

        continue;
      }
    }

    v30 = v9 / 2;
    v31 = (a2 + 40 * (v9 / 2));
    if (v29 != a2)
    {
      v32 = (a1 + v12);
      v33 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v12) >> 3);
      v34 = *v31 >> 4;
      v35 = *v31 & 0xFLL;
      v36 = *(v31 + 4);
      v37 = *(v31 + 5);
      v38 = *(v31 + 2);
      v39 = *(v31 + 3);
      v40 = v29;
      while (1)
      {
        v41 = v33 >> 1;
        v42 = v40 + 40 * (v33 >> 1);
        v43 = *v42;
        if (v34 != *v42 >> 4)
        {
          break;
        }

        if (v35)
        {
          if ((v43 & 0xF) != 0)
          {
            v44 = *(v42 + 4);
            v45 = v36 >= v44;
            if (v36 != v44)
            {
              goto LABEL_50;
            }

            v46 = *(v42 + 5);
            v45 = v37 >= v46;
            if (v37 != v46)
            {
              goto LABEL_50;
            }
          }
        }

        if (v35 != 1 && v35 != 8)
        {
          v47 = v43 & 0xF;
          if (v47 != 1 && v47 != 8)
          {
            v49 = *(v42 + 2);
            v45 = v38 >= v49;
            if (v38 != v49)
            {
              goto LABEL_50;
            }

            v50 = *(v42 + 3);
            v45 = v39 >= v50;
            if (v39 != v50)
            {
              goto LABEL_50;
            }
          }
        }

        if (v35 && (*v42 & 0xFLL) == 0)
        {
          goto LABEL_53;
        }

LABEL_52:
        v40 = (v42 + 40);
        v41 = v33 + ~v41;
LABEL_53:
        v33 = v41;
        if (!v41)
        {
          v73 = v40;
          goto LABEL_87;
        }
      }

      v45 = v34 >= v43 >> 4;
LABEL_50:
      if (!v45)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v73 = (a1 + v12);
    v32 = v73;
    v40 = v29;
LABEL_87:
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v32) >> 3);
LABEL_90:
    a4 = -(v51 + v15);
    v74 = v9 - v30;
    v75 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::Interpolator::Op *,RB::DisplayList::Interpolator::Op *>(v40, a2, v31);
    a3 = v75;
    if (v51 + v30 >= v9 - (v51 + v30) - v15)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v75, v31, v140, -(v51 + v15), v74, __src, v139);
      v31 = v40;
      v74 = v30;
      a6 = __src;
      a4 = v51;
      a7 = v139;
      a1 = v138;
    }

    else
    {
      v76 = v51;
      v77 = v30;
      a6 = __src;
      a7 = v139;
      std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v138, v40, v75, v76, v77, __src, v139);
      a1 = a3;
      a3 = v140;
    }

    v9 = v74;
    a2 = v31;
    if (!v74)
    {
      return result;
    }
  }

  if (a4 > v9)
  {
    if (a2 == a3)
    {
      return result;
    }

    v79 = 0;
    do
    {
      v80 = (a6 + v79);
      result = *(a2 + v79);
      v81 = *(a2 + v79 + 16);
      *(v80 + 4) = *(a2 + v79 + 32);
      *v80 = result;
      *(v80 + 1) = v81;
      v79 += 40;
    }

    while ((a2 + v79) != a3);
    v82 = (a6 + v79);
    while (1)
    {
      if (a2 == a1)
      {
        if (v82 != a6)
        {
          v133 = -40;
          do
          {
            result = *(v82 - 40);
            v134 = *(v82 - 24);
            v135 = *(v82 - 1);
            v136 = v82 - 40;
            v137 = a3 + v133;
            *(v137 + 4) = v135;
            *v137 = result;
            *(v137 + 1) = v134;
            v133 -= 40;
            v82 = v136;
          }

          while (v136 != a6);
        }

        return result;
      }

      v83 = a2 - 40;
      v84 = *(a2 - 5);
      v85 = *(v82 - 5);
      if (v85 >> 4 == v84 >> 4)
      {
        break;
      }

      v93 = (a2 - 40);
      if (v85 >> 4 >= v84 >> 4)
      {
        goto LABEL_122;
      }

LABEL_123:
      result = *v83;
      v94 = *(v83 + 1);
      *(a3 - 1) = *(v83 + 4);
      *(a3 - 24) = v94;
      *(a3 - 40) = result;
      a3 = (a3 - 40);
      a2 = v93;
      if (v82 == a6)
      {
        return result;
      }
    }

    v86 = *(a2 - 5) & 0xFLL;
    v87 = (v85 & 0xF) == 0 || v86 == 0;
    if ((v87 || (v95 = *(v82 - 6), v96 = *(a2 - 6), v97 = v95 >= v96, v95 == v96) && (v98 = *(v82 - 5), v99 = *(a2 - 5), v97 = v98 >= v99, v98 == v99)) && ((v88 = v85 & 0xF, v88 != 1) ? (v89 = v88 == 8) : (v89 = 1), (v90 = v84 & 0xF, !v89) ? (v91 = v90 == 1) : (v91 = 1), !v91 ? (v92 = v90 == 8) : (v92 = 1), v92 || (v100 = *(v82 - 8), v101 = *(a2 - 8), v97 = v100 >= v101, v100 == v101) && (v102 = *(v82 - 7), v103 = *(a2 - 7), v97 = v102 >= v103, v102 == v103)))
    {
      if ((*(v82 - 5) & 0xFLL) != 0)
      {
        v93 = (a2 - 40);
        if (!v86)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v93 = (a2 - 40);
      if (!v97)
      {
        goto LABEL_123;
      }
    }

LABEL_122:
    v83 = v82 - 40;
    v93 = a2;
    v82 -= 40;
    goto LABEL_123;
  }

  if (a1 == a2)
  {
    return result;
  }

  v104 = -a6;
  v105 = a6;
  v106 = a1;
  do
  {
    v107 = *v106;
    v108 = v106[1];
    v105[4] = *(v106 + 4);
    *v105 = v107;
    *(v105 + 1) = v108;
    v106 = (v106 + 40);
    v105 += 5;
    v104 -= 40;
  }

  while (v106 != a2);
  while (a2 != a3)
  {
    v109 = *a2;
    v110 = *a2 >> 4;
    v111 = *a6;
    if (v110 != *a6 >> 4)
    {
      v120 = v110 >= v111 >> 4;
LABEL_157:
      if (v120)
      {
        goto LABEL_159;
      }

      goto LABEL_155;
    }

    v112 = *a6 & 0xFLL;
    if ((v109 & 0xF) != 0 && v112 != 0)
    {
      v122 = *(a2 + 4);
      v123 = *(a6 + 16);
      v120 = v122 >= v123;
      if (v122 != v123)
      {
        goto LABEL_157;
      }

      v124 = *(a2 + 5);
      v125 = *(a6 + 20);
      v120 = v124 >= v125;
      if (v124 != v125)
      {
        goto LABEL_157;
      }
    }

    v114 = v109 & 0xF;
    v115 = v114 == 1 || v114 == 8;
    v116 = v111 & 0xF;
    v117 = v115 || v116 == 1;
    if (!v117 && v116 != 8)
    {
      v126 = *(a2 + 2);
      v127 = *(a6 + 8);
      v120 = v126 >= v127;
      if (v126 != v127)
      {
        goto LABEL_157;
      }

      v128 = *(a2 + 3);
      v129 = *(a6 + 12);
      v120 = v128 >= v129;
      if (v128 != v129)
      {
        goto LABEL_157;
      }
    }

    if ((*a2 & 0xFLL) == 0 || v112)
    {
LABEL_159:
      result = *a6;
      v121 = *(a6 + 16);
      *(a1 + 4) = *(a6 + 32);
      *a1 = result;
      a1[1] = v121;
      a6 += 40;
      goto LABEL_160;
    }

LABEL_155:
    result = *a2;
    v119 = a2[1];
    *(a1 + 4) = *(a2 + 4);
    *a1 = result;
    a1[1] = v119;
    a2 = (a2 + 40);
LABEL_160:
    a1 = (a1 + 40);
    if (v105 == a6)
    {
      return result;
    }
  }

  memmove(a1, a6, -(a6 + v104));
  return result;
}

__int128 *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::Interpolator::Op *,RB::DisplayList::Interpolator::Op *>(__int128 *__src, __int128 *a2, __int128 *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if ((__src + 40) == a2)
    {
      v9 = *__src;
      v11 = __src[1];
      v13 = *(__src + 4);
      v6 = a3 - a2;
      memmove(__src, __src + 40, a3 - a2);
      v4 = (__src + v6);
      *v4 = v9;
      v4[1] = v11;
      *(v4 + 4) = v13;
    }

    else if ((a2 + 40) == a3)
    {
      v4 = (__src + 40);
      v10 = *(a3 - 40);
      v12 = *(a3 - 24);
      v14 = *(a3 - 1);
      v7 = a3 - 40 - __src;
      if ((a3 - 40) != __src)
      {
        memmove(__src + 40, __src, v7);
      }

      *__src = v10;
      __src[1] = v12;
      *(__src + 4) = v14;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::Interpolator::Op *>(__src, a2, a3);
    }
  }

  return v4;
}

__int128 *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::DisplayList::Interpolator::Op *>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2 - a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
  if (v4 == v5)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = (a2 + 40);
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 40);
        v9 = *(v7 - 24);
        v10 = *(v7 - 1);
        v11 = *(v6 - 1);
        v12 = *(v6 - 24);
        *(v7 - 40) = *(v6 - 40);
        *(v7 - 24) = v12;
        *(v7 - 1) = v11;
        *(v6 - 1) = v10;
        *(v6 - 24) = v9;
        *(v6 - 40) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 = (v7 + 40);
        v13 = v6 == a3;
        v6 = (v6 + 40);
      }

      while (!v13);
    }
  }

  else
  {
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    do
    {
      v15 = v14;
      v14 = v5;
      v5 = v15 % v5;
    }

    while (v5);
    v16 = (a1 + 40 * v14);
    do
    {
      v17 = *(v16 - 40);
      v18 = *(v16 - 24);
      v19 = *(v16 - 1);
      v16 = (v16 - 40);
      v30 = v17;
      v31 = v18;
      v32 = v19;
      v20 = (v16 + v3);
      v21 = v16;
      do
      {
        v22 = v21;
        v21 = v20;
        v23 = *v20;
        v24 = v20[1];
        *(v22 + 4) = *(v20 + 4);
        *v22 = v23;
        v22[1] = v24;
        v25 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v20) >> 3);
        v26 = __OFSUB__(v4, v25);
        v28 = v4 - v25;
        v27 = (v28 < 0) ^ v26;
        v20 = (a1 + 40 * v28);
        if (v27)
        {
          v20 = (v21 + v3);
        }
      }

      while (v20 != v16);
      *(v21 + 4) = v32;
      *v21 = v30;
      v21[1] = v31;
    }

    while (v16 != a1);
    return (a1 + a3 - a2);
  }

  return a2;
}

void RB::Fill::MeshGradient::Data::finalize(RB::Fill::MeshGradient::Data *this)
{
  (*(*this + 16))(this);

  free(this);
}

uint64_t RB::Fill::MeshGradient::valid_config(unsigned __int8 *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v4 = *a1;
  if (v4 > 6)
  {
    return v4 == 0;
  }

  if (((1 << v4) & 0x26) == 0)
  {
    if (((1 << v4) & 0x18) != 0)
    {
      v5 = a2 - 1 >= 0x4000;
      return !v5;
    }

    if (v4 == 6)
    {
      v5 = a2 - 1 >= 0x5555;
      return !v5;
    }

    return v4 == 0;
  }

  result = 0;
  if (a2 >= 4 && a3 >= 2 && !((a3 | a2) >> 32))
  {
    v7 = a2 / a3;
    if (a2 / a3 * a3 != a2)
    {
      return 0;
    }

    v8 = v4 == 5;
    v9 = 0x4000;
    if (v8)
    {
      v9 = 0x10000;
    }

    if ((a3 - 1) * (v7 - 1) < v9)
    {
      if (a4)
      {
        *a4 = __PAIR64__(v7, a3);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RB::Fill::MeshGradient::MeshGradient(uint64_t a1, int a2, unint64_t a3, unint64_t a4, const void *a5, float32x4_t *a6, void *a7, char a8)
{
  v22 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v13 = *(a7 + 6);
  *(a1 + 28) = *a7;
  *(a1 + 34) = v13;
  *(a1 + 42) = a8;
  *(a1 + 43) = *(a1 + 43) & 0xE0 | 0x10;
  *(a1 + 44) = 0;
  if (RB::Fill::MeshGradient::valid_config(&v22, a3, a4, a1))
  {
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    if (RB::Fill::MeshGradient::allocate_data(a1, a2, a3, &v20, &v18))
    {
      memcpy(v20, a5, 8 * v21);
      v14 = v19;
      if (v19)
      {
        v15 = v18;
        do
        {
          v16 = *a6++;
          *v15++ = vcvt_f16_f32(v16);
          --v14;
        }

        while (v14);
      }

      RB::Fill::MeshGradient::update_colors(a1);
    }
  }

  return a1;
}

void sub_195E2DAD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    RB::Fill::MeshGradient::MeshGradient(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Fill::MeshGradient::allocate_data(uint64_t a1, int a2, unint64_t a3, void *a4, void *a5)
{
  v5 = RB::Fill::MeshGradient::points_per_elt[a2];
  v6 = RB::Fill::MeshGradient::colors_per_elt[a2];
  v7 = 8 * (v6 + v5);
  v8 = a3 * v7;
  v10 = (a3 * v7) >> 64 == 0;
  v9 = (a3 * v7) >> 32;
  v10 = v10 && v9 == 0;
  v11 = !v10;
  if (v10)
  {
    v15 = a2;
    v17 = malloc_type_malloc(v8 + 16, 0x9C4BD936uLL);
    v18 = v17;
    if (v17)
    {
      v17[2] = 1;
      v17[3] = v8;
      *v17 = &unk_1F0A3FA28;
    }

    v19 = *(a1 + 8);
    *(a1 + 8) = v18;
    if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RBFillData::apply<RB::DestroyAny>(v19);
    }

    *(a1 + 43) = *(a1 + 43) & 0xF0 | v15 & 0xF;
    *(a1 + 24) = a3;
    *a4 = v18 + 4;
    a4[1] = v5 * a3;
    *a5 = &v18[2 * v5 * a3 + 4];
    a5[1] = v6 * a3;
  }

  return v11 ^ 1u;
}

uint64_t RB::Fill::MeshGradient::update_colors(RB::Fill::MeshGradient *this)
{
  v2 = *(this + 6);
  v3 = *(this + 43);
  v4 = v2 * RB::Fill::MeshGradient::colors_per_elt[v3 & 0xF];
  if (v4)
  {
    v5 = (*(this + 1) + 8 * v2 * RB::Fill::MeshGradient::points_per_elt[v3 & 0xF] + 16);
    v6 = 8 * v4;
    LOBYTE(v4) = 1;
    v7 = -INFINITY;
    v8 = INFINITY;
    do
    {
      v9 = *v5++;
      v10 = vcvtq_f32_f16(v9);
      LODWORD(v4) = v4 & (v10.f32[3] == 1.0);
      v11 = fminf(fminf(v10.f32[0], v10.f32[2]), v10.f32[1]);
      if (v11 < v8)
      {
        v8 = v11;
      }

      v12 = fmaxf(fmaxf(v10.f32[0], v10.f32[2]), v10.f32[1]);
      if (v7 < v12)
      {
        v7 = v12;
      }

      v6 -= 8;
    }

    while (v6);
    if (v4)
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 16;
    v8 = INFINITY;
    v7 = -INFINITY;
  }

  *(this + 43) = v13 | v3 & 0xEF;
  v14 = RB::Fill::Color::color_info((this + 28));
  v15 = v14;
  v16 = RB::required_color_depth(v14, v8, v7);
  result = RB::max_color_depth(v15, v16);
  *(this + 44) = result;
  return result;
}

uint64_t RB::Fill::MeshGradient::MeshGradient(uint64_t a1, uint64_t a2, __int16 a3, RB::Heap *this)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  if (*(a2 + 41))
  {
    v6 = *(a2 + 40);
  }

  else
  {
    v6 = a3;
  }

  *(a1 + 40) = v6;
  *(a1 + 42) = *(a2 + 42);
  v7 = *(a1 + 43) & 0xF0 | *(a2 + 43) & 0xF;
  *(a1 + 43) = v7;
  *(a1 + 43) = v7 & 0xEF | *(a2 + 43) & 0x10;
  *(a1 + 44) = *(a2 + 44);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = ((*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v9 + 3) > *(this + 3))
    {
      v9 = RB::Heap::alloc_slow(this, 0x30uLL, 15);
    }

    else
    {
      *(this + 2) = v9 + 3;
    }

    v10 = *v8;
    v11 = v8[2];
    v9[1] = v8[1];
    v9[2] = v11;
    *v9 = v10;
    *(a1 + 16) = v9;
  }

  return a1;
}

void sub_195E2DE20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    RB::Fill::MeshGradient::MeshGradient(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Fill::MeshGradient::copy_on_write_data(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 8) == 1)
  {
    __dmb(9u);
    v7 = *(a1 + 8) + 16;
  }

  else
  {
    v9 = *(v3 + 12);
    result = malloc_type_malloc(v9 + 16, 0x9C4BD936uLL);
    if (!result)
    {
      return result;
    }

    v10 = result;
    *(result + 8) = 1;
    *(result + 12) = v9;
    *result = &unk_1F0A3FA28;
    v7 = result + 16;
    memcpy((result + 16), (*(a1 + 8) + 16), v9);
    v11 = *(a1 + 8);
    *(a1 + 8) = v10;
    if (v11)
    {
      if (atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RBFillData::apply<RB::DestroyAny>(v11);
      }
    }
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 43) & 0xF;
  v14 = v12 * RB::Fill::MeshGradient::points_per_elt[v13];
  v15 = v12 * RB::Fill::MeshGradient::colors_per_elt[v13];
  *a2 = v7;
  a2[1] = v14;
  *a3 = v7 + 8 * v14;
  a3[1] = v15;
  return 1;
}

float RB::Fill::MeshGradient::append_color_fn(RB::Fill::MeshGradient *this, const RB::ColorMatrixFn *a2, uint64_t a3)
{
  v3 = a3;
  v37 = *MEMORY[0x1E69E9840];
  *(this + 43) |= 0x10u;
  (*(*a2 + 8))(a2, v34, *(this + 20), a3, 0.0);
  v6 = 1.0;
  v7 = (v3 >> 2) & 1;
  if ((v3 & 0x80000000) != 0)
  {
    v6 = RB::ColorMatrix::remove_alpha_factor(v34, (v3 & 4) != 0);
  }

  LOBYTE(v35[0]) = 0;
  v36 = 0;
  if (*(this + 41) == 1)
  {
    v8 = RB::color_flags_space(v3, 0);
    if ((v8 & 0x100) != 0)
    {
      v10 = v8;
      v9.i64[0] = 0;
      RB::ColorSpace::Conversion::Conversion(v35, *(this + 40), v8, v9, 0.0);
      v36 = 1;
      *(this + 20) = v10;
    }
  }

  v31 = 0;
  v32 = 0;
  if (RB::Fill::MeshGradient::copy_on_write_data(this, &v33, &v31) && v32)
  {
    v11 = v31;
    v12 = 8 * v32;
    do
    {
      v13 = *v11;
      if (v36 == 1)
      {
        v27 = HIWORD(*v11);
        v13 = RB::ColorSpace::Conversion::operator()(v35, v13);
        v13.i16[3] = v27;
      }

      v28 = v13;
      v29 = 0;
      v30 = 0;
      RB::Fill::Color::apply_color_matrix(&v28, v34, v7);
      v14 = *&v28.i16[3];
      *v11++ = v28;
      v15 = *(this + 43);
      if (((v14 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))) & (v15 >> 4)) != 0)
      {
        v16 = 16;
      }

      else
      {
        v16 = 0;
      }

      *(this + 43) = v16 | v15 & 0xEF;
      v12 -= 8;
    }

    while (v12);
  }

  RB::Fill::Color::apply_color_matrix((this + 28), v34, v7);
  _S0 = RB::ColorMatrixFn::content_headroom(a2);
  if (_S0 > 1.0)
  {
    _H1 = *(this + 18);
    __asm
    {
      FCVT            S2, H1
      FCVT            H3, S0
    }

    if (_S0 >= _S2)
    {
      v25 = _H3;
    }

    else
    {
      v25 = *(this + 18);
    }

    *(this + 18) = v25;
  }

  return v6;
}

uint64_t RB::Fill::MeshGradient::can_mix(RB::Fill::MeshGradient *this, const RB::Fill::MeshGradient *a2, const RB::AffineTransform *a3)
{
  if (((*(a2 + 43) ^ *(this + 43)) & 0xF) != 0 || *(this + 6) != *(a2 + 6) || *(this + 42) != *(a2 + 42))
  {
    return 0;
  }

  LODWORD(result) = RB::can_mix(*(this + 2), *(a2 + 2), a3);
  if ((result & 0xFC) != 0)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

void RB::Fill::MeshGradient::mix(RB::Fill::MeshGradient *this, const RB::DisplayList::Interpolator::Op *a2, const RB::Fill::MeshGradient *a3, float32x4_t a4, RB::Heap *a5)
{
  if ((*a2 & 0xELL) == 2)
  {
    RB::Fill::MeshGradient::mix(this, a3, a4, a3);
  }
}

void RB::Fill::MeshGradient::mix(RB::Fill::MeshGradient *this, const RB::Fill::MeshGradient *a2, float32x4_t a3, RB::Heap *a4)
{
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(a2 + 2);
    if (v7)
    {
      RB::mix(v6, v7, a4, a3.f32[0]);
      v8 = *(this + 2);
      *v8 = v9;
      v8[1] = v10;
      v8[2] = v11;
    }
  }

  *(this + 43) |= 0x10u;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v12 = RB::Fill::MeshGradient::copy_on_write_data(this, &v41, &v39);
  v13 = a3;
  if (v12)
  {
    v14 = *(a2 + 6);
    v15 = *(a2 + 43);
    v16 = *(a2 + 1) + 16;
    v17 = v42;
    if (v42)
    {
      v18 = v41;
      v19 = vdup_lane_s32(*a3.f32, 0);
      v20 = (*(a2 + 1) + 16);
      do
      {
        v21 = *v20++;
        *v18 = vmla_f32(*v18, v19, vsub_f32(v21, *v18));
        ++v18;
        --v17;
      }

      while (v17);
    }

    v22 = v40;
    if (v40)
    {
      v23 = (v16 + 8 * v14 * RB::Fill::MeshGradient::points_per_elt[v15 & 0xF]);
      v24 = v39;
      do
      {
        v25 = *(this + 20);
        v36 = *v24;
        v37 = 0;
        v38 = v25;
        v26 = *v23++;
        v27 = *(a2 + 20);
        v33 = v26;
        v34 = 0;
        v35 = v27;
        RB::Fill::Color::mix(&v36, &v33, 0, v13);
        v13 = a3;
        v28 = *(this + 43);
        v29 = HIWORD(v36);
        if (((*(&v36 + 3) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))) & (v28 >> 4)) != 0)
        {
          v30 = 16;
        }

        else
        {
          v30 = 0;
        }

        *(this + 43) = v30 | v28 & 0xEF;
        v31 = v36;
        HIWORD(v31) = v29;
        *v24++ = v31;
        --v22;
      }

      while (v22);
    }
  }

  RB::Fill::Color::mix(this + 28, a2 + 28, 0, v13);
}

uint64_t RB::Fill::MeshGradient::get_alpha(RB::Fill::MeshGradient *this, float *a2)
{
  if ((*(this + 43) & 0x10) == 0 || *(this + 17) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    return 0;
  }

  *a2 = 1.0;
  return 1;
}

uint64_t RB::Fill::MeshGradient::ColorConversion::ColorConversion(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, char a5, float32x4_t a6, float32_t a7, float a8)
{
  *a1 = a6.i32[0];
  v10 = a5 & 0xF;
  v11 = a4 & 0xF;
  v12 = a4 & 0xF | 0x10;
  if (v10 != 2)
  {
    v12 = a4;
  }

  if (v10 != 1 && v10 != 3)
  {
    v11 = v12;
  }

  *(a1 + 4) = v11;
  *(a1 + 8) = a8;
  a6.f32[0] = a7;
  RB::ColorSpace::Conversion::Conversion((a1 + 16), a3, v11, a6, a8);
  *(a1 + 192) = v10 == 3;
  v14 = *(a1 + 16);
  v15 = 1;
  if ((v14 & 0x1C0) == 0 && ((v14 ^ (v14 >> 3)) & 7) == 0 && a2 != 0 && v10 != 3)
  {
    v15 = *a1 != 1.0;
  }

  *(a1 + 193) = v15;
  return a1;
}

__n64 RB::Fill::MeshGradient::ColorConversion::convert(uint64_t a1, uint16x4_t *a2)
{
  v13 = HIWORD(*a2);
  v4 = RB::ColorSpace::Conversion::operator()((a1 + 16), *a2);
  v4.i16[3] = v13;
  if (*(a1 + 192) == 1)
  {
    v14 = v4;
    v15 = 0;
    v16 = 0;
    RB::Fill::Color::convert_to_oklab(&v14);
    v4 = v14;
  }

  _H1 = v4.i16[3];
  __asm { FCVT            S1, H1 }

  _S1 = *a1 * _S1;
  __asm { FCVT            H1, S1 }

  result.n64_u64[0] = vmul_n_f16(v4, *&_S1);
  result.n64_u16[3] = LOWORD(_S1);
  *a2 = result.n64_u64[0];
  return result;
}

double RB::Fill::MeshGradient::ColorConversion::convert_out_slow(RB::Fill::MeshGradient::ColorConversion *this, RB::Fill::Color *a2)
{
  LOWORD(result) = *(a2 + 3);
  if (*&result != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    __asm { FCMP            H0, #0 }

    if (!_ZF)
    {
      v7 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&result;
      *a2 = *a2 * v7;
      *(a2 + 1) = *(a2 + 1) * v7;
      *&result = *(a2 + 2) * v7;
      *(a2 + 2) = LOWORD(result);
    }
  }

  if (*(this + 192) == 1)
  {
    *&result = RB::Fill::Color::convert_from_oklab(a2);
  }

  return result;
}

float32x2_t *RB::Fill::MeshGradient::PatchBuffer::PatchBuffer(float32x2_t *a1, __int32 a2, __int32 a3, float64x2_t *a4, __int32 a5, int32x2_t a6, int32x2_t a7, int32x2_t a8)
{
  a8.i32[0] = 0;
  a1->i32[0] = a2;
  a1->i32[1] = a3;
  a1[1].i32[0] = a5;
  a1[4] = 0;
  a1[5].i32[0] = 0;
  a1[6] = 0;
  v10 = vceq_s32(a7, 0x8000000080000000);
  v11 = vdup_lane_s32(vcgt_s32(a8, vpmin_u32(v10, v10)), 0);
  v12 = vbsl_s8(v11, 0x100000001000000, vcvt_f32_s32(a6));
  v13 = vbsl_s8(v11, vneg_f32(0x80000000800000), vcvt_f32_s32(a7));
  v14 = a4[1];
  v21 = *a4;
  v22 = v14;
  v23 = a4[2];
  if (RB::AffineTransform::invert(&v21))
  {
    v15 = &v21;
  }

  else
  {
    v15 = a4;
  }

  v16 = v15[1];
  v17 = v15[2];
  v21 = *v15;
  v22 = v16;
  v23 = v17;
  v18 = RB::operator*(&v21, v12, v13);
  a1[2] = v18;
  a1[3] = vadd_f32(v19, v18);
  a1[5].f32[1] = RB::AffineTransform::scale(a4);
  return a1;
}

uint64_t RB::Fill::MeshGradient::PatchBuffer::alloc_patch(RB::Fill::MeshGradient::PatchBuffer *this)
{
  if (*(this + 56))
  {
    v2 = *(this + 12);
    if (*(this + 9) >= (*this + v2))
    {
      return *(this + 8) + v2;
    }

    return 0;
  }

  v4 = *(this + 8);
  v5 = *(v4 + 136);
  if (v5)
  {
    v6 = *(this + 12);
    v7 = *(v4 + 128);
    if (v7)
    {
      v8 = *(v4 + 128);
    }

    else
    {
      v8 = *(this + 8);
    }

    v9 = (v5 - 1);
    v10 = v8 + 32 * v9;
    if (*(v10 + 16) >= (*this + v6))
    {
      goto LABEL_16;
    }

    RB::RenderFrame::commit_buffer_region_size(*(this + 9), v10, v6);
  }

  RB::RenderFrame::alloc_buffer_region(*(this + 9), *this, *(this + 1), 1, &v20);
  v11 = v20;
  if (!v20)
  {
    return 0;
  }

  v12 = *(this + 8);
  v13 = v21;
  v14 = *(v12 + 136);
  if (*(v12 + 140) < v14 + 1)
  {
    v18 = v20;
    v19 = *(this + 8);
    v17 = v21;
    RB::vector<RB::Fill::MeshGradient::MeshBuffer,4ul,unsigned int>::reserve_slow(v12, v14 + 1);
    v13 = v17;
    v11 = v18;
    v12 = v19;
    v14 = *(v19 + 136);
  }

  LODWORD(v6) = 0;
  v15 = *(v12 + 128);
  if (!v15)
  {
    v15 = v12;
  }

  v16 = v15 + 32 * v14;
  *v16 = v11;
  *(v16 + 8) = v13;
  *(v16 + 24) = 0;
  ++*(v12 + 136);
  *(this + 12) = 0;
  v4 = *(this + 8);
  v7 = *(v4 + 128);
  v9 = (*(v4 + 136) - 1);
LABEL_16:
  if (v7)
  {
    v4 = v7;
  }

  return *(*(v4 + 32 * v9) + 56) + *(v4 + 32 * v9 + 8) + v6;
}

float32x2_t *RB::Fill::MeshGradient::PatchBuffer::commit_patch(float32x2_t *result, uint64_t a2)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = vcvtq_f32_f16(*(a2 + 32)).u64[0];
  v11 = vadd_f32(*a2, v10);
  v10.i32[0] = *(a2 + 36);
  v12 = vadd_f32(v6, *&vcvtq_f32_f16(v10));
  v13 = vcvtq_f32_f16(*(a2 + 40)).u64[0];
  v14 = vadd_f32(*a2, v13);
  v13.i32[0] = *(a2 + 44);
  v15 = vadd_f32(v6, *&vcvtq_f32_f16(v13));
  v16 = vcvtq_f32_f16(*(a2 + 48)).u64[0];
  v17 = vadd_f32(v9, v16);
  v16.i32[0] = *(a2 + 52);
  v18 = vadd_f32(v8, *&vcvtq_f32_f16(v16));
  v19 = vadd_f32(v9, *&vcvtq_f32_f16(*(a2 + 56)));
  v2.i32[0] = *(a2 + 60);
  v20 = vadd_f32(v8, *&vcvtq_f32_f16(v2));
  if (result[1].i8[0])
  {
    __asm
    {
      FMOV            V20.2S, #-4.0
      FMOV            V22.2S, #6.0
    }

    *v5.f32 = vmul_f32(vadd_f32(v9, v6), 0xC0000000C0000000);
    __asm { FMOV            V26.2S, #3.0 }

    v26 = vdup_n_s32(0x3DE38E39u);
    v27 = vmla_f32(vmla_f32(vsub_f32(*v5.f32, vmls_f32(v8, *_Q20.f32, v7)), *_Q22.f32, vadd_f32(v14, v11)), _D26, vadd_f32(v19, v15));
    v28 = vmul_f32(vadd_f32(v8, v7), 0xC0000000C0000000);
    v29 = vmla_f32(vmla_f32(vsub_f32(v28, vmls_f32(v9, *_Q20.f32, v6)), *_Q22.f32, vadd_f32(v15, v12)), _D26, vadd_f32(v20, v14));
    v30 = vmla_f32(vmla_f32(vsub_f32(v28, vmls_f32(v6, *_Q20.f32, v9)), _D26, vadd_f32(v18, v11)), *_Q22.f32, vadd_f32(v19, v17));
    *_Q20.f32 = vmla_f32(vmla_f32(vsub_f32(*v5.f32, vmls_f32(v7, *_Q20.f32, v8)), _D26, vadd_f32(v17, v12)), *_Q22.f32, vadd_f32(v20, v18));
    *_Q22.f32 = vneg_f32(vmls_f32(v7, v26, v27));
    *v5.f32 = vneg_f32(vmls_f32(v9, v26, v30));
    *_Q20.f32 = vneg_f32(vmls_f32(v8, v26, *_Q20.f32));
    v31 = vcvt_hight_f16_f32(vcvt_f16_f32(v5), _Q20);
    *_Q20.f32 = vneg_f32(vmls_f32(v6, v26, v29));
    *(a2 + 64) = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(_Q22), _Q20), v31);
  }

  v32 = vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(vminnm_f32(v7, v11), v12), v6), v14), v15), v17), v18), v9), v19), v20), v8);
  v33 = vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(v7, v11), v12), v6), v14), v15), v17), v18), v9), v19), v20), v8);
  v34 = vorr_s8(vcgt_f32(result[2], v33), vcgt_f32(v32, result[3]));
  if ((vpmax_u32(v34, v34).u32[0] & 0x80000000) == 0)
  {
    result[4] = vmaxnm_f32(result[4], vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v7, vadd_f32(v11, v11)), v12)), vabd_f32(vadd_f32(v11, v6), vadd_f32(v12, v12))), vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v9, vadd_f32(v19, v19)), v20)), vabd_f32(vadd_f32(v19, v8), vadd_f32(v20, v20)))), vmaxnm_f32(vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v7, vadd_f32(v14, v14)), v17)), vabd_f32(vadd_f32(v14, v9), vadd_f32(v17, v17))), vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v6, vadd_f32(v15, v15)), v18)), vabd_f32(vadd_f32(v15, v8), vadd_f32(v18, v18))))));
    v35 = vsub_f32(v33, v32);
    v36 = vmul_lane_f32(v35, v35, 1).f32[0];
    if (result[5].f32[0] >= v36)
    {
      v36 = result[5].f32[0];
    }

    result[5].f32[0] = v36;
    v37 = result[1].i32[0];
    if ((v37 & 2) == 0)
    {
      goto LABEL_13;
    }

    v39 = *(a2 + 80);
    v38 = *(a2 + 88);
    v41 = *(a2 + 96);
    v40 = *(a2 + 104);
    v42 = *(a2 + 112);
    v43 = *(a2 + 120);
    v45 = *(a2 + 128);
    v44 = *(a2 + 136);
    v47 = *(a2 + 144);
    v46 = *(a2 + 152);
    v48 = *(a2 + 160);
    v49 = *(a2 + 168);
    if (v37)
    {
      v54 = vmul_f16(vadd_f16(v41, v38), 0xC000C000C000C000);
      v55 = vdup_n_s16(0x2F1Cu);
      v50 = vmul_f16(vmla_f16(vmla_f16(vadd_f16(vmla_f16(vneg_f16(v40), 0xC400C400C400C400, v39), v54), 0x4600460046004600, vadd_f16(v45, v42)), 0x4200420042004200, vadd_f16(v48, v44)), v55);
      v56 = vmul_f16(vadd_f16(v40, v39), 0xC000C000C000C000);
      v51 = vmul_f16(vmla_f16(vmla_f16(vadd_f16(vmla_f16(vneg_f16(v41), 0xC400C400C400C400, v38), v56), 0x4600460046004600, vadd_f16(v44, v43)), 0x4200420042004200, vadd_f16(v49, v45)), v55);
      v52 = vmul_f16(vmla_f16(vmla_f16(vadd_f16(vmla_f16(vneg_f16(v38), 0xC400C400C400C400, v41), v56), 0x4200420042004200, vadd_f16(v46, v42)), 0x4600460046004600, vadd_f16(v48, v47)), v55);
      v53 = vmul_f16(vmla_f16(vmla_f16(vadd_f16(vmla_f16(vneg_f16(v39), 0xC400C400C400C400, v40), v54), 0x4200420042004200, vadd_f16(v47, v43)), 0x4600460046004600, vadd_f16(v49, v46)), v55);
      if ((v37 & 4) == 0)
      {
LABEL_12:
        *(a2 + 88) = v38;
        *(a2 + 104) = v40;
        *(a2 + 112) = v42;
        *(a2 + 120) = v43;
        *(a2 + 136) = v44;
        *(a2 + 152) = v46;
        *(a2 + 160) = v48;
        *(a2 + 168) = v49;
        *(a2 + 176) = v50;
        *(a2 + 184) = v51;
        *(a2 + 192) = v52;
        *(a2 + 200) = v53;
LABEL_13:
        ++result[6].i32[1];
        if ((result[7].i8[0] & 1) == 0)
        {
          v57 = result[8];
          v58 = *(*&v57 + 128);
          if (!*&v58)
          {
            v58 = result[8];
          }

          v59 = *&v58 + 32 * (*(*&v57 + 136) - 1);
          ++*(v59 + 28);
        }

        result[6].i32[0] += result->i32[0];
        return result;
      }
    }

    else
    {
      v50 = *(a2 + 176);
      v51 = *(a2 + 184);
      v52 = *(a2 + 192);
      v53 = *(a2 + 200);
      if ((v37 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    v38 = vmla_f16(vsub_f16(v38, v39), 0x4200420042004200, vsub_f16(v42, v43));
    v43 = vmul_f16(vadd_f16(vsub_f16(v39, vadd_f16(v42, v42)), v43), 0x4200420042004200);
    v42 = vmul_f16(vsub_f16(v42, v39), 0x4200420042004200);
    v44 = vmla_f16(vsub_f16(v44, v45), 0x4200420042004200, vsub_f16(v50, v51));
    v51 = vmul_f16(vadd_f16(vsub_f16(v45, vadd_f16(v50, v50)), v51), 0x4200420042004200);
    v50 = vmul_f16(vsub_f16(v50, v45), 0x4200420042004200);
    v46 = vmla_f16(vsub_f16(v46, v47), 0x4200420042004200, vsub_f16(v52, v53));
    v53 = vmul_f16(vadd_f16(vsub_f16(v47, vadd_f16(v52, v52)), v53), 0x4200420042004200);
    v52 = vmul_f16(vsub_f16(v52, v47), 0x4200420042004200);
    v40 = vmla_f16(vsub_f16(v40, v41), 0x4200420042004200, vsub_f16(v48, v49));
    v49 = vmul_f16(vadd_f16(vsub_f16(v41, vadd_f16(v48, v48)), v49), 0x4200420042004200);
    v48 = vmul_f16(vsub_f16(v48, v41), 0x4200420042004200);
    goto LABEL_12;
  }

  return result;
}

uint64_t RB::Fill::MeshGradient::PatchBuffer::finalize(uint64_t this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v1 = *(this + 64);
    v2 = *(v1 + 136);
    if (v2)
    {
      if (*(v1 + 128))
      {
        v1 = *(v1 + 128);
      }

      return RB::RenderFrame::commit_buffer_region_size(*(this + 72), v1 + 32 * (v2 - 1), *(this + 48));
    }
  }

  return this;
}

uint64_t RB::Fill::MeshGradient::make_buffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, int32x2_t *a6, float32x4_t a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = *(a4 + 128);
  v14 = v13;
  if (*(a1 + 41) == 1)
  {
    v14 = *(a1 + 40);
  }

  _H2 = *(a1 + 38);
  __asm { FCVT            S3, H2 }

  if (*(a4 + 124) <= _S3 || _H2 == COERCE_SHORT_FLOAT(0))
  {
    v21 = *(a4 + 124);
  }

  else
  {
    v21 = _S3;
  }

  _H1 = *(a1 + 36);
  __asm { FCVT            S1, H1 }

  RB::Fill::MeshGradient::ColorConversion::ColorConversion(v60, (*(a1 + 43) >> 4) & 1, v14, v13, *(a1 + 42), a7, _S1, v21);
  v24 = *(a1 + 43) & 0xF;
  if ((*(a1 + 43) & 0xF) != 0)
  {
    if (v24 == 5)
    {
      v24 = (2 * (HIDWORD(*a1) + *(a1 + 24) - *a1) - 4);
LABEL_14:
      RB::RenderFrame::alloc_buffer_region(*(*a4 + 16), (16 * v24), 8uLL, 0, &v53);
      if (!*&v53)
      {
        return 0;
      }

      v26 = (*(*&v53 + 56) + v54);
      if ((*(a1 + 43) & 0xF) == 6)
      {
        RB::Fill::MeshGradient::make_triangles(a1, v26, v24, v60);
      }

      else
      {
        RB::Fill::MeshGradient::make_triangle_grid(a1, v26, v25, v60);
      }

      *(a3 + 14) = 0;
      *(a3 + 4) = 0;
      *(a3 + 8) = 0;
      *(a3 + 20) = 0;
      if ((*(a1 + 43) & 0xF) == 6)
      {
        v37 = *(a1 + 24);
      }

      else
      {
        v37 = v24;
      }

      v38 = v53;
      v39 = v54;
      v40 = v37 << 32;
      v41 = *(a2 + 136);
      if (*(a2 + 140) < v41 + 1)
      {
        v52 = v54;
        RB::vector<RB::Fill::MeshGradient::MeshBuffer,4ul,unsigned int>::reserve_slow(a2, v41 + 1);
        v39 = v52;
        v41 = *(a2 + 136);
      }

      v42 = *(a2 + 128);
      if (!v42)
      {
        v42 = a2;
      }

      v43 = v42 + 32 * v41;
      *v43 = v38;
      *(v43 + 8) = v39;
      *(v43 + 24) = v40;
      ++*(a2 + 136);
      return v24;
    }

    if (v24 == 6)
    {
      v24 = (3 * *(a1 + 24));
      goto LABEL_14;
    }

    v27 = RB::Fill::MeshGradient::patches_info(a1);
    v28 = *(*a4 + 16);
    RB::Fill::MeshGradient::PatchBuffer::PatchBuffer(&v53, SHIDWORD(v27), v29, a5, v30, *a6, a6[1], v31);
    v57 = 0;
    v58 = a2;
    v59 = v28;
    RB::Fill::MeshGradient::make_patches(a1, &v53, v60);
    RB::Fill::MeshGradient::PatchBuffer::finalize(&v53);
    v32 = *(a2 + 128);
    if (!v32)
    {
      v32 = a2;
    }

    v33 = *(a2 + 136);
    if (v33)
    {
      LODWORD(v24) = 0;
      v34 = (v32 + 28);
      v35 = 32 * v33;
      do
      {
        *(v34 - 1) = v24;
        v36 = *v34;
        v34 += 8;
        v24 = (v36 + v24);
        v35 -= 32;
      }

      while (v35);
    }

    else
    {
      v24 = 0;
    }

    v44 = ceilf(log2f(fmaxf(sqrtf((v56 * 0.25) * sqrtf(vaddv_f32(vmul_f32(v55, v55)))), 1.0)));
    if (v44 > 7.0)
    {
      v44 = 7.0;
    }

    v45 = v44 + 1;
    v46 = 2 * v44;
    do
    {
      v47 = v46 - 2;
      if (!--v45)
      {
        break;
      }

      v48 = v24 << v46;
      LOBYTE(v46) = v46 - 2;
    }

    while (v48 > 0x10000);
    *(a3 + 4) = (1 << v45) - 1;
    *(a3 + 8) = ~(-1 << (v47 + 2));
    *(a3 + 14) = 2 * v45;
    *(a3 + 16) = v45;
    v49 = vrecpe_f32(COERCE_UNSIGNED_INT((1 << v45)));
    v50 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT((1 << v45)), v49), v49);
    *(a3 + 20) = vmul_f32(v50, vrecps_f32(COERCE_UNSIGNED_INT((1 << v45)), v50)).u32[0];
  }

  return v24;
}

void RB::Fill::MeshGradient::make_triangles(uint64_t a1, uint16x4_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *(a1 + 24) * RB::Fill::MeshGradient::points_per_elt[*(a1 + 43) & 0xF];
    v6 = (*(a1 + 8) + 16);
    if ((3 * a3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (3 * a3);
    }

    v8 = a2 + 1;
    do
    {
      v8[-1] = *v6;
      *v8 = v6[v5];
      if (*(a4 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a4, v8);
      }

      v8 += 2;
      ++v6;
      --v7;
    }

    while (v7);
  }
}

void RB::Fill::MeshGradient::make_triangle_grid(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (HIDWORD(*a1) != 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = a1[1] + 16;
    v20 = *a1;
    v9 = v8 + 8 * *(a1 + 6) * RB::Fill::MeshGradient::points_per_elt[*(a1 + 43) & 0xF];
    do
    {
      v10 = *a1;
      if (*a1)
      {
        v11 = 0;
        v22 = v6 * v20;
        v21 = v6 + 1;
        v12 = (v6 + 1) * v20;
        v13 = v6;
        do
        {
          v14 = (a2 + 16 * v7);
          *v14 = *(v8 + 8 * (v22 + v11));
          v14[1] = *(v9 + 8 * (v22 + v11));
          if (*(a4 + 193) == 1)
          {
            RB::Fill::MeshGradient::ColorConversion::convert(a4, v14 + 1);
            v6 = v13;
          }

          v15 = v7 + 1;
          if (v6 && !v11)
          {
            *(a2 + 16 * v15) = *v14->i8;
            v15 = v7 + 2;
          }

          v16 = (a2 + 16 * v15);
          *v16 = *(v8 + 8 * (v12 + v11));
          v16[1] = *(v9 + 8 * (v12 + v11));
          v17 = v16 + 1;
          if (*(a4 + 193) == 1)
          {
            RB::Fill::MeshGradient::ColorConversion::convert(a4, v17);
            v6 = v13;
          }

          v7 = v15 + 1;
          ++v11;
          v10 = *a1;
        }

        while (v11 < *a1);
        v18 = HIDWORD(*a1);
        v19 = v21;
      }

      else
      {
        v18 = HIDWORD(*a1);
        v19 = v6 + 1;
      }

      if (v6 != HIDWORD(v10) - 2)
      {
        *(a2 + 16 * v7) = *(a2 + 16 * (v7 - 1));
        ++v7;
        v18 = *(a1 + 1);
      }

      v6 = v19;
    }

    while (v19 < v18 - 1);
  }
}

uint64_t RB::Fill::MeshGradient::patches_info(int32x2_t *this)
{
  v1 = this[5].i8[3] & 0xF;
  if ((v1 - 1) < 2)
  {
    v2 = vadd_s32(*this, -1);
    v3 = vmul_lane_s32(v2, v2, 1).u32[0];
    v4 = 0xD000000000;
    if ((this[5].i8[2] & 0x10) == 0)
    {
      v4 = 0x7000000000;
    }
  }

  else if (v1 == 3 || v1 == 4)
  {
    v3 = this[3].u32[0];
    v4 = 0x7000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

float32x2_t *RB::Fill::MeshGradient::make_patches(float32x2_t *this, RB::Fill::MeshGradient::PatchBuffer *a2, const RB::Fill::MeshGradient::ColorConversion *a3)
{
  v3 = this[5].i8[3] & 0xF;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return RB::Fill::MeshGradient::make_coons_patches(this, a2, a3);
    }

    else if (v3 == 4)
    {
      return RB::Fill::MeshGradient::make_tensor_patches(this, a2, a3);
    }
  }

  else if (v3 == 1)
  {
    return RB::Fill::MeshGradient::make_vertex_grid(this, a2, a3);
  }

  else if (v3 == 2)
  {
    return RB::Fill::MeshGradient::make_bezier_grid(this, a2, a3);
  }

  return this;
}

uint64_t RB::Fill::MeshGradient::primitive_type(RB::Fill::MeshGradient *this)
{
  v1 = *(this + 43) & 0xF;
  if (v1 > 6)
  {
    return 4;
  }

  else
  {
    return qword_195E48520[v1];
  }
}

float32x2_t *RB::Fill::MeshGradient::make_vertex_grid(float32x2_t *this, RB::Fill::MeshGradient::PatchBuffer *a2, const RB::Fill::MeshGradient::ColorConversion *a3)
{
  v139 = this;
  v3 = *&this[1] + 16;
  v4 = *this;
  v146[0] = v3 + 8 * this[3].i32[0] * RB::Fill::MeshGradient::points_per_elt[this[5].i8[3] & 0xF];
  v146[1] = v4;
  v5 = v4;
  v147 = v4;
  v6 = HIDWORD(v4);
  if (HIDWORD(v4) != 1)
  {
    v8 = 0;
    v9 = 0;
    v142 = 2 * v4;
    v141 = -v4;
    v138 = v4 - 1;
    v137 = -1;
    v10 = v4;
    while (1)
    {
      v145 = v9 + 1;
      if (v4 != 1)
      {
        break;
      }

LABEL_72:
      v142 += v5;
      v141 += v5;
      v10 += v5;
      v8 += v5;
      v138 += v5;
      v137 += v5;
      ++v9;
      if (v145 >= HIDWORD(v4) - 1)
      {
        return this;
      }
    }

    v11 = 0;
    v143 = v9 + 2;
    v144 = v9 - 1;
    while (1)
    {
      this = RB::Fill::MeshGradient::PatchBuffer::alloc_patch(a2);
      if (!this)
      {
        break;
      }

      v19 = this;
      v14.i64[0] = *(v3 + 8 * (v8 + v11));
      v20 = *(v3 + 8 * (v8 + v11 + 1));
      v21 = *(v3 + 8 * (v10 + v11));
      v22 = *(v3 + 8 * (v10 + v11 + 1));
      *this = *v14.f32;
      this[1] = v21;
      this[2] = v20;
      this[3] = v22;
      v23 = *v14.f32;
      if (v5 > v11 - 1)
      {
        v23 = *v14.f32;
        if (v6 > v9)
        {
          v23 = *(v3 + 8 * (v137 + v11));
        }
      }

      v24 = v20;
      if (v5 > v11 + 2)
      {
        v24 = v20;
        if (v6 > v9)
        {
          v24 = *(v3 + 8 * (v8 + v11 + 2));
        }
      }

      v25 = v21;
      if (v5 > v11 - 1)
      {
        v25 = v21;
        if (v6 > v145)
        {
          v25 = *(v3 + 8 * (v138 + v11));
        }
      }

      v26 = v22;
      if (v5 > v11 + 2)
      {
        v26 = v22;
        if (v6 > v145)
        {
          v26 = *(v3 + 8 * (v10 + v11 + 2));
        }
      }

      v27 = vsub_f32(*v14.f32, v23);
      v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
      if (v28 != 0.0)
      {
        v29 = v28;
        v30 = vrecpe_f32(LODWORD(v28));
        v31 = vmul_f32(vrecps_f32(LODWORD(v29), v30), v30);
        v27 = vmul_n_f32(v27, vmul_f32(v31, vrecps_f32(LODWORD(v29), v31)).f32[0]);
      }

      v32 = vsub_f32(v20, *v14.f32);
      v16.f32[0] = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
      if (v16.f32[0] != 0.0)
      {
        v33 = vrecpe_f32(v16.u32[0]);
        v34 = vmul_f32(vrecps_f32(v16.u32[0], v33), v33);
        v32 = vmul_n_f32(v32, vmul_f32(v34, vrecps_f32(v16.u32[0], v34)).f32[0]);
      }

      v35 = vsub_f32(v24, v20);
      v36 = sqrtf(vaddv_f32(vmul_f32(v35, v35)));
      if (v36 != 0.0)
      {
        v37 = v36;
        v38 = vrecpe_f32(LODWORD(v36));
        v39 = vmul_f32(vrecps_f32(LODWORD(v37), v38), v38);
        v35 = vmul_n_f32(v35, vmul_f32(v39, vrecps_f32(LODWORD(v37), v39)).f32[0]);
      }

      v40 = vadd_f32(v32, v27);
      v17.i64[0] = 0;
      v41 = vmvn_s8(vceqz_f32(v40));
      v42 = vpmax_u32(v41, v41).u32[0];
      v15.i64[0] = 0;
      if ((v42 & 0x80000000) != 0)
      {
        v43 = vmul_f32(v40, v40);
        v43.i32[0] = vadd_f32(v43, vdup_lane_s32(v43, 1)).u32[0];
        v44 = vrsqrte_f32(v43.u32[0]);
        v45 = vmul_f32(vrsqrts_f32(v43.u32[0], vmul_f32(v44, v44)), v44);
        *v15.f32 = vmul_n_f32(v40, vmul_f32(v45, vrsqrts_f32(v43.u32[0], vmul_f32(v45, v45))).f32[0]);
      }

      v46 = vadd_f32(v35, v32);
      v47 = vmvn_s8(vceqz_f32(v46));
      if ((vpmax_u32(v47, v47).u32[0] & 0x80000000) != 0)
      {
        v48 = vmul_f32(v46, v46);
        v48.i32[0] = vadd_f32(v48, vdup_lane_s32(v48, 1)).u32[0];
        v49 = vrsqrte_f32(v48.u32[0]);
        v50 = vmul_f32(vrsqrts_f32(v48.u32[0], vmul_f32(v49, v49)), v49);
        *v17.f32 = vmul_n_f32(v46, vmul_f32(v50, vrsqrts_f32(v48.u32[0], vmul_f32(v50, v50))).f32[0]);
      }

      v51 = vsub_f32(v21, v25);
      v52 = sqrtf(vaddv_f32(vmul_f32(v51, v51)));
      if (v52 != 0.0)
      {
        v53 = v52;
        v54 = vrecpe_f32(LODWORD(v52));
        v55 = vmul_f32(vrecps_f32(LODWORD(v53), v54), v54);
        v51 = vmul_n_f32(v51, vmul_f32(v55, vrecps_f32(LODWORD(v53), v55)).f32[0]);
      }

      v56 = vsub_f32(v22, v21);
      v18.f32[0] = sqrtf(vaddv_f32(vmul_f32(v56, v56)));
      if (v18.f32[0] != 0.0)
      {
        v57 = vrecpe_f32(v18.u32[0]);
        v58 = vmul_f32(vrecps_f32(v18.u32[0], v57), v57);
        v56 = vmul_n_f32(v56, vmul_f32(v58, vrecps_f32(v18.u32[0], v58)).f32[0]);
      }

      v59 = vsub_f32(v26, v22);
      v60 = sqrtf(vaddv_f32(vmul_f32(v59, v59)));
      if (v60 != 0.0)
      {
        v61 = v60;
        v62 = vrecpe_f32(LODWORD(v60));
        v63 = vmul_f32(vrecps_f32(LODWORD(v61), v62), v62);
        v59 = vmul_n_f32(v59, vmul_f32(v63, vrecps_f32(LODWORD(v61), v63)).f32[0]);
      }

      v64 = vadd_f32(v56, v51);
      v65 = 0;
      v66 = vmvn_s8(vceqz_f32(v64));
      v67 = vpmax_u32(v66, v66).u32[0];
      v68 = 0;
      if ((v67 & 0x80000000) != 0)
      {
        v69 = vmul_f32(v64, v64);
        v69.i32[0] = vadd_f32(v69, vdup_lane_s32(v69, 1)).u32[0];
        v70 = vrsqrte_f32(v69.u32[0]);
        v71 = vmul_f32(vrsqrts_f32(v69.u32[0], vmul_f32(v70, v70)), v70);
        v68 = vmul_n_f32(v64, vmul_f32(v71, vrsqrts_f32(v69.u32[0], vmul_f32(v71, v71))).f32[0]);
      }

      v72 = vadd_f32(v59, v56);
      v73 = vmvn_s8(vceqz_f32(v72));
      if ((vpmax_u32(v73, v73).u32[0] & 0x80000000) != 0)
      {
        v74 = vmul_f32(v72, v72);
        v74.i32[0] = vadd_f32(v74, vdup_lane_s32(v74, 1)).u32[0];
        v75 = vrsqrte_f32(v74.u32[0]);
        v76 = vmul_f32(vrsqrts_f32(v74.u32[0], vmul_f32(v75, v75)), v75);
        v65 = vmul_n_f32(v72, vmul_f32(v76, vrsqrts_f32(v74.u32[0], vmul_f32(v76, v76))).f32[0]);
      }

      v77 = vdup_n_s32(0x3EAAAAABu);
      *v15.f32 = vmul_f32(vmul_n_f32(v77, v16.f32[0]), *v15.f32);
      v78 = vcvt_f16_f32(v15);
      v79 = vdup_n_s32(0xBEAAAAAB);
      *v16.f32 = vmul_f32(vmul_n_f32(v79, v16.f32[0]), *v17.f32);
      *v17.f32 = vmul_f32(vmul_n_f32(v77, v18.f32[0]), v68);
      *v18.f32 = vmul_f32(vmul_n_f32(v79, v18.f32[0]), v65);
      v80 = vuzp1q_s32(vcvt_hight_f16_f32(v78, v17), vcvt_hight_f16_f32(vcvt_f16_f32(v16), v18));
      *this[5].f32 = v80;
      v81 = *v14.f32;
      if (v11 < v5)
      {
        v81 = *v14.f32;
        if (v6 > v144)
        {
          v81 = *(v3 + 8 * (v141 + v11));
        }
      }

      v82 = v11 + 1;
      v83 = v20;
      if (v11 + 1 < v5)
      {
        v83 = v20;
        if (v6 > v144)
        {
          v83 = *(v3 + 8 * (v141 + v11 + 1));
        }
      }

      v84 = v21;
      if (v11 < v5)
      {
        v84 = v21;
        if (v6 > v143)
        {
          v84 = *(v3 + 8 * (v142 + v11));
        }
      }

      v85 = v22;
      if (v82 < v5)
      {
        v85 = v22;
        if (v6 > v143)
        {
          v85 = *(v3 + 8 * (v142 + v11 + 1));
        }
      }

      v86 = vsub_f32(*v14.f32, v81);
      v87 = sqrtf(vaddv_f32(vmul_f32(v86, v86)));
      if (v87 != 0.0)
      {
        v88 = v87;
        v89 = vrecpe_f32(LODWORD(v87));
        v90 = vmul_f32(vrecps_f32(LODWORD(v88), v89), v89);
        v86 = vmul_n_f32(v86, vmul_f32(v90, vrecps_f32(LODWORD(v88), v90)).f32[0]);
      }

      v91 = vsub_f32(v21, *v14.f32);
      v14.f32[0] = sqrtf(vaddv_f32(vmul_f32(v91, v91)));
      if (v14.f32[0] != 0.0)
      {
        v92 = vrecpe_f32(v14.u32[0]);
        v93 = vmul_f32(vrecps_f32(v14.u32[0], v92), v92);
        v91 = vmul_n_f32(v91, vmul_f32(v93, vrecps_f32(v14.u32[0], v93)).f32[0]);
      }

      v94 = vsub_f32(v84, v21);
      v95 = sqrtf(vaddv_f32(vmul_f32(v94, v94)));
      if (v95 != 0.0)
      {
        v96 = v95;
        v97 = vrecpe_f32(LODWORD(v95));
        v98 = vmul_f32(vrecps_f32(LODWORD(v96), v97), v97);
        v94 = vmul_n_f32(v94, vmul_f32(v98, vrecps_f32(LODWORD(v96), v98)).f32[0]);
      }

      v99 = vadd_f32(v91, v86);
      v13.i64[0] = 0;
      v100 = vmvn_s8(vceqz_f32(v99));
      v101 = vpmax_u32(v100, v100).u32[0];
      v102 = 0;
      if ((v101 & 0x80000000) != 0)
      {
        v103 = vmul_f32(v99, v99);
        v103.i32[0] = vadd_f32(v103, vdup_lane_s32(v103, 1)).u32[0];
        v104 = vrsqrte_f32(v103.u32[0]);
        v105 = vmul_f32(vrsqrts_f32(v103.u32[0], vmul_f32(v104, v104)), v104);
        v102 = vmul_n_f32(v99, vmul_f32(v105, vrsqrts_f32(v103.u32[0], vmul_f32(v105, v105))).f32[0]);
      }

      v106 = vadd_f32(v94, v91);
      v107 = vmvn_s8(vceqz_f32(v106));
      if ((vpmax_u32(v107, v107).u32[0] & 0x80000000) != 0)
      {
        v108 = vmul_f32(v106, v106);
        v108.i32[0] = vadd_f32(v108, vdup_lane_s32(v108, 1)).u32[0];
        v109 = vrsqrte_f32(v108.u32[0]);
        v110 = vmul_f32(vrsqrts_f32(v108.u32[0], vmul_f32(v109, v109)), v109);
        *v13.f32 = vmul_n_f32(v106, vmul_f32(v110, vrsqrts_f32(v108.u32[0], vmul_f32(v110, v110))).f32[0]);
      }

      v111 = vsub_f32(v20, v83);
      v112 = sqrtf(vaddv_f32(vmul_f32(v111, v111)));
      if (v112 != 0.0)
      {
        v113 = v112;
        v114 = vrecpe_f32(LODWORD(v112));
        v115 = vmul_f32(vrecps_f32(LODWORD(v113), v114), v114);
        v111 = vmul_n_f32(v111, vmul_f32(v115, vrecps_f32(LODWORD(v113), v115)).f32[0]);
      }

      v116 = vsub_f32(v22, v20);
      v117 = sqrtf(vaddv_f32(vmul_f32(v116, v116)));
      if (v117 != 0.0)
      {
        v118 = vrecpe_f32(LODWORD(v117));
        v119 = vmul_f32(vrecps_f32(LODWORD(v117), v118), v118);
        v116 = vmul_n_f32(v116, vmul_f32(v119, vrecps_f32(LODWORD(v117), v119)).f32[0]);
      }

      v120 = vsub_f32(v85, v22);
      v121 = sqrtf(vaddv_f32(vmul_f32(v120, v120)));
      if (v121 != 0.0)
      {
        v122 = v121;
        v123 = vrecpe_f32(LODWORD(v121));
        v124 = vmul_f32(vrecps_f32(LODWORD(v122), v123), v123);
        v120 = vmul_n_f32(v120, vmul_f32(v124, vrecps_f32(LODWORD(v122), v124)).f32[0]);
      }

      v125 = vadd_f32(v116, v111);
      v12.i64[0] = 0;
      v126 = vmvn_s8(vceqz_f32(v125));
      v127 = vpmax_u32(v126, v126).u32[0];
      v128 = 0;
      if ((v127 & 0x80000000) != 0)
      {
        v129 = vmul_f32(v125, v125);
        v129.i32[0] = vadd_f32(v129, vdup_lane_s32(v129, 1)).u32[0];
        v130 = vrsqrte_f32(v129.u32[0]);
        v131 = vmul_f32(vrsqrts_f32(v129.u32[0], vmul_f32(v130, v130)), v130);
        v128 = vmul_n_f32(v125, vmul_f32(v131, vrsqrts_f32(v129.u32[0], vmul_f32(v131, v131))).f32[0]);
      }

      v132 = vadd_f32(v120, v116);
      v133 = vmvn_s8(vceqz_f32(v132));
      if ((vpmax_u32(v133, v133).u32[0] & 0x80000000) != 0)
      {
        v134 = vmul_f32(v132, v132);
        v134.i32[0] = vadd_f32(v134, vdup_lane_s32(v134, 1)).u32[0];
        v135 = vrsqrte_f32(v134.u32[0]);
        v136 = vmul_f32(vrsqrts_f32(v134.u32[0], vmul_f32(v135, v135)), v135);
        *v12.f32 = vmul_n_f32(v132, vmul_f32(v136, vrsqrts_f32(v134.u32[0], vmul_f32(v136, v136))).f32[0]);
      }

      *v80.f32 = vmul_f32(vmul_n_f32(v77, v14.f32[0]), v102);
      *v13.f32 = vmul_f32(vmul_n_f32(v79, v14.f32[0]), *v13.f32);
      *v14.f32 = vmul_f32(vmul_n_f32(v77, v117), v128);
      *v12.f32 = vmul_f32(vmul_n_f32(v79, v117), *v12.f32);
      this[4] = vzip1_s32(vcvt_f16_f32(v80), vcvt_f16_f32(v13));
      this[7] = vzip1_s32(vcvt_f16_f32(v14), vcvt_f16_f32(v12));
      this = RB::Fill::MeshGradient::PatchBuffer::commit_patch(a2, v19);
      v4 = *v139;
      ++v11;
      if (v82 >= v139->u32[0] - 1)
      {
        goto LABEL_72;
      }
    }
  }

  return this;
}

float32x2_t *RB::Fill::MeshGradient::make_bezier_grid(float32x2_t *this, RB::Fill::MeshGradient::PatchBuffer *a2, const RB::Fill::MeshGradient::ColorConversion *a3)
{
  v3 = *&this[1] + 16;
  v4 = *this;
  v33[0] = v3 + 8 * this[3].i32[0] * RB::Fill::MeshGradient::points_per_elt[this[5].i8[3] & 0xF];
  v33[1] = v4;
  v31 = v4;
  v34 = v4;
  if (HIDWORD(v4) != 1)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    v9 = v4;
    while (v4 == 1)
    {
LABEL_8:
      ++v8;
      v9 += v31;
      v7 += v31;
      if (v8 >= HIDWORD(v4) - 1)
      {
        return this;
      }
    }

    v10 = 0;
    while (1)
    {
      this = RB::Fill::MeshGradient::PatchBuffer::alloc_patch(a2);
      if (!this)
      {
        break;
      }

      v15 = this;
      v16 = (v3 + 40 * (v7 + v10));
      v11.i64[0] = *v16;
      v17 = (v3 + 40 * (v9 + v10));
      v12.i64[0] = *v17;
      v14.i64[0] = v16[3];
      v13.i64[0] = v16[4];
      v18 = v17[2];
      v19 = v17[3];
      v20 = (v3 + 40 * (v7 + v10 + 1));
      v21 = (v3 + 40 * (v9 + v10 + 1));
      v23 = *v20;
      v22 = v20[1];
      v24 = v20[4];
      v26 = v21[1];
      v25 = v21[2];
      v27 = *v21;
      *this = *v11.f32;
      this[1] = *v12.f32;
      this[2] = v23;
      this[3] = v27;
      *v13.f32 = vsub_f32(*v13.f32, *v11.f32);
      *v11.f32 = vsub_f32(*v14.f32, *v11.f32);
      *v14.f32 = vsub_f32(v19, *v12.f32);
      *v12.f32 = vsub_f32(v18, *v12.f32);
      v28 = vcvt_hight_f16_f32(vcvt_f16_f32(v13), v12);
      v29 = vuzp1q_s32(v28, vcvt_hight_f16_f32(vcvt_f16_f32(v11), v14));
      *v12.f32 = vsub_f32(v22, v23);
      *v28.f32 = vsub_f32(v24, v23);
      *v14.f32 = vsub_f32(v25, v27);
      v30 = vcvt_hight_f16_f32(vcvt_f16_f32(v28), v14);
      *v14.f32 = vsub_f32(v26, v27);
      *this[4].f32 = v29;
      *this[6].f32 = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(v12), v14), v30);
      this = RB::Fill::MeshGradient::PatchBuffer::commit_patch(a2, v15);
      v4 = *v6;
      if (++v10 >= (v6->u32[0] - 1))
      {
        goto LABEL_8;
      }
    }
  }

  return this;
}

float32x2_t *RB::Fill::MeshGradient::make_coons_patches(float32x2_t *this, RB::Fill::MeshGradient::PatchBuffer *a2, const RB::Fill::MeshGradient::ColorConversion *a3)
{
  v3 = this[3].i32[0];
  if (v3)
  {
    v5 = this;
    v6 = 0;
    v7 = this[1];
    v8 = (*&v7 + 8 * v3 * RB::Fill::MeshGradient::points_per_elt[this[5].i8[3] & 0xF] + 40);
    v9 = (*&v7 + 56);
    do
    {
      this = RB::Fill::MeshGradient::PatchBuffer::alloc_patch(a2);
      if (!this)
      {
        break;
      }

      *v10.f32 = v9[-5];
      *v11.f32 = v9[-4];
      *v12.f32 = v9[-3];
      *v13.f32 = v9[-2];
      *v14.f32 = v9[-1];
      v15 = *v9;
      v16 = v9[1];
      v17 = v9[2];
      v18 = v9[3];
      v19 = v9[4];
      v20 = v9[5];
      v21 = v9[6];
      *this = *v10.f32;
      this[1] = *v13.f32;
      this[2] = v19;
      this[3] = v16;
      *v11.f32 = vsub_f32(*v11.f32, *v10.f32);
      *v10.f32 = vsub_f32(v21, *v10.f32);
      *v14.f32 = vsub_f32(*v14.f32, *v13.f32);
      *v12.f32 = vsub_f32(*v12.f32, *v13.f32);
      v22 = vcvt_hight_f16_f32(vcvt_f16_f32(v11), v12);
      v23 = vuzp1q_s32(v22, vcvt_hight_f16_f32(vcvt_f16_f32(v10), v14));
      *v22.f32 = vsub_f32(v20, v19);
      *v12.f32 = vsub_f32(v18, v19);
      *v13.f32 = vsub_f32(v17, v16);
      v24 = vcvt_hight_f16_f32(vcvt_f16_f32(v12), v13);
      *v13.f32 = vsub_f32(v15, v16);
      *this[4].f32 = v23;
      *this[6].f32 = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(v22), v13), v24);
      v22.i64[0] = *(v8 - 1);
      v24.i64[0] = *v8;
      *this[10].f32 = *(v8 - 3);
      this[12] = *v24.i8;
      this[13] = *v22.f32;
      this = RB::Fill::MeshGradient::PatchBuffer::commit_patch(a2, this);
      ++v6;
      v8 += 4;
      v9 += 12;
    }

    while (v6 < v5[3].u32[0]);
  }

  return this;
}

float32x2_t *RB::Fill::MeshGradient::make_tensor_patches(float32x2_t *this, RB::Fill::MeshGradient::PatchBuffer *a2, const RB::Fill::MeshGradient::ColorConversion *a3)
{
  v3 = this[3].i32[0];
  if (v3)
  {
    v6 = this;
    v7 = 0;
    v8 = this[1];
    v9 = (*&v8 + 8 * v3 * RB::Fill::MeshGradient::points_per_elt[this[5].i8[3] & 0xF] + 40);
    v10 = (*&v8 + 72);
    do
    {
      this = RB::Fill::MeshGradient::PatchBuffer::alloc_patch(a2);
      if (!this)
      {
        break;
      }

      v17 = this;
      v12.i64[0] = *(v10 - 7);
      v13.i64[0] = *(v10 - 6);
      v14.i64[0] = *(v10 - 5);
      v11.i64[0] = *(v10 - 4);
      v15.i64[0] = *(v10 - 3);
      v18 = *(v10 - 2);
      v19 = *(v10 - 1);
      v16.i64[0] = *v10;
      v20 = v10[1];
      v21 = v10[2];
      v22 = v10[3];
      v23 = v10[4];
      v24 = v10[5];
      v25 = v10[6];
      v26 = v10[7];
      v27 = v10[8];
      *this = *v12.f32;
      this[1] = *v11.f32;
      this[2] = v24;
      this[3] = v27;
      *v13.f32 = vsub_f32(*v13.f32, *v12.f32);
      *v15.f32 = vsub_f32(*v15.f32, *v12.f32);
      *v16.f32 = vsub_f32(*v16.f32, *v11.f32);
      v28 = vcvt_hight_f16_f32(vcvt_f16_f32(v15), v16);
      *v14.f32 = vsub_f32(*v14.f32, *v11.f32);
      v29 = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(v13), v14), v28);
      *v14.f32 = vsub_f32(v20, v24);
      *v28.f32 = vsub_f32(v25, v24);
      *v16.f32 = vsub_f32(v26, v27);
      v30 = vcvt_hight_f16_f32(vcvt_f16_f32(v28), v16);
      *v16.f32 = vsub_f32(v23, v27);
      v31 = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(v14), v16), v30);
      *this[4].f32 = v29;
      *this[6].f32 = v31;
      *v12.f32 = vsub_f32(v18, *v12.f32);
      *v29.f32 = vsub_f32(v21, v24);
      *v31.f32 = vsub_f32(v22, v27);
      *v11.f32 = vsub_f32(v19, *v11.f32);
      *this[8].f32 = vuzp1q_s32(vcvt_hight_f16_f32(vcvt_f16_f32(v12), v11), vcvt_hight_f16_f32(vcvt_f16_f32(v29), v31));
      v32 = v9[-2];
      v34 = v9[-1];
      v33 = *v9;
      this[10] = v9[-3];
      if (*(a3 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a3, &this[10]);
      }

      v17[11] = v32;
      if (*(a3 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a3, v17 + 11);
      }

      v17[12] = v34;
      if (*(a3 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a3, v17 + 12);
      }

      v17[13] = v33;
      if (*(a3 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a3, v17 + 13);
      }

      this = RB::Fill::MeshGradient::PatchBuffer::commit_patch(a2, v17);
      ++v7;
      v9 += 4;
      v10 += 16;
    }

    while (v7 < v6[3].u32[0]);
  }

  return this;
}

void RB::Fill::anonymous namespace::make_grid_color(float16x4_t *a1, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6)
{
  v12 = *a2;
  v13 = *(a2 + 4);
  v14 = *(*a2 + 8 * (v13 * a4 + a3));
  v114 = v14;
  if (*(a5 + 193) != 1)
  {
    v16 = a3 + 1;
    v17 = *(v12 + 8 * (v13 * a4 + a3 + 1));
    v114 = v17;
    goto LABEL_7;
  }

  RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
  v14 = v114;
  v12 = *a2;
  v13 = *(a2 + 4);
  v15 = *(a5 + 193);
  v16 = a3 + 1;
  v17 = *(*a2 + 8 * (a3 + 1 + v13 * a4));
  v114 = v17;
  if ((v15 & 1) == 0)
  {
LABEL_7:
    v19 = a4 + 1;
    v20 = v13 * (a4 + 1);
    v21 = *(v12 + 8 * (v20 + a3));
    goto LABEL_8;
  }

  RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
  v17 = v114;
  v12 = *a2;
  v18 = *(a5 + 193);
  v19 = a4 + 1;
  v20 = *(a2 + 4) * (a4 + 1);
  v21 = *(*a2 + 8 * (v20 + a3));
  v114 = v21;
  if ((v18 & 1) == 0)
  {
LABEL_8:
    v23 = *(v12 + 8 * (v20 + v16));
    goto LABEL_9;
  }

  RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
  v21 = v114;
  v22 = *(a5 + 193);
  v23 = *(*a2 + 8 * (v16 + *(a2 + 4) * v19));
  v114 = v23;
  if (v22)
  {
    RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
    v23 = v114;
  }

LABEL_9:
  a1[10] = v14;
  a1[11] = v21;
  a1[12] = v17;
  a1[13] = v23;
  if (a6)
  {
    v24 = a3 - 1;
    v25 = *(a2 + 2);
    v26 = *(a2 + 3);
    if (v25 <= a3 - 1 || v26 <= a4)
    {
      v27 = v14;
    }

    else
    {
      v27 = *(*a2 + 8 * (v24 + *(a2 + 4) * a4));
      v114 = v27;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v27 = v114;
        v25 = *(a2 + 2);
        v26 = *(a2 + 3);
      }
    }

    v28 = a3 + 2;
    if (v25 <= a3 + 2 || v26 <= a4)
    {
      v29 = v17;
    }

    else
    {
      v29 = *(*a2 + 8 * (v28 + *(a2 + 4) * a4));
      v114 = v29;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v29 = v114;
        v25 = *(a2 + 2);
        v26 = *(a2 + 3);
      }
    }

    if (v25 <= v24 || v26 <= v19)
    {
      v30 = v21;
    }

    else
    {
      v30 = *(*a2 + 8 * (v24 + *(a2 + 4) * v19));
      v114 = v30;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v30 = v114;
        v25 = *(a2 + 2);
        v26 = *(a2 + 3);
      }
    }

    v31 = v23;
    if (v25 > v28)
    {
      v31 = v23;
      if (v26 > v19)
      {
        v31 = *(*a2 + 8 * (v28 + *(a2 + 4) * v19));
        v114 = v31;
        if (*(a5 + 193) == 1)
        {
          RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
          v31 = v114;
        }
      }
    }

    v32 = vcvtq_f32_f16(v14);
    v33 = vsubq_f32(v32, vcvtq_f32_f16(v27));
    v34 = vcvtq_f32_f16(v17);
    v35 = vsubq_f32(v34, v32);
    v36 = vsubq_f32(vcvtq_f32_f16(v29), v34);
    v37.i64[0] = 0x3F0000003F000000;
    v37.i64[1] = 0x3F0000003F000000;
    v38 = vmulq_f32(vaddq_f32(v33, v35), v37);
    v39 = vmulq_f32(vaddq_f32(v36, v35), v37);
    v40 = vcltzq_f32(v35);
    v41 = veorq_s8(vcltzq_f32(v33), v40);
    __asm { FMOV            V20.4S, #3.0 }

    v47 = vmulq_f32(v33, _Q20);
    v48 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v38), v41), vabsq_f32(v47)), v47, vbicq_s8(v38, v41));
    v49 = vmulq_f32(v35, _Q20);
    v50 = vbslq_s8(vcagtq_f32(v48, v49), v49, v48);
    v51 = veorq_s8(vcltzq_f32(v36), v40);
    v52 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v39), v51), vabsq_f32(v49)), v49, vbicq_s8(v39, v51));
    v53 = vmulq_f32(v36, _Q20);
    v54 = vbslq_s8(vcagtq_f32(v52, v53), v53, v52);
    v55 = vdupq_n_s32(0x3EAAAAABu);
    v56 = vmlaq_f32(v32, v55, v50);
    v57 = vmlsq_f32(v34, v55, v54);
    *v54.f32 = vcvt_f16_f32(v56);
    v58 = vcvtq_f32_f16(v21);
    v59 = vsubq_f32(v58, vcvtq_f32_f16(v30));
    v60 = vcvtq_f32_f16(v23);
    v61 = vsubq_f32(v60, v58);
    v62 = vsubq_f32(vcvtq_f32_f16(v31), v60);
    v63 = vmulq_f32(vaddq_f32(v59, v61), v37);
    v64 = vmulq_f32(vaddq_f32(v62, v61), v37);
    v65 = vcltzq_f32(v61);
    v66 = veorq_s8(vcltzq_f32(v59), v65);
    v67 = vmulq_f32(v59, _Q20);
    v68 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v63), v66), vabsq_f32(v67)), v67, vbicq_s8(v63, v66));
    v69 = vmulq_f32(v61, _Q20);
    v70 = veorq_s8(vcltzq_f32(v62), v65);
    v71 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v64), v70), vabsq_f32(v69)), v69, vbicq_s8(v64, v70));
    v72 = vmulq_f32(v62, _Q20);
    a1[16] = *v54.f32;
    a1[17] = vcvt_f16_f32(vmlaq_f32(v58, v55, vbslq_s8(vcagtq_f32(v68, v69), v69, v68)));
    a1[18] = vcvt_f16_f32(v57);
    a1[19] = vcvt_f16_f32(vmlsq_f32(v60, v55, vbslq_s8(vcagtq_f32(v71, v72), v72, v71)));
    v73 = a4 - 1;
    v74 = *(a2 + 2);
    v75 = *(a2 + 3);
    v112 = _Q20;
    v113 = v34;
    v110 = v60;
    v111 = v32;
    v109 = v58;
    if (v74 > a3 && v75 > v73)
    {
      v14 = *(*a2 + 8 * (a3 + *(a2 + 4) * v73));
      v114 = v14;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v58 = v109;
        v60 = v110;
        v32 = v111;
        _Q20 = v112;
        v34 = v113;
        v14 = v114;
        v74 = *(a2 + 2);
        v75 = *(a2 + 3);
      }
    }

    if (v74 > v16 && v75 > v73)
    {
      v17 = *(*a2 + 8 * (v16 + *(a2 + 4) * v73));
      v114 = v17;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v58 = v109;
        v60 = v110;
        v32 = v111;
        _Q20 = v112;
        v34 = v113;
        v17 = v114;
        v74 = *(a2 + 2);
        v75 = *(a2 + 3);
      }
    }

    v76 = a4 + 2;
    if (v74 > a3 && v75 > v76)
    {
      v21 = *(*a2 + 8 * (a3 + *(a2 + 4) * v76));
      v114 = v21;
      if (*(a5 + 193) == 1)
      {
        RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
        v58 = v109;
        v60 = v110;
        v32 = v111;
        _Q20 = v112;
        v34 = v113;
        v21 = v114;
        v74 = *(a2 + 2);
        v75 = *(a2 + 3);
      }
    }

    v77 = v60;
    if (v74 > v16)
    {
      v77 = v60;
      if (v75 > v76)
      {
        v78 = *(*a2 + 8 * (v16 + *(a2 + 4) * v76));
        v114 = v78;
        if (*(a5 + 193) == 1)
        {
          RB::Fill::MeshGradient::ColorConversion::convert(a5, &v114);
          v58 = v109;
          v60 = v110;
          v32 = v111;
          _Q20 = v112;
          v34 = v113;
          v78 = v114;
        }

        v77 = vcvtq_f32_f16(v78);
      }
    }

    v79 = vsubq_f32(v32, vcvtq_f32_f16(v14));
    v80 = vsubq_f32(v58, v32);
    v81 = vsubq_f32(vcvtq_f32_f16(v21), v58);
    v82.i64[0] = 0x3F0000003F000000;
    v82.i64[1] = 0x3F0000003F000000;
    v83 = vmulq_f32(vaddq_f32(v79, v80), v82);
    v84 = vmulq_f32(vaddq_f32(v81, v80), v82);
    v85 = vcltzq_f32(v80);
    v86 = veorq_s8(vcltzq_f32(v79), v85);
    v87 = vmulq_f32(v79, _Q20);
    v88 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v83), v86), vabsq_f32(v87)), v87, vbicq_s8(v83, v86));
    v89 = vmulq_f32(v80, _Q20);
    v90 = vbslq_s8(vcagtq_f32(v88, v89), v89, v88);
    v91 = veorq_s8(vcltzq_f32(v81), v85);
    v92 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v84), v91), vabsq_f32(v89)), v89, vbicq_s8(v84, v91));
    v93 = vmulq_f32(v81, _Q20);
    v94 = vbslq_s8(vcagtq_f32(v92, v93), v93, v92);
    v95 = vdupq_n_s32(0x3EAAAAABu);
    v96 = vsubq_f32(v34, vcvtq_f32_f16(v17));
    v97 = vsubq_f32(v60, v34);
    v98 = vsubq_f32(v77, v60);
    v99 = vmulq_f32(vaddq_f32(v96, v97), v82);
    v100 = vmulq_f32(vaddq_f32(v98, v97), v82);
    v101 = vcltzq_f32(v97);
    v102 = veorq_s8(vcltzq_f32(v96), v101);
    v103 = vmulq_f32(v96, _Q20);
    v104 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v99), v102), vabsq_f32(v103)), v103, vbicq_s8(v99, v102));
    v105 = vmulq_f32(v97, _Q20);
    v106 = veorq_s8(vcltzq_f32(v98), v101);
    v107 = vbslq_s8(vcgtq_f32(vbicq_s8(vabsq_f32(v100), v106), vabsq_f32(v105)), v105, vbicq_s8(v100, v106));
    v108 = vmulq_f32(v98, _Q20);
    a1[14] = vcvt_f16_f32(vmlaq_f32(v32, v95, v90));
    a1[15] = vcvt_f16_f32(vmlsq_f32(v58, v95, v94));
    a1[20] = vcvt_f16_f32(vmlaq_f32(v34, v95, vbslq_s8(vcagtq_f32(v104, v105), v105, v104)));
    a1[21] = vcvt_f16_f32(vmlsq_f32(v60, v95, vbslq_s8(vcagtq_f32(v107, v108), v108, v107)));
  }
}

uint64_t RB::Fill::MeshGradient::set_fill_state(uint64_t this, RB::RenderState *a2, const RB::RenderPass *a3, float a4, char a5)
{
  v5 = *(this + 43);
  v6 = v5 & 0xF;
  if ((v6 - 1) < 2)
  {
    v8 = (*(this + 42) >> 1) & 8;
    if (a5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v6 == 6)
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    if (v6 == 5)
    {
      v8 = 24;
    }

    else
    {
      v8 = v7;
    }

    if (a5)
    {
      goto LABEL_22;
    }
  }

  v9 = *(this + 42) & 0xF;
  switch(v9)
  {
    case 1:
      goto LABEL_16;
    case 3:
      v8 |= 4u;
LABEL_16:
      v10 = *(a3 + 128) > 0xFu;
      goto LABEL_17;
    case 2:
      v10 = *(a3 + 128) < 0x10u;
LABEL_17:
      v8 |= v10;
      break;
  }

  v11 = (v5 >> 3) & 2;
  if (a4 != 1.0)
  {
    v11 = 0;
  }

  v12 = v8 & 0xFFFFFFFD | v11;
  if (v8)
  {
    v8 = v12;
  }

LABEL_22:
  *a2 = *a2 & 0x3FFFF | (v8 << 18);
  return this;
}

void RB::Fill::MeshGradient::fill(int32x2_t *a1, CGContextRef *a2, int32x2_t a3, int32x2_t a4)
{
  v5 = a3;
  v6 = a2;
  a3.i32[0] = 0;
  v8 = vceq_s32(a4, 0x8000000080000000);
  v9 = vdup_lane_s32(vcgt_s32(a3, vpmin_u32(v8, v8)), 0);
  v184[128] = *MEMORY[0x1E69E9840];
  v10 = vbsl_s8(v9, vneg_f32(0x80000000800000), vcvt_f32_s32(a4));
  v105 = vbsl_s8(v9, 0x100000001000000, vcvt_f32_s32(v5));
  v178 = v105;
  v179 = v10;
  ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
  y = ClipBoundingBox.origin.y;
  height = ClipBoundingBox.size.height;
  RB::Rect::intersect(&v178, COERCE_DOUBLE(vcvt_f32_f64(ClipBoundingBox.origin)), vcvt_f32_f64(ClipBoundingBox.size));
  v14 = vceqz_f32(v179);
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  RB::CGContext::begin_bitmap(v6, &v178, 0, 0, &v177, v13);
  if (!v177)
  {
    return;
  }

  RB::CGContext::CGContext(v184, v177, *(v6 + 8), *(v6 + 2));
  *v15.f32 = v5;
  RB::Fill::Color::fill(&a1[3] + 4, v184, v15, a4);
  RB::CGContext::Raster::Raster(v176, v184);
  v17 = *(v6 + 8);
  if (a1[5].i8[1] == 1)
  {
    v17 = a1[5].u8[0];
  }

  _Q0.i16[0] = a1[4].i16[2];
  __asm { FCVT            S1, H0 }

  _Q0.i32[0] = 1.0;
  RB::Fill::MeshGradient::ColorConversion::ColorConversion(v180, (a1[5].u8[3] >> 4) & 1, v17, *(v6 + 8), a1[5].i8[2], _Q0, _S1, 0.0);
  v175[0] = a1;
  v175[1] = v176;
  v175[2] = v180;
  v23 = a1[5].i8[3] & 0xF;
  if ((v23 - 1) >= 4)
  {
    if (v23 == 6)
    {
      if (a1[3].i32[0])
      {
        v87 = 0;
        v88 = 2;
        do
        {
          RB::Fill::MeshGradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v175, v88 - 2, v88 - 1, v88);
          ++v87;
          v88 += 3;
        }

        while (v87 < a1[3].i32[0]);
      }
    }

    else if (v23 == 5 && a1->i32[1] != 1)
    {
      v29 = 0;
      v30 = *a1;
      do
      {
        v31 = v30.i32[0];
        if (v30.i32[0] != 1)
        {
          v32 = 0;
          do
          {
            v33 = v30.i32[1];
            v34 = v32 + v29 * v30.i32[1];
            RB::Fill::MeshGradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v175, v34, v34 + 1, v34 + v31);
            RB::Fill::MeshGradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v175, v34 + 1, v31 + v32++ + v29 * v33 + 1, v34 + v31);
            v30 = *a1;
            v31 = *a1;
          }

          while (v32 < v31 - 1);
        }

        ++v29;
      }

      while (v29 < v30.i32[1] - 1);
    }

    goto LABEL_54;
  }

  v24 = RB::Fill::MeshGradient::patches_info(a1);
  v26 = v25;
  v95 = HIDWORD(v24);
  v27 = v24 * HIDWORD(v24);
  if (v27 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](v24, v25);
    v96 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v96, v27);
LABEL_19:
    v35 = a1[2];
    if (v35)
    {
      v36 = *v35;
      v28 = v35[2];
      v164 = v35[1];
      v165 = v28;
      v163 = v36;
    }

    else
    {
      v163 = xmmword_195E42760;
      v164 = xmmword_195E42770;
      v165 = 0uLL;
    }

    v92 = v27;
    RB::Fill::MeshGradient::PatchBuffer::PatchBuffer(&v166, v95, v26, &v163, HIDWORD(v26) & 0xFFFFFFFB, v5, a4, *&v28);
    v91 = v6;
    v172 = 1;
    v173 = v96;
    v174 = v92;
    RB::Fill::MeshGradient::make_patches(a1, &v166, v180);
    v37 = fmaxf(sqrtf((v170 * 4.0) * sqrtf(vaddv_f32(vmul_f32(v168, v168)))), 1.0);
    v38 = sqrtf(v169) * 0.125;
    if (v37 < v38)
    {
      v37 = v38;
    }

    v39 = ceilf(log2f(v37));
    if (v39 > 7.0)
    {
      v39 = 7.0;
    }

    if (v171)
    {
      v40 = 0;
      v41 = (1 << v39);
      v104 = vadd_f32(v10, v105);
      v93 = vdup_n_s16(0x3955u);
      v94 = vdup_n_s16(0x3555u);
      do
      {
        v42 = &v96[v95 * v40];
        v43 = *v42;
        v44 = v42[2];
        v103 = v42[3];
        v45 = v42[5];
        v46 = vcvtq_f32_f16(v42[4]).u64[0];
        v46.i32[0] = v42[4].i32[1];
        v47 = vcvtq_f32_f16(v46);
        v48 = v42[6];
        v47.n128_u32[0] = v42[6].u32[1];
        v101 = v47.n128_u64[0];
        v97 = v42[7];
        v47.n128_u32[1] = v97.u32[1];
        v47.n128_u32[0] = v42[7].u32[1];
        v98 = v47.n128_u64[0];
        v99 = v48;
        v100 = v42[9];
        v47.n128_u32[1] = v100.u32[1];
        v47.n128_u32[0] = v42[9].u32[1];
        v102 = v47.n128_u64[0];
        v47.n128_u64[0] = v43;
        _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v163, v41, v47);
        v49 = vcvtq_f32_f16(v45);
        v49.n128_u64[0] = vadd_f32(v43, v49.n128_u64[0]);
        _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v159, v41, v49);
        v50 = vcvtq_f32_f16(v99);
        v50.n128_u64[0] = vadd_f32(v44, v50.n128_u64[0]);
        _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v155, v41, v50);
        v51 = vcvtq_f32_f16(v98);
        v51.n128_u64[0] = v44;
        _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v151, v41, v51);
        v52 = v42[10];
        v53 = v42[11];
        v54 = v42[12];
        v55 = v42[13];
        v99 = v55;
        if ((v167 & 2) != 0)
        {
          v58 = v42[19];
          v59 = v42[20];
          v100 = v42[21];
          v101 = v59;
          v102 = v42[24];
          v103 = v58;
        }

        else
        {
          v56 = vmla_f16(v52, v93, vsub_f16(v54, v52));
          v57 = vsub_f16(v55, v54);
          v101 = vmla_f16(v54, v94, v57);
          v100 = vmla_f16(v54, v93, v57);
          v103 = vmla_f16(v53, v93, vsub_f16(v55, v53));
          v102 = vmla_f16(v56, v94, vsub_f16(v103, v56));
        }

        _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v147, v41);
        _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v143, v41);
        _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v139, v41);
        v60 = _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v135, v41);
        v61 = 0;
        do
        {
          v60.n128_u64[0] = v163;
          v62 = _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v131, v41, v60);
          v62.n128_u64[0] = vadd_f32(*&v163, *(&v163 + 8));
          *&v163 = v62.n128_u64[0];
          *(&v163 + 1) = vadd_f32(*&v164, *(&v163 + 8));
          *&v164 = vadd_f32(*(&v164 + 8), *&v164);
          v159 = vadd_f32(v159, v160);
          v160 = vadd_f32(v161, v160);
          v161 = vadd_f32(v162, v161);
          v155 = vadd_f32(v155, v156);
          v156 = vadd_f32(v157, v156);
          v157 = vadd_f32(v158, v157);
          v151 = vadd_f32(v151, v152);
          v152 = vadd_f32(v153, v152);
          v153 = vadd_f32(v154, v153);
          _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v127, v41, v62);
          _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v123, v41);
          v147 = vadd_f16(v147, v148);
          v148 = vadd_f16(v149, v148);
          v149 = vadd_f16(v150, v149);
          v143 = vadd_f16(v143, v144);
          v144 = vadd_f16(v145, v144);
          v145 = vadd_f16(v146, v145);
          v139 = vadd_f16(v139, v140);
          v140 = vadd_f16(v141, v140);
          v141 = vadd_f16(v142, v141);
          v135 = vadd_f16(v135, v136);
          v136 = vadd_f16(v137, v136);
          v137 = vadd_f16(v138, v137);
          v60 = _ZN2RB13CubicIteratorIDv4_DF16_EC1ES1_S1_S1_S1_i(&v119, v41);
          v63 = v41;
          do
          {
            v64 = v131;
            v65 = vadd_f32(v132, v131);
            v131 = v65;
            v132 = vadd_f32(v133, v132);
            v133 = vadd_f32(v134, v133);
            v66 = v127;
            v67 = vadd_f32(v128, v127);
            v127 = v67;
            v128 = vadd_f32(v129, v128);
            v129 = vadd_f32(v130, v129);
            v68 = v123;
            v69 = vadd_f16(v124, v123);
            v123 = v69;
            v124 = vadd_f16(v125, v124);
            v125 = vadd_f16(v126, v125);
            v70 = v119;
            v71 = vadd_f16(v120, v119);
            v119 = v71;
            v120 = vadd_f16(v121, v120);
            v121 = vadd_f16(v122, v121);
            v72 = a1[2];
            if (v72)
            {
              v73 = vcvtq_f64_f32(v64);
              v74 = v72[1];
              v64 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v72[2], *v72, v73.f64[0]), v74, v73, 1));
              v75 = vcvtq_f64_f32(v66);
              v66 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v72[2], *v72, v75.f64[0]), v74, v75, 1));
              v76 = vcvtq_f64_f32(v65);
              v65 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v72[2], *v72, v76.f64[0]), v74, v76, 1));
              v77 = vcvtq_f64_f32(v67);
              v67 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v72[2], *v72, v77.f64[0]), v74, v77, 1));
            }

            v78 = vorr_s8(vcgt_f32(v105, vmaxnm_f32(vmaxnm_f32(v64, v66), vmaxnm_f32(v65, v67))), vcgt_f32(vminnm_f32(vminnm_f32(v64, v66), vminnm_f32(v65, v67)), v104));
            if ((vpmax_u32(v78, v78).u32[0] & 0x80000000) == 0)
            {
              v112 = 0x3C00000000000000;
              v113 = 0;
              v114 = 0;
              v109 = 0x3C00000000000000;
              v110 = 0;
              v111 = 0;
              v106 = 0x3C00000000000000;
              v107 = 0;
              v108 = 0;
              v79 = v181 | 0x100;
              v115 = v68;
              v117 = 0;
              v118 = v79;
              _S0 = v182;
              __asm { FCVT            H0, S0 }

              v116 = _H0;
              v82 = v183;
              if (v183 == 1)
              {
                RB::Fill::MeshGradient::ColorConversion::convert_out_slow(v180, &v115);
                _S0 = v182;
                v79 = v181 | 0x100;
                __asm { FCVT            H0, S0 }

                v82 = v183;
              }

              v112 = v70;
              v114 = v79;
              v113 = _H0;
              if (v82)
              {
                RB::Fill::MeshGradient::ColorConversion::convert_out_slow(v180, &v112);
                _S0 = v182;
                v79 = v181 | 0x100;
                __asm { FCVT            H0, S0 }

                v85 = v183;
              }

              else
              {
                v85 = 0;
              }

              v109 = v69;
              v111 = v79;
              v110 = _H0;
              if (v85)
              {
                RB::Fill::MeshGradient::ColorConversion::convert_out_slow(v180, &v109);
                _S0 = v182;
                __asm { FCVT            H0, S0 }

                v106 = v71;
                v108 = v181 | 0x100;
                v107 = _S0;
                if (v183)
                {
                  RB::Fill::MeshGradient::ColorConversion::convert_out_slow(v180, &v106);
                }
              }

              else
              {
                v106 = v71;
                v108 = v79;
                v107 = _H0;
              }

              RB::CGContext::Raster::fill_triangle(v176, &v115, &v106, &v112, v64, v67, v66);
              RB::CGContext::Raster::fill_triangle(v176, &v115, &v109, &v106, v64, v65, v67);
            }

            --v63;
          }

          while (v63);
          ++v61;
        }

        while (v61 != v41);
        ++v40;
      }

      while (v40 < v171);
    }

    v6 = v91;
    if (v92 <= 0x1000)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v96 = malloc_type_malloc(v24 * HIDWORD(v24), 0x100004077774924uLL);
  if (v96)
  {
    goto LABEL_19;
  }

  v96 = 0;
LABEL_50:
  free(v96);
LABEL_54:
  Image = CGBitmapContextCreateImage(v177);
  v186.origin.x = v178.f32[0];
  v186.origin.y = v178.f32[1];
  v186.size.width = v179.f32[0];
  v186.size.height = v179.f32[1];
  CGContextDrawImage(*v6, v186, Image);
  if (Image)
  {
    CFRelease(Image);
  }

  RB::CGContext::~CGContext(v184);
  if (v177)
  {
    CFRelease(v177);
  }
}

void sub_195E31248(_Unwind_Exception *a1)
{
  RB::CGContext::~CGContext((v1 + 1024));
  v3 = *(v1 + 792);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(a1);
}

void RB::Fill::MeshGradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = 0;
  v34[3] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*a1 + 24) * RB::Fill::MeshGradient::points_per_elt[*(*a1 + 43) & 0xF];
  v11 = *(*a1 + 8);
  do
  {
    v12 = &v31[v8];
    *v12 = 0x3C00000000000000;
    *(v12 + 2) = 0;
    *(v12 + 6) = 0;
    v8 += 14;
  }

  while (v8 != 42);
  v13 = 0;
  v14 = v11 + 16;
  v15 = v11 + 16 + 8 * v10;
  v16 = v34;
  do
  {
    if (v13 == 14)
    {
      v17 = a3;
    }

    else
    {
      v17 = a4;
    }

    if (!v13)
    {
      v17 = a2;
    }

    v18 = *(v14 + 8 * v17);
    *v16 = v18;
    v19 = *(v9 + 16);
    if (v19)
    {
      v20 = vcvtq_f64_f32(v18);
      *v16 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v19[2], *v19, v20.f64[0]), v19[1], v20, 1));
    }

    v21 = *(v15 + 8 * v17);
    v30 = v21;
    v22 = a1[2];
    if (*(v22 + 193) == 1)
    {
      RB::Fill::MeshGradient::ColorConversion::convert(v22, &v30);
      v21 = v30;
      v22 = a1[2];
    }

    v23 = &v31[v13];
    v24 = *(v22 + 4) | 0x100;
    *v23 = v21;
    *(v23 + 2) = 0;
    *(v23 + 6) = v24;
    _S0 = *(v22 + 8);
    __asm { FCVT            H0, S0 }

    *(v23 + 4) = _S0;
    if (*(v22 + 193) == 1)
    {
      RB::Fill::MeshGradient::ColorConversion::convert_out_slow(v22, v23);
    }

    v13 += 14;
    ++v16;
  }

  while (v13 != 42);
  RB::CGContext::Raster::fill_triangle(a1[1], v31, v32, v33, v34[0], v34[1], v34[2]);
}

void *RB::Fill::MeshGradient::encode(RB::Fill::MeshGradient *this, RB::Encoder *a2)
{
  v4 = *(this + 43);
  RB::ProtobufEncoder::encode_varint(a2, 8uLL);
  RB::ProtobufEncoder::encode_varint(a2, v4 & 0xF);
  RB::ProtobufEncoder::packed_fixed32_field(a2, 2, (*(this + 1) + 16), 2 * *(this + 6) * RB::Fill::MeshGradient::points_per_elt[*(this + 43) & 0xF]);
  result = RB::ProtobufEncoder::packed_fixed64_field(a2, 3, (*(this + 1) + 8 * *(this + 6) * RB::Fill::MeshGradient::points_per_elt[*(this + 43) & 0xF] + 16), *(this + 6) * RB::Fill::MeshGradient::colors_per_elt[*(this + 43) & 0xF]);
  v6 = *this;
  if (v6)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_14;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_14;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_14;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_14;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_14;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
LABEL_14:
    RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode((this + 28), a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v17 = *(this + 2);
  if (v17)
  {
    v18 = vandq_s8(vandq_s8(vceqq_f64(v17[1], xmmword_195E42770), vceqq_f64(*v17, xmmword_195E42760)), vceqzq_f64(v17[2]));
    if ((vandq_s8(vdupq_laneq_s64(v18, 1), v18).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::AffineTransform::encode(v17->f64, a2);
      result = RB::ProtobufEncoder::end_length_delimited(a2);
    }
  }

  v19 = (*(this + 42) & 0xF) - 1;
  if (v19 <= 2)
  {
    RB::ProtobufEncoder::encode_varint(a2, (8 * v19 + 56) & 0xF8);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  if ((*(this + 42) & 0x10) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);

    return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  return result;
}

void RB::Fill::MeshGradient::decode(RB::Fill::MeshGradient *this, RB::Heap **a2)
{
  v4 = 0;
  v5 = 0;
  __src = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *(this + 28) = 0;
  v6 = (this + 28);
  *(this + 20) = 0;
  *(this + 9) = 0;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(a2);
    if (!field)
    {
      break;
    }

    v8 = field >> 3;
    if ((field >> 3) > 5)
    {
      if (v8 <= 7)
      {
        if (v8 == 6)
        {
          v18[0] = xmmword_195E42760;
          v18[1] = xmmword_195E42770;
          v19 = 0;
          v20 = 0;
          if ((field & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::AffineTransform::decode(v18, a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          RB::Fill::Gradient::concat(this, v18, a2[8]);
        }

        else if (v8 == 7)
        {
          *(this + 42) &= 0xF0u;
          *(this + 42) |= RB::ProtobufDecoder::BOOL_field(a2, field);
        }
      }

      else
      {
        switch(v8)
        {
          case 8:
            *(this + 42) &= 0xF0u;
            if (RB::ProtobufDecoder::BOOL_field(a2, field))
            {
              v9 = 2;
            }

            else
            {
              v9 = 0;
            }

LABEL_41:
            *(this + 42) |= v9;
            break;
          case 9:
            *(this + 42) &= 0xF0u;
            if (RB::ProtobufDecoder::BOOL_field(a2, field))
            {
              v9 = 3;
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_41;
          case 0xA:
            *(this + 42) &= ~0x10u;
            if (RB::ProtobufDecoder::BOOL_field(a2, field))
            {
              v9 = 16;
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_41;
        }
      }
    }

    else if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v13 = RB::ProtobufDecoder::uint_field(a2, field);
        if (v13 <= 6)
        {
          v4 = v13;
        }

        else
        {
          v4 = 0;
        }
      }

      else if (v8 == 2)
      {
        v10 = RB::ProtobufDecoder::float_field(a2, field);
        v11 = v25;
        v12 = v25 + 1;
        if (v26 < v25 + 1)
        {
          RB::vector<float,0ul,unsigned long>::reserve_slow(&__src, v12);
          v11 = v25;
          v12 = v25 + 1;
        }

        *(__src + v11) = v10;
        v25 = v12;
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          v14 = RB::ProtobufDecoder::color_field(a2, field);
          v15 = v22;
          if (v23 < v22 + 1)
          {
            RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(&v21, v22 + 1);
            v15 = v22;
          }

          *(v21 + v15) = v14;
          ++v22;
          break;
        case 4:
          v5 = RB::ProtobufDecoder::uint_field(a2, field);
          break;
        case 5:
          if ((field & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::Color::decode(v6, a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          break;
      }
    }
  }

  v16 = 0;
  v27 = v4;
  if (v4 <= 6u)
  {
    if (((1 << v4) & 0x26) != 0)
    {
      v16 = v22;
    }

    else if (((1 << v4) & 0x18) != 0)
    {
      v16 = v22 >> 2;
    }

    else if (v4 == 6)
    {
      v16 = v22 / 3;
    }
  }

  if (RB::Fill::MeshGradient::valid_config(&v27, v16, v5, this))
  {
    v18[0] = 0uLL;
    __dst[0] = 0;
    __dst[1] = 0;
    if (RB::Fill::MeshGradient::allocate_data(this, v4, v16, v18, __dst))
    {
      if (v16)
      {
        memcpy(*&v18[0].f64[0], __src, 8 * *&v18[0].f64[1]);
        if (v22)
        {
          memmove(__dst[0], v21, 8 * v22);
        }
      }

      RB::Fill::MeshGradient::update_colors(this);
    }
  }

  if (v21)
  {
    free(v21);
  }

  if (__src)
  {
    free(__src);
  }
}

void sub_195E31AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a22)
  {
    free(a22);
  }

  if (a25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

void RB::Fill::MeshGradient::attributes(RB::Fill::MeshGradient *this, RB::XML::Element *a2)
{
  v2 = *(this + 43) & 0xF;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4u:
        v3 = "tensor-product-patches";
        break;
      case 5u:
        v3 = "triangle-grid";
        break;
      case 6u:
        v3 = "triangles";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 1u:
        v3 = "vertex-grid";
        break;
      case 2u:
        v3 = "bezier-grid";
        break;
      case 3u:
        v3 = "coons-patches";
        break;
      default:
LABEL_15:
        v4 = (*(this + 42) & 0xF) - 1;
        if (v4 <= 2)
        {
          v5 = off_1E744E198[v4];
          v22 = &unk_1F0A38D58;
          v23[0] = v5;
          RB::XML::Element::set<RB::XML::Value::ConstantString>();
        }

        v6 = *(this + 2);
        if (v6)
        {
          v7 = *v6;
          v8 = v6[1];
          v9 = v6[2];
          v10 = vandq_s8(vandq_s8(vceqq_f64(v8, xmmword_195E42770), vceqq_f64(*v6, xmmword_195E42760)), vceqzq_f64(v9));
          if ((vandq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0x8000000000000000) == 0)
          {
            v22 = &unk_1F0A38DA8;
            *v23 = v7;
            v24 = v8;
            v25 = v9;
            RB::XML::Element::set<RB::XML::Value::AffineMatrix>();
          }
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_31;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_31;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_31;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_31;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_31;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
LABEL_31:
          RB::XML::Value::Color::Color(&v22, (this + 28));
          RB::XML::Element::set<RB::XML::Value::Color>();
        }

        if (*(this + 41) == 1)
        {
          v21 = rb_color_space(*(this + 40) | 0x100u);
          v22 = &unk_1F0A3F9D8;
          LODWORD(v23[0]) = v21;
          RB::XML::Element::set<RB::XML::Value::ColorSpace>();
        }

        RB::XML::Value::FloatArray::FloatArray<float>(&v22, (*(this + 1) + 16), 2 * *(this + 6) * RB::Fill::MeshGradient::points_per_elt[*(this + 43) & 0xF]);
        RB::XML::Element::set<RB::XML::Value::FloatArray>();
    }
  }

  v22 = &unk_1F0A38D58;
  v23[0] = v3;
  RB::XML::Element::set<RB::XML::Value::ConstantString>();
}

void sub_195E31EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_195E3206C(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  MEMORY[0x19A8C09E0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t RB::Refcount<RB::Fill::MeshGradient::Data,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RBFillData::apply<RB::DestroyAny>(result);
  }

  return result;
}

void *RB::vector<RB::Fill::MeshGradient::MeshBuffer,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 35) + (*(__dst + 35) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 35) + (*(__dst + 35) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,32ul>(*(__dst + 16), __dst, 4u, __dst + 35, v3);
  *(__dst + 16) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,32ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 32 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(32 * a5);
    v9 = v8 >> 5;
    if (*a4 != (v8 >> 5))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 32 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t _ZN2RB13CubicIteratorIDv4_DF16_EC2ES1_S1_S1_S1_i(uint64_t result, int a2, float16x4_t a3, float16x4_t a4, float16x4_t a5, float16x4_t a6)
{
  v6 = vmul_f16(vsub_f16(a4, a3), 0x4200420042004200);
  v7 = vmla_f16(vneg_f16(v6), 0x4200420042004200, vsub_f16(a5, a4));
  v8 = vsub_f16(a6, vadd_f16(vadd_f16(v6, a3), v7));
  _S3 = 1.0 / a2;
  _S5 = _S3 * _S3;
  _S6 = (_S3 * _S3) * _S3;
  __asm { FCVT            H6, S6 }

  v16 = vmul_n_f16(vmul_f16(v8, 0x4600460046004600), *&_S6);
  *(result + 24) = v16;
  __asm { FCVT            H5, S5 }

  v17 = vmul_n_f16(v7, *&_S5);
  __asm { FCVT            H3, S3 }

  *result = *&a3;
  *(result + 8) = vmla_n_f16(vmla_n_f16(v17, v6, *&_S3), v8, *&_S6);
  *(result + 16) = vmla_f16(v16, 0x4000400040004000, v17);
  return result;
}

uint64_t _ZN2RB3XML5Value10ColorArrayC2IDF16_EEPKDv4_T_m12RBColorSpace(uint64_t a1, uint64_t *a2, unint64_t a3, int a4)
{
  *a1 = &unk_1F0A3FA00;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  if (a3)
  {
    v7 = a3;
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(a1 + 8, a3);
    v9 = *(a1 + 16);
    do
    {
      v10 = *a2;
      if (*(a1 + 24) < (v9 + 1))
      {
        RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v5, v9 + 1);
        v9 = *(a1 + 16);
      }

      *(*(a1 + 8) + 8 * v9) = v10;
      v9 = *(a1 + 16) + 1;
      *(a1 + 16) = v9;
      ++a2;
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_195E32328(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_195E323AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::ColorArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorArray>,std::allocator<RB::XML::Value::ColorArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::ColorArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorArray>,std::allocator<RB::XML::Value::ColorArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL RBSurfaceIsOpaque(uint64_t a1)
{
  if (*(a1 + 65))
  {
    return 1;
  }

  if (*(a1 + 64) == 1)
  {
    return *(a1 + 108) >= 1.0;
  }

  return 0;
}

float RB::Transition::set_add_remove_duration(RB::Transition *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  result = (a2 * 255.0) + 0.5;
  *(this + 17) = result;
  return result;
}

BOOL RB::Transition::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 20) != *(a2 + 20) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = RB::Animation::operator==(a1 + 56, a2 + 56);
  if (result)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = a1 + 24;
      v8 = a2 + 24;
      if (*(a1 + 40))
      {
        v7 = *(a1 + 40);
      }

      if (*(a2 + 40))
      {
        v8 = *(a2 + 40);
      }

      do
      {
        v9 = (v7 + 4 * v6);
        v10 = (v8 + 4 * v6);
        v11 = *v9;
        result = *v9 == *v10;
        if (*v9 != *v10)
        {
          break;
        }

        v12 = RB::Transition::_effect_args[v11 & 0x3F];
        if (((0x187FA3uLL >> v11) & 1) == 0)
        {
          v13 = v9 + 1;
          v14 = v10 + 1;
          if (v12 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = RB::Transition::_effect_args[v11 & 0x3F];
          }

          do
          {
            v17 = *v13++;
            v16 = v17;
            v18 = *v14++;
            if (v16 != v18)
            {
              return 0;
            }
          }

          while (--v15);
        }

        v6 += v12 + 1;
      }

      while (v6 < v5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

_DWORD *RB::Transition::add_default_effect(_DWORD *this)
{
  v1 = this;
  v2 = this + 6;
  v3 = this[12];
  if (this[13] < (v3 + 1))
  {
    this = RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(this + 6, v3 + 1);
    v3 = v1[12];
  }

  v4 = *(v1 + 5);
  if (!v4)
  {
    v4 = v2;
  }

  v4[v3] = -16774143;
  ++v1[12];
  return this;
}

void *RB::Transition::encode(RB::Transition *this, RB::Encoder *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  result = rb_transition_method(*(this + 3));
  if (result)
  {
    v5 = result;
    RB::ProtobufEncoder::encode_varint(a2, 8uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v5);
  }

  if (*(this + 12))
  {
    v6 = 0;
    do
    {
      if (*(this + 5))
      {
        v7 = *(this + 5);
      }

      else
      {
        v7 = this + 24;
      }

      RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      v8 = &v7[4 * v6];
      v10 = (v8 + 4);
      v9 = *v8;
      v11 = *v8 & 0x3F;
      if ((*v8 & 0x3F) != 1)
      {
        RB::ProtobufEncoder::encode_varint(a2, 8uLL);
        RB::ProtobufEncoder::encode_varint(a2, v11);
        v9 = *v8;
      }

      v12 = BYTE2(v9);
      if ((v9 & 0x40) != 0)
      {
        if (BYTE2(v9) == HIBYTE(v9))
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);
          RB::ProtobufEncoder::encode_varint(a2, v12);
        }

        else
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);
          RB::ProtobufEncoder::encode_varint(a2, v12);
          v15 = *v8;
          RB::ProtobufEncoder::encode_varint(a2, 0x58uLL);
          RB::ProtobufEncoder::encode_varint(a2, ((v15 << 25) >> 31) & HIBYTE(v15));
        }
      }

      else
      {
        *&v13 = BYTE2(v9) * 0.0039216;
        if (*&v13 == 0.0 || (RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL), RB::ProtobufEncoder::encode_fixed32(a2, v13), v9 = *v8, (*v8 & 0x40) == 0))
        {
          *&v14 = HIBYTE(v9) * 0.0039216;
          if (*&v14 != 1.0)
          {
            RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
            RB::ProtobufEncoder::encode_fixed32(a2, v14);
          }
        }
      }

      v16 = *v8;
      v17 = *v8 >> 10;
      if (v17 != 3)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
        RB::ProtobufEncoder::encode_varint(a2, v17);
        v16 = *v8;
      }

      if ((v16 & 0x80) != 0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
        RB::ProtobufEncoder::encode_varint(a2, 1uLL);
        v16 = *v8;
      }

      if ((v16 & 0x100) != 0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
        RB::ProtobufEncoder::encode_varint(a2, 1uLL);
        v16 = *v8;
      }

      if ((v16 & 0x200) != 0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x60uLL);
        RB::ProtobufEncoder::encode_varint(a2, 1uLL);
        v16 = *v8;
      }

      v18 = v16;
      if (((0x187FA3uLL >> v16) & 1) == 0)
      {
        v19 = 0;
        v20 = 0;
        v21 = RB::Transition::_effect_args[v18 & 0x3F];
        v31 = 0;
        v32 = 0;
        v33 = 4;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        do
        {
          v23 = v20 + 1;
          if (v33 < v20 + 1)
          {
            RB::vector<unsigned int,4ul,unsigned long>::reserve_slow(v30, v20 + 1);
            v19 = v31;
            v20 = v32;
            v23 = v32 + 1;
          }

          v24 = *v10++;
          v25 = v24;
          if (v19)
          {
            v26 = v19;
          }

          else
          {
            v26 = v30;
          }

          v26[v20] = v25;
          v32 = v23;
          v20 = v23;
          --v22;
        }

        while (v22);
        RB::ProtobufEncoder::packed_fixed32_field(a2, 2, v26, v23);
        if (v31)
        {
          free(v31);
        }
      }

      result = RB::ProtobufEncoder::end_length_delimited(a2);
      v6 += RB::Transition::_effect_args[*v8 & 0x3F] + 1;
    }

    while (v6 < *(this + 12));
  }

  v27 = *(this + 17);
  if (v27 != 32)
  {
    *&v28 = v27 * 0.0039216;
    if (*&v28 != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
      result = RB::ProtobufEncoder::encode_fixed32(a2, v28);
    }
  }

  v29 = *(this + 5);
  if ((v29 + 1) >= 2)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v29);
  }

  if (*(this + 16) == 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  if (*(this + 22))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Animation::encode(this + 7, a2);
    return RB::ProtobufEncoder::end_length_delimited(a2);
  }

  return result;
}

void sub_195E33664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t RB::Transition::decode(RB::Transition *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    while (1)
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 3)
      {
        break;
      }

      if (v6 == 4)
      {
        v9 = RB::ProtobufDecoder::uint_field(a2, v5);
        if (v9 >= 0xFFFFFFFF)
        {
          v10 = -1;
        }

        else
        {
          v10 = v9;
        }

        *(this + 5) = v10;
        goto LABEL_110;
      }

      if (v6 == 5)
      {
        *(this + 16) = RB::ProtobufDecoder::BOOL_field(a2, v5);
        goto LABEL_110;
      }

      if (v6 != 6)
      {
        goto LABEL_23;
      }

      *(this + 22) = 0;
      if ((v5 & 7) != 2)
      {
        goto LABEL_109;
      }

      RB::ProtobufDecoder::begin_message(a2);
      RB::Animation::decode((this + 56), a2);
      RB::ProtobufDecoder::end_message(a2);
LABEL_110:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    if (v6 == 1)
    {
      v8 = RB::ProtobufDecoder::uint_field(a2, v5);
      if (v8 <= 8)
      {
        *(this + 3) = rb_transition_method(v8);
      }

      goto LABEL_110;
    }

    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v7 = RB::ProtobufDecoder::float_field(a2, v5);
        if (v7 < 0.0)
        {
          v7 = 0.0;
        }

        if (v7 > 1.0)
        {
          v7 = 1.0;
        }

        *(this + 17) = ((v7 * 255.0) + 0.5);
        goto LABEL_110;
      }

LABEL_23:
      RB::ProtobufDecoder::skip_field(a2, v5);
      goto LABEL_110;
    }

    v11 = *(this + 12);
    v12 = v11;
    if (*(this + 13) < v11 + 1)
    {
      RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(this + 24, v11 + 1);
      v12 = *(this + 12);
    }

    v13 = *(this + 5);
    if (!v13)
    {
      v13 = this + 24;
    }

    *&v13[4 * v12] = -16774143;
    v14 = *(this + 12) + 1;
    *(this + 12) = v14;
    if ((v5 & 7) == 2)
    {
      RB::ProtobufDecoder::begin_message(a2);
      field = RB::ProtobufDecoder::next_field(a2);
      if (field)
      {
        v16 = field;
        while (1)
        {
          v17 = *(this + 5) ? *(this + 5) : (this + 24);
          v18 = v16 >> 3;
          if ((v16 >> 3) > 6)
          {
            break;
          }

          if (v18 > 3)
          {
            switch(v18)
            {
              case 4:
                v31 = RB::ProtobufDecoder::float_field(a2, v16);
                v32 = *(v17 + v11);
                if ((v32 & 0x40) != 0)
                {
                  v32 = *(v17 + v11) & 0xFFBF;
                }

                if (v31 < 0.0)
                {
                  v31 = 0.0;
                }

                if (v31 > 1.0)
                {
                  v31 = 1.0;
                }

                v21 = v32 & 0xFFFFFF | (((v31 * 255.0) + 0.5) << 24);
                break;
              case 5:
                v21 = *(v17 + v11) & 0xFFFF03FF | ((RB::ProtobufDecoder::uint_field(a2, v16) & 0x3F) << 10);
                break;
              case 6:
                if (RB::ProtobufDecoder::BOOL_field(a2, v16))
                {
                  v25 = 128;
                }

                else
                {
                  v25 = 0;
                }

                v21 = *(v17 + v11) | v25;
                break;
              default:
                goto LABEL_103;
            }

            goto LABEL_100;
          }

          if (v18 != 1)
          {
            if (v18 != 2)
            {
              if (v18 != 3)
              {
                goto LABEL_103;
              }

              v19 = RB::ProtobufDecoder::float_field(a2, v16);
              v20 = *(v17 + v11);
              if ((v20 & 0x40) != 0)
              {
                v20 = *(v17 + v11) & 0xFFBF | 0xFF000000;
              }

              if (v19 < 0.0)
              {
                v19 = 0.0;
              }

              if (v19 > 1.0)
              {
                v19 = 1.0;
              }

              v21 = v20 & 0xFF00FFFF | (((v19 * 255.0) + 0.5) << 16);
              goto LABEL_100;
            }

            v35 = RB::ProtobufDecoder::float_field(a2, v16);
            v36 = *(this + 12);
            if (*(this + 13) < (v36 + 1))
            {
              RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(this + 24, v36 + 1);
              v36 = *(this + 12);
            }

            v37 = *(this + 5);
            if (!v37)
            {
              v37 = this + 24;
            }

            *&v37[4 * v36] = v35;
LABEL_91:
            ++*(this + 12);
            goto LABEL_101;
          }

          v27 = RB::ProtobufDecoder::uint_field(a2, v16);
          if (v27 <= 0x18)
          {
            v21 = *(v17 + v11) & 0xFFFFFFC0 | v27;
LABEL_100:
            *(v17 + v11) = v21;
          }

LABEL_101:
          v16 = RB::ProtobufDecoder::next_field(a2);
          if (!v16)
          {
            goto LABEL_105;
          }
        }

        if (v18 > 9)
        {
          if (v18 == 10)
          {
            v33 = RB::ProtobufDecoder::uint_field(a2, v16);
            v34 = *(v17 + v11);
            if ((v34 & 0x40) == 0)
            {
              v34 = *(v17 + v11) | 0x40;
            }

            v21 = v34 & 0xFF00FFFF | (v33 << 16);
            goto LABEL_100;
          }

          if (v18 == 11)
          {
            v38 = RB::ProtobufDecoder::uint_field(a2, v16);
            v39 = *(v17 + v11);
            if ((v39 & 0x40) == 0)
            {
              v39 = *(v17 + v11) | 0x40;
            }

            v21 = v39 & 0xFFFFFF | (v38 << 24);
            goto LABEL_100;
          }

          if (v18 != 12)
          {
LABEL_103:
            RB::ProtobufDecoder::skip_field(a2, v16);
            goto LABEL_101;
          }

          if (RB::ProtobufDecoder::BOOL_field(a2, v16))
          {
            v26 = 512;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_95;
        }

        if (v18 != 7)
        {
          if (v18 != 8)
          {
            if (v18 != 9)
            {
              goto LABEL_103;
            }

            v22 = RB::ProtobufDecoder::uint_field(a2, v16);
            v23 = *(v17 + v11);
            if ((v23 & 0x40) == 0)
            {
              LOWORD(v23) = *(v17 + v11) | 0x40;
            }

            if ((v23 & 0x40) != 0)
            {
              v24 = v23 | (v22 << 16);
            }

            else
            {
              v24 = *(v17 + v11) | 0x40;
            }

            v21 = v24 | (v22 << 24);
            goto LABEL_100;
          }

          if (RB::ProtobufDecoder::BOOL_field(a2, v16))
          {
            v26 = 256;
          }

          else
          {
            v26 = 0;
          }

LABEL_95:
          v21 = *(v17 + v11) | v26;
          goto LABEL_100;
        }

        v28 = RB::ProtobufDecoder::uint_field(a2, v16);
        v29 = *(this + 12);
        if (*(this + 13) < (v29 + 1))
        {
          RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(this + 24, v29 + 1);
          v29 = *(this + 12);
        }

        v30 = *(this + 5);
        if (!v30)
        {
          v30 = this + 24;
        }

        *&v30[4 * v29] = v28;
        goto LABEL_91;
      }

LABEL_105:
      RB::ProtobufDecoder::end_message(a2);
      v40 = *(this + 12);
    }

    else
    {
      *(a2 + 56) = 1;
      *a2 = *(a2 + 1);
      v40 = v14;
    }

    v41 = v40 - v14;
    v42 = *(this + 5);
    if (!v42)
    {
      v42 = this + 24;
    }

    if (v41 == RB::Transition::_effect_args[*&v42[4 * v11] & 0x3F])
    {
      goto LABEL_110;
    }

LABEL_109:
    *(a2 + 56) = 1;
    *a2 = *(a2 + 1);
    goto LABEL_110;
  }

  return result;
}

void RB::Transition::print(RB::Transition *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "transition");
  v4 = *(this + 3);
  if ((v4 - 1) <= 7)
  {
    RB::SexpString::printf(a2, 0, "%s", RB::Transition::print(RB::SexpString &)const::method_names[v4]);
  }

  if (*(this + 16) == 1)
  {
    RB::SexpString::print(a2, 0, "implicit");
  }

  v5 = *(this + 17);
  if (v5 != 32)
  {
    RB::SexpString::printf(a2, 0, "(add-remove %g)", (v5 * 0.0039216));
  }

  if (*(this + 5) != -1)
  {
    RB::SexpString::printf(a2, 0, "(max-changes %u)", *(this + 5));
  }

  if (*(this + 12))
  {
    RB::SexpString::push(a2, "effects");
    v6 = *(this + 12);
    if (v6)
    {
      for (i = 0; i < v6; i += RB::Transition::_effect_args[v10] + 1)
      {
        v8 = *(this + 5);
        if (!v8)
        {
          v8 = this + 24;
        }

        v9 = &v8[4 * i];
        v10 = *v9 & 0x3F;
        if (v10 <= 0x18)
        {
          RB::SexpString::push(a2, RB::Transition::print(RB::SexpString &)const::effect_names[v10]);
          v11 = *v9;
          if (*v9 >> 10 != 3)
          {
            RB::SexpString::printf(a2, 0, "(events #x%x)", v11 >> 10);
            v11 = *v9;
          }

          if ((v11 & 0x40) != 0)
          {
            if (BYTE2(v11) == HIBYTE(v11))
            {
              RB::SexpString::printf(a2, 0, "(animation %d)");
            }

            else
            {
              RB::SexpString::printf(a2, 0, "(insert-animation %d)", BYTE2(v11));
              RB::SexpString::printf(a2, 0, "(remove-animation %d)");
            }
          }

          else
          {
            v12 = BYTE2(v11) * 0.0039216;
            if (v12 != 0.0)
            {
              RB::SexpString::printf(a2, 0, "(begin %g)", v12);
            }

            if ((HIBYTE(v11) * 0.0039216) != 1.0)
            {
              RB::SexpString::printf(a2, 0, "(duration %g)");
            }
          }

          if ((*v9 & 0x3Fu) <= 0x18)
          {
            v13 = 1 << (*v9 & 0x3F);
            if ((v13 & 0x1E18008) != 0)
            {
              RB::SexpString::printf(a2, 0, "(args %g %g)");
            }

            else if ((v13 & 0x54) != 0)
            {
              RB::SexpString::printf(a2, 0, "(arg %g)");
            }
          }

          RB::SexpString::pop(a2);
          v6 = *(this + 12);
          v10 = *v9 & 0x3F;
        }
      }
    }

    RB::SexpString::pop(a2);
  }

  RB::SexpString::pop(a2);
}

CGAffineTransform *RB::Fill::Custom::mix(RB::Fill::Custom *this, const RB::DisplayList::Interpolator::Op *a2, const RB::Fill::Custom *a3, float32_t a4, RB::Heap *a5)
{
  RB::CustomShader::Closure::mix(this, a3, a4);
  *(this + 28) = RB::mix(*(this + 224), *(this + 232), *(a3 + 224), *(a3 + 232), a4);
  *(this + 29) = v8;
  result = RB::mix((this + 176), a3 + 11, v9, a4);
  *(this + 11) = v11;
  *(this + 12) = v12;
  *(this + 13) = v13;
  return result;
}

void RB::Fill::Custom::fill(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a2 + 80);
  if (v5)
  {
    *&v6 = RB::operator*(v5, (a2 + 32));
  }

  else
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
  }

  *v13 = v6;
  v14 = v7;
  v15 = v8;
  *&v9 = RB::operator*((a1 + 176), v13);
  *&v16.a = v9;
  *&v16.c = v10;
  *&v16.tx = v11;
  RB::CustomShader::Closure::make_cifilter(a1, (a1 + 224), &v16, 0, v13);
  if (v13[0])
  {
    RB::CGContext::apply_cifilter(a2, v13[0], &v16, 0);
    v12 = v13[0];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v4);
}

void RB::Fill::Custom::attributes(RB::Fill::Custom *this, RB::XML::Element *a2)
{
  v3 = objc_opt_new();
  [(RBShader *)v3 setRBClosure:?];
  v3;
  RB::XML::Element::set<RB::XML::Value::Shader>();
}

void *RB::Fill::Custom::encode(RB::Fill::Custom *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::CustomShader::Closure::encode(this, a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  v5 = vandq_s8(vandq_s8(vceqq_f64(*(this + 12), xmmword_195E42770), vceqq_f64(*(this + 11), xmmword_195E42760)), vceqzq_f64(*(this + 13)));
  if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AffineTransform::encode(this + 22, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  if (*(this + 240))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v6 = vmvn_s8(vceqz_f32(*(this + 232)));
  if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    result = RB::ProtobufEncoder::float4_field(a2, 4, *(this + 14));
  }

  if ((*(this + 240) & 2) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);

    return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  return result;
}

unint64_t RB::Fill::Custom::decode(RB::Fill::Custom *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v6 == 1)
        {
          if ((v5 & 7) != 2)
          {
LABEL_24:
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
            goto LABEL_22;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::CustomShader::Closure::decode(this, a2);
        }

        else
        {
          if (v6 != 2)
          {
LABEL_21:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_22;
          }

          if ((v5 & 7) != 2)
          {
            goto LABEL_24;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::AffineTransform::decode((this + 176), a2);
        }

        RB::ProtobufDecoder::end_message(a2);
      }

      else
      {
        switch(v6)
        {
          case 3:
            *(this + 60) &= ~1u;
            v8 = *(this + 60) | RB::ProtobufDecoder::BOOL_field(a2, v5);
            break;
          case 4:
            *(this + 14) = RB::ProtobufDecoder::float4_field(a2, v5);
            goto LABEL_22;
          case 5:
            *(this + 60) &= ~2u;
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v7 = 2;
            }

            else
            {
              v7 = 0;
            }

            v8 = *(this + 60) | v7;
            break;
          default:
            goto LABEL_21;
        }

        *(this + 60) = v8;
      }

LABEL_22:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t RBImageMakeIOSurface2(uint64_t a1, int a2)
{
  if (a2)
  {
    return 65537;
  }

  else
  {
    return 1;
  }
}

float64x2_t RBImageTransform@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, float64x2_t a4@<Q2>, float64_t a5@<D3>, float64x2_t a6@<Q4>, float64_t a7@<D5>, float64x2_t a8, float64x2_t a9)
{
  a2.f64[1] = a3;
  a4.f64[1] = a5;
  v9 = vcvt_f32_f64(a4);
  a6.f64[1] = a7;
  v10 = vcvt_f32_f64(a6);
  v11 = vcvt_f32_f64(a9);
  v12 = vdiv_f32(vmul_f32(v10, vcvt_f32_f64(a2)), v11);
  v13 = vsub_f32(v9, vdiv_f32(vmul_f32(vcvt_f32_f64(a8), v10), v11));
  *a1 = *v12.i32;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = vcvtq_f64_f32(vext_s8(v12, v13, 4uLL));
  *(a1 + 24) = result;
  *(a1 + 40) = *&v13.i32[1];
  return result;
}

float64x2_t RBImageSimpleTransform@<Q0>(uint64_t a1@<X8>, float64_t a2@<D0>, double a3@<D1>, double a4@<D2>, float64x2_t a5@<Q3>)
{
  v5 = a3;
  v6 = a4;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  a5.f64[1] = a2;
  result = vcvtq_f64_f32(vcvt_f32_f64(a5));
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  return result;
}

float64x2_t RBTiledImageTransform@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, double a4@<D2>, float64x2_t a5@<Q3>, float64_t a6@<D4>, float64x2_t a7, float64x2_t a8)
{
  a2.f64[1] = a3;
  *&a3 = a4;
  a5.f64[1] = a6;
  v8 = vcvt_f32_f64(a8);
  v9 = vdiv_f32(v8, vdup_lane_s32(*&a3, 0));
  v10 = vdiv_f32(vmul_f32(v9, vcvt_f32_f64(a2)), v8);
  v11 = vsub_f32(vcvt_f32_f64(a5), vdiv_f32(vmul_f32(v9, vcvt_f32_f64(a7)), v8));
  *a1 = *v10.i32;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = vcvtq_f64_f32(vext_s8(v10, v11, 4uLL));
  *(a1 + 24) = result;
  *(a1 + 40) = *&v11.i32[1];
  return result;
}

void sub_195E34740(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  RB::UntypedTable::~UntypedTable((v2 + 3));
  if (*v2)
  {
    free(*v2);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    v6 = v5[2] - 1;
    v5[2] = v6;
    if (!v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t RB::XML::Document::append(void *a1, uint64_t *a2, void *a3)
{
  v6 = *(a1[2] + 8 * a1[3] - 8);
  v7 = v6[4];
  if (v6[5] < (v7 + 1))
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow((v6 + 3), v7 + 1);
    v7 = v6[4];
  }

  v8 = v6[3];
  v9 = *a2;
  if (*a2)
  {
    ++*(v9 + 8);
  }

  *(v8 + 8 * v7) = v9;
  v6[4] = v7 + 1;
  result = RB::UntypedTable::lookup((a1 + 5), a3, 0);
  if (result)
  {
    RB::XML::Element::set<RB::XML::Value::StateID>();
  }

  return result;
}

char *RB::XML::Document::add_state(RB::XML::Document *this, _RBDrawingState *a2)
{
  v4 = *(this + 13);
  *(this + 13) = v4 + 1;
  if (v4 == -1)
  {
    *(this + 13) = 1;
    v6 = this;
    RB::UntypedTable::for_each(this + 40, RB::Table<_RBDrawingState *,unsigned long>::for_each<RB::XML::Document::add_state(_RBDrawingState *)::$_0>(RB::XML::Document::add_state(_RBDrawingState *)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v6);
    v4 = *(this + 13);
    *(this + 13) = v4 + 1;
  }

  RB::UntypedTable::insert((this + 40), a2, v4);
  return v4;
}

uint64_t RB::XML::Document::remove_state(RB::XML::Document *this, _RBDrawingState *a2)
{
  result = RB::UntypedTable::lookup((this + 40), a2, 0);
  if (result)
  {
    v5 = result;
    result = RB::UntypedTable::remove((this + 40), a2);
    if (*(this + 13) - 1 == v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = -1;
    }

    *(this + 13) = v6;
  }

  return result;
}

uint64_t RB::XML::Document::set_state(RB::XML::Document *this, _RBDrawingState *a2)
{
  result = RB::UntypedTable::lookup((this + 40), a2, 0);
  if (result)
  {
    RB::XML::Element::set<RB::XML::Value::StateID>();
  }

  return result;
}

void RB::XML::Document::import(RB::XML::Document *this@<X0>, RB::XML::Element **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v3 = *(this + 16);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = *(this + 15);
    while (*v5 != *a2)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(this + 15);
  }

  if (v5 != (*(this + 15) + 8 * v3))
  {
    operator new();
  }

LABEL_9:
  RB::XML::Element::copy(a2[1]);
}

void sub_195E34C98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = v1[2] - 1;
    v1[2] = v3;
    if (!v3)
    {
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_195E34E74(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::XML::Document::print(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "<?xml version=1.0 encoding=UTF-8?>\n", 39);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "<display-list xmlns=http://www.apple.com/RenderBox/1.0", 56);
  v10 = *(a1 + 8);
  v11 = *(v10 + 56);
  if (v11)
  {
    v12 = *(v10 + 48);
    v13 = v12 + 24 * v11;
    do
    {
      LOBYTE(v21[0]) = 32;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v21, 1);
      v14 = strlen(*v12);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, *v12, v14);
      LOBYTE(v21[0]) = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v21, 1);
      v12 += 24;
    }

    while (v12 != v13);
  }

  if (a4 > 0.0 && a5 > 0.0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, " size=", 6);
    v21[0] = &unk_1F0A38BF0;
    *&v21[1] = a4;
    *&v21[2] = a5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, ">\n", 2);
  v15 = *(a1 + 8);
  v16 = *(v15 + 32);
  if (v16)
  {
    v17 = *(v15 + 24);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      RB::XML::Element::print(v19, a2, 1, a3);
      v18 -= 8;
    }

    while (v18);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "</display-list>\n", 16);
}

void RB::XML::anonymous namespace::quote_value(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  __p = 0;
  (*(*a2 + 16))(a2, &__p);
  v14 = 34;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, &v14, 1);
  v3 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v3 = v12;
  }

  if (v3 >= 1)
  {
    v5 = &p_p[v3];
    v6 = p_p;
    while (1)
    {
      v7 = *v6;
      if (v7 <= 0x3E && ((1 << v7) & 0x500000C400000000) != 0)
      {
        break;
      }

      ++v6;
LABEL_26:
      if (v6 >= v5)
      {
        if (v6 > p_p)
        {
          std::ostream::write();
        }

        goto LABEL_29;
      }
    }

    if (v6 > p_p)
    {
      std::ostream::write();
      v7 = *v6;
    }

    if (v7 > 59)
    {
      if (v7 == 62)
      {
        v9 = "&gt;";
        goto LABEL_25;
      }

      if (v7 != 60)
      {
LABEL_22:
        v9 = "&apos;";
        goto LABEL_25;
      }

      v9 = "&lt;";
    }

    else
    {
      if (v7 == 34)
      {
        v9 = "&quot;";
        goto LABEL_25;
      }

      v9 = "&amp;";
      if (v7 != 38)
      {
        goto LABEL_22;
      }
    }

LABEL_25:
    v10 = strlen(v9);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, v9, v10);
    p_p = ++v6;
    goto LABEL_26;
  }

LABEL_29:
  v14 = 34;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, &v14, 1);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_195E352EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RB::XML::Element::print(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 72);
  if (v8)
  {
    v4 = a4 & 0x7FFFFFFF | (((rb_color_space(v8) & 0xF0) == 0) << 31);
  }

  v25 = 60;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, &v25, 1);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = strlen(*(a1 + 16));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v9, v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 48);
    v13 = v12 + 24 * v11;
    do
    {
      v26 = 32;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, &v26, 1);
      v14 = strlen(*v12);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, *v12, v14);
      v27 = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, &v27, 1);
      v12 += 24;
    }

    while (v12 != v13);
  }

  if (*(a1 + 32))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, ">\n", 2);
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(a1 + 24);
      v17 = 8 * v15;
      do
      {
        v18 = *v16++;
        RB::XML::Element::print(v18, a2, (a3 + 1), v4);
        v17 -= 8;
      }

      while (v17);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "</", 2);
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = strlen(v19);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v19, v20);
    }

    v21 = ">\n";
    v22 = a2;
    v23 = 2;
  }

  else
  {
    v21 = "/>\n";
    v22 = a2;
    v23 = 3;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v21, v23);
}

void RB::XML::Element::print(RB::XML::Element *this, RB::SexpString *a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    RB::SexpString::push(a2, v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    v8 = (*(this + 6) + 8);
    v9 = 24 * v7;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      (*(**v8 + 16))(*v8, __p, a3);
      if (v16 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      RB::SexpString::printf(a2, 0, "(%s %s)", *(v8 - 1), v10);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      v8 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  v11 = *(this + 4);
  if (v11)
  {
    v12 = *(this + 3);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      RB::XML::Element::print(v14, a2, a3);
      v13 -= 8;
    }

    while (v13);
  }

  if (*(this + 2))
  {
    RB::SexpString::pop(a2);
  }
}

void sub_195E35618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RB::XML::Document::print_children(RB::XML::Document *this, RB::SexpString *a2, uint64_t a3)
{
  v3 = *(this + 1);
  v4 = *(v3 + 32);
  if (v4)
  {
    v7 = *(v3 + 24);
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      RB::XML::Element::print(v9, a2, a3);
      v8 -= 8;
    }

    while (v8);
  }
}

void *RB::XML::Element::dictionary(RB::XML::Element *this, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (*(this + 2))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v4 setObject:v5 forKeyedSubscript:RBXMLRecorderKeyName];
  }

  if (*(this + 7))
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = *(this + 7);
    if (v7)
    {
      v8 = (*(this + 6) + 8);
      v9 = 24 * v7;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
        (*(**v8 + 16))(*v8, __p, a2);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
        [v6 setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(v8 - 1))}];
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        v8 += 3;
        v9 -= 24;
      }

      while (v9);
    }

    [v4 setObject:v6 forKeyedSubscript:RBXMLRecorderKeyAttributes];
  }

  if (*(this + 4))
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(this + 4);
    if (v13)
    {
      v14 = *(this + 3);
      v15 = 8 * v13;
      do
      {
        v16 = RB::XML::Element::dictionary(*v14, a2);
        if (v16)
        {
          [v12 addObject:v16];
        }

        ++v14;
        v15 -= 8;
      }

      while (v15);
    }

    [v4 setObject:v12 forKeyedSubscript:RBXMLRecorderKeyChildren];
  }

  return v4;
}

void sub_195E3585C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RB::XML::anonymous namespace::indent(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0)
  {
    v3 = (2 * a2);
    if (v3 <= 0xFFF)
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v4 = v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v4, v5);
    }

    else
    {
      v4 = malloc_type_malloc(((2 * a2) | 1), 0x100004077774924uLL);
      if (!v4)
      {
LABEL_7:
        free(v4);
        return;
      }
    }

    memset(v4, 32, v3);
    v4[v3] = 0;
    v6 = strlen(v4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, v4, v6);
    if (v3 < 0x1000)
    {
      return;
    }

    goto LABEL_7;
  }
}

void RB::XML::Element::set_rendering_mode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3 || a2 == 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a2 == 1)
    {
      RB::XML::Element::set<RB::XML::Value::Bool>();
    }

    if (a2 == 2)
    {
LABEL_9:
      RB::XML::Element::set<RB::XML::Value::Float>();
    }
  }
}

void RB::Table<_RBDrawingState *,unsigned long>::for_each<RB::XML::Document::add_state(_RBDrawingState *)::$_0>(RB::XML::Document::add_state(_RBDrawingState *)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a3 + 104) <= (a2 + 1))
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = *(*a3 + 104);
  }

  *(*a3 + 104) = v3;
}

void sub_195E35B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::DisplayListID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::DisplayListID>,std::allocator<RB::XML::Value::DisplayListID>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::DisplayListID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::DisplayListID>,std::allocator<RB::XML::Value::DisplayListID>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void RB::anonymous namespace::print_ops(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2)
  {
    v5 = 0;
    while (1)
    {
      v6 = a2 + 16 * v5;
      v7 = *v6;
      if (*v6)
      {
        break;
      }

LABEL_42:
      if (++v5 >= v2)
      {
        return;
      }
    }

    *(&v27.__r_.__value_.__s + 23) = 1;
    LOWORD(v27.__r_.__value_.__l.__data_) = 32;
    v8 = v7[5].i8[7] & 0xF;
    if (v8 == 1)
    {
      v9 = "depth-tested ";
      v10 = 13;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_9;
      }

      v9 = "depth-writing ";
      v10 = 14;
    }

    std::string::append(&v27, v9, v10);
LABEL_9:
    v11 = RB::RenderState::name(v7);
    v12 = strlen(v11);
    std::string::append(&v27, v11, v12);
    v13 = 1;
    do
    {
      v14 = v13;
      if (v13)
      {
        v15 = " r=";
      }

      else
      {
        v15 = " w=";
      }

      std::string::append(&v27, v15, 3uLL);
      if (v14)
      {
        v16 = 14;
      }

      else
      {
        v16 = 15;
      }

      v17 = *(v6 + v16);
      if (v17)
      {
        std::string::push_back(&v27, 83);
      }

      if ((v17 & 2) != 0)
      {
        std::string::push_back(&v27, 67);
      }

      if ((v17 & 4) != 0)
      {
        std::string::push_back(&v27, 76);
      }

      if ((v17 & 8) != 0)
      {
        std::string::push_back(&v27, 65);
      }

      if ((v17 & 0x10) != 0)
      {
        std::string::push_back(&v27, 77);
      }

      if ((v17 & 0x20) != 0)
      {
        std::string::push_back(&v27, 90);
      }

      v13 = 0;
    }

    while ((v14 & 1) != 0);
    std::string::push_back(&v27, 32);
    v18 = v7[1];
    v19 = vcvt_f32_s32(v18);
    v20 = vcvt_f32_s32(vsub_s32(v7[2], v18));
    v24[0] = v19;
    v24[1] = v20;
    RB::Rect::operator std::string(v24, __p);
    if ((v26 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v27, v21, v22);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v27.__r_.__value_.__r.__words[0];
    }

    printf("  [%d%s]%s\n", *(v6 + 12), v23, "");
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v2 = *a1;
    goto LABEL_42;
  }
}

void sub_195E35DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::Texture::usage_supports_heap(uint64_t a1, int a2)
{
  {
    RB::Texture::usage_supports_heap(RB::Device *,RB::Texture::Usage)::use_heaps = RB::debug_BOOL("RB_USE_HEAPS", v5);
  }

  if ((RB::Texture::usage_supports_heap(RB::Device *,RB::Texture::Usage)::use_heaps & 0x100) != 0)
  {
    if ((RB::Texture::usage_supports_heap(RB::Device *,RB::Texture::Usage)::use_heaps & 1) == 0)
    {
      return 0;
    }
  }

  else if (!*(a1 + 331))
  {
    return 0;
  }

  if ((a2 - 2) >= 4)
  {
    return a2 == 1;
  }

  return !*(a1 + 331) || (*(a1 + 340) & 4) != 0;
}

uint64_t RB::Texture::make_descriptor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>, __n128 a7@<Q0>)
{
  v8 = (result + 336);
  v9 = vld1_dup_f32(v8);
  v10 = vand_s8(vcge_s32(v9, a7.n128_u64[0]), vcgtz_s32(a7.n128_u64[0]));
  if ((vpmin_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    *a6 = 0;
    return result;
  }

  v15 = result;
  v26 = a7;
  v16 = RB::max_mipmap_levels(a7.n128_u64[0]);
  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = objc_opt_new();
  *a6 = v19;
  [v19 setPixelFormat:a2];
  [v19 setWidth:v26.n128_i32[0]];
  [v19 setHeight:v26.n128_i32[1]];
  if (v18 >= 2)
  {
    [v19 setMipmapLevelCount:v18];
  }

  v20 = 84148994;
  if (a5 <= 1)
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v22 = a5 == 1;
    v21 = 17040130;
  }

  else
  {
    v21 = 33686018;
    if (a5 == 4)
    {
      v20 = 50463234;
    }

    if (a5 == 3)
    {
      v20 = 16908802;
    }

    v22 = a5 == 2;
  }

  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  [v19 setSwizzle:{v23, *&v26}];
LABEL_23:
  v24 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      v25 = 0;
      if (a4 == 1)
      {
        v25 = 2;
        v24 = 5;
      }

      goto LABEL_36;
    }

LABEL_33:
    v25 = 0;
    v24 = 1;
    goto LABEL_36;
  }

  if ((a4 - 2) < 4)
  {
    if (*(v15 + 331))
    {
      if ((*(v15 + 340) & 4) != 0)
      {
        v25 = 2;
      }

      else
      {
        v25 = 3;
      }
    }

    else
    {
      v25 = 2;
    }

    v24 = 4;
    goto LABEL_36;
  }

  v25 = 0;
  if (a4 == 6)
  {
    goto LABEL_33;
  }

LABEL_36:
  [v19 setUsage:{v24, *&v26}];
  return [v19 setStorageMode:v25];
}

uint64_t RB::Texture::Texture(uint64_t a1, void *a2, _DWORD *a3, __int16 a4, int a5, char a6)
{
  v8 = *(RB::Texture::Texture(a1, a2, a4, a5, a6) + 24);
  if (v8 != a3)
  {
    if (v8)
    {
      v9 = v8[2] - 1;
      v8[2] = v9;
      if (!v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    ++a3[2];
    *(a1 + 24) = a3;
  }

  *(a1 + 77) |= 0x40u;
  *(a1 + 45) = 0;
  return a1;
}

uint64_t RB::Texture::make_aliasable(uint64_t this)
{
  if ((*(this + 77) & 0x40) != 0)
  {
    return [*(this + 16) makeAliasable];
  }

  return this;
}

unint64_t RB::Texture::has_write_usage(id *this)
{
  v3 = *(this + 78);
  if (v3 == 6 || v3 == 1)
  {
    return ([this[2] usage] >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RB::Texture::replace(RB::Texture *this, int a2, const void *a3, uint64_t a4)
{
  v4 = *(this + 8);
  v5 = *(this + 2);
  memset(v8, 0, sizeof(v8));
  *&v6 = v4;
  *(&v6 + 1) = SHIDWORD(v4);
  v9 = v6;
  v10 = 1;
  return [v5 replaceRegion:v8 mipmapLevel:a2 withBytes:a3 bytesPerRow:a4];
}

void RB::Path::Storage::clear(RB::Path::Storage *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    *this = 0;
    if (v2)
    {
      this = (v2 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        this = MEMORY[0x19A8C09C0](this, 0x1000C8052888210);
      }
    }
  }

  v3 = *(v1 + 2);
  if ((v3 & 0x20) != 0)
  {
    v4 = RB::Path::Storage::MapCache::shared(this);
    RB::Path::Storage::MapCache::remove(v4, v1);
    v3 = *(v1 + 2);
  }

  if (v3)
  {
    v5 = *(v1 + 7);
    if (v5)
    {
      *(v1 + 7) = 0;
      CFRelease(v5);
      v3 = *(v1 + 2);
    }
  }

  if (v3)
  {
    *(v1 + 3) = 0;
  }

  else
  {
    v3 &= 0xFFF000FE;
  }

  *(v1 + 2) = v3 & 0xFFFFFFC1;
}

uint64_t RB::Path::NestedCallbacks::apply_elements_callback(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (a2 <= 0x18)
  {
    if (((1 << a2) & 0x1DE0000) != 0)
    {
      *(a1 + 24) = v2 + 1;
    }

    else if (a2 == 16)
    {
      *(a1 + 24) = v2 - 1;
      v5 = *(a1 + 16);
      v6 = v2 == v5;
      if (v2 <= v5)
      {
        v3 = 0;
        v7 = v6;
        *(a1 + 32) = v7;
        return v3;
      }
    }
  }

  if (v2 < *(a1 + 16))
  {
    return 1;
  }

  return (*(a1 + 8))(*a1);
}

BOOL RB::Path::NestedCallbacks::single_element_callback(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (a2 > 0x18)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1DE0000) != 0)
  {
    *(a1 + 8) = v2 + 1;
    if (v2 == *a1)
    {
      ++*(a1 + 16);
      *(a1 + 24) = a2 != 19;
    }

    return *(a1 + 16) < 2uLL;
  }

  if (((1 << a2) & 0xF000) != 0)
  {
    goto LABEL_10;
  }

  if (a2 != 16)
  {
LABEL_9:
    if (a2 >= 4)
    {
      if (a2 == 4)
      {
        if (v2 != *a1 || *(a1 + 24) != 1)
        {
          return *(a1 + 16) < 2uLL;
        }

        *(a1 + 24) = 0;
      }

      else if (v2 != *a1)
      {
        return *(a1 + 16) < 2uLL;
      }

      return ++*(a1 + 16) < 2uLL;
    }

LABEL_10:
    if (v2 != *a1)
    {
      return *(a1 + 16) < 2uLL;
    }

    *(a1 + 24) = 1;
    return ++*(a1 + 16) < 2uLL;
  }

  *(a1 + 8) = v2 - 1;
  if (v2 == *a1)
  {
    return 0;
  }

  return *(a1 + 16) < 2uLL;
}

const CGPath *RB::Path::Storage::cgpath(RB::Path::Storage *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    return 0;
  }

  v3 = (this + 56);
  result = atomic_load(this + 7);
  if (!result)
  {
    result = RBPathCopyCGPath(this, &RB::Path::Storage::cgpath(void)const::callbacks);
    v4 = 0;
    atomic_compare_exchange_strong(v3, &v4, result);
    if (v4)
    {
      CGPathRelease(result);
      return v4;
    }
  }

  return result;
}

BOOL RB::Path::Object::$_10::__invoke(RB::Path::Object::$_10 *this, const void *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 5);
  }

  else
  {
    v3 = (v2 >> 8) & 0xFFF;
  }

  return v3 == 0;
}

RB::Path::Storage *RBPathStorageInit(RB::Path::Storage *result, const char *a2, const RB::Path::Storage *a3)
{
  if (a3)
  {

    return RB::Path::Storage::Storage(result, a2, a3);
  }

  else
  {
    *result = 0;
    if (a2 <= 0x3F)
    {
      RB::Path::Storage::Storage(result, a2);
    }

    v4 = a2 - 16;
    if ((a2 - 16) >= 0xFFF)
    {
      v4 = 4095;
    }

    v5 = v4 << 20;
    v6 = atomic_fetch_add_explicit(&RB::Path::Storage::_last_identifier, 1u, memory_order_relaxed) + 1;
    *(result + 2) = v5;
    *(result + 3) = v6;
  }

  return result;
}

uint64_t RBPathStorageGetBezierOrder(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 1;
  if ((v1 & 2) != 0)
  {
    v2 = 2;
  }

  if ((v1 & 4) != 0)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

_DWORD *RB::Path::Storage::MapCache::Destination::quadto(uint64_t a1, __n128 a2, __n128 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = a3;
  return RB::Path::Storage::append_element((*(a1 + 8) + 16), 2, v4, 0);
}

void *RB::vector<RB::Path::anonymous namespace::Transform,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,64ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,64ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(a3 << 6);
    v6 = v5 >> 6;
    if (v5 >> 6 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<std::pair<unsigned long,RB::refcounted_ptr<RB::Path::Object>>,1ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 4) + (*(__dst + 4) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 4) + (*(__dst + 4) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 2), __dst, 1uLL, __dst + 4, v3);
  *(__dst + 2) = result;
  return result;
}

uint64_t CG::offset::offset(uint64_t result, uint64_t a2, double a3, double a4)
{
  *result = &unk_1F0A3FB20;
  *(result + 8) = a4;
  *(result + 16) = a3;
  *(result + 32) = a2;
  *(result + 40) = 0;
  v4 = a3 * 0.1;
  if (a3 * 0.1 < 0.001)
  {
    v4 = 0.001;
  }

  if (a3 <= 0.0)
  {
    v5 = 0.1;
  }

  else
  {
    v5 = v4;
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 24) = v5;
  return result;
}

__n128 CG::offset::moveto(__n128 *a1, __n128 a2)
{
  a1[2].n128_u32[2] = 2;
  a1[9] = a2;
  result = a1[9];
  a1[6] = result;
  a1[3] = result;
  return result;
}

__n128 CG::offset::lineto(CG::offset *this, __n128 result)
{
  v2 = *(this + 10);
  if (v2)
  {
    if (v2 == 1)
    {
      *(this + 10) = 2;
    }

    *(this + 9) = result;
    v4 = (this + 144);
    if (CG::offset::add_line_segment(this, this + 6, this + 36))
    {
      result = *v4;
      *(this + 6) = *v4;
    }
  }

  return result;
}

BOOL CG::offset::add_line_segment(CG::offset *this, float64x2_t *a2, const Point *a3)
{
  v4 = *a2;
  v5 = vsubq_f64(*&a3->v, *a2);
  v6 = vaddvq_f64(vmulq_f64(v5, v5));
  if (v6 <= 0.00000001)
  {
    if (*(this + 10) == 2)
    {
      *(this + 10) = 3;
    }
  }

  else
  {
    if (v5.f64[0] != 0.0 || (v8 = v5, v5.f64[1] != 0.0))
    {
      v8 = vdivq_f64(v5, vdupq_lane_s64(COERCE__INT64(sqrt(v6)), 0));
    }

    v15 = v8;
    *v4.i64 = -*&v8.i64[1];
    v9 = vmulq_n_f64(vzip1q_s64(v4, v8), *(this + 1));
    v14 = v9;
    if (*(this + 10) == 4)
    {
      v13 = v5;
      CG::offset::add_join(this, a2, a3, &v15);
      v10 = v15;
      *(this + 7) = v13;
      *(this + 8) = v10;
    }

    else
    {
      *(this + 10) = 4;
      v11 = v15;
      *(this + 7) = v5;
      *(this + 8) = v11;
      *(this + 4) = v5;
      *(this + 5) = v11;
      (*(**(this + 4) + 16))(*(this + 4), vaddq_f64(*a2, v9));
    }

    (*(**(this + 4) + 24))(*(this + 4), vaddq_f64(*&a3->v, v14));
  }

  return v6 > 0.00000001;
}

float64x2_t CG::offset::quadto(Point *a1, float64x2_t result, float64x2_t a3)
{
  v3 = a1[10];
  if (v3)
  {
    if (v3 == 1)
    {
      a1[10] = 2;
    }

    *&a1[36].v = a3;
    v5 = &a1[36];
    v6 = vdupq_n_s64(0x3FD5555555555555uLL);
    v7 = vmlaq_f64(result, v6, vsubq_f64(*&a1[24].v, result));
    *&v9[0].v = vmlaq_f64(result, v6, vsubq_f64(a3, result));
    *&v10[0].v = v7;
    CG::Cubic::Cubic(v8, a1 + 24, v10, v9, a1 + 36);
    if (CG::offset::add_cubic_segment(a1, v8))
    {
      result = *v5;
      *&a1[24].v = *v5;
    }
  }

  return result;
}

uint64_t CG::offset::add_cubic_segment(CG::offset *this, float64x2_t *a2)
{
  v4 = a2[1];
  v5 = vsubq_f64(v4, *a2);
  if (vaddvq_f64(vmulq_f64(v5, v5)) <= 0.00000001 && (v6 = a2[2], v7 = vsubq_f64(v6, v4), vaddvq_f64(vmulq_f64(v7, v7)) <= 0.00000001) && (v8 = vsubq_f64(a2[3], v6), vaddvq_f64(vmulq_f64(v8, v8)) <= 0.00000001))
  {
    if (*(this + 10) == 2)
    {
      result = 0;
      *(this + 10) = 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = CG::Cubic::derivative(a2, 0.0);
    if (v10 != 0.0 || (v12 = v10, v13 = v11, v11 != 0.0))
    {
      v14 = sqrt(v10 * v10 + v11 * v11);
      v12 = v10 / v14;
      v13 = v11 / v14;
    }

    v32.f64[0] = v12;
    v32.f64[1] = v13;
    if (*(this + 10) == 4)
    {
      v30[0] = *a2;
      CG::offset::add_join(this, v30, v9, &v32);
    }

    else
    {
      *(this + 10) = 4;
      *(this + 8) = v10;
      *(this + 9) = v11;
      *(this + 5) = v32;
      v15 = *(this + 1);
      v16.n128_f64[0] = a2->f64[0] - v15 * v13;
      v16.n128_f64[1] = a2->f64[1] + v15 * v12;
      (*(**(this + 4) + 16))(*(this + 4), v16);
    }

    v17 = CG::Cubic::derivative(a2, 1.0);
    *(this + 14) = v17;
    *(this + 15) = v18;
    if (v17 != 0.0 || v18 != 0.0)
    {
      v19 = sqrt(v17 * v17 + v18 * v18);
      v17 = v17 / v19;
      v18 = v18 / v19;
    }

    *(this + 16) = v17;
    *(this + 17) = v18;
    v20 = a2[1].f64[0];
    if (((a2[2].f64[0] - a2[3].f64[0]) * (a2[2].f64[1] - a2[1].f64[1]) + (a2[3].f64[1] - a2[2].f64[1]) * (a2[2].f64[0] - v20)) * ((a2[2].f64[0] - v20) * (a2->f64[1] - a2[1].f64[1]) + (a2[2].f64[1] - a2[1].f64[1]) * (v20 - a2->f64[0])) > 0.0 || (v21 = CG::Cubic::inflection_points_classic(a2), v23 = v21, v24 = v22, v21 == -1.0) && v22 == -1.0)
    {
      v25 = this;
      v26 = a2;
    }

    else
    {
      CG::Cubic::split(a2, v21, v30);
      CG::offset::path_offset_round_cube(this, v30);
      if (v24 == -1.0)
      {
        v26 = v31;
      }

      else
      {
        CG::Cubic::split(v31, (v24 - v23) / (1.0 - v23), v28);
        CG::offset::path_offset_round_cube(this, v28);
        v26 = &v29;
      }

      v25 = this;
    }

    CG::offset::path_offset_round_cube(v25, v26);
    return 1;
  }

  return result;
}

__n128 CG::offset::cubeto(uint64_t a1, __n128 result, __n128 a3, __n128 a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 == 1)
    {
      *(a1 + 40) = 2;
    }

    *&v8[0].v = a3;
    *&v9[0].v = result;
    *(a1 + 144) = a4;
    v6 = (a1 + 144);
    CG::Cubic::Cubic(v7, (a1 + 96), v9, v8, (a1 + 144));
    if (CG::offset::add_cubic_segment(a1, v7))
    {
      result = *v6;
      *(a1 + 96) = *v6;
    }
  }

  return result;
}

__n128 CG::offset::closepath(CG::offset *this)
{
  v1 = *(this + 10);
  if (v1 >= 2)
  {
    if (v1 == 4)
    {
      CG::offset::add_line_segment(this, this + 6, this + 12);
      CG::offset::add_join(this, this + 3, v3, this + 5);
      (*(**(this + 4) + 8))(*(this + 4));
    }

    *(this + 10) = 1;
    result = *(this + 3);
    *(this + 6) = result;
    *(this + 9) = result;
  }

  return result;
}

uint64_t CG::offset::add_join(uint64_t result, float64x2_t *a2, uint64_t a3, float64x2_t *a4)
{
  v4 = *(result + 128);
  v5 = *a4;
  if (vaddvq_f64(vmulq_f64(*a4, v4)) <= 0.99)
  {
    v6 = vextq_s8(v5, v5, 8uLL);
    v7 = *(result + 8);
    v8.f64[1] = v6.f64[1];
    v8.f64[0] = -v5.f64[1];
    v9 = vmulq_n_f64(v8, *&v7);
    v10 = vextq_s8(v4, v4, 8uLL);
    v11.f64[1] = v10.f64[1];
    v11.f64[0] = -v4.f64[1];
    v12 = vmlaq_n_f64(vnegq_f64(v9), v11, *&v7);
    if (vaddvq_f64(vmulq_f64(v12, v12)) >= 0.05)
    {
      v13 = vdupq_lane_s64(v7, 0);
      v14 = vaddq_f64(v5, v4);
      v15 = sqrt(vaddvq_f64(vmulq_f64(v14, v14)));
      if (v15 >= 0.001)
      {
        v17 = 2.66666667 / v15;
        v18 = vsubq_f64(v10, v6);
        v19 = vabdq_f64(v10, v6);
        if (vmovn_s64(vcgtq_f64(v19, vdupq_laneq_s64(v19, 1))).u8[0])
        {
          v16 = (v17 + -1.33333333) * v14.f64[0] / v18.f64[0];
        }

        else
        {
          v16 = vmuld_lane_f64(1.33333333 - v17, v14, 1) / v18.f64[1];
        }
      }

      else
      {
        v16 = -1.33333333;
      }

      v20 = vmulq_n_f64(v4, v16);
      v21 = vmulq_n_f64(v5, v16);
      *&v22.f64[0] = *&vsubq_f64(v20, v10);
      v22.f64[1] = vaddq_f64(*&v20, v10).f64[1];
      v20.n128_u64[0] = *&vaddq_f64(v6, v21);
      v20.n128_u64[1] = *&vsubq_f64(v6, v21).f64[1];
      v23 = vmulq_n_f64(v20, *&v7);
      v20.n128_u64[0] = *&vsubq_f64(*a2, v23);
      v20.n128_u64[1] = *&vaddq_f64(*a2, v23).f64[1];
      return (*(**(result + 32) + 40))(vmlaq_f64(*a2, v13, v22), v20, vaddq_f64(*a2, v9));
    }

    else
    {
      return (*(**(result + 32) + 24))(vaddq_f64(*a2, v9));
    }
  }

  return result;
}

double CG::offset::offset_normal(uint64_t a1, float64x2_t *this, double *a3, double a4)
{
  v6 = CG::Cubic::derivative(this, a4);
  if (a3)
  {
    *a3 = v6;
    a3[1] = v7;
  }

  v8 = -v7;
  if (v7 != 0.0 || v6 != 0.0)
  {
    v8 = v8 / sqrt(v7 * v7 + v6 * v6);
  }

  return *(a1 + 8) * v8;
}

uint64_t CG::offset::path_offset_round_cube_offset(CG::offset *this, float64x2_t *a2, int a3)
{
  v5 = a2[3].f64[0];
  v6 = a2[3].f64[1];
  v7 = a2->f64[0];
  v8 = a2->f64[1];
  if ((v5 - a2->f64[0]) * (v5 - a2->f64[0]) + (v6 - v8) * (v6 - v8) <= 0.00000001)
  {
    v39.n128_f64[0] = CG::offset::offset_normal(this, a2, 0, 1.0) + v5;
    v41 = *(**(this + 4) + 24);

    v39.n128_f64[1] = v40 + v6;
    return v41(v39);
  }

  else
  {
    v67 = 0uLL;
    v10 = CG::offset::offset_normal(this, a2, &v67, 0.0) + v7;
    v12 = v11 + v8;
    *&v66[0].v = v10;
    *&v66[2].v = v11 + v8;
    v65 = 0uLL;
    v13 = a2[3].f64[0];
    v14 = a2[3].f64[1];
    v15 = CG::offset::offset_normal(this, a2, &v65, 1.0) + v13;
    v17 = v16 + v14;
    *&v64[0].v = v15;
    *&v64[2].v = v16 + v14;
    v63 = 0uLL;
    v18 = CG::Cubic::evaluate(a2, 0.5);
    v20 = v19;
    v21 = CG::offset::offset_normal(this, a2, &v63, 0.5) + v18;
    v23 = v22 + v20;
    v62.f64[0] = v21 + -(v10 + v15 - v21 * 2.0) * 0.166666667;
    v62.f64[1] = v22 + v20 + -(v12 + v17 - (v22 + v20) * 2.0) * 0.166666667;
    v42 = *&v66[0].v;
    v43 = v67;
    v47 = v62;
    v48 = v63;
    CG::intersection(&v42, &v47, v60);
    if (v60[0])
    {
      v24 = &v61;
    }

    else
    {
      v24 = &v62;
    }

    *&v59[0].v = *v24;
    v42 = *&v64[0].v;
    v43 = v65;
    v47 = v62;
    v48 = v63;
    CG::intersection(&v42, &v47, v57);
    if (v57[0])
    {
      v25 = &v58;
    }

    else
    {
      v25 = &v62;
    }

    *&v56[0].v = *v25;
    v26 = __OFSUB__(a3, 1);
    v27 = a3 - 1;
    if (v27 < 0 != v26)
    {
      return (*(**(this + 4) + 40))(*(this + 4), *&v59[0].v, *&v56[0].v, *&v64[0].v);
    }

    else
    {
      CG::Cubic::Cubic(&v47, v66, v59, v56, v64);
      v28 = 0;
      while (1)
      {
        v29 = *&CG::offset::path_offset_round_cube_offset(CG::Cubic const&,int)::samples[v28];
        v30 = v23;
        v31 = v21;
        if (v28 * 8)
        {
          v32 = CG::Cubic::evaluate(a2, *&CG::offset::path_offset_round_cube_offset(CG::Cubic const&,int)::samples[v28]);
          v34 = v33;
          v31 = CG::offset::offset_normal(this, a2, 0, v29) + v32;
          v30 = v35 + v34;
        }

        *&v45[0].v = v31;
        v46 = v30;
        v36 = (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        v37 = !v36;
        if ((*&v47.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v47.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v48 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(&v48 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v49 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if ((v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            v37 = 1;
          }

          if (!v37 && (CG::Cubic::is_near(&v47, v45, v29, *(this + 3)) & 1) == 0)
          {
            break;
          }
        }

        if (++v28 == 5)
        {
          return (*(**(this + 4) + 40))(*(this + 4), *&v59[0].v, *&v56[0].v, *&v64[0].v);
        }
      }

      CG::Cubic::split(a2, 0.5, &v42);
      CG::offset::path_offset_round_cube_offset(this, &v42, v27);
      return CG::offset::path_offset_round_cube_offset(this, &v44, v27);
    }
  }
}

uint64_t CG::offset::path_offset_round_cube_chord(CG::offset *this, float64x2_t *a2)
{
  v3 = a2[3].f64[0];
  v4 = a2[3].f64[1];
  v5.n128_f64[0] = CG::offset::offset_normal(this, a2, 0, 1.0) + v3;
  v7 = *(**(this + 4) + 24);

  v5.n128_f64[1] = v6 + v4;
  return v7(v5);
}

void CG::offset::path_offset_round_cube(CG::offset *this, float64x2_t *a2)
{
  v4 = a2[1].f64[0];
  v5 = a2[1].f64[1];
  v7 = a2[2].f64[0];
  v6 = a2[2].f64[1];
  v8 = v4 - a2->f64[0];
  v9 = v5 - a2->f64[1];
  v10 = v7 - v4;
  v11 = v6 - v5;
  v12 = a2[3].f64[0] - v7;
  if (v10 * v8 + (v6 - v5) * v9 >= 0.0 && v12 * v10 + (a2[3].f64[1] - v6) * v11 >= 0.0)
  {

    CG::offset::path_offset_round_cube_offset(this, a2, 4);
  }

  else if (v8 * v8 + v9 * v9 <= 0.00000001 && v10 * v10 + v11 * v11 <= 0.00000001 && v12 * v12 + (a2[3].f64[1] - v6) * (a2[3].f64[1] - v6) <= 0.00000001)
  {

    CG::offset::path_offset_round_cube_chord(this, a2);
  }

  else
  {
    CG::Cubic::split(a2, 0.5, &v13);
    if (a2->f64[0] != v13.f64[0] || a2->f64[1] != v13.f64[1] || a2[1].f64[0] != v14 || a2[1].f64[1] != v15 || a2[2].f64[0] != v16 || a2[2].f64[1] != v17 || a2[3].f64[0] != v18 || a2[3].f64[1] != v19)
    {
      CG::offset::path_offset_round_cube(this, &v13);
      if (a2->f64[0] != v20[0] || a2->f64[1] != v20[1] || a2[1].f64[0] != v20[2] || a2[1].f64[1] != v20[3] || a2[2].f64[0] != v20[4] || a2[2].f64[1] != v20[5] || a2[3].f64[0] != v20[6] || a2[3].f64[1] != v20[7])
      {
        CG::offset::path_offset_round_cube(this, v20);
      }
    }
  }
}

uint64_t RB::DisplayList::Layer::Effect::operator==(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *a1 & 3;
  if (v3 != (a2 & 3))
  {
    return 0;
  }

  if (v3 == 2)
  {
    return (v2 ^ a2) < 4;
  }

  if (v3 == 1)
  {
    return RB::ProjectionMatrix::operator==((v2 & 0xFFFFFFFFFFFFFFFCLL), (a2 & 0xFFFFFFFFFFFFFFFCLL));
  }

  return 1;
}

void RB::DisplayList::Layer::Effect::print(RB::DisplayList::Layer::Effect *this, std::string *a2)
{
  v3 = *this;
  v4 = *this & 3;
  if (v4 == 2)
  {
    v6 = *(*(v3 & 0xFFFFFFFFFFFFFFFCLL) + 136);

    v6();
  }

  else if (v4 == 1)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    RB::SexpString::printf(a2, 1, "(projection %g %g %g; %g %g %g; %g %g %g)", *v5, v5[1], v5[2], v5[3], v5[4], v5[5], v5[6], v5[7], v5[8]);
  }
}

uint64_t RB::DisplayList::Layer::move_filters(uint64_t this, RB::DisplayList::Layer *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = (this + 32);
    do
    {
      v4 = v3;
      v5 = *v3;
      v3 = (*v3 + 8);
    }

    while (v5);
    *v4 = v2;
    *(a2 + 4) = 0;
  }

  return this;
}

void RB::DisplayList::Layer::print(RB::DisplayList::Layer *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "layer");
  v6 = *(this + 19);
  if (v6)
  {
    RB::SexpString::print(a2, 0, "needs-bg");
    v6 = *(this + 19);
    if ((v6 & 0x80) == 0)
    {
LABEL_3:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  RB::SexpString::print(a2, 0, "ignored-by-needs-bg");
  v6 = *(this + 19);
  if ((v6 & 0x1000) == 0)
  {
LABEL_4:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  RB::SexpString::print(a2, 0, "needs-bg-below");
  v6 = *(this + 19);
  if ((v6 & 0x800) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  RB::SexpString::print(a2, 0, "read-as-bg");
  v6 = *(this + 19);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  RB::SexpString::print(a2, 0, "linear");
  v6 = *(this + 19);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  RB::SexpString::print(a2, 0, "non-linear");
  v6 = *(this + 19);
  if ((v6 & 2) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  RB::SexpString::print(a2, 0, "alpha-only");
  v6 = *(this + 19);
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  RB::SexpString::print(a2, 0, "dither");
  v6 = *(this + 19);
  if ((v6 & 0x400) == 0)
  {
LABEL_10:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  RB::SexpString::print(a2, 0, "filter-scale");
  v6 = *(this + 19);
  if ((v6 & 0x4000) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_35:
  RB::SexpString::print(a2, 0, "non-normal-blend");
  if ((*(this + 19) & 0x40) != 0)
  {
LABEL_12:
    RB::SexpString::print(a2, 0, "tone-map-layer");
  }

LABEL_13:
  v7 = *(this + 16);
  if (v7 != 0.0)
  {
    RB::SexpString::printf(a2, 0, "(scale %g)", v7);
  }

  if (*(this + 2))
  {
    v8 = RB::SexpString::push(a2, "contents");
    for (i = *(this + 2); i; i = i[1])
    {
      (*(*i + 248))(i, a2, a3, v8);
    }

    RB::SexpString::pop(a2);
  }

  if (*(this + 4))
  {
    v10 = RB::SexpString::push(a2, "filters");
    for (j = *(this + 4); j; j = j[1])
    {
      *(a2 + 40) = 1;
      (*(*j + 120))(j, a2, a3, v10);
    }

    RB::SexpString::pop(a2);
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::ObjcEncoderDelegate::font_set(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))();
  }

  return result;
}

void CG::Cubic::is_near()
{
  if (__cxa_guard_acquire(&qword_1ED6D5378))
  {
    _MergedGlobals_0 = 0x3FE3C6EF372FE950;

    __cxa_guard_release(&qword_1ED6D5378);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,false>(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::Custom>::FilterStyle<RB::Filter::Custom>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0();
    return (*(v3 + 8))();
  }

  return result;
}

uint64_t RB::ObjcEncoderDelegate::encode_message_f<NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#1},NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#2}>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

atomic_uint *RB::CommitMarker::Observer::Observer(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    return (*(*result + 8))(result);
  }

  return result;
}

void RB::CustomShader::Library::log_error(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = [a1 localizedDescription];
  _os_log_error_impl(&dword_195CE8000, a2, OS_LOG_TYPE_ERROR, "Custom shader error: %@", &v3, 0xCu);
}

void RB::ImageProvider::ImageProvider(id *a1, id *a2, void **a3)
{
  v5 = *a3;
}

void RB::anonymous namespace::image_provider_queue()
{
  if (__cxa_guard_acquire(&qword_1ED6D5398))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    _MergedGlobals_2 = dispatch_queue_create("com.apple.RenderBox.ImageProvider", v0);

    __cxa_guard_release(&qword_1ED6D5398);
  }
}

uint64_t RB::ImageProvider::render_device(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

void RB::ImageProvider::convert_bitmap(int *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 80);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_195CE8000, log, OS_LOG_TYPE_ERROR, "failed to copy bitmap: %u -> %u", v5, 0xEu);
}

uint64_t RB::ColorSpace::Conversion::Conversion(uint64_t result, float *a2)
{
  v2 = (result >> 4) - 4;
  if (v2 > 4)
  {
    v5 = 1.0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = dword_195E44B0C[v2];
    v4 = dword_195E44B20[v2];
    v5 = flt_195E44B34[v2];
  }

  a2[1] = v5;
  *(a2 + 2) = v4;
  *(a2 + 3) = v3;
  return result;
}

{
  v2 = (result >> 4) - 4;
  if (v2 > 4)
  {
    v5 = 1.0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = dword_195E44B48[v2];
    v4 = dword_195E44B5C[v2];
    v5 = flt_195E44B70[v2];
  }

  a2[4] = v5;
  *(a2 + 5) = v4;
  *(a2 + 6) = v3;
  return result;
}

void RB::ColorSpace::cg_color_space()
{
  if (__cxa_guard_acquire(&qword_1ED6D53B8))
  {
    qword_1ED6D53B0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F170]);

    __cxa_guard_release(&qword_1ED6D53B8);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6D53A8))
  {
    _MergedGlobals_3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);

    __cxa_guard_release(&qword_1ED6D53A8);
  }
}

void RB::DisplayList::GenericEffect<RB::CustomEffect>::append_color_fn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 288) == 1)
  {
    v4 = *(a4 + 8);
    v5 = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::CustomEffect>,RB::DisplayList::GenericEffect<RB::CustomEffect> const&,RB::DisplayList::Contents &>(v4 + 2, a1, v4);
    *(v5 + 288) = 0;
    *(v5 + 8) = v4[39];
    v4[39] = v5;
  }

  abort();
}

_DWORD *RB::RenderTask::schedule_many(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result[2] - 1;
  result[2] = v7;
  if (!v7)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

_DWORD *RB::RenderTaskTexture::~RenderTaskTexture(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))();
  }

  return result;
}

_anonymous_namespace_::Updater *anonymous namespace::Updater::Updater(_anonymous_namespace_::Updater *this, RBSymbolLayer *a2, RB::Symbol::Animator *a3)
{
  *this = a2;
  v5 = (this + 16);
  RB::Symbol::Presentation::Presentation(this + 16, a3, 0, 0, 255, 0, 0);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  if (a2)
  {
    v6 = *(a2 + 120);
    *&v8 = *(a2 + 13);
    *(&v7 + 1) = *(a2 + 14);
  }

  *(this + 141) = v8;
  *(this + 142) = v7;
  *(this + 143) = v6;
  [(RBSymbolLayer *)a2 contentsScale];
  *(this + 292) = v9;
  v10 = RB::Symbol::Presentation::bounding_rect(v5);
  v12 = v11;
  v21[1] = v13;
  v21[2] = v14;
  v22 = RB::operator*(v21, *&v10, v12);
  v23 = v15;
  v16 = *(this + 292);
  RB::Rect::round_outwards_by_scale(&v22, v16);
  v17 = v23;
  *(this + 144) = vcvtq_f64_f32(v22);
  *(this + 145) = vcvtq_f64_f32(v17);
  v18 = vceqz_f32(v17);
  v19 = (vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0 || *(this + 292) == 0.0 || *(this + 256) == 0;
  *(this + 2344) = v19;
  return this;
}

void RBProjectVersion_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_4))
  {
    qword_1ED6D53C8 = RBProjectVersion::$_0::operator()();
    dword_1ED6D53D0 = v0;

    __cxa_guard_release(&_MergedGlobals_4);
  }
}

void RB::TextureCache::use_entry(RB *a1)
{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void RB::TextureCache::prepare(RB *a1)
{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void RB::TextureCache::prepare(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void RB::TextureCache::prune_caches(RB *a1)
{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

{
  v1 = RB::misc_log(a1);
  if (OUTLINED_FUNCTION_2_2(v1))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void anonymous namespace::rblayer_async_queue()
{
  if (__cxa_guard_acquire(&qword_1ED6D5408))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    qword_1ED6D5400 = dispatch_queue_create("com.apple.RenderBox.RBLayer", v0);

    __cxa_guard_release(&qword_1ED6D5408);
  }
}

uint64_t __copy_helper_block_e16_64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE88c29_ZTSN2RB8objc_ptrIP7RBLayerEE96c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE104c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE112c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0();
    return (*(v3 + 8))();
  }

  return result;
}

uint64_t RB::SharedSubsurface::~SharedSubsurface(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0();
    return (*(v3 + 8))();
  }

  return result;
}

void anonymous namespace::AnimationTimer::set_handler()
{
  if (__cxa_guard_acquire(&qword_1ED6D5418))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    _MergedGlobals_7 = dispatch_queue_create("com.apple.RenderBox.AnimationTimer", v0);

    __cxa_guard_release(&qword_1ED6D5418);
  }
}

uint64_t RB::DisplayList::Builder::Builder(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))();
  }

  return result;
}

uint64_t RB::DisplayList::Builder::draw_layer(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

uint64_t RB::DisplayList::State::State(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))();
  }

  return result;
}

void RB::anonymous namespace::load_library(char a1, void *a2)
{
  if (a1)
  {
    v2 = "unknown error";
  }

  else
  {
    v2 = [objc_msgSend(a2 "localizedDescription")];
  }

  RB::non_fatal_precondition_failure("unable to load shader library: %s", a2, v2);
}

_DWORD *RB::Device::alloc_shared_texture_view(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result[2] - 1;
  result[2] = v7;
  if (!v7)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t RB::Device::function_library_error(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_cold_1(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))();
  }

  return result;
}

void RB::Device::RenderPipelineEntry::function_table(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_195CE8000, log, OS_LOG_TYPE_ERROR, "failed to add binary function: %@", buf, 0xCu);
}

uint64_t __copy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE48c59_ZTSN2RB8objc_ptrIPU22objcproto11RBEncodable11objc_objectEE_cold_1(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      OUTLINED_FUNCTION_0();
      return (*(v2 + 8))();
    }
  }

  return result;
}

_DWORD *RB::RenderFrame::alloc_buffer_region(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

_DWORD *RB::XML::DisplayList::draw_interpolated(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result[2] - 1;
  result[2] = v7;
  if (!v7)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void RB::DisplayList::GenericEffect<RB::GlassDisplacementEffect>::append_color_fn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48) == 1)
  {
    RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::GlassDisplacementEffect>,RB::DisplayList::GenericEffect<RB::GlassDisplacementEffect> const&,RB::DisplayList::Contents &>((*(a4 + 8) + 16), a1);
    *(v4 + 48) = 0;
  }

  abort();
}

uint64_t RBSymbolUpdateLayerPath_cold_1(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    result = (*(v7 + 8))();
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void RB::DisplayList::RenderState::RootTexture::render(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_195CE8000, log, OS_LOG_TYPE_ERROR, "no drawable", buf, 2u);
}

void RB::DisplayList::RenderState::make_detached_tasks()
{
  OUTLINED_FUNCTION_0_7();
  v0[2] = v1;
  if (v2)
  {
    (*(*v0 + 8))(v0);
  }

  OUTLINED_FUNCTION_1_5();
}

void RB::DisplayList::RenderState::add_texture(uint64_t a1, const char *a2)
{
  RB::precondition_failure("RenderFrame mismatch", a2);
}

{
  RB::precondition_failure("unable to render unoptimized content", a2);
}

void RB::DisplayList::render(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    OUTLINED_FUNCTION_2();
    (*(v1 + 8))();
  }

  OUTLINED_FUNCTION_1_5();
}

uint64_t RB::DisplayList::render()
{
  __dmb(9u);
  OUTLINED_FUNCTION_2();
  return (*(v0 + 8))();
}

uint64_t RB::DisplayList::Item::prepare_task(uint64_t result)
{
  v1 = *(result + 8) - 1;
  *(result + 8) = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_2();
    return (*(v2 + 8))(v3, v4);
  }

  return result;
}

void RB::should_emit_signposts()
{
  v0 = __cxa_guard_acquire(&qword_1ED6D5450);
  if (v0)
  {
    dword_1ED6D5424 = RB::should_emit_signposts(void)::$_0::operator()(v0, v1);

    __cxa_guard_release(&qword_1ED6D5450);
  }
}

void RB::signposts_log()
{
  if (__cxa_guard_acquire(&qword_1ED6D5460))
  {
    v0 = os_log_create("com.apple.renderbox", "signposts");
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5458);

    __cxa_guard_release(v1);
  }
}

void RB::linear_srgb_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54C0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54B8);

    __cxa_guard_release(v1);
  }
}

void RB::extended_linear_srgb_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54D0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54C8);

    __cxa_guard_release(v1);
  }
}

void RB::display_p3_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54E0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54D8);

    __cxa_guard_release(v1);
  }
}

void RB::extended_linear_display_p3_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5500))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54F8);

    __cxa_guard_release(v1);
  }
}

void RB::linear_display_p3_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5510))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5508);

    __cxa_guard_release(v1);
  }
}

void RB::extended_gray_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5530))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5528);

    __cxa_guard_release(v1);
  }
}

void RB::linear_gray_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5540))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5538);

    __cxa_guard_release(v1);
  }
}

void RB::extended_linear_gray_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5550))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5548);

    __cxa_guard_release(v1);
  }
}

void RB::error_log()
{
  if (__cxa_guard_acquire(&qword_1ED6D5570))
  {
    v0 = os_log_create("com.apple.renderbox", "error");
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5568);

    __cxa_guard_release(v1);
  }
}

void RB::non_fatal_precondition_failure(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&dword_195CE8000, a2, OS_LOG_TYPE_FAULT, "precondition failure: %s", &v3, 0xCu);
}

uint64_t RB::RenderPass::set_extra_attachments(uint64_t result)
{
  v1 = *(result + 8) - 1;
  *(result + 8) = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_2();
    return (*(v2 + 8))(v3, v4);
  }

  return result;
}

uint64_t RB::SharedSurfaceGroup::remove_subsurface(uint64_t a1)
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

uint64_t RB::SharedSurfaceGroup::schedule_updates(uint64_t result, atomic_uint *a2)
{
  if ((result & 1) == 0 && atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    return (*(*a2 + 8))(a2);
  }

  return result;
}

_DWORD *RB::CustomEffect::prepare(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void RB::Surface::~Surface(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

atomic_uint *RB::Fill::MeshGradient::MeshGradient(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    return (*(*result + 8))();
  }

  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGFontGetFontBBox(CGFontRef font)
{
  MEMORY[0x1EEDB9B58](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}