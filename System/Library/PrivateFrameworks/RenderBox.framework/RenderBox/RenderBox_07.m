void RB::DisplayList::make_interpolator(RB::DisplayList *this, RB::DisplayList::Interpolator::Layer *a2, const RB::DisplayList::Item *a3, const RB::DisplayList::Item *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (!*this)
  {
    RB::DisplayList::make_interpolator(this, a2);
  }

  v8 = *(v4 + 80);
  *(v4 + 80) = 0;
  RB::DisplayList::Interpolator::Layer::clear(this);
  v9 = *(v4 + 32);
  if (v9 < 8)
  {
    *(v4 + 32) = v9 + 1;
    RB::DisplayList::EditAdaptor::EditAdaptor(v20, this, a2, a3);
    RB::DisplayList::EditAdaptor::finalize(v20, this, v10);
    v11 = v26;
    *(this + 250) = (v26 | *(this + 250)) & 1;
    *(this + 249) = (*(this + 249) | v25) & 1;
    *(this + 2) = *(v4 + 80);
    if ((v11 & 2) != 0)
    {
      if (*(this + 251) == 1)
      {
        v12 = *(this + 22);
        if (!v12)
        {
          v12 = this + 16;
        }

        v13 = *(this + 46);
        if (v13)
        {
          v14 = (v12 + 36);
          v15 = 40 * v13;
          do
          {
            v16 = RB::DisplayList::Interpolator::Contents::animation_max_duration(*this, *(v14 - 1));
            v17 = *v14;
            v14 += 10;
            v18 = v17 + v16;
            if (*(this + 2) >= v18)
            {
              v18 = *(this + 2);
            }

            *(this + 2) = v18;
            v15 -= 40;
          }

          while (v15);
        }
      }

      else
      {
        v19 = RB::DisplayList::Interpolator::Contents::animation_max_duration(v4, *(v4 + 20));
        if (*(this + 2) >= v19)
        {
          v19 = *(this + 2);
        }

        *(this + 2) = v19;
      }
    }

    *(v4 + 80) = v8;
    --*(v4 + 32);
    if (v24)
    {
      free(v24);
    }

    if (v23)
    {
      free(v23);
    }

    if (v22)
    {
      free(v22);
    }

    if (v21)
    {
      free(v21);
    }

    if (v20[0])
    {
      free(v20[0]);
    }
  }

  else
  {

    RB::DisplayList::Interpolator::Layer::failed(this);
  }
}

void sub_195D45564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::DisplayList::EditAdaptor::~EditAdaptor(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::make_interpolator(RB::DisplayList *this, RB::DisplayList::Interpolator::Layer **a2, const RB::DisplayList::Item **a3, const RB::DisplayList::Contents *a4)
{
  {
    v14 = RB::debug_int("RB_PRINT_TREE", v13);
    v15 = (v14 >> 2) & 1;
    if ((v14 & 0x100000000) == 0)
    {
      LOBYTE(v15) = 0;
    }

    RB::DisplayList::make_interpolator(RB::DisplayList::Interpolator::Layer &,RB::DisplayList::Contents const*,RB::DisplayList::Contents const*)::print_tree = v15;
  }

  if (RB::DisplayList::make_interpolator(RB::DisplayList::Interpolator::Layer &,RB::DisplayList::Contents const*,RB::DisplayList::Contents const*)::print_tree != 1)
  {
    goto LABEL_11;
  }

  memset(__p, 0, 41);
  RB::SexpString::push(__p, "make-interpolator");
  RB::SexpString::push(__p, "from");
  if (a2)
  {
    RB::DisplayList::Contents::print(a2, __p);
  }

  RB::SexpString::pop(__p);
  RB::SexpString::push(__p, "to");
  if (a3)
  {
    RB::DisplayList::Contents::print(a3, __p);
  }

  RB::SexpString::pop(__p);
  RB::SexpString::pop(__p);
  RB::SexpString::newline(__p);
  v7 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
  fputs(v7, *MEMORY[0x1E69E9848]);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (a2)
    {
LABEL_12:
      if (*(a2 + 424) != 1)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_11:
    if (a2)
    {
      goto LABEL_12;
    }
  }

  if (!a3 || *(a3 + 424) == 1)
  {
    if (a2)
    {
      v8 = a2[42];
      if (a3)
      {
LABEL_17:
        v9 = a3[42];
LABEL_23:
        RB::DisplayList::make_interpolator(this, v8, v9, a4);
        goto LABEL_24;
      }
    }

    else
    {
      v8 = 0;
      if (a3)
      {
        goto LABEL_17;
      }
    }

    v9 = 0;
    goto LABEL_23;
  }

LABEL_18:
  RB::DisplayList::Interpolator::Layer::failed(this);
LABEL_24:
  {
    v17 = RB::debug_BOOL("RB_PRINT_INTERPOLATORS", v16);
    RB::DisplayList::make_interpolator(RB::DisplayList::Interpolator::Layer &,RB::DisplayList::Contents const*,RB::DisplayList::Contents const*)::print_interpolators = v17 & ((v17 & 0x100) >> 8);
  }

  if (RB::DisplayList::make_interpolator(RB::DisplayList::Interpolator::Layer &,RB::DisplayList::Contents const*,RB::DisplayList::Contents const*)::print_interpolators == 1)
  {
    memset(__p, 0, 41);
    RB::SexpString::push(__p, "interpolator");
    RB::DisplayList::Interpolator::Layer::print(this, __p);
    v10 = *this + 56;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      RB::SexpString::push(__p, "layer");
      RB::SexpString::printf(__p, 0, "#:ids (%d . %d)", *(v10 + 16), *(v10 + 20));
      v11 = *(v10 + 24);
      if (v11)
      {
        RB::DisplayList::Interpolator::Layer::print(v11, __p);
      }

      RB::SexpString::pop(__p);
    }

    RB::SexpString::pop(__p);
    RB::SexpString::newline(__p);
    v12 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    fputs(v12, *MEMORY[0x1E69E9848]);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

double RB::DisplayList::Interpolator::Layer::clear(RB::DisplayList::Interpolator::Layer *this)
{
  *(this + 46) = 0;
  *(this + 48) = 0;
  *(this + 60) = 0;
  *&result = 0x100000001;
  *(this + 62) = 1;
  *(this + 2) = 0;
  return result;
}

RB::DisplayList::EditAdaptor *RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::EditAdaptor *this, RB::Transition ***a2, const RB::DisplayList::Item *a3, const RB::DisplayList::Item *a4)
{
  *(this + 1) = 0u;
  v8 = (this + 16);
  *(this + 12) = 0;
  *this = 0u;
  *(this + 13) = 0x800000000;
  *(this + 22) = 0;
  *(this + 23) = 0x800000000;
  *(this + 12) = 0u;
  v9 = (this + 192);
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 228) = -COERCE_DOUBLE(0x8000000080000000);
  v10 = RB::Transition::properties(**a2);
  v11 = (*a2)[3];
  if (v11 && (*(v11 + 4) & 1) == 0)
  {
    *(this + 233) |= 8u;
  }

  v38 = 0;
  v36[0] = this;
  v36[1] = &v38;
  v36[2] = a2;
  v37 = v10;
  if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_1::operator()(v36, this, this + 32, a3) && RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_1::operator()(v36, v8, this + 112, a4))
  {
    if (*(this + 232))
    {
      *(this + 232) = 1;
LABEL_10:
      std::stable_sort[abi:nn200100]<RB::DisplayList::EditAdaptor::Element *,RB::DisplayList::EditAdaptor::(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2>(*this, (*this + 24 * *(this + 2)), v12);
      std::stable_sort[abi:nn200100]<RB::DisplayList::EditAdaptor::Element *,RB::DisplayList::EditAdaptor::(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2>(*(this + 2), (*(this + 2) + 24 * *(this + 6)), v13);
      v14 = 0;
      v23 = 0;
      v21 = 0;
      v15 = 0;
      for (i = 0; ; v14 = HIDWORD(i))
      {
        v16 = i;
        v22 = *(this + 6);
        if (v14 >= *(this + 2))
        {
          if (i >= v22)
          {
            *(this + 235) = v15 > 1;
            goto LABEL_23;
          }
        }

        else
        {
          v17 = *this + 24 * v14;
          if (i >= v22)
          {
            goto LABEL_17;
          }

          if (RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_2::operator()(v17, *v8 + 24 * i))
          {
            v17 = *this + 24 * v14;
            goto LABEL_17;
          }
        }

        v17 = *v8 + 24 * v16;
LABEL_17:
        v18 = *(*v17 + 40);
        v33 = *(*v17 + 32);
        v34 = v18;
        v31 = &v33;
        v32 = v15;
        v19 = RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>(&v31, this, &i + 1);
        v20 = RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>(&v31, v8, &i);
        if (v21 <= v19)
        {
          v21 = v19;
        }

        if (v23 <= v20)
        {
          v23 = v20;
        }

        ++v15;
      }
    }

    v12.n128_u64[0] = vcnt_s8(v38);
    v12.n128_u16[0] = vaddlv_u8(v12.n128_u64[0]);
    *(this + 232) = v12.n128_u32[0] > 1;
    if (v12.n128_u32[0] > 1)
    {
      goto LABEL_10;
    }

    v21 = *(this + 2);
    v22 = *(this + 6);
    *(this + 235) = 0;
    v23 = v22;
LABEL_23:
    v24 = v21 * v23 + 7;
    if (v24 <= 0x800007)
    {
      v25 = v24 >> 3;
      if (v21 != 1 && v22)
      {
        v26 = v22;
        v27 = (*v8 + 16);
        v28 = 24 * v26;
        do
        {
          *v27 *= v21;
          v27 += 6;
          v28 -= 24;
        }

        while (v28);
      }

      v29 = *(this + 50);
      if (v29 < v25)
      {
        if (*(this + 51) < v25)
        {
          RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(v9, v25);
          v29 = *(this + 50);
        }

        if (v29 < v25)
        {
          bzero((*v9 + 4 * v29), 4 * (v25 + ~v29) + 4);
        }
      }

      *(this + 50) = v25;
      *(this + 234) = 1;
    }
  }

  return this;
}

void sub_195D45BB0(_Unwind_Exception *exception_object)
{
  if (*v3)
  {
    free(*v3);
  }

  v5 = *(v1 + 176);
  if (v5)
  {
    free(v5);
  }

  v6 = *(v1 + 96);
  if (v6)
  {
    free(v6);
  }

  if (*v2)
  {
    free(*v2);
  }

  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::DisplayList::EditAdaptor::EditAdaptor(RB::DisplayList::Interpolator::Layer const&,RB::DisplayList::Item const*,RB::DisplayList::Item const*)::$_1::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v32 = a4;
  v33 = 0;
  v36 = 1;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 256;
  if (a4)
  {
    v8 = (*(*a4 + 40))(a4);
  }

  else
  {
    v8 = 0;
  }

  v35 = v8 != -1;
  if (v8 == -1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v34 = v9;
  v10 = 0;
  if (v9 && !(*(a2 + 8) >> 13))
  {
    v11 = 0;
    do
    {
      v12 = v32;
      if ((*(v7 + 232) & 1) != 0 || *(v32 + 40))
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        v13 = (*(v32 + 46) >> 12) & 1;
      }

      *(v7 + 232) = v13;
      v14 = *(v12 + 32);
      if (v14)
      {
        if (v14 != v11)
        {
          v15 = a1[2];
          v16 = RB::DisplayList::Metadata::transition(*(v12 + 32));
          v17 = RB::DisplayList::Interpolator::Layer::item_transition(v15, v16);
          v18 = *(v17 + 3);
          *a1[1] |= 1 << v18;
          if (*(v7 + 224) > v18)
          {
            v18 = *(v7 + 224);
          }

          v19 = *(v17 + 5);
          if (*(v7 + 228) > v19)
          {
            v19 = *(v7 + 228);
          }

          *(v7 + 224) = v18;
          *(v7 + 228) = v19;
          *(v7 + 233) |= RB::Transition::properties(v17);
          v12 = v32;
          v11 = v14;
        }
      }

      else
      {
        *a1[1] |= 1u;
        *(v7 + 233) |= *(a1 + 24);
      }

      v20 = v33;
      if (v35)
      {
        v21 = HIDWORD(v33);
      }

      else
      {
        v21 = -1;
      }

      v22 = *(a2 + 8);
      v23 = v22 + 1;
      if (*(a2 + 12) < (v22 + 1))
      {
        RB::vector<std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>,0ul,unsigned int>::reserve_slow(a2, v23);
        v25 = *(a2 + 8);
        v24 = v33;
        v23 = v25 + 1;
      }

      else
      {
        v24 = v33;
        v25 = *(a2 + 8);
      }

      v26 = *a2 + 24 * v25;
      *v26 = v12;
      *(v26 + 8) = v20;
      *(v26 + 12) = v21;
      *(v26 + 16) = v22;
      *(v26 + 20) = 0;
      *(a2 + 8) = v23;
      v27 = *(a3 + 72);
      if (v24 != v27 - 1)
      {
        v28 = v32;
        v29 = v27 + 1;
        if (*(a3 + 76) < v27 + 1)
        {
          RB::vector<RB::objc_ptr<void({block_pointer})(NSError *)>,8ul,unsigned int>::reserve_slow(a3, v29);
          v27 = *(a3 + 72);
          v29 = v27 + 1;
        }

        v30 = *(a3 + 64);
        if (!v30)
        {
          v30 = a3;
        }

        *(v30 + 8 * v27) = v28;
        *(a3 + 72) = v29;
      }

      RB::DisplayList::AtomizedItems::advance(&v32, 1);
      v10 = HIDWORD(v33);
      v9 = v34;
    }

    while (HIDWORD(v33) < v34 && !(*(a2 + 8) >> 13) && v33 <= 0x1FFFFFFE);
  }

  return v10 == v9;
}

uint64_t RB::Transition::properties(RB::Transition *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v2 = 0;
    v3 = this + 24;
    if (*(this + 5))
    {
      v3 = *(this + 5);
    }

    v4 = 2;
    do
    {
      v5 = *&v3[4 * v2];
      v6 = v5 & 0x3F;
      v7 = 1 << (v5 & 0x3F);
      v8 = v4 | 4;
      if ((v5 & 0x1000) != 0)
      {
        v8 = v4;
      }

      v9 = v4 | 9;
      if ((v7 & 0x60020) == 0)
      {
        v9 = v4;
      }

      if ((v7 & 0x187800) == 0)
      {
        v8 = v9;
      }

      if ((v7 & 0x1E187DC) != 0)
      {
        v10 = v4 | 1;
      }

      else
      {
        v10 = v8;
      }

      if (v6 <= 0x18)
      {
        v4 = v10;
      }

      v4 |= (v5 >> 6) & 8 | (v5 >> 4) & 0x10;
      v2 += RB::Transition::_effect_args[v6] + 1;
    }

    while (v2 < v1);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

uint64_t *RBDrawingStateAddColorMultiplyFilter2(uint64_t *a1, int a2, int a3, float a4, float a5, float a6, float a7)
{
  *v8 = a4;
  *&v8[1] = a5;
  *&v8[2] = a6;
  *&v8[3] = a7;
  v8[4] = a2;
  v8[5] = 0;
  v8[6] = a3;
  return add_color_multiply_style(a1, v8);
}

_DWORD *RB::DisplayList::AtomizedItems::advance(_DWORD *this, int a2)
{
  v2 = this[4];
  v3 = this[3] + a2;
  this[3] = v3;
  if (v3 == v2)
  {
    v4 = this;
    this = *(*this + 8);
    *v4 = this;
    *(v4 + 1) = (v4[2] + 1);
    if (this)
    {
      this = (*(*this + 40))(this);
    }

    *(v4 + 20) = this != -1;
    if (this == -1)
    {
      v5 = 1;
    }

    else
    {
      v5 = this;
    }

    v4[4] = v5;
    *(v4 + 88) = 0;
  }

  return this;
}

uint64_t *RBDrawingStateAddColorMultiplyFilter(uint64_t *a1, int a2, float a3, float a4, float a5, float a6)
{
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  v8 = 0;
  v9 = a2;
  return add_color_multiply_style(a1, v7);
}

void RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::EditAdaptor *this, uint64_t **a2, __n128 a3)
{
  v104 = *MEMORY[0x1E69E9840];
  if (*(this + 234) != 1)
  {
    return;
  }

  v4 = this;
  v5 = (a2 + 25);
  v6 = *(a2 + 60);
  if (*(a2 + 61) < (v6 + 1))
  {
    RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow(v5, v6 + 1);
    v6 = *(a2 + 60);
  }

  v7 = a2[29];
  if (!v7)
  {
    v7 = v5;
  }

  v8 = &v7[v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = *(a2 + 60);
  v10 = *(a2 + 61);
  v11 = v9 + 1;
  *(a2 + 60) = v9 + 1;
  if (v10 < v9 + 2)
  {
    RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow(v5, v9 + 2);
    v11 = *(a2 + 60);
  }

  v12 = a2[29];
  if (!v12)
  {
    v12 = v5;
  }

  v13 = &v12[v11];
  *v13 = 0;
  *(v13 + 1) = 0;
  ++*(a2 + 60);
  if ((*(v4 + 235) & 1) != 0 || (*(v4 + 233) & 8) != 0)
  {
    v99 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 8;
    v98 = 0uLL;
    v97 = 0uLL;
    v18 = *(v4 + 6) != 0;
    if (*(v4 + 2) != 0 || v18)
    {
      v19 = 0;
      v20 = 0;
      v82 = 1;
      v84 = v4;
      do
      {
        if (v18)
        {
          v21 = *(*(v4 + 2) + 24 * v20 + 8);
        }

        else
        {
          v21 = 0;
        }

        v95 = 0x80000000;
        v96 = 0;
        v94 = 0;
        v22 = (*a2)[3];
        if (v22 && (*(v22 + 4) & 1) == 0)
        {
          v94 = 8;
        }

        v89 = a2;
        v90 = v19;
        v91 = &v96;
        v92 = &v95;
        v93 = &v94;
        RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>(&v89, v4, &v99 + 1, &v87);
        RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_0::operator()<RB::vector<RB::DisplayList::EditAdaptor::Element,0ul,unsigned int>,unsigned int>(&v89, v4 + 16, &v99, &v85);
        RB::Rect::Union(&v98, v88.n128_f64[0], *&v88.n128_i8[8]);
        RB::Rect::Union(&v97, v86.n128_f64[0], *&v86.n128_i8[8]);
        if ((v94 & 8) != 0)
        {
          if (v87)
          {
            v24 = *(a2 + 60);
            v27 = v24;
            if (*(a2 + 61) < (v24 + 1))
            {
              RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow(v5, v24 + 1);
              v27 = *(a2 + 60);
            }

            v28 = a2[29];
            if (!v28)
            {
              v28 = v5;
            }

            v23 = v88;
            v28[v27] = v88;
            ++*(a2 + 60);
          }

          else
          {
            v24 = 0;
          }

          v26 = v85;
          if (v85)
          {
            v25 = *(a2 + 60);
            v29 = v25;
            if (*(a2 + 61) < (v25 + 1))
            {
              RB::vector<RB::Rect,2ul,unsigned int>::reserve_slow(v5, v25 + 1);
              v29 = *(a2 + 60);
            }

            v30 = a2[29];
            if (!v30)
            {
              v30 = v5;
            }

            v23 = v86;
            v30[v29] = v86;
            ++*(a2 + 60);
          }

          else
          {
            v25 = 1;
          }
        }

        else
        {
          v24 = 0;
          v25 = 1;
          v26 = v85;
        }

        if (!v26)
        {
          v21 = 0xFFFFFFF;
        }

        v31 = **a2;
        v32 = v96;
        if (!v96)
        {
          v32 = *(v31 + 12);
          v96 = v32;
        }

        v33 = v95;
        if (v95 == 0x80000000)
        {
          v33 = *(v31 + 20);
          v95 = v33;
        }

        v20 = v99;
        v34 = HIDWORD(v99);
        if (v87 | v26)
        {
          v35 = v19;
          v36 = v5;
          v37 = *(a2 + 46);
          v38 = RB::DisplayList::EditAdaptor::finalize_group(v84, a2, v32, v33, v21, *v84 + 24 * (HIDWORD(v99) - v87), v87, *(v84 + 16) + 24 * (v99 - v26), v23, v26, v24, v25);
          if (v21 == 0xFFFFFFF)
          {
            v39 = *(a2 + 46);
            if (v39 > v37)
            {
              v40 = v102;
              v41 = v102 + 1;
              if (v103 < v102 + 1)
              {
                RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v41);
                v40 = v102;
                v41 = v102 + 1;
              }

              v42 = v101;
              if (!v101)
              {
                v42 = __dst;
              }

              v43 = &v42[8 * v40];
              *v43 = v37;
              v43[1] = v39;
              v102 = v41;
            }
          }

          v82 = v83 & !v38;
          v4 = v84;
          v44 = *(v84 + 200);
          if (v44)
          {
            bzero(*(v84 + 192), 4 * v44);
          }

          v5 = v36;
          v19 = v35;
        }

        else
        {
          v4 = v84;
        }

        ++v19;
        v45 = *(v4 + 6);
        v18 = v20 < v45;
      }

      while (v34 < *(v4 + 2) || v20 < v45);
      if ((v82 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if ((*(a2 + 251) & 1) != 0 || a2[24] & 0x200 | *(v4 + 233) & 8)
    {
LABEL_70:
      v47 = a2[29];
      if (!v47)
      {
        v47 = v5;
      }

      *v47 = v98;
      v48 = a2[29];
      if (!v48)
      {
        v48 = v5;
      }

      v17 = v97;
      v48[1] = v97;
      v49 = v101;
      if (!v101)
      {
        v49 = __dst;
      }

      if (v102)
      {
        v50 = &v49[2 * v102];
        do
        {
          v51 = *v49;
          v52 = a2[22];
          if (!v52)
          {
            v52 = (a2 + 2);
          }

          v53 = *(a2 + 46);
          if (v53)
          {
            v54 = &v52[40 * v51];
            v55 = v52 + 12;
            v56 = 5 * v53;
            v57 = *(v54 + 2);
            v58 = *(v54 + 3);
            v59 = 8 * v56;
            v60 = 0x7FFFFFFF;
            v61 = 536870910;
            v62 = 0x7FFFFFFF;
            do
            {
              v63 = *(v55 - 3);
              v64 = v63 & 0xF;
              if ((~v63 & 0xFFFFFFF0) != 0 && v64 != 1 && v64 != 8)
              {
                v67 = *(v55 - 1) - v57;
                v68 = *v55 - v58;
                v69 = v67 >= 1 && v67 < v62;
                if (v69 || (!v67 ? (v70 = v68 < 1) : (v70 = 1), !v70 ? (v71 = v68 < v60) : (v71 = 0), v71))
                {
                  v61 = v63 >> 4;
                  v62 = *(v55 - 1) - v57;
                  v60 = *v55 - v58;
                }
              }

              v55 += 10;
              v59 -= 40;
            }

            while (v59);
            v72 = 16 * v61;
          }

          else
          {
            v72 = 4294967264;
          }

          if (v51 < v49[1])
          {
            v73 = 40 * v51;
            do
            {
              v74 = a2[22];
              if (!v74)
              {
                v74 = (a2 + 2);
              }

              *&v74[v73] = *&v74[v73] & 0xFFFFFFFF0000000FLL | v72;
              ++v51;
              v73 += 40;
            }

            while (v51 < v49[1]);
          }

          v49 += 2;
        }

        while (v49 != v50);
      }

      v46 = 1;
    }

    else
    {
      RB::DisplayList::Interpolator::Layer::failed(a2);
      v46 = 0;
    }

    if (v101)
    {
      free(v101);
    }

    if ((v46 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v14 = **a2;
    v15 = *(v4 + 56);
    if (!v15)
    {
      v15 = *(v14 + 12);
    }

    v16 = *(v4 + 57);
    if (v16 == 0x80000000)
    {
      v16 = *(v14 + 20);
    }

    if (!RB::DisplayList::EditAdaptor::finalize_group(v4, a2, v15, v16, 0, *v4, *(v4 + 2), *(v4 + 2), a3, *(v4 + 6), 0, 1) && (*(a2 + 251) & 1) == 0 && !(a2[24] & 0x200 | *(v4 + 233) & 8))
    {

      RB::DisplayList::Interpolator::Layer::failed(a2);
      return;
    }
  }

  if (a2[22])
  {
    v75 = a2[22];
  }

  else
  {
    v75 = (a2 + 2);
  }

  v76 = *(a2 + 46);
  if (v76 < 0x81)
  {
    v81 = 0;
    v78 = 0;
  }

  else
  {
    v77 = MEMORY[0x1E69E5398];
    v78 = v76;
    while (1)
    {
      v79 = operator new(40 * v78, v77);
      if (v79)
      {
        break;
      }

      v80 = v78 >> 1;
      v69 = v78 > 1;
      v78 >>= 1;
      if (!v69)
      {
        v81 = 0;
        v78 = v80;
        goto LABEL_126;
      }
    }

    v81 = v79;
  }

LABEL_126:
  std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v75, (v75 + 40 * v76), v76, v81, v78, v17);
  if (v81)
  {
    operator delete(v81);
  }
}

void sub_195D46764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a38)
  {
    free(a38);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::DisplayList::EditAdaptor::finalize_group(uint64_t a1, RB::DisplayList::Interpolator::Layer *a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, __n128 a9, unsigned int a10, int a11, int a12)
{
  v12 = a7;
  v13 = a6;
  v16 = a10;
  v415 = *MEMORY[0x1E69E9840];
  v392 = a8;
  v393 = a6;
  v368 = 16 * a5;
  v17 = a10;
  if (a7)
  {
    a9.n128_u64[1] = 0x100000000;
    do
    {
      v18 = *(*v13 + 46);
      v19 = (v18 >> 12) & 1;
      if ((v18 & 0x1000) == 0)
      {
        break;
      }

      v20 = *(a2 + 46);
      if (*(a2 + 47) < (v20 + 1))
      {
        RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(a2 + 16, v20 + 1);
        v20 = *(a2 + 46);
      }

      v21 = *(a2 + 22);
      if (!v21)
      {
        v21 = a2 + 16;
      }

      v22 = &v21[40 * v20];
      v23 = *(v13 + 8);
      *v22 = 0x1000000000;
      *(v22 + 1) = v23;
      *(v22 + 1) = xmmword_195E48500;
      *(v22 + 4) = 0;
      v24 = *(a2 + 46);
      *(a2 + 46) = v24 + 1;
      v25 = *(a2 + 22);
      if (!v25)
      {
        v25 = a2 + 16;
      }

      v26 = &v25[40 * v24];
      *v26 = *v26 & 0xFFFFFFFF0000000FLL | v368;
      *(v26 + 6) = a11;
      *(v26 + 7) = a12;
      *(a2 + 48) |= 1u;
      RB::DisplayList::Interpolator::Layer::merge_tail(a2);
      v13 = v393 + 24;
      v393 += 24;
      --v12;
    }

    while (v12);
    v16 = a10;
  }

  else
  {
    LOBYTE(v19) = 1;
  }

  v374 = *(a2 + 46);
  __dst = a2 + 16;
  v391[0] = a1;
  v391[1] = a2;
  v377 = a2;
  if (a3 == 1 && a4)
  {
    LOBYTE(v389) = 1;
    if (v16 && v12)
    {
      v27 = a1;
      while (1)
      {
        v410[0] = 0;
        LODWORD(v385) = 0;
        v390 = 0;
        v394 = a5;
        v395 = v410;
        v396 = &v390 + 4;
        v397 = v27;
        v398 = a2;
        v399 = &v393;
        v400 = &v392;
        v401 = &a11;
        v402 = &a12;
        v403 = &v389;
        v404 = &v385;
        v405 = &v390;
        LOBYTE(v389) = 0;
        if (!RB::lcs_diff<RB::DisplayList::EditAdaptor::Element,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_0,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_1>(v12, v393, v17, v392, 2 * a4, v391, &v394))
        {
          v36 = v374;
          v37 = a2 + 16;
          LODWORD(v16) = v17;
          goto LABEL_181;
        }

        v28 = v410[0];
        if (v410[0] < v12)
        {
          v29 = HIDWORD(v390);
          do
          {
            RB::DisplayList::EditAdaptor::mix_elements(a1, a2, a5, v393 + 24 * v28, v392 + 24 * v29, a11, a12);
            v28 = v410[0] + 1;
            v410[0] = v28;
            v29 = ++HIDWORD(v390);
          }

          while (v28 < v12);
        }

        v12 = v385;
        if (v389 != 1)
        {
          break;
        }

        v27 = a1;
        v17 = v390;
        if (!v390 || !v385)
        {
          goto LABEL_180;
        }
      }

      v17 = v390;
    }

LABEL_180:
    LODWORD(v16) = v17;
    v36 = v374;
    v37 = a2 + 16;
    if (v12 + v17 > a4)
    {
LABEL_181:
      *(a2 + 46) = v36;
    }

    v78 = v12;
    goto LABEL_183;
  }

  v390 = 0;
  v408 = 0;
  v409 = 0x8000000000;
  v389 = 0;
  v385 = &v390 + 4;
  v386 = &v390;
  v387 = &v394;
  v388 = &v389;
  v381 = v12;
  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v65 = 0;
      v30 = 1;
LABEL_104:
      RB::prefix_suffix_diff<RB::DisplayList::EditAdaptor::Element,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_0,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_2>(v12, v13, v16, v392, v391, &v385, v30, v65);
      goto LABEL_105;
    }

    if (a3 == 6)
    {
      v30 = 0;
      goto LABEL_103;
    }

    if (a3 != 7)
    {
      goto LABEL_83;
    }

    if (v12 == v16)
    {
      if (!v16)
      {
LABEL_105:
        v35 = 0;
        goto LABEL_106;
      }

      v31 = v12;
      v32 = v392;
      while (1)
      {
        v33 = *(v13 + 16) + *(v32 + 16);
        matrix_value = (*(*(a1 + 192) + 4 * (v33 >> 3)) >> (4 * (v33 & 7))) & 0xF;
        if (!matrix_value)
        {
          matrix_value = RB::DisplayList::EditAdaptor::make_matrix_value(a1, a2, v13, v32);
        }

        if (matrix_value == 1)
        {
          break;
        }

        v35 = 0;
        v32 += 24;
        v13 += 24;
        if (!--v31)
        {
          goto LABEL_106;
        }
      }
    }

    if ((v19 & 1) == 0)
    {
      v116 = HIDWORD(v390);
      if (HIDWORD(v390))
      {
        v117 = v409;
        if (!v409)
        {
          goto LABEL_530;
        }

        v118 = v408;
        if (!v408)
        {
          v118 = &v394;
        }

        v119 = &v118[3 * (v409 - 1)];
        v120 = v119[2];
        if (__PAIR64__(v120 + *v119, v119[1] + v120) == v390)
        {
          v119[2] = v120 - HIDWORD(v390);
        }

        else
        {
LABEL_530:
          v345 = v409 + 1;
          if (HIDWORD(v409) < (v409 + 1))
          {
            RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v345);
            v117 = v409;
            v345 = v409 + 1;
          }

          v346 = v408;
          if (!v408)
          {
            v346 = &v394;
          }

          v347 = v390;
          v348 = &v346[3 * v117];
          *v348 = HIDWORD(v390);
          v348[1] = v347;
          v348[2] = -v116;
          LODWORD(v409) = v345;
        }

        v349 = HIDWORD(v390) - v116;
        LODWORD(v390) = v390 - v116;
        v389 -= v116;
      }

      else
      {
        v349 = 0;
      }

      HIDWORD(v390) = v349 + v12;
    }

    if (!v16)
    {
      goto LABEL_105;
    }

    v350 = v390;
    if (v390)
    {
      v351 = v409;
      if (!v409)
      {
        goto LABEL_545;
      }

      v352 = v408;
      if (!v408)
      {
        v352 = &v394;
      }

      v353 = &v352[3 * (v409 - 1)];
      v354 = v353[2];
      if (__PAIR64__(v354 + *v353, v353[1] + v354) == v390)
      {
        v353[2] = v354 - v390;
      }

      else
      {
LABEL_545:
        v355 = v409 + 1;
        if (HIDWORD(v409) < (v409 + 1))
        {
          RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v355);
          v351 = v409;
          v355 = v409 + 1;
        }

        v356 = v390;
        v357 = v408;
        if (!v408)
        {
          v357 = &v394;
        }

        v358 = &v357[3 * v351];
        *v358 = HIDWORD(v390);
        v358[1] = v356;
        v358[2] = -v350;
        LODWORD(v409) = v355;
      }

      HIDWORD(v390) -= v350;
      v359 = v390 - v350;
      v389 -= v350;
    }

    else
    {
      v359 = 0;
    }

    v35 = 0;
    LODWORD(v390) = v359 + v16;
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v66 = v12;
        a9.n128_u64[1] = 0;
        v413 = 0u;
        v414 = 128;
        if (v16 && v12)
        {
          v67 = 0;
          v68 = v392 + 24 * v16 - 24;
          v69 = v13 + 24 * v12 - 24;
          do
          {
            v70 = *(v69 + 16) + *(v68 + 16);
            v71 = (*(*(a1 + 192) + 4 * (v70 >> 3)) >> (4 * (v70 & 7))) & 0xF;
            if (!v71)
            {
              v71 = RB::DisplayList::EditAdaptor::make_matrix_value(a1, a2, v69, v68);
            }

            if (v71 == 1)
            {
              v72 = *(&v413 + 1);
              v73 = *(&v413 + 1) + 1;
              if (v414 < *(&v413 + 1) + 1)
              {
                RB::vector<double,128ul,unsigned long>::reserve_slow(v410, v73);
                v72 = *(&v413 + 1);
                v73 = *(&v413 + 1) + 1;
              }

              v74 = v413;
              if (!v413)
              {
                v74 = v410;
              }

              v75 = &v74[2 * v72];
              *v75 = v12 - 1 + v67;
              v75[1] = v16 - 1 + v67;
              *(&v413 + 1) = v73;
            }

            v76 = v67 - 1;
            if (a10 + v67 < 2)
            {
              break;
            }

            v77 = v12 + v67;
            v68 -= 24;
            v69 -= 24;
            --v67;
          }

          while (v77 > 1);
          LODWORD(v16) = a10;
          v126 = a10 + v76;
          v66 = v12 + v76;
        }

        else
        {
          v126 = v16;
        }

        if (v12 <= v16)
        {
          v66 = v126;
        }

        if (v66)
        {
          v127 = *(&v385 + (v12 <= v16));
          v128 = *v127;
          if (*v127)
          {
            v129 = v409;
            if (!v409)
            {
              goto LABEL_481;
            }

            v130 = v408;
            if (!v408)
            {
              v130 = &v394;
            }

            v131 = &v130[3 * (v409 - 1)];
            v132 = v131[2];
            if (__PAIR64__(v132 + *v131, v131[1] + v132) == v390)
            {
              v131[2] = v132 - v128;
            }

            else
            {
LABEL_481:
              v313 = v409 + 1;
              if (HIDWORD(v409) < (v409 + 1))
              {
                RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v313);
                v129 = v409;
                v313 = v409 + 1;
                v127 = *(&v385 + (v12 <= v16));
                LODWORD(v16) = a10;
              }

              v314 = v408;
              if (!v408)
              {
                v314 = &v394;
              }

              v315 = v390;
              v316 = &v314[3 * v129];
              *v316 = HIDWORD(v390);
              v316[1] = v315;
              v316[2] = -v128;
              LODWORD(v409) = v313;
            }

            HIDWORD(v390) -= v128;
            LODWORD(v390) = v390 - v128;
            v389 -= v128;
            v317 = *v127;
          }

          else
          {
            v317 = 0;
          }

          *v127 = v317 + v66;
        }

        if (*(&v413 + 1))
        {
          v322 = HIDWORD(v390);
          v323 = *(&v413 + 1) - 1;
          do
          {
            v324 = v413;
            if (!v413)
            {
              v324 = v410;
            }

            v326 = &v324[2 * v323];
            v325 = v326[1];
            v327 = *v326 - v322;
            if (*v326 == v322)
            {
              v328 = v390;
            }

            else
            {
              v329 = v409;
              if (!v409)
              {
                goto LABEL_508;
              }

              v330 = v408;
              if (!v408)
              {
                v330 = &v394;
              }

              v331 = &v330[3 * (v409 - 1)];
              v332 = v331[2];
              if (v332 + *v331 == v322 && v331[1] + v332 == v390)
              {
                v331[2] = v332 + v327;
              }

              else
              {
LABEL_508:
                v333 = v409 + 1;
                if (HIDWORD(v409) < (v409 + 1))
                {
                  RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v333);
                  v329 = v409;
                  v333 = v409 + 1;
                  v322 = HIDWORD(v390);
                }

                v334 = v408;
                if (!v408)
                {
                  v334 = &v394;
                }

                v335 = v390;
                v336 = &v334[3 * v329];
                *v336 = v322;
                v336[1] = v335;
                v336[2] = v327;
                LODWORD(v409) = v333;
              }

              v322 = HIDWORD(v390) + v327;
              v328 = v390 + v327;
              v389 += v327;
              LODWORD(v390) = v390 + v327;
            }

            HIDWORD(v390) = ++v322;
            v337 = v325 - v328;
            if (v325 != v328)
            {
              v338 = v409;
              if (!v409)
              {
                goto LABEL_521;
              }

              v339 = v408;
              if (!v408)
              {
                v339 = &v394;
              }

              v340 = &v339[3 * (v409 - 1)];
              v341 = v340[2];
              if (v341 + *v340 == v322 && v340[1] + v341 == v328)
              {
                v340[2] = v341 + v337;
              }

              else
              {
LABEL_521:
                v342 = v409 + 1;
                if (HIDWORD(v409) < (v409 + 1))
                {
                  RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v342);
                  v338 = v409;
                  v342 = v409 + 1;
                  v328 = v390;
                  v322 = HIDWORD(v390);
                }

                v343 = v408;
                if (!v408)
                {
                  v343 = &v394;
                }

                v344 = &v343[3 * v338];
                *v344 = v322;
                v344[1] = v328;
                v344[2] = v337;
                LODWORD(v409) = v342;
              }

              v322 = HIDWORD(v390) + v337;
              HIDWORD(v390) += v337;
              v325 = v390 + v337;
              v389 += v337;
            }

            LODWORD(v390) = v325 + 1;
            --v323;
          }

          while (v323 != -1);
        }

        if (v413)
        {
          free(v413);
        }

        goto LABEL_105;
      }

      if (a3 == 4)
      {
        v30 = 1;
LABEL_103:
        v65 = 1;
        goto LABEL_104;
      }

LABEL_83:
      if ((v19 & 1) == 0)
      {
        HIDWORD(v390) = v12;
      }

      if (v16)
      {
        LODWORD(v390) = v16;
      }

      v35 = 1;
      goto LABEL_106;
    }

    if (v12 >= v16)
    {
      v38 = v16;
    }

    else
    {
      v38 = v12;
    }

    if (v38)
    {
      v39 = 0;
      v40 = v392;
      do
      {
        v41 = *(v13 + 16) + *(v40 + 16);
        v42 = (*(*(a1 + 192) + 4 * (v41 >> 3)) >> (4 * (v41 & 7))) & 0xF;
        if (!v42)
        {
          v42 = RB::DisplayList::EditAdaptor::make_matrix_value(a1, a2, v13, v40);
        }

        if (v42 == 1)
        {
          v43 = HIDWORD(v390);
          v44 = v39 - HIDWORD(v390);
          if (v39 == HIDWORD(v390))
          {
            v45 = v390;
            v46 = v39;
          }

          else
          {
            v47 = v409;
            if (!v409)
            {
              goto LABEL_58;
            }

            v48 = v408;
            if (!v408)
            {
              v48 = &v394;
            }

            v49 = &v48[3 * (v409 - 1)];
            v50 = v49[2];
            if (__PAIR64__(v50 + *v49, v49[1] + v50) == v390)
            {
              v49[2] = v39 + v50 - HIDWORD(v390);
            }

            else
            {
LABEL_58:
              v51 = v409 + 1;
              if (HIDWORD(v409) < (v409 + 1))
              {
                RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v51);
                v47 = v409;
                v51 = v409 + 1;
              }

              v52 = v408;
              if (!v408)
              {
                v52 = &v394;
              }

              v53 = v390;
              v54 = &v52[3 * v47];
              *v54 = HIDWORD(v390);
              v54[1] = v53;
              v54[2] = v39 - v43;
              LODWORD(v409) = v51;
            }

            v46 = HIDWORD(v390) + v44;
            v45 = v39 + v390 - v43;
            v389 = v39 + v389 - v43;
            LODWORD(v390) = v45;
          }

          v55 = v46 + 1;
          HIDWORD(v390) = v55;
          if (v39 == v45)
          {
            v56 = v39;
          }

          else
          {
            v57 = v409;
            if (!v409)
            {
              goto LABEL_72;
            }

            v58 = v408;
            if (!v408)
            {
              v58 = &v394;
            }

            v59 = &v58[3 * (v409 - 1)];
            v60 = v59[2];
            if (v60 + *v59 == v55 && v59[1] + v60 == v45)
            {
              v59[2] = v39 + v60 - v45;
            }

            else
            {
LABEL_72:
              v61 = v409 + 1;
              if (HIDWORD(v409) < (v409 + 1))
              {
                RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v61);
                v57 = v409;
                v61 = v409 + 1;
                v62 = v390;
                v55 = HIDWORD(v390);
              }

              else
              {
                v62 = v45;
              }

              v63 = v408;
              if (!v408)
              {
                v63 = &v394;
              }

              v64 = &v63[3 * v57];
              *v64 = v55;
              v64[1] = v62;
              v64[2] = v39 - v45;
              LODWORD(v409) = v61;
            }

            HIDWORD(v390) = v39 + HIDWORD(v390) - v45;
            v56 = v390 + v39 - v45;
            v389 = v39 + v389 - v45;
          }

          LODWORD(v390) = v56 + 1;
        }

        ++v39;
        v40 += 24;
        v13 += 24;
      }

      while (v38 != v39);
    }

    LODWORD(v16) = a10;
    v108 = v12;
    if (v12 <= a10)
    {
      v108 = a10;
    }

    v109 = v108 - v38;
    if (v108 == v38)
    {
      goto LABEL_105;
    }

    v110 = *(&v385 + (v12 <= a10));
    v111 = v38 - *v110;
    if (v38 != *v110)
    {
      v112 = v409;
      if (!v409)
      {
        goto LABEL_487;
      }

      v113 = v408;
      if (!v408)
      {
        v113 = &v394;
      }

      v114 = &v113[3 * (v409 - 1)];
      v115 = v114[2];
      if (__PAIR64__(v115 + *v114, v114[1] + v115) == v390)
      {
        v114[2] = v115 + v111;
      }

      else
      {
LABEL_487:
        v318 = v409 + 1;
        if (HIDWORD(v409) < (v409 + 1))
        {
          RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(&v394, v318);
          v112 = v409;
          v318 = v409 + 1;
          v110 = *(&v385 + (v12 <= a10));
        }

        v319 = v408;
        if (!v408)
        {
          v319 = &v394;
        }

        v320 = &v319[3 * v112];
        v321 = v390;
        *v320 = HIDWORD(v390);
        v320[1] = v321;
        v320[2] = v111;
        LODWORD(v409) = v318;
      }

      HIDWORD(v390) += v111;
      LODWORD(v390) = v390 + v111;
      v389 += v111;
      LODWORD(v38) = *v110;
    }

    v35 = 0;
    *v110 = v38 + v109;
  }

LABEL_106:
  v78 = HIDWORD(v390);
  v79 = v389 + v12 - HIDWORD(v390);
  v389 = v79;
  if (a4 == -1 || (v35 & 1) != 0)
  {
    v37 = a2 + 16;
    if ((v35 & 1) == 0)
    {
      goto LABEL_112;
    }

LABEL_138:
    v78 = v12;
LABEL_164:
    v125 = a1;
    v36 = v374;
    goto LABEL_166;
  }

  v80 = v12 - v79;
  v81 = v16 - v79;
  v82 = v80 > a4 || v81 > a4;
  v37 = a2 + 16;
  if (v82)
  {
    goto LABEL_138;
  }

LABEL_112:
  if (v408)
  {
    v83 = v408;
  }

  else
  {
    v83 = &v394;
  }

  if (v409)
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    *v379 = &v83[3 * v409];
    do
    {
      v88 = *v83;
      v89 = v83[1];
      v90 = *v83;
      v91 = v83[2];
      v92 = v88;
      if (v84 != v85)
      {
        if (v84 >= v88)
        {
          v92 = v85;
        }

        else
        {
          v93 = v393;
          v94 = (v393 + 24 * v84);
          v95 = v88 - v84;
          do
          {
            v92 = (v85 + 1);
            a9 = *v94;
            v85 = (v93 + 24 * v85);
            v85[1].n128_u64[0] = v94[1].n128_u64[0];
            *v85 = a9;
            v94 = (v94 + 24);
            LODWORD(v85) = v92;
            --v95;
          }

          while (v95);
        }
      }

      v96 = v89;
      if (v86 != v87)
      {
        if (v86 >= v89)
        {
          v96 = v87;
        }

        else
        {
          v97 = v392;
          v98 = (v392 + 24 * v86);
          v99 = v89 - v86;
          do
          {
            v96 = (v87 + 1);
            a9 = *v98;
            v87 = (v97 + 24 * v87);
            v87[1].n128_u64[0] = v98[1].n128_u64[0];
            *v87 = a9;
            v98 = (v98 + 24);
            LODWORD(v87) = v96;
            --v99;
          }

          while (v99);
        }
      }

      v100 = v91;
      v101 = v89;
      if (v91)
      {
        do
        {
          RB::DisplayList::EditAdaptor::mix_elements(a1, v377, a5, v393 + 24 * v90++, v392 + 24 * v101++, a11, a12);
          --v100;
        }

        while (v100);
      }

      v84 = v91 + v88;
      v86 = v91 + v89;
      v83 += 3;
      v85 = v92;
      LODWORD(v16) = v96;
      v87 = v96;
      a2 = v377;
      v12 = v381;
    }

    while (v83 != *v379);
    v102 = HIDWORD(v390);
    v78 = HIDWORD(v390);
    v36 = v374;
    if (v84 != v92)
    {
      if (v84 >= HIDWORD(v390))
      {
        v78 = v92;
      }

      else
      {
        v103 = v393;
        v104 = (v393 + 24 * v84);
        v105 = HIDWORD(v390) - v84;
        do
        {
          v78 = v92 + 1;
          a9 = *v104;
          v106 = (v103 + 24 * v92);
          v106[1].n128_u64[0] = v104[1].n128_u64[0];
          *v106 = a9;
          v104 = (v104 + 24);
          LODWORD(v92) = v92 + 1;
          --v105;
        }

        while (v105);
      }
    }

    v107 = v390;
    v37 = __dst;
    if (v86 == v16)
    {
      LODWORD(v16) = v390;
    }

    else if (v86 < v390)
    {
      v121 = v392;
      v122 = (v392 + 24 * v86);
      v123 = v390 - v86;
      do
      {
        a9 = *v122;
        v124 = (v121 + 24 * v16);
        LODWORD(v16) = v16 + 1;
        v124[1].n128_u64[0] = v122[1].n128_u64[0];
        *v124 = a9;
        v122 = (v122 + 24);
        --v123;
      }

      while (v123);
    }
  }

  else
  {
    v107 = v390;
    v102 = HIDWORD(v390);
    LODWORD(v16) = v390;
    v36 = v374;
  }

  if (v102 < v12)
  {
    do
    {
      RB::DisplayList::EditAdaptor::mix_elements(a1, a2, a5, v393 + 24 * v102, v392 + 24 * v107, a11, a12);
      v102 = HIDWORD(v390) + 1;
      v107 = v390 + 1;
      LODWORD(v390) = v390 + 1;
      HIDWORD(v390) = v102;
    }

    while (v102 < v12);
    goto LABEL_164;
  }

  v125 = a1;
LABEL_166:
  if (v408)
  {
    free(v408);
LABEL_183:
    v125 = a1;
  }

  v133 = *(a2 + 46);
  if (v133 == v36)
  {
    v125 = a1;
    v361 = (*(a1 + 233) & 4) == 0;
  }

  else
  {
    v361 = 0;
  }

  if (v133 <= v36)
  {
    v360 = 0;
  }

  else
  {
    v134 = 0;
    v135 = *(a2 + 22);
    if (!v135)
    {
      v135 = v37;
    }

    v136 = &v135[40 * v36];
    v137 = v133 - v36;
    do
    {
      v138 = *v136;
      v136 += 40;
      v134 |= 1 << (v138 & 0xF);
      --v137;
    }

    while (v137);
    if ((v134 & 0x44) != 0)
    {
      v139 = 40 * v36;
      v140 = v133 - v36;
      do
      {
        v141 = *(a2 + 22);
        if (!v141)
        {
          v141 = v37;
        }

        *&v141[v139] |= 0x200000000uLL;
        v139 += 40;
        --v140;
      }

      while (v140);
      v360 = 1;
    }

    else
    {
      v360 = 0;
    }

    v125 = a1;
  }

  v362 = v16;
  if ((*(v125 + 233) & 0x10) != 0)
  {
    v142 = 0.0;
    v143 = 0.0;
    if (v78)
    {
      v144 = *(*v393 + 32);
      if (v144)
      {
        v145 = RB::DisplayList::Metadata::numeric_value(v144);
        LODWORD(v36) = v374;
        v37 = __dst;
        if (v145)
        {
          v143 = *v145;
        }
      }
    }

    if (v16)
    {
      v146 = *(*v392 + 32);
      if (v146)
      {
        v147 = RB::DisplayList::Metadata::numeric_value(v146);
        LODWORD(v36) = v374;
        v37 = __dst;
        if (v147)
        {
          v142 = *v147;
        }
      }
    }

    v380 = v142 < v143;
  }

  else
  {
    v380 = 0;
  }

  v406 = 0;
  a9.n128_u64[0] = 0x800000000;
  v407 = 0x800000000;
  v411 = 0;
  v412 = 0x800000000;
  v385 = 0;
  v386 = 0;
  if (v361)
  {
    v148 = 4;
  }

  else
  {
    v148 = 8;
  }

  v382 = v148;
  v384 = v16 != 0;
  v365 = v133;
  if (!v78)
  {
    v204 = 0x400000000;
    v155 = -INFINITY;
    goto LABEL_315;
  }

  v149 = 0;
  v150 = v36;
  v151 = 0;
  v152 = 0x100000000;
  if (!v361)
  {
    v152 = 0;
  }

  v153 = 0x200000000;
  if (!v360)
  {
    v153 = 0;
  }

  v154 = 0x800000000;
  if (!v380)
  {
    v154 = 0;
  }

  v363 = v368 | ((v16 == 0) << 34) | v152 | v153 | v154;
  v372 = v133 - v150;
  v155 = -INFINITY;
  v370 = v78;
  do
  {
    v156 = (v393 + 24 * v149);
    v157 = RB::DisplayList::AtomizedItems::transition(v156, a2);
    if (RB::Transition::empty_transition(v157, 2))
    {
      goto LABEL_310;
    }

    animation = RB::DisplayList::find_animation(*v156, 0, v158);
    v160 = animation;
    if (animation)
    {
      if (!*(animation + 32))
      {
        goto LABEL_310;
      }
    }

    v161 = *(a2 + 46);
    if (*(a2 + 47) < (v161 + 1))
    {
      LODWORD(animation) = RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(__dst, v161 + 1);
      v161 = *(a2 + 46);
    }

    v366 = v160;
    v162 = *(a2 + 22);
    if (!v162)
    {
      v162 = __dst;
    }

    v163 = &v162[40 * v161];
    v164 = *(v156 + 1);
    *v163 = 0x1000000000;
    *(v163 + 1) = v164;
    a9 = xmmword_195E48500;
    *(v163 + 1) = xmmword_195E48500;
    *(v163 + 4) = 0;
    v165 = *(a2 + 46);
    *(a2 + 46) = v165 + 1;
    v166 = *(a2 + 22);
    if (!v166)
    {
      v166 = __dst;
    }

    v167 = &v166[40 * v165];
    *v167 = v363 | *v167 & 0xFFFFFFF00000000FLL;
    *(v167 + 6) = a11;
    *(v167 + 7) = a12;
    *(a2 + 48) |= 1u;
    v384 = v384 && (*(*v156 + 46) & 0x3F) == 2;
    if (!*(v157 + 12))
    {
      LOBYTE(v168) = 0;
      goto LABEL_300;
    }

    v168 = 0;
    v169 = 0;
    v170 = 0;
    v172 = v133 == v374 || *(v157 + 17) - 255 < 0xFFFFFF02;
    do
    {
      v173 = *(v157 + 5);
      if (!v173)
      {
        v173 = v157 + 24;
      }

      v174 = &v173[4 * v169];
      if ((v167[4] & 4) != 0)
      {
        v175 = 16;
      }

      else
      {
        v175 = 32;
      }

      int_arg = v174->int_arg;
      if (((v382 | v175 | 2) & (v174->int_arg >> 10)) == 2)
      {
        v177 = RB::Transition::Effect::anchor_direction(v174, 2u, v380);
        if ((v177 & 0x100000000) != 0)
        {
          v182 = *(v377 + 22);
          if (!v182)
          {
            v182 = __dst;
          }

          RB::DisplayList::EditAdaptor::find_motion_projection(a1, v377, v156, v167, v177, &v182[40 * v374], v372, &v385);
          goto LABEL_285;
        }

        v178 = RB::Transition::Effect::sequence_direction(v174, 2u, v380);
        v181 = v178;
        if (((v178 & 0x100000000) == 0) | v168 & 1)
        {
          v168 |= (v178 & 0x100000000uLL) >> 32;
LABEL_285:
          animation = RB::Transition::Effect::custom_duration(v174, 2, v174 + 1, v179, v180);
          a9.n128_u32[0] = animation;
          if (v155 >= *&animation)
          {
            a9.n128_f32[0] = v155;
          }

          if ((animation & 0x100000000) != 0)
          {
            v155 = a9.n128_f32[0];
          }

          v170 |= (animation & 0x100000000) == 0;
          int_arg = v174->int_arg;
          v201 = (v174->int_arg & 0x3F) == 1 && v172;
          if (!v384)
          {
            v201 = 0;
          }

          v384 = v201;
          goto LABEL_292;
        }

        v183 = *(v377 + 46) - 1;
        v184 = v174->int_arg;
        v185 = 0.0;
        if ((v174->int_arg & 0x40) != 0)
        {
          v186 = 0.0;
        }

        else
        {
          v186 = BYTE2(v184) * 0.0039216;
        }

        v187 = HIBYTE(v184);
        *&v179 = v187 * 0.0039216;
        if ((v174->int_arg & 0x40) != 0)
        {
          v188 = 1.0;
        }

        else
        {
          v188 = v187 * 0.0039216;
        }

        if (v178 >= 4)
        {
          if ((v178 - 4) < 2)
          {
            v191 = *(*v156 + 32);
            v192 = *(v377 + 46) - 1;
            if (v191)
            {
              v193 = RB::DisplayList::Metadata::text_identity(v191);
              v192 = v183;
              if (v193)
              {
                v194 = *v193;
                v192 = v183;
                if (*v193 >= 4u)
                {
                  v195 = v194 >> 3;
                  v196 = v156[3];
                  v197 = (v194 >> 2) - 1;
                  if (v197 >= v196)
                  {
                    v197 = v156[3];
                  }

                  if (v196 != -1)
                  {
                    v195 = v197;
                  }

                  v192 = *(v193 + v195 + 1);
                }
              }
            }

            *&v179 = v192;
            v180.f32[0] = -v192;
            if (v181 == 5)
            {
              v185 = -v192;
            }

            else
            {
              v185 = v192;
            }
          }
        }

        else
        {
          v189 = (*(**v156 + 56))(*v156, v156[3]);
          if ((v190 & 1) == 0)
          {
            v168 = 0;
            goto LABEL_285;
          }

          if (v181)
          {
            HIDWORD(v179) = HIDWORD(v189);
            if (v181 == 3)
            {
              LODWORD(v179) = HIDWORD(v189);
              v185 = -*(&v189 + 1);
            }

            else
            {
              LODWORD(v179) = HIDWORD(v189);
              v180.i32[0] = v189 ^ 0x80000000;
              if (v181 == 1)
              {
                LODWORD(v185) = v189 ^ 0x80000000;
              }

              else
              {
                v185 = *(&v189 + 1);
              }
            }
          }

          else
          {
            v185 = *&v189;
          }
        }

        v198 = v407;
        if (HIDWORD(v407) < (v407 + 1))
        {
          RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement,8ul,unsigned int>::reserve_slow(&v394, v407 + 1);
          v198 = v407;
        }

        v199 = v406;
        if (!v406)
        {
          v199 = &v394;
        }

        v200 = &v199[4 * v198];
        *v200 = v183;
        *(v200 + 1) = v185;
        *(v200 + 2) = v186;
        *(v200 + 3) = v188;
        LODWORD(v407) = v407 + 1;
        v168 = 1;
        goto LABEL_285;
      }

LABEL_292:
      v169 += RB::Transition::_effect_args[int_arg & 0x3F] + 1;
    }

    while (v169 < *(v157 + 12));
    if (v170)
    {
      a2 = v377;
      RB::DisplayList::EditAdaptor::set_animation(animation, v377, v167, v156, v366, v157);
      LODWORD(v16) = v362;
      v133 = v365;
      goto LABEL_304;
    }

    a2 = v377;
    LODWORD(v16) = v362;
    v133 = v365;
LABEL_300:
    if (v155 <= 0.0)
    {
      v202 = -1;
    }

    else
    {
      v202 = -2;
    }

    *(v167 + 8) = v202;
LABEL_304:
    v203 = (*(a2 + 251) & 1) != 0 || *(v167 + 8) != *(*a2 + 20);
    *(a2 + 251) = v203;
    if ((v168 & 1) == 0)
    {
      RB::DisplayList::Interpolator::Layer::merge_tail(a2);
    }

    v151 = 1;
LABEL_310:
    ++v149;
  }

  while (v149 != v370);
  v204 = 0x400000000;
  if (v151)
  {
    v204 = 0;
  }

  LODWORD(v36) = v374;
  v37 = __dst;
LABEL_315:
  v364 = *(a2 + 46);
  if (!v16)
  {
    goto LABEL_410;
  }

  v205 = 0;
  v206 = 0x100000000;
  if (!v361)
  {
    v206 = 0;
  }

  v207 = 0x200000000;
  if (!v360)
  {
    v207 = 0;
  }

  v208 = 0x800000000;
  if (!v380)
  {
    v208 = 0;
  }

  v369 = v206 | v368 | v207 | v208 | v204;
  v373 = v133 - v36;
  v367 = v16;
  while (2)
  {
    v209 = (v392 + 24 * v205);
    v210 = RB::DisplayList::AtomizedItems::transition(v209, a2);
    v211 = *(v210 + 17);
    if (RB::Transition::empty_transition(v210, 1))
    {
      v213 = 8;
    }

    else
    {
      v213 = 1;
    }

    v214 = *(a2 + 46);
    if (*(a2 + 47) < (v214 + 1))
    {
      RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(v37, v214 + 1);
      v214 = *(a2 + 46);
    }

    v215 = 0;
    v216 = *(a2 + 22);
    if (!v216)
    {
      v216 = v37;
    }

    v217 = &v216[40 * v214];
    a9.n128_u64[0] = *(v209 + 1);
    *v217 = v213 | 0x1000000000;
    v217[1] = 0;
    v217[2] = a9.n128_u64[0];
    v217[3] = 0x100000000;
    v217[4] = 0;
    v218 = *(a2 + 46);
    *(a2 + 46) = v218 + 1;
    v219 = *(a2 + 22);
    if (!v219)
    {
      v219 = v37;
    }

    v220 = &v219[40 * v218];
    *v220 = v369 | *v220 & 0xFFFFFFF00000000FLL;
    *(v220 + 6) = a11;
    *(v220 + 7) = a12;
    *(a2 + 48) |= 1 << v213;
    if (v384)
    {
      v215 = (*(*v209 + 46) & 0x3F) == 2;
    }

    if (!*(v210 + 12))
    {
      LOBYTE(v223) = 0;
      v384 = v215;
      goto LABEL_400;
    }

    v371 = v205;
    v221 = 0;
    v222 = 0;
    v223 = 0;
    v225 = v133 == v374 || (v211 - 255) < 0xFFFFFF02;
    v384 = v215;
    while (2)
    {
      v226 = *(v210 + 5);
      if (!v226)
      {
        v226 = v210 + 24;
      }

      v227 = &v226[4 * v221];
      if ((v220[4] & 4) != 0)
      {
        v228 = 16;
      }

      else
      {
        v228 = 32;
      }

      v229 = v227->int_arg;
      if (((v382 | v228 | 1) & (v227->int_arg >> 10)) == 1)
      {
        v230 = RB::Transition::Effect::anchor_direction(v227, 1u, v380);
        if ((v230 & 0x100000000) != 0)
        {
          v235 = *(v377 + 22);
          if (!v235)
          {
            v235 = __dst;
          }

          RB::DisplayList::EditAdaptor::find_motion_projection(a1, v377, v209, v220, v230, &v235[40 * v374], v373, &v385);
        }

        else
        {
          v231 = RB::Transition::Effect::sequence_direction(v227, 1u, v380);
          v234 = v231;
          if (((v231 & 0x100000000) == 0) | v223 & 1)
          {
            v223 |= (v231 & 0x100000000uLL) >> 32;
            goto LABEL_385;
          }

          v236 = *(v377 + 46) - 1;
          v237 = v227->int_arg;
          v238 = 0.0;
          if ((v227->int_arg & 0x40) != 0)
          {
            v239 = 0.0;
          }

          else
          {
            v239 = BYTE2(v237) * 0.0039216;
          }

          v240 = HIBYTE(v237);
          *&v232 = v240 * 0.0039216;
          if ((v227->int_arg & 0x40) != 0)
          {
            v241 = 1.0;
          }

          else
          {
            v241 = v240 * 0.0039216;
          }

          if (v231 >= 4)
          {
            if ((v231 - 4) < 2)
            {
              v244 = *(*v209 + 32);
              v245 = *(v377 + 46) - 1;
              if (v244)
              {
                v246 = RB::DisplayList::Metadata::text_identity(v244);
                v245 = v236;
                if (v246)
                {
                  v247 = *v246;
                  v245 = v236;
                  if (*v246 >= 4u)
                  {
                    v248 = v247 >> 3;
                    v249 = v209[3];
                    v250 = (v247 >> 2) - 1;
                    if (v250 >= v249)
                    {
                      v250 = v209[3];
                    }

                    if (v249 != -1)
                    {
                      v248 = v250;
                    }

                    v245 = *(v246 + v248 + 1);
                  }
                }
              }

              *&v232 = v245;
              v233.f32[0] = -v245;
              if (v234 == 5)
              {
                v238 = -v245;
              }

              else
              {
                v238 = v245;
              }
            }

LABEL_379:
            v251 = v412;
            if (HIDWORD(v412) < (v412 + 1))
            {
              RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement,8ul,unsigned int>::reserve_slow(v410, v412 + 1);
              v251 = v412;
            }

            v252 = v411;
            if (!v411)
            {
              v252 = v410;
            }

            v253 = &v252[4 * v251];
            *v253 = v236;
            *(v253 + 1) = v238;
            *(v253 + 2) = v239;
            *(v253 + 3) = v241;
            LODWORD(v412) = v412 + 1;
            v223 = 1;
          }

          else
          {
            v242 = (*(**v209 + 56))(*v209, v209[3]);
            if (v243)
            {
              if (v234)
              {
                HIDWORD(v232) = HIDWORD(v242);
                if (v234 == 3)
                {
                  LODWORD(v232) = HIDWORD(v242);
                  v238 = -*(&v242 + 1);
                }

                else
                {
                  LODWORD(v232) = HIDWORD(v242);
                  v233.i32[0] = v242 ^ 0x80000000;
                  if (v234 == 1)
                  {
                    LODWORD(v238) = v242 ^ 0x80000000;
                  }

                  else
                  {
                    v238 = *(&v242 + 1);
                  }
                }
              }

              else
              {
                v238 = *&v242;
              }

              goto LABEL_379;
            }

            v223 = 0;
          }
        }

LABEL_385:
        v254 = RB::Transition::Effect::custom_duration(v227, 1, v227 + 1, v232, v233);
        a9.n128_u32[0] = v254;
        if (v155 >= *&v254)
        {
          a9.n128_f32[0] = v155;
        }

        if ((v254 & 0x100000000) != 0)
        {
          v155 = a9.n128_f32[0];
        }

        v222 |= (v254 & 0x100000000) == 0;
        v229 = v227->int_arg;
        v255 = (v227->int_arg & 0x3F) == 1 && v225;
        if (!v384)
        {
          v255 = 0;
        }

        v384 = v255;
      }

      v221 += RB::Transition::_effect_args[v229 & 0x3F] + 1;
      if (v221 < *(v210 + 12))
      {
        continue;
      }

      break;
    }

    v205 = v371;
    if (v222)
    {
      v256 = RB::DisplayList::find_animation(0, *v209, v212);
      a2 = v377;
      v133 = v365;
      RB::DisplayList::EditAdaptor::set_animation(v256, v377, v220, v209, v256, v210);
      goto LABEL_404;
    }

    a2 = v377;
    v133 = v365;
LABEL_400:
    if (v155 <= 0.0)
    {
      v257 = -1;
    }

    else
    {
      v257 = -2;
    }

    *(v220 + 8) = v257;
LABEL_404:
    v258 = (*(a2 + 251) & 1) != 0 || *(v220 + 8) != *(*a2 + 20);
    v37 = __dst;
    *(a2 + 251) = v258;
    if ((v223 & 1) == 0)
    {
      RB::DisplayList::Interpolator::Layer::merge_tail(a2);
    }

    if (++v205 != v367)
    {
      continue;
    }

    break;
  }

LABEL_410:
  if (v155 > 0.0)
  {
    a9.n128_u32[0] = *(*a2 + 80);
    if (a9.n128_f32[0] <= v155)
    {
      a9.n128_f32[0] = v155;
    }

    *(*a2 + 80) = a9.n128_u32[0];
  }

  if (v384 && v364 > v133)
  {
    v259 = *(a2 + 46);
    if (v259 > v364)
    {
      if (v133 + 1 >= v364)
      {
        v262 = 1;
      }

      else
      {
        if (*(a2 + 22))
        {
          v260 = *(a2 + 22);
        }

        else
        {
          v260 = v37;
        }

        v261 = &v260[40 * v133 + 48];
        LOBYTE(v262) = 1;
        v263 = v133;
        do
        {
          v262 = v262 && *v261 == *&v260[40 * v263++ + 8] + 1;
          v261 += 40;
        }

        while (v364 - 1 != v263);
      }

      if (v364 + 1 < v259)
      {
        v264 = *(a2 + 22);
        if (!v264)
        {
          v264 = v37;
        }

        v265 = &v264[40 * v364 + 56];
        v266 = v364;
        do
        {
          v262 = v262 && *v265 == *&v264[40 * v266++ + 16] + 1;
          v265 += 40;
        }

        while (v259 - 1 != v266);
      }

      if (v262)
      {
        v267 = *(a2 + 22);
        if (v267)
        {
          v268 = *(a2 + 22);
        }

        else
        {
          v268 = v37;
        }

        v269 = &v268[40 * v133];
        v270 = 40 * v133;
        v271 = *(v269 + 2);
        v272 = *&v268[40 * v364 - 32];
        v273 = *&v268[40 * v364 + 16];
        v274 = *&v268[40 * v259 - 24];
        v275 = -858993459 * ((&v268[40 * v259] - (v269 + 40)) >> 3);
        v276 = v259 - v275;
        *(a2 + 46) = v276;
        v277 = v276 - 0xCCCCCCCCCCCCCCCDLL * ((v270 + 40) >> 3);
        if (v277)
        {
          memmove(v269 + 40, &v269[40 * v275 + 40], 40 * v277);
          v267 = *(a2 + 22);
          LODWORD(v276) = *(a2 + 46);
        }

        if (!v267)
        {
          v267 = v37;
        }

        v278 = &v267[40 * (v276 - 1)];
        *v278 = *v278 & 0xFFFFFFFFFFFFFFF0 | 9;
        *(a2 + 48) |= 0x200u;
        *v278 &= 0xFFFFFFFFFuLL;
        *(v278 + 2) = v271;
        *(v278 + 3) = v272 - v271 + 1;
        *(v278 + 4) = v273;
        *(v278 + 5) = v274 - v273 + 1;
      }
    }
  }

  v279 = a2;
  if (v407 >= 2)
  {
    v280 = (v406 ? v406 : &v394);
    a9 = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,false>(v280, &v280[v407], 126 - 2 * __clz(v407), 1, a9);
    v281 = v407;
    if (v407)
    {
      v282 = 0;
      v283 = 0;
      do
      {
        if (v406)
        {
          v284 = v406;
        }

        else
        {
          v284 = &v394;
        }

        v285 = *(v279 + 22);
        if (!v285)
        {
          v285 = __dst;
        }

        v286 = &v285[40 * v284[v282]];
        a9.n128_f32[0] = RB::DisplayList::Interpolator::Contents::animation_max_duration(*v279, *(v286 + 8));
        v287 = *&v284[v282 + 2];
        v288 = *&v284[v282 + 3];
        if (v288 < 1.0)
        {
          v289 = v284[v282 + 3];
          v290 = vrecpe_f32(LODWORD(v288));
          v291 = vmul_f32(vrecps_f32(v289, v290), v290);
          v291.f32[0] = vmul_f32(v291, vrecps_f32(v289, v291)).f32[0];
          v292 = vrecpe_f32(COERCE_UNSIGNED_INT((v407 - 1)));
          v293 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT((v407 - 1)), v292), v292);
          v294 = -(a9.n128_f32[0] - (v291.f32[0] * a9.n128_f32[0])) * vmul_f32(v293, vrecps_f32(COERCE_UNSIGNED_INT((v407 - 1)), v293)).f32[0];
          if (v294 < v287)
          {
            v287 = v294;
          }
        }

        a9.n128_f32[0] = *(v286 + 9) + ((a9.n128_f32[0] * v283) * v287);
        *(v286 + 9) = a9.n128_u32[0];
        v279 = v377;
        *(v377 + 251) |= a9.n128_f32[0] != 0.0;
        ++v283;
        v282 += 4;
      }

      while (v281 != v283);
    }
  }

  if (v412 >= 2)
  {
    v295 = (v411 ? v411 : v410);
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,false>(v295, &v295[v412], 126 - 2 * __clz(v412), 1, a9);
    v296 = v412;
    if (v412)
    {
      v297 = 0;
      v298 = 0;
      do
      {
        if (v411)
        {
          v299 = v411;
        }

        else
        {
          v299 = v410;
        }

        v300 = *(v279 + 22);
        if (!v300)
        {
          v300 = __dst;
        }

        v301 = &v300[40 * v299[v297]];
        v302 = RB::DisplayList::Interpolator::Contents::animation_max_duration(*v279, *(v301 + 8));
        v303 = *&v299[v297 + 2];
        v304 = *&v299[v297 + 3];
        if (v304 < 1.0)
        {
          v305 = v299[v297 + 3];
          v306 = vrecpe_f32(LODWORD(v304));
          v307 = vmul_f32(vrecps_f32(v305, v306), v306);
          v307.f32[0] = vmul_f32(v307, vrecps_f32(v305, v307)).f32[0];
          v308 = vrecpe_f32(COERCE_UNSIGNED_INT((v412 - 1)));
          v309 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT((v412 - 1)), v308), v308);
          v310 = -(v302 - (v307.f32[0] * v302)) * vmul_f32(v309, vrecps_f32(COERCE_UNSIGNED_INT((v412 - 1)), v309)).f32[0];
          if (v310 < v303)
          {
            v303 = v310;
          }
        }

        v311 = *(v301 + 9) + ((v302 * v298) * v303);
        *(v301 + 9) = v311;
        v279 = v377;
        *(v377 + 251) |= v311 != 0.0;
        ++v298;
        v297 += 4;
      }

      while (v296 != v298);
    }
  }

  if (v385)
  {
    free(v385);
  }

  if (v411)
  {
    free(v411);
  }

  if (v406)
  {
    free(v406);
  }

  return !v361;
}

void sub_195D4886C(_Unwind_Exception *a1)
{
  if (STACK[0xAF8])
  {
    free(STACK[0xAF8]);
  }

  if (STACK[0x6E8])
  {
    free(STACK[0x6E8]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::EditAdaptor::make_matrix_value(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  v8 = *a4;
  if (*a3)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    result = 1;
  }

  else
  {
    v11 = *(a3 + 1);
    v12 = *(a4 + 1);
    v14 = 0x1000000000;
    *(&v11 + 1) = v12;
    v15 = v11;
    v16 = 0x100000000;
    v17 = 0;
    (*(*v7 + 200))(v7, *a2, &v14);
    if ((((v14 & 0xFu) < 0xA) & (0x303u >> (v14 & 0xF))) != 0)
    {
      result = 1;
    }

    else
    {
      result = v14 & 0xF;
    }
  }

  v13 = *(a3 + 4) + *(a4 + 4);
  *(*(a1 + 192) + 4 * (v13 >> 3)) = *(*(a1 + 192) + 4 * (v13 >> 3)) & ~(15 << (4 * (v13 & 7))) | (result << (4 * (v13 & 7)));
  return result;
}

BOOL RB::lcs_diff<RB::DisplayList::EditAdaptor::Element,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_0,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_1>(uint64_t matrix_value, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v93 = a5;
  v9 = a3;
  v10 = a2;
  v11 = matrix_value;
  v98 = *MEMORY[0x1E69E9840];
  if (matrix_value >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = matrix_value;
  }

  if (v12 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v91 = a2;
    v14 = a2;
    v15 = a4;
    v16 = a4;
    while (1)
    {
      matrix_value = *a6;
      v17 = *(v14 + 16) + *(v16 + 16);
      v18 = (*(*(*a6 + 192) + 4 * (v17 >> 3)) >> (4 * (v17 & 7))) & 0xF;
      if (!v18)
      {
        matrix_value = RB::DisplayList::EditAdaptor::make_matrix_value(matrix_value, a6[1], v14, v16);
        v18 = matrix_value;
      }

      if (v18 == 1)
      {
        break;
      }

      ++v13;
      v16 += 24;
      v14 += 24;
      if (v12 == v13)
      {
        v13 = v12;
        break;
      }
    }

    a4 = v15;
    v10 = v91;
  }

  v89 = a4;
  if (v13 < v11 && v13 < v9)
  {
    v19 = 0;
    v20 = v10 + 24 * v11 - 24;
    v21 = a4 + 24 * v9 - 24;
    do
    {
      matrix_value = *a6;
      v22 = *(v20 + 16) + *(v21 + 16);
      v23 = (*(*(*a6 + 192) + 4 * (v22 >> 3)) >> (4 * (v22 & 7))) & 0xF;
      if (!v23)
      {
        matrix_value = RB::DisplayList::EditAdaptor::make_matrix_value(matrix_value, a6[1], v20, v21);
        v23 = matrix_value;
      }

      if (v23 == 1)
      {
        break;
      }

      if (v13 >= --v19 + v11)
      {
        break;
      }

      v20 -= 24;
      v21 -= 24;
    }

    while (v13 < v19 + v9);
    v11 += v19;
    v9 += v19;
  }

  if (v11 + v9 >= v93)
  {
    v24 = v93;
  }

  else
  {
    v24 = v11 + v9;
  }

  if (v13 == v9)
  {
    v25 = v11 - 1;
  }

  else
  {
    v25 = v11 + 1;
  }

  v92 = v25;
  if (v13 == v11)
  {
    v26 = v11 + 1;
  }

  else
  {
    v26 = v11 - 1;
  }

  if (v13 == v11 && v13 == v9)
  {
    LOBYTE(v27) = 1;
    return v27;
  }

  if (v24 < 1 || (v11 <= v9 ? (v28 = v9) : (v28 = v11), v28 >= 0x8000))
  {
    LOBYTE(v27) = 0;
    return v27;
  }

  LOBYTE(v27) = 0;
  if (v28 >= 0)
  {
    v30 = 2 * v28 + 1;
  }

  else
  {
    v30 = -((2 * v28) | 1);
  }

  if (v28 < 0 || v30 >> 61)
  {
    return v27;
  }

  v77 = v24;
  v91 = v10;
  v31 = 8 * v30;
  v75 = 8 * v30;
  if (8 * v30 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](matrix_value, a2);
    v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v32, v31);
    MEMORY[0x1EEE9AC00](v33, v34);
    v90 = v32;
    bzero(v32, v31);
  }

  else
  {
    v32 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
    v90 = malloc_type_malloc(v31, 0x2004093837F09uLL);
    if (!v32)
    {
      LOBYTE(v27) = 0;
      goto LABEL_111;
    }

    if (!v90)
    {
      LOBYTE(v27) = 0;
      v90 = 0;
LABEL_111:
      free(v90);
      free(v32);
      return v27;
    }
  }

  v82 = v32;
  RB::Heap::Heap(v94, v97, 1024, 0);
  *&v32[8 * v11] = v13;
  *(v90 + v11) = 0;
  v85 = (a7 + 4);
  v86 = (a7 + 2);
  v80 = (a7 + 20);
  v81 = (a7 + 22);
  v76 = -v11;
  v27 = 1;
  v78 = 1;
  v35 = v92;
  while (v26 > v35)
  {
    v36 = v26;
LABEL_54:
    v26 = v36 - 1;
    ++v35;
    v37 = v78;
    v27 = v78++ < v77;
    if (v37 == v77)
    {
      goto LABEL_108;
    }
  }

  v84 = v78 + v11;
  v79 = v78 + v11 - 1;
  v87 = v27;
  v88 = v11 - v78;
  v83 = v11 - v78 + 1;
  v38 = v76 + v26;
  v36 = v26;
  while (1)
  {
    v39 = (v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v39 + 32 > v96)
    {
      v39 = RB::Heap::alloc_slow(v94, 0x20uLL, 7);
    }

    else
    {
      v95 = v39 + 32;
    }

    v93 = v36;
    if (v26 == v88)
    {
      v40 = v83;
      v41 = *&v32[8 * v83];
LABEL_61:
      v42 = v41 + 1;
      v43 = 1;
      goto LABEL_66;
    }

    if (v26 == v84)
    {
      v43 = 0;
      v40 = v79;
      v42 = *&v32[8 * v79];
    }

    else
    {
      v40 = v26 + 1;
      v41 = *&v32[8 * v26 + 8];
      v42 = *&v32[8 * v26 - 8];
      if (v41 >= v42)
      {
        goto LABEL_61;
      }

      v43 = 0;
      v40 = v26 - 1;
    }

LABEL_66:
    v44 = v90;
    *v39 = *(v90 + v40);
    *(v39 + 8) = v43;
    v45 = v26 - v11 + v42;
    *(v39 + 16) = v42 - 1;
    *(v39 + 24) = v45 - 1;
    v44[v26] = v39;
    if (v42 < v11 && v45 < v9)
    {
      v92 = v35;
      v47 = v89 + 24 * (v42 + v38);
      v48 = v91 + 24 * v42;
      do
      {
        v49 = *(v48 + 16) + *(v47 + 16);
        v50 = (*(*(*a6 + 192) + 4 * (v49 >> 3)) >> (4 * (v49 & 7))) & 0xF;
        if (!v50)
        {
          v50 = RB::DisplayList::EditAdaptor::make_matrix_value(*a6, a6[1], v48, v47);
        }

        if (v50 == 1)
        {
          break;
        }

        if (++v42 >= v11)
        {
          break;
        }

        v47 += 24;
        v48 += 24;
      }

      while (v42 + v38 < v9);
      v45 = v38 + v42;
      v32 = v82;
      v35 = v92;
    }

    *&v32[8 * v26] = v42;
    if (v42 == v11 && v45 == v9)
    {
      break;
    }

    v51 = v26 + 2;
    v52 = v42 == v11;
    v36 = v93;
    if (v52)
    {
      v36 = v26 + 2;
    }

    if (v45 == v9)
    {
      v35 = v26 - 2;
    }

    v38 += 2;
    v26 += 2;
    if (v51 > v35)
    {
      goto LABEL_54;
    }
  }

  v53 = *(v90 + v26);
  if (v53)
  {
    v54 = 0;
    do
    {
      v55 = v53;
      v53 = *v53;
      *v55 = v54;
      v54 = v55;
    }

    while (v53);
    while (1)
    {
      v56 = *(v55 + 2);
      if (v56 == 1)
      {
        v57 = 2;
      }

      else
      {
        v57 = 3;
      }

      v58 = v55[v57];
      if (v56 == 1)
      {
        v59 = 2;
      }

      else
      {
        v59 = 4;
      }

      if (**&a7[v59] < v58)
      {
        v60 = *(a7 + 3);
        v61 = *v86;
        v62 = **v85;
        do
        {
          RB::DisplayList::EditAdaptor::mix_elements(v60, *(a7 + 4), *a7, **(a7 + 5) + 24 * *v61, **(a7 + 6) + 24 * v62, **(a7 + 7), **(a7 + 8));
          **(a7 + 9) = 1;
          v61 = *(a7 + 1);
          v63 = *(a7 + 2);
          ++*v61;
          v62 = *v63 + 1;
          *v63 = v62;
        }

        while (**&a7[v59] < v58);
      }

      if (v56 == 1)
      {
        v64 = v86;
        LOBYTE(v27) = v87;
        v65 = *v86;
        v66 = **v86;
        v67 = v80;
        v68 = *v80;
        v69 = **v80;
        if (v66 != v69)
        {
          v70 = 10;
LABEL_104:
          v71 = **&a7[v70];
          v72 = (v71 + 24 * v66);
          v73 = v71 + 24 * v69;
          v74 = *v72;
          *(v73 + 16) = *(v72 + 2);
          *v73 = v74;
          v65 = *v64;
          v66 = **v64;
          v68 = *v67;
        }
      }

      else
      {
        v64 = v85;
        v65 = *v85;
        v66 = **v85;
        v67 = v81;
        v68 = *v81;
        v69 = **v81;
        LOBYTE(v27) = v87;
        if (v66 != v69)
        {
          v70 = 12;
          goto LABEL_104;
        }
      }

      *v65 = v66 + 1;
      ++*v68;
      v55 = *v55;
      if (!v55)
      {
        v32 = v82;
        goto LABEL_108;
      }
    }
  }

  LOBYTE(v27) = v87;
LABEL_108:
  RB::Heap::~Heap(v94);
  if (v75 > 0x1000)
  {
    goto LABEL_111;
  }

  return v27;
}

void sub_195D4912C(_Unwind_Exception *a1)
{
  RB::Heap::~Heap((v1 + 152));
  if (*v1 > 0x1000uLL)
  {
    free(*(v1 + 120));
    free(*(v1 + 56));
  }

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::LayerItem::prepare_mix(RB::DisplayList::LayerItem *this, RB::DisplayList::Interpolator::Contents *a2, RB::DisplayList::Interpolator::Op *a3, const RB::DisplayList::Item *a4)
{
  result = (*(*a4 + 16))(a4);
  if (!result && (*(this + 56) & 3) == 0 && (*(a4 + 56) & 3) == 0)
  {
    result = RB::DisplayList::Item::may_mix(this, a2, a4, v9);
    if (result)
    {
      v11 = result;
      v12 = *(a2 + 4);
      v13 = *(a2 + 1);
      v14 = *(a2 + 3);
      animation = RB::DisplayList::find_animation(this, a4, v10);
      if (animation)
      {
        v16 = animation;
        *(a2 + 4) = RB::DisplayList::Interpolator::Contents::intern_animation(a2, animation);
        *(a2 + 1) = v16;
      }

      v17 = *(this + 6);
      v18 = *(v17 + 40);
      if (v18)
      {
        *(a2 + 3) = v18;
      }

      result = RB::DisplayList::Layer::can_mix(v17, a2, *(a4 + 6), v11);
      if (result)
      {
        result = RB::DisplayList::Interpolator::Op::set_type(a3, result);
      }

      *(a2 + 4) = v12;
      *(a2 + 1) = v13;
      *(a2 + 3) = v14;
    }
  }

  return result;
}

uint64_t RB::DisplayList::Item::may_mix(RB::DisplayList::Item *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Item *a3, const RB::DisplayList::Style *a4)
{
  if (((*(a3 + 23) ^ *(this + 23)) & 0x3F) != 0)
  {
    return 0;
  }

  can_mix = RB::DisplayList::can_mix(a2, *(this + 2), *(a3 + 2), a4);
  if (can_mix)
  {
    v9 = can_mix;
    v10 = RB::DisplayList::can_mix(a2, *(this + 3), *(a3 + 3), this, a3);
    if (v10 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v10;
    }
  }

  else
  {
    result = 0;
  }

  if (*(this + 22) != *(a3 + 22))
  {
    if (result >= 2)
    {
      return 2;
    }

    else
    {
      return result;
    }
  }

  return result;
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::ColorMultiply::test(a1 + 56, 0, *(a1 + 72));
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    *v13 = *(a1 + 56);
    *&v13[6] = *(a1 + 62);
    v12 = ((v11[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 + 4) > v11[5])
    {
      v12 = RB::Heap::alloc_slow(v11 + 2, 0x20uLL, 7);
    }

    else
    {
      v11[4] = (v12 + 4);
    }

    *v12 = &unk_1F0A3DAA0;
    v12[1] = 0;
    v12[2] = *v13;
    *(v12 + 22) = *&v13[6];
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v12, *(a1 + 72), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::can_mix(uint64_t a1, float32x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  v9 = 4;
  if (!a2 || !a3)
  {
LABEL_11:
    if (v8)
    {
LABEL_12:
      v12 = (*(*a4 + 136))(a4, 2);
      v23 = v12;
      v24 = v13;
      LODWORD(v12) = 1036831949;
      RB::Rect::inset(&v23, *&v12, 0.1);
      while (1)
      {
        if (*&v8[1])
        {
          v14 = v8[3];
          v21 = v8[2];
          v22 = v14;
          if (RB::Rect::contains(&v21, *&v23, *&v24))
          {
            break;
          }
        }

        if ((*(*(*&v8[1] & 0xFFFFFFFFFFFFFFFELL) + 32))(*&v8[1] & 0xFFFFFFFFFFFFFFFELL, v23, v24))
        {
          v8 = *v8;
          if (v8)
          {
            continue;
          }
        }

        LODWORD(v8) = v8 != 0;
        goto LABEL_18;
      }

      LODWORD(v8) = 0;
      if (!v7)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_18:
      if (!v7)
      {
LABEL_27:
        v19 = 0;
LABEL_28:
        if (v8 | v19)
        {
          return 0;
        }

        else
        {
          return v9;
        }
      }
    }

    v15 = (*(*a5 + 136))(a5, 2);
    v23 = v15;
    v24 = v16;
    LODWORD(v15) = 1036831949;
    RB::Rect::inset(&v23, *&v15, 0.1);
    while (1)
    {
      if (*&v7[1])
      {
        v17 = v7[3];
        v21 = v7[2];
        v22 = v17;
        if (RB::Rect::contains(&v21, *&v23, *&v24))
        {
          goto LABEL_27;
        }
      }

      v18 = (*(*(*&v7[1] & 0xFFFFFFFFFFFFFFFELL) + 32))(*&v7[1] & 0xFFFFFFFFFFFFFFFELL, v23, v24);
      if (v18)
      {
        v7 = *v7;
        if (v7)
        {
          continue;
        }
      }

      v19 = v18 ^ 1;
      goto LABEL_28;
    }
  }

  while (v8 != v7)
  {
    if (!RB::same_type<RB::DisplayList::Clip>(*&v8[1] & 0xFFFFFFFFFFFFFFFELL, *&v7[1] & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_12;
    }

    v11 = (*(*(*&v8[1] & 0xFFFFFFFFFFFFFFFELL) + 64))(*&v8[1] & 0xFFFFFFFFFFFFFFFELL, a1, *&v7[1] & 0xFFFFFFFFFFFFFFFELL);
    if (!v11)
    {
      return 0;
    }

    if (v11 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v11;
    }

    v8 = *v8;
    v7 = *v7;
    if (!v8 || !v7)
    {
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t RB::DisplayList::can_mix(RB::DisplayList *this, RB::DisplayList::Interpolator::Contents *a2, uint64_t a3, const RB::DisplayList::Style *a4)
{
  for (i = a2; i; i = *(i + 4))
  {
    if ((*(i + 52) & 1) == 0)
    {
      break;
    }
  }

  while (1)
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    if ((*(a3 + 52) & 1) == 0)
    {
      break;
    }

    a3 = *(a3 + 32);
  }

  if (!i)
  {
LABEL_8:
    LODWORD(v7) = 4;
    while (i | a3)
    {
      if (i)
      {
        if (*(i + 3))
        {
          return 0;
        }

        v20 = (*(*i + 80))(i, this, 0, a4);
        if (v20 >= v7)
        {
          LODWORD(v7) = v7;
        }

        else
        {
          LODWORD(v7) = v20;
        }

        do
        {
          i = *(i + 4);
        }

        while (i && (*(i + 52) & 1) != 0);
      }

      if (a3)
      {
        if (*(a3 + 24))
        {
          return 0;
        }

        v21 = (*(*a3 + 80))(a3, this, 0, a4);
        if (v21 >= v7)
        {
          LODWORD(v7) = v7;
        }

        else
        {
          LODWORD(v7) = v21;
        }

        do
        {
          a3 = *(a3 + 32);
        }

        while (a3 && (*(a3 + 52) & 1) != 0);
      }

LABEL_90:
      if (!v7)
      {
        LODWORD(v7) = 0;
        goto LABEL_94;
      }
    }

    a3 = 0;
    i = 0;
LABEL_94:
    if (i | a3)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  v7 = 4;
  while (i != a3)
  {
    v8 = i;
    if (RB::same_identity<RB::DisplayList::Style>(i, a3) && (v8 = i, RB::same_type<RB::DisplayList::Style>(i, a3)))
    {
      v9 = (*(*i + 80))(i, this, a3);
      if (v9 && (v10 = v9, (v11 = RB::DisplayList::can_mix(this, *(i + 3), *(a3 + 24))) != 0))
      {
        v13 = v7;
        if (v10 < v7)
        {
          v13 = v10;
        }

        if (v11 >= v13)
        {
          LODWORD(v7) = v13;
        }

        else
        {
          LODWORD(v7) = v11;
        }

        can_mix = RB::can_mix(*(i + 2), *(a3 + 16), v12);
        if (can_mix >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = can_mix;
        }
      }

      else
      {
        v7 = 0;
      }

      do
      {
        i = *(i + 4);
      }

      while (i && (*(i + 52) & 1) != 0);
      do
      {
        a3 = *(a3 + 32);
        if (!a3)
        {
          goto LABEL_90;
        }
      }

      while ((*(a3 + 52) & 1) != 0);
    }

    else
    {
LABEL_24:
      if (RB::same_identity<RB::DisplayList::Style>(v8, a3) && RB::same_type<RB::DisplayList::Style>(v8, a3))
      {
        do
        {
          if (i == v8)
          {
            break;
          }

          if (*(i + 3))
          {
            return 0;
          }

          v18 = (*(*i + 80))(i, this, 0);
          v7 = v18 >= v7 ? v7 : v18;
          do
          {
            i = *(i + 4);
          }

          while (i && (*(i + 52) & 1) != 0);
        }

        while (v7);
      }

      else
      {
        while (1)
        {
          v8 = *(v8 + 32);
          if (!v8)
          {
            break;
          }

          if ((*(v8 + 52) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v15 = a3;
LABEL_30:
        if (RB::same_identity<RB::DisplayList::Style>(v15, i) && RB::same_type<RB::DisplayList::Style>(v15, i))
        {
          do
          {
            if (a3 == v15)
            {
              break;
            }

            if (*(a3 + 24))
            {
              return 0;
            }

            v19 = (*(*a3 + 80))(a3, this, 0);
            v7 = v19 >= v7 ? v7 : v19;
            do
            {
              a3 = *(a3 + 32);
            }

            while (a3 && (*(a3 + 52) & 1) != 0);
          }

          while (v7);
        }

        else
        {
          while (1)
          {
            v15 = *(v15 + 4);
            if (!v15)
            {
              break;
            }

            if ((*(v15 + 52) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (*(i + 3) || *(a3 + 24))
          {
            return 0;
          }

          v16 = (*(*i + 80))(i, this, 0);
          if (v16 >= v7)
          {
            LODWORD(v7) = v7;
          }

          else
          {
            LODWORD(v7) = v16;
          }

          v17 = (*(*a3 + 80))(a3, this, 0);
          if (v17 >= v7)
          {
            v7 = v7;
          }

          else
          {
            v7 = v17;
          }

          do
          {
            i = *(i + 4);
          }

          while (i && (*(i + 52) & 1) != 0);
          do
          {
            a3 = *(a3 + 32);
            if (!a3)
            {
              goto LABEL_90;
            }
          }

          while ((*(a3 + 52) & 1) != 0);
        }
      }
    }

    if (!v7 || !i || !a3)
    {
      goto LABEL_90;
    }
  }

  return v7;
}

double RB::ColorMatrix::set_color(void *a1, double a2)
{
  LOWORD(v2) = 0;
  HIWORD(v2) = WORD1(a2);
  *a1 = LOWORD(a2);
  a1[1] = v2;
  v3 = 0;
  WORD2(v3) = WORD2(a2);
  v4 = 0;
  HIWORD(v4) = HIWORD(a2);
  result = 0.0;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = 0;
  return result;
}

uint64_t RB::DisplayList::find_animation(RB::DisplayList *this, const RB::DisplayList::Item *a2, const RB::DisplayList::Item *a3)
{
  if (this && a2)
  {
    for (i = *(this + 2); i; i = *(i + 32))
    {
      if ((*(i + 52) & 1) == 0)
      {
        break;
      }
    }

    v5 = *(a2 + 2);
    if (!v5)
    {
      return 0;
    }

    while ((*(v5 + 52) & 1) != 0)
    {
      v5 = *(v5 + 32);
      if (!v5)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 0;
    }

LABEL_19:
    if ((*(*i + 16))(i) == 7)
    {
      v7 = v5;
LABEL_21:
      if ((*(*v7 + 16))(v7) != 7 || !RB::same_identity<RB::DisplayList::Style>(i, v7))
      {
        while (1)
        {
          v7 = *(v7 + 32);
          if (!v7)
          {
            break;
          }

          if ((*(v7 + 52) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      v9 = i;
      v8 = i;
      i = v7;
      goto LABEL_41;
    }

    if ((*(*v5 + 16))(v5) == 7)
    {
      v8 = i;
LABEL_28:
      if ((*(*v8 + 16))(v8) != 7 || !RB::same_identity<RB::DisplayList::Style>(i, v8))
      {
        while (1)
        {
          v8 = *(v8 + 32);
          if (!v8)
          {
            break;
          }

          if ((*(v8 + 52) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = i;
      }

      if (v8)
      {
LABEL_41:
        if (i)
        {
          if ((*(i + 112) & 0xF00) == 0x100)
          {
            if (uuid_is_null((v8 + 96)) || uuid_is_null((i + 96)))
            {
              return i + 56;
            }

            if (*(v8 + 96) != *(i + 96) || *(v8 + 104) != *(i + 104))
            {
              return i + 56;
            }
          }

          else if ((*(i + 112) & 0xF00) == 0x200)
          {
            return i + 56;
          }
        }
      }
    }

    else
    {
      v9 = i;
    }

    for (i = *(v9 + 32); i; i = *(i + 32))
    {
      if ((*(i + 52) & 1) == 0)
      {
        break;
      }
    }

    while (1)
    {
      v5 = *(v5 + 32);
      if (!v5)
      {
        return 0;
      }

      if ((*(v5 + 52) & 1) == 0)
      {
        result = 0;
        if (i)
        {
          goto LABEL_19;
        }

        return result;
      }
    }
  }

  if (this)
  {
    v6 = this;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    i = *(v6 + 2);
    if (i)
    {
      while ((*(i + 52) & 1) != 0)
      {
        i = *(i + 32);
        if (!i)
        {
          return 0;
        }
      }

LABEL_62:
      if ((*(*i + 16))(i, a2, a3) != 7)
      {
        goto LABEL_60;
      }

      v12 = *(i + 112);
      if (!a2)
      {
        LOBYTE(v12) = v12 >> 4;
      }

      v13 = v12 & 0xF;
      if (v13 == 1)
      {
        if (!uuid_is_null((i + 96)))
        {
          goto LABEL_60;
        }

        return i + 56;
      }

      if (v13 == 2)
      {
        return i + 56;
      }

LABEL_60:
      while (1)
      {
        i = *(i + 32);
        if (!i)
        {
          break;
        }

        if ((*(i + 52) & 1) == 0)
        {
          goto LABEL_62;
        }
      }
    }
  }

  return 0;
}

uint64_t RB::DisplayList::Layer::can_mix(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) | *(a3 + 32) || ((*(a3 + 76) ^ *(a1 + 76)) & 0x168F) != 0)
  {
    return 0;
  }

  v6 = a4;
  v8 = *(a1 + 16);
  v9 = *(a3 + 16);
  if (!(v8 | v9))
  {
    return v6;
  }

  for (i = 0; v8; v8 = *(v8 + 8))
  {
    i |= 1 << *(v8 + 46);
  }

  for (; v9; v9 = *(v9 + 8))
  {
    i |= 1 << *(v9 + 46);
  }

  if ((i & 3) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 72) | (*(a3 + 72) << 32);
  v20 = v12;
  v13 = std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::find<std::pair<unsigned int,unsigned int>>((a2 + 40), &v20);
  if (v13)
  {
    v15 = v13[3];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0x400000000;
    v24 = 0;
    v25 = 0;
    v26 = 0x200000000;
    v27 = 1;
    v20 = a2;
    RB::DisplayList::make_interpolator(&v20, *(a1 + 16), *(a3 + 16), v14);
    if (v27 == 1 && !RB::DisplayList::Interpolator::Layer::is_fade(&v20) || (v27 & 0x100) != 0 || (v27 & 0x1000000) != 0 || (*(a1 + 76) & 0x10) != 0)
    {
      operator new();
    }

    v15 = 0;
    v19[0] = v12;
    v19[1] = 0;
    std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int>,RB::DisplayList::Interpolator::Layer*>>((a2 + 40), v19);
    if (v25)
    {
      free(v25);
    }

    if (v22)
    {
      free(v22);
    }
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 8);
  if (*(a2 + 80) > v16)
  {
    v16 = *(a2 + 80);
  }

  *(a2 + 80) = v16;
  if (v6 < 4u)
  {
    if (v6 != 3)
    {
      if (v6 < 2u)
      {
        return v6;
      }

      v17 = *(v15 + 192);
      v6 = 2;
      goto LABEL_36;
    }

    v17 = *(v15 + 192);
    v18 = 3;
  }

  else
  {
    v17 = *(v15 + 192);
    if (v17 == 32)
    {
      v18 = v6;
    }

    else
    {
      v18 = 3;
    }
  }

  if ((v17 & 0xFFFFFECF) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = v18;
  }

LABEL_36:
  if ((v17 & 0x44) != 0 || *(v15 + 250) == 1 && ((v17 & 3) != 0 || (*(v15 + 248) & 1) == 0))
  {
    return 1;
  }

  return v6;
}

void sub_195D4A0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x19A8C09E0](v4, 0x1020C40C2C913D3);
  RB::DisplayList::Interpolator::Layer::~Layer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::find<std::pair<unsigned int,unsigned int>>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = 33 * v3 + v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 33 * v3 + v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 5) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = 33 * v3 + v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 33 * v3 + v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (*(result + 4) == v3 && *(result + 5) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *RB::DisplayList::Metadata::transition(uint64_t *this)
{
  if (this)
  {
    while (1)
    {
      v1 = *this;
      if ((*this & 7) == 1)
      {
        break;
      }

      this = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return this;
      }
    }

    return this[1];
  }

  return this;
}

const RB::Transition *RB::DisplayList::Interpolator::Layer::item_transition(RB::DisplayList::Interpolator::Layer *this, const RB::Transition *a2)
{
  if (!a2 || *(a2 + 16) == 1 && (*(**this + 16) & 1) == 0)
  {
    return **this;
  }

  return a2;
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 4214785)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Glyphs::can_mix((a1 + 7), a3, (a4 + 7));
        if (result)
        {
          v12 = result;
          can_mix = RB::Fill::Color::can_mix((a1 + 14), (a4 + 14));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

__int16 RB::Fill::Color::apply_color_matrix@<H0>(RB::Fill::Color *this@<X0>, float16x4_t *a2@<X1>, int a3@<W2>)
{
  if (a3)
  {
    v4 = *(this + 3);
    *this = v4 * *this;
    *(this + 1) = *(this + 1) * v4;
    *(this + 2) = *(this + 2) * v4;
    RB::operator*=(this, a2);
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      LOWORD(_H0) = 0;
    }

    else
    {
      __asm { FCVT            S0, H0 }

      v11 = _S0;
      v12 = vrecpe_f32(_S0);
      _D0 = vmul_f32(vrecps_f32(v11, v12), v12);
      _D0.i32[0] = vmul_f32(_D0, vrecps_f32(v11, _D0)).u32[0];
      __asm { FCVT            H0, S0 }
    }

    *this = *this * _H0;
    *(this + 1) = *(this + 1) * _H0;
    *&v15 = *(this + 2) * _H0;
    *(this + 2) = LOWORD(v15);
  }

  else
  {

    v15 = RB::operator*=(this, a2);
  }

  return LOWORD(v15);
}

double RB::operator*=(uint64_t a1, float16x4_t *a2)
{
  result = *(a1 + 6);
  v3 = vmla_n_f16(vmla_n_f16(vmla_n_f16(vmla_n_f16(a2[4], *a2, COERCE_SHORT_FLOAT(*a1)), a2[1], COERCE_SHORT_FLOAT(*(a1 + 2))), a2[2], COERCE_SHORT_FLOAT(*(a1 + 4))), a2[3], *&result);
  *a1 = (v3.u16[2] << 32) | (v3.u16[3] << 48) | (v3.u16[1] << 16) | v3.u16[0];
  *(a1 + 8) = 0;
  *(a1 + 12) = HIWORD(result);
  return result;
}

uint64_t RB::can_mix(float64x2_t *this, float64x2_t *a2, const RB::AffineTransform *a3)
{
  if (this == a2)
  {
    return 4;
  }

  v3 = xmmword_195E42760;
  v4 = xmmword_195E42770;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = xmmword_195E42770;
  v8 = xmmword_195E42760;
  if (this)
  {
    v8 = *this;
    v7 = this[1];
    v6 = this[2];
  }

  if (a2)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
  }

  v9 = vandq_s8(vandq_s8(vceqq_f64(v7, v4), vceqq_f64(v6, v5)), vceqq_f64(v8, v3));
  v10 = vandq_s8(vdupq_laneq_s64(v9, 1), v9);
  if (v10.i64[0] < 0)
  {
    return 4;
  }

  *v10.i64 = -v8.f64[1];
  v11 = vzip1q_s64(v10, v8);
  v12 = vaddvq_f64(vmulq_f64(v11, v7));
  v11.f64[0] = -v3.f64[1];
  v13 = vaddvq_f64(vmulq_f64(vzip1q_s64(v11, v3), v4));
  if (v12 > 0.0 && v13 > 0.0)
  {
    return 1;
  }

  if (v13 < 0.0)
  {
    return v12 < 0.0;
  }

  return 0;
}

uint64_t *RBDrawingStateAddShadowStyle3(uint64_t *a1, int a2, int a3, unsigned int a4, double a5, float a6, double a7, double a8, float a9, float a10, float a11, float a12)
{
  *v13 = a5;
  *&v13[1] = a7;
  *&v13[2] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  v18 = a2;
  v19 = 0;
  v20 = a6;
  v21 = a3;
  v22 = a4;
  return add_style(a1, v13);
}

uint64_t RB::Coverage::Glyphs::can_mix(RB::Coverage::Glyphs *this, const RB::DisplayList::Interpolator::Op *a2, const RB::Coverage::Glyphs *a3)
{
  v3 = *a2 >> 36;
  v4 = *(this + 4);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*(a3 + 4) < v3)
  {
    LODWORD(v3) = *(a3 + 4);
  }

  if (v5 != v3 || ((*(a3 + 5) ^ *(this + 5)) & 0xFFFFFFF7) != 0 || *(this + 52) != *(a3 + 52))
  {
    return 0;
  }

  v24[0] = 0;
  v24[1] = 0;
  v9 = RB::FontMixer::shared(this);
  result = RB::FontMixer::can_mix(v9, *this, *a3, v24);
  if (result)
  {
    v11 = *(this + 12) == *(a3 + 12);
    if (v5)
    {
      v12 = *(this + 1);
      v13 = *(a2 + 3);
      v14 = (v12 + 8 * *(this + 4) + 2 * v13);
      v15 = *(a3 + 1);
      v16 = *(a2 + 5);
      v17 = (v15 + 8 * *(a3 + 4) + 2 * v16);
      v18 = (v12 + 8 * v13);
      v19 = (v15 + 8 * v16);
      while (1)
      {
        v21 = *v14++;
        v20 = v21;
        v22 = *v17++;
        result = RB::FontMixer::GlyphEquality::operator()(v24, v20, v22);
        if (!result)
        {
          break;
        }

        if (v11)
        {
          v23 = vceq_f32(*v18, *v19);
          v11 = vpmin_u32(v23, v23).u32[0] >> 31;
        }

        else
        {
          v11 = 0;
        }

        ++v19;
        ++v18;
        if (!--v5)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      if (v11)
      {
        if (*this == *a3)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t RB::FontMixer::shared(RB::FontMixer *this)
{
  {
    operator new();
  }

  return RB::FontMixer::shared(void)::shared;
}

double RB::DisplayList::State::add_shadow(__n128 *a1, RB::DisplayList::Builder *a2, uint64_t *a3, int a4, int a5, float a6, float a7, double a8)
{
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v12 = a5;
  v13 = a4;
  _ZN2RB4Heap7emplaceINS_11DisplayList11ShadowStyleEJRKfS5_RKDv2_fRKNS_4Fill5ColorERKNS_9BlendModeERKjEEEPT_DpOT0_((*(a2 + 1) + 16), &v16, &v15, &v14, a3, &v13, &v12);
  *&result = RB::DisplayList::State::add_style(a1, a2, v10).n128_u64[0];
  return result;
}

float _ZN2RB4Heap7emplaceINS_11DisplayList11ShadowStyleEJRKfS5_RKDv2_fRKNS_4Fill5ColorERKNS_9BlendModeERKjEEEPT_DpOT0_(RB::Heap *this, float *a2, int *a3, uint64_t *a4, uint64_t *a5, int *a6, int *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 96 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x60uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 96;
  }

  result = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *(a5 + 6);
  v21 = *(a5 + 2);
  v22 = *a6;
  v23 = *a7;
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = &unk_1F0A3B970;
  *(v15 + 56) = v18;
  *(v15 + 64) = result;
  *(v15 + 68) = v17;
  *(v15 + 72) = v19;
  *(v15 + 80) = v21;
  *(v15 + 84) = v20;
  *(v15 + 88) = v22;
  *(v15 + 92) = v23;
  return result;
}

uint64_t RB::FontMixer::can_mix(os_unfair_lock_s *a1, CGFont *a2, CGFont *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (a2 && a3)
    {
      os_unfair_lock_lock(a1);
      info = RB::FontMixer::get_info(a1, a2, a3);
      v10 = info;
      if (a4 && info[13] == 1)
      {
        v11 = [RBDecodedFontMetadata fontMetadata:a2];
        *a4 = [(RBDecodedFontMetadata *)v11 glyphMap];
        v12 = [RBDecodedFontMetadata fontMetadata:a3];
        a4[1] = [(RBDecodedFontMetadata *)v12 glyphMap];
      }

      v5 = v10[12];
      os_unfair_lock_unlock(a1);
    }
  }

  return v5 & 1;
}

BOOL RB::FontMixer::GlyphEquality::operator()(const __CFDictionary **a1, void *key, void *a3)
{
  v3 = a3;
  v4 = key;
  v6 = *a1;
  if (v6)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(v6, key, &value))
    {
      v4 = value;
    }
  }

  v7 = a1[1];
  if (v7)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(v7, v3, &value))
    {
      LOWORD(v3) = value;
    }
  }

  return v4 == v3;
}

void RB::DisplayList::ShadowStyle::bounds(float32x2_t *this, float32x2_t *a2, float64x2_t *a3, int a4)
{
  v4 = vneg_f32(0x80000000800000);
  v5 = vcge_f32(vabs_f32(a2[1]), v4);
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v9 = RB::Rect::move(a2, a3, *&this[2]);
    *v9.f64 = this[8].f32[0] * 2.8;
    v20 = *a2->f32;
    v10.i64[1] = v20.i64[1];
    v10.i64[0] = v20.i64[1];
    v11.i64[0] = v20.i64[0];
    *v12.i8 = vcgt_f32(v4, v20.u64[1]);
    *v13.i8 = vsub_f32(*v20.i8, vdup_lane_s32(*&v9.f64[0], 0));
    v14 = vcltzq_s32(v12);
    v11.i64[0] = vbslq_s8(v14, v13, v11).u64[0];
    *v15.i8 = vmla_n_f32(v20.u64[1], 0x4000000040000000, *v9.f64);
    v11.i64[1] = vbslq_s8(v14, v15, v10).u64[0];
    v20 = v11;
    v16 = this[7];
    v17 = vneg_f32(v16);
    if (a4)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vbsl_s8(vdup_n_s32(v18), v17, v16);
    RB::Rect::translate(&v20, v19, v19.f32[1]);
    if ((this[11].i8[4] & 2) != 0)
    {
      *a2->f32 = v20;
    }

    else
    {
      RB::Rect::Union(a2, *v20.i64, v20.u64[1]);
    }
  }
}

uint64_t RB::Fill::Color::can_mix(RB::Fill::Color *this, const RB::Fill::Color *a2)
{
  v2 = *(this + 13);
  v3 = *(a2 + 13);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 == v3 || v2 == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(this + 12) == *(a2 + 12))
  {
    goto LABEL_15;
  }

  if (*(a2 + 13))
  {
    v6.i16[0] = *this;
    v7.i16[0] = *a2;
    goto LABEL_22;
  }

LABEL_15:
  v6.i16[0] = *this;
  v7.i16[0] = *a2;
  if (*this == *a2 && *(this + 1) == *(a2 + 1) && *(this + 2) == *(a2 + 2) && *(this + 3) == *(a2 + 3) && *(this + 4) == *(a2 + 4) && *(this + 5) == *(a2 + 5))
  {
    return 4;
  }

LABEL_22:
  v6.i16[1] = *(this + 1);
  v6.i32[1] = *(this + 1);
  v7.i16[1] = *(a2 + 1);
  v7.i32[1] = *(a2 + 1);
  return (vminvq_u32(vmovl_s16(vmvn_s8(veor_s8(vceq_f16(v7, 0xF800F800F800F800), vceq_f16(v6, 0xF800F800F800F800))))) >> 30) & 2;
}

unint64_t *RB::DisplayList::Interpolator::Op::set_type(unint64_t *result, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = a2;
  if (a3 < a2)
  {
    v4 = a3;
  }

  if (a4 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a4;
  }

  if (v5)
  {
    if (v5 < 4)
    {
      v7 = *result & 0xFFFFFFFFFFFFFFF0;
      v8 = v4 >= 2;
      v6 = v7 | 2;
      v9 = v7 | 3;
      if (v8)
      {
        v6 = v9;
      }
    }

    else
    {
      v6 = *result & 0xFFFFFFFFFFFFFFF0 | 5;
    }
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    if (v4 == 1)
    {
      v6 = *result & 0xFFFFFFFFFFFFFFF0 | 6;
    }

    else
    {
      v6 = *result & 0xFFFFFFFFFFFFFFF0 | 7;
    }
  }

  *result = v6;
  return result;
}

uint64_t RB::DisplayList::EditAdaptor::mix_elements(uint64_t result, uint64_t a2, const RB::DisplayList::Item *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v7 = *(a4 + 16) + *(a5 + 16);
  v8 = (*(*(result + 192) + 4 * (v7 >> 3)) >> (4 * (v7 & 7))) & 0xF;
  if (v8 >= 2)
  {
    v13 = a3;
    v15 = (a2 + 16);
    v16 = *(a2 + 184);
    if (*(a2 + 188) < (v16 + 1))
    {
      RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(v15, v16 + 1);
      v16 = *(a2 + 184);
    }

    v17 = *(a2 + 176);
    if (!v17)
    {
      v17 = v15;
    }

    v18 = &v17[40 * v16];
    *(v18 + 1) = 0;
    *(v18 + 2) = 0;
    *v18 = 0xFFFFFFF000000000;
    *(v18 + 6) = 0;
    *(v18 + 28) = 1;
    *(v18 + 9) = 0;
    v19 = *(a2 + 184);
    *(a2 + 184) = v19 + 1;
    v20 = *(a2 + 176);
    if (!v20)
    {
      v20 = v15;
    }

    v21 = &v20[40 * v19];
    *v21 = *v21 & 0xF00000000 | v8 | (16 * v13) | 0x1000000000;
    v22 = *(a4 + 8);
    *(&v22 + 1) = *(a5 + 8);
    *(v21 + 8) = v22;
    *(v21 + 6) = a6;
    *(v21 + 7) = a7;
    animation = RB::DisplayList::find_animation(*a4, *a5, a3);
    RB::DisplayList::EditAdaptor::set_animation(animation, a2, v21, a5, animation, 0);
    *(a2 + 192) |= 1 << (*v21 & 0xF);

    return RB::DisplayList::Interpolator::Layer::merge_tail(a2);
  }

  return result;
}

void RB::DisplayList::ShadowStyle::draw(RB::DisplayList::ShadowStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5, __n128 _Q0)
{
  v64[11] = *MEMORY[0x1E69E9840];
  __asm { FCMP            H0, #0 }

  if (_ZF && RB::may_discard_alpha(*(a4 + 23) & 0x3F))
  {
    if ((*(this + 92) & 2) != 0)
    {
      v21 = **a4;

      v21(a4);
    }

    else
    {
      *(a4 + 2) = *(this + 4);
      *(a4 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(a4 + 3), *(this + 3));

      RB::DisplayList::Builder::draw(a2, a4, a3, a5);
    }

    return;
  }

  v56 = a3;
  v14 = *(a4 + 23);
  v15 = v14 & 0x3F;
  _H8 = *(a4 + 22);
  v17 = *(a4 + 4);
  v18 = *(a4 + 10);
  v57 = a5;
  if ((*(this + 92) & 0xA) != 0)
  {
    v19 = 0;
    *(a4 + 23) = v14 & 0xFFC0 | 2;
    goto LABEL_22;
  }

  if (v15 == 2)
  {
    _Q0.n128_u16[0] = COERCE_UNSIGNED_INT(1.0);
    _ZF = *(this + 22) == 2 && _H8 == *_Q0.n128_u16;
    if (_ZF)
    {
      v19 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    *(a4 + 23) = v14 & 0xFFC0 | 2;
  }

  _Q0.n128_u16[0] = COERCE_UNSIGNED_INT(1.0);
  *(a4 + 22) = COERCE_UNSIGNED_INT(1.0);
  *(a4 + 4) = 0;
  *(a4 + 10) = 0;
  v19 = 1;
LABEL_22:
  v22 = (*(*a4 + 72))(a4, a2, this, _Q0);
  v55 = v15;
  if (v22)
  {
    v25 = v22;
    v54 = 0;
    goto LABEL_42;
  }

  v25 = a4;
  v54 = (*(this + 23) & 0x22) == 2;
  if ((*(this + 23) & 0x22) != 2)
  {
    v25 = (*(*a4 + 24))(a4, a2, 0);
  }

  v23.i32[0] = *(this + 16);
  if (fabsf(*v23.i32) > 0.01)
  {
    RB::Filter::GaussianBlur::GaussianBlur(v61, v23, 0, 0, (*(this + 23) >> 1) & 8);
    v26 = *(this + 2);
    v27 = RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::GaussianBlur>,RB::Filter::GaussianBlur const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), v61, a2);
    v25 = RB::DisplayList::Builder::apply_filter_(a2, v25, v27, v26, 0);
    v28 = v62;
    v62 = 0;
    if (v28)
    {
      (**v28)(v28);
    }
  }

  *(v25 + 23) = *(v25 + 23) & 0xFFC0 | *(this + 44) & 0x3F;
  v29 = *(this + 23) & 4;
  v30 = *(this + 17);
  *v24.i32 = fabsf(v30 + -0.5);
  if (*v24.i32 >= 0.01)
  {
    *(v61 + 4 * v29) = RBColorClear;
    v61[(v29 >> 2) ^ 1] = vcvtq_f32_f16(*(this + 72));
    *&v58 = 0;
    if (v29)
    {
      v30 = 1.0 - v30;
    }

    *(&v58 + 1) = v30;
    *&v59 = 0x3FF0000000000000;
    v32 = *(a2 + 1);
    v33 = (v32[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v33 + 104 > v32[5])
    {
      v33 = RB::Heap::alloc_slow(v32 + 2, 0x68uLL, 7);
    }

    else
    {
      v32[4] = v33 + 104;
    }

    *v33 = &unk_1F0A3A2C0;
    v34 = *(this + 42);
    *(v33 + 16) = 0x3F80000000000000;
    RB::Fill::Gradient::Gradient(v33 + 24, (v32 + 2), 3, 2uLL, v61, v34, &v58, 256, 0.0, 0.0, 0.0, 0.0, 0.0);
    *(v33 + 88) = 3;
    *(v33 + 96) = 1;
    goto LABEL_40;
  }

  v31 = *(this + 72);
  if ((*(this + 23) & 4) != 0)
  {
    RB::ColorMatrix::set_inverse_alpha_multiply(v61, 0, v31);
  }

  else
  {
    RB::ColorMatrix::set_alpha_multiply(v61, 0, v31, v24);
  }

  if ((RB::ColorMatrix::is_identity(v61) & 1) == 0)
  {
    v37 = *(a2 + 1);
    v58 = v61[0];
    v59 = v61[1];
    *&v60.f64[0] = v62;
    RB::Heap::emplace<RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>,RB::ColorStyle::Matrix>((v37 + 16), &v58);
    v35 = RB::DisplayList::Builder::apply_color_matrix_fn(a2, v25, v38, 0, *(this + 2), 0);
LABEL_40:
    v25 = v35;
  }

  if (!v25)
  {
    v44 = 1;
    if (v19)
    {
      goto LABEL_51;
    }

LABEL_53:
    if ((*(this + 92) & 2) == 0)
    {
      v49 = *(a4 + 3);
      *(a4 + 2) = *(this + 4);
      *(a4 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, v49, *(this + 3));
      *(a4 + 23) = *(a4 + 23) & 0xFFC0 | v55;
      *(a4 + 4) = v17;
      *(a4 + 10) = v18;
    }

    v46 = v56;
    v47 = v57;
    goto LABEL_56;
  }

LABEL_42:
  v39 = *(this + 56);
  v40 = vmvn_s8(vceqz_f32(v39));
  if ((vpmax_u32(v40, v40).u32[0] & 0x80000000) != 0)
  {
    v41 = vmlaq_n_f64(vmulq_n_f64(**(this + 2), v39.f32[0]), *(*(this + 2) + 16), v39.f32[1]);
    v58 = xmmword_195E42760;
    v59 = xmmword_195E42770;
    v60 = v41;
    RB::DisplayList::CachedTransform::CachedTransform(v61, a2, &v58, 0, 0);
    (*(*v25 + 32))(v25, v61, 0);
    RB::UntypedTable::~UntypedTable(v64);
    RB::UntypedTable::~UntypedTable(&v63);
    RB::Heap::~Heap((v61 + 8));
  }

  v42 = *(this + 23);
  if ((v42 & 0x20) != 0)
  {
    if ((v42 & 2) != 0)
    {
      v54 = 1;
      v43 = a4;
    }

    else
    {
      v43 = (*(*a4 + 24))(a4, a2, 0);
    }

    RB::DisplayList::Builder::push_item_clip(a2, v25, v43, 1, 1.0);
  }

  *(v25 + 23) = *(v25 + 23) & 0xFFC0 | *(this + 44) & 0x3F;
  *(v25 + 4) = v17;
  *(v25 + 10) = v18;
  if (!v19)
  {
    v48 = *(v25 + 3);
    *(v25 + 2) = *(this + 4);
    v44 = 0;
    *(v25 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, v48, *(this + 3));
    goto LABEL_53;
  }

  v44 = 0;
LABEL_51:
  v36.n128_f64[0] = RB::DisplayList::Builder::make_layer(a2, 0);
  v46 = v45;
  v47 = 0;
LABEL_56:
  if ((*(this + 23) & 3) == 1)
  {
    RB::DisplayList::Builder::draw(a2, a4, v46, v47);
    if ((v44 & 1) == 0)
    {
      RB::DisplayList::Builder::draw(a2, v25, v46, v47);
    }
  }

  else if ((*(this + 23) & 3) != 0)
  {
    if ((v44 & 1) == 0)
    {
      RB::DisplayList::Builder::draw(a2, v25, v46, v47);
    }

    if (!v54)
    {
      (**a4)(a4, v36);
    }
  }

  else
  {
    if ((v44 & 1) == 0)
    {
      RB::DisplayList::Builder::draw(a2, v25, v46, v47);
    }

    RB::DisplayList::Builder::draw(a2, a4, v46, v47);
  }

  if (v19)
  {
    v50 = *(a2 + 1);
    v51 = (v50[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v51 + 64 > v50[5])
    {
      v51 = RB::Heap::alloc_slow(v50 + 2, 0x40uLL, 7);
    }

    else
    {
      v50[4] = v51 + 64;
    }

    __asm { FCVT            S0, H8 }

    RB::DisplayList::LayerItem::LayerItem(v51, v55, v46, _S0);
    v53 = *(v51 + 24);
    *(v51 + 16) = *(this + 4);
    *(v51 + 24) = RB::DisplayList::Builder::join_clip_lists(a2, v53, *(this + 3));
    *(v51 + 32) = v17;
    *(v51 + 40) = v18;
    RB::DisplayList::Builder::draw(a2, v51, v56, v57);
  }
}

void sub_195D4B648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::EditAdaptor::set_animation(int a1, uint64_t *a2, uint64_t *a3, void *a4, RB::Animation *a5, uint64_t a6)
{
  v8 = *a3 & 0xF;
  v9 = v8 > 8;
  v10 = (1 << v8) & 0x130;
  v11 = v9 || v10 == 0;
  if (v11)
  {
    if (a6)
    {
      if (*(a6 + 88))
      {
        v13 = (a6 + 56);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = *a2;
    if (a5 | v13)
    {
      v15 = RB::DisplayList::Interpolator::Contents::intern_animation(v14, a5, v13);
      v14 = *a2;
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(a3 + 8) = v15;
    v16 = *(v14 + 24);
    if (v16)
    {
      v17 = *a3;
      v18 = *a3 & 0xF;
      if (v16->i8[4])
      {
        v11 = v18 == 0;
        v23 = 20;
        if (v11)
        {
          v23 = 12;
        }

        *&v24 = (*(**a4 + 64))(*a4, *(a3 + v23), v17 >> 36);
        v22 = vmla_f32(v24, 0x3F0000003F000000, v25);
        v17 = *a3;
      }

      else
      {
        v19 = a2 + 25;
        v11 = v18 == 0;
        v20 = 28;
        if (v11)
        {
          v20 = 24;
        }

        v21 = *(a3 + v20);
        if (a2[29])
        {
          v19 = a2[29];
        }

        v22 = vmla_f32(v19[2 * v21], 0x3F0000003F000000, v19[2 * v21 + 1]);
      }

      if ((v17 & 0xF) != 0)
      {
        v26 = (v17 & 0xF) != 1;
      }

      else
      {
        v26 = 2;
      }

      v27 = RB::AnimationSequencer::eval_delay(v16, v26, *&v22);
      if (v27 > 0.0)
      {
        *(a3 + 9) = *(a3 + 9) + v27;
        *(a2 + 251) = 1;
      }
    }
  }

  else
  {
    *(a3 + 8) = -1;
  }

  if (*(a3 + 8) != *(*a2 + 20))
  {
    *(a2 + 251) = 1;
  }
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>::copy_shadow(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 92) & 0x10) == 0)
  {
    _H0 = a1[7].n128_u16[3];
    __asm { FCVT            S0, H0 }

    v30 = _S0;
    if ((RB::DisplayList::Item::clip_affects_blurred_bounds(a1, *(a3 + 64)) & 1) == 0)
    {
      memset(v27, 0, sizeof(v27));
      v28 = 1065353216;
      v29[0] = 0;
      *(v29 + 7) = 0;
      v13 = *(a3 + 16);
      v14 = a1[3].n128_u64[0];
      v15 = *v14;
      v16 = v14[2];
      v32 = v14[1];
      v33 = v16;
      v31 = v15;
      if (RB::AffineTransform::invert(&v31))
      {
        v17 = &v31;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17[1];
      v19 = v17[2];
      v26[0] = *v17;
      v26[1] = v18;
      v26[2] = v19;
      v20.f64[0] = RB::operator*(v13, v26);
      v31 = v20;
      v32 = v21;
      v33 = v22;
      if (RB::Coverage::Primitive::make_shadow(&a1[4], &v31, *(a3 + 64), &v30, (*(a3 + 92) >> 2) & 1, v27))
      {
        _H1 = a1[2].n128_u16[6];
        __asm { FCVT            S1, H1 }

        primitive = RB::DisplayList::ShadowStyle::make_primitive(a3, a2, v27, a1[3].n128_i64[0], a1[2].n128_u16[7] & 0x3F, v30, _S1);
        result = a1[1];
        primitive[1] = result;
        primitive[2].n128_u64[0] = a1[2].n128_u64[0];
        primitive[2].n128_u32[2] = a1[2].n128_u32[2];
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::Interpolator::Layer::merge_tail(uint64_t this)
{
  v1 = *(this + 184);
  if (v1 >= 2)
  {
    v2 = this + 16;
    if (*(this + 176))
    {
      v2 = *(this + 176);
    }

    v3 = (v2 + 40 * (v1 - 2));
    v4 = (v2 + 40 * (v1 - 1));
    v5 = *v3;
    v6 = *v4;
    if (((*v4 ^ *v3) & 0xFLL) == 0 && *(v3 + 6) == *(v4 + 6) && *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8) && *(v3 + 9) == *(v4 + 9))
    {
      v7 = (v6 & 0xF) == 1 || (v6 & 0xF) == 8;
      if ((v7 || *(v4 + 2) == *(v3 + 2) && *(v4 + 3) == *(v3 + 3) + (v5 >> 36)) && ((v6 & 0xF) == 0 || *(v4 + 4) == *(v3 + 4) && *(v4 + 5) == *(v3 + 5) + (v5 >> 36)))
      {
        *v3 = ((v5 & 0xFFFFFFF000000000) + v6) & 0xFFFFFFF000000000 | v5 & 0xFFFFFFFFFLL;
        --*(this + 184);
      }
    }
  }

  return this;
}

double std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(__int128 *a1, __int128 *a2, unint64_t a3, uint64_t *a4, uint64_t a5, __n128 a6)
{
  if (a3 < 2)
  {
    return a6.n128_f64[0];
  }

  v7 = a1;
  if (a3 == 2)
  {
    v8 = (a2 - 40);
    v9 = *(a2 - 5);
    v10 = *a1;
    if (v9 >> 4 == *a1 >> 4)
    {
      v11 = *a1 & 0xFLL;
      v12 = (v9 & 0xF) == 0 || v11 == 0;
      if (v12 || (v66 = *(a2 - 6), v67 = *(a1 + 4), v56 = v66 >= v67, v66 == v67) && (v68 = *(a2 - 5), v69 = *(a1 + 5), v56 = v68 >= v69, v68 == v69))
      {
        v13 = v9 & 0xF;
        if (v13 == 1 || v13 == 8 || (v14 = v10 & 0xF, v14 == 1) || v14 == 8 || (v97 = *(a2 - 8), v98 = *(a1 + 2), v56 = v97 >= v98, v97 == v98) && (v99 = *(a2 - 7), v100 = *(a1 + 3), v56 = v99 >= v100, v99 == v100))
        {
          if ((*(a2 - 5) & 0xFLL) == 0 || v11)
          {
            return a6.n128_f64[0];
          }

LABEL_80:
          a6 = *a1;
          v57 = a1[1];
          v58 = *(a1 + 4);
          v59 = *(a2 - 1);
          v60 = *(a2 - 24);
          *a1 = *v8;
          a1[1] = v60;
          *(a1 + 4) = v59;
          *(a2 - 1) = v58;
          *v8 = a6;
          *(a2 - 24) = v57;
          return a6.n128_f64[0];
        }
      }
    }

    else
    {
      v56 = v9 >> 4 >= v10 >> 4;
    }

    if (v56)
    {
      return a6.n128_f64[0];
    }

    goto LABEL_80;
  }

  if (a3 > 128)
  {
    v62 = a4;
    v63 = a3 >> 1;
    v64 = a1 + 5 * (a3 >> 1);
    v65 = a3 >> 1;
    if (a3 > a5)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(a1, v64, v65, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v7 + 40 * (a3 >> 1), a2, a3 - (a3 >> 1), v62, a5);

      a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v7, (v7 + 40 * (a3 >> 1)), a2, a3 >> 1, a3 - (a3 >> 1), v62, a5).n128_u64[0];
      return a6.n128_f64[0];
    }

    v70 = std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(a1, v64, v65, a4, a6);
    v71 = (v62 + 40 * v63);
    a6.n128_u64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,RB::DisplayList::EditAdaptor::finalize(RB::DisplayList::Interpolator::Layer &)::$_1 &,RB::DisplayList::Interpolator::Op *>(v7 + 5 * (a3 >> 1), a2, a3 - (a3 >> 1), v71, v70).n128_u64[0];
    v72 = v62 + 40 * a3;
    v73 = v71;
    while (1)
    {
      if (v73 == v72)
      {
        while (v62 != v71)
        {
          a6 = *v62;
          v95 = *(v62 + 16);
          *(v7 + 4) = *(v62 + 32);
          *v7 = a6;
          v7[1] = v95;
          v62 += 40;
          v7 = (v7 + 40);
        }

        return a6.n128_f64[0];
      }

      v74 = *v73;
      v75 = *v73 >> 4;
      v76 = *v62;
      if (v75 != *v62 >> 4)
      {
        break;
      }

      v77 = *v62 & 0xFLL;
      if ((v74 & 0xF) != 0 && v77 != 0)
      {
        v87 = *(v73 + 4);
        v88 = *(v62 + 16);
        v85 = v87 >= v88;
        if (v87 != v88)
        {
          goto LABEL_111;
        }

        v89 = *(v73 + 5);
        v90 = *(v62 + 20);
        v85 = v89 >= v90;
        if (v89 != v90)
        {
          goto LABEL_111;
        }
      }

      v79 = v74 & 0xF;
      v80 = v79 == 1 || v79 == 8;
      v81 = v76 & 0xF;
      v82 = v80 || v81 == 1;
      if (!v82 && v81 != 8)
      {
        v91 = *(v73 + 2);
        v92 = *(v62 + 8);
        v85 = v91 >= v92;
        if (v91 != v92)
        {
          goto LABEL_111;
        }

        v93 = *(v73 + 3);
        v94 = *(v62 + 12);
        v85 = v93 >= v94;
        if (v93 != v94)
        {
          goto LABEL_111;
        }
      }

      if ((*v73 & 0xF) == 0 || v77)
      {
LABEL_113:
        a6 = *v62;
        v86 = *(v62 + 16);
        *(v7 + 4) = *(v62 + 32);
        *v7 = a6;
        v7[1] = v86;
        v62 += 40;
        goto LABEL_114;
      }

LABEL_109:
      a6 = *v73;
      v84 = *(v73 + 1);
      *(v7 + 4) = v73[4];
      *v7 = a6;
      v7[1] = v84;
      v73 += 5;
LABEL_114:
      v7 = (v7 + 40);
      if (v62 == v71)
      {
        while (v73 != v72)
        {
          a6 = *v73;
          v96 = *(v73 + 1);
          *(v7 + 4) = v73[4];
          *v7 = a6;
          v7[1] = v96;
          v73 += 5;
          v7 = (v7 + 40);
        }

        return a6.n128_f64[0];
      }
    }

    v85 = v75 >= v76 >> 4;
LABEL_111:
    if (v85)
    {
      goto LABEL_113;
    }

    goto LABEL_109;
  }

  if (a1 == a2)
  {
    return a6.n128_f64[0];
  }

  v16 = a1 + 5;
  if ((a1 + 40) == a2)
  {
    return a6.n128_f64[0];
  }

  v17 = 0;
  v18 = a1;
  do
  {
    v19 = v18;
    v18 = v16;
    v20 = v19[5];
    v21 = v20 >> 4;
    v22 = *v19;
    if (v20 >> 4 == *v19 >> 4)
    {
      v23 = *v19 & 0xF;
      v24 = (v20 & 0xF) == 0 || v23 == 0;
      if (v24 || (v48 = *(v19 + 14), v49 = *(v19 + 4), v29 = v48 >= v49, v48 == v49) && (v50 = *(v19 + 15), v51 = *(v19 + 5), v29 = v50 >= v51, v50 == v51))
      {
        v25 = (v20 & 0xF) == 1 || (v20 & 0xF) == 8;
        v26 = v22 & 0xF;
        v27 = v25 || v26 == 1;
        v28 = v27 || v26 == 8;
        if (v28 || (v52 = *(v19 + 12), v53 = *(v19 + 2), v29 = v52 >= v53, v52 == v53) && (v54 = *(v19 + 13), v55 = *(v19 + 3), v29 = v54 >= v55, v54 == v55))
        {
          if ((v20 & 0xF) == 0 || v23)
          {
            goto LABEL_73;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
      v29 = v21 >= v22 >> 4;
    }

    if (v29)
    {
      goto LABEL_73;
    }

LABEL_43:
    v30 = *(v19 + 12);
    v31 = *(v19 + 13);
    v32 = *(v19 + 14);
    v33 = *(v19 + 15);
    v102 = *(v19 + 4);
    v18[4] = v19[4];
    v34 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v34;
    v35 = v7;
    if (v19 == v7)
    {
      goto LABEL_72;
    }

    v36 = v20 & 0xF;
    v37 = v17;
    while (1)
    {
      v38 = v7 + v37;
      v39 = *(v7 + v37 - 40);
      if (v21 != v39 >> 4)
      {
        v41 = v21 >= v39 >> 4;
LABEL_61:
        if (v41)
        {
          goto LABEL_71;
        }

        goto LABEL_62;
      }

      if ((v20 & 0xF) != 0 && (v39 & 0xF) != 0)
      {
        v40 = *(v7 + v37 - 24);
        v41 = v32 >= v40;
        if (v32 != v40)
        {
          goto LABEL_61;
        }

        v42 = *(v7 + v37 - 20);
        v41 = v33 >= v42;
        if (v33 != v42)
        {
          goto LABEL_61;
        }
      }

      if (v36 == 1 || v36 == 8)
      {
        break;
      }

      v43 = v39 & 0xF;
      if (v43 == 1 || v43 == 8)
      {
        break;
      }

      v46 = *(v7 + v37 - 32);
      v41 = v30 >= v46;
      if (v30 != v46)
      {
        goto LABEL_61;
      }

      v47 = *(v7 + v37 - 28);
      if (v31 == v47)
      {
        break;
      }

      if (v31 >= v47)
      {
        v35 = (v7 + v37);
        goto LABEL_72;
      }

LABEL_62:
      v19 -= 5;
      v45 = *(v7 + v37 - 24);
      *v38 = *(v7 + v37 - 40);
      *(v38 + 16) = v45;
      *(v38 + 32) = *(v7 + v37 - 8);
      v37 -= 40;
      if (!v37)
      {
        v35 = v7;
        goto LABEL_72;
      }
    }

    if ((v20 & 0xF) != 0 && (*(v7 + v37 - 40) & 0xFLL) == 0)
    {
      goto LABEL_62;
    }

LABEL_71:
    v35 = v19;
LABEL_72:
    *v35 = v20;
    *(v35 + 2) = v30;
    *(v35 + 3) = v31;
    *(v35 + 4) = v32;
    *(v35 + 5) = v33;
    a6.n128_u64[0] = v102;
    *(v35 + 3) = v102;
LABEL_73:
    v16 = v18 + 5;
    v17 += 40;
  }

  while (v18 + 5 != a2);
  return a6.n128_f64[0];
}

uint64_t RB::DisplayList::Item::clip_affects_blurred_bounds(RB::DisplayList::Item *this, float a2)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v4 = (*(*this + 136))(this, 0);
  v7 = v4;
  v8 = v5;
  *&v4 = -ceilf(a2 * 2.8);
  RB::Rect::inset(&v7, *&v4, *&v4);
  return RB::DisplayList::ClipNode::contains(*(this + 3), v7, v8) ^ 1;
}

uint64_t RB::Coverage::Primitive::make_shadow(RB::Coverage::Primitive *this, float64x2_t *a2, float a3, float *a4, int a5, RB::Coverage::Primitive *a6)
{
  {
    v30 = RB::debug_BOOL("RB_EXACT_BLUR", v29);
  }

  {
    return 0;
  }

  v13 = 0.0;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v14 = RB::AffineTransform::scale(a2) * a3;
  v15 = *(this + 44);
  if (v15 > 4)
  {
    if (v15 - 6 < 3)
    {
      v18 = *this;
      v17 = *(this + 1);
      *(a6 + 31) = *(this + 31);
      *a6 = v18;
      *(a6 + 1) = v17;
      v13 = *(this + 9);
      goto LABEL_15;
    }

    if (v15 != 5)
    {
      if (v15 - 9 < 3)
      {
        abort();
      }

      goto LABEL_17;
    }

    if (*(this + 8) != 1.0)
    {
      return 0;
    }

    v23 = *this;
    v24 = *(this + 1);
    *(a6 + 31) = *(this + 31);
    *a6 = v23;
    *(a6 + 1) = v24;
    v25 = *(this + 9);
    if ((*(this + 4) + *(this + 4)) >= v25)
    {
      v26 = *(this + 9);
    }

    else
    {
      v26 = *(this + 4) + *(this + 4);
    }

    if (v25 > 0.0)
    {
      v13 = v26;
    }

    else
    {
      v13 = *(this + 4) + *(this + 4);
    }

LABEL_17:
    if ((*(this + 46) & 4) != 0)
    {
      v14 = sqrtf((v14 * v14) + (*(a6 + 10) * *(a6 + 10)));
      *(a6 + 10) = v14;
    }

    else
    {
      *(a6 + 10) = v14;
      *(a6 + 46) |= 4u;
    }

    v20 = v14 + v14;
    if (v13 < v20)
    {
      *a4 = (*a4 * v13) / v20;
    }

    goto LABEL_23;
  }

  if (v15 >= 2)
  {
    if (v15 - 3 < 2)
    {
      if (*(this + 8) == 1.0 && *(this + 9) <= 0.0)
      {
        v16 = *this;
        v17 = *(this + 1);
        *(a6 + 31) = *(this + 31);
        *a6 = v16;
        *(a6 + 1) = v17;
        v13 = fminf(COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 1))));
LABEL_15:
        *&v17 = (v14 + v14) * (v14 + v14);
        v19 = vsqrtq_f32(vmlaq_f32(vdupq_lane_s32(*&v17, 0), *(a6 + 1), *(a6 + 1)));
LABEL_16:
        *(a6 + 1) = v19;
        goto LABEL_17;
      }

      return 0;
    }

    if (v15 == 2)
    {
      if (*(this + 9) <= 0.0)
      {
        v27 = *this;
        v28 = *(this + 1);
        *(a6 + 31) = *(this + 31);
        *a6 = v27;
        *(a6 + 1) = v28;
        *(a6 + 44) = 3;
        *&v27 = *(this + 1);
        v13 = fminf(*&v27, *(&v27 + 1));
        *&v27 = sqrtf((v14 + v14) * (v14 + v14));
        v19 = vdupq_lane_s32(*&v27, 0);
        goto LABEL_16;
      }

      return 0;
    }

    goto LABEL_17;
  }

  v21 = *this;
  v22 = *(this + 1);
  *(a6 + 31) = *(this + 31);
  *a6 = v21;
  *(a6 + 1) = v22;
LABEL_23:
  if (a5)
  {
    if (*(a6 + 44))
    {
      if (*(a6 + 44) == 1)
      {
        *(a6 + 44) = 0;
      }

      else
      {
        *(a6 + 46) = *(a6 + 46) & 0xFE | ((*(a6 + 46) & 1) == 0);
      }
    }

    else
    {
      *(a6 + 44) = 1;
    }
  }

  *(a6 + 46) |= 2u;
  return 1;
}

float RB::DisplayList::Interpolator::Contents::animation_max_duration(RB::DisplayList::Interpolator::Contents *this, unsigned int a2)
{
  if (!a2)
  {
    return 1.0;
  }

  result = 0.0;
  if (a2 <= 0xFFFFFFFD)
  {
    v3 = *(this + 13);
    v4 = *(v3 + 40 * (a2 - 1));
    if (v4)
    {
      v5 = (v3 + 40 * (a2 - 1) + 12);
      do
      {
        v6 = *v5;
        v5 += 10;
        v7 = v6;
        if (result < v6)
        {
          result = v7;
        }

        --v4;
      }

      while (v4);
    }
  }

  return result;
}

BOOL RB::DisplayList::Interpolator::Layer::is_fade(RB::DisplayList::Interpolator::Layer *this)
{
  if (*(this + 250))
  {
    return 0;
  }

  if (*(this + 248) != 1 || !*(this + 46))
  {
    return 1;
  }

  if ((*(this + 48) & 0xDC) != 0)
  {
    return 0;
  }

  return (*(this + 48) & 0x20) == 0;
}

unint64_t RB::DisplayList::ShadowStyle::make_primitive(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5, float _S0, float a7)
{
  _S8 = a7;
  v52 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 68);
  if (v13 == 0.5)
  {
    v14 = *(a2 + 8);
    __asm { FCVT            H0, S0 }

    v20 = *(a1 + 72);
    v21 = *(a1 + 74);
    v22 = *(a1 + 76);
    v23 = *(a1 + 78) * _H0;
    v24 = *(a1 + 80);
    v25 = *(a1 + 82);
    v26 = *(a1 + 84);
    v27 = *(*(a2 + 280) + 156);
    v28 = (v14[4] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v28 + 128 > v14[5])
    {
      v28 = RB::Heap::alloc_slow(v14 + 2, 0x80uLL, 15);
    }

    else
    {
      v14[4] = v28 + 128;
    }

    __asm { FCVT            H0, S8 }

    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 40) = 0;
    *(v28 + 32) = 0;
    *(v28 + 44) = _H0;
    *(v28 + 46) = a5 & 0x3F;
    *v28 = &unk_1F0A3A760;
    *(v28 + 48) = a4;
    v30 = *a3;
    v31 = a3[1];
    *(v28 + 95) = *(a3 + 31);
    *(v28 + 64) = v30;
    *(v28 + 80) = v31;
    *(v28 + 112) = v20;
    *(v28 + 114) = v21;
    *(v28 + 116) = v22;
    *(v28 + 118) = v23;
    *(v28 + 120) = v24;
    *(v28 + 122) = v25;
    if ((v26 & 0x100) != 0)
    {
      v32 = v26;
    }

    else
    {
      v32 = v27;
    }

    *(v28 + 124) = v32;
    *v28 = &unk_1F0A3BE28;
  }

  else
  {
    v48 = RBColorClear;
    _H2 = *(a1 + 76);
    __asm { FCVT            S2, H2 }

    _H3 = *(a1 + 78);
    __asm { FCVT            S3, H3 }

    v49 = vcvtq_f32_f16(*(a1 + 72)).u64[0];
    v50 = _S2;
    v51 = _S3 * _S0;
    v47[0] = 0;
    *&v47[1] = v13;
    v47[2] = 0x3FF0000000000000;
    _H0 = *(a1 + 80);
    __asm { FCVT            S0, H0 }

    RB::Fill::Gradient::Gradient(v45, (*(a2 + 8) + 16), 3, 2uLL, &v48, *(a1 + 84), v47, 256, _S0, 0.0, 0.0, 0.0, 0.0);
    v46 = *(a1 + 82);
    v39 = *(a2 + 8);
    v40 = *(*(a2 + 280) + 156);
    v28 = (v39[4] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v28 + 176 > v39[5])
    {
      v28 = RB::Heap::alloc_slow(v39 + 2, 0xB0uLL, 15);
    }

    else
    {
      v39[4] = v28 + 176;
    }

    __asm { FCVT            H0, S8 }

    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 40) = 0;
    *(v28 + 32) = 0;
    *(v28 + 44) = _H0;
    *(v28 + 46) = a5 & 0x3F;
    *v28 = &unk_1F0A3A430;
    *(v28 + 48) = a4;
    v42 = *a3;
    v43 = a3[1];
    *(v28 + 95) = *(a3 + 31);
    *(v28 + 64) = v42;
    *(v28 + 80) = v43;
    RB::Fill::Gradient::Gradient((v28 + 112), v45, v40, (v39 + 2));
    *v28 = &off_1F0A3BAF8;
  }

  return v28;
}

uint64_t RB::DisplayList::Interpolator::Layer::Layer(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0x400000000;
  *(a1 + 176) = a2[22];
  a2[22] = 0;
  *(a1 + 184) = *(a2 + 46);
  *(a2 + 46) = 0;
  LODWORD(v4) = *(a1 + 188);
  *(a1 + 188) = *(a2 + 47);
  *(a2 + 47) = v4;
  RB::vector<RB::DisplayList::Interpolator::Op,4ul,unsigned int>::swap_inline((a1 + 16), a2 + 1);
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x200000000;
  *(a1 + 232) = a2[29];
  a2[29] = 0;
  *(a1 + 240) = *(a2 + 60);
  *(a2 + 60) = 0;
  v5 = *(a1 + 244);
  *(a1 + 244) = *(a2 + 61);
  *(a2 + 61) = v5;
  RB::vector<RB::Rect,2ul,unsigned int>::swap_inline((a1 + 200), (a2 + 25));
  *(a1 + 248) = *(a2 + 62);
  return a1;
}

void sub_195D4C758(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 176);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int>,RB::DisplayList::Interpolator::Layer*>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 33 * v2 + v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 33 * v2 + v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

__int128 *RB::vector<RB::Rect,2ul,unsigned int>::swap_inline(__int128 *result, __int128 *a2)
{
  v2 = *(a2 + 4);
  v3 = *(result + 4);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = result[1];
    *a2 = *result;
    a2[1] = v7;
    *result = v6;
    result[1] = v5;
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      *(result + 4) = 0;
      if (v2)
      {
        return result;
      }
    }

    *(a2 + 4) = 0;
  }

  return result;
}

__int128 *RB::vector<RB::DisplayList::Interpolator::Op,4ul,unsigned int>::swap_inline(__int128 *result, __int128 *a2)
{
  v2 = *(a2 + 20);
  v3 = *(result + 20);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v18 = a2[6];
    v19 = a2[7];
    v20 = a2[8];
    v21 = a2[9];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = a2[5];
    v12 = *a2;
    v13 = a2[1];
    v5 = result[1];
    *a2 = *result;
    a2[1] = v5;
    v6 = result[2];
    v7 = result[3];
    v8 = result[5];
    a2[4] = result[4];
    a2[5] = v8;
    a2[2] = v6;
    a2[3] = v7;
    v9 = result[6];
    v10 = result[7];
    v11 = result[9];
    a2[8] = result[8];
    a2[9] = v11;
    a2[6] = v9;
    a2[7] = v10;
    result[6] = v18;
    result[7] = v19;
    result[8] = v20;
    result[9] = v21;
    result[2] = v14;
    result[3] = v15;
    result[4] = v16;
    result[5] = v17;
    *result = v12;
    result[1] = v13;
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      *(result + 20) = 0;
      if (v2)
      {
        return result;
      }
    }

    *(a2 + 20) = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

unint64_t *RB::DisplayList::Interpolator::Op::set_type(unint64_t *result, unsigned __int8 a2)
{
  if (a2 < 4u)
  {
    if (a2 == 3)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFF0 | 4;
    }

    else
    {
      v3 = *result & 0xFFFFFFFFFFFFFFF0;
      v2 = v3 | 2;
      v4 = v3 | 3;
      if (a2 >= 2u)
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = *result & 0xFFFFFFFFFFFFFFF0 | 5;
  }

  *result = v2;
  return result;
}

void RB::DisplayList::Interpolator::Object::~Object(RB::DisplayList::Interpolator::Object *this)
{
  *this = &unk_1F0A3DB48;
  v2 = *(this + 48);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 41);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    free(v6);
  }

  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::~__hash_table(this + 56);

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A3DB48;
  v2 = *(this + 48);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 41);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    free(v6);
  }

  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::~__hash_table(this + 56);
}

uint64_t RB::Refcount<RB::DisplayList::Interpolator::Object,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::pair<unsigned int,unsigned int> const,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::pair<unsigned int,unsigned int> const,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v3 = *(v2 + 232);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 176);
    if (v4)
    {
      free(v4);
    }

    MEMORY[0x19A8C09E0](v2, 0x1020C40C2C913D3);
  }

  return a1;
}

float64x2_t RB::ContextDelegate::get_transform@<Q0>(float64x2_t *a1@<X8>)
{
  Info = CGContextDelegateGetInfo();
  v3 = *(Info + 512);
  v4 = vmulq_n_f64(*(Info + 448), v3);
  v5 = vmulq_n_f64(*(Info + 464), v3);
  result = vmulq_n_f64(*(Info + 480), v3);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

uint64_t RB::ContextDelegate::draw_image_(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, const char *a7, CGImage *a8, float64x2_t *a9, int a10)
{
  Info = CGContextDelegateGetInfo();
  RB::ContextDelegate::update(Info, a7, a6, 0);
  [*(Info + 8) setRect:{a1, a2, a3, a4}];
  if (a9)
  {
    Width = CGImageGetWidth(a8);
    Height = CGImageGetHeight(a8);
    v23.f32[0] = Width;
    v23.f32[1] = Height;
    v24.f32[0] = a1;
    v25 = a2;
    v26.f32[0] = a3;
    v27 = a4;
    v28 = vcvt_f32_f64(a9[1]);
    v24.f32[1] = v25 + v27;
    v26.f32[1] = -v27;
    *&v29 = vdiv_f32(vmul_f32(v23, v26), v28);
    *&v30 = vsub_f32(v24, vdiv_f32(vmul_f32(v26, vcvt_f32_f64(*a9)), v28));
    v60 = v30;
    v61 = v29;
    v31 = *(&v29 + 1);
    v32 = *(&v30 + 1);
  }

  else
  {
    *&v20 = a1;
    v60 = v20;
    v33 = a2;
    *&v21 = a3;
    v61 = v21;
    v34 = a4;
    v32 = v33 + v34;
    v31 = -v34;
  }

  v35 = CGGStateGetInterpolationQuality() - 1;
  if (v35 > 3)
  {
    v36 = 7;
  }

  else
  {
    v36 = dword_195E455F0[v35];
  }

  v37 = 1065353216;
  v38 = 1065353216;
  v39 = 1065353216;
  v40 = 1065353216;
  CGGStateGetAlpha();
  v42 = v41;
  if (!*(Info + 424))
  {
    v42 = *(Info + 520) * v42;
  }

  v63 = v42;
  CompositeOperation = CGGStateGetCompositeOperation();
  if (CompositeOperation > 0x1B)
  {
    v44 = 0;
  }

  else
  {
  }

  v45 = v32;
  v46 = v31;
  if (CGImageIsMask(a8))
  {
    FillColor = CGGStateGetFillColor();
    if (CGColorGetPattern(FillColor))
    {
      v56 = *(Info + 16);
      v64 = *&v61;
      v65 = 0;
      v66 = 0;
      v67 = v46;
      v68 = *&v60;
      v69 = v45;
      LODWORD(v52) = 1065353216;
      LODWORD(v53) = 1065353216;
      LODWORD(v54) = 1065353216;
      LODWORD(v55) = 1065353216;
      [v56 setImage:a8 transform:&v64 interpolation:v36 tintColor:0 flags:{v52, v53, v54, v55}];
      if (a10)
      {
        [*(Info + 16) setHeadroom:0.0];
      }

      RB::ContextDelegate::mask_color_in_shape(Info, FillColor, a7, a6, v44, v63);
      return 0;
    }

    v47 = RBColorFromCGColor2(FillColor, *(Info + 592));
    v37 = LODWORD(v47);
    v38 = LODWORD(v48);
    v39 = LODWORD(v49);
    v40 = LODWORD(v50);
    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  v58 = *(Info + 16);
  v64 = *&v61;
  v65 = 0;
  v66 = 0;
  v67 = v46;
  v68 = *&v60;
  v69 = v45;
  LODWORD(v47) = v37;
  LODWORD(v48) = v38;
  LODWORD(v49) = v39;
  LODWORD(v50) = v40;
  [v58 setImage:a8 transform:&v64 interpolation:v36 tintColor:v57 flags:{v47, v48, v49, v50, v60, v61}];
  if (a10)
  {
    [*(Info + 16) setHeadroom:0.0];
  }

  RBDrawingStateDrawShape(*(Info + 504), *(Info + 8), *(Info + 16), v44, v63);
  return 0;
}

uint64_t RBDrawingStateSetDefaultColorSpace(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  result = rb_color_space(a2);
  *(a1 + 156) = result;
  v6 = *(v4 + 320);
  if (v6)
  {
    *(v6 + 112) = a2;
  }

  return result;
}

uint64_t RB::ContextDelegate::draw_rects(uint64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  Info = CGContextDelegateGetInfo();
  if (a4 >= 2 && CGGStateGetLineDash())
  {
    return 1006;
  }

  RB::ContextDelegate::update(Info, a3, a2, 0);
  if (a6)
  {
    v14 = a4 == 1 || a4 == 4;
    v15 = (a5 + 16);
    do
    {
      if (a4 == 2 || ([*(Info + 8) setRect:{*(v15 - 2), *(v15 - 1), *v15, v15[1]}], objc_msgSend(*(Info + 8), "setEOFill:", v14), FillColor = CGGStateGetFillColor(), RB::ContextDelegate::set_color_in_shape(Info, FillColor, a3, a2, 1), a4 >= 2))
      {
        RBDrawingStateGetCTM(*(Info + 504), &v19);
        CGGStateGetAdjustedLineWidth();
        [*(Info + 8) setStrokedRect:*(v15 - 2) lineWidth:{*(v15 - 1), *v15, v15[1], v17}];
        StrokeColor = CGGStateGetStrokeColor();
        RB::ContextDelegate::set_color_in_shape(Info, StrokeColor, a3, a2, 1);
      }

      v15 += 4;
      --a6;
    }

    while (a6);
  }

  return 0;
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 12587009)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Primitive::can_mix(a1 + 64, a3, a4 + 64);
        if (result)
        {
          v12 = result;
          can_mix = RB::ImageTexture::can_mix((a1 + 112), (a4 + 112));
          if (can_mix)
          {
            v14 = can_mix;
            v15 = RB::Fill::ImageData::can_mix((a1 + 128), (a4 + 128));
            if (v15 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v15;
            }
          }

          else
          {
            v16 = 0;
          }

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, v16);
        }
      }
    }
  }

  return result;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::min_scale(uint64_t a1)
{
  result = RB::Coverage::Path::min_scale((a1 + 56), *(a1 + 48));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t RB::Coverage::Primitive::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 45) != *(a3 + 45) || ((*(a3 + 46) ^ *(a1 + 46)) & 3) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 44);
  v5 = *(a3 + 44);
  if (v4 != v5)
  {
    v7 = v5 >= v4 ? *(a1 + 44) : *(a3 + 44);
    if (v7 != 2)
    {
      return 0;
    }

    if (v4 <= v5)
    {
      v4 = *(a3 + 44);
    }

    if (v4 - 3 > 1)
    {
      return 0;
    }
  }

  v6 = vand_s8(vceq_f32(*(a1 + 8), *(a3 + 8)), vceq_f32(*a1, *a3));
  if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) == 0 || *(a1 + 32) != *(a3 + 32))
  {
    return 1;
  }

  if ((vminvq_u32(vceqq_f32(*(a1 + 16), *(a3 + 16))) & 0x80000000) != 0 && *(a1 + 36) == *(a3 + 36) && *(a1 + 40) == *(a3 + 40))
  {
    return 4;
  }

  return 2;
}

float RB::Coverage::Path::min_scale(RB::Coverage::Path *this, const RB::AffineTransform *a2)
{
  result = 0.0;
  if (*(this + 29) == 1)
  {
    return 1.0;
  }

  return result;
}

uint64_t RB::Fill::ImageData::can_mix(float32x2_t *this, float32x2_t *a2)
{
  v2 = vand_s8(vceq_f32(this[1], a2[1]), vceq_f32(*this, *a2));
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  if (this[10].u16[1] != a2[10].u16[1])
  {
    return 0;
  }

  if (this[2].f32[0] != a2[2].f32[0] || this[2].f32[1] != a2[2].f32[1] || this[3].f32[0] != a2[3].f32[0] || this[3].f32[1] != a2[3].f32[1] || !RB::ProjectionMatrix::operator==(&this[4], &a2[4]))
  {
    return 2;
  }

  v6 = this[10].u8[1];
  v7 = a2[10].u8[1];
  if (v6 == v7 && this[10].i8[1])
  {
    if (this[10].u8[0] == a2[10].u8[0])
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v7)
    {
      return 2;
    }

    goto LABEL_17;
  }

  if (v6 != v7 && this[10].i8[1])
  {
    goto LABEL_16;
  }

LABEL_17:
  if (*&this[8].i16[2] == *&a2[8].i16[2] && *&this[8].i16[3] == *&a2[8].i16[3] && *this[9].i16 == *a2[9].i16 && *&this[9].i16[1] == *&a2[9].i16[1] && *&this[9].i16[2] == *&a2[9].i16[2] && *&this[9].i16[3] == *&a2[9].i16[3])
  {
    return 4;
  }

  return 2;
}

void RB::DisplayList::CachedTransform::transform_scale(RB::DisplayList::CachedTransform *this)
{
  if (*(this + 287) == 0.0)
  {
    *(this + 287) = RB::AffineTransform::scale(this + 68);
  }
}

uint64_t RB::ImageTexture::can_mix(RB::ImageTexture *this, const RB::ImageTexture *a2)
{
  if (*this == *a2 && *(this + 2) == *(a2 + 2))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 4198401)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Primitive::can_mix((a1 + 8), a3, (a4 + 8));
        if (result)
        {
          v12 = result;
          can_mix = RB::Fill::Color::can_mix((a1 + 14), (a4 + 14));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(size_t *a1, RB::Heap *a2, __int128 *a3, uint64_t *a4, uint64_t *a5, __int16 *a6, _WORD *a7)
{
  v13 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v13 + 176 > a1[3])
  {
    v13 = RB::Heap::alloc_slow(a1, 0xB0uLL, 15);
  }

  else
  {
    a1[2] = v13 + 176;
  }

  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  *(v13 + 44) = v15;
  *(v13 + 46) = v16 & 0x3F;
  *v13 = &unk_1F0A3A430;
  *(v13 + 48) = v14;
  v17 = *a3;
  v18 = a3[1];
  *(v13 + 95) = *(a3 + 31);
  *(v13 + 64) = v17;
  *(v13 + 80) = v18;
  RB::Fill::Gradient::Gradient((v13 + 112), a4, 0, a2);
  *v13 = &off_1F0A3BAF8;
  return v13;
}

void RB::max_cached_glyph_mask_area()
{
  if (__cxa_guard_acquire(&qword_1ED6D5490))
  {
    v1 = RB::debug_float("RB_MAX_GLYPH_MASK_AREA", v0);
    v2 = *&v1;
    if ((v1 & 0x100000000) == 0)
    {
      v2 = 20000.0;
    }

    qword_1ED6D5488 = *&v2;

    __cxa_guard_release(&qword_1ED6D5490);
  }
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>::copy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *(a1 + 46) & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), (a1 + 64), (a1 + 112), (a1 + 48), (a1 + 44), &v6);
  result = *(a1 + 16);
  v4[1] = result;
  v4[2].n128_u64[0] = *(a1 + 32);
  v4[2].n128_u32[2] = *(a1 + 40);
  v4[2].n128_u16[7] |= *(a1 + 46) & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float RB::ColorMatrix::remove_alpha_factor(float16x4_t *this, char a2)
{
  if ((RB::ColorMatrix::is_diagonal(this) & 1) != 0 || (is_alpha_multiply = RB::ColorMatrix::is_alpha_multiply(this, a2), result = 1.0, is_alpha_multiply))
  {
    _H0 = this[3].i16[3];
    this[3].i16[3] = COERCE_UNSIGNED_INT(1.0);
    __asm { FCVT            S0, H0 }
  }

  return result;
}

void *RB::details::realloc_vector<unsigned long,8ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 8 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(8 * a5);
    v9 = v8 >> 3;
    if (v8 >> 3 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 8 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 10) + (*(__dst + 10) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 10) + (*(__dst + 10) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 8), __dst, 8uLL, __dst + 10, v3);
  *(__dst + 8) = result;
  return result;
}

void RB::anonymous namespace::shared_surface_queue()
{
  if (__cxa_guard_acquire(&qword_1ED6D5590))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    _MergedGlobals_10 = dispatch_queue_create("com.apple.RenderBox.SharedSurface", v0);

    __cxa_guard_release(&qword_1ED6D5590);
  }
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, unsigned int a5)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a4);
  v7.i64[1] = SHIDWORD(a4);
  v8 = *(v6 + 16);
  v9 = vaddq_f64(*(v6 + 32), vcvtq_f64_s64(v7));
  v11[0] = *v6;
  v11[1] = v8;
  v11[2] = v9;
  v10 = *(a1 + 88);
  RB::Path::ImmediateRenderer::ImmediateRenderer(v12, a3, v11, (a1 + 56));
  RB::Path::Renderer::render_coverage(v16, a5, v10);
  if (v15 == 1)
  {
    RB::Path::Accumulator::commit_buffer(&v13);
  }

  if (v14)
  {
    free(v14);
  }
}

void sub_195D4E03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a47)
  {
    free(a47);
  }

  _Unwind_Resume(exception_object);
}

char *RB::Path::Accumulator::push_back(char *this, double a2, double a3)
{
  v5 = this;
  if (this[281] == 2)
  {
    if (this[280] == 1)
    {
      v6 = *(this + 34);
      v7 = 8 * v6;
      v8 = this + 120;
      v9 = *(this + 31);
      v10 = *(this + 32);
      if (v9)
      {
        v8 = *(this + 31);
      }

      if ((8 * v6 + 32) <= *&v8[32 * v10 - 16])
      {
LABEL_8:
        if (!v9)
        {
          v9 = (v5 + 15);
        }

        v11 = (*(*&v9[32 * v10 - 32] + 56) + *&v9[32 * v10 - 24] + v7);
        v12 = &v11[1];
        if (v6)
        {
          if (v5[36] != v6)
          {
LABEL_18:
            *v12 = a3;
            ++v5[34];
            return this;
          }

          v12 = &v11[2];
          v11[1] = vneg_f32(0x7F0000007FLL);
          v13 = 2;
          v14 = 3;
        }

        else
        {
          v13 = 1;
          v14 = 2;
        }

        *v12 = a2;
        v12 = &v11[v14];
        v5[34] += v13;
        goto LABEL_18;
      }

      RB::Path::Accumulator::commit_buffer(this);
    }

    this = RB::Path::Accumulator::new_buffer(v5);
    v6 = v5[34];
    v9 = v5[31];
    v10 = v5[32];
    v7 = 8 * v6;
    goto LABEL_8;
  }

  return RB::Path::FlattenedConsumer::push_back(this);
}

uint64_t RB::Path::Flattener::lineto(uint64_t result, float64x2_t a2)
{
  v3 = *(result + 80);
  v4 = vcvt_f32_f64(a2);
  *(result + 80) = v4;
  v5 = vceq_f32(*&v3, v4);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v6 = result;
    v7 = vminnm_f32(*&v3, v4);
    v8 = vmaxnm_f32(*&v3, v4);
    v9 = vmaxnm_f32(*(result + 64), v8);
    *(result + 56) = vminnm_f32(*(result + 56), v7);
    *(result + 64) = v9;
    v10 = vorr_s8(vcgt_f32(*(result + 24), v8), vcgt_f32(v7, *(result + 32)));
    if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0)
    {

      return RB::Path::Flattener::push_cropped(result, v3, v4);
    }

    else
    {
      result = (*(**(result + 8) + 24))(*(result + 8));
      *(v6 + 88) = 0;
    }
  }

  return result;
}

uint64_t RB::Path::Flattener::push_cropped(uint64_t a1, double a2, float32x2_t a3)
{
  if (*(a1 + 88) == 1)
  {
    v6 = vorr_s8(vcgt_f32(*(a1 + 24), vmaxnm_f32(*(a1 + 96), a3)), vcgt_f32(vminnm_f32(*(a1 + 96), a3), *(a1 + 32)));
    if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
    {
      if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
      {
        a2 = *(a1 + 96);
      }
    }
  }

  result = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, *&a3);
  *(a1 + 88) = 1;
  *(a1 + 96) = a2;
  return result;
}

uint64_t RB::Path::Accumulator::pop_back(RB::Path::Accumulator *this)
{
  if (*(this + 280) != 1)
  {
    return 0;
  }

  v1 = *(this + 34);
  if (!v1)
  {
    return 0;
  }

  *(this + 34) = v1 - 1;
  if (*(this + 281) == 4)
  {
    v2 = this + 120;
    if (*(this + 31))
    {
      v2 = *(this + 31);
    }

    v3 = (*(*&v2[32 * *(this + 32) - 32] + 56) + *&v2[32 * *(this + 32) - 24] + 32 * (v1 - 1));
    v4 = *(v3 - 8);
    v5 = *v3;
    if (v4 == v5)
    {
      *(this + 34) = v1 - 2;
    }

    *(this + 74) = v5;
  }

  return 1;
}

void RB::Path::Renderer::render_coverage(uint64_t a1, unsigned int a2, float a3)
{
  v5 = &unk_1F0A37810;
  v6 = a3;
  v7 = a2;
  may_discard_shape = RB::may_discard_shape(a2, *(a1 + 9));
  RB::Path::Renderer::resolve(a1, &v5, may_discard_shape);
}

int32x2_t *RB::Path::Renderer::render_coverage(float,RB::BlendMode)::Paint::fill(uint64_t a1, float32x2_t **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v7 = a4;
  a4.i32[0] = 0;
  v9 = *a2;
  v10 = vceq_s32(a5, 0x8000000080000000);
  v11 = vdup_lane_s32(vcgt_s32(a4, vpmin_u32(v10, v10)), 0);
  RB::Coverage::set_plane(&v22, *a2, vbsl_s8(v11, 0x100000001000000, vcvt_f32_s32(v7)), COERCE_DOUBLE(vbsl_s8(v11, vneg_f32(0x80000000800000), vcvt_f32_s32(a5))));
  _S0 = *(a1 + 8);
  __asm { FCVT            H0, S0 }

  WORD6(v23) = _S0;
  RB::RenderFrame::alloc_buffer_region(*(*v9 + 16), 0x20, 4uLL, 0, &v24);
  v17 = v24;
  if (v24)
  {
    v18 = (*(v24 + 7) + v25.i64[0]);
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
  }

  else
  {
    v24 = 0;
    v25 = 0uLL;
  }

  v9[24].i32[0] = RB::RenderFrame::buffer_id(*(*v9 + 16), v17);
  *(&v9[24] + 4) = vmovn_s64(v25);
  v20 = 17;
  if (v9[16].i32[1] == 2)
  {
    v20 = 131089;
  }

  return RB::RenderPass::draw_indexed_primitives(v9, (v20 & 0xFFFFFFFFFFFF003FLL | ((a3 & 0x3FF) << 6) | ((*(a1 + 12) & 0x3F) << 32)), 4, **(*v9 + 16) + 136, 4uLL, 1uLL, v7, a5);
}

void sub_195D4E69C(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDrawable initWithDevice:];
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::anonymous namespace::create_plane_dict(RB::_anonymous_namespace_ *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7)
{
  v17[7] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696CFE8];
  v13 = MEMORY[0x19A8C0630](*MEMORY[0x1E696CFE8], a3 * this, a3, a4, a5, a6, a7);
  result = 0;
  *a5 = a2 * v13;
  if (is_mul_ok(a2, v13))
  {
    v15 = *MEMORY[0x1E696D0B8];
    *a5 = MEMORY[0x19A8C0630](*MEMORY[0x1E696D0B8]);
    v16[0] = *MEMORY[0x1E696D0C8];
    v17[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:this];
    v16[1] = *MEMORY[0x1E696D090];
    v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v16[2] = v12;
    v17[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
    v16[3] = *MEMORY[0x1E696D0B0];
    v17[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    v16[4] = v15;
    v17[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*a5];
    v16[5] = *MEMORY[0x1E696D060];
    v17[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
    v16[6] = *MEMORY[0x1E696CFE0];
    v17[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];
  }

  return result;
}

uint64_t RB::Path::Mapper::elt_quadto(uint64_t a1, float64x2_t *a2, float64x2_t a3, float64x2_t a4)
{
  if (a2)
  {
    v4 = a2[1];
    a4 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a4.f64[0]), v4, a4, 1);
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a3.f64[0]), v4, a3, 1);
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    return RB::Path::Mapper::quadto(a1, a3, a4);
  }

  *(v5 + 32) = a4;
  *(v5 + 64) = 0;
  return (*(**(v5 + 16) + 32))();
}

uint64_t RB::Path::Mapper::quadto(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  *(a1 + 32) = a3;
  *(a1 + 64) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3[1];
    a2 = vmlaq_laneq_f64(vmlaq_n_f64(v3[2], *v3, a2.f64[0]), v4, a2, 1);
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(v3[2], *v3, a3.f64[0]), v4, a3, 1);
  }

  return (*(**(a1 + 8) + 32))(a2, a3);
}

float32x2_t RB::Path::BoundingRect::quadto(float32x2_t *a1, float64x2_t a2, float64x2_t a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int32x4_t a8)
{
  v9 = vcvt_f32_f64(a2);
  v10 = vcvt_f32_f64(a3);
  *a5.i8 = a1[3];
  v11 = COERCE_DOUBLE(vminnm_f32(*a5.i8, v10));
  v12 = vmaxnm_f32(*a5.i8, v10);
  v13 = vcge_f32(v12, v9);
  v14 = vand_s8(v13, vcge_f32(v9, *&v11));
  *a6.i8 = vpmin_u32(v14, v14);
  if ((a6.i32[0] & 0x80000000) == 0)
  {
    *&a2.f64[0] = a1[3];
    v11 = RB::Path::quadratic_bounds_slow(a2, v9, v10, a5, a6, *&v13, a8);
  }

  result = vminnm_f32(a1[1], *&v11);
  v16 = vmaxnm_f32(a1[2], v12);
  a1[1] = result;
  a1[2] = v16;
  a1[3] = v10;
  return result;
}

double RB::Path::quadratic_bounds_slow(int8x16_t a1, float32x2_t a2, float32x2_t a3, int8x16_t a4, int8x16_t a5, double a6, int32x4_t a7)
{
  a4.i64[0] = a1.i64[0];
  v7 = vadd_f32(a2, a2);
  v8 = vadd_f32(vsub_f32(a3, v7), *a1.i8);
  *a1.i8 = vminnm_f32(*a1.i8, a3);
  *a7.i8 = vceqz_f32(v8);
  if ((vpmin_u32(*a7.i8, *a7.i8).u32[0] & 0x80000000) == 0)
  {
    v9 = vrecpe_f32(v8);
    v10 = vmul_f32(vrecps_f32(v8, v9), v9);
    *a5.i8 = vmul_f32(vrecps_f32(v8, v10), vmul_f32(vsub_f32(*a4.i8, a2), v10));
    __asm { FMOV            V16.4S, #-1.0 }

    v19 = vbslq_s8(vcltzq_s32(a7), _Q16, a5);
    v16 = vdupq_n_s32(0x358637BDu);
    v17.i64[0] = 0x4000000040000000;
    v17.i64[1] = 0x4000000040000000;
    v18 = vbslq_s8(vcltzq_s32(vcgtq_f32(v16, v19).u64[0]), v17, v19).u64[0];
    *v19.f32 = vand_s8(vcgt_f32(v18, *v16.f32), vcgt_f32(vdup_n_s32(0x3F7FFFEFu), v18));
    if ((vpmax_u32(*v19.f32, *v19.f32).u32[0] & 0x80000000) != 0)
    {
      __asm { FMOV            V7.2S, #1.0 }

      v21 = vsub_f32(_D7, v18);
      *a4.i8 = vminnm_f32(*a1.i8, vmla_f32(vmul_f32(vmul_f32(v18, v18), a3), v21, vmla_f32(vmul_f32(v18, v7), *a4.i8, v21)));
      a1.i64[0] = vbslq_s8(vcltzq_s32(v19), a4, a1).u64[0];
    }
  }

  return *a1.i64;
}

uint64_t RBPathEqualToPath(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == a4)
  {
    if (a1 == a3)
    {
      return 1;
    }

    v10 = *(a2 + 32);
    if (*(a2 + 2))
    {
      if (v10)
      {

        return v10();
      }
    }

    else if (v10)
    {

      return v10();
    }

LABEL_25:
    RB::Path::Storage::Storage(&v15, 0x440);
    v18 = 0;
    v21.var0 = v7;
    v21.var1 = v6;
    RB::Path::Storage::append_path(&v15, v21);
    v12 = a4[3];
    if (*(a4 + 2))
    {
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = (v12)(a3, &v15, RBPathEqualToPath::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a4);
    }

    else
    {
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = v12(a3, &v15, RBPathEqualToPath::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
    }

    if (!v13)
    {
      v8 = 0;
LABEL_36:
      RB::Path::Storage::~Storage(&v15);
      return v8;
    }

LABEL_31:
    if (v16)
    {
      v14 = v17;
    }

    else
    {
      v14 = (v16 >> 8) & 0xFFF;
    }

    v8 = v18 >= v14;
    goto LABEL_36;
  }

  if (a2 == &empty_path_callbacks)
  {
    if (a1 == 1)
    {
      return a3 == 1 && a4 == &empty_path_callbacks;
    }

    a1 = a3;
    a2 = a4;
  }

  else
  {
    if (a4 != &empty_path_callbacks)
    {
      goto LABEL_25;
    }

    if (a3 == 1)
    {
      return 0;
    }
  }

  return RBPathIsEmpty(a1, a2);
}

BOOL RB::Path::Storage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = (v2 >> 8) & 0xFFF;
  }

  v4 = *(a2 + 8);
  v5 = (v4 >> 8) & 0xFFF;
  if (v4)
  {
    v5 = *(a2 + 24);
  }

  if (v3 != v5 || ((v4 ^ v2) & 0x3E) != 0)
  {
    return 0;
  }

  if (v2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    v7 = (a1 + 16);
    v8 = (v2 >> 8) & 0xFFF;
  }

  v11 = *(a2 + 16);
  v9 = (a2 + 16);
  v10 = v11;
  if (v4)
  {
    v9 = v10;
  }

  return memcmp(v7, v9, v8) == 0;
}

void *RBPathMix@<X0>(RBPath a1@<0:X0, 8:X1>, RBPath a2@<0:X2, 8:X3>, float a3@<S0>, float64x2_t *this@<X4>, float64x2_t *a5@<X5>, float64x2_t *a6@<X6>, void *a7@<X8>)
{
  var1 = a1.var1;
  var0 = a1.var0;
  v29 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0 || (v12 = a2.var1, v13 = a2.var0, a1.var0 == a2.var0) && a1.var1 == a2.var1)
  {
    v14 = *(a1.var1 + 1);
    if (v14)
    {
      a1.var0 = v14(a1.var0);
      var0 = a1.var0;
    }

    *a7 = var0;
    a7[1] = var1;
  }

  else
  {
    if (a3 != 1.0)
    {
      v21 = 0;
      v22 = 0;
      v19 = 0u;
      v20 = 0u;
      v24 = 0u;
      v23 = 128;
      v25 = 256;
      v26 = 0;
      v28 = 0;
      v27 = 0;
      *v18 = a3;
      v18[1] = RB::AffineTransform::scale(this);
      v18[2] = RB::AffineTransform::scale(a5);
      *&v18[3] = 1.0 / RB::AffineTransform::scale(a6);
      v16 = *(var1 + 3);
      if (*(var1 + 2))
      {
        if (v16)
        {
          (v16)(var0, v18, RBPathMix(RBPath,RBPath,float,RB::AffineTransform const&,RB::AffineTransform const&,RB::AffineTransform const&)::$_0::__invoke<void *,RBPathElement,double const*,void const*>, var1);
        }
      }

      else if (v16)
      {
        v16(var0, v18, RBPathMix(RBPath,RBPath,float,RB::AffineTransform const&,RB::AffineTransform const&,RB::AffineTransform const&)::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
      }

      operator new();
    }

    v15 = *(a2.var1 + 1);
    if (v15)
    {
      a1.var0 = v15(a2.var0);
      v13 = a1.var0;
    }

    *a7 = v13;
    a7[1] = v12;
  }

  return a1.var0;
}

uint64_t RBPathCopyInterpolatedPath(RBPath a1, RBPath a2, float a3)
{
  v5[0] = xmmword_195E42760;
  v5[1] = xmmword_195E42770;
  v6 = 0;
  v7 = 0;
  RBPathMix(a1, a2, a3, v5, v5, v5, &v4);
  return v4;
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList17CustomEffectStyleEJRKNS_12CustomShader7ClosureERPNS2_5LayerERKDv2_fSD_RKNS_4RectERKjEEEPT_DpOT0_(size_t *a1, const RB::CustomShader::Closure *a2, uint64_t *a3, double *a4, double *a5, _OWORD *a6, int *a7)
{
  v13 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 272 > a1[3])
  {
    v13 = RB::Heap::alloc_slow(a1, 0x110uLL, 7);
  }

  else
  {
    a1[2] = v13 + 272;
  }

  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a7;

  return RB::DisplayList::CustomEffectStyle::CustomEffectStyle(v13, a2, v14, a6, v17, v15, v16);
}

double RB::DisplayList::State::add_custom_effect(__n128 *a1, RB::DisplayList::Builder *a2, const RB::CustomShader::Closure *a3, uint64_t a4, _OWORD *a5, int a6, double a7, double a8)
{
  v15 = a4;
  v13 = a8;
  v14 = a7;
  v12 = a6;
  v10 = _ZN2RB4Heap7emplaceINS_11DisplayList17CustomEffectStyleEJRKNS_12CustomShader7ClosureERPNS2_5LayerERKDv2_fSD_RKNS_4RectERKjEEEPT_DpOT0_((*(a2 + 1) + 16), a3, &v15, &v14, &v13, a5, &v12);
  *&result = RB::DisplayList::State::add_style(a1, a2, v10).n128_u64[0];
  return result;
}

uint64_t RB::DisplayList::CustomEffectStyle::CustomEffectStyle(uint64_t a1, const RB::CustomShader::Closure *a2, uint64_t a3, _OWORD *a4, int a5, double a6, double a7)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_1F0A397D0;
  RB::CustomShader::Closure::Closure((a1 + 56), a2);
  *(a1 + 232) = a6;
  v14 = (a1 + 232);
  *(a1 + 224) = a3;
  *(a1 + 240) = a7;
  *(a1 + 248) = *a4;
  *(a1 + 264) = a5;
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = *(v15 + 36);
    if (v16 == 3)
    {
      *v14 = 0;
      *(a1 + 240) = 0;
      if (*(a2 + 18))
      {
        v22 = *(a2 + 17) ? *(a2 + 17) : (a2 + 8);
        if (*v22 == 1 && (*(v22 + 9) & 1) == 0 && *(v22 + 6) == 1)
        {
          v23 = RB::CustomShader::Value::data_ptr(v22);
          v24 = vld1_dup_f32(v23);
          *v14 = v24;
        }
      }
    }

    else if (v16 == 1)
    {
      __asm { FMOV            V0.2S, #4.0 }

      *(a1 + 232) = _D0;
      *(a1 + 264) = a5 | 0x28;
    }
  }

  return a1;
}

void sub_195D4F3CC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 224);
  *(v1 + 224) = 0;
  if (v3)
  {
    RB::DisplayList::CustomEffectStyle::CustomEffectStyle(v3);
  }

  RB::CustomShader::Closure::~Closure((v1 + 56));
  _Unwind_Resume(a1);
}

void RB::DisplayList::CustomEffectStyle::map_roi(RB::DisplayList::CustomEffectStyle *this, float32x2_t *a2, float64x2_t *a3)
{
  v3 = vcge_f32(vabs_f32(a2[1]), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    if (!*(this + 28) || (*(this + 264) & 0x10) != 0)
    {
      v7 = vmvn_s8(vceqz_f32(*(this + 232)));
      if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
      {
        return;
      }

      RB::Rect::move(a2, a3, *(this + 2));
      v8 = vabs_f32(*(this + 232));
      *v10.i8 = *a2;
      *v9.i8 = a2[1];
      *v11.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v9.i8);
      *v12.i8 = vsub_f32(*a2, v8);
      v13 = vcltzq_s32(v11);
      *a2 = vbslq_s8(v13, v12, v10).u64[0];
      *v12.i8 = vmla_f32(*v9.i8, 0x4000000040000000, v8);
      v6 = vbslq_s8(v13, v12, v9).u64[0];
    }

    else
    {
      *a2 = 0x100000001000000;
      v6 = vneg_f32(0x80000000800000);
    }

    a2[1] = v6;
  }
}

unint64_t RB::DisplayList::Contents::decode(RB::DisplayList::Contents *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 3)
      {
        if (v6 == 1)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::DisplayList::Layer::decode((this + 320), a2, 0);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          goto LABEL_17;
        }

        if (v6 != 3)
        {
          goto LABEL_12;
        }

        v7 = *(a2 + 9);
        if (!v7)
        {
          goto LABEL_12;
        }

        v8 = RB::ProtobufDecoder::data_field(a2, v5);
        (**v7)(v7, v8, v9);
      }

      else
      {
        if (v6 == 4)
        {
          RB::ProtobufDecoder::uuid_field(a2, v5, a2 + 12);
          goto LABEL_17;
        }

        if (v6 == 5)
        {
          *(this + 424) = RB::ProtobufDecoder::uint_field(a2, v5) == 0;
          goto LABEL_17;
        }

        if (v6 != 15)
        {
LABEL_12:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_17;
        }

        RB::Decoder::push_shared(a2, v5);
      }

LABEL_17:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::ProtobufDecoder::uuid_field(char **a1, uint64_t a2, _OWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = RB::ProtobufDecoder::data_field(a1, a2);
  if (v5 == 36)
  {
    v7 = *v4;
    v8 = *(v4 + 1);
    v12 = *(v4 + 8);
    *in = v7;
    v11 = v8;
    v13 = 0;
    if (uuid_parse(in, &v9))
    {
      uuid_clear(&v9);
    }

    v6 = v9;
  }

  else
  {
    if (v5 != 16)
    {
      return;
    }

    v6 = *v4;
  }

  *a3 = v6;
}

void *RB::ProtobufDecoder::begin_message(void *this)
{
  v1 = this;
  v2 = this[5];
  v3 = v2 + 1;
  if (this[6] < (v2 + 1))
  {
    this = RB::vector<unsigned long,0ul,unsigned long>::reserve_slow((this + 4), v3);
    v2 = *(v1 + 40);
    v3 = v2 + 1;
  }

  v4 = *(v1 + 8);
  *(*(v1 + 32) + 8 * v2) = v4;
  *(v1 + 40) = v3;
  v5 = *v1;
  if (*v1 >= v4)
  {
LABEL_7:
    v7 = 0;
    *(v1 + 56) = 1;
    *v1 = v4;
    v8 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v5 + 1;
      *v1 = v5 + 1;
      v9 = *v5;
      v7 |= (v9 & 0x7F) << v6;
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v5 = v8;
      if (v8 == v4)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = __CFADD__(v8, v7);
  v11 = &v8[v7];
  if (v10 || v11 > v4)
  {
    *(v1 + 56) = 1;
    *v1 = v4;
  }

  else
  {
    *(v1 + 8) = v11;
  }

  return this;
}

unint64_t RB::DisplayList::Layer::decode(RB::DisplayList::Layer *this, size_t **a2, RB::DisplayList::Layer::Effect *a3)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v7 = result;
    do
    {
      switch((v7 >> 3))
      {
        case 1u:
          if ((v7 & 7) != 2)
          {
            goto LABEL_49;
          }

          RB::ProtobufDecoder::begin_message(a2);
          v9 = RB::DisplayList::Item::decode(a2, v8);
          if (v9)
          {
            RB::DisplayList::Layer::append_item(this, v9);
          }

          goto LABEL_32;
        case 2u:
          if ((v7 & 7) != 2)
          {
            goto LABEL_49;
          }

          RB::ProtobufDecoder::begin_message(a2);
          v20 = RB::DisplayList::LayerFilter::decode(a2, v19);
          if (v20)
          {
            RB::DisplayList::Layer::append_filter(this, v20);
          }

          goto LABEL_32;
        case 3u:
          if (!a3)
          {
            goto LABEL_21;
          }

          if ((v7 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::DisplayList::Layer::Effect::decode(a3, a2);
LABEL_32:
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
LABEL_49:
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          break;
        case 4u:
          *(this + 16) = RB::ProtobufDecoder::float_field(a2, v7);
          break;
        case 5u:
          v15 = *(this + 19) | RB::ProtobufDecoder::BOOL_field(a2, v7);
          goto LABEL_46;
        case 6u:
          _ZF = RB::ProtobufDecoder::BOOL_field(a2, v7) == 0;
          v10 = 4;
          goto LABEL_36;
        case 7u:
          _ZF = RB::ProtobufDecoder::BOOL_field(a2, v7) == 0;
          v10 = 8;
          goto LABEL_36;
        case 8u:
          _ZF = RB::ProtobufDecoder::BOOL_field(a2, v7) == 0;
          v10 = 2;
LABEL_36:
          if (_ZF)
          {
            v10 = 0;
          }

          goto LABEL_45;
        case 9u:
          if (RB::ProtobufDecoder::BOOL_field(a2, v7))
          {
            v10 = 512;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_45;
        case 0xAu:
          if (RB::ProtobufDecoder::BOOL_field(a2, v7))
          {
            v10 = 1024;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_45;
        case 0xBu:
          if (RB::ProtobufDecoder::BOOL_field(a2, v7))
          {
            v10 = 32;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_45;
        case 0xCu:
          _S0 = RB::ProtobufDecoder::float_field(a2, v7);
          __asm { FCVT            H0, S0 }

          *(this + 43) = LOWORD(_S0);
          break;
        case 0xDu:
          if (RB::ProtobufDecoder::BOOL_field(a2, v7))
          {
            v10 = 64;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_45;
        case 0xEu:
          _S0 = RB::ProtobufDecoder::float_field(a2, v7);
          __asm { FCVT            H0, S0 }

          *(this + 44) = LOWORD(_S0);
          break;
        case 0xFu:
          if (RB::ProtobufDecoder::BOOL_field(a2, v7))
          {
            v10 = 128;
          }

          else
          {
            v10 = 0;
          }

LABEL_45:
          v15 = *(this + 19) | v10;
LABEL_46:
          *(this + 19) = v15;
          break;
        case 0x10u:
          v16 = a2[8];
          v17 = ((v16[2] + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v17 + 48 > v16[3])
          {
            v17 = RB::Heap::alloc_slow(v16, 0x30uLL, 7);
          }

          else
          {
            v16[2] = v17 + 48;
          }

          *(v17 + 1) = 0u;
          *(v17 + 2) = 0u;
          *v17 = 0u;
          if ((v7 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::AnimationSequencer::decode(v17, a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          *(this + 5) = v17;
          break;
        default:
LABEL_21:
          RB::ProtobufDecoder::skip_field(a2, v7);
          break;
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t RB::DisplayList::Item::decode(size_t **this, RB::Decoder *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v53 = *MEMORY[0x1E69E9840];
  memset(v50, 0, sizeof(v50));
  _S8 = 1.0;
  v7 = 2;
  while (1)
  {
    v8 = v3;
    field = RB::ProtobufDecoder::next_field(this);
    v10 = field;
    if (!field)
    {
      break;
    }

    v11 = field >> 3;
    if ((field >> 3) <= 4)
    {
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          RB::Heap::emplace<RB::DisplayList::BackdropColorMatrixItem>(this[8]);
          v3 = v25;
          if ((v10 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(this);
            RB::DisplayList::BackdropColorMatrixItem::decode(v3, this);
            RB::ProtobufDecoder::end_message(this);
            goto LABEL_42;
          }

LABEL_78:
          *(this + 56) = 1;
          *this = this[1];
          if (v8)
          {
LABEL_43:
            (**v8)(v8);
          }
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_68;
          }

          _S8 = RB::ProtobufDecoder::float_field(this, field);
        }
      }

      else if (v11 == 1)
      {
        v15 = RB::AffineTransform::identity(field);
        v52.type = 0;
        v51.type = 0;
        if ((v10 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(this);
          for (i = RB::ProtobufDecoder::next_field(this); i; i = RB::ProtobufDecoder::next_field(this))
          {
            v23 = i >> 3;
            if ((i >> 3) == 3)
            {
              RB::Decoder::affine_transform_field(this, i);
              v15 = v24;
            }

            else
            {
              if (v23 == 2)
              {
                if ((i & 7) != 2)
                {
LABEL_39:
                  *(this + 56) = 1;
                  *this = this[1];
                  continue;
                }

                RB::ProtobufDecoder::begin_message(this);
                RBFillData::decode(&v51, this);
              }

              else
              {
                if (v23 != 1)
                {
                  RB::ProtobufDecoder::skip_field(this, i);
                  continue;
                }

                if ((i & 7) != 2)
                {
                  goto LABEL_39;
                }

                RB::ProtobufDecoder::begin_message(this);
                RBShapeData::decode(&v52, this);
              }

              RB::ProtobufDecoder::end_message(this);
            }
          }

          RB::ProtobufDecoder::end_message(this);
        }

        else
        {
          *(this + 56) = 1;
          *this = this[1];
        }

        v43[0] = this[8];
        v43[1] = v15;
        v43[2] = 0x23F800000;
        v44 = 0;
        v45 = 0;
        v46 = &v51;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        RBShapeData::apply<RB::DisplayList::ItemFactory>(&v52, v43, v16, v17, v18, v19, v20, v21);
        v3 = v49;
        if (v8)
        {
          (**v8)(v8);
        }

        RBFillData::~RBFillData(&v51);
        RBShapeData::~RBShapeData(&v52);
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_68;
        }

        v52.type = 1;
        LODWORD(v43[0]) = 2;
        *&v51.type = 0;
        RB::Heap::emplace<RB::DisplayList::LayerItem,int,RB::BlendMode,decltype(nullptr)>(this[8], &v52.type, v43);
        v3 = v14;
        if ((v10 & 7) != 2)
        {
          goto LABEL_78;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::LayerItem::decode(v3, this);
        RB::ProtobufDecoder::end_message(this);
LABEL_42:
        if (v8)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v11 <= 6)
    {
      if (v11 == 5)
      {
        v29 = RB::ProtobufDecoder::uint_field(this, field);
        v7 = rb_blend_mode(v29);
      }

      else
      {
        if (v11 == 6)
        {
          v5 = RB::Decoder::shared_field_f<RB::DisplayList::ClipNode,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1}>(this, field, 4, &v51);
          goto LABEL_77;
        }

LABEL_68:
        RB::ProtobufDecoder::skip_field(this, field);
      }
    }

    else
    {
      switch(v11)
      {
        case 7:
          v26 = this[9];
          if (v26 && (v27 = (*(*v26 + 32))(v26)) != 0)
          {
            if ((v10 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(this);
              RB::DisplayList::decode_metadata(this, v27, &v50[4], v50, v28);
              RB::ProtobufDecoder::end_message(this);
              v3 = v8;
            }

            else
            {
LABEL_76:
              *(this + 56) = 1;
              *this = this[1];
LABEL_77:
              v3 = v8;
            }
          }

          else
          {
            RB::ProtobufDecoder::skip_field(this, v10);
            v3 = v8;
          }

          break;
        case 8:
          if ((field & 7) != 2)
          {
LABEL_75:
            v4 = 0;
            goto LABEL_76;
          }

          RB::ProtobufDecoder::begin_message(this);
          v30 = 0;
          v31 = 0;
          v32 = RB::ProtobufDecoder::next_field(this);
          if (v32)
          {
            do
            {
              if ((v32 >> 3) == 2)
              {
                v41 = *this;
                RB::ProtobufDecoder::skip_field(this, v32);
                v31 = v32;
              }

              else if ((v32 >> 3) == 1)
              {
                v30 = RB::ProtobufDecoder::uint_field(this, v32);
              }

              else
              {
                RB::ProtobufDecoder::skip_field(this, v32);
              }

              v32 = RB::ProtobufDecoder::next_field(this);
            }

            while (v32);
            if (v30 >> 61)
            {
              RB::ProtobufDecoder::end_message(this);
              goto LABEL_75;
            }
          }

          *&v51.type = 0;
          v4 = RB::UntypedTable::lookup((this + 10), (v30 | 0xA000000000000000), &v51);
          v33 = v41;
          if ((v30 | 0xA000000000000000) != *&v51.type)
          {
            if (!v31)
            {
              RB::Decoder::saved_shared_field(this, 5, v30, &v51, v41);
              LOBYTE(v31) = v51.data[12];
              if (!*&v51.data[12])
              {
LABEL_65:
                RB::UntypedTable::insert((this + 10), (v30 | 0xA000000000000000), v4);
                goto LABEL_66;
              }

              v33 = *&v51.type;
            }

            v41 = *this;
            *this = v33;
            if ((v31 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(this);
              v4 = RB::DisplayList::decode_style_list(this, v34);
              RB::ProtobufDecoder::end_message(this);
            }

            else
            {
              *(this + 56) = 1;
            }

            *this = v41;
            goto LABEL_65;
          }

LABEL_66:
          RB::ProtobufDecoder::end_message(this);
          v3 = v8;
          if (!v4)
          {
            goto LABEL_75;
          }

          break;
        case 9:
          v42 = 1;
          *&v51.type = 0;
          *&v52.type = 0;
          v43[0] = RB::AffineTransform::identity(field);
          v3 = RB::Heap::emplace<RB::DisplayList::DetachedLayerItem,int,RB::BlendMode,decltype(nullptr),decltype(nullptr),RB::AffineTransform const*,int>(this[8], &v42, v12);
          if ((v10 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(this);
            RB::DisplayList::DetachedLayerItem::decode(v3, this);
            RB::ProtobufDecoder::end_message(this);
            if ((this[7] & 1) != 0 || *this > this[1])
            {
              goto LABEL_11;
            }

            goto LABEL_42;
          }

          *(this + 56) = 1;
          *this = this[1];
LABEL_11:
          v13 = *(v3 + 56);
          v3 = v8;
          if (v13)
          {
            v3 = v8;
            if (atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              [RBDisplayList moveContents];
              goto LABEL_77;
            }
          }

          break;
        default:
          goto LABEL_68;
      }
    }
  }

  if (v3 && (this[7] & 1) == 0 && *this <= this[1])
  {
    __asm { FCVT            H0, S8 }

    *(v3 + 44) = _H0;
    *(v3 + 46) = *(v3 + 46) & 0xFFC0 | v7 & 0x3F;
    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
    *(v3 + 32) = *&v50[4];
    *(v3 + 40) = *v50;
  }

  return v3;
}

unint64_t RBShapeData::decode(RBShapeData *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    v6 = &this->data[12];
    v7 = vneg_f32(0x80000000800000);
    do
    {
      v8 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v8 == 1)
        {
          RBShapeData::apply<RB::DestroyAny>(&this->type);
          *v6 = 0u;
          *&this->data[28] = 0u;
          *&this->data[44] = 1065353216;
          *&this->data[52] = 0;
          *&this->data[56] = 2;
          this->data[58] &= 0xF8u;
          this->type = 1;
          if ((v5 & 7) != 2)
          {
LABEL_23:
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
            goto LABEL_20;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::Coverage::Primitive::decode(&this->data[12], a2);
        }

        else
        {
          if (v8 != 2)
          {
LABEL_22:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_20;
          }

          RBShapeData::apply<RB::DestroyAny>(&this->type);
          this->type = 0;
          *v6 = RBPathEmpty;
          *&this->data[28] = 0;
          *&this->data[34] = 0;
          this->type = 2;
          if ((v5 & 7) != 2)
          {
            goto LABEL_23;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::Coverage::Path::decode(&this->data[12], a2);
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            *v10 = RBPathEmpty;
            memset(&v10[2], 0, 32);
            v9 = *(a2 + 8);
            RBShapeData::apply<RB::DestroyAny>(&this->type);
            this->type = 0;
            *&this->data[12] = &unk_1F0A38388;
            RB::Coverage::StrokeablePath::StrokeablePath(&this->data[20], v10, v9);
            *&this->data[68] = 0x100000001000000;
            *&this->data[76] = v7;
            *&this->data[84] = 251658752;
            LOBYTE(this[1].type) = 0;
            *this[1].data = 1092616192;
            this->type = 3;
            RBPathRelease(v10[0], v10[1]);
            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::Coverage::StrokeablePath::decode(&this->data[20], &this->data[12], a2);
            break;
          case 4:
            RBShapeData::apply<RB::DestroyAny>(&this->type);
            this->type = 0;
            *&this->data[12] = &unk_1F0A383A8;
            *&this->data[20] = 0;
            *&this->data[28] = 0x100000001000000;
            *&this->data[36] = v7;
            *&this->data[44] = 251658752;
            this->data[48] = 0;
            *&this->data[52] = 1092616192;
            this->type = 5;

            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RBStrokeRef::decode(&this->data[20], &this->data[12], a2);
            break;
          case 5:
            RBShapeData::apply<RB::DestroyAny>(&this->type);
            *v6 = 0u;
            *&this->data[28] = 0u;
            *&this->data[44] = 0x100000001000000;
            *&this->data[52] = v7;
            *&this->data[60] = 0;
            *&this->data[64] = 0;
            this->type = 4;
            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::Coverage::Glyphs::decode(&this->data[12], a2);
            break;
          default:
            goto LABEL_22;
        }
      }

      RB::ProtobufDecoder::end_message(a2);
LABEL_20:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

unint64_t RB::Coverage::Path::decode(RB::Coverage::Path *this, RB::Decoder *a2)
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
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RBPathDecode(a2);
          }

          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_17;
        }

        if (v6 != 2)
        {
          goto LABEL_16;
        }

        RB::Decoder::affine_transform_field(a2, v5);
        *(this + 2) = v7;
      }

      else
      {
        switch(v6)
        {
          case 3:
            *(this + 28) = RB::ProtobufDecoder::BOOL_field(a2, v5);
            break;
          case 4:
            v8 = RB::ProtobufDecoder::uint_field(a2, v5);
            if (v8 <= 4)
            {
              *(this + 29) = v8;
            }

            break;
          case 5:
            *(this + 6) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          default:
LABEL_16:
            RB::ProtobufDecoder::skip_field(a2, v5);
            break;
        }
      }

LABEL_17:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t RB::ProtobufDecoder::end_message(uint64_t this)
{
  if ((*(this + 56) & 1) == 0 && *this <= *(this + 8))
  {
    *(this + 8) = *(*(this + 32) + 8 * *(this + 40) - 8);
  }

  --*(this + 40);
  return this;
}

uint64_t RB::ProtobufDecoder::uint_field(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 & 7;
  if (v3 > 1)
  {
    if (v3 == 5)
    {
      v4 = *a1 + 4;
      if (v4 <= a1[1])
      {
        result = **a1;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v3 != 2)
    {
LABEL_16:
      result = 0;
      *(a1 + 56) = 1;
      v4 = a1[1];
      goto LABEL_21;
    }

    if (!RB::ProtobufDecoder::begin_packed(a1, a2, 0))
    {
      return 0;
    }
  }

  else if ((a2 & 7) != 0)
  {
    if (v3 == 1)
    {
      v4 = *a1 + 8;
      if (v4 <= a1[1])
      {
        result = **a1;
LABEL_21:
        *a1 = v4;
        return result;
      }

LABEL_18:
      result = 0;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v6 = *a1;
  v4 = a1[1];
  if (*a1 >= v4)
  {
LABEL_15:
    result = 0;
    *(a1 + 56) = 1;
    goto LABEL_21;
  }

  v7 = 0;
  result = 0;
  while (1)
  {
    v8 = (v6 + 1);
    *a1 = v6 + 1;
    v9 = *v6;
    result |= (v9 & 0x7F) << v7;
    if ((v9 & 0x80) == 0)
    {
      return result;
    }

    v7 += 7;
    v6 = v8;
    if (v8 == v4)
    {
      goto LABEL_15;
    }
  }
}

unint64_t RBFillData::decode(RBFillData *this, RB::Heap **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    __asm { FMOV            V9.2S, #1.0 }

    do
    {
      v11 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v11 == 1)
        {
          RBFillData::apply<RB::DestroyAny>(this);
          *&this->data[12] = 0x3C00000000000000;
          *&this->data[20] = 0;
          *&this->data[24] = 0;
          this->type = 1;
          if ((v5 & 7) != 2)
          {
LABEL_23:
            *(a2 + 56) = 1;
            *a2 = a2[1];
            goto LABEL_20;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::Fill::Color::decode(&this->data[12], a2);
        }

        else
        {
          if (v11 != 2)
          {
LABEL_22:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_20;
          }

          RBFillData::apply<RB::DestroyAny>(this);
          *&this->data[55] = 0u;
          *&this->data[28] = 0u;
          *&this->data[44] = 0u;
          *&this->data[12] = 0u;
          *&this->data[71] = 1;
          this->type = 2;
          if ((v5 & 7) != 2)
          {
            goto LABEL_23;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::Fill::Gradient::decode(&this->data[12], a2);
        }
      }

      else
      {
        switch(v11)
        {
          case 3:
            RB::ImageTexture::ImageTexture(v13, 0, 0);
            v12 = a2[8];
            RBFillData::apply<RB::DestroyAny>(this);
            this->type = 0;
            RB::ImageTexture::ImageTexture(&this->data[12], v13, v12);
            *&this->data[28] = 0;
            *&this->data[36] = _D9;
            *&this->data[44] = 0;
            *&this->data[52] = 0;
            *&this->data[60] = xmmword_195E428C0;
            *&this->data[76] = xmmword_195E428C0;
            *&this->data[92] = 1065353216;
            *&this->data[96] = 0x3C003C003C003C00;
            *&this->data[104] = 0x100000000000000;
            this->type = 4;
            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::ImageData::decode(&this->data[28], a2, &v16);
            v14 = v16;
            v15 = v17;
            RB::ImageTexture::decode(&this->data[12], a2, &v14);
            break;
          case 4:
            RBFillData::apply<RB::DestroyAny>(this);
            *&this->data[12] = 0;
            *&this->data[148] = 0;
            *&this->data[156] = 0;
            *&this->data[164] = 4;
            *&this->data[172] = 0;
            *&this->data[188] = xmmword_195E42760;
            *&this->data[204] = xmmword_195E42770;
            *&this->data[220] = 0u;
            *&this->data[236] = 0u;
            *&this->data[252] = 0;
            this->type = 5;
            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::Custom::decode(&this->data[12], a2);
            break;
          case 5:
            RBFillData::apply<RB::DestroyAny>(this);
            *&this->data[44] = 0;
            *&this->data[12] = 0u;
            *&this->data[28] = 0u;
            *&this->data[46] = COERCE_UNSIGNED_INT(1.0);
            *&this->data[48] = 0;
            *&this->data[51] = 0;
            this->data[55] = this->data[55] & 0xE0 | 0x10;
            this->data[56] = 0;
            this->type = 3;
            if ((v5 & 7) != 2)
            {
              goto LABEL_23;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::Fill::MeshGradient::decode(&this->data[12], a2);
            break;
          default:
            goto LABEL_22;
        }
      }

      RB::ProtobufDecoder::end_message(a2);
LABEL_20:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

unint64_t RB::Fill::Color::decode(RB::Fill::Color *this, RB::Decoder *a2)
{
  if ((*(this + 13) & 1) == 0)
  {
    *(this + 13) = 1;
  }

  *(this + 12) = 17;
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          _S0 = RB::ProtobufDecoder::float_field(a2, v5);
          __asm { FCVT            H0, S0 }

          *(this + 4) = LOWORD(_S0);
          goto LABEL_15;
        }

        if (v6 != 4)
        {
          goto LABEL_12;
        }

        _S0 = RB::ProtobufDecoder::float_field(a2, v5);
        __asm { FCVT            H0, S0 }

        *(this + 5) = LOWORD(_S0);
      }

      else
      {
        if (v6 == 1)
        {
          *this = RB::ProtobufDecoder::color_field(a2, v5);
          goto LABEL_15;
        }

        if (v6 != 2)
        {
LABEL_12:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_15;
        }

        v7 = RB::ProtobufDecoder::uint_field(a2, v5);
        *(this + 6) = rb_color_space(v7);
      }

LABEL_15:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}