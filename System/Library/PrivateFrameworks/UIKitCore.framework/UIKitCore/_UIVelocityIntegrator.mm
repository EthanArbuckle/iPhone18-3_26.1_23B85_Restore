@interface _UIVelocityIntegrator
- ($821BAD5B88DA18872EDDEA81553BCF52)acceleration3D;
- ($821BAD5B88DA18872EDDEA81553BCF52)offset3D;
- ($821BAD5B88DA18872EDDEA81553BCF52)position3D;
- ($821BAD5B88DA18872EDDEA81553BCF52)velocity3D;
- (BOOL)hasVelocity;
- (CGPoint)position;
- (CGVector)acceleration;
- (CGVector)offset;
- (CGVector)velocity;
- (_UIVelocityIntegrator)init;
- (float64_t)_offset3D;
- (id).cxx_construct;
- (void)addSample3D:(id)d;
- (void)addSample3D:(id)d withTimestamp:(double)timestamp;
- (void)addSample:(CGPoint)sample;
- (void)addSample:(CGPoint)sample withTimestamp:(double)timestamp;
- (void)reset;
@end

@implementation _UIVelocityIntegrator

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (_UIVelocityIntegrator)init
{
  v3.receiver = self;
  v3.super_class = _UIVelocityIntegrator;
  result = [(_UIVelocityIntegrator *)&v3 init];
  if (result)
  {
    result->_minimumRequiredMovement = 5.0;
    result->_maxNumberOfSamples = 20;
    result->_useSampleWindowForDifferentiation = 1;
  }

  return result;
}

- (void)reset
{
  begin = self->_samples.__map_.__begin_;
  end = self->_samples.__map_.__end_;
  self->_samples.__size_ = 0;
  v5 = end - begin;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*begin);
      v6 = self->_samples.__map_.__end_;
      begin = self->_samples.__map_.__begin_ + 1;
      self->_samples.__map_.__begin_ = begin;
      v5 = v6 - begin;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 14;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = 28;
  }

  self->_samples.__start_ = v7;
LABEL_8:
  *&self->_totalTranslation.var0.x = 0u;
  *&self->_totalTranslation.var0.z = 0u;
  positionFilter = [(_UIVelocityIntegrator *)self positionFilter];
  if (positionFilter)
  {
    (*(*positionFilter[1] + 24))(positionFilter[1]);
  }

  velocityFilter = [(_UIVelocityIntegrator *)self velocityFilter];
  if (velocityFilter)
  {
    (*(*velocityFilter[1] + 24))(velocityFilter[1]);
  }

  accelerationFilter = [(_UIVelocityIntegrator *)self accelerationFilter];
  if (accelerationFilter)
  {
    (*(*accelerationFilter[1] + 24))(accelerationFilter[1]);
  }
}

- (BOOL)hasVelocity
{
  if (self)
  {
    size = self->_samples.__size_;
    if (size)
    {
      v3 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C) + 80);
    }

    else
    {
      v3 = &SPVector3DZero;
    }

    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = *(v3 + 2);
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  v7 = fabs(v5);
  return fabs(v4) >= 2.22044605e-16 || v7 >= 2.22044605e-16 || fabs(v6) >= 2.22044605e-16;
}

- (CGVector)velocity
{
  if (self)
  {
    size = self->_samples.__size_;
    if (size)
    {
      v3 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C) + 80);
    }

    else
    {
      v3 = &SPVector3DZero;
    }

    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.dy = v5;
  result.dx = v4;
  return result;
}

- (void)addSample:(CGPoint)sample withTimestamp:(double)timestamp
{
  v4[0] = sample;
  v4[1] = xmmword_18A64B720;
  [(_UIVelocityIntegrator *)self addSample3D:v4 withTimestamp:timestamp];
}

- (void)addSample:(CGPoint)sample
{
  v3[0] = sample;
  v3[1] = xmmword_18A64B720;
  [(_UIVelocityIntegrator *)self addSample3D:v3];
}

- (void)addSample3D:(id)d
{
  v4 = v3[1];
  v5[0] = *v3;
  v5[1] = v4;
  [(_UIVelocityIntegrator *)self addSample3D:v5 withTimestamp:CACurrentMediaTime()];
}

- (void)addSample3D:(id)d withTimestamp:(double)timestamp
{
  var0 = d.var0.var0;
  v6 = v4;
  v137 = *MEMORY[0x1E69E9840];
  *v130 = 0;
  *&v130[16] = SPPoint3DZero;
  *&v130[32] = unk_18A680C70;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  size = self->_samples.__size_;
  if (!size)
  {
    v19 = 0.0;
    goto LABEL_9;
  }

  v9 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C));
  v10 = v9[7];
  v134 = v9[6];
  v135 = v10;
  v136 = v9[8];
  v11 = v9[3];
  *&v130[32] = v9[2];
  v131 = v11;
  v12 = v9[5];
  v132 = v9[4];
  v133 = v12;
  v13 = v9[1];
  *v130 = *v9;
  *&v130[16] = v13;
  minimumRequiredMovement = self->_minimumRequiredMovement;
  if (vabdd_f64(*&v130[16], *v4) < minimumRequiredMovement && vabdd_f64(*&v130[24], v4[1]) < minimumRequiredMovement && vabdd_f64(*&v130[32], v4[2]) < minimumRequiredMovement)
  {
    *v130 = d.var0.var0;
    v15 = v135;
    v9[6] = v134;
    v9[7] = v15;
    v9[8] = v136;
    v16 = v131;
    v9[2] = *&v130[32];
    v9[3] = v16;
    v17 = v133;
    v9[4] = v132;
    v9[5] = v17;
    v18 = *&v130[16];
    *v9 = *v130;
    v9[1] = v18;
    return;
  }

  v19 = *v130;
  if (d.var0.var0 - *v130 >= 0.0001)
  {
LABEL_9:
    v20 = *(v4 + 1);
    v122 = *v4;
    v123 = v20;
    v121[0] = *&d.var0.var0;
    v124 = 0uLL;
    v125 = 0uLL;
    v126 = 0uLL;
    v127 = 0uLL;
    hysteresisTimeInterval = self->_hysteresisTimeInterval;
    v128 = 0uLL;
    v129 = 0uLL;
    if (hysteresisTimeInterval != 0.0 && d.var0.var0 - v19 > hysteresisTimeInterval)
    {
      [(_UIVelocityIntegrator *)self reset];
      *&v120[8] = SPPoint3DZero;
      *&v120[24] = unk_18A680C70;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      *&v130[8] = *v120;
      *&v130[24] = *&v120[16];
      v19 = 0.0;
      *v130 = 0;
      *&v130[40] = unk_18A680C78;
    }

    positionFilter = self->_positionFilter;
    v112 = v19;
    if (positionFilter)
    {
      filter = positionFilter->_filter;
      v24 = *(v6 + 1);
      *v120 = *v6;
      *&v120[16] = v24;
      (*(filter->var0 + 2))(&v118, var0);
      v25 = v119;
      *v6 = v118;
      *(v6 + 2) = v25;
      v6[3] = 1.0;
      v26 = *(v6 + 1);
      v122 = *v6;
      v123 = v26;
      v19 = v112;
    }

    v27.f64[1] = *&v130[24];
    v28 = vdupq_lane_s64(*&v130[16], 0);
    v28.f64[0] = v19;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v28), vceqzq_f64(*&v130[24]))))) & 1) == 0)
    {
      std::deque<_UIVelocityIntegratorDataSample>::push_back(&self->_samples.__map_.__first_, v121);
      *&self->_totalTranslation.var0.x = 0u;
      *&self->_totalTranslation.var0.z = 0u;
      return;
    }

    v109 = *&v130[16];
    v29 = *&v130[32];
    resetHysteresisOnSampleThetaDiff = self->_resetHysteresisOnSampleThetaDiff;
    if (resetHysteresisOnSampleThetaDiff == 0.0 || self->_samples.__size_ < 2)
    {
LABEL_27:
      v125.f64[0] = v6[2] - v29;
      v125.f64[1] = 0.0;
      v36 = *&self->_totalTranslation.var0.x;
      v37 = *&self->_totalTranslation.var0.z;
      v38 = vsubq_f64(*v6, v109);
      v124 = v38;
      v39 = self->_hysteresisTimeInterval;
      if (v39 == 0.0)
      {
        v48 = 0;
        v41 = self->_samples.__size_;
        v42 = v112;
      }

      else
      {
        begin = self->_samples.__map_.__begin_;
        v41 = self->_samples.__size_;
        v42 = v112;
        if (self->_samples.__map_.__end_ == begin || (start = self->_samples.__start_, v44 = &begin[start / 0x1C], v45 = *v44, v46 = (*v44 + 144 * (start % 0x1C)), v47 = begin[(v41 + start) / 0x1C] + 144 * ((v41 + start) % 0x1C), v46 == v47))
        {
          v48 = 0;
        }

        else
        {
          v48 = 0;
          do
          {
            if (var0 - *v46 <= v39)
            {
              break;
            }

            v46 += 18;
            if (v46 - v45 == 4032)
            {
              v49 = v44[1];
              ++v44;
              v45 = v49;
              v46 = v49;
            }

            ++v48;
          }

          while (v46 != v47);
        }
      }

      v50 = vaddq_f64(v38, v36);
      v37.f64[0] = v125.f64[0] + v37.f64[0];
      if (v41 - v48 < self->_maxNumberOfSamples)
      {
        v51 = v48;
      }

      else
      {
        v51 = v48 + 1;
      }

      if (v51)
      {
        v52 = self->_samples.__start_;
        v54 = self->_samples.__map_.__begin_;
        end = self->_samples.__map_.__end_;
        v55 = &v54[v52 / 0x1C];
        v56 = *v55;
        if (end == v54)
        {
          v57 = 0;
        }

        else
        {
          v57 = &v56[144 * (v52 % 0x1C)];
        }

        v59 = *v55;
        v60 = &v54[v52 / 0x1C];
        do
        {
          v61 = v57 + 9;
          if (&v57[9] - v59 == 4032)
          {
            v62 = v60[1];
            ++v60;
            v59 = v62;
            v61 = v62;
          }

          v50 = vsubq_f64(v50, v57[3]);
          v37.f64[0] = v37.f64[0] - v57[4].f64[0];
          v57 = v61;
          --v51;
        }

        while (v51);
        if (end == v54)
        {
          v63 = 0;
        }

        else
        {
          v63 = &v56[144 * (v52 % 0x1C)];
        }

        if (v63 == v61)
        {
          v107 = 0;
        }

        else
        {
          v107 = 28 * ((v60 - v55) >> 3) + 0x71C71C71C71C71C7 * ((v63 - v56) >> 4) - 0x71C71C71C71C71C7 * ((v61 - v59) >> 4);
        }

        v105 = v50;
        v106 = v37;
        v64 = 0;
        if (end == v54)
        {
          v65 = 0;
        }

        else
        {
          v65 = &v56[144 * (v52 % 0x1C)];
        }

        if (v63 != v65)
        {
          v64 = 0x71C71C71C71C71C7 * ((v65 - v56) >> 4) - 0x71C71C71C71C71C7 * ((v63 - v56) >> 4);
        }

        *v120 = &v54[v52 / 0x1C];
        *&v120[8] = v65;
        std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample*,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample**,long,28l>::operator+=[abi:nn200100](v120, v64);
        if (v107 >= 1)
        {
          v66 = v64;
          v68 = *&v120[8];
          v67 = *v120;
          v104 = v66;
          if (v66 <= (v41 - v107) >> 1)
          {
            std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample*,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample**,long,28l>::operator+=[abi:nn200100](v120, v107);
            if (v67 == v55)
            {
              std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, v65, v68, *v120, *&v120[8]);
            }

            else
            {
              v73 = *v67;
              v72 = (v67 - 1);
              std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, v73, v68, *v120, *&v120[8]);
              v74 = *&v120[8];
              v75 = *&v120[16];
              while (v72 != v55)
              {
                v76 = *v72--;
                std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, v76, v76 + 4032, v74, v75);
                v74 = *&v120[8];
                v75 = *&v120[16];
              }

              std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, v65, *v72 + 4032, v74, v75);
            }

            v77 = self->_samples.__size_ - v107;
            v52 = self->_samples.__start_ + v107;
            self->_samples.__start_ = v52;
            self->_samples.__size_ = v77;
            v54 = self->_samples.__map_.__begin_;
            v64 = v104;
            if (v52 >= 0x38)
            {
              do
              {
                operator delete(*v54);
                v54 = self->_samples.__map_.__begin_ + 1;
                self->_samples.__map_.__begin_ = v54;
                v52 = self->_samples.__start_ - 28;
                self->_samples.__start_ = v52;
              }

              while (v52 > 0x37);
            }
          }

          else
          {
            std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample*,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample**,long,28l>::operator+=[abi:nn200100](v120, v107);
            v69 = *&v120[8];
            v70 = &v54[(v41 + v52) / 0x1C];
            if (end == v54)
            {
              v71 = 0;
            }

            else
            {
              v71 = *v70 + 144 * ((v41 + v52) % 0x1C);
            }

            if (*v120 != v70)
            {
              v78 = (*v120 + 8);
              std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, *&v120[8], (**v120 + 4032), v67, v68);
              v67 = *&v120[8];
              v68 = *&v120[16];
              if (v78 != v70)
              {
                v79 = **&v120[8];
                v110 = &v54[(v41 + v52) / 0x1C];
                do
                {
                  v80 = 0;
                  v81 = *v78;
                  for (++v67; ; ++v67)
                  {
                    v82 = 0x8E38E38E38E38E39 * ((v79 - v68 + 4032) >> 4);
                    if ((0x8E38E38E38E38E39 * ((4032 - v80) >> 4)) < v82)
                    {
                      v82 = 0x8E38E38E38E38E39 * ((4032 - v80) >> 4);
                    }

                    v83 = 9 * v82;
                    v84 = 144 * v82;
                    if (v82)
                    {
                      memmove(v68, v81 + v80, 144 * v82);
                    }

                    v80 += 16 * v83;
                    if (v80 == 4032)
                    {
                      break;
                    }

                    v85 = *v67;
                    v79 = v85;
                    v68 = v85;
                  }

                  v68 += v84;
                  v79 = *(v67 - 1);
                  if (v79 + 4032 == v68)
                  {
                    v79 = *v67;
                    v68 = *v67;
                  }

                  else
                  {
                    --v67;
                  }

                  ++v78;
                }

                while (v78 != v110);
              }

              v69 = *v78;
            }

            std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(v120, v69, v71, v67, v68);
            v54 = self->_samples.__map_.__begin_;
            v86 = self->_samples.__map_.__end_;
            v87 = 28 * (v86 - v54) - 1;
            v52 = self->_samples.__start_;
            v88 = self->_samples.__size_ - v107;
            if (v86 == v54)
            {
              v87 = 0;
            }

            self->_samples.__size_ = v88;
            v64 = v104;
            if (v87 - (v52 + v88) >= 0x38)
            {
              do
              {
                operator delete(*(v86 - 1));
                v54 = self->_samples.__map_.__begin_;
                v86 = self->_samples.__map_.__end_ - 1;
                v89 = 28 * (v86 - v54) - 1;
                self->_samples.__map_.__end_ = v86;
                if (v86 == v54)
                {
                  v89 = 0;
                }

                v52 = self->_samples.__start_;
              }

              while (v89 - (self->_samples.__size_ + v52) > 0x37);
            }
          }
        }

        if (self->_samples.__map_.__end_ == v54)
        {
          v90 = 0;
        }

        else
        {
          v90 = v54[v52 / 0x1C] + 144 * (v52 % 0x1C);
        }

        *v120 = &v54[v52 / 0x1C];
        *&v120[8] = v90;
        std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample*,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample**,long,28l>::operator+=[abi:nn200100](v120, v64);
        v58 = *v121;
        v42 = v112;
        v50 = v105;
        v37 = v106;
      }

      else
      {
        v58 = var0;
      }

      *&self->_totalTranslation.var0.x = v50;
      *&self->_totalTranslation.var0.z = v37;
      v91 = v58 - v42;
      if (v58 - v42 <= 0.0)
      {
        goto LABEL_114;
      }

      if (self->_samples.__size_)
      {
        v92 = (self->_samples.__map_.__begin_[self->_samples.__start_ / 0x1C] + 144 * (self->_samples.__start_ % 0x1C));
        v42 = v92->f64[0];
      }

      else
      {
        v92 = v130;
      }

      useSampleWindowForDifferentiation = self->_useSampleWindowForDifferentiation;
      v113 = v42;
      if (useSampleWindowForDifferentiation)
      {
        v38.f64[0] = 1.0 / (v58 - v42);
        *&v94 = *&vmulq_f64(v37, v38);
        v95 = vmulq_n_f64(v50, v38.f64[0]);
      }

      else
      {
        v27.f64[0] = 1.0 / v91;
        *&v94 = *&vmulq_f64(v27, v125);
        v95 = vmulq_n_f64(v124, 1.0 / v91);
      }

      v96 = v92[5];
      v97 = v92[6].f64[0];
      *&v95.f64[1] = vextq_s8(v95, v95, 8uLL).u64[0];
      v126 = v95;
      v127 = *&v94;
      velocityFilter = self->_velocityFilter;
      if (velocityFilter)
      {
        v108 = v96;
        v111 = v91;
        v99 = velocityFilter->_filter;
        *v120 = v126;
        *&v120[16] = v127;
        (*(v99->var0 + 2))(&v116, var0);
        v95 = v116;
        v94 = v117;
        v126 = v116;
        v127 = *&v117;
        v96 = v108;
        v91 = v111;
        if (self->_useSampleWindowForDifferentiation)
        {
LABEL_109:
          v100 = vdivq_f64(vsubq_f64(v95, v96), vdupq_lane_s64(COERCE__INT64(v58 - v113), 0));
          v101 = (v94 - v97) / (v58 - v113);
          goto LABEL_112;
        }
      }

      else if (useSampleWindowForDifferentiation)
      {
        goto LABEL_109;
      }

      v100 = vdivq_f64(vsubq_f64(v95, v133), vdupq_lane_s64(*&v91, 0));
      v101 = (v94 - v134.f64[0]) / v91;
LABEL_112:
      v128 = v100;
      v129 = *&v101;
      accelerationFilter = self->_accelerationFilter;
      if (accelerationFilter)
      {
        v103 = accelerationFilter->_filter;
        *v120 = v128;
        *&v120[16] = v129;
        (*(v103->var0 + 2))(&v114, var0);
        v128 = v114;
        v129 = v115;
      }

LABEL_114:
      std::deque<_UIVelocityIntegratorDataSample>::push_back(&self->_samples.__map_.__first_, v121);
      return;
    }

    v31 = (self->_samples.__map_.__begin_[self->_samples.__start_ / 0x1C] + 144 * (self->_samples.__start_ % 0x1C));
    v32 = atan2(v31[3] - *&v130[24], v31[2] - *&v130[16]);
    v33 = atan2(v109.f64[1] - *(&v122 + 1), v109.f64[0] - *&v122) - v32;
    if (v33 <= 3.14159265)
    {
      if (v33 >= -3.14159265)
      {
        goto LABEL_23;
      }

      v34 = 6.28318531;
    }

    else
    {
      v34 = -6.28318531;
    }

    v33 = v33 + v34;
LABEL_23:
    if (resetHysteresisOnSampleThetaDiff < fabs(v33))
    {
      didResetHysteresisOnThetaDiffHandler = self->_didResetHysteresisOnThetaDiffHandler;
      if (didResetHysteresisOnThetaDiffHandler)
      {
        didResetHysteresisOnThetaDiffHandler[2]();
      }

      [(_UIVelocityIntegrator *)self reset];
    }

    goto LABEL_27;
  }
}

- (CGVector)offset
{
  memset(v4, 0, sizeof(v4));
  [(_UIVelocityIntegrator *)v4 _offset3D];
  v3 = *(v4 + 1);
  v2 = *v4;
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (float64_t)_offset3D
{
  result = 0.0;
  *self = 0u;
  *(self + 1) = 0u;
  if (a2)
  {
    v3 = a2[6];
    if (v3 >= 2)
    {
      v4 = a2[2];
      v5 = a2[5];
      v6 = (*(v4 + 8 * (v5 / 0x1C)) + 144 * (v5 % 0x1C));
      v7 = (*(v4 + 8 * ((v3 + v5 - 1) / 0x1C)) + 144 * ((v3 + v5 - 1) % 0x1C));
      result = v7[2].f64[0] - v6[2].f64[0];
      *self = vsubq_f64(v7[1], v6[1]);
      self[2] = result;
    }
  }

  return result;
}

- (CGPoint)position
{
  [(_UIVelocityIntegrator *)self position3D];
  v3 = 0.0;
  v2 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGVector)acceleration
{
  [(_UIVelocityIntegrator *)self acceleration3D];
  v3 = 0.0;
  v2 = 0.0;
  result.dy = v3;
  result.dx = v2;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)position3D
{
  if (self && (size = self->_samples.__size_) != 0)
  {
    v4 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C) + 16);
  }

  else
  {
    v4 = &SPPoint3DZero;
  }

  v5 = *v4;
  v6 = v4[1];
  *v2 = *v4;
  v2[1] = v6;
  result.var0.var1 = *&v6;
  result.var0.var0 = *&v5;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)velocity3D
{
  if (self)
  {
    size = self->_samples.__size_;
    if (size)
    {
      v4 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C) + 80);
    }

    else
    {
      v4 = &SPVector3DZero;
    }

    v5 = *v4;
    v6 = v4[1];
    *v2 = *v4;
    v2[1] = v6;
  }

  else
  {
    *&v5 = 0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  result.var0.var1 = *&v6;
  result.var0.var0 = *&v5;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)acceleration3D
{
  if (self && (size = self->_samples.__size_) != 0)
  {
    v4 = (self->_samples.__map_.__begin_[(size + self->_samples.__start_ - 1) / 0x1C] + 144 * ((size + self->_samples.__start_ - 1) % 0x1C) + 112);
  }

  else
  {
    v4 = &SPVector3DZero;
  }

  v5 = *v4;
  v6 = v4[1];
  *v2 = *v4;
  v2[1] = v6;
  result.var0.var1 = *&v6;
  result.var0.var0 = *&v5;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)offset3D
{
  _offset3D = [(_UIVelocityIntegrator *)v2 _offset3D];
  result.var0.var3 = v6;
  result.var0.var2 = v5;
  result.var0.var1 = v4;
  result.var0.var0 = _offset3D;
  return result;
}

@end