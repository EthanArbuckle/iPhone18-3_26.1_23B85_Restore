@interface VKRunningCurve
- ($D8B2136A31EEBB1C63127827D1855744)stateAtTime:(SEL)time;
- (BOOL)hasStateAtTime:(double)time;
- (VKRunningCurve)init;
- (id).cxx_construct;
- (void)appendPosition:()Matrix<double coordinate:()3 atTime:(1>)time;
- (void)reset;
@end

@implementation VKRunningCurve

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 32) = 0;
  *(self + 5) = 0xBF80000000000000;
  *(self + 96) = 0;
  *(self + 120) = 0;
  *(self + 16) = 0xBF80000000000000;
  *(self + 184) = 0;
  *(self + 208) = 0;
  *(self + 27) = 0xBF80000000000000;
  return self;
}

- (VKRunningCurve)init
{
  v6.receiver = self;
  v6.super_class = VKRunningCurve;
  v2 = [(VKRunningCurve *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(VKRunningCurve *)v2 reset];
    v4 = v3;
  }

  return v3;
}

- (void)reset
{
  self->_t0 = -1.0;
  self->_t1 = -1.0;
  self->_tu = -1.0;
  self->_mbValid = 0;
}

- ($D8B2136A31EEBB1C63127827D1855744)stateAtTime:(SEL)time
{
  p_engaged = &self[2].var0.__engaged_;
  *&self[2].var3._e[2] = 0u;
  *&self[3].var0.var0.__null_state_ = 0u;
  v5 = self[1].var0.var0.__val_._e[1];
  if (v5 < 0.0)
  {
    v6 = *&self[2].var4;
    *&retstr->var1.index = *&self[2].var3._e[1];
    *retstr->var3._e = v6;
    *&retstr->var3._e[2] = *&self[3].var0.var0.__val_._e[1];
    v7 = *&self[2].var2;
    *&retstr->var0.var0.__null_state_ = *p_engaged;
    *&retstr->var0.var0.__val_._e[2] = v7;
    return self;
  }

  p_var4 = &self[2].var4;
  *&self[3].var0.__engaged_ = a4;
  v9 = self[2].var0.var0.__val_._e[2];
  if (v9 < 0.0)
  {
    v10 = LOBYTE(self[2].var3._e[0]);
    if (v10 == LOBYTE(self->var1.index))
    {
      if (LOBYTE(self[2].var3._e[0]))
      {
        v11 = 3;
        v12 = &self[2].var0.__engaged_;
        do
        {
          *v12 = *(v12 - 22);
          v12 += 8;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      if (v10)
      {
        v27 = 0;
      }

      else
      {
        *p_engaged = *&self->var0.var0.__val_._e[1];
        self[2].var2 = *&self->var0.__engaged_;
        v27 = 1;
      }

      LOBYTE(self[2].var3._e[0]) = v27;
    }

    *&self[2].var3._e[1] = *&self->var2;
    v34 = 3;
    do
    {
      *p_var4 = *(p_var4 - 22);
      p_var4 += 8;
      --v34;
    }

    while (v34);
LABEL_33:
    null_state = self[1].var0.var0.__null_state_;
LABEL_56:
    LOBYTE(self[3].var0.var0.__val_._e[2]) = null_state;
    v48 = *&self[2].var4;
    *&retstr->var1.index = *&self[2].var3._e[1];
    *retstr->var3._e = v48;
    v49 = *&self[2].var2;
    *&retstr->var0.var0.__null_state_ = *p_engaged;
    *&retstr->var0.var0.__val_._e[2] = v49;
LABEL_57:
    *&retstr->var3._e[2] = *&self[3].var0.var0.__val_._e[1];
    return self;
  }

  v13 = (a4 - v5) / (v9 - v5);
  if (v13 >= 1.0)
  {
    v28 = LOBYTE(self[2].var3._e[0]);
    if (v28 == LOBYTE(self[1].var2))
    {
      if (LOBYTE(self[2].var3._e[0]))
      {
        v29 = 3;
        v30 = &self[2].var0.__engaged_;
        do
        {
          *v30 = *(v30 - 11);
          v30 += 8;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      if (v28)
      {
        v36 = 0;
      }

      else
      {
        *p_engaged = *&self[1].var0.var0.__val_._e[2];
        *&self[2].var2 = self[1].var1;
        v36 = 1;
      }

      LOBYTE(self[2].var3._e[0]) = v36;
    }

    *&self[2].var3._e[1] = *self[1].var3._e;
    v47 = 3;
    do
    {
      *p_var4 = *(p_var4 - 11);
      p_var4 += 8;
      --v47;
    }

    while (v47);
    null_state = LOBYTE(self[2].var0.var0.__val_._e[1]);
    goto LABEL_56;
  }

  if (v13 <= 0.0)
  {
    v31 = LOBYTE(self[2].var3._e[0]);
    if (v31 == LOBYTE(self->var1.index))
    {
      if (LOBYTE(self[2].var3._e[0]))
      {
        v32 = 3;
        v33 = &self[2].var0.__engaged_;
        do
        {
          *v33 = *(v33 - 22);
          v33 += 8;
          --v32;
        }

        while (v32);
      }
    }

    else
    {
      if (v31)
      {
        v46 = 0;
      }

      else
      {
        *p_engaged = *&self->var0.var0.__val_._e[1];
        self[2].var2 = *&self->var0.__engaged_;
        v46 = 1;
      }

      LOBYTE(self[2].var3._e[0]) = v46;
    }

    *&self[2].var3._e[1] = *&self->var2;
    v50 = 3;
    do
    {
      *p_var4 = *(p_var4 - 22);
      p_var4 += 8;
      --v50;
    }

    while (v50);
    goto LABEL_33;
  }

  if (LOBYTE(self[4].var3._e[0]) != 1)
  {
    if ((LOBYTE(self[1].var2) & 1) == 0)
    {
      goto LABEL_63;
    }

    v37 = 0;
    v58 = *&self->var0.var0.__val_._e[1];
    v59 = *&self->var0.__engaged_;
    do
    {
      *(&v58 + v37 * 8) = *(&v58 + v37 * 8) + (self[1].var0.var0.__val_._e[v37 + 2] - *(&v58 + v37 * 8)) * v13;
      ++v37;
    }

    while (v37 != 3);
    v21 = v59;
    v38 = LOBYTE(self[2].var3._e[0]);
    *&self[2].var0.__engaged_ = v58;
    self[2].var2 = v21;
    if ((v38 & 1) == 0)
    {
      v38 = 1;
      LOBYTE(self[2].var3._e[0]) = 1;
    }

    v39 = 3;
    do
    {
      *p_var4 = *(p_var4 - 11);
      p_var4 += 8;
      --v39;
    }

    while (v39);
    LOBYTE(self[3].var0.var0.__val_._e[2]) = LOBYTE(self[2].var0.var0.__val_._e[1]);
    v40 = *&self[1].var1 * 0.0000000249532021;
    v56 = *&self[1].var0.var0.__val_._e[2];
    v57 = v40;
    if ((v38 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_44:
    v41 = 0;
    v54 = *p_engaged;
    v55 = v21 * 0.0000000249532021;
    do
    {
      *(&v58 + v41) = *(&v56 + v41) - *(&v54 + v41);
      v41 += 8;
    }

    while (v41 != 24);
    v42 = 0;
    v43 = 0.0;
    do
    {
      v43 = v43 + *(&v58 + v42) * *(&v58 + v42);
      v42 += 8;
    }

    while (v42 != 24);
    self[2].var3._e[2] = sqrt(v43);
    self[2].var3._e[1] = self[1].var3._e[0];
    v44 = *&self[2].var2;
    *&retstr->var0.var0.__null_state_ = *p_engaged;
    *&retstr->var0.var0.__val_._e[2] = v44;
    v45 = *&self[2].var4;
    *&retstr->var1.index = *&self[2].var3._e[1];
    *retstr->var3._e = v45;
    goto LABEL_57;
  }

  v14 = v13 * v13 * v13;
  v15 = *&self[3].var1.index;
  v16 = *&self[3].var3._e[1];
  v17 = *&self[4].var0.var0.__null_state_;
  v18 = self[3].var3._e[0];
  v19 = *&self[3].var4;
  v20 = self[4].var0.var0.__val_._e[2];
  v21 = self[4].var2 + v18 * v14 + v19 * (v13 * v13) + v20 * v13;
  *&self[2].var0.__engaged_ = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*&self[4].var0.__engaged_, v15, v14), v16, v13 * v13), v17, v13);
  self[2].var2 = v21;
  v22 = LOBYTE(self[2].var3._e[0]);
  if ((v22 & 1) == 0)
  {
    v22 = 1;
    LOBYTE(self[2].var3._e[0]) = 1;
  }

  v23 = v13 * v13 * 3.0;
  v24 = v13 + v13;
  *&self[2].var4 = vmlaq_n_f64(vmlaq_n_f64(v17, v15, v23), v16, v24);
  self[3].var0.var0.__val_._e[1] = v20 + v18 * v23 + v19 * v24;
  var2_low = LOBYTE(self[1].var2);
  LOBYTE(self[3].var0.var0.__val_._e[2]) = LOBYTE(self[2].var0.var0.__val_._e[1]);
  if (var2_low)
  {
    v26 = *&self[1].var1 * 0.0000000249532021;
    v56 = *&self[1].var0.var0.__val_._e[2];
    v57 = v26;
    if (v22)
    {
      goto LABEL_44;
    }
  }

LABEL_63:
  v51 = std::__throw_bad_optional_access[abi:nn200100]();
  return [(VKRunningCurve *)v51 hasStateAtTime:v52, v53];
}

- (BOOL)hasStateAtTime:(double)time
{
  t0 = self->_t0;
  result = t0 >= 0.0 && (t1 = self->_t1, t1 >= 0.0) && (self->_tu - t0) / (t1 - t0) <= 1.0;
  return result;
}

- (void)appendPosition:()Matrix<double coordinate:()3 atTime:(1>)time
{
  v5 = time._e[2];
  if (self->_t0 >= 0.0)
  {
    if (self->_t1 >= 0.0)
    {
      tu = self->_tu;
      if (tu >= 0.0)
      {
        engaged = self->_p0.position.__engaged_;
        if (engaged == self->_pu.position.__engaged_)
        {
          if (self->_p0.position.__engaged_)
          {
            *&self->_p0.position.var0.__null_state_ = *&self->_pu.position.var0.__null_state_;
            self->_p0.position.var0.__val_._e[2] = self->_pu.position.var0.__val_._e[2];
          }
        }

        else
        {
          if (engaged)
          {
            v48 = 0;
          }

          else
          {
            *&self->_p0.position.var0.__null_state_ = *&self->_pu.position.var0.__null_state_;
            self->_p0.position.var0.__val_._e[2] = self->_pu.position.var0.__val_._e[2];
            v48 = 1;
          }

          self->_p0.position.__engaged_ = v48;
        }

        *&self->_p0.coordinate.index = *&self->_pu.coordinate.index;
        self->_p0.tangent = self->_pu.tangent;
        self->_p0.tangentValid = self->_pu.tangentValid;
        self->_t0 = tu;
      }

      self->_t1 = a5;
      self->_p1.position.var0.__val_._e[0] = time._e[0];
      self->_p1.position.var0.__val_._e[1] = time._e[1];
      self->_p1.position.var0.__val_._e[2] = v5;
      v49 = self->_p1.position.__engaged_;
      if (!v49)
      {
        v49 = 1;
        self->_p1.position.__engaged_ = 1;
      }

      self->_p1.coordinate = a4;
      if (!self->_p0.position.__engaged_)
      {
        goto LABEL_100;
      }

      for (i = 0; i != 3; ++i)
      {
        v97.n128_f64[i] = self->_p1.position.var0.__val_._e[i] - self->_p0.position.var0.__val_._e[i];
      }

      v51 = 0;
      v52 = 0.0;
      do
      {
        v52 = v52 + v97.n128_f64[v51] * v97.n128_f64[v51];
        ++v51;
      }

      while (v51 != 3);
      v53 = sqrt(v52);
      v54 = exp(self->_p0.position.var0.__val_._e[1] * 6.28318531 + -3.14159265);
      v55 = atan(v54);
      v56 = v53 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v55 * 114.591559 + -90.0);
      self->_p1.tangentValid = v56 > 1.0;
      if (v56 <= 1.0)
      {
        p_tangent = &self->_p1.tangent;
        v62 = 3;
        do
        {
          p_tangent->_e[0] = p_tangent[-4]._e[1];
          p_tangent = (p_tangent + 8);
          --v62;
        }

        while (v62);
        tangentValid = self->_p0.tangentValid;
        self->_p1.tangentValid = tangentValid;
        self->_mbValid = 0;
        if (!tangentValid)
        {
          return;
        }
      }

      else
      {
        if (!v49)
        {
          goto LABEL_100;
        }

        for (j = 0; j != 3; ++j)
        {
          v97.n128_f64[j] = self->_p1.position.var0.__val_._e[j] - self->_p0.position.var0.__val_._e[j];
        }

        v58 = 0;
        v103 = v97;
        v104 = v98;
        do
        {
          v97.n128_f64[v58] = v103.n128_f64[v58] * 0.001;
          ++v58;
        }

        while (v58 != 3);
        v59 = *&v98;
        *self->_p1.tangent._e = v97;
        self->_p1.tangent._e[2] = v59;
        self->_mbValid = 0;
        tangentValid = self->_p0.tangentValid;
      }

      if (v56 <= 1.0 || !tangentValid)
      {
        return;
      }

      if (v49)
      {
        v63 = 0;
        v64 = &self->_p0.tangent;
        do
        {
          v97.n128_f64[v63] = self->_p1.position.var0.__val_._e[v63] - self->_p0.position.var0.__val_._e[v63];
          ++v63;
        }

        while (v63 != 3);
        v65 = 0;
        v66 = 0.0;
        do
        {
          v66 = v66 + v97.n128_f64[v65] * v97.n128_f64[v65];
          ++v65;
        }

        while (v65 != 3);
        v67 = 0;
        v68 = 0.0;
        do
        {
          v68 = v68 + v64->_e[v67] * v64->_e[v67];
          ++v67;
        }

        while (v67 != 3);
        v69 = sqrt(v66) * 0.5;
        if (sqrt(v68) * 0.333333333 < v69)
        {
          v70 = 0;
          v71 = 0.0;
          do
          {
            v71 = v71 + v64->_e[v70] * v64->_e[v70];
            ++v70;
          }

          while (v70 != 3);
          v69 = sqrt(v71) * 0.333333333;
        }

        v72 = gm::Matrix<double,3,1>::normalized<int,void>(v64);
        v73 = 0;
        v103.n128_f64[0] = v72;
        v103.n128_u64[1] = v74;
        v104 = v75;
        do
        {
          v97.n128_f64[v73] = v69 * 3.0 * v103.n128_f64[v73];
          ++v73;
        }

        while (v73 != 3);
        v76 = 0;
        v34 = *&v98;
        v96 = v97;
        *self->_p0.tangent._e = v97;
        self->_p0.tangent._e[2] = v34;
        v77 = &self->_p1.tangent;
        do
        {
          v97.n128_f64[v76] = self->_p1.position.var0.__val_._e[v76] - self->_p0.position.var0.__val_._e[v76];
          ++v76;
        }

        while (v76 != 3);
        v78 = 0;
        v79 = 0.0;
        do
        {
          v79 = v79 + v97.n128_f64[v78] * v97.n128_f64[v78];
          ++v78;
        }

        while (v78 != 3);
        v80 = 0;
        v81 = 0.0;
        do
        {
          v81 = v81 + v77->_e[v80] * v77->_e[v80];
          ++v80;
        }

        while (v80 != 3);
        v82 = sqrt(v79) * 0.5;
        if (sqrt(v81) * 0.333333333 < v82)
        {
          v83 = 0;
          v84 = 0.0;
          do
          {
            v84 = v84 + v77->_e[v83] * v77->_e[v83];
            ++v83;
          }

          while (v83 != 3);
          v82 = sqrt(v84) * 0.333333333;
        }

        v85 = gm::Matrix<double,3,1>::normalized<int,void>(v77);
        v86 = 0;
        v103.n128_f64[0] = v85;
        v103.n128_u64[1] = v87;
        v104 = v88;
        do
        {
          v97.n128_f64[v86] = v82 * 3.0 * v103.n128_f64[v86];
          ++v86;
        }

        while (v86 != 3);
        goto LABEL_98;
      }
    }

    else
    {
      self->_t1 = a5;
      self->_p1.position.var0.__val_ = time;
      v8 = self->_p1.position.__engaged_;
      if (!v8)
      {
        v8 = 1;
        self->_p1.position.__engaged_ = 1;
      }

      self->_p1.coordinate = a4;
      if (self->_p0.position.__engaged_)
      {
        for (k = 0; k != 3; ++k)
        {
          v97.n128_f64[k] = self->_p1.position.var0.__val_._e[k] - self->_p0.position.var0.__val_._e[k];
        }

        v10 = 0;
        v11 = 0.0;
        do
        {
          v11 = v11 + v97.n128_f64[v10] * v97.n128_f64[v10];
          ++v10;
        }

        while (v10 != 3);
        v12 = sqrt(v11);
        v13 = exp(self->_p0.position.var0.__val_._e[1] * 6.28318531 + -3.14159265);
        v14 = atan(v13);
        v15 = v12 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v14 * 114.591559 + -90.0);
        self->_p1.tangentValid = v15 > 1.0;
        self->_p0.tangentValid = v15 > 1.0;
        if (v15 <= 1.0)
        {
          self->_mbValid = 0;
          return;
        }

        if (v8)
        {
          for (m = 0; m != 3; ++m)
          {
            v97.n128_f64[m] = self->_p1.position.var0.__val_._e[m] - self->_p0.position.var0.__val_._e[m];
          }

          v17 = 0;
          v103 = v97;
          v104 = v98;
          do
          {
            v97.n128_f64[v17] = v103.n128_f64[v17] * 0.001;
            ++v17;
          }

          while (v17 != 3);
          v18 = 0;
          v19 = *&v98;
          *self->_p1.tangent._e = v97;
          v20 = &self->_p1.tangent;
          self->_p1.tangent._e[2] = v19;
          v21 = &self->_p0.tangent;
          *self->_p0.tangent._e = *self->_p1.tangent._e;
          self->_p0.tangent._e[2] = self->_p1.tangent._e[2];
          do
          {
            v97.n128_f64[v18] = self->_p1.position.var0.__val_._e[v18] - self->_p0.position.var0.__val_._e[v18];
            ++v18;
          }

          while (v18 != 3);
          v22 = 0;
          v23 = 0.0;
          do
          {
            v23 = v23 + v97.n128_f64[v22] * v97.n128_f64[v22];
            ++v22;
          }

          while (v22 != 3);
          v24 = 0;
          v25 = 0.0;
          do
          {
            v25 = v25 + v21->_e[v24] * v21->_e[v24];
            ++v24;
          }

          while (v24 != 3);
          v26 = sqrt(v23) * 0.5;
          if (sqrt(v25) * 0.333333333 < v26)
          {
            v27 = 0;
            v28 = 0.0;
            do
            {
              v28 = v28 + v21->_e[v27] * v21->_e[v27];
              ++v27;
            }

            while (v27 != 3);
            v26 = sqrt(v28) * 0.333333333;
          }

          v29 = gm::Matrix<double,3,1>::normalized<int,void>(v21);
          v30 = 0;
          v103.n128_f64[0] = v29;
          v103.n128_u64[1] = v31;
          v104 = v32;
          do
          {
            v97.n128_f64[v30] = v26 * 3.0 * v103.n128_f64[v30];
            ++v30;
          }

          while (v30 != 3);
          v33 = 0;
          v34 = *&v98;
          v96 = v97;
          *self->_p0.tangent._e = v97;
          self->_p0.tangent._e[2] = v34;
          do
          {
            v97.n128_f64[v33] = self->_p1.position.var0.__val_._e[v33] - self->_p0.position.var0.__val_._e[v33];
            ++v33;
          }

          while (v33 != 3);
          v35 = 0;
          v36 = 0.0;
          do
          {
            v36 = v36 + v97.n128_f64[v35] * v97.n128_f64[v35];
            ++v35;
          }

          while (v35 != 3);
          v37 = 0;
          v38 = 0.0;
          do
          {
            v38 = v38 + v20->_e[v37] * v20->_e[v37];
            ++v37;
          }

          while (v37 != 3);
          v39 = sqrt(v36) * 0.5;
          if (sqrt(v38) * 0.333333333 < v39)
          {
            v40 = 0;
            v41 = 0.0;
            do
            {
              v41 = v41 + v20->_e[v40] * v20->_e[v40];
              ++v40;
            }

            while (v40 != 3);
            v39 = sqrt(v41) * 0.333333333;
          }

          v42 = gm::Matrix<double,3,1>::normalized<int,void>(&self->_p1.tangent);
          v43 = 0;
          v103.n128_f64[0] = v42;
          v103.n128_u64[1] = v44;
          v104 = v45;
          do
          {
            v97.n128_f64[v43] = v39 * 3.0 * v103.n128_f64[v43];
            ++v43;
          }

          while (v43 != 3);
LABEL_98:
          v89 = *&v98;
          v90 = v97;
          *self->_p1.tangent._e = v97;
          self->_p1.tangent._e[2] = v89;
          VKPolynomialCoefficientsForHermitePolynomialWithConstraints(&v97, *&self->_p0.position.var0.__null_state_, self->_p0.position.var0.__val_._e[2], v96, v34, *&self->_p1.position.var0.__null_state_, v5, v90, v89);
          v91 = v100;
          *&self->_mb.mb[1][1] = v99;
          *&self->_mb.mb[2][0] = v91;
          v92 = v102;
          *&self->_mb.mb[2][2] = v101;
          *&self->_mb.mb[3][1] = v92;
          v93 = v98;
          *&self->_mb.mb[0][0] = v97;
          *&self->_mb.mb[0][2] = v93;
          self->_mbValid = 1;
          return;
        }
      }
    }

LABEL_100:
    v94 = std::__throw_bad_optional_access[abi:nn200100]();
    md::RasterResourceDataRequester::resolveTile(v94, v95);
    return;
  }

  self->_t0 = a5;
  v7 = self->_p0.position.__engaged_;
  self->_p0.position.var0.__val_ = time;
  if (!v7)
  {
    self->_p0.position.__engaged_ = 1;
  }

  self->_p0.coordinate = a4;
  self->_p0.tangentValid = 0;
}

@end