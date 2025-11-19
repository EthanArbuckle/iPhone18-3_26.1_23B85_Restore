uint64_t b2GearJoint::SetRatio(uint64_t this, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2GearJoint::SetRatio();
  }

  *(this + 212) = a2;
  return this;
}

void b2QuadtreeAndChainContact::b2QuadtreeAndChainContact(b2QuadtreeAndChainContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_287079428;
  if (*(*(v5[10] + 32) + 8) != 4)
  {
    b2QuadtreeAndChainContact::b2QuadtreeAndChainContact();
  }

  if (*(*(v5[11] + 32) + 8) != 3)
  {
    b2QuadtreeAndChainContact::b2QuadtreeAndChainContact();
  }
}

void b2QuadtreeAndCircleContact::b2QuadtreeAndCircleContact(b2QuadtreeAndCircleContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_2870793D8;
  if (*(*(v5[10] + 32) + 8))
  {
    b2QuadtreeAndCircleContact::b2QuadtreeAndCircleContact();
  }

  if (*(*(v5[11] + 32) + 8) != 4)
  {
    b2QuadtreeAndCircleContact::b2QuadtreeAndCircleContact();
  }
}

void b2QuadtreeAndCircleContact::Evaluate(uint64_t a1, float32x2_t *a2, float *a3, float *a4)
{
  v5 = *(a1 + 88);
  v6 = *(*(a1 + 80) + 32);
  v8 = a3[2];
  v7 = a3[3];
  v9 = *(v6 + 16);
  v10 = *(v6 + 20);
  v11 = a3[1];
  v12 = *a3 + ((v7 * v9) - (v8 * v10));
  a2[7].i32[1] = 0;
  v13 = *(v5 + 32);
  v14 = ((v7 * v10) + (v8 * v9)) + v11;
  v15 = v12 - *a4;
  v16 = v14 - a4[1];
  v18 = a4[2];
  v17 = a4[3];
  v19 = (v16 * v18) + (v17 * v15);
  v20 = (v17 * v16) - (v18 * v15);
  v35 = 0;
  v36 = 0;
  __p = 0;
  v21 = v19;
  v22 = v19 + -0.1;
  v23 = v20;
  v24 = v20 + -0.1;
  *&v21 = v21 + 0.1;
  v25 = v23 + 0.1;
  v26 = QuadTree::intersectBox(*(v13 + 16), &__p, v22, v24, *&v21, v25);
  v27 = __p;
  if (v26)
  {
    v28 = v35;
    v29 = (v35 - __p) >> 3;
    a2[7].i32[0] = 3;
    if (v29 >= 2)
    {
      LODWORD(v29) = 2;
    }

    a2[6] = *(v6 + 16);
    a2[7].i32[1] = v29;
    if (v28 != v27)
    {
      v30 = 0;
      v31 = a2 + 2;
      do
      {
        v32 = v27[v30];
        v33.i32[0] = *(v32 + 32);
        v33.i32[1] = *(v32 + 44);
        v31[-2] = vmul_f32(vadd_f32(*(v32 + 36), v33), 0x3F0000003F000000);
        v31->i32[0] = 0;
        v31 = (v31 + 20);
        ++v30;
      }

      while (v30 < a2[7].i32[1]);
    }

    a2[5] = 0;
  }

  if (v27)
  {
    v35 = v27;
    operator delete(v27);
  }
}

void sub_25E7D8704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void b2QuadtreeAndEdgeContact::b2QuadtreeAndEdgeContact(b2QuadtreeAndEdgeContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_287079478;
  if (*(*(v5[10] + 32) + 8) != 4)
  {
    b2QuadtreeAndEdgeContact::b2QuadtreeAndEdgeContact();
  }

  if (*(*(v5[11] + 32) + 8) != 1)
  {
    b2QuadtreeAndEdgeContact::b2QuadtreeAndEdgeContact();
  }
}

void b2QuadtreeAndPolygonContact::b2QuadtreeAndPolygonContact(b2QuadtreeAndPolygonContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_2870793B0;
  if (*(*(v5[10] + 32) + 8) != 4)
  {
    b2QuadtreeAndPolygonContact::b2QuadtreeAndPolygonContact();
  }

  if (*(*(v5[11] + 32) + 8) != 2)
  {
    b2QuadtreeAndPolygonContact::b2QuadtreeAndPolygonContact();
  }
}

void b2QuadtreeAndQuadtreeContact::b2QuadtreeAndQuadtreeContact(b2QuadtreeAndQuadtreeContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_287079388;
  if (*(*(v5[10] + 32) + 8) != 4)
  {
    b2QuadtreeAndQuadtreeContact::b2QuadtreeAndQuadtreeContact();
  }

  if (*(*(v5[11] + 32) + 8) != 4)
  {
    b2QuadtreeAndQuadtreeContact::b2QuadtreeAndQuadtreeContact();
  }
}

void b2Joint::Create(b2Joint *this, const b2JointDef *a2)
{
  var0 = this->var0;
  if (SLODWORD(this->var0) > 5)
  {
    if (var0 <= 7)
    {
      if (var0 == 6)
      {
        operator new();
      }

      if (var0 == 7)
      {
        operator new();
      }
    }

    else
    {
      switch(var0)
      {
        case 8:
          operator new();
        case 9:
          operator new();
        case 10:
          operator new();
      }
    }
  }

  else if (var0 <= 2)
  {
    if (var0 == 1)
    {
      operator new();
    }

    if (var0 == 2)
    {
      operator new();
    }
  }

  else
  {
    switch(var0)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  b2Joint::Create();
}

b2Joint *b2Joint::Destroy(b2Joint *this, b2Joint *a2)
{
  if (this)
  {
    return (*(this->var0 + 5))();
  }

  return this;
}

void b2Joint::b2Joint(b2Joint *this, const b2JointDef *a2)
{
  this->var0 = &unk_2870792D0;
  var2 = a2->var2;
  var3 = a2->var3;
  if (var2 == var3)
  {
    b2Joint::b2Joint();
  }

  this->var1 = a2->var0;
  this->var2 = 0;
  this->var3 = 0;
  this->var6 = var2;
  this->var7 = var3;
  this->var9 = a2->var4;
  this->var8 = 0;
  this->var10 = a2->var1;
  *&this->var4.var0 = 0u;
  *&this->var4.var2 = 0u;
  *&this->var5.var0 = 0u;
  *&this->var5.var2 = 0u;
}

uint64_t b2Joint::IsActive(b2Joint *this)
{
  result = b2Body::IsActive(this->var6);
  if (result)
  {
    var7 = this->var7;

    return b2Body::IsActive(var7);
  }

  return result;
}

b2Joint *b2Joint::SetCollideConnected(b2Joint *this, _BOOL4 a2)
{
  if (this->var9 != a2)
  {
    v2 = this;
    this->var9 = a2;
    if (!a2)
    {
      var6 = this->var6;
      if (var6)
      {
        v4 = *&var6->var24;
        if (v4)
        {
          var17 = var6->var17;
          do
          {
            this = b2ContactManager::DestroyContact(&var17[443].var19, *(v4 + 8));
            v4 = *&v2->var6->var24;
          }

          while (v4);
        }
      }

      var7 = v2->var7;
      if (var7)
      {
        v7 = *&var7->var24;
        if (v7)
        {
          v8 = var7->var17;
          do
          {
            this = b2ContactManager::DestroyContact(&v8[443].var19, *(v7 + 8));
            v7 = *&v2->var7->var24;
          }

          while (v7);
        }
      }
    }
  }

  return this;
}

double b2MouseJoint::b2MouseJoint(b2Joint *a1, uint64_t a2)
{
  b2Joint::b2Joint(a1, a2);
  *v3 = &unk_287079CB0;
  if ((*(a2 + 36) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(a2 + 40) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2MouseJoint::b2MouseJoint();
  }

  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFFFF;
  v6 = (v4 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v7 = v4 < 0;
  v8 = v4 < 0 && ((v4 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (!v7)
  {
    v6 = 0;
  }

  v9 = v5 == 2139095040 || v6;
  if (v5 > 2139095040)
  {
    v9 = 1;
  }

  if ((v9 | v8) == 1)
  {
    b2MouseJoint::b2MouseJoint();
  }

  v10 = *(a2 + 48);
  v11 = v10 & 0x7FFFFFFF;
  v12 = (v10 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v13 = v10 < 0;
  v14 = v10 < 0 && ((v10 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  v15 = v13 && v12;
  v16 = v11 <= 2139095040;
  v17 = v11 == 2139095040 || v15;
  if (!v16)
  {
    v17 = 1;
  }

  if ((v17 | v14) == 1)
  {
    b2MouseJoint::b2MouseJoint();
  }

  v18 = *(a2 + 52);
  v19 = v18 & 0x7FFFFFFF;
  v20 = (v18 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v21 = v18 < 0;
  v22 = v18 < 0 && ((v18 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (!v21)
  {
    v20 = 0;
  }

  v23 = v19 == 2139095040 || v20;
  if (v19 > 2139095040)
  {
    v23 = 1;
  }

  if ((v23 | v22) == 1)
  {
    b2MouseJoint::b2MouseJoint();
  }

  v24 = *(a2 + 36);
  *(v3 + 136) = v24;
  v25 = HIDWORD(v24);
  v26 = *&v24;
  v27 = *(v3 + 104);
  v28 = v26 - v27[8];
  v29 = *&v25 - v27[9];
  v31 = v27[10];
  v30 = v27[11];
  *(v3 + 128) = (v29 * v31) + (v30 * v28);
  *(v3 + 132) = (v30 * v29) - (v31 * v28);
  *(v3 + 164) = *(a2 + 44);
  *(v3 + 160) = 0;
  result = *(a2 + 48);
  *(v3 + 144) = result;
  *(v3 + 152) = 0;
  *(v3 + 168) = 0;
  return result;
}

uint64_t b2MouseJoint::SetTarget(b2Body **this, b2Body **a2)
{
  result = b2Body::IsAwake(this[13]);
  if ((result & 1) == 0)
  {
    result = b2Body::SetAwake(this[13], 1);
  }

  this[17] = *a2;
  return result;
}

void b2MouseJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 28);
  *(a1 + 176) = v3;
  v4 = *(v2 + 64);
  *(a1 + 188) = v4;
  v5 = *(v2 + 224);
  v6 = *(v2 + 208);
  v7 = *(v2 + 212);
  *(a1 + 196) = v7;
  *(a1 + 200) = v5;
  v8 = *(a1 + 144) * 6.2832;
  v9 = v6 * (v8 * v8);
  v10 = *a2;
  v11 = (v8 * ((v6 + v6) * *(a1 + 148))) + (*a2 * v9);
  if (v11 <= 0.00000011921)
  {
    b2MouseJoint::InitVelocityConstraints();
  }

  v14 = *(a2 + 32) + 16 * v3;
  v15 = *v14;
  v16 = *(&v4 + 1);
  v17 = *&v4;
  v18 = (*(a2 + 24) + 16 * v3);
  v43 = v7;
  v19 = __sincosf_stret(v18[3]);
  v20 = *(v14 + 12);
  v22 = *v18;
  v21 = v18[1];
  v23 = 1.0 / (v10 * v11);
  if ((v10 * v11) == 0.0)
  {
    v23 = v10 * v11;
  }

  *(a1 + 168) = v23;
  v24 = (v10 * v9) * v23;
  *(a1 + 152) = v24;
  v25 = *(a1 + 128) - v17;
  v26 = *(a1 + 132) - v16;
  _S2 = (v19.__cosval * v25) - (v19.__sinval * v26);
  v28 = (v19.__cosval * v26) + (v19.__sinval * v25);
  *(a1 + 180) = _S2;
  *(a1 + 184) = v28;
  v29 = v23 + (v43 + ((v5 * v28) * v28));
  v30 = v28 * -(v5 * _S2);
  v31 = v23 + (v43 + ((v5 * _S2) * _S2));
  v32 = (v29 * v31) - (v30 * v30);
  v33 = 1.0 / v32;
  if (v32 == 0.0)
  {
    v33 = (v29 * v31) - (v30 * v30);
  }

  v34 = -(v33 * v30);
  *(a1 + 204) = v31 * v33;
  *(a1 + 208) = v34;
  *(a1 + 212) = v34;
  *(a1 + 216) = v29 * v33;
  v35 = v24 * ((v21 + v28) - *(a1 + 140));
  *(a1 + 220) = v24 * ((v22 + _S2) - *(a1 + 136));
  *(a1 + 224) = v35;
  v36 = v20 * 0.98;
  if (*(a2 + 20) == 1)
  {
    _D3 = vmul_n_f32(*(a1 + 156), COERCE_FLOAT(*(a2 + 8)));
    *(a1 + 156) = _D3;
    v15 = vadd_f32(v15, vmul_n_f32(_D3, v43));
    __asm { FMLA            S0, S2, V3.S[1] }

    v36 = v36 + (v5 * _S0);
  }

  else
  {
    *(a1 + 156) = 0;
    *(a1 + 160) = 0;
  }

  *v14 = v15;
  *(*(a2 + 32) + 16 * *(a1 + 176) + 12) = v36;
}

float b2MouseJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a2 + 32) + 16 * *(a1 + 176);
  v9 = *(v8 + 12);
  _S1 = *(a1 + 180);
  v11 = *v8;
  v12 = *(a1 + 156);
  v14 = *(a1 + 164);
  v13 = *(a1 + 168);
  *&a8 = ((COERCE_FLOAT(*v8) - (v9 * *(a1 + 184))) + *(a1 + 220)) + (v13 * v12.f32[0]);
  v15 = vadd_f32(vmls_lane_f32(vmul_n_f32(*(a1 + 212), -(((COERCE_FLOAT(HIDWORD(*v8)) + (v9 * _S1)) + *(a1 + 224)) + vmuls_lane_f32(v13, v12, 1))), *(a1 + 204), *&a8, 0), v12);
  *(a1 + 156) = v15;
  v16 = *a2 * v14;
  v17 = COERCE_FLOAT(vmul_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0]);
  if (v17 > (v16 * v16))
  {
    v15 = vmul_n_f32(v15, v16 / sqrtf(v17));
    *(a1 + 156) = v15;
  }

  _D4 = vsub_f32(v15, v12);
  __asm { FMLA            S3, S1, V4.S[1] }

  result = v9 + (*(a1 + 200) * _S3);
  *v8 = vadd_f32(v11, vmul_n_f32(_D4, *(a1 + 196)));
  *(*(a2 + 32) + 16 * *(a1 + 176) + 12) = result;
  return result;
}

void PKCGrid::PKCGrid(PKCGrid *this)
{
  *this = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
}

{
  *this = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
}

void PKCGrid::setGridSize(PKCGrid *this, int a2, int a3, int a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = a3 * a2;
  v8 = 0;
  v7 = v5 - v4;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      *(this + 6) = v4 + v6;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 5, v6 - v7, &v8);
  }
}

void PKCGrid::setData(PKCGrid *this, const unsigned __int8 *a2, int a3, unsigned int a4)
{
  v7 = *(this + 5);
  v8 = (this + 40);
  v9 = a4;
  v10 = *(this + 6) - v7;
  if (a4 <= v10)
  {
    if (a4 < v10)
    {
      *(this + 6) = v7 + a4;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 5, a4 - v10);
  }

  if (a4)
  {
    v11 = 0;
    do
    {
      *(*v8 + v11) = *a2;
      a2 += a3;
      ++v11;
    }

    while (v9 != v11);
  }
}

void PKCGrid::setVectorData(PKCGrid *this, const unsigned __int8 *a2, int a3, int a4)
{
  if (a3)
  {
    if (a4)
    {
      *this = a3;
      *(this + 1) = a4;
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6resizeEm(this + 8, a4 * a3);
      if (a4 >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        __asm { FMOV            V0.4S, #-1.0 }

        v20 = vdupq_n_s32(0x437F0000u);
        do
        {
          v21 = a3;
          v22 = v12;
          v23 = v13;
          if (a3 >= 1)
          {
            do
            {
              v8.i8[0] = a2[v22];
              v8.f32[0] = v8.u32[0] / 127.0;
              v9.i8[0] = a2[v22 + 1];
              LOBYTE(v10) = a2[v22 + 2];
              v10 = LODWORD(v10);
              LOBYTE(v11) = a2[v22 + 3];
              v8.f32[1] = v9.u32[0] / 127.0;
              v8.f32[2] = v10 / 127.0;
              v9 = vaddq_f32(v8, _Q0);
              v8.f32[3] = v11;
              v8 = vdivq_f32(v8, v20);
              v9.i32[3] = v8.i32[3];
              *(*(this + 8) + v23) = v9;
              v23 += 16;
              v22 += 4;
              --v21;
            }

            while (v21);
          }

          ++v14;
          v13 += 16 * a3;
          v12 += 4 * a3;
        }

        while (v14 != a4);
      }
    }
  }
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

PKCGrid *PKCGrid::tagPixelData(PKCGrid *this, float a2, const unsigned __int8 *a3, int a4, int a5)
{
  v5 = *this;
  if (*this)
  {
    v6 = *(this + 1);
    if (v6 && v6 >= 1)
    {
      v8 = 0;
      do
      {
        if (v5 >= 1)
        {
          v9 = 0;
          v10 = (~((a5 * v8) / v6) + a5) * a4;
          do
          {
            *(*(this + 5) + (v8 * v5) + v9) = a3[4 * v10 + 3 + 4 * ((a4 * v9) / v5)] > (a2 * 255.0);
            v5 = *this;
            ++v9;
          }

          while (v9 < *this);
          v6 = *(this + 1);
        }

        ++v8;
      }

      while (v8 < v6);
    }
  }

  return this;
}

uint64_t PKCGrid::traverse(PKCGrid *this, int *a2, int *a3)
{
  v3 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = *this;
  do
  {
    v7 = dword_25E7EBDF8[v3] + v4 + v6 * (dword_25E7EBE18[v3] + v5);
    v8 = v7 >= 1 && *(*(this + 5) + v7) != 0;
    v16[v3++] = v8;
  }

  while (v3 != 8);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v16[v9++];
    if (v11 != v16[v9 & 7])
    {
      ++v10;
    }
  }

  while (v9 != 8);
  if (v10 == 2)
  {
    for (i = 0; i != 8; ++i)
    {
      if (v16[i] != 1)
      {
        break;
      }
    }

    v13 = 8;
    while (1)
    {
      v14 = i & 7;
      if (v16[v14] == 1)
      {
        break;
      }

      LOBYTE(i) = i + 1;
      if (!--v13)
      {
        v14 = 0;
        break;
      }
    }

    *a2 = v4 + dword_25E7EBDF8[v14];
    *a3 += dword_25E7EBE18[v14];
  }

  return 0;
}

void rdpReduce(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - *a1) >> 4;
  v7 = v6 - 2;
  if (v6 > 2)
  {
    v30 = *v5;
    v29 = *(v4 - 16);
    if (v6 - 1 < 2)
    {
      v20 = -16;
      v14 = 0.0;
    }

    else
    {
      v10 = *&v29 - *&v30;
      v11 = (*(&v29 + 1) - *(&v30 + 1)) / v10;
      v12 = sqrt(v11 * v11 + 1.0);
      v13 = (v5 + 24);
      v14 = 0.0;
      v15 = -1;
      v16 = 1;
      do
      {
        v17 = *(v13 - 1);
        if (*&v30 == *&v29)
        {
          v18 = vabdd_f64(v17, *&v30);
        }

        else
        {
          v18 = fabs(*(&v30 + 1) - v11 * *&v30 - (*v13 - v11 * v17)) / v12;
        }

        v19 = v18;
        if (v14 < v19)
        {
          v14 = v19;
          v15 = v16;
        }

        v13 += 2;
        ++v16;
        --v7;
      }

      while (v7);
      v20 = 16 * v15;
    }

    if (v14 <= a3)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](a2, &v30);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](a2, &v29);
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<CGPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGPoint const*>,std::__wrap_iter<CGPoint const*>>(&v26, 0, v5, &v5[v20 + 16], (v20 + 16) >> 4);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<CGPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGPoint const*>,std::__wrap_iter<CGPoint const*>>(&v23, 0, (v20 + *a1), *(a1 + 8), (*(a1 + 8) - (v20 + *a1)) >> 4);
      rdpReduce(&v26, a3);
      rdpReduce(&v23, a3);
      std::vector<CGPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGPoint*>,std::__wrap_iter<CGPoint*>>(a2, *(a2 + 8), __p + 16, v22, (v22 - (__p + 16)) >> 4);
      if (__p)
      {
        operator delete(__p);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(a2, v5, v4, v6);
  }
}

{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - *a1) >> 3;
  v7 = v6 - 2;
  if (v6 > 2)
  {
    v10 = *v5;
    v33 = *v5;
    v11 = *(v4 - 8);
    v32 = v11;
    if (v6 - 1 < 2)
    {
      v23 = -8;
      v18 = 0.0;
    }

    else
    {
      v12 = *&v10;
      v13 = *&v11;
      v14 = ((*(&v11 + 1) - *(&v10 + 1)) / (*&v11 - *&v10));
      v15 = *(&v10 + 1) - v14 * *&v10;
      v16 = sqrt(v14 * v14 + 1.0);
      v17 = (v5 + 12);
      v18 = 0.0;
      v19 = -1;
      v20 = 1;
      do
      {
        v21 = *(v17 - 1);
        if (v12 == v13)
        {
          v22 = vabds_f32(v21, v12);
        }

        else
        {
          v22 = fabs(v15 - (*v17 - v14 * v21)) / v16;
        }

        if (v22 > v18)
        {
          v18 = v22;
          v19 = v20;
        }

        v17 += 2;
        ++v20;
        --v7;
      }

      while (v7);
      v23 = 8 * v19;
    }

    if (v18 <= a3)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      std::vector<PKPoint>::push_back[abi:ne200100](a2, &v33);
      std::vector<PKPoint>::push_back[abi:ne200100](a2, &v32);
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      std::vector<PKPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKPoint const*>,std::__wrap_iter<PKPoint const*>>(&v29, 0, v5, &v5[v23 + 8], (v23 + 8) >> 3);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<PKPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKPoint const*>,std::__wrap_iter<PKPoint const*>>(&v26, 0, (v23 + *a1), *(a1 + 8), (*(a1 + 8) - (v23 + *a1)) >> 3);
      rdpReduce(&v29, a3);
      rdpReduce(&v26, a3);
      std::vector<PKPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKPoint*>,std::__wrap_iter<PKPoint*>>(a2, *(a2 + 8), __p + 8, v25, (v25 - (__p + 8)) >> 3);
      if (__p)
      {
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    std::vector<PKPoint>::__init_with_size[abi:ne200100]<PKPoint*,PKPoint*>(a2, v5, v4, v6);
  }
}

void sub_25E7D9AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void mooreNeighborTracing(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = (a3 + 2);
  v8 = (a2 + 2);
  v9 = v7 * v8;
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v11 = v10;
  v35 = a2;
  if (a2 >= -1)
  {
    v12 = 0;
    v13 = (~a2 + a1);
    v14 = v10;
    do
    {
      if (a3 >= -1)
      {
        v15 = 0;
        v16 = v13;
        v17 = v14;
        do
        {
          v18 = 0;
          if (v12 && v15 && v12 != a2 + 1 && a3 + 1 != v15)
          {
            v18 = *v16;
          }

          *v17 = v18;
          ++v15;
          v17 += v8;
          v16 += a2;
        }

        while (v7 != v15);
      }

      ++v12;
      ++v14;
      ++v13;
    }

    while (v12 != v8);
  }

  v19 = malloc_type_malloc(v9, 0x100004077774924uLL);
  bzero(v19, v9);
  if (a3 >= -1)
  {
    v36 = 0;
    v20 = 0;
    v41 = -3 - a2;
    v40 = -2 - a2;
    v39 = ~a2;
    v37 = a2 + 1;
    v38 = a2 + 3;
    v21 = v8;
    v34 = v7;
    while (v35 < -1)
    {
      v22 = 0;
LABEL_17:
      if (!v22 && ++v36 < v34)
      {
        continue;
      }

      goto LABEL_13;
    }

    v23 = 0;
    v24 = v36 * v21;
LABEL_21:
    v25 = v23 + v24;
    if (*(v19 + v23 + v24) == 1 && !v20)
    {
      goto LABEL_13;
    }

    if (v11[v25] != 1 || v20)
    {
      v22 = 0;
      goto LABEL_42;
    }

    v26 = 0;
    v27 = 1;
    *(v19 + v25) = 1;
    v44 = 0x7FFFFFFFFLL;
    v45 = v41;
    v46 = 7;
    v47 = v40;
    v48 = 1;
    v49 = v39;
    v50 = 0x100000001;
    v51 = 3;
    v52 = v38;
    v53 = 3;
    v54 = v8;
    v55 = 5;
    v56 = v37;
    v28 = v23 + v24;
    v57 = 5;
    while (1)
    {
      v29 = -1;
      while (1)
      {
        v30 = 8 * (v27 - 1);
        v31 = *(&v44 + v30) + v28;
        v22 = v11[v31] == 1;
        if (v11[v31] == 1)
        {
          break;
        }

        if (v27 <= 0)
        {
          v32 = -(-v27 & 7);
        }

        else
        {
          v32 = v27 & 7;
        }

        v27 = v32 + 1;
        if (++v29 >= 9)
        {
          goto LABEL_41;
        }
      }

      v27 = *(&v44 + v30 + 4);
      if (v31 == v25)
      {
        if (v27 == 1 || v26 > 1)
        {
LABEL_41:
          v20 = v11[v31] == 1;
          if (v11[v31] == 1)
          {
            goto LABEL_17;
          }

LABEL_42:
          if (++v23 >= v21)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

        ++v26;
      }

      *(v19 + v31) = 1;
      *&v43 = (~(v31 / v8 * v8) + v31);
      *(&v43 + 1) = (v31 / v8 - 1);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](a4, &v43);
      v28 = v31;
      v21 = v8;
    }
  }

LABEL_13:
  free(v19);
  free(v11);
}

void PKCGrid::traceOutline(int *a1, void *a2, float a3)
{
  a2[1] = *a2;
  v6 = malloc_type_malloc(a1[1] * *a1, 0x100004077774924uLL);
  v7 = v6;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  if (v8 != v9)
  {
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11 != 0;
    }

    while (v8 != v9);
  }

  mooreNeighborTracing(v6, *a1, a1[1], a2);
  free(v7);
  if (a2[1] != *a2 && a1[1] + *a1 >= 67)
  {
    rdpReduce(a2, &__p, a3);
    v16 = 0uLL;
    v17 = 0;
    for (i = v19; ; std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](&v16, i))
    {
      v13 = __p;
      if (i == __p)
      {
        break;
      }

      --i;
    }

    v14 = *a2;
    *a2 = v16;
    v15 = a2[2];
    a2[2] = v17;
    *&v16 = v14;
    v17 = v15;
    if (v14)
    {
      *(&v16 + 1) = v14;
      operator delete(v14);
      v13 = __p;
    }

    if (v13)
    {
      v19 = v13;
      operator delete(v13);
    }
  }
}

void sub_25E7D9FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void PKCGrid::labelGrid(PKCGrid *this)
{
  v3 = (this + 112);
  v2 = *(this + 14);
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = *(this + 15) - v2;
  if (v5 - v4 <= v6)
  {
    if (v5 - v4 < v6)
    {
      *(this + 15) = v2 + v5 - v4;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 14, v5 - v4 - v6);
    v4 = *(this + 5);
    v5 = *(this + 6);
  }

  v7 = (this + 88);
  *(this + 12) = *(this + 11);
  if (v4 != v5)
  {
    for (i = -1; v4 + i + 1 != v5; ++i)
    {
      if (*(v4 + i + 1))
      {
        v9 = *this;
        v10 = i + 1;
        v11 = (i + 1) / *this;
        v12 = (i + 1) % *this;
        if (v12)
        {
          v13 = v12 == *this - 1;
        }

        else
        {
          v13 = 1;
        }

        v14 = v13 || v11 == 0;
        if (v14 || v11 == *(this + 1) - 1 || (v15 = *(this + 5), !*(v15 + i + 2)) || !*(v15 + i) || !*(v15 + i + v9 + 1) || !*(v15 + i - v9 + 1))
        {
          *(*(this + 14) + i + 1) = 0;
          v19 = *(this + 12);
          v18 = *(this + 13);
          if (v19 >= v18)
          {
            v21 = *v7;
            v22 = v19 - *v7;
            v23 = v22 >> 2;
            v24 = (v22 >> 2) + 1;
            if (v24 >> 62)
            {
              std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
            }

            v25 = v18 - v21;
            if (v25 >> 1 > v24)
            {
              v24 = v25 >> 1;
            }

            v26 = v25 >= 0x7FFFFFFFFFFFFFFCLL;
            v27 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v26)
            {
              v27 = v24;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 88, v27);
            }

            *(4 * v23) = v10;
            v20 = 4 * v23 + 4;
            memcpy(0, v21, v22);
            v28 = *(this + 11);
            *(this + 11) = 0;
            *(this + 12) = v20;
            *(this + 13) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = v10;
            v20 = (v19 + 4);
          }

          *(this + 12) = v20;
          continue;
        }

        v16 = *v3 + i;
        v17 = -3;
      }

      else
      {
        v16 = *v3 + i;
        v17 = 3;
      }

      *(v16 + 1) = v17;
    }
  }
}

void PKCGrid::calcQuadTree(PKCGrid *this, const CGRect *a2)
{
  v4 = (this + 112);
  *(this + 15) = *(this + 14);
  v6 = *(this + 5);
  v5 = *(this + 6);
  if (v5 != v6)
  {
    std::vector<unsigned char>::__append(this + 14, v5 - v6);
  }

  memset(v32, 0, sizeof(v32));
  memset(__p, 0, sizeof(__p));
  PKCGrid::labelGrid(this);
  v7 = *(this + 11);
  for (i = *(this + 12); v7 != i; ++v7)
  {
    v9 = *v7;
    v10 = v9 % *this;
    if (v10 < *this - 2)
    {
      v11 = v9 + 1;
      v12 = *v4;
      v13 = *(*v4 + v9 + 1);
      if (v13 == 3)
      {
        *(v12 + v11) = 1;
        LODWORD(v30) = v9 + 1;
        std::vector<int>::push_back[abi:ne200100](__p, &v30);
      }

      else if (v13 == 253)
      {
        *(v12 + v11) = -1;
        LODWORD(v30) = v9 + 1;
        std::vector<int>::push_back[abi:ne200100](v32, &v30);
      }
    }

    if (v10 >= 1)
    {
      v14 = v9 - 1;
      v15 = *v4;
      v16 = *(*v4 + v9 - 1);
      if (v16 == 3)
      {
        *(v15 + v14) = 1;
        LODWORD(v30) = v9 - 1;
        std::vector<int>::push_back[abi:ne200100](__p, &v30);
      }

      else if (v16 == 253)
      {
        *(v15 + v14) = -1;
        LODWORD(v30) = v9 - 1;
        std::vector<int>::push_back[abi:ne200100](v32, &v30);
      }
    }

    v17 = v9 / *this;
    if (v17 < *(this + 1) - 2)
    {
      v18 = *this + v9;
      v19 = *v4;
      v20 = *(*v4 + v18);
      if (v20 == 3)
      {
        *(v19 + v18) = 1;
        LODWORD(v30) = *this + v9;
        std::vector<int>::push_back[abi:ne200100](__p, &v30);
      }

      else if (v20 == 253)
      {
        *(v19 + v18) = -1;
        LODWORD(v30) = *this + v9;
        std::vector<int>::push_back[abi:ne200100](v32, &v30);
      }
    }

    if (v17 >= 1)
    {
      v21 = v9 - *this;
      v22 = *(this + 14);
      v23 = *(v22 + v21);
      if (v23 == 3)
      {
        *(v22 + v21) = 1;
        LODWORD(v30) = v9 - *this;
        std::vector<int>::push_back[abi:ne200100](__p, &v30);
      }

      else if (v23 == 253)
      {
        *(v22 + v21) = -1;
        LODWORD(v30) = v9 - *this;
        std::vector<int>::push_back[abi:ne200100](v32, &v30);
      }
    }
  }

  x = a2->origin.x;
  v25 = PKGet_INV_PTM_RATIO();
  width = a2->size.width;
  v27 = PKGet_INV_PTM_RATIO();
  PKGet_INV_PTM_RATIO();
  PKGet_INV_PTM_RATIO();
  v28 = x * v25;
  v29 = v28 + width * v27;
  v30 = v28 - ((v29 - v28) * 0.5);
  std::allocate_shared[abi:ne200100]<QuadTree,std::allocator<QuadTree>,float,float,float,float,float,0>();
}

void sub_25E7DA588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void PKCGrid::calcLevelSet(PKCGrid *this, int a2)
{
  PKCGrid::labelGrid(this);
  if (a2)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    __p = 0;
    v44 = 0;
    v45 = 0;
    v4 = *(this + 11);
    v5 = *(this + 12);
    if (v4 == v5)
    {
      v21 = 0;
    }

    else
    {
      do
      {
        v6 = *v4;
        v7 = v6 % *this;
        if (v7 < *this - 2)
        {
          v8 = v6 + 1;
          v9 = *(this + 14);
          v10 = *(v9 + v6 + 1);
          if (v10 == 3)
          {
            *(v9 + v8) = 1;
            v42 = v6 + 1;
            std::vector<int>::push_back[abi:ne200100](&v49, &v42);
          }

          else if (v10 == 253)
          {
            *(v9 + v8) = -1;
            v42 = v6 + 1;
            std::vector<int>::push_back[abi:ne200100](&v52, &v42);
          }
        }

        if (v7 >= 1)
        {
          v11 = v6 - 1;
          v12 = *(this + 14);
          v13 = *(v12 + v6 - 1);
          if (v13 == 3)
          {
            *(v12 + v11) = 1;
            v42 = v6 - 1;
            std::vector<int>::push_back[abi:ne200100](&v49, &v42);
          }

          else if (v13 == 253)
          {
            *(v12 + v11) = -1;
            v42 = v6 - 1;
            std::vector<int>::push_back[abi:ne200100](&v52, &v42);
          }
        }

        v14 = v6 / *this;
        if (v14 < *(this + 1) - 2)
        {
          v15 = *this + v6;
          v16 = *(this + 14);
          v17 = *(v16 + v15);
          if (v17 == 3)
          {
            *(v16 + v15) = 1;
            v42 = *this + v6;
            std::vector<int>::push_back[abi:ne200100](&v49, &v42);
          }

          else if (v17 == 253)
          {
            *(v16 + v15) = -1;
            v42 = *this + v6;
            std::vector<int>::push_back[abi:ne200100](&v52, &v42);
          }
        }

        if (v14 >= 1)
        {
          v18 = v6 - *this;
          v19 = *(this + 14);
          v20 = *(v19 + v18);
          if (v20 == 3)
          {
            *(v19 + v18) = 1;
            v42 = v6 - *this;
            std::vector<int>::push_back[abi:ne200100](&v49, &v42);
          }

          else if (v20 == 253)
          {
            *(v19 + v18) = -1;
            v42 = v6 - *this;
            std::vector<int>::push_back[abi:ne200100](&v52, &v42);
          }
        }

        ++v4;
      }

      while (v4 != v5);
      v21 = v52;
      v22 = v53;
      if (v52 != v53)
      {
        do
        {
          v23 = *v21;
          v24 = v23 % *this;
          if (v24 < *this - 2)
          {
            v25 = *(this + 14);
            if (*(v25 + v23 + 1) == 253)
            {
              *(v25 + v23 + 1) = -2;
              v42 = v23 + 1;
              std::vector<int>::push_back[abi:ne200100](&v46, &v42);
            }
          }

          if (v24 >= 1)
          {
            v26 = *(this + 14);
            if (*(v26 + v23 - 1) == 253)
            {
              *(v26 + v23 - 1) = -2;
              v42 = v23 - 1;
              std::vector<int>::push_back[abi:ne200100](&v46, &v42);
            }
          }

          v27 = v23 / *this;
          if (v27 < *(this + 1) - 2)
          {
            v28 = *this + v23;
            v29 = *(this + 14);
            if (*(v29 + v28) == 253)
            {
              *(v29 + v28) = -2;
              v42 = *this + v23;
              std::vector<int>::push_back[abi:ne200100](&v46, &v42);
            }
          }

          if (v27 >= 1)
          {
            v30 = v23 - *this;
            v31 = *(this + 14);
            if (*(v31 + v30) == 253)
            {
              *(v31 + v30) = -2;
              v42 = v23 - *this;
              std::vector<int>::push_back[abi:ne200100](&v46, &v42);
            }
          }

          ++v21;
        }

        while (v21 != v22);
        v21 = v52;
      }
    }

    for (i = v53; v21 != i; ++v21)
    {
      v33 = *v21;
      v34 = v33 % *this;
      if (v34 < *this - 2)
      {
        v35 = *(this + 14);
        if (*(v35 + v33 + 1) == 3)
        {
          *(v35 + v33 + 1) = 2;
          v42 = v33 + 1;
          std::vector<int>::push_back[abi:ne200100](&__p, &v42);
        }
      }

      if (v34 >= 1)
      {
        v36 = *(this + 14);
        if (*(v36 + v33 - 1) == 3)
        {
          *(v36 + v33 - 1) = 2;
          v42 = v33 - 1;
          std::vector<int>::push_back[abi:ne200100](&__p, &v42);
        }
      }

      v37 = v33 / *this;
      if (v37 < *(this + 1) - 2)
      {
        v38 = *this + v33;
        v39 = *(this + 14);
        if (*(v39 + v38) == 3)
        {
          *(v39 + v38) = 2;
          v42 = *this + v33;
          std::vector<int>::push_back[abi:ne200100](&__p, &v42);
        }
      }

      if (v37 >= 1)
      {
        v40 = v33 - *this;
        v41 = *(this + 14);
        if (*(v41 + v40) == 3)
        {
          *(v41 + v40) = 2;
          v42 = v33 - *this;
          std::vector<int>::push_back[abi:ne200100](&__p, &v42);
        }
      }
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }
  }
}

void sub_25E7DAB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PKCGrid::printGrid(PKCGrid *this)
{
  puts("\n");
  if (*(this + 1) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *this;
      if (*this >= 1)
      {
        v4 = 0;
        do
        {
          if (*(*(this + 14) + v2 * v3 + v4) >= 1)
          {
            v5 = " ";
          }

          else
          {
            v5 = "*";
          }

          printf("%s", v5);
          v3 = *this;
          ++v4;
        }

        while (v4 < *this);
      }

      putchar(10);
      ++v2;
    }

    while (v2 < *(this + 1));
  }

  return puts("\n");
}

BOOL PKCGrid::isGridRegionOccupied(PKCGrid *this, float a2, float a3, float a4, float a5)
{
  v5 = *(this + 1);
  v6 = ((1.0 - a3) * v5);
  v7 = ((1.0 - (a3 + a5)) * v5);
  if (v7 >= v6)
  {
    return 0;
  }

  else
  {
    v8 = *this;
    v9 = ((a2 + a4) * v8);
    v10 = (v8 * a2);
    v11 = v7;
    v12 = v10 + v8 * v7;
    v13 = 1;
    while (v9 <= v10)
    {
LABEL_7:
      v13 = ++v11 < v6;
      v12 += v8;
      if (v11 == v6)
      {
        return v13;
      }
    }

    v14 = (*(this + 5) + v12);
    v15 = v9 - v10;
    while (!*v14++)
    {
      if (!--v15)
      {
        goto LABEL_7;
      }
    }
  }

  return v13;
}

void PKCGrid::physicsBodyFromSmoothedOutline(PKCGrid *this, float a2, const CGSize *a3)
{
  memset(__p, 0, sizeof(__p));
  PKCGrid::traceOutline(this, __p, a2);
  operator new();
}

void sub_25E7DAEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PKCGrid::pathFromOutlineWithSmoothingThreshold(PKCGrid *this, float a2, float a3, float a4, float a5, float a6)
{
  memset(v6, 0, sizeof(v6));
  PKCGrid::traceOutline(this, v6, a2);
  operator new();
}

void sub_25E7DB020(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

PKPhysicsBody *PKCGrid::physicsBodyFromMarchingCubes(PKCGrid *this, const CGRect *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = objc_alloc_init(PKPhysicsBody);
  PKCGrid::labelGrid(this);
  v4 = malloc_type_malloc(*(this + 1) * *this, 0x100004077774924uLL);
  v5 = *(this + 1);
  if (v5 < 1)
  {
    goto LABEL_66;
  }

  v6 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  v11 = *this;
  do
  {
    v12 = v6 + 1;
    if (v11 >= 2)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v49 = v13;
        v50[0] = v6;
        v15 = v13 + 1;
        v50[1] = v13 + 1;
        v50[2] = v6;
        v50[3] = v13 + 1;
        v50[4] = v6 + 1;
        v16 = v50;
        v50[5] = v13;
        v50[6] = v6 + 1;
        do
        {
          LOBYTE(v17) = 0;
          v18 = *(v16 - 1);
          if (v11 > v18)
          {
            v19 = *v16;
            if (((*v16 | v18) & 0x80000000) == 0)
            {
              if (*(this + 1) <= v19 || *(this + 2) < 1)
              {
                LOBYTE(v17) = 0;
              }

              else
              {
                v17 = *(*(this + 14) + v18 + v19 * v11) >> 7;
              }
            }
          }

          v16 += 2;
          *(v42 + v14++) = v17;
        }

        while (v14 != 4);
        v4[v13 + v11 * v6] = LOBYTE(v42[0]) | (2 * BYTE1(v42[0])) | (4 * BYTE2(v42[0])) | (8 * HIBYTE(v42[0]));
        v11 = *this;
        ++v13;
      }

      while (v15 < *this - 1);
      v5 = *(this + 1);
    }

    ++v6;
  }

  while (v12 < v5);
  if (v5 < 1)
  {
    goto LABEL_66;
  }

  v20 = 0;
  v21 = a2->size.width / v11;
  v22 = v4 + 1;
  v41 = v21;
  do
  {
    v23 = v20 + 1;
    if (v11 < 2)
    {
      goto LABEL_65;
    }

    v24 = 0;
    do
    {
      v25 = v4[v11 * v20 + v24];
      if (v4[v11 * v20 + v24])
      {
        _ZF = v25 == 15;
      }

      else
      {
        _ZF = 1;
      }

      if (_ZF)
      {
        goto LABEL_63;
      }

      v42[0] = v24;
      v42[1] = v20;
      v27 = v24 + 1;
      v43 = v24 + 1;
      v44 = v20;
      v45 = v24 + 1;
      v46 = v20 + 1;
      v47 = v24;
      v48 = v20 + 1;
      if (v25 > 8)
      {
        if (v25 != 12)
        {
          if (v25 != 9)
          {
            goto LABEL_50;
          }

          v28 = v20 + 1;
          if (v23 < *(this + 1))
          {
            do
            {
              v30 = v24 + *this * v28;
              if (v4[v30] != 9)
              {
                break;
              }

              v4[v30] = 0;
              ++v28;
            }

            while (v28 < *(this + 1));
          }

          goto LABEL_36;
        }

        if (v27 < v11)
        {
          v31 = v11 - 1;
          v33 = v11 - v27;
          while (v22[v20 * v11 + v24] == 12)
          {
            ++v24;
            if (!--v33)
            {
LABEL_46:
              v24 = v31;
              goto LABEL_49;
            }
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v25 != 3)
        {
          if (v25 != 6)
          {
            goto LABEL_50;
          }

          v28 = v20 + 1;
          if (v23 < *(this + 1))
          {
            do
            {
              v29 = v24 + *this * v28;
              if (v4[v29] != 6)
              {
                break;
              }

              v4[v29] = 0;
              ++v28;
            }

            while (v28 < *(this + 1));
          }

LABEL_36:
          v46 = v28;
          v48 = v28;
          goto LABEL_50;
        }

        if (v27 < v11)
        {
          v31 = v11 - 1;
          v32 = v11 - v27;
          while (v22[v20 * v11 + v24] == 3)
          {
            ++v24;
            if (!--v32)
            {
              goto LABEL_46;
            }
          }

LABEL_48:
          v11 = v24 + 1;
          goto LABEL_49;
        }
      }

      v11 = v24 + 1;
LABEL_49:
      v43 = v11;
      v45 = v11;
LABEL_50:
      v34 = 0;
      v35 = 0;
      do
      {
        if ((v25 >> v34))
        {
          *&v50[2 * v35++ - 1] = vmul_n_f32(vcvt_f32_s32(*&v42[2 * v34]), v41);
          v36 = 1.0;
        }

        else
        {
          v36 = 0.0;
        }

        v37 = v34 + 1;
        if ((v25 >> ((v34 + 1) & 3)))
        {
          v38 = 1.0;
        }

        else
        {
          v38 = 0.0;
        }

        if (v36 != v38)
        {
          *&v50[2 * v35++ - 1] = vmla_n_f32(vmul_n_f32(vmul_n_f32(vcvt_f32_s32(*&v42[2 * (v37 & 3)]), v41), v36 / (v36 - v38)), vmul_n_f32(vcvt_f32_s32(*&v42[2 * v34]), v41), 1.0 - (v36 / (v36 - v38)));
        }

        ++v34;
      }

      while (v37 != 4);
      if (v35 > 2)
      {
        operator new();
      }

      v11 = *this;
LABEL_63:
      ++v24;
    }

    while (v24 < v11 - 1);
    v5 = *(this + 1);
LABEL_65:
    ++v20;
  }

  while (v23 < v5);
LABEL_66:
  free(v4);
  v40->_shapeType = 7;
  [(PKPhysicsBody *)v40 set_allowSleep:1];

  return v40;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E7DBA34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(a1, a2);
  }

  std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
}

char *std::vector<CGPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGPoint const*>,std::__wrap_iter<CGPoint const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[-16 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 16;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v22);
    }

    v30 = 16 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 16;
    *v20 = v21;
    v20 += 16;
    v19 += 16;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[16 * a5];
    v27 = &v19[-16 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 16;
      *v28 = v29;
      v28 += 16;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[16 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *std::vector<CGPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGPoint*>,std::__wrap_iter<CGPoint*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<QuadTree>::__shared_ptr_emplace[abi:ne200100]<float,float,float,float,float,std::allocator<QuadTree>,0>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287078EE8;
  QuadTree::QuadTree((a1 + 24), *a2, *a3, *a4, *a5, *a6);
}

void std::__shared_ptr_emplace<QuadTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287078EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

float b2PrismaticJointDef::Initialize(b2PrismaticJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4, const b2Vec2 *a5)
{
  this->bodyA = a2;
  this->bodyB = a3;
  v7 = a4->x - a2->var8.var0.x;
  v8 = a4->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  this->localAnchorA.x = (v8 * var0) + (var1 * v7);
  this->localAnchorA.y = (var1 * v8) - (var0 * v7);
  v11 = a4->x - a3->var8.var0.x;
  v12 = a4->y - a3->var8.var0.y;
  v14 = a3->var8.var1.var0;
  v13 = a3->var8.var1.var1;
  this->localAnchorB.x = (v12 * v14) + (v13 * v11);
  this->localAnchorB.y = (v13 * v12) - (v14 * v11);
  v16 = a2->var8.var1.var0;
  v15 = a2->var8.var1.var1;
  y = a5->y;
  v18 = (v16 * y) + (v15 * a5->x);
  v19 = (v15 * y) - (v16 * a5->x);
  this->localAxisA.x = v18;
  this->localAxisA.y = v19;
  v20 = atan2f(a3->var8.var1.var0, a3->var8.var1.var1);
  result = v20 - atan2f(a2->var8.var1.var0, a2->var8.var1.var1);
  this->referenceAngle = result;
  return result;
}

void b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJoint *this, const b2JointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_2870796E8;
  *(v3 + 128) = *(&a2->var4 + 4);
  *(v3 + 136) = *(&a2[1].var0 + 1);
  v4 = *(&a2[1].var1 + 4);
  *(v3 + 144) = v4;
  y = v4.y;
  x = v4.x;
  v7 = sqrtf((v4.y * v4.y) + (v4.x * v4.x));
  if (v7 >= 0.00000011921)
  {
    v8 = 1.0 / v7;
    x = v8 * v4.x;
    y = v8 * v4.y;
    *(v3 + 144) = v8 * v4.x;
    *(v3 + 148) = v8 * v4.y;
  }

  *(v3 + 152) = -y;
  *(v3 + 156) = x;
  *(v3 + 160) = HIDWORD(a2[1].var2);
  *(v3 + 312) = 0;
  *(v3 + 172) = 0;
  *(v3 + 164) = 0;
  *&v9 = *(&a2[1].var3 + 4);
  *(&v9 + 1) = *&a2[2].var0;
  *(v3 + 180) = v9;
  *(v3 + 196) = a2[1].var3;
  *(v3 + 197) = *(&a2[1].var4 + 4);
  *(v3 + 200) = 0;
  *(v3 + 252) = 0;
  *(v3 + 244) = 0;
}

void b2PrismaticJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 204) = v6;
  *(a1 + 208) = v7;
  v8 = *(v4 + 64);
  *(a1 + 212) = v8;
  v9 = *(v5 + 64);
  *(a1 + 220) = v9;
  v10 = *(v4 + 212);
  v11 = *(v5 + 212);
  *(a1 + 228) = v10;
  *(a1 + 232) = v11;
  v12 = *(v4 + 224);
  v13 = *(v5 + 224);
  *(a1 + 236) = v12;
  *(a1 + 240) = v13;
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = (v14 + 16 * v6);
  v72 = v16[1];
  v73 = *v16;
  v17 = (v15 + 16 * v6);
  v74 = v17[1];
  v75 = *v17;
  v18 = (v14 + 16 * v7);
  v19 = *v18;
  v71 = v18[1];
  v20 = v18[3];
  v21 = (v15 + 16 * v7);
  v77 = *v21;
  v78 = v17[3];
  v76 = v21[1];
  v79 = v21[3];
  v22 = __sincosf_stret(v16[3]);
  v23 = __sincosf_stret(v20);
  v24 = *(a1 + 128) - *&v8;
  v25 = *(a1 + 132) - *(&v8 + 1);
  v26 = (v22.__cosval * v24) - (v22.__sinval * v25);
  v27 = (v22.__cosval * v25) + (v22.__sinval * v24);
  v28 = *(a1 + 136) - *&v9;
  v29 = *(a1 + 140) - *(&v9 + 1);
  v30 = (v23.__cosval * v28) - (v23.__sinval * v29);
  v31 = (v23.__cosval * v29) + (v23.__sinval * v28);
  v32 = ((v19 - v73) + v30) - v26;
  v33 = ((v71 - v72) + v31) - v27;
  v34 = *(a1 + 144);
  v35 = *(a1 + 148);
  v36 = (v22.__cosval * v34) - (v22.__sinval * v35);
  v37 = (v22.__cosval * v35) + (v22.__sinval * v34);
  *(a1 + 244) = v36;
  *(a1 + 248) = v37;
  v38 = v26 + v32;
  v39 = v27 + v33;
  v40 = (v38 * v37) - ((v27 + v33) * v36);
  *(a1 + 268) = v40;
  v41 = (v30 * v37) - (v31 * v36);
  *(a1 + 272) = v41;
  v42 = ((v10 + v11) + ((v12 * v40) * v40)) + ((v13 * v41) * v41);
  v43 = 1.0 / v42;
  if (v42 <= 0.0)
  {
    v43 = ((v10 + v11) + ((v12 * v40) * v40)) + ((v13 * v41) * v41);
  }

  *(a1 + 312) = v43;
  v44 = *(a1 + 152);
  v45 = *(a1 + 156);
  v46 = (v22.__cosval * v44) - (v22.__sinval * v45);
  v47 = (v22.__cosval * v45) + (v22.__sinval * v44);
  *(a1 + 252) = v46;
  *(a1 + 256) = v47;
  v48 = (v38 * v47) - (v39 * v46);
  *(a1 + 260) = v48;
  v49 = (v30 * v47) - (v31 * v46);
  *(a1 + 264) = v49;
  v50 = (v13 * v49) + (v12 * v48);
  v51 = (v41 * (v13 * v49)) + ((v12 * v48) * v40);
  v52 = v12 + v13;
  if ((v12 + v13) == 0.0)
  {
    v52 = 1.0;
  }

  v53 = (v13 * v41) + (v12 * v40);
  *(a1 + 276) = ((v10 + v11) + ((v12 * v48) * v48)) + ((v13 * v49) * v49);
  *(a1 + 280) = v50;
  *(a1 + 284) = v51;
  *(a1 + 288) = v50;
  *(a1 + 292) = v52;
  *(a1 + 296) = v53;
  *(a1 + 300) = v51;
  *(a1 + 304) = v53;
  *(a1 + 308) = v42;
  if (*(a1 + 196) != 1)
  {
    goto LABEL_12;
  }

  v55 = *(a1 + 180);
  v54 = *(a1 + 184);
  v56 = v54 - v55;
  if ((v54 - v55) <= 0.0)
  {
    v56 = -(v54 - v55);
  }

  if (v56 < 0.009)
  {
    *(a1 + 200) = 3;
    goto LABEL_14;
  }

  v57 = (v37 * v33) + (v36 * v32);
  if (v57 <= v55)
  {
    if (*(a1 + 200) != 1)
    {
      v70 = 1;
LABEL_24:
      *(a1 + 200) = v70;
      goto LABEL_13;
    }
  }

  else
  {
    if (v57 < v54)
    {
LABEL_12:
      *(a1 + 200) = 0;
LABEL_13:
      *(a1 + 172) = 0;
      goto LABEL_14;
    }

    if (*(a1 + 200) != 2)
    {
      v70 = 2;
      goto LABEL_24;
    }
  }

LABEL_14:
  if ((*(a1 + 197) & 1) == 0)
  {
    *(a1 + 176) = 0;
  }

  if (*(a2 + 20) == 1)
  {
    v58 = vmulq_n_f32(*(a1 + 164), COERCE_FLOAT(*(a2 + 8)));
    *(a1 + 164) = v58;
    v59 = (v46 * v58.f32[0]) + (v36 * (v58.f32[3] + v58.f32[2]));
    v60 = (v47 * v58.f32[0]) + ((v58.f32[3] + v58.f32[2]) * v37);
    v61 = (v58.f32[1] + (v58.f32[0] * v49)) + ((v58.f32[3] + v58.f32[2]) * v41);
    v62 = v75 - (v10 * v59);
    v63 = v74 - (v10 * v60);
    v64 = v78 - (v12 * ((v58.f32[1] + (v58.f32[0] * v48)) + ((v58.f32[3] + v58.f32[2]) * v40)));
    v65 = v77 + (v11 * v59);
    v66 = v76 + (v11 * v60);
    v67 = v79 + (v13 * v61);
  }

  else
  {
    *(a1 + 172) = 0;
    *(a1 + 164) = 0;
    v64 = v78;
    v67 = v79;
    v66 = v76;
    v65 = v77;
    v63 = v74;
    v62 = v75;
  }

  v68 = (*(a2 + 32) + 16 * *(a1 + 204));
  *v68 = v62;
  v68[1] = v63;
  *(*(a2 + 32) + 16 * *(a1 + 204) + 12) = v64;
  v69 = (*(a2 + 32) + 16 * *(a1 + 208));
  *v69 = v65;
  v69[1] = v66;
  *(*(a2 + 32) + 16 * *(a1 + 208) + 12) = v67;
}

float32x2_t b2PrismaticJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (v4 + 16 * *(a1 + 204));
  v6 = *v5;
  v7 = v5[1].f32[1];
  v8 = (v4 + 16 * *(a1 + 208));
  v9 = *v8;
  v10 = v8[1].f32[1];
  v12 = *(a1 + 228);
  v11 = *(a1 + 232);
  v14 = *(a1 + 236);
  v13 = *(a1 + 240);
  if (*(a1 + 197) == 1 && *(a1 + 200) != 3)
  {
    v15 = vsub_f32(v9, v6);
    v16 = *(a1 + 272);
    v17 = *(a1 + 268);
    v18 = *(a1 + 176);
    v19 = *a2 * *(a1 + 188);
    v20 = *(a1 + 244);
    v21 = v18 + (*(a1 + 312) * (*(a1 + 192) - (((COERCE_FLOAT(vmul_f32(v15, v20).i32[1]) + (v20.f32[0] * v15.f32[0])) + (v16 * v10)) - (v17 * v7))));
    if (v21 >= v19)
    {
      v21 = *a2 * *(a1 + 188);
    }

    if (v21 < -v19)
    {
      v21 = -v19;
    }

    *(a1 + 176) = v21;
    v22 = v21 - v18;
    v23 = vmul_n_f32(v20, v22);
    v6 = vsub_f32(v6, vmul_n_f32(v23, v12));
    v7 = v7 - (v14 * (v17 * v22));
    v9 = vadd_f32(v9, vmul_n_f32(v23, v11));
    v10 = v10 + (v13 * (v16 * v22));
  }

  v64 = v12;
  v65 = v11;
  v24 = vsub_f32(v9, v6);
  v25 = ((vmuls_lane_f32(*(a1 + 256), v24, 1) + (*(a1 + 252) * v24.f32[0])) + (*(a1 + 264) * v10)) - (*(a1 + 260) * v7);
  v26 = v10 - v7;
  if (*(a1 + 196) == 1 && *(a1 + 200))
  {
    v62 = v14;
    v63 = v13;
    v27 = ((v24.f32[1] * *(a1 + 248)) + (*(a1 + 244) * v24.f32[0])) + (*(a1 + 272) * v10);
    v28 = -*(a1 + 268);
    v30 = *(a1 + 164);
    v29 = *(a1 + 168);
    v61 = *(a1 + 172);
    v31 = -v25;
    v32 = -v26;
    v66.var0 = -v25;
    v66.var1 = -v26;
    v66.var2 = -(v27 + (v28 * v7));
    v33.f32[0] = b2Mat33::Solve33((a1 + 276), &v66);
    v33.i32[1] = v34;
    *(a1 + 164) = vadd_f32(v33, *(a1 + 164));
    v36 = v35 + *(a1 + 172);
    *(a1 + 172) = v36;
    v37 = *(a1 + 200);
    v60 = v30;
    if (v37 == 2)
    {
      v38 = v36 < 0.0;
    }

    else
    {
      if (v37 != 1)
      {
        v47 = v29;
LABEL_19:
        v48 = v36 - v61;
        v49 = v31 - (*(a1 + 300) * v48);
        v50 = v32 - (v48 * *(a1 + 304));
        v66.var0 = v49;
        v66.var1 = v50;
        v51 = v60 + b2Mat33::Solve22((a1 + 276), &v66);
        v53 = v47 + v52;
        *(a1 + 164) = v51;
        *(a1 + 168) = v53;
        v54 = v51 - v60;
        v55 = v53 - v47;
        v56 = *(a1 + 172) - v61;
        v44 = vadd_f32(vmul_n_f32(*(a1 + 252), v51 - v60), vmul_n_f32(*(a1 + 244), v56));
        v57 = (v55 + (v54 * *(a1 + 260))) + (v56 * *(a1 + 268));
        v58 = (v55 + (v54 * *(a1 + 264))) + (v56 * *(a1 + 272));
        v45 = v7 - (v62 * v57);
        v46 = v10 + (v63 * v58);
        goto LABEL_20;
      }

      v38 = v36 > 0.0;
    }

    v47 = v29;
    if (!v38)
    {
      v36 = 0.0;
    }

    *(a1 + 172) = v36;
    goto LABEL_19;
  }

  v66.var0 = -v25;
  v66.var1 = -v26;
  v39 = b2Mat33::Solve22((a1 + 276), &v66);
  v41 = *&v40 + (v39 * *(a1 + 260));
  v42 = *&v40 + (v39 * *(a1 + 264));
  v43 = __PAIR64__(v40, LODWORD(v39));
  v44 = vmul_n_f32(*(a1 + 252), v39);
  *(a1 + 164) = vadd_f32(v43, *(a1 + 164));
  v45 = v7 - (v14 * v41);
  v46 = v10 + (v13 * v42);
LABEL_20:
  *(*(a2 + 32) + 16 * *(a1 + 204)) = vsub_f32(v6, vmul_n_f32(v44, v64));
  *(*(a2 + 32) + 16 * *(a1 + 204) + 12) = v45;
  result = vadd_f32(v9, vmul_n_f32(v44, v65));
  *(*(a2 + 32) + 16 * *(a1 + 208)) = result;
  *(*(a2 + 32) + 16 * *(a1 + 208) + 12) = v46;
  return result;
}

BOOL b2PrismaticJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 204));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v85 = v8;
  v9 = (v4 + 16 * *(a1 + 208));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = __sincosf_stret(v8);
  v14 = __sincosf_stret(v12);
  v16 = *(a1 + 228);
  v15 = *(a1 + 232);
  v18 = *(a1 + 236);
  v17 = *(a1 + 240);
  v19 = *(a1 + 128) - *(a1 + 212);
  v20 = *(a1 + 132) - *(a1 + 216);
  v21 = (v13.__cosval * v19) - (v13.__sinval * v20);
  v22 = (v13.__cosval * v20) + (v13.__sinval * v19);
  v23 = *(a1 + 136) - *(a1 + 220);
  v24 = *(a1 + 140) - *(a1 + 224);
  v89 = v11;
  v90 = v10;
  v81 = (v14.__cosval * v24) + (v14.__sinval * v23);
  v82 = (v14.__cosval * v23) - (v14.__sinval * v24);
  v86 = v7;
  v87 = v6;
  v25 = (v11 + v81) - v7;
  v83 = v22;
  v84 = v21;
  v26 = ((v10 + v82) - v6) - v21;
  v27 = v25 - v22;
  v28 = *(a1 + 144);
  v29 = *(a1 + 148);
  v30 = (v13.__cosval * v28) - (v13.__sinval * v29);
  v31 = (v13.__cosval * v29) + (v13.__sinval * v28);
  v32 = *(a1 + 152);
  v33 = *(a1 + 156);
  v34 = (v13.__cosval * v32) - (v13.__sinval * v33);
  v35 = (v13.__cosval * v33) + (v13.__sinval * v32);
  v36 = (v35 * v27) + (v34 * v26);
  v88 = v12;
  v37 = -v36;
  if (v36 <= 0.0)
  {
    v38 = -v36;
  }

  else
  {
    v38 = (v35 * v27) + (v34 * v26);
  }

  v78 = (v12 - v8) - *(a1 + 160);
  v79 = v27;
  v80 = v30;
  v76 = *(a1 + 240);
  if (*(a1 + 196) == 1)
  {
    v39 = (v31 * v27) + (v30 * v26);
    v41 = *(a1 + 180);
    v40 = *(a1 + 184);
    v42 = v40 - v41;
    if ((v40 - v41) <= 0.0)
    {
      v42 = -(v40 - v41);
    }

    if (v42 < 0.009)
    {
      v43 = fminf(v39, 0.2);
      if (v43 < -0.2)
      {
        v43 = -0.2;
      }

      if (v39 <= 0.0)
      {
        v39 = -v39;
      }

LABEL_23:
      if (v38 <= v39)
      {
        v38 = v39;
      }

      v77 = v38;
      v55 = v16 + v15;
      v56 = *(a1 + 260);
      v57 = v18 * v56;
      v58 = (v16 + v15) + ((v18 * v56) * v56);
      v49 = *(a1 + 232);
      v59 = *(a1 + 264);
      v51 = *(a1 + 228);
      v60 = v17 * v59;
      v61 = v58 + ((v17 * v59) * v59);
      v62 = (v17 * v59) + (v18 * v56);
      v63 = *(a1 + 268);
      v64 = *(a1 + 272);
      v65 = (v60 * v64) + (v57 * v63);
      v66 = v18 + v17;
      if ((v18 + v17) == 0.0)
      {
        v66 = 1.0;
      }

      v67 = v17 * v64;
      v68 = (v17 * v64) + (v18 * v63);
      v50 = *(a1 + 236);
      *(a1 + 276) = v61;
      *(a1 + 280) = v62;
      *(a1 + 284) = v65;
      *(a1 + 288) = v62;
      *(a1 + 292) = v66;
      *(a1 + 296) = v68;
      *(a1 + 300) = v65;
      *(a1 + 304) = v68;
      *(a1 + 308) = (v55 + ((v18 * v63) * v63)) + (v67 * v64);
      v91.var0 = v37;
      v91.var1 = -v78;
      v91.var2 = -v43;
      v52 = b2Mat33::Solve33((a1 + 276), &v91);
      goto LABEL_28;
    }

    if (v39 <= v41)
    {
      v43 = fminf((v39 - v41) + 0.0045, 0.0);
      if (v43 < -0.2)
      {
        v43 = -0.2;
      }

      v39 = v41 - v39;
      goto LABEL_23;
    }

    if (v39 >= v40)
    {
      v39 = v39 - v40;
      v43 = fminf(v39 + -0.0045, 0.2);
      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      goto LABEL_23;
    }
  }

  v44 = *(a1 + 260);
  v45 = *(a1 + 264);
  v46 = ((v16 + v15) + ((v18 * v44) * v44)) + ((v17 * v45) * v45);
  v47 = (v17 * v45) + (v18 * v44);
  *(a1 + 276) = v46;
  *(a1 + 280) = v47;
  v48 = 1.0;
  *(a1 + 284) = 0;
  *(a1 + 288) = v47;
  if ((v18 + v17) != 0.0)
  {
    v48 = v18 + v17;
  }

  *(a1 + 292) = v48;
  *(a1 + 296) = 0;
  v91.var0 = v37;
  v91.var1 = -v78;
  v49 = v15;
  v50 = v18;
  v51 = v16;
  v77 = v38;
  v52 = b2Mat33::Solve22((a1 + 276), &v91);
  v54 = 0.0;
LABEL_28:
  v69 = v78;
  if (v78 <= 0.0)
  {
    v69 = -v78;
  }

  v70 = (v34 * v52) + (v80 * v54);
  v71 = (v35 * v52) + (v31 * v54);
  v72 = (*(a2 + 24) + 16 * *(a1 + 204));
  *v72 = v87 - (v51 * v70);
  v72[1] = v86 - (v51 * v71);
  *(*(a2 + 24) + 16 * *(a1 + 204) + 12) = v85 - (v50 * ((v53 + (v52 * (((v84 + v26) * v35) - ((v83 + v79) * v34)))) + (v54 * (((v84 + v26) * v31) - ((v83 + v79) * v80)))));
  v73 = (*(a2 + 24) + 16 * *(a1 + 208));
  *v73 = v90 + (v49 * v70);
  v73[1] = v89 + (v49 * v71);
  *(*(a2 + 24) + 16 * *(a1 + 208) + 12) = v88 + (v76 * ((v53 + (v52 * ((v82 * v35) - (v81 * v34)))) + (v54 * ((v82 * v31) - (v81 * v80)))));
  return v69 <= 0.034907 && v77 <= 0.0045;
}

float b2PrismaticJoint::GetJointTranslation(b2PrismaticJoint *this)
{
  var6 = this->var6;
  var7 = this->var7;
  var0 = var6->var8.var1.var0;
  var1 = var6->var8.var1.var1;
  x = this->var11.x;
  return (((((var7->var8.var1.var1 * this->var12.y) + (var7->var8.var1.var0 * this->var12.x)) + var7->var8.var0.y) - (((var1 * this->var11.y) + (var0 * x)) + var6->var8.var0.y)) * ((var1 * this->var13.y) + (var0 * this->var13.x))) + (((var7->var8.var0.x + ((var7->var8.var1.var1 * this->var12.x) - (var7->var8.var1.var0 * this->var12.y))) - (var6->var8.var0.x + ((var1 * x) - (var0 * this->var11.y)))) * ((var1 * this->var13.x) - (var0 * this->var13.y)));
}

float b2PrismaticJoint::GetJointSpeed(b2PrismaticJoint *this)
{
  p_var0 = &this->var6->var0;
  v2 = &this->var7->var0;
  v3 = this->var11.x - p_var0[16];
  v4 = this->var11.y - p_var0[17];
  v6 = p_var0[10];
  v5 = p_var0[11];
  v7 = (v5 * v3) - (v6 * v4);
  v8 = (v5 * v4) + (v6 * v3);
  v9 = this->var12.x - v2[16];
  v10 = this->var12.y - v2[17];
  v12 = v2[10];
  v11 = v2[11];
  v13 = (v11 * v9) - (v12 * v10);
  v14 = (v11 * v10) + (v12 * v9);
  x = this->var13.x;
  y = this->var13.y;
  v17 = p_var0[34];
  return ((((v14 + v2[25]) - (v8 + p_var0[25])) * (((v5 * x) - (v6 * y)) * v17)) + (((v13 + v2[24]) - (v7 + p_var0[24])) * -(v17 * ((v5 * y) + (v6 * x))))) + ((((v5 * y) + (v6 * x)) * (((v2[33] + (v13 * v2[34])) - p_var0[33]) - (v7 * v17))) + (((v5 * x) - (v6 * y)) * ((v8 * v17) + ((v2[32] - (v14 * v2[34])) - p_var0[32]))));
}

b2PrismaticJoint *b2PrismaticJoint::EnableLimit(b2PrismaticJoint *this, _BOOL4 a2)
{
  if (this->var22 != a2)
  {
    v2 = a2;
    v3 = this;
    b2Body::SetAwake(this->var6, 1);
    this = b2Body::SetAwake(v3->var7, 1);
    v3->var22 = v2;
    v3->var16.var2 = 0.0;
  }

  return this;
}

b2PrismaticJoint *b2PrismaticJoint::SetLimits(b2PrismaticJoint *this, float a2, float a3)
{
  if (a2 > a3)
  {
    b2PrismaticJoint::SetLimits();
  }

  v5 = this;
  if (this->var18 != a2 || this->var19 != a3)
  {
    b2Body::SetAwake(this->var6, 1);
    this = b2Body::SetAwake(v5->var7, 1);
    v5->var18 = a2;
    v5->var19 = a3;
    v5->var16.var2 = 0.0;
  }

  return this;
}

b2Body *b2PrismaticJoint::EnableMotor(b2PrismaticJoint *this, BOOL a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var23 = a2;
  return result;
}

b2Body *b2PrismaticJoint::SetMotorSpeed(b2PrismaticJoint *this, float a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var21 = a2;
  return result;
}

b2Body *b2PrismaticJoint::SetMaxMotorForce(b2PrismaticJoint *this, float a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var20 = a2;
  return result;
}

uint64_t b2PulleyJointDef::Initialize(uint64_t this, b2Body *a2, b2Body *a3, const b2Vec2 *a4, const b2Vec2 *a5, const b2Vec2 *a6, const b2Vec2 *a7, float a8)
{
  *(this + 16) = a2;
  *(this + 24) = a3;
  *(this + 36) = *a4;
  *(this + 44) = *a5;
  v8 = a6->x - a2->var8.var0.x;
  v9 = a6->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  *(this + 52) = (v9 * var0) + (var1 * v8);
  *(this + 56) = (var1 * v9) - (var0 * v8);
  v12 = a7->x - a3->var8.var0.x;
  v13 = a7->y - a3->var8.var0.y;
  v15 = a3->var8.var1.var0;
  v14 = a3->var8.var1.var1;
  *(this + 60) = (v13 * v15) + (v14 * v12);
  *(this + 64) = (v14 * v13) - (v15 * v12);
  v16 = a6->y - a4->y;
  v17 = sqrtf((v16 * v16) + ((a6->x - a4->x) * (a6->x - a4->x)));
  v18 = sqrtf(((a7->y - a5->y) * (a7->y - a5->y)) + ((a7->x - a5->x) * (a7->x - a5->x)));
  *(this + 68) = v17;
  *(this + 72) = v18;
  *(this + 76) = a8;
  if (a8 <= 0.00000011921)
  {
    b2PulleyJointDef::Initialize();
  }

  return this;
}

void b2PulleyJoint::b2PulleyJoint(b2PulleyJoint *this, const b2PulleyJointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079B50;
  *(v3 + 128) = *(a2 + 36);
  *(v3 + 136) = *(a2 + 44);
  *(v3 + 144) = *(a2 + 52);
  *(v3 + 152) = *(a2 + 60);
  v4 = *(a2 + 19);
  if (v4 == 0.0)
  {
    b2PulleyJoint::b2PulleyJoint();
  }

  *(v3 + 160) = *(a2 + 17) + (v4 * *(a2 + 18));
  *(v3 + 164) = v4;
  *(v3 + 168) = 0;
}

void b2PulleyJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 172) = v6;
  *(a1 + 176) = v7;
  v8 = *(v4 + 64);
  *(a1 + 212) = v8;
  v9 = *(v5 + 64);
  *(a1 + 220) = v9;
  v10 = *(v4 + 212);
  v11 = *(v5 + 212);
  *(a1 + 228) = v10;
  *(a1 + 232) = v11;
  v60 = v11;
  v58 = *(v4 + 224);
  v59 = *(v5 + 224);
  *(a1 + 236) = v58;
  *(a1 + 240) = v59;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = (v12 + 16 * v6);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v13 + 16 * v6);
  v61 = v17[1];
  v62 = *v17;
  v18 = (v12 + 16 * v7);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v22 = (v13 + 16 * v7);
  v64 = *v22;
  v65 = v17[3];
  v63 = v22[1];
  v66 = v22[3];
  v23 = __sincosf_stret(v14[3]);
  v24 = __sincosf_stret(v21);
  v25 = *(a1 + 144) - *&v8;
  v26 = *(a1 + 148) - *(&v8 + 1);
  v27 = (v23.__cosval * v25) - (v23.__sinval * v26);
  v28 = (v23.__cosval * v26) + (v23.__sinval * v25);
  *(a1 + 196) = v27;
  *(a1 + 200) = v28;
  v29 = *(a1 + 152) - *&v9;
  v30 = *(a1 + 156) - *(&v9 + 1);
  v31 = (v24.__cosval * v29) - (v24.__sinval * v30);
  v32 = (v24.__cosval * v30) + (v24.__sinval * v29);
  *(a1 + 204) = v31;
  *(a1 + 208) = v32;
  v33 = (v16 + v27) - *(a1 + 128);
  v34 = (v15 + v28) - *(a1 + 132);
  v35 = (v19 + v31) - *(a1 + 136);
  v36 = (v20 + v32) - *(a1 + 140);
  v37 = sqrtf((v34 * v34) + (v33 * v33));
  v38 = sqrtf((v36 * v36) + (v35 * v35));
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  if (v37 > 0.045)
  {
    v40 = v33 * (1.0 / v37);
    v41 = v34 * (1.0 / v37);
  }

  *(a1 + 180) = v40;
  *(a1 + 184) = v41;
  v42 = 0.0;
  if (v38 > 0.045)
  {
    v39 = v35 * (1.0 / v38);
    v42 = v36 * (1.0 / v38);
  }

  *(a1 + 188) = v39;
  *(a1 + 192) = v42;
  v43 = *(a1 + 164);
  v44 = (v10 + ((v58 * ((v27 * v41) - (v28 * v40))) * ((v27 * v41) - (v28 * v40)))) + ((v43 * v43) * (v60 + ((v59 * ((v31 * v42) - (v32 * v39))) * ((v31 * v42) - (v32 * v39)))));
  if (v44 > 0.0)
  {
    v44 = 1.0 / v44;
  }

  *(a1 + 244) = v44;
  if (*(a2 + 20) == 1)
  {
    v45 = *(a2 + 8) * *(a1 + 168);
    *(a1 + 168) = v45;
    v46 = -(v45 * v40);
    v47 = -(v45 * v41);
    v48 = -(v43 * v45);
    v49 = v39 * v48;
    v50 = v42 * v48;
    v51 = v62 + (v10 * v46);
    v52 = v61 + (v10 * v47);
    v53 = v65 + (v58 * ((v46 * -v28) + (v27 * v47)));
    v54 = v64 + (v60 * v49);
    v55 = v63 + (v60 * v50);
    v56 = v66 + (v59 * ((v49 * -v32) + (v31 * v50)));
  }

  else
  {
    *(a1 + 168) = 0;
    v53 = v65;
    v56 = v66;
    v55 = v63;
    v54 = v64;
    v52 = v61;
    v51 = v62;
  }

  *v17 = v51;
  v17[1] = v52;
  *(*(a2 + 32) + 16 * *(a1 + 172) + 12) = v53;
  v57 = (*(a2 + 32) + 16 * *(a1 + 176));
  *v57 = v54;
  v57[1] = v55;
  *(*(a2 + 32) + 16 * *(a1 + 176) + 12) = v56;
}

float b2PulleyJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 + 16 * *(a1 + 172));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = (v2 + 16 * *(a1 + 176));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v12 = *(a1 + 196);
  v11 = *(a1 + 200);
  v14 = *(a1 + 204);
  v13 = *(a1 + 208);
  v15 = *(a1 + 180);
  v16 = *(a1 + 184);
  v17 = *(a1 + 188);
  v18 = *(a1 + 192);
  v19 = *(a1 + 164);
  v20 = -(*(a1 + 244) * -((((v5 + (v6 * v12)) * v16) + (v15 * (*v3 - (v6 * v11)))) + (v19 * (((v9 + (v10 * v14)) * v18) + (v17 * (*v7 - (v10 * v13)))))));
  *(a1 + 168) = *(a1 + 168) - (*(a1 + 244) * -((((v5 + (v6 * v12)) * v16) + (v15 * (*v3 - (v6 * v11)))) + (v19 * (((v9 + (v10 * v14)) * v18) + (v17 * (*v7 - (v10 * v13)))))));
  v21 = -(v20 * v15);
  v22 = -(v20 * v16);
  v23 = -(v19 * v20);
  v24 = v17 * v23;
  v25 = v18 * v23;
  v26 = *(a1 + 228);
  v27 = *(a1 + 232);
  v28 = v6 + (*(a1 + 236) * ((v12 * v22) - (v11 * v21)));
  result = v10 + (*(a1 + 240) * ((v14 * v25) - (v13 * v24)));
  *v3 = v4 + (v26 * v21);
  v3[1] = v5 + (v26 * v22);
  *(*(a2 + 32) + 16 * *(a1 + 172) + 12) = v28;
  v30 = (*(a2 + 32) + 16 * *(a1 + 176));
  *v30 = v8 + (v24 * v27);
  v30[1] = v9 + (v25 * v27);
  *(*(a2 + 32) + 16 * *(a1 + 176) + 12) = result;
  return result;
}

BOOL b2PulleyJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 172));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 176));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = __sincosf_stret(v8);
  v14 = __sincosf_stret(v12);
  v15 = *(a1 + 144) - *(a1 + 212);
  v16 = *(a1 + 148) - *(a1 + 216);
  v17 = (v13.__cosval * v15) - (v13.__sinval * v16);
  v18 = (v13.__cosval * v16) + (v13.__sinval * v15);
  v19 = *(a1 + 152) - *(a1 + 220);
  v20 = *(a1 + 156) - *(a1 + 224);
  v21 = (v14.__cosval * v19) - (v14.__sinval * v20);
  v22 = (v14.__cosval * v20) + (v14.__sinval * v19);
  v23 = (v6 + v17) - *(a1 + 128);
  v24 = (v7 + v18) - *(a1 + 132);
  v25 = (v10 + v21) - *(a1 + 136);
  v26 = (v11 + v22) - *(a1 + 140);
  v27 = sqrtf((v24 * v24) + (v23 * v23));
  v28 = sqrtf((v26 * v26) + (v25 * v25));
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (v27 > 0.045)
  {
    v30 = v23 * (1.0 / v27);
    v31 = v24 * (1.0 / v27);
  }

  v32 = 0.0;
  if (v28 > 0.045)
  {
    v29 = v25 * (1.0 / v28);
    v32 = v26 * (1.0 / v28);
  }

  v33 = *(a1 + 236);
  v34 = *(a1 + 240);
  v35 = *(a1 + 228);
  v36 = *(a1 + 232);
  v37 = *(a1 + 164);
  v38 = (v35 + ((((v17 * v31) - (v18 * v30)) * v33) * ((v17 * v31) - (v18 * v30)))) + ((v37 * v37) * (v36 + ((((v21 * v32) - (v22 * v29)) * v34) * ((v21 * v32) - (v22 * v29)))));
  if (v38 > 0.0)
  {
    v38 = 1.0 / v38;
  }

  v39 = *(a1 + 160) - v27;
  v40 = v39 - (v37 * v28);
  v41 = -(v39 + (-v37 * v28));
  if (v40 > 0.0)
  {
    v41 = v40;
  }

  v42 = -(v38 * v40);
  v43 = -(v42 * v30);
  v44 = -(v42 * v31);
  v45 = -(v37 * v42);
  v46 = v29 * v45;
  v47 = v32 * v45;
  *v5 = v6 + (v35 * v43);
  v5[1] = v7 + (v35 * v44);
  *(*(a2 + 24) + 16 * *(a1 + 172) + 12) = v8 + (v33 * ((v17 * v44) - (v18 * v43)));
  v48 = (*(a2 + 24) + 16 * *(a1 + 176));
  *v48 = v10 + (v36 * v46);
  v48[1] = v11 + (v36 * v47);
  *(*(a2 + 24) + 16 * *(a1 + 176) + 12) = v12 + (v34 * ((v21 * v47) - (v22 * v46)));
  return v41 < 0.0045;
}

float b2PulleyJoint::GetLengthA(b2PulleyJoint *this)
{
  v1 = *(this + 12);
  v3 = v1[10];
  v2 = v1[11];
  v4 = *(this + 36);
  v5 = *(this + 37);
  v6 = v1[8] + ((v2 * v4) - (v3 * v5));
  v7 = ((v2 * v5) + (v3 * v4)) + v1[9];
  return sqrtf(((v7 - *(this + 33)) * (v7 - *(this + 33))) + ((v6 - *(this + 32)) * (v6 - *(this + 32))));
}

float b2PulleyJoint::GetLengthB(b2PulleyJoint *this)
{
  v1 = *(this + 13);
  v3 = v1[10];
  v2 = v1[11];
  v4 = *(this + 38);
  v5 = *(this + 39);
  v6 = v1[8] + ((v2 * v4) - (v3 * v5));
  v7 = ((v2 * v5) + (v3 * v4)) + v1[9];
  return sqrtf(((v7 - *(this + 35)) * (v7 - *(this + 35))) + ((v6 - *(this + 34)) * (v6 - *(this + 34))));
}

float b2RevoluteJointDef::Initialize(b2RevoluteJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4)
{
  this->bodyA = a2;
  this->bodyB = a3;
  v6 = a4->x - a2->var8.var0.x;
  v7 = a4->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  this->localAnchorA.x = (v7 * var0) + (var1 * v6);
  this->localAnchorA.y = (var1 * v7) - (var0 * v6);
  v10 = a4->x - a3->var8.var0.x;
  v11 = a4->y - a3->var8.var0.y;
  v13 = a3->var8.var1.var0;
  v12 = a3->var8.var1.var1;
  this->localAnchorB.x = (v11 * v13) + (v12 * v10);
  this->localAnchorB.y = (v12 * v11) - (v13 * v10);
  v14 = atan2f(a3->var8.var1.var0, a3->var8.var1.var1);
  result = v14 - atan2f(a2->var8.var1.var0, a2->var8.var1.var1);
  this->referenceAngle = result;
  return result;
}

void b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJoint *this, const b2JointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079898;
  *(v3 + 128) = *(&a2->var4 + 4);
  *(v3 + 136) = *(&a2[1].var0 + 1);
  *(v3 + 176) = HIDWORD(a2[1].var1);
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 180) = *(&a2[1].var2 + 4);
  *(v3 + 164) = vrev64_s32(*&a2[1].var4);
  *(v3 + 172) = a2[1].var2;
  *(v3 + 160) = BYTE4(a2[1].var3);
  *(v3 + 284) = 0;
}

float normalizeAngle(float result)
{
    ;
  }

    ;
  }

  return result;
}

void b2RevoluteJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 188) = v6;
  *(a1 + 192) = v7;
  v8 = *(v4 + 64);
  *(a1 + 212) = v8;
  v9 = *(v5 + 64);
  *(a1 + 220) = v9;
  v52 = *(v5 + 212);
  v53 = *(v4 + 212);
  *(a1 + 228) = v53;
  *(a1 + 232) = v52;
  v10 = *(v4 + 224);
  v11 = *(v5 + 224);
  *(a1 + 236) = v10;
  *(a1 + 240) = v11;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(v12 + 16 * v6 + 12);
  v15 = (v13 + 16 * v6);
  v16 = *v15;
  v17 = *(v12 + 16 * v7 + 12);
  v18 = (v13 + 16 * v7);
  v19 = *v18;
  v54 = v15[1].f32[1];
  v55 = v18[1].f32[1];
  v20 = __sincosf_stret(v14);
  v21 = __sincosf_stret(v17);
  v22 = *(a1 + 128) - *&v8;
  v23 = *(a1 + 132) - *(&v8 + 1);
  _S2 = (v20.__cosval * v22) - (v20.__sinval * v23);
  v25 = (v20.__cosval * v23) + (v20.__sinval * v22);
  *(a1 + 196) = _S2;
  *(a1 + 200) = v25;
  v26 = *(a1 + 136) - *&v9;
  v27 = *(a1 + 140) - *(&v9 + 1);
  _S3 = (v21.__cosval * v26) - (v21.__sinval * v27);
  v29 = (v21.__cosval * v27) + (v21.__sinval * v26);
  *(a1 + 204) = _S3;
  *(a1 + 208) = v29;
  v30 = ((v53 + v52) + ((v25 * v25) * v10)) + ((v29 * v29) * v11);
  v31 = (v11 * -(v29 * _S3)) + (-(v25 * _S2) * v10);
  v32 = v10 + v11;
  v33 = -(v29 * v11) - (v25 * v10);
  *(a1 + 268) = v33;
  *(a1 + 244) = v30;
  *(a1 + 248) = v31;
  *(a1 + 260) = ((v53 + v52) + ((_S2 * _S2) * v10)) + ((_S3 * _S3) * v11);
  v34 = (v11 * _S3) + (_S2 * v10);
  *(a1 + 272) = v34;
  *(a1 + 252) = v33;
  *(a1 + 256) = v31;
  *(a1 + 264) = v34;
  *(a1 + 276) = v10 + v11;
  v35 = 1.0 / (v10 + v11);
  if ((v10 + v11) <= 0.0)
  {
    v35 = v10 + v11;
  }

  *(a1 + 280) = v35;
  if (!*(a1 + 160) || v32 == 0.0)
  {
    *(a1 + 156) = 0;
  }

  if (*(a1 + 172) != 1 || v32 == 0.0)
  {
    *(a1 + 284) = 0;
    goto LABEL_27;
  }

    ;
  }

    ;
  }

  v38 = *(a1 + 180);
  v37 = *(a1 + 184);
  v39 = v37 - v38;
  if ((v37 - v38) <= 0.0)
  {
    v39 = -(v37 - v38);
  }

  if (v39 >= 0.069813)
  {
    if (i <= v38)
    {
      if (*(a1 + 284) != 1)
      {
        *(a1 + 152) = 0;
      }

      v40 = 1;
    }

    else
    {
      if (i < v37)
      {
        *(a1 + 284) = 0;
        *(a1 + 152) = 0;
        goto LABEL_27;
      }

      if (*(a1 + 284) != 2)
      {
        *(a1 + 152) = 0;
      }

      v40 = 2;
    }
  }

  else
  {
    v40 = 3;
  }

  *(a1 + 284) = v40;
LABEL_27:
  if (*(a2 + 20) == 1)
  {
    v41 = *(a2 + 8);
    v42 = vmul_n_f32(*(a1 + 152), *&v41);
    _D1 = vmul_n_f32(*(a1 + 144), *&v41);
    *(a1 + 144) = _D1;
    *(a1 + 152) = v42;
    v16 = vsub_f32(v16, vmul_n_f32(_D1, v53));
    __asm { FMLA            S4, S2, V1.S[1] }

    v49 = v54 - (v10 * (v42.f32[0] + (v42.f32[1] + _S4)));
    v19 = vadd_f32(v19, vmul_n_f32(_D1, v52));
    __asm { FMLA            S0, S3, V1.S[1] }

    v51 = v55 + (v11 * (v42.f32[0] + (v42.f32[1] + _S0)));
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v49 = v54;
    v51 = v55;
  }

  *v15 = v16;
  *(*(a2 + 32) + 16 * *(a1 + 188) + 12) = v49;
  *(*(a2 + 32) + 16 * *(a1 + 192)) = v19;
  *(*(a2 + 32) + 16 * *(a1 + 192) + 12) = v51;
}

float b2RevoluteJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (v4 + 16 * *(a1 + 188));
  v6 = v5[1].f32[1];
  v7 = (v4 + 16 * *(a1 + 192));
  v8 = *v5;
  v9 = *v7;
  v10 = v7[1].f32[1];
  v12 = *(a1 + 236);
  v11 = *(a1 + 240);
  v13 = v12 + v11;
  if (*(a1 + 160) == 1 && *(a1 + 284) != 3 && v13 != 0.0)
  {
    v14 = *(a1 + 164);
    v15 = *(a1 + 156);
    v16 = v15 - (*(a1 + 280) * ((v10 - v6) - *(a1 + 168)));
    if (v16 >= (*a2 * v14))
    {
      v16 = *a2 * v14;
    }

    if (v16 < -(*a2 * v14))
    {
      v16 = -(*a2 * v14);
    }

    *(a1 + 156) = v16;
    v17 = v16 - v15;
    v6 = v6 - (v12 * v17);
    v10 = v10 + (v11 * v17);
  }

  v19 = *(a1 + 228);
  v18 = *(a1 + 232);
  v52 = v8;
  v53 = v9;
  v50 = v6;
  v51 = v10;
  if (*(a1 + 172) == 1 && *(a1 + 284) && v13 != 0.0)
  {
    v20 = vrev64_s32(vmul_n_f32(*(a1 + 204), v10));
    v21.i32[0] = vsub_f32(v9, v20).u32[0];
    v21.i32[1] = vadd_f32(v9, v20).i32[1];
    v22 = vsub_f32(v21, v8);
    v23 = vrev64_s32(vmul_n_f32(*(a1 + 196), v6));
    v24.i32[0] = vadd_f32(v22, v23).u32[0];
    v24.i32[1] = vsub_f32(v22, v23).i32[1];
    v49 = v24;
    *&v55.var0 = v24;
    v55.var2 = v10 - v6;
    v26.i32[0] = b2Mat33::Solve33((a1 + 244), &v55);
    v28 = v27;
    v29 = -v26.f32[0];
    v30 = -v27;
    v31 = -v25;
    v32 = *(a1 + 284);
    if (v32 == 1)
    {
      v44 = *(a1 + 152);
      if (v44 < v25)
      {
LABEL_19:
        v54 = vsub_f32(vmul_n_f32(*(a1 + 268), v44), v49);
        v29 = b2Mat33::Solve22((a1 + 244), &v54);
        v31 = -*(a1 + 152);
        *(a1 + 144) = vadd_f32(__PAIR64__(LODWORD(v30), LODWORD(v29)), *(a1 + 144));
        *(a1 + 152) = 0;
LABEL_22:
        v33 = v52;
        v36 = v53;
        v35 = v50;
        v34 = v51;
LABEL_23:
        v42 = v35 - (v12 * (v31 + ((*(a1 + 196) * v30) - (*(a1 + 200) * v29))));
        v43 = v34 + (v11 * (v31 + ((*(a1 + 204) * v30) - (*(a1 + 208) * v29))));
        goto LABEL_24;
      }
    }

    else
    {
      if (v32 != 2)
      {
        v34 = v51;
        v33 = v52;
        v35 = v50;
        if (v32 == 3)
        {
          v26.f32[1] = v28;
          *(a1 + 144) = vsub_f32(*(a1 + 144), v26);
          *(a1 + 152) = *(a1 + 152) - v25;
        }

        v36 = v53;
        goto LABEL_23;
      }

      v44 = *(a1 + 152);
      if (v44 > v25)
      {
        goto LABEL_19;
      }
    }

    v26.f32[1] = v28;
    *(a1 + 144) = vsub_f32(*(a1 + 144), v26);
    *(a1 + 152) = v44 - v25;
    goto LABEL_22;
  }

  v37 = vrev64_s32(vmul_n_f32(*(a1 + 204), v10));
  v38.i32[0] = vsub_f32(v9, v37).u32[0];
  v38.i32[1] = vadd_f32(v9, v37).i32[1];
  v39 = vsub_f32(v38, v8);
  v40 = vrev64_s32(vmul_n_f32(*(a1 + 196), v6));
  v41.i32[0] = vadd_f32(v39, v40).u32[0];
  v41.i32[1] = vsub_f32(v39, v40).i32[1];
  *&v55.var0 = vneg_f32(v41);
  v29 = b2Mat33::Solve22((a1 + 244), &v55);
  v33 = v52;
  v36 = v53;
  *(a1 + 144) = vadd_f32(__PAIR64__(LODWORD(v30), LODWORD(v29)), *(a1 + 144));
  v42 = v50 - (v12 * ((*(a1 + 196) * v30) - (*(a1 + 200) * v29)));
  v43 = v51 + (v11 * ((*(a1 + 204) * v30) - (*(a1 + 208) * v29)));
LABEL_24:
  v45 = v33.f32[0] - (v19 * v29);
  result = v36.f32[0] + (v18 * v29);
  v47 = (*(a2 + 32) + 16 * *(a1 + 188));
  *v47 = v45;
  v47[1] = v33.f32[1] - (v19 * v30);
  *(*(a2 + 32) + 16 * *(a1 + 188) + 12) = v42;
  v48 = (*(a2 + 32) + 16 * *(a1 + 192));
  *v48 = result;
  v48[1] = v36.f32[1] + (v18 * v30);
  *(*(a2 + 32) + 16 * *(a1 + 192) + 12) = v43;
  return result;
}

uint64_t b2RevoluteJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 188));
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 192));
  v48 = v9[1];
  v49 = *v9;
  v10 = v9[3];
  v11 = *(a1 + 236);
  v12 = *(a1 + 240);
  if (*(a1 + 172) != 1)
  {
    v14 = 1;
    goto LABEL_23;
  }

  v13 = *(a1 + 284);
  v14 = 1;
  if (v13 && (v11 + v12) != 0.0)
  {
      ;
    }

      ;
    }

    if (v13 == 1)
    {
      v22 = i - *(a1 + 180);
      v17 = -v22;
      v21 = -0.13963;
      v19 = fminf(v22 + 0.034907, 0.0);
      v20 = v19 < -0.13963;
    }

    else
    {
      if (v13 != 2)
      {
        v16 = 0.0;
        v17 = 0.0;
        if (v13 == 3)
        {
          v18 = fminf(i - *(a1 + 180), 0.13963);
          if (v18 < -0.13963)
          {
            v18 = -0.13963;
          }

          v16 = -(*(a1 + 280) * v18);
          v17 = -v18;
          if (v18 > 0.0)
          {
            v17 = v18;
          }
        }

LABEL_22:
        v8 = v8 - (v11 * v16);
        v10 = v10 + (v12 * v16);
        v14 = v17 <= 0.034907;
        goto LABEL_23;
      }

      v17 = i - *(a1 + 184);
      v19 = fminf(v17 + -0.034907, 0.13963);
      v20 = v19 < 0.0;
      v21 = 0.0;
    }

    if (v20)
    {
      v19 = v21;
    }

    v16 = -(*(a1 + 280) * v19);
    goto LABEL_22;
  }

LABEL_23:
  v23 = __sincosf_stret(v8);
  v24 = __sincosf_stret(v10);
  v25 = *(a1 + 128) - *(a1 + 212);
  v26 = *(a1 + 132) - *(a1 + 216);
  v27 = (v23.__cosval * v25) - (v23.__sinval * v26);
  v28 = (v23.__cosval * v26) + (v23.__sinval * v25);
  v29 = *(a1 + 136) - *(a1 + 220);
  v30 = *(a1 + 140) - *(a1 + 224);
  v31 = (v24.__cosval * v29) - (v24.__sinval * v30);
  v32 = (v24.__cosval * v30) + (v24.__sinval * v29);
  v33 = ((v49 + v31) - v7) - v27;
  v34 = ((v48 + v32) - v6) - v28;
  v35 = sqrtf((v34 * v34) + (v33 * v33));
  v36 = *(a1 + 228);
  v37 = *(a1 + 232);
  v38 = ((v36 + v37) + ((v11 * v28) * v28)) + ((v12 * v32) * v32);
  v39 = (v32 * -(v12 * v31)) + (-(v11 * v27) * v28);
  v40 = ((v36 + v37) + ((v11 * v27) * v27)) + ((v12 * v31) * v31);
  v41 = (v38 * v40) - (v39 * v39);
  if (v41 != 0.0)
  {
    v41 = 1.0 / v41;
  }

  v42 = (v40 * v33) - (v39 * v34);
  v43 = (v38 * v34) - (v39 * v33);
  v44 = -(v41 * v42);
  v45 = -(v41 * v43);
  *v5 = v7 - (v36 * v44);
  v5[1] = v6 - (v36 * v45);
  *(*(a2 + 24) + 16 * *(a1 + 188) + 12) = v8 - (v11 * ((v27 * v45) - (v28 * v44)));
  v46 = (*(a2 + 24) + 16 * *(a1 + 192));
  *v46 = v49 + (v37 * v44);
  v46[1] = v48 + (v37 * v45);
  *(*(a2 + 24) + 16 * *(a1 + 192) + 12) = v10 + (v12 * ((v31 * v45) - (v32 * v44)));
  return (v35 <= 0.0045) & v14;
}

b2Body *b2RevoluteJoint::EnableMotor(b2RevoluteJoint *this, BOOL a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var15 = a2;
  return result;
}

b2Body *b2RevoluteJoint::SetMotorSpeed(b2RevoluteJoint *this, float a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var17 = a2;
  return result;
}

b2Body *b2RevoluteJoint::SetMaxMotorTorque(b2RevoluteJoint *this, float a2)
{
  b2Body::SetAwake(this->var6, 1);
  result = b2Body::SetAwake(this->var7, 1);
  this->var16 = a2;
  return result;
}

b2RevoluteJoint *b2RevoluteJoint::EnableLimit(b2RevoluteJoint *this, _BOOL4 a2)
{
  if (this->var18 != a2)
  {
    v2 = a2;
    v3 = this;
    b2Body::SetAwake(this->var6, 1);
    this = b2Body::SetAwake(v3->var7, 1);
    v3->var18 = v2;
    v3->var13.var2 = 0.0;
  }

  return this;
}

b2RevoluteJoint *b2RevoluteJoint::SetLimits(b2RevoluteJoint *this, float a2, float a3)
{
  if (a2 > a3)
  {
    b2RevoluteJoint::SetLimits();
  }

  v5 = this;
  if (this->var20 != a2 || this->var21 != a3)
  {
    b2Body::SetAwake(this->var6, 1);
    this = b2Body::SetAwake(v5->var7, 1);
    v5->var13.var2 = 0.0;
    v5->var20 = a2;
    v5->var21 = a3;
  }

  return this;
}

uint64_t Worley(float64x2_t *a1, uint64_t a2, double *__b, uint64_t a4, uint64_t a5)
{
  v7 = __b;
  v8 = a2;
  v40 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    memset_pattern16(__b, &unk_25E7EC2F0, 8 * a2);
  }

  v10 = vmulq_f64(*a1, vdupq_n_s64(0x3FD97B4A2339C0ECuLL));
  v36 = v10.f64[0];
  v38 = v10;
  v39 = a1[1].f64[0] * 0.39815;
  *&v11 = v39;
  v12 = (__PAIR128__(v10.f64[0], *&v10.f64[0]) - COERCE_UNSIGNED_INT64(0.0)) >> 64;
  v13 = v10.f64[1];
  v14 = (__PAIR128__(v10.f64[1], *&v10.f64[1]) - COERCE_UNSIGNED_INT64(0.0)) >> 64;
  v15 = (__PAIR128__(*&v11, v11) - COERCE_UNSIGNED_INT64(0.0)) >> 64;
  result = AddSamples(v12, v14, v15, v8, v38.f64, v7, a4, a5);
  v17 = v36 - v12;
  v18 = v13 - v14;
  v19 = *&v11 - v15;
  v20 = v17 * v17;
  v21 = v18 * v18;
  v22 = &v7[v8];
  v23 = *(v22 - 1);
  if (v17 * v17 < v23)
  {
    result = AddSamples(v12 - 1, v14, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v24 = 1.0 - v17;
  v25 = v19 * v19;
  if (v21 < v23)
  {
    result = AddSamples(v12, v14 - 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v26 = 1.0 - v18;
  v27 = v24 * v24;
  if (v25 < v23)
  {
    result = AddSamples(v12, v14, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v28 = 1.0 - v19;
  v29 = v26 * v26;
  if (v27 < v23)
  {
    result = AddSamples(v12 + 1, v14, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v30 = v28 * v28;
  if (v29 < v23)
  {
    result = AddSamples(v12, v14 + 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v30 < v23)
  {
    result = AddSamples(v12, v14, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v31 = v20 + v21;
  if (v20 + v21 < v23)
  {
    result = AddSamples(v12 - 1, v14 - 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v20 + v25 < v23)
  {
    result = AddSamples(v12 - 1, v14, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v21 + v25 < v23)
  {
    result = AddSamples(v12, v14 - 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v37 = v27 + v29;
  if (v27 + v29 < v23)
  {
    result = AddSamples(v12 + 1, v14 + 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v27 + v30 < v23)
  {
    result = AddSamples(v12 + 1, v14, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v29 + v30 < v23)
  {
    result = AddSamples(v12, v14 + 1, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v32 = v20 + v29;
  if (v20 + v29 < v23)
  {
    result = AddSamples(v12 - 1, v14 + 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v20 + v30 < v23)
  {
    result = AddSamples(v12 - 1, v14, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v21 + v30 < v23)
  {
    result = AddSamples(v12, v14 - 1, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  v33 = v27 + v21;
  if (v33 < v23)
  {
    result = AddSamples(v12 + 1, v14 - 1, v15, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v27 + v25 < v23)
  {
    result = AddSamples(v12 + 1, v14, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v29 + v25 < v23)
  {
    result = AddSamples(v12, v14 + 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v31 + v25 < v23)
  {
    result = AddSamples(v12 - 1, v14 - 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v31 + v30 < v23)
  {
    result = AddSamples(v12 - 1, v14 - 1, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v32 + v25 < v23)
  {
    result = AddSamples(v12 - 1, v14 + 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v32 + v30 < v23)
  {
    result = AddSamples(v12 - 1, v14 + 1, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v33 + v25 < v23)
  {
    result = AddSamples(v12 + 1, v14 - 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v33 + v30 < v23)
  {
    result = AddSamples(v12 + 1, v14 - 1, v15 + 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v37 + v25 < v23)
  {
    result = AddSamples(v12 + 1, v14 + 1, v15 - 1, v8, v38.f64, v7, a4, a5);
    v23 = *(v22 - 1);
  }

  if (v37 + v30 < v23)
  {
    result = AddSamples(v12 + 1, v14 + 1, v15 + 1, v8, v38.f64, v7, a4, a5);
  }

  if (v8 >= 1)
  {
    v34 = (a4 + 16);
    v35 = vdupq_n_s64(0x400417CA3F5539E6uLL);
    do
    {
      *v7 = sqrt(*v7) * 2.51161623;
      ++v7;
      *(v34 - 1) = vmulq_f64(*(v34 - 2), v35);
      *v34 = *v34 * 2.51161623;
      v34 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t AddSamples(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 702395077 * result + 915488749 * a2 + 2120969693 * a3;
  v9 = *(&Poisson_count + ((v8 >> 22) & 0x3FFFFFFFFFCLL));
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = result;
    v12 = a3;
    v13 = 8 * a4 - 8;
    v14 = (a6 + v13);
    result = 24;
    v15 = (a8 + v13);
    do
    {
      v16 = 1402024253 * v8 + 586950981;
      v17 = 1402024253 * v16 + 586950981;
      v18 = (v17 + 0.5) * 2.32830644e-10;
      v19 = 1402024253 * v17 + 586950981;
      v20 = (v19 + 0.5) * 2.32830644e-10;
      v8 = 1402024253 * v19 + 586950981;
      v21 = v18 + v11 - *a5;
      v22 = v20 + a2 - a5[1];
      v23 = (v8 + 0.5) * 2.32830644e-10 + v12 - a5[2];
      v24 = v22 * v22 + v21 * v21 + v23 * v23;
      if (v24 < *(a6 + 8 * a4 - 8))
      {
        v25 = a4;
        if (a4 >= 1)
        {
          v25 = a4;
          while (v24 < *(a6 - 8 + 8 * v25))
          {
            if (v25-- <= 1)
            {
              v25 = 0;
              break;
            }
          }

          if (a4 - 2 >= v25)
          {
            v27 = v15;
            v28 = a7 + 24 * a4 - 24;
            v29 = v14;
            v30 = a4 - 1;
            v31 = v14;
            v32 = v15;
            v33 = v28;
            do
            {
              v34 = *--v31;
              v35 = v34;
              v36 = *--v32;
              *v29 = v35;
              *v27 = v36;
              v37 = *(v33 - 24);
              v33 -= 24;
              *v28 = v37;
              --v30;
              *(v28 + 16) = *(v28 - 8);
              v27 = v32;
              v28 = v33;
              v29 = v31;
            }

            while (v30 > v25);
          }
        }

        *(a6 + 8 * v25) = v24;
        *(a8 + 8 * v25) = v16;
        v38 = (a7 + 24 * v25);
        *v38 = v21;
        v38[1] = v22;
        v38[2] = v23;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void b2RopeJoint::b2RopeJoint(b2RopeJoint *this, const b2JointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079E68;
  *(v3 + 128) = *(&a2->var4 + 4);
  *(v3 + 136) = *(&a2[1].var0 + 1);
  *(v3 + 144) = HIDWORD(a2[1].var1);
  *(v3 + 220) = 0;
  *(v3 + 148) = 0;
  *(v3 + 152) = 0;
}

void b2RopeJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 156) = v6;
  *(a1 + 160) = v7;
  v8 = *(v4 + 64);
  *(a1 + 188) = v8;
  v9 = *(v5 + 64);
  *(a1 + 196) = v9;
  v10 = *(v4 + 212);
  v11 = *(v5 + 212);
  *(a1 + 204) = v10;
  *(a1 + 208) = v11;
  v55 = v11;
  v53 = *(v4 + 224);
  v54 = *(v5 + 224);
  *(a1 + 212) = v53;
  *(a1 + 216) = v54;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = (v12 + 16 * v6);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v13 + 16 * v6);
  v56 = v17[1];
  v57 = *v17;
  v18 = (v12 + 16 * v7);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v22 = (v13 + 16 * v7);
  v59 = *v22;
  v60 = v17[3];
  v58 = v22[1];
  v61 = v22[3];
  v23 = __sincosf_stret(v14[3]);
  v24 = __sincosf_stret(v21);
  v25 = *(a1 + 128) - *&v8;
  v26 = *(a1 + 132) - *(&v8 + 1);
  v27 = (v23.__cosval * v25) - (v23.__sinval * v26);
  v28 = (v23.__cosval * v26) + (v23.__sinval * v25);
  *(a1 + 172) = v27;
  *(a1 + 176) = v28;
  v29 = *(a1 + 136) - *&v9;
  v30 = *(a1 + 140) - *(&v9 + 1);
  v31 = (v24.__cosval * v29) - (v24.__sinval * v30);
  v32 = (v24.__cosval * v30) + (v24.__sinval * v29);
  *(a1 + 180) = v31;
  *(a1 + 184) = v32;
  v33 = ((v19 + v31) - v16) - v27;
  v34 = ((v20 + v32) - v15) - v28;
  v35 = sqrtf((v34 * v34) + (v33 * v33));
  *(a1 + 148) = v35;
  *(a1 + 224) = 2 * (v35 > *(a1 + 144));
  if (v35 <= 0.0045)
  {
    *(a1 + 164) = 0;
    *(a1 + 168) = 0;
    *(a1 + 220) = 0;
    *(a1 + 152) = 0;
  }

  else
  {
    v36 = 1.0 / v35;
    v37 = v33 * v36;
    v38 = v34 * v36;
    *(a1 + 164) = v37;
    *(a1 + 168) = v38;
    v39 = (v55 + (v10 + ((v53 * ((v27 * v38) - (v28 * v37))) * ((v27 * v38) - (v28 * v37))))) + ((v54 * ((v31 * v38) - (v32 * v37))) * ((v31 * v38) - (v32 * v37)));
    v40 = 1.0 / v39;
    v41 = v39 == 0.0;
    v42 = 0.0;
    if (!v41)
    {
      v42 = v40;
    }

    *(a1 + 220) = v42;
    if (*(a2 + 20))
    {
      v43 = *(a2 + 8) * *(a1 + 152);
      *(a1 + 152) = v43;
      v44 = v37 * v43;
      v45 = v38 * v43;
      v46 = v57 - (v10 * v44);
      v47 = v56 - (v10 * v45);
      v48 = v60 - (v53 * ((v44 * -v28) + (v27 * v45)));
      v49 = v59 + (v55 * v44);
      v50 = v58 + (v55 * v45);
      v51 = v61 + (v54 * ((v44 * -v32) + (v31 * v45)));
    }

    else
    {
      *(a1 + 152) = 0;
      v48 = v60;
      v51 = v61;
      v50 = v58;
      v49 = v59;
      v47 = v56;
      v46 = v57;
    }

    *v17 = v46;
    v17[1] = v47;
    *(*(a2 + 32) + 16 * *(a1 + 156) + 12) = v48;
    v52 = (*(a2 + 32) + 16 * *(a1 + 160));
    *v52 = v49;
    v52[1] = v50;
    *(*(a2 + 32) + 16 * *(a1 + 160) + 12) = v51;
  }
}

float b2RopeJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 + 16 * *(a1 + 156));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = (v2 + 16 * *(a1 + 160));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v12 = *(a1 + 172);
  v11 = *(a1 + 176);
  v14 = *(a1 + 180);
  v13 = *(a1 + 184);
  v15 = *(a1 + 148) - *(a1 + 144);
  v16 = *(a1 + 164);
  v17 = *(a1 + 168);
  v18 = (((v9 + (v10 * v14)) - (v5 + (v6 * v12))) * v17) + (v16 * ((*v7 - (v10 * v13)) - (*v3 - (v6 * v11))));
  if (v15 < 0.0)
  {
    v18 = v18 + (*(a2 + 4) * v15);
  }

  v19 = *(a1 + 152);
  v20 = v19 - (*(a1 + 220) * v18);
  if (v20 > 0.0)
  {
    v20 = 0.0;
  }

  *(a1 + 152) = v20;
  v21 = v20 - v19;
  v22 = v16 * v21;
  v23 = v17 * v21;
  v24 = *(a1 + 204);
  v25 = *(a1 + 208);
  v26 = v6 - (*(a1 + 212) * ((v12 * v23) - (v11 * v22)));
  result = v10 + (*(a1 + 216) * ((v14 * v23) - (v13 * v22)));
  *v3 = v4 - (v24 * v22);
  v3[1] = v5 - (v24 * v23);
  *(*(a2 + 32) + 16 * *(a1 + 156) + 12) = v26;
  v28 = (*(a2 + 32) + 16 * *(a1 + 160));
  *v28 = v8 + (v25 * v22);
  v28[1] = v9 + (v25 * v23);
  *(*(a2 + 32) + 16 * *(a1 + 160) + 12) = result;
  return result;
}

BOOL b2RopeJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 156));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 160));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = __sincosf_stret(v8);
  v14 = __sincosf_stret(v12);
  v15 = *(a1 + 128) - *(a1 + 188);
  v16 = *(a1 + 132) - *(a1 + 192);
  v17 = (v13.__cosval * v15) - (v13.__sinval * v16);
  v18 = (v13.__cosval * v16) + (v13.__sinval * v15);
  v19 = *(a1 + 136) - *(a1 + 196);
  v20 = *(a1 + 140) - *(a1 + 200);
  v21 = (v14.__cosval * v19) - (v14.__sinval * v20);
  v22 = (v14.__cosval * v20) + (v14.__sinval * v19);
  v23 = ((v10 + v21) - v6) - v17;
  v24 = ((v11 + v22) - v7) - v18;
  v25 = sqrtf((v24 * v24) + (v23 * v23));
  v26 = 0.0;
  if (v25 >= 0.00000011921)
  {
    v23 = v23 * (1.0 / v25);
    v24 = v24 * (1.0 / v25);
  }

  else
  {
    v25 = 0.0;
  }

  v27 = fminf(v25 - *(a1 + 144), 0.2);
  if (v27 >= 0.0)
  {
    v26 = v27;
  }

  v28 = *(a1 + 216);
  v29 = -(*(a1 + 220) * v26);
  v30 = v23 * v29;
  v31 = v24 * v29;
  v32 = *(a1 + 204);
  v33 = *(a1 + 208);
  v34 = v8 - (*(a1 + 212) * ((v17 * v31) - (v18 * v30)));
  *v5 = v6 - (v32 * v30);
  v5[1] = v7 - (v32 * v31);
  *(*(a2 + 24) + 16 * *(a1 + 156) + 12) = v34;
  v35 = (*(a2 + 24) + 16 * *(a1 + 160));
  *v35 = v10 + (v33 * v30);
  v35[1] = v11 + (v33 * v31);
  *(*(a2 + 24) + 16 * *(a1 + 160) + 12) = v12 + (v28 * ((v21 * v31) - (v22 * v30)));
  return (v25 - *(a1 + 144)) < 0.0045;
}

void b2WeldJoint::b2WeldJoint(b2WeldJoint *this, const b2JointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079E10;
  *(v3 + 128) = *(&a2->var4 + 4);
  *(v3 + 136) = *(&a2[1].var0 + 1);
  *(v3 + 144) = HIDWORD(a2[1].var1);
  *(v3 + 152) = 0;
  *(v3 + 148) = 0;
}

void b2WeldJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  v8 = *(v4 + 64);
  *(a1 + 184) = v8;
  v9 = *(v5 + 64);
  *(a1 + 192) = v9;
  v45 = *(v5 + 212);
  v46 = *(v4 + 212);
  *(a1 + 200) = v46;
  *(a1 + 204) = v45;
  v10 = *(v4 + 224);
  v11 = *(v5 + 224);
  *(a1 + 208) = v10;
  *(a1 + 212) = v11;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(v12 + 16 * v6 + 12);
  v15 = (v13 + 16 * v6);
  v47 = *v15;
  v16 = v15[1].f32[1];
  v17 = *(v12 + 16 * v7 + 12);
  v18 = (v13 + 16 * v7);
  v19 = *v18;
  v20 = v18[1].f32[1];
  v21 = __sincosf_stret(v14);
  v22 = __sincosf_stret(v17);
  v23 = *(a1 + 128) - *&v8;
  v24 = *(a1 + 132) - *(&v8 + 1);
  _S2 = (v21.__cosval * v23) - (v21.__sinval * v24);
  v26 = (v21.__cosval * v24) + (v21.__sinval * v23);
  v27 = *(a1 + 136) - *&v9;
  v28 = *(a1 + 140) - *(&v9 + 1);
  _S3 = (v22.__cosval * v27) - (v22.__sinval * v28);
  v30 = (v22.__cosval * v28) + (v22.__sinval * v27);
  v31 = ((v46 + v45) + ((v26 * v26) * v10)) + ((v30 * v30) * v11);
  v32 = (v11 * -(v30 * _S3)) + (-(v26 * _S2) * v10);
  *(a1 + 168) = _S2;
  *(a1 + 172) = v26;
  *(a1 + 176) = _S3;
  *(a1 + 180) = v30;
  v33 = -(v30 * v11) - (v26 * v10);
  *(a1 + 216) = v31;
  *(a1 + 220) = v32;
  v34 = (v11 * _S3) + (_S2 * v10);
  *(a1 + 240) = v33;
  *(a1 + 244) = v34;
  *(a1 + 224) = v33;
  *(a1 + 228) = v32;
  *(a1 + 232) = ((v46 + v45) + ((_S2 * _S2) * v10)) + ((_S3 * _S3) * v11);
  *(a1 + 236) = v34;
  *(a1 + 248) = v10 + v11;
  if (*(a2 + 20) == 1)
  {
    v35 = *(a2 + 8);
    v36 = v35 * *(a1 + 156);
    *(a1 + 156) = v36;
    _D1 = vmul_n_f32(*(a1 + 148), v35);
    *(a1 + 148) = _D1;
    __asm { FMLA            S4, S2, V1.S[1] }

    v16 = v16 - (v10 * (v36 + _S4));
    v19 = vadd_f32(v19, vmul_n_f32(_D1, v45));
    __asm { FMLA            S0, S3, V1.S[1] }

    v20 = v20 + (v11 * (v36 + _S0));
    v44 = vsub_f32(v47, vmul_n_f32(_D1, v46));
  }

  else
  {
    *(a1 + 152) = 0;
    *(a1 + 148) = 0;
    v44 = v47;
  }

  *v15 = v44;
  *(*(a2 + 32) + 16 * *(a1 + 160) + 12) = v16;
  *(*(a2 + 32) + 16 * *(a1 + 164)) = v19;
  *(*(a2 + 32) + 16 * *(a1 + 164) + 12) = v20;
}

float b2WeldJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (v4 + 16 * *(a1 + 160));
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 164));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[3];
  v13 = *(a1 + 200);
  v14 = *(a1 + 204);
  v27 = *(a1 + 208);
  v28 = *(a1 + 212);
  v15 = ((v10 + (v12 * *(a1 + 176))) - v6) - (v8 * *(a1 + 168));
  v29.var0 = ((*v9 - (v12 * *(a1 + 180))) - *v5) + (v8 * *(a1 + 172));
  v29.var1 = v15;
  v29.var2 = v12 - v8;
  v16.f32[0] = b2Mat33::Solve33((a1 + 216), &v29);
  v17 = *(a1 + 168);
  v18 = v16.f32[0] * *(a1 + 172);
  v19 = v14 * v16.f32[0];
  v20 = *(a1 + 176);
  v21 = v16.f32[0] * *(a1 + 180);
  v16.f32[1] = v22;
  *(a1 + 148) = vsub_f32(*(a1 + 148), v16);
  *(a1 + 156) = *(a1 + 156) - v23;
  result = v7 + (v13 * v16.f32[0]);
  v25 = (*(a2 + 32) + 16 * *(a1 + 160));
  *v25 = result;
  v25[1] = v6 + (v13 * v22);
  *(*(a2 + 32) + 16 * *(a1 + 160) + 12) = v8 - (v27 * ((v18 - (v17 * v22)) - v23));
  v26 = (*(a2 + 32) + 16 * *(a1 + 164));
  *v26 = v11 - v19;
  v26[1] = v10 - (v14 * v22);
  *(*(a2 + 32) + 16 * *(a1 + 164) + 12) = v12 + (v28 * ((v21 - (v20 * v22)) - v23));
  return result;
}

BOOL b2WeldJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 160));
  v35 = *v5;
  v41 = v5[3];
  v6 = (v4 + 16 * *(a1 + 164));
  v7 = *v6;
  v39 = *v6;
  v42 = v6[1];
  v43 = v5[1];
  v8 = v6[3];
  v9 = __sincosf_stret(v41);
  v38 = v8;
  v10 = __sincosf_stret(v8);
  v11 = *(a1 + 200);
  v37 = *(a1 + 204);
  v13 = *(a1 + 208);
  v12 = *(a1 + 212);
  v14 = *(a1 + 128) - *(a1 + 184);
  v15 = *(a1 + 132) - *(a1 + 188);
  v16 = (v9.__cosval * v14) - (v9.__sinval * v15);
  v17 = (v9.__cosval * v15) + (v9.__sinval * v14);
  v18 = *(a1 + 136) - *(a1 + 192);
  v19 = *(a1 + 140) - *(a1 + 196);
  v20 = (v10.__cosval * v18) - (v10.__sinval * v19);
  v21 = (v10.__cosval * v19) + (v10.__sinval * v18);
  v22 = (v8 - v41) - *(a1 + 144);
  v40 = sqrtf(((((v42 + v21) - v43) - v17) * (((v42 + v21) - v43) - v17)) + ((((v7 + v20) - v35) - v16) * (((v7 + v20) - v35) - v16)));
  v23 = -v22;
  v24 = v11;
  *(a1 + 216) = ((v11 + v37) + ((v17 * v17) * v13)) + ((v21 * v21) * v12);
  v25 = (v12 * -(v21 * v20)) + (-(v17 * v16) * v13);
  v26 = -(v21 * v12) - (v17 * v13);
  *(a1 + 228) = v25;
  *(a1 + 232) = ((v11 + v37) + ((v16 * v16) * v13)) + ((v20 * v20) * v12);
  v27 = (v12 * v20) + (v16 * v13);
  *(a1 + 220) = v25;
  *(a1 + 224) = v26;
  *(a1 + 236) = v27;
  *(a1 + 240) = v26;
  *(a1 + 244) = v27;
  *(a1 + 248) = v13 + v12;
  if (v22 > 0.0)
  {
    v23 = v22;
  }

  v36 = v23;
  v44.var0 = ((v7 + v20) - v35) - v16;
  v44.var1 = ((v42 + v21) - v43) - v17;
  v44.var2 = v22;
  v28 = b2Mat33::Solve33((a1 + 216), &v44);
  v31 = (*(a2 + 24) + 16 * *(a1 + 160));
  *v31 = v35 + (v24 * v28);
  v31[1] = v43 + (v24 * v29);
  *(*(a2 + 24) + 16 * *(a1 + 160) + 12) = v41 - (v13 * (((v17 * v28) - (v16 * v29)) - v30));
  v32 = (*(a2 + 24) + 16 * *(a1 + 164));
  *v32 = v39 - (v37 * v28);
  v32[1] = v42 - (v37 * v29);
  *(*(a2 + 24) + 16 * *(a1 + 164) + 12) = v38 + (v12 * (((v21 * v28) - (v20 * v29)) - v30));
  return v36 <= 0.034907 && v40 <= 0.0045;
}

float b2WheelJointDef::Initialize(b2WheelJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4, const b2Vec2 *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  v5 = a4->x - a2->var8.var0.x;
  v6 = a4->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  *(this + 9) = (v6 * var0) + (var1 * v5);
  *(this + 10) = (var1 * v6) - (var0 * v5);
  v9 = a4->x - a3->var8.var0.x;
  v10 = a4->y - a3->var8.var0.y;
  v12 = a3->var8.var1.var0;
  v11 = a3->var8.var1.var1;
  *(this + 11) = (v10 * v12) + (v11 * v9);
  *(this + 12) = (v11 * v10) - (v12 * v9);
  v14 = a2->var8.var1.var0;
  v13 = a2->var8.var1.var1;
  y = a5->y;
  v16 = (v14 * y) + (v13 * a5->x);
  result = (v13 * y) - (v14 * a5->x);
  *(this + 13) = v16;
  *(this + 14) = result;
  return result;
}

void b2WheelJoint::b2WheelJoint(b2WheelJoint *this, const b2WheelJointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079C58;
  *(v3 + 136) = *(a2 + 36);
  *(v3 + 144) = *(a2 + 44);
  v4 = *(a2 + 52);
  *(v3 + 152) = v4;
  *(v3 + 160) = HIDWORD(v4) ^ 0x80000000;
  *(v3 + 164) = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 180) = *(a2 + 8);
  *(v3 + 188) = *(a2 + 60);
  *(v3 + 128) = *(a2 + 9);
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
}

void b2WheelJoint::InitVelocityConstraints(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[12];
  v5 = a1[13];
  v6 = *(*&v4 + 28);
  v7 = *(*&v5 + 28);
  a1[24].i32[0] = v6;
  a1[24].i32[1] = v7;
  v8 = *(*&v4 + 64);
  a1[25] = v8;
  v9 = *(*&v5 + 64);
  a1[26] = v9;
  v10 = *(*&v4 + 212);
  v11 = *(*&v5 + 212);
  a1[27].f32[0] = v10;
  a1[27].f32[1] = v11;
  v12 = *(*&v4 + 224);
  v13 = *(*&v5 + 224);
  a1[28].f32[0] = v12;
  a1[28].f32[1] = v13;
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = (v14 + 16 * v6);
  v74 = v16[1];
  v75 = *v16;
  v17 = (v15 + 16 * v6);
  v76 = v17[1];
  v77 = *v17;
  v18 = (v14 + 16 * v7);
  v19 = *v18;
  v73 = v18[1];
  v20 = v18[3];
  v21 = (v15 + 16 * v7);
  v79 = *v21;
  v80 = v17[3];
  v78 = v21[1];
  v81 = v21[3];
  v24 = __sincosf_stret(v16[3]);
  cosval = v24.__cosval;
  LODWORD(v22) = *&v24;
  v25 = __sincosf_stret(v20);
  v26 = a1[17].f32[0] - v8.f32[0];
  v27 = a1[17].f32[1] - v8.f32[1];
  v28 = (cosval * v26) - (v22 * v27);
  v29 = (cosval * v27) + (v22 * v26);
  v30 = a1[18].f32[0] - v9.f32[0];
  v31 = a1[18].f32[1] - v9.f32[1];
  v32 = (v25.__cosval * v30) - (v25.__sinval * v31);
  v33 = v25.__cosval * v31;
  v34 = (v25.__cosval * v31) + (v25.__sinval * v30);
  v35 = ((v19 + v32) - v75) - v28;
  v36 = ((v73 + v34) - v74) - v29;
  v37 = a1[20].f32[0];
  v38 = a1[20].f32[1];
  v39 = (cosval * v37) - (v22 * v38);
  v40 = (cosval * v38) + (v22 * v37);
  a1[30].f32[0] = v39;
  a1[30].f32[1] = v40;
  v41 = v28 + v35;
  v42 = v29 + v36;
  v43 = (v41 * v40) - ((v29 + v36) * v39);
  a1[32].f32[0] = v43;
  v44 = (v32 * v40) - (v34 * v39);
  a1[32].f32[1] = v44;
  v45 = ((v10 + v11) + ((v12 * v43) * v43)) + ((v13 * v44) * v44);
  if (v45 > 0.0)
  {
    v45 = 1.0 / v45;
  }

  a1[33].f32[0] = v45;
  a1[34] = 0;
  a1[35].i32[0] = 0;
  v46 = a1[16].f32[0];
  if (v46 <= 0.0)
  {
    a1[22].i32[0] = 0;
  }

  else
  {
    v47 = -(v33 + (v25.__sinval * v30));
    v48 = a1[19].f32[0];
    v49 = a1[19].f32[1];
    v50 = (v49 * -v22) + (cosval * v48);
    v51 = (cosval * v49) + (v22 * v48);
    a1[29].f32[0] = v50;
    a1[29].f32[1] = v51;
    v52 = (v50 * -v42) + (v41 * v51);
    v53 = (v50 * v47) + (v32 * v51);
    a1[31].f32[0] = v52;
    a1[31].f32[1] = v53;
    v54 = ((v10 + v11) + ((v12 * v52) * v52)) + ((v13 * v53) * v53);
    if (v54 > 0.0)
    {
      v55 = (v36 * v51) + (v35 * v50);
      v56 = (v46 * 6.2832) * ((v46 * 6.2832) * (1.0 / v54));
      v57 = *a2;
      v58 = *a2 * (((v46 * 6.2832) * (((1.0 / v54) + (1.0 / v54)) * a1[16].f32[1])) + (*a2 * v56));
      if (v58 > 0.0)
      {
        v58 = 1.0 / v58;
      }

      a1[35].f32[0] = v58;
      a1[34].f32[1] = (v56 * (v55 * v57)) * v58;
      v59 = v54 + v58;
      if (v59 > 0.0)
      {
        v59 = 1.0 / v59;
      }

      a1[34].f32[0] = v59;
    }
  }

  if (a1[23].i8[4] == 1)
  {
    a1[33].f32[1] = v12 + v13;
    if ((v12 + v13) > 0.0)
    {
      a1[33].f32[1] = 1.0 / (v12 + v13);
    }
  }

  else
  {
    a1[33].i32[1] = 0;
    a1[21].i32[1] = 0;
  }

  if (*(a2 + 20) == 1)
  {
    v60 = *(a2 + 8);
    v61 = v60 * a1[22].f32[0];
    a1[22].f32[0] = v61;
    v62 = vmul_n_f32(a1[21], v60);
    a1[21] = v62;
    v63 = (v39 * v62.f32[0]) + (v61 * a1[29].f32[0]);
    v64 = (v40 * v62.f32[0]) + (v61 * a1[29].f32[1]);
    v65 = v62.f32[1] + ((v61 * a1[31].f32[0]) + (v62.f32[0] * v43));
    v62.f32[0] = v62.f32[1] + ((v61 * a1[31].f32[1]) + (v62.f32[0] * v44));
    v66 = v77 - (v10 * v63);
    v67 = v76 - (v10 * v64);
    v68 = v80 - (v12 * v65);
    v69 = v79 + (v11 * v63);
    v70 = v78 + (v11 * v64);
    v71 = v81 + (v13 * v62.f32[0]);
  }

  else
  {
    a1[22].i32[0] = 0;
    a1[21] = 0;
    v68 = v80;
    v71 = v81;
    v70 = v78;
    v69 = v79;
    v67 = v76;
    v66 = v77;
  }

  *v17 = v66;
  v17[1] = v67;
  *(*(a2 + 32) + 16 * a1[24].i32[0] + 12) = v68;
  v72 = (*(a2 + 32) + 16 * a1[24].i32[1]);
  *v72 = v69;
  v72[1] = v70;
  *(*(a2 + 32) + 16 * a1[24].i32[1] + 12) = v71;
}

float b2WheelJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 216);
  v2 = *(a1 + 220);
  v5 = *(a1 + 224);
  v4 = *(a1 + 228);
  v6 = *(a2 + 32);
  v7 = (v6 + 16 * *(a1 + 192));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = (v6 + 16 * *(a1 + 196));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v15 = *(a1 + 232);
  v16 = *(a1 + 236);
  v18 = *(a1 + 248);
  v17 = *(a1 + 252);
  v19 = *(a1 + 176);
  v20 = *(a1 + 180);
  v21 = -(*(a1 + 272) * (((((((v13 - v9) * v16) + (v15 * (*v11 - *v7))) + (v17 * v14)) - (v18 * v10)) + *(a1 + 276)) + (*(a1 + 280) * v19)));
  *(a1 + 176) = v19 - (*(a1 + 272) * (((((((v13 - v9) * v16) + (v15 * (*v11 - *v7))) + (v17 * v14)) - (v18 * v10)) + *(a1 + 276)) + (*(a1 + 280) * v19)));
  v22 = v15 * v21;
  v23 = v16 * v21;
  v24 = v18 * v21;
  v25 = v17 * v21;
  v26 = v8 - (v3 * v22);
  v27 = v9 - (v3 * v23);
  v28 = v10 - (v5 * v24);
  v29 = v12 + (v2 * v22);
  v30 = v13 + (v2 * v23);
  v31 = v14 + (v4 * v25);
  v32 = *a2 * v20;
  v33 = *(a1 + 172);
  v34 = v33 - (*(a1 + 268) * ((v31 - v28) - *(a1 + 184)));
  if (v34 >= v32)
  {
    v34 = *a2 * v20;
  }

  if (v34 < -v32)
  {
    v34 = -v32;
  }

  v35 = v34 - v33;
  v36 = v28 - (v5 * v35);
  v37 = v31 + (v4 * v35);
  v38 = *(a1 + 240);
  v39 = *(a1 + 244);
  v40 = *(a1 + 260);
  v41 = *(a1 + 256);
  v42 = *(a1 + 264);
  v43 = -(v42 * (((((v30 - v27) * v39) + (v38 * (v29 - v26))) + (v40 * v37)) - (v41 * v36)));
  *(a1 + 168) = *(a1 + 168) - (v42 * (((((v30 - v27) * v39) + (v38 * (v29 - v26))) + (v40 * v37)) - (v41 * v36)));
  *(a1 + 172) = v34;
  result = v37 + (v4 * (v40 * v43));
  *v7 = v26 - (v3 * (v38 * v43));
  v7[1] = v27 - (v3 * (v39 * v43));
  *(*(a2 + 32) + 16 * *(a1 + 192) + 12) = v36 - (v5 * (v41 * v43));
  v45 = (*(a2 + 32) + 16 * *(a1 + 196));
  *v45 = v29 + (v2 * (v38 * v43));
  v45[1] = v30 + (v2 * (v39 * v43));
  *(*(a2 + 32) + 16 * *(a1 + 196) + 12) = result;
  return result;
}

BOOL b2WheelJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 192));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 196));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = __sincosf_stret(v8);
  v14 = __sincosf_stret(v12);
  v15 = *(a1 + 136) - *(a1 + 200);
  v16 = *(a1 + 140) - *(a1 + 204);
  v17 = (v13.__cosval * v15) - (v13.__sinval * v16);
  v18 = (v13.__cosval * v16) + (v13.__sinval * v15);
  v19 = *(a1 + 144) - *(a1 + 208);
  v20 = *(a1 + 148) - *(a1 + 212);
  v21 = (v14.__cosval * v19) - (v14.__sinval * v20);
  v22 = (v14.__cosval * v20) + (v14.__sinval * v19);
  v23 = ((v10 - v6) + v21) - v17;
  v24 = ((v11 - v7) + v22) - v18;
  v25 = *(a1 + 160);
  v26 = *(a1 + 164);
  v27 = (v13.__cosval * v25) - (v13.__sinval * v26);
  v28 = (v13.__cosval * v26) + (v13.__sinval * v25);
  v29 = (v28 * v24) + (v23 * v27);
  v30 = *(a1 + 216);
  v31 = *(a1 + 220);
  v32 = *(a1 + 224);
  v33 = *(a1 + 228);
  v34 = ((v30 + v31) + ((v32 * *(a1 + 256)) * *(a1 + 256))) + ((v33 * *(a1 + 260)) * *(a1 + 260));
  v35 = -v29 / v34;
  v36 = v34 == 0.0;
  v37 = 0.0;
  if (!v36)
  {
    v37 = v35;
  }

  *v5 = v6 - (v30 * (v27 * v37));
  v5[1] = v7 - (v30 * (v28 * v37));
  *(*(a2 + 24) + 16 * *(a1 + 192) + 12) = v8 - (v32 * ((((v17 + v23) * v28) - ((v18 + v24) * v27)) * v37));
  v38 = (*(a2 + 24) + 16 * *(a1 + 196));
  *v38 = v10 + (v31 * (v27 * v37));
  v38[1] = v11 + (v31 * (v28 * v37));
  *(*(a2 + 24) + 16 * *(a1 + 196) + 12) = v12 + (v33 * (((v21 * v28) - (v22 * v27)) * v37));
  if (v29 <= 0.0)
  {
    v39 = -v29;
  }

  else
  {
    v39 = (v28 * v24) + (v23 * v27);
  }

  return v39 <= 0.0045;
}

float b2WheelJoint::GetJointTranslation(b2WheelJoint *this)
{
  v1 = *(this + 12);
  v2 = *(this + 13);
  v4 = v1[10];
  v3 = v1[11];
  v5 = *(this + 34);
  return (((((v2[11] * *(this + 37)) + (v2[10] * *(this + 36))) + v2[9]) - (((v3 * *(this + 35)) + (v4 * v5)) + v1[9])) * ((v3 * *(this + 39)) + (v4 * *(this + 38)))) + (((v2[8] + ((v2[11] * *(this + 36)) - (v2[10] * *(this + 37)))) - (v1[8] + ((v3 * v5) - (v4 * *(this + 35))))) * ((v3 * *(this + 38)) - (v4 * *(this + 39))));
}

b2Body *b2WheelJoint::EnableMotor(b2Body **this, char a2)
{
  b2Body::SetAwake(this[12], 1);
  result = b2Body::SetAwake(this[13], 1);
  *(this + 188) = a2;
  return result;
}

b2Body *b2WheelJoint::SetMotorSpeed(b2Body **this, float a2)
{
  b2Body::SetAwake(this[12], 1);
  result = b2Body::SetAwake(this[13], 1);
  *(this + 46) = a2;
  return result;
}

b2Body *b2WheelJoint::SetMaxMotorTorque(b2Body **this, float a2)
{
  b2Body::SetAwake(this[12], 1);
  result = b2Body::SetAwake(this[13], 1);
  *(this + 45) = a2;
  return result;
}

void b2Rope::b2Rope(b2Rope *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 68) = 0x3DCCCCCD3F800000;
}

void b2Rope::~b2Rope(void **this)
{
  b2Free(this[1]);
  b2Free(this[2]);
  b2Free(this[3]);
  b2Free(this[4]);
  b2Free(this[5]);
  b2Free(this[6]);
}

float b2Rope::Initialize(int *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 <= 2)
  {
    b2Rope::Initialize();
  }

  *a1 = v2;
  *(a1 + 1) = b2Alloc(8 * v2);
  *(a1 + 2) = b2Alloc(8 * *a1);
  *(a1 + 3) = b2Alloc(8 * *a1);
  *(a1 + 4) = b2Alloc(4 * *a1);
  LODWORD(v5) = *a1;
  if (*a1 >= 1)
  {
    v6 = 0;
    do
    {
      *(*(a1 + 1) + 8 * v6) = *(*a2 + 8 * v6);
      *(*(a1 + 2) + 8 * v6) = *(*a2 + 8 * v6);
      *(*(a1 + 3) + 8 * v6) = 0;
      v7 = *(*(a2 + 16) + 4 * v6);
      if (v7 <= 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0 / v7;
      }

      *(*(a1 + 4) + 4 * v6++) = v8;
      v5 = *a1;
    }

    while (v6 < v5);
  }

  v9 = (v5 - 1);
  *(a1 + 5) = b2Alloc(4 * v9);
  v10 = b2Alloc(4 * (v5 - 2));
  *(a1 + 6) = v10;
  v11 = (v5 - 2);
  if (v5 >= 2)
  {
    v12 = v10;
    v13 = *(a1 + 5);
    v14 = (*(a1 + 1) + 8);
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v17 = *v14;
      v18 = v14[1];
      v14 += 2;
      *v13++ = sqrtf(((v16 - v18) * (v16 - v18)) + ((v15 - v17) * (v15 - v17)));
      --v9;
    }

    while (v9);
    if (v5 != 2)
    {
      v19 = (*(a1 + 1) + 12);
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;
        v24 = v19[1];
        v25 = v19[2];
        v19 += 2;
        *v12++ = atan2f(((v22 - v20) * (v25 - v23)) - ((v23 - v21) * (v24 - v22)), ((v23 - v21) * (v25 - v23)) + ((v22 - v20) * (v24 - v22)));
        --v11;
      }

      while (v11);
    }
  }

  *(a1 + 7) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 18) = result;
  return result;
}

void b2Rope::Step(float32x2_t *this, float a2, int a3)
{
  if (a2 != 0.0)
  {
    v4 = a2;
    LODWORD(v6) = this->i32[0];
    if (this->i32[0] >= 1)
    {
      v7 = expf(-(a2 * this[8].f32[0]));
      v4 = a2;
      v8 = 0;
      v9 = this[1];
      do
      {
        *(*&this[2] + 8 * v8) = *(*&v9 + 8 * v8);
        v10 = this[3];
        if (*(*&this[4] + 4 * v8) <= 0.0)
        {
          v11 = *(*&v10 + 8 * v8);
        }

        else
        {
          v11 = vadd_f32(vmul_n_f32(this[7], a2), *(*&v10 + 8 * v8));
        }

        v12 = vmul_n_f32(v11, v7);
        *(*&v10 + 8 * v8) = v12;
        v9 = this[1];
        *(*&v9 + 8 * v8) = vadd_f32(vmul_n_f32(v12, a2), *(*&v9 + 8 * v8));
        ++v8;
        v6 = this->i32[0];
      }

      while (v8 < v6);
    }

    if (a3 >= 1)
    {
      do
      {
        b2Rope::SolveC2(this);
        b2Rope::SolveC3(this);
        b2Rope::SolveC2(this);
        --a3;
      }

      while (a3);
      LODWORD(v6) = this->i32[0];
      v4 = a2;
    }

    if (v6 >= 1)
    {
      v13 = this[1];
      v14 = this[2];
      v15 = this[3];
      v6 = v6;
      do
      {
        v16 = *v13++;
        v17 = v16;
        v18 = *v14++;
        *v15++ = vmul_n_f32(vsub_f32(v17, v18), 1.0 / v4);
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t b2Rope::SolveC2(uint64_t this)
{
  if (*this >= 2)
  {
    v1 = 0;
    v2 = (*this - 1);
    do
    {
      v3 = *(this + 8);
      v4 = (v3 + 8 * v1);
      v6 = *v4;
      v5 = v4[1];
      v7 = vsub_f32(v5, *v4);
      v8 = sqrtf(COERCE_FLOAT(vmul_f32(v7, v7).i32[1]) + (v7.f32[0] * v7.f32[0]));
      if (v8 >= 0.00000011921)
      {
        v7 = vmul_n_f32(v7, 1.0 / v8);
      }

      else
      {
        v8 = 0.0;
      }

      v9 = (*(this + 32) + 4 * v1);
      v10 = v9[1];
      v11 = *v9 + v10;
      if (v11 != 0.0)
      {
        v12 = *v9 / v11;
        v13 = v10 / v11;
        v14 = *(this + 68);
        v15 = *(*(this + 40) + 4 * v1) - v8;
        *(v3 + 8 * v1) = vsub_f32(v6, vmul_n_f32(v7, (v12 * v14) * v15));
        *(*(this + 8) + 8 * v1 + 8) = vadd_f32(v5, vmul_n_f32(v7, (v13 * v14) * v15));
      }

      ++v1;
    }

    while (v2 != v1);
  }

  return this;
}

void b2Rope::SolveC3(b2Rope *this)
{
  if (*this >= 3)
  {
    v2 = 0;
    v3 = (*this - 2);
    v4 = -1.0;
    v5 = 1.0;
    do
    {
      v6 = *(this + 1);
      v7 = (v6 + 8 * v2);
      v9 = *v7;
      v8 = v7[1];
      v10 = v2 + 1;
      v11 = v2 + 2;
      v12 = *(v6 + 8 * (v2 + 2));
      v13 = (v6 + 8 * (v2 + 1));
      v14 = *v13;
      v15 = v13[1];
      v16 = *v13 - *v7;
      v17 = v15 - v8;
      v18 = v12.f32[0] - *v13;
      v19 = v12.f32[1] - v15;
      v20 = (v17 * v17) + (v16 * v16);
      v21 = (v19 * v19) + (v18 * v18);
      if ((v20 * v21) != 0.0)
      {
        v22 = *(this + 4);
        v23 = v4 / v20;
        v24 = -(v17 * v23);
        v25 = v16 * v23;
        v26.f32[0] = -v19;
        v26.f32[1] = v18;
        v27 = vmul_n_f32(v26, v5 / v21);
        v28 = ((*(v22 + 4 * v10) * (((v25 - v27.f32[1]) * (v25 - v27.f32[1])) + ((v24 - v27.f32[0]) * (v24 - v27.f32[0])))) + (*(v22 + 4 * v2) * ((v25 * v25) + (v24 * v24)))) + (*(v22 + 4 * v11) * (vmuls_lane_f32(v27.f32[1], v27, 1) + (v27.f32[0] * v27.f32[0])));
        if (v28 != 0.0)
        {
          v34 = v28;
          v35 = v25 - v27.f32[1];
          v36 = v24 - v27.f32[0];
          v37 = *(v22 + 4 * v2);
          v38 = v27;
          v39 = *(v22 + 4 * v10);
          v40 = *(v22 + 4 * v11);
          v41 = v12;
          v29 = atan2f((v18 * -v17) + (v16 * v19), (v17 * v19) + (v16 * v18));
          v30 = *(*(this + 6) + 4 * v2);
          while (1)
          {
            v31 = v29 - v30;
            if ((v29 - v30) <= 3.1416)
            {
              break;
            }

            v29 = v29 + -6.2832;
          }

          v5 = 1.0;
          if (v31 < -3.1416)
          {
            do
            {
              v29 = v29 + 6.2832;
              v31 = v29 - v30;
            }

            while ((v29 - v30) < -3.1416);
          }

          v32 = v31 * -(*(this + 18) * (1.0 / v34));
          *v7 = v9 - (v24 * (v37 * v32));
          v7[1] = v8 - (v25 * (v37 * v32));
          v33 = (*(this + 1) + 8 * v10);
          *v33 = v14 + (v36 * (v39 * v32));
          v33[1] = v15 + (v35 * (v39 * v32));
          *(*(this + 1) + 8 * v11) = vadd_f32(v41, vmul_n_f32(v38, v40 * v32));
          v4 = -1.0;
        }
      }

      ++v2;
    }

    while (v10 != v3);
  }
}

uint64_t b2Rope::SetAngle(uint64_t this, int16x4_t a2)
{
  v2 = *this;
  if (*this >= 3)
  {
    v3 = (v2 - 2);
    v4 = (v2 + 1) & 0xFFFFFFFC;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_25E7EC340;
    v7 = xmmword_25E7EC350;
    v8 = (*(this + 48) + 8);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, a2).u8[0])
      {
        *(v8 - 2) = a2.i32[0];
      }

      if (vuzp1_s16(v10, a2).i8[2])
      {
        *(v8 - 1) = a2.i32[0];
      }

      if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = a2.i32[0];
        v8[1] = a2.i32[0];
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
      v4 -= 4;
    }

    while (v4);
  }

  return this;
}

int *b2Rope::Draw(int *this, b2Draw *a2)
{
  v6 = 0x3F0000003ECCCCCDLL;
  v7 = 1060320051;
  if (*this >= 2)
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    do
    {
      ++v5;
      this = (*(*a2 + 48))(a2, *(v3 + 1) + v4, *(v3 + 1) + v4 + 8, &v6);
      v4 += 8;
    }

    while (v5 < *v3 - 1);
  }

  return this;
}

BOOL triangleDoesNotContainOtherPoints(uint64_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v5 - *a1;
  if (v5 == *a1)
  {
    return 1;
  }

  else
  {
    v7 = 0;
    v8 = v6 >> 3;
    _S3 = vsub_f32(a3, a2).u32[0];
    _S5 = vsub_f32(a4, a2).u32[0];
    _S7 = vsub_f32(a4, a3).u32[0];
    if (v8 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = 1;
    do
    {
      v14 = *v4;
      v15 = vsub_f32(a2, *v4);
      if (fabsf(v15.f32[0]) > 0.0001 || fabsf(v15.f32[1]) > 0.0001)
      {
        v16 = vsub_f32(a3, v14);
        if (fabsf(v16.f32[0]) > 0.0001 || fabsf(v16.f32[1]) > 0.0001)
        {
          v17 = vsub_f32(a4, v14);
          if (fabsf(v17.f32[0]) > 0.0001 || fabsf(v17.f32[1]) > 0.0001)
          {
            _D20 = vsub_f32(v14, a2);
            __asm
            {
              FMLA            S19, S3, V20.S[1]
              FMLA            S21, S5, V20.S[1]
            }

            if (_S19 > 0.0 == _S21 <= 0.0)
            {
              v25 = _S19 > 0.0;
              _D18 = vsub_f32(v14, a3);
              __asm { FMLA            S19, S7, V18.S[1] }

              if ((v25 ^ (_S19 <= 0.0)))
              {
                break;
              }
            }
          }
        }
      }

      v7 = v8 <= v13;
      ++v4;
      ++v13;
      --v12;
    }

    while (v12);
  }

  return v7;
}

BOOL validConvexPolygon(int a1, int a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = (a3[1] - *a3) >> 3;
  v6 = (v5 + a1) % v5;
  v7 = (v5 + a2) % v5;
  if (v6 <= v7)
  {
    v8 = (v5 + a2) % v5;
  }

  else
  {
    v8 = v5 + v7;
  }

  if (v8 - v6 + 1 < 3)
  {
    return 0;
  }

  v11 = v6 + 1;
  if (v6 + 1 < v8)
  {
    v12 = v11;
    do
    {
      v13 = (v12 % v5) + v5;
      v14 = *(v4 + (((v12 % v5) << 32) >> 29));
      v15 = vsub_f32(*(v4 + 8 * ((((v13 << 32) - 0x100000000) >> 32) % v5)), v14);
      v16 = vsub_f32(*(v4 + 8 * ((((v13 << 32) + 0x100000000) >> 32) % v5)), v14);
      if (((-v15.f32[1] * v16.f32[0]) + (v15.f32[0] * v16.f32[1])) >= 0.0)
      {
        return 0;
      }
    }

    while (++v12 < v8);
  }

  if (v6 + 2 <= v8)
  {
    v18 = *(v4 + 8 * v6);
    v19 = *(v4 + 8 * (v11 % v5));
    v20 = vsub_f32(v19, v18);
    v21 = v6 + 2;
    v17 = v8;
    while (1)
    {
      v22 = *(v4 + 8 * (v21 % v5));
      v23 = vsub_f32(v22, v18);
      if (((v23.f32[0] * v20.f32[1]) - (v23.f32[1] * v20.f32[0])) >= 0.0 || !triangleDoesNotContainOtherPoints(a4, v19, v18, v22))
      {
        return 0;
      }

      if (v21++ >= v8)
      {
        goto LABEL_16;
      }
    }
  }

  v17 = v8;
LABEL_16:
  v25 = *(v4 + 8 * (v17 % v5));
  v26 = *(v4 + 8 * ((v5 + v8 - 1) % v5));
  v27 = *(v4 + 8 * ((v5 + v6) % v5));
  v28 = vsub_f32(v26, v25);
  v29 = vsub_f32(v27, v25);
  if (((-v28.f32[1] * v29.f32[0]) + (v28.f32[0] * v29.f32[1])) >= 0.0)
  {
    return 0;
  }

  return triangleDoesNotContainOtherPoints(a4, v26, v25, v27);
}

uint64_t trisFromCCWFaces(uint64_t *a1, void *a2, const void **a3)
{
  __p = 0;
  v56 = 0;
  v57 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, *a1, a1[1], (a1[1] - *a1) >> 3);
  v6 = __p;
  v7 = v56;
  if ((v56 - __p) >= 0x11)
  {
    v50 = a3;
    while (1)
    {
      __src = 0;
      v53 = 0;
      v54 = 0;
      v8 = (v7 - v6) >> 3;
      if (v7 == v6)
      {
        goto LABEL_25;
      }

      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *&v6[8 * v10];
        v12 = vsub_f32(*&v6[8 * ((v8 + v10 - 1) % v8)], v11);
        v13 = vsub_f32(*&v6[8 * ((v8 + v10 + 1) % v8)], v11);
        if (((-v12.f32[1] * v13.f32[0]) + (v12.f32[0] * v13.f32[1])) >= 0.0)
        {
          if (v9 >= v54)
          {
            v14 = __src;
            v15 = v9 - __src;
            v16 = (v9 - __src) >> 2;
            v17 = v16 + 1;
            if ((v16 + 1) >> 62)
            {
              std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
            }

            v18 = v54 - __src;
            if ((v54 - __src) >> 1 > v17)
            {
              v17 = v18 >> 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v19 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
            }

            v20 = (v9 - __src) >> 2;
            v21 = (4 * v16);
            v22 = (4 * v16 - 4 * v20);
            *v21 = v10;
            v9 = (v21 + 1);
            memcpy(v22, v14, v15);
            v23 = __src;
            __src = v22;
            v53 = v9;
            v54 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v9 = v10;
            v9 += 4;
          }

          v53 = v9;
          v6 = __p;
          v7 = v56;
        }

        ++v10;
        v8 = (v7 - v6) >> 3;
      }

      while (v8 > v10);
      v24 = __src;
      v25 = v9 - __src;
      if (v9 == __src)
      {
LABEL_25:
        emitConvexBodyInclusive(0, v8 - 1, &__p, a2, a3);
      }

      else
      {
        v26 = v25 >> 2;
        if (v25 >> 2 != v8)
        {
          if (v26 >= 2)
          {
            v31 = 1;
            v32 = __src;
            v33 = v25 >> 2;
            while (1)
            {
              if (!v33)
              {
                goto LABEL_41;
              }

              v34 = *v32;
              v35 = v24[v31 % v26];
              v36 = v35;
              if (validConvexPolygon(*v32, v35, &__p, a1))
              {
                break;
              }

              --v33;
              ++v32;
              ++v31;
              if (validConvexPolygon(v36, v34, &__p, a1))
              {
                a3 = v50;
                emitConvexBodyInclusive(v36, v34, &__p, a2, v50);
                v37 = ((v36 + 1) % ((v56 - __p) >> 3));
                v38 = v34 - 1;
LABEL_63:
                erasePointsInclusive(v37, v38, &__p);
                v30 = 2;
                goto LABEL_27;
              }
            }

            a3 = v50;
            emitConvexBodyInclusive(v34, v36, &__p, a2, v50);
            v37 = ((v34 + 1) % ((v56 - __p) >> 3));
            v38 = v36 - 1;
            goto LABEL_63;
          }

LABEL_41:
          v39 = 0;
          if (v26 <= 1)
          {
            v40 = 1;
          }

          else
          {
            v40 = v26;
          }

          a3 = v50;
          do
          {
            v41 = v24[v39++];
            if (v24[v39 % v26] <= 3)
            {
              v42 = 3;
            }

            else
            {
              v42 = v24[v39 % v26];
            }

            while (v42 >= 3)
            {
              if (validConvexPolygon(v41, --v42 + v41, &__p, a1))
              {
                emitConvexBodyInclusive(v41, v41 + v42, &__p, a2, v50);
                v48 = (v56 - __p) >> 3;
                v37 = ((v48 + v41 + 1) % v48);
                v38 = (v48 + v41 + v42 - 1) % v48;
                goto LABEL_63;
              }
            }
          }

          while (v39 != v40);
          for (i = 0; i != v40; ++i)
          {
            v44 = v24[i];
            if (v24[(i - 1) % v26] <= 3)
            {
              v45 = 3;
            }

            else
            {
              v45 = v24[(i - 1) % v26];
            }

            v46 = 1 - v45;
            while (v45 >= 3)
            {
              --v45;
              if (validConvexPolygon(v44 + v46++, v44, &__p, a1))
              {
                a3 = v50;
                emitConvexBodyInclusive(v44 - v45, v44, &__p, a2, v50);
                erasePointsInclusive(((((v56 - __p) >> 3) + v44 - v45 + 1) % ((v56 - __p) >> 3)), (((v56 - __p) >> 3) + v44 - 1) % ((v56 - __p) >> 3), &__p);
                v30 = 0;
                goto LABEL_27;
              }
            }

            v30 = 3;
            a3 = v50;
          }

          goto LABEL_27;
        }

        v51 = (a2[1] - *a2) >> 3;
        std::vector<int>::push_back[abi:ne200100](a3, &v51);
        v27 = ((v56 - __p) >> 3) + 1;
        for (j = ((v56 - __p) & 0x7FFFFFFF8) - 8; --v27 > 0; j = v29)
        {
          v29 = j - 8;
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a2, __p + j);
        }
      }

      v30 = 1;
LABEL_27:
      if (__src)
      {
        v53 = __src;
        operator delete(__src);
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v30)
      {
        goto LABEL_64;
      }

      v6 = __p;
      v7 = v56;
      if ((v56 - __p) <= 0x10)
      {
LABEL_64:
        v6 = __p;
        break;
      }
    }
  }

  if (v6)
  {
    v56 = v6;
    operator delete(v6);
  }

  return 1;
}

void sub_25E7E1870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void emitConvexBodyInclusive(int a1, int a2, void *a3, void *a4, const void **a5)
{
  v17 = (a4[1] - *a4) >> 3;
  std::vector<int>::push_back[abi:ne200100](a5, &v17);
  v9 = (a3[1] - *a3) >> 3;
  v10 = (v9 + a1) % v9;
  v11 = (v9 + a2) % v9;
  if (v10 <= v11)
  {
    LODWORD(v9) = 0;
  }

  v12 = v9 + v11;
  if (v12 >= v10)
  {
    v13 = v10;
    v14 = v12;
    do
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a4, (*a3 + 8 * (v13 % ((a3[1] - *a3) >> 3))));
      v16 = __OFSUB__(v13, v14);
      v15 = (v13 - v14) < 0;
      ++v13;
    }

    while (v15 != v16);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *erasePointsInclusive(void *result, int a2, void **a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = (v4 - *a3) >> 3;
  v7 = (v6 + result) % v6;
  v8 = (v6 + a2) % v6;
  v9 = 8 * v7;
  v10 = *a3 + v9;
  if (v7 <= v8)
  {
    v13 = (v5 + 8 * v8 + 8 - v10);
    if (!v13)
    {
      return result;
    }

    v5 = v5 + v9;
    v12 = &v13[v5];
    goto LABEL_10;
  }

  if (v10 != v4)
  {
    v11 = v5 + v9;
    if (v10 != v5 + v9)
    {
      result = memmove(*a3 + v9, v4, 0);
      v5 = *a3;
    }

    v4 = v11;
    a3[1] = v11;
  }

  if (8 * v8 != -8)
  {
    v12 = v5 + 8 * v8 + 8;
LABEL_10:
    v14 = v4 - v12;
    if (v4 != v12)
    {
      result = memmove(v5, v12, v4 - v12);
    }

    a3[1] = v5 + v14;
  }

  return result;
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PKPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E7E1BAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PKPath::PKPath(PKPath *this, const CGPath *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = MEMORY[0x25F8C00E0](a2);
  *(this + 4) = v3;
  v6 = this;
  info[0] = 0;
  v5 = 0x3F8000000000000FLL;
  CGPathApply(v3, info, PKPathApplyCGPath);
}

void sub_25E7E1CB4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void PKPathApplyCGPath(void *a1, const CGPathElement *a2, float32x2_t a3)
{
  if (!a1 || (*a1 & 1) != 0)
  {
    return;
  }

  v5 = a1[2];
  v6 = v5 + 8;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  type = a2->type;
  if (v7 == v8 && type == kCGPathElementMoveToPoint)
  {
    v28 = vcvt_f32_f64(*a2->points);
    std::vector<PKPoint>::push_back[abi:ne200100](v6, &v28);
    *a1[2] = 0;
    return;
  }

  v12 = v8[-1].f32[0];
  v11 = v8[-1].f32[1];
  switch(type)
  {
    case kCGPathElementCloseSubpath:
      v28 = *v7;
      std::vector<PKPoint>::push_back[abi:ne200100](v6, &v28);
      *a1[2] = *a1[2] + sqrtf(((v28.f32[1] - v11) * (v28.f32[1] - v11)) + ((v28.f32[0] - v12) * (v28.f32[0] - v12)));
LABEL_22:
      *a1 = 1;
      return;
    case kCGPathElementAddLineToPoint:
      v28 = vcvt_f32_f64(*a2->points);
      std::vector<PKPoint>::push_back[abi:ne200100](v6, &v28);
      *a1[2] = *a1[2] + sqrtf(((v28.f32[1] - v11) * (v28.f32[1] - v11)) + ((v28.f32[0] - v12) * (v28.f32[0] - v12)));
      return;
    case kCGPathElementMoveToPoint:
      goto LABEL_22;
  }

  v13 = 0;
  v14 = *(a1 + 1);
  if (v14 <= 1)
  {
    v14 = 1;
  }

  v15 = v14;
  v16 = v14 + 1;
  v17 = 0.0;
  v18 = v8[-1].f32[1];
  v19 = v8[-1].f32[0];
  do
  {
    a3.f32[0] = v19;
    a3 = pointOnPath(a2, a3, v18, v13 / v15);
    v17 = v17 + sqrtf(((v20 - v18) * (v20 - v18)) + ((a3.f32[0] - v19) * (a3.f32[0] - v19)));
    ++v13;
    v18 = v20;
    v19 = a3.f32[0];
  }

  while (v16 != v13);
  v21 = (v17 / *(a1 + 2));
  if (v21 <= 1)
  {
    v21 = 1;
  }

  v22 = v21;
  v23 = v21 + 1;
  v24 = 0.0;
  do
  {
    v28 = 0;
    *&v25 = v24 / v22;
    v26 = v24 / v22;
    v25.f32[0] = v12;
    v28.i32[0] = pointOnPath(a2, v25, v11, v26).u32[0];
    v28.i32[1] = v27;
    std::vector<PKPoint>::push_back[abi:ne200100](v5 + 8, &v28);
    v5 = a1[2];
    *v5 = *v5 + sqrtf(((v28.f32[1] - *(*(v5 + 16) - 12)) * (v28.f32[1] - *(*(v5 + 16) - 12))) + ((v28.f32[0] - *(*(v5 + 16) - 16)) * (v28.f32[0] - *(*(v5 + 16) - 16))));
    v24 = v24 + 1.0;
    --v23;
  }

  while (v23);
}

void printPKPath(void *a1, const CGPathElement *a2)
{
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      if (type != kCGPathElementAddLineToPoint)
      {
        return;
      }

      points = a2->points;
      x = points->x;
      y = points->y;
      v6 = @"lineto";
    }

    else
    {
      v8 = a2->points;
      x = v8->x;
      y = v8->y;
      v6 = @"moveto";
    }

    NSLog(&cfstr_FF.isa, *&x, *&y, v6);
  }

  else
  {
    switch(type)
    {
      case kCGPathElementAddQuadCurveToPoint:
        NSLog(&cfstr_FFFF.isa, *&a2->points->x, *&a2->points->y, *&a2->points[1].x, *&a2->points[1].y, @"quadcurveto");
        break;
      case kCGPathElementAddCurveToPoint:
        v7 = a2->points;
        NSLog(&cfstr_FFFFFF.isa, *&v7->x, *&v7->y, *&v7[1].x, *&v7[1].y, *&v7[2].x, *&v7[2].y, @"curveto");
        break;
      case kCGPathElementCloseSubpath:
        NSLog(&cfstr_Closepath.isa);
        break;
    }
  }
}

BOOL PKPath::isEqualToPath(PKPath *this, PKPath *a2)
{
  v2 = *(this + 4);
  v3 = *(a2 + 4);
  if (!v2)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  result = CGPathEqualToPath(v2, v3);
  if (result)
  {
    return 1;
  }

  return result;
}

float PKPath::computeLength(PKPath *this, float result)
{
  *this = 0;
  v2 = *(this + 1);
  v3 = (*(this + 2) - v2) >> 3;
  if (v3 >= 2)
  {
    v6 = *v2;
    v5 = v2[1];
    v4 = v2 + 3;
    v7 = v3 - 1;
    result = 0.0;
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;
      result = result + sqrtf(((*v4 - v5) * (*v4 - v5)) + ((v8 - v6) * (v8 - v6)));
      *this = result;
      v4 += 2;
      v5 = v9;
      v6 = v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

void PKPath::createPath(PKPath *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CGPathRelease(v2);
  }

  if (*(this + 2) == *(this + 1))
  {
    *(this + 4) = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, **(this + 1), *(*(this + 1) + 4));
    v4 = *(this + 1);
    if ((*(this + 2) - v4) >= 9)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        CGPathAddLineToPoint(Mutable, 0, *(v4 + v5 + 8), *(v4 + v5 + 12));
        ++v6;
        v4 = *(this + 1);
        v5 += 8;
      }

      while (v6 < (*(this + 2) - v4) >> 3);
    }

    CGPathCloseSubpath(Mutable);
    *(this + 4) = MEMORY[0x25F8C00E0](Mutable);

    CGPathRelease(Mutable);
  }
}

void sub_25E7E24CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PKSplitBracesAndComma(CFStringRef theString, CFStringRef *a2, CFStringRef *a3)
{
  v19 = -1;
  if (!ParseBracesAndCommas(__CFString const*,long *,long *,long *,long *)::__braceCharacters)
  {
    ParseBracesAndCommas(__CFString const*,long *,long *,long *,long *)::__braceCharacters = CFCharacterSetCreateWithCharactersInString(0, @"{[,]}");
  }

  Length = CFStringGetLength(theString);
  if (Length >= 1)
  {
    v6 = Length;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = &v19;
    location = -1;
    v12 = Length;
    while (1)
    {
      v21.location = v8;
      v21.length = v12;
      if (!CFStringFindCharacterFromSet(theString, ParseBracesAndCommas(__CFString const*,long *,long *,long *,long *)::__braceCharacters, v21, 0, &result))
      {
        break;
      }

      if (result.location >= v6 || result.length != 1)
      {
        break;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location);
      if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5B)
      {
        if (!v9)
        {
          location = result.location;
        }

        ++v9;
      }

      else if (CharacterAtIndex == 44)
      {
        if (v9 == 1)
        {
          if (v7 <= 0)
          {
            *v10++ = result.location;
            ++v7;
          }

          v9 = 1;
        }
      }

      else if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5D && !--v9)
      {
        v15 = 0;
        if (location != -1)
        {
          v16 = result.location;
          if (result.location != -1 && location < result.location)
          {
            v15 = 0;
            v17 = v19;
            if (v19 > location + 1 && v19 < result.location - 1)
            {
              v22.length = v19 + ~location;
              v22.location = location + 1;
              *a2 = CFStringCreateWithSubstring(0, theString, v22);
              v23.location = v17 + 1;
              v23.length = v16 + ~v17;
              *a3 = CFStringCreateWithSubstring(0, theString, v23);
              return 1;
            }
          }
        }

        return v15;
      }

      if (result.location + 1 < v6)
      {
        v12 += v8 + ~result.location;
        v8 = result.location + 1;
        if (v12 > 0)
        {
          continue;
        }
      }

      return 0;
    }
  }

  return 0;
}

double PKCGPointFromString(void *a1)
{
  v1 = a1;
  DoubleValue = *MEMORY[0x277CBF348];
  if ([(__CFString *)v1 length]>= 5)
  {
    v6 = 0;
    str = 0;
    if (PKSplitBracesAndComma(v1, &str, &v6))
    {
      v3 = str;
      DoubleValue = CFStringGetDoubleValue(str);
      v4 = v6;
      CFStringGetDoubleValue(v6);
      CFRelease(v3);
      CFRelease(v4);
    }
  }

  return DoubleValue;
}

CGPath *PKCGPathCreateFromArray(void *a1, int a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = a1;
  if (v51)
  {
    v3 = 1.0;
    if (a2)
    {
      v3 = PKGet_PTM_RATIO();
    }

    Mutable = CGPathCreateMutable();
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = v51;
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v6)
    {
      v7 = *v53;
      v8 = v3;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          v11 = [v10 objectForKey:@"type"];
          v12 = [v11 intValue];

          v13 = [v10 objectForKey:@"points"];
          v14 = v13;
          if (v12 <= 1)
          {
            if (v12)
            {
              if (v12 == 1)
              {
                v15 = [v13 objectAtIndex:0];
                [v15 CGPointValue];
                v17 = v16;
                v19 = v18;

                CGPathAddLineToPoint(Mutable, 0, v17 * v8, v19 * v8);
              }
            }

            else
            {
              v45 = [v13 objectAtIndex:0];
              [v45 CGPointValue];
              v47 = v46;
              v49 = v48;

              CGPathMoveToPoint(Mutable, 0, v47 * v8, v49 * v8);
            }
          }

          else
          {
            switch(v12)
            {
              case 2:
                v20 = [v13 objectAtIndex:0];
                [v20 CGPointValue];
                v22 = v21;
                v24 = v23;

                v25 = [v14 objectAtIndex:1];
                [v25 CGPointValue];
                v27 = v26;
                v29 = v28;

                CGPathAddQuadCurveToPoint(Mutable, 0, v22 * v8, v24 * v8, v27 * v8, v29 * v8);
                break;
              case 3:
                v30 = [v13 objectAtIndex:0];
                [v30 CGPointValue];
                v32 = v31;
                v34 = v33;

                v35 = [v14 objectAtIndex:1];
                [v35 CGPointValue];
                v37 = v36;
                v39 = v38;

                v40 = [v14 objectAtIndex:2];
                [v40 CGPointValue];
                v42 = v41;
                v44 = v43;

                CGPathAddCurveToPoint(Mutable, 0, v32 * v8, v34 * v8, v37 * v8, v39 * v8, v42 * v8, v44 * v8);
                break;
              case 4:
                CGPathCloseSubpath(Mutable);
                break;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v6);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

id PKArrayFromPKPath(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v3 != v4)
    {
      v5 = 1;
      do
      {
        v6 = *v3;
        v7 = v3[1];
        v8 = [MEMORY[0x277CBEB38] dictionary];
        if (v5)
        {
          [MEMORY[0x277CCABB0] numberWithInt:0];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:1];
        }
        v9 = ;
        [v8 setValue:v9 forKey:@"type"];

        v10 = [MEMORY[0x277CBEB18] array];
        v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v6, v7}];
        [v10 addObject:v11];

        [v8 setValue:v10 forKey:@"points"];
        [v2 addObject:v8];

        v5 = 0;
        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKArrayFromB2PolygonShape(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v3 != v4)
    {
      v5 = 1;
      do
      {
        v6 = *v3;
        v7 = v3[1];
        v8 = [MEMORY[0x277CBEB38] dictionary];
        if (v5)
        {
          [MEMORY[0x277CCABB0] numberWithInt:0];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:1];
        }
        v9 = ;
        [v8 setValue:v9 forKey:@"type"];

        v10 = [MEMORY[0x277CBEB18] array];
        v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v6, v7}];
        [v10 addObject:v11];

        [v8 setValue:v10 forKey:@"points"];
        [v2 addObject:v8];

        v5 = 0;
        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKArrayFromB2ChainShape(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v3 != v4)
    {
      v5 = 1;
      do
      {
        v6 = *v3;
        v7 = v3[1];
        v8 = [MEMORY[0x277CBEB38] dictionary];
        if (v5)
        {
          [MEMORY[0x277CCABB0] numberWithInt:0];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:1];
        }
        v9 = ;
        [v8 setValue:v9 forKey:@"type"];

        v10 = [MEMORY[0x277CBEB18] array];
        v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v6, v7}];
        [v10 addObject:v11];

        [v8 setValue:v10 forKey:@"points"];
        [v2 addObject:v8];

        v5 = 0;
        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const CGPath *PKArrayFromCGPath(const CGPath *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v4 = 1.0;
    if (a2)
    {
      v4 = PKGet_INV_PTM_RATIO();
    }

    v7 = v4;
    CGPathApply(v2, &v6, PKArrayFromCGPathApply);
    v2 = v6;
  }

  return v2;
}

void PKArrayFromCGPathApply(id *a1, const CGPathElement *a2)
{
  v12 = *a1;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  type = a2->type;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2->type];
  [v3 setValue:v5 forKey:@"type"];

  points = a2->points;
  v7 = [MEMORY[0x277CBEB18] array];
  if (type > kCGPathElementAddLineToPoint)
  {
    if (type == kCGPathElementAddQuadCurveToPoint)
    {
      v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points->x, points->y}];
      [v7 addObject:v11];

      v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points[1].x, points[1].y}];
      [v7 addObject:v8];
    }

    else
    {
      if (type != kCGPathElementAddCurveToPoint)
      {
        goto LABEL_9;
      }

      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points->x, points->y}];
      [v7 addObject:v9];

      v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points[1].x, points[1].y}];
      [v7 addObject:v10];

      v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points[2].x, points[2].y}];
      [v7 addObject:v8];
    }
  }

  else
  {
    if (type > kCGPathElementAddLineToPoint)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{points->x, points->y}];
    [v7 addObject:v8];
  }

LABEL_9:
  [v3 setValue:v7 forKey:@"points"];
  [v12 addObject:v3];
}

void sub_25E7E3998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

float32x2_t pointOnPath(uint64_t a1, float32x2_t result, float32_t a3, float a4)
{
  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  v4 = *a1;
  result.f32[1] = a3;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      v12 = *(a1 + 8);
      v13 = 1.0 - a4;
      v14 = vmul_n_f32(result, v13 * v13);
      v15 = vmul_n_f32(vcvt_f32_f64(*v12), a4 * (v13 + v13));
      v10 = vmul_n_f32(vcvt_f32_f64(v12[1]), a4 * a4);
      v11 = vadd_f32(v14, v15);
    }

    else
    {
      if (v4 != 3)
      {
        return result;
      }

      v5 = *(a1 + 8);
      v6 = (1.0 - a4) * 3.0;
      v7 = a4 * ((1.0 - a4) * v6);
      v8 = vmul_n_f32(result, (1.0 - a4) * ((1.0 - a4) * (1.0 - a4)));
      v9 = vmul_n_f32(vcvt_f32_f64(v5[1]), a4 * (a4 * v6));
      v10 = vmul_n_f32(vcvt_f32_f64(v5[2]), a4 * (a4 * a4));
      v11 = vadd_f32(vadd_f32(v8, vmul_n_f32(vcvt_f32_f64(*v5), v7)), v9);
    }

    return vadd_f32(v11, v10);
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      return vadd_f32(result, vmul_n_f32(vsub_f32(vcvt_f32_f64(**(a1 + 8)), result), a4));
    }
  }

  else if (a4 >= 1.0)
  {
    return vcvt_f32_f64(**(a1 + 8));
  }

  return result;
}

char *std::vector<PKPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKPoint const*>,std::__wrap_iter<PKPoint const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *std::vector<PKPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKPoint*>,std::__wrap_iter<PKPoint*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

float gradrot2(char a1, float *a2, float *a3, float a4, float a5)
{
  v5 = (&grad2 + 8 * (a1 & 7));
  v6 = *v5;
  v7 = v5[1];
  *a2 = (a5 * *v5) - (v7 * a4);
  result = (v7 * a5) + (a4 * v6);
  *a3 = result;
  return result;
}

float gradrot3(char a1, float *a2, float *a3, float *a4, float a5, float a6)
{
  v6 = (&grad3u + 12 * (a1 & 0xF));
  v7 = v6[1];
  v8 = v6[2];
  v9 = (&grad3v + 12 * (a1 & 0xF));
  v10 = v9[1];
  v11 = v9[2];
  *a2 = (*v9 * a5) + (a6 * *v6);
  *a3 = (v10 * a5) + (a6 * v7);
  result = (v11 * a5) + (a6 * v8);
  *a4 = result;
  return result;
}

float srdnoise2(float *a1, float *a2, float a3, float a4, float a5)
{
  v9 = __sincosf_stret(a5);

  return srdnoise2_sincos(a1, a2, a3, a4, v9.__sinval, v9.__cosval);
}

float srdnoise2_sincos(float *a1, float *a2, float a3, float a4, float a5, float a6)
{
  v6 = (a3 + a4) * 0.366025403;
  v7 = (v6 + a3) - ((v6 + a3) <= 0.0);
  v8 = (v6 + a4) - ((v6 + a4) <= 0.0);
  v9 = (v7 + v8) * 0.211324865;
  v10 = v8 - v9;
  v11 = a3 - (v7 - v9);
  v12 = a4 - v10;
  v13 = 0.0;
  v14 = 1.0;
  if (v11 <= v12)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = (v11 - v15) + 0.211324865;
  if (v11 > v12)
  {
    v14 = 0.0;
  }

  v17 = (v12 - v14) + 0.211324865;
  v18 = v7;
  v19 = -v7;
  if (v19 >= 0)
  {
    v20 = -v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = v8;
  v22 = -v8;
  if (v22 >= 0)
  {
    v21 = -v22;
  }

  v23 = (0.5 - (v11 * v11)) - (v12 * v12);
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  if (v23 >= 0.0)
  {
    v30 = (&grad2 + 8 * (perm_1[perm_1[v21] + v20] & 7));
    v31 = v30[1];
    v24 = (a6 * *v30) - (v31 * a5);
    v25 = (v31 * a6) + (a5 * *v30);
    v27 = v23 * v23;
    v28 = v27 * v27;
    v29 = (v27 * v27) * ((v12 * v25) + (v24 * v11));
    v26 = (0.5 - (v11 * v11)) - (v12 * v12);
  }

  v32 = (v11 + -1.0) + 0.42264973;
  v33 = (v12 + -1.0) + 0.42264973;
  v34 = (0.5 - (v16 * v16)) - (v17 * v17);
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  if (v34 >= 0.0)
  {
    v40 = v21;
    if (v11 <= v12)
    {
      v40 = v21 + 1;
    }

    v41 = (&grad2 + 8 * (perm_1[perm_1[v40] + (v20 + (v11 > v12))] & 7));
    v42 = v41[1];
    v13 = (a6 * *v41) - (v42 * a5);
    v35 = (v42 * a6) + (a5 * *v41);
    v37 = v34 * v34;
    v38 = v37 * v37;
    v39 = (v37 * v37) * ((v35 * v17) + (v13 * v16));
    v36 = (0.5 - (v16 * v16)) - (v17 * v17);
  }

  v43 = (0.5 - (v32 * v32)) - (v33 * v33);
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  if (v43 >= 0.0)
  {
    v50 = (&grad2 + 8 * (perm_1[perm_1[v21 + 1] + 1 + v20] & 7));
    v51 = v50[1];
    v44 = (a6 * *v50) - (v51 * a5);
    v45 = (v51 * a6) + (a5 * *v50);
    v47 = v43 * v43;
    v48 = v47 * v47;
    v49 = (v47 * v47) * ((v45 * v33) + (v44 * v32));
    v46 = (0.5 - (v32 * v32)) - (v33 * v33);
  }

  if (a1 && a2)
  {
    v52 = ((v12 * v25) + (v24 * v11)) * (v26 * v27);
    *a1 = v11 * v52;
    *a2 = v12 * v52;
    v53 = ((v35 * v17) + (v13 * v16)) * (v36 * v37);
    *a1 = *a1 + (v53 * v16);
    *a2 = *a2 + (v53 * v17);
    v54 = ((v45 * v33) + (v44 * v32)) * (v46 * v47);
    *a1 = *a1 + (v54 * v32);
    *a2 = *a2 + (v54 * v33);
    *a1 = *a1 * -8.0;
    *a2 = *a2 * -8.0;
    *a1 = (((v13 * v38) + (v28 * v24)) + (v48 * v44)) + *a1;
    *a2 = (((v35 * v38) + (v28 * v25)) + (v48 * v45)) + *a2;
    *a1 = *a1 * 40.0;
    *a2 = *a2 * 40.0;
  }

  return ((v29 + v39) + v49) * 40.0;
}

float srdnoise3(float *a1, float *a2, float *a3, float a4, float a5, float a6, float a7)
{
  v13 = __sincosf_stret(a7);

  return srdnoise3_sincos(a1, a2, a3, a4, a5, a6, v13.__sinval, v13.__cosval);
}

float srdnoise3_sincos(float *a1, float *a2, float *a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = ((a4 + a5) + a6) * 0.33333;
  v9 = (v8 + a4) - ((v8 + a4) <= 0.0);
  v10 = (v8 + a5) - ((v8 + a5) <= 0.0);
  v11 = (v8 + a6) - ((v8 + a6) <= 0.0);
  v12 = (v9 + v10 + v11) * 0.16667;
  v13 = v10 - v12;
  v14 = v11 - v12;
  v15 = a4 - (v9 - v12);
  v16 = a5 - v13;
  v17 = a6 - v14;
  if (v15 >= v16)
  {
    if (v16 >= v17)
    {
      v21 = 0;
      v23 = 0;
      v19 = 0;
      v22 = 1;
      v18 = 1;
      v20 = 1;
    }

    else
    {
      v22 = 0;
      v19 = 0;
      v23 = v15 < v17;
      v20 = v15 >= v17;
      v21 = 1;
      v18 = 1;
    }
  }

  else if (v16 >= v17)
  {
    v23 = 0;
    v20 = 0;
    v21 = v15 < v17;
    v18 = v15 >= v17;
    v22 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = 1;
    v23 = 1;
  }

  v24 = (v15 - v20) + 0.16667;
  v25 = (v16 - v19) + 0.16667;
  v26 = (v17 - v23) + 0.16667;
  v28 = v9 + 512;
  v27 = -v28 < 0;
  v28 = v28;
  if (!v27)
  {
    v28 = --v28;
  }

  v29 = v10 + 512;
  v27 = -v29 < 0;
  v29 = v29;
  if (!v27)
  {
    v29 = --v29;
  }

  v30 = v11 + 512;
  if (v30 <= 0)
  {
    v31 = --v30;
  }

  else
  {
    v31 = v30;
  }

  v32 = ((0.6 - (v15 * v15)) - (v16 * v16)) - (v17 * v17);
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  if (v32 >= 0.0)
  {
    v41 = (&grad3u + 12 * (perm_1[perm_1[perm_1[v31] + v29] + v28] & 0xF));
    v42 = (&grad3v + 12 * (perm_1[perm_1[perm_1[v31] + v29] + v28] & 0xF));
    v34 = (*v42 * a7) + (a8 * *v41);
    v35 = (v42[1] * a7) + (a8 * v41[1]);
    v36 = (v42[2] * a7) + (a8 * v41[2]);
    v38 = v32 * v32;
    v39 = v38 * v38;
    v40 = (v38 * v38) * (((v16 * v35) + (v34 * v15)) + (v36 * v17));
    v37 = ((0.6 - (v15 * v15)) - (v16 * v16)) - (v17 * v17);
  }

  v85 = v37;
  v86 = v38;
  v88 = v34;
  v89 = v35;
  v90 = v36;
  v95 = v40;
  v43 = (v15 - v18) + 0.33333;
  v44 = (v16 - v22) + 0.33333;
  v45 = (v17 - v21) + 0.33333;
  v46 = ((0.6 - (v24 * v24)) - (v25 * v25)) - (v26 * v26);
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  if (v46 >= 0.0)
  {
    v53 = 3 * (perm_1[perm_1[perm_1[v23 + v31] + (v19 + v29)] + (v20 + v28)] & 0xF);
    v54 = (&grad3u + 4 * v53);
    v55 = (&grad3v + 4 * v53);
    v33 = (*v55 * a7) + (a8 * *v54);
    v47 = (v55[1] * a7) + (a8 * v54[1]);
    v48 = (v55[2] * a7) + (a8 * v54[2]);
    v50 = v46 * v46;
    v51 = v50 * v50;
    v52 = (v50 * v50) * (((v25 * v47) + (v33 * v24)) + (v48 * v26));
    v49 = ((0.6 - (v24 * v24)) - (v25 * v25)) - (v26 * v26);
  }

  v93 = (v15 - v20) + 0.16667;
  v94 = v52;
  v87 = v33;
  v91 = v25;
  v92 = v26;
  v56 = (v15 + -1.0) + 0.5;
  v57 = (v16 + -1.0) + 0.5;
  v58 = (v17 + -1.0) + 0.5;
  v59 = ((0.6 - (v43 * v43)) - (v44 * v44)) - (v45 * v45);
  v60 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  if (v59 >= 0.0)
  {
    v68 = 3 * (perm_1[perm_1[perm_1[v21 + v31] + (v22 + v29)] + (v18 + v28)] & 0xF);
    v69 = (&grad3u + 4 * v68);
    v70 = (&grad3v + 4 * v68);
    v61 = (*v70 * a7) + (a8 * *v69);
    v62 = (v70[1] * a7) + (a8 * v69[1]);
    v63 = (v70[2] * a7) + (a8 * v69[2]);
    v65 = v59 * v59;
    v66 = v65 * v65;
    v67 = (v65 * v65) * (((v44 * v62) + (v61 * v43)) + (v63 * v45));
    v64 = ((0.6 - (v43 * v43)) - (v44 * v44)) - (v45 * v45);
  }

  v71 = ((0.6 - (v56 * v56)) - (v57 * v57)) - (v58 * v58);
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  if (v71 >= 0.0)
  {
    v78 = (&grad3u + 12 * (perm_1[perm_1[perm_1[v31 + 1] + 1 + v29] + 1 + v28] & 0xF));
    v79 = (&grad3v + 12 * (perm_1[perm_1[perm_1[v31 + 1] + 1 + v29] + 1 + v28] & 0xF));
    v60 = (*v79 * a7) + (a8 * *v78);
    v72 = (v79[1] * a7) + (a8 * v78[1]);
    v73 = (v79[2] * a7) + (a8 * v78[2]);
    v75 = v71 * v71;
    v76 = v75 * v75;
    v77 = (v75 * v75) * (((v57 * v72) + (v60 * v56)) + (v73 * v58));
    v74 = ((0.6 - (v56 * v56)) - (v57 * v57)) - (v58 * v58);
  }

  if (a1 && a2 && a3)
  {
    v80 = (((v16 * v89) + (v88 * v15)) + (v90 * v17)) * (v85 * v86);
    *a1 = v15 * v80;
    *a2 = v16 * v80;
    *a3 = v17 * v80;
    v81 = (((v91 * v47) + (v87 * v93)) + (v48 * v92)) * (v49 * v50);
    *a1 = *a1 + (v81 * v93);
    *a2 = *a2 + (v81 * v91);
    *a3 = *a3 + (v81 * v92);
    v82 = (((v44 * v62) + (v61 * v43)) + (v63 * v45)) * (v64 * v65);
    *a1 = *a1 + (v82 * v43);
    *a2 = *a2 + (v82 * v44);
    *a3 = *a3 + (v82 * v45);
    v83 = (((v57 * v72) + (v60 * v56)) + (v73 * v58)) * (v74 * v75);
    *a1 = *a1 + (v83 * v56);
    *a2 = *a2 + (v83 * v57);
    *a3 = *a3 + (v83 * v58);
    *a1 = *a1 * -8.0;
    *a2 = *a2 * -8.0;
    *a3 = *a3 * -8.0;
    *a1 = ((((v87 * v51) + (v39 * v88)) + (v66 * v61)) + (v76 * v60)) + *a1;
    *a2 = ((((v47 * v51) + (v39 * v89)) + (v66 * v62)) + (v76 * v72)) + *a2;
    *a3 = ((((v48 * v51) + (v39 * v90)) + (v66 * v63)) + (v76 * v73)) + *a3;
    *a1 = *a1 * 28.0;
    *a2 = *a2 * 28.0;
    *a3 = *a3 * 28.0;
  }

  return (((v95 + v94) + v67) + v77) * 28.0;
}

float srdnoise3_sincos_vector(float32x4_t *a1, float32x4_t a2, float a3, float a4)
{
  v4 = vmulq_f32(a2, xmmword_25E7EC370);
  *v4.i8 = vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = vrndmq_f32(vaddq_f32(vdupq_lane_s32(vadd_f32(*v4.i8, vdup_lane_s32(*v4.i8, 1)), 0), a2));
  v6 = vmulq_f32(v5, xmmword_25E7EC380);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = vsubq_f32(a2, vsubq_f32(v5, vdupq_lane_s32(vadd_f32(*v6.i8, vdup_lane_s32(*v6.i8, 1)), 0)));
  v8 = v7;
  v8.i32[3] = 0;
  __asm { FMOV            V5.4S, #1.0 }

  v14 = vbslq_s8(vcgeq_f32(v8, vzip2q_s32(vzip1q_s32(v8, vextq_s8(v8, v8, 0xCuLL)), v8)), _Q5, 0);
  v15 = vbslq_s8(vcgtq_f32(v8, vuzp2q_s32(vextq_s8(v8, v8, 4uLL), v8)), _Q5, 0);
  if (v7.f32[2] <= v7.f32[0])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  v14.f32[2] = v16;
  if (v7.f32[0] < v7.f32[2])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  v15.f32[0] = v17;
  v18 = vminnmq_f32(v14, v15);
  v19 = vmaxnmq_f32(v14, v15);
  v22 = vaddq_f32(vsubq_f32(v7, v18), vdupq_n_s32(0x3E2AAAABu));
  v23 = vaddq_f32(vsubq_f32(v7, v19), vdupq_n_s32(0x3EAAAAABu));
  __asm { FMOV            V18.4S, #-1.0 }

  v21 = vaddq_f32(v7, _Q18);
  _Q18.i64[0] = 0x3F0000003F000000;
  _Q18.i64[1] = 0x3F0000003F000000;
  v24 = vaddq_f32(v21, _Q18);
  v22.i32[3] = 0;
  v23.i32[3] = 0;
  v24.i32[3] = 0;
  v25 = vmovn_s32(vcvtq_s32_f32(v5));
  v26 = &perm_1[v25.u8[4]];
  v27 = perm_1[perm_1[*v26 + v25.u8[2]] + v25.u8[0]] & 0xF;
  v28 = perm_1[perm_1[perm_1[v18.f32[2] + v25.u8[4]] + (v18.f32[1] + v25.u8[2])] + (v18.f32[0] + v25.u8[0])] & 0xF;
  v29 = perm_1[perm_1[perm_1[v19.f32[2] + v25.u8[4]] + (v19.f32[1] + v25.u8[2])] + (v19.f32[0] + v25.u8[0])] & 0xF;
  v30 = perm_1[v25.u8[0] + 1 + perm_1[v25.u8[2] + 1 + v26[1]]] & 0xF;
  v31 = vmulq_f32(v8, v8);
  *v31.f32 = vadd_f32(*v31.f32, *&vextq_s8(v31, v31, 8uLL));
  v32 = vmulq_f32(v22, v22);
  *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  v33 = vmulq_f32(v23, v23);
  *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
  v34 = vmulq_f32(v24, v24);
  *v35.f32 = vzip1_s32(*v31.f32, *v32.i8);
  v35.i32[2] = v33.i32[0];
  *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v35.i32[3] = v34.i32[0];
  *v31.f32 = vzip2_s32(*v31.f32, *v32.i8);
  v31.i64[1] = __PAIR64__(v34.u32[1], vdup_lane_s32(*v33.i8, 1).u32[0]);
  v36 = vaddq_f32(v35, v31);
  v37 = vmlaq_n_f32(vmulq_n_f32(grad3v_vector[v27], a3), grad3u_vector[v27], a4);
  v38 = vmulq_f32(v8, v37);
  v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  v40 = vmlaq_n_f32(vmulq_n_f32(grad3v_vector[v28], a3), grad3u_vector[v28], a4);
  v41 = vmulq_f32(v22, v40);
  *v35.f32 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  v42 = vmlaq_n_f32(vmulq_n_f32(grad3v_vector[v29], a3), grad3u_vector[v29], a4);
  v43 = vmulq_f32(v23, v42);
  *v43.i8 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  v44 = vmlaq_n_f32(vmulq_n_f32(grad3v_vector[v30], a3), grad3u_vector[v30], a4);
  v45 = vmulq_f32(v24, v44);
  *v45.i8 = vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
  *v46.f32 = vzip1_s32(v39, *v35.f32);
  v46.i64[1] = __PAIR64__(v45.u32[0], v43.u32[0]);
  *v35.f32 = vzip2_s32(v39, *v35.f32);
  v35.i64[1] = __PAIR64__(v45.u32[1], vdup_lane_s32(*v43.i8, 1).u32[0]);
  v47 = vaddq_f32(v46, v35);
  v48 = vmaxnmq_f32(vsubq_f32(vdupq_n_s32(0x3F19999Au), v36), 0);
  v49 = vmulq_f32(v48, v48);
  v50 = vmulq_f32(v49, v49);
  __asm { FMOV            V16.4S, #28.0 }

  if (a1)
  {
    v52 = vmulq_f32(vmulq_f32(v48, v49), v47);
    v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v22, *v52.f32, 1), v8, v52.f32[0]), v23, v52, 2), v24, v52, 3);
    v54.i64[0] = 0xC1000000C1000000;
    v54.i64[1] = 0xC1000000C1000000;
    *a1 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v40, *v50.f32, 1), v37, v50.f32[0]), v42, v50, 2), v44, v50, 3), vmulq_f32(v53, v54)), _Q16);
  }

  v55 = vmulq_f32(vmulq_f32(v50, v47), _Q16);
  return vaddv_f32(vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)));
}

float PKSet_PTM_Ratio(float a1)
{
  _PK_PTM_RATIO = LODWORD(a1);
  result = 1.0 / a1;
  _PK_PKGet_INV_PTM_RATIO = LODWORD(result);
  return result;
}

float32_t PKPhysicsReapplyScaleOnFixture(b2FixtureDef *a1, b2Fixture *a2, float a3, float a4)
{
  v4 = *(a2 + 4);
  v5 = v4[1].i32[0];
  if (v5 > 1)
  {
    v7 = a3 * a4;
    if (v5 == 2)
    {
      var0 = a1->var0;
      v15 = *(a1->var0 + 2);
      v16 = *(a1->var0 + 3) - v15;
      v17 = v16 >> 3;
      if (v7 >= 0.0)
      {
        if (v17 >= 1)
        {
          v37 = 0;
          do
          {
            *(*&v4[2] + 8 * v37) = vmul_f32(*(*(var0 + 2) + 8 * v37), __PAIR64__(LODWORD(a4), LODWORD(a3)));
            *(*&v4[5] + 8 * v37) = *(*(var0 + 5) + 8 * v37);
            ++v37;
          }

          while (((v16 >> 3) & 0x7FFFFFFF) != v37);
        }
      }

      else if (v17 >= 1)
      {
        v18 = v4[2];
        v19 = (v16 >> 3) & 0x7FFFFFFF;
        v20 = v15 - 8;
        v21 = v19;
        do
        {
          *v18++ = vmul_f32(*(v20 + 8 * v21--), __PAIR64__(LODWORD(a4), LODWORD(a3)));
        }

        while (v21);
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          if (v23 >= v19)
          {
            v24 = 0;
          }

          v25 = v4[2];
          v26 = (*&v25 + 8 * v24);
          v27 = (*&v25 + v22);
          v28 = *v26 - *v27;
          v29 = v26[1] - v27[1];
          if (((v29 * v29) + (v28 * v28)) >= 1.4211e-14)
          {
            v30 = -v28;
            v31 = (*&v4[5] + v22);
            *v31 = v29;
            v31[1] = -v28;
            v32 = sqrtf((v28 * v28) + (v29 * v29));
            if (v32 >= 0.00000011921)
            {
              v33 = 1.0 / v32;
              *v31 = v29 * v33;
              v31[1] = v33 * v30;
            }
          }

          else
          {
            *(*&v4[5] + v22) = 0x3F80000000000000;
          }

          v22 += 8;
          ++v23;
        }

        while (v23 - v19 != 1);
      }

      v4[8] = vmul_f32(*(var0 + 64), __PAIR64__(LODWORD(a4), LODWORD(a3)));
      v4 = *(a2 + 4);
    }

    else if (v5 == 3)
    {
      v8 = *(a1->var0 + 2);
      v9 = *(a1->var0 + 3) - v8;
      v10 = v9 >> 3;
      if (v7 >= 0.0)
      {
        if (v10 >= 1)
        {
          v34 = v4[2];
          v35 = (v9 >> 3) & 0x7FFFFFFF;
          do
          {
            v36 = *v8++;
            *v34++ = vmul_f32(v36, __PAIR64__(LODWORD(a4), LODWORD(a3)));
            --v35;
          }

          while (v35);
        }
      }

      else if (v10 >= 1)
      {
        v11 = v4[2];
        v12 = (v9 >> 3) & 0x7FFFFFFF;
        v13 = v8 - 1;
        do
        {
          *v11++ = vmul_f32(v13[v12--], __PAIR64__(LODWORD(a4), LODWORD(a3)));
        }

        while (v12);
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v6 = a1->var0;
      if (*(a1->var0 + 48) == 1)
      {
        v4[4] = vmul_f32(*(v6 + 32), __PAIR64__(LODWORD(a4), LODWORD(a3)));
      }

      *v4[2].f32 = vmulq_f32(*(v6 + 1), vdupq_lane_s64(__SPAIR64__(LODWORD(a4), LODWORD(a3)), 0));
      if (*(v6 + 49) == 1)
      {
        v4[5] = vmul_f32(*(v6 + 40), __PAIR64__(LODWORD(a4), LODWORD(a3)));
      }
    }
  }

  else
  {
    v4[2] = vmul_f32(vabs_f32(__PAIR64__(LODWORD(a4), LODWORD(a3))), *(a1->var0 + 16));
  }

  v38 = *(a1->var0 + 3);
  result = (v38 * hypotf(a3, a4)) / 1.4142;
  v4[1].f32[1] = result;
  return result;
}

void b2DistanceProxy::Set()
{
  if (__cxa_guard_acquire(&qword_27FD070C8))
  {
    _MergedGlobals = 0;

    __cxa_guard_release(&qword_27FD070C8);
  }
}

{
  __assert_rtn("Set", "b2Distance.cpp", 53, "0 <= index && index < chain->GetVertexCount()");
}

{
  __assert_rtn("Set", "b2Distance.cpp", 90, "false");
}

void b2Distance()
{
  __assert_rtn("GetVertex", "b2Distance.h", 104, "0 <= index && index < GetVertexCount()");
}

{
  __assert_rtn("b2Distance", "b2Distance.cpp", 513, "false");
}

void b2Simplex::GetClosestPoint()
{
  {
    b2Vec2_zero_fn(void)::b2Vec2_zero_init = 0;
  }
}

{
  __assert_rtn("GetClosestPoint", "b2Distance.cpp", 204, "false");
}

{
  __assert_rtn("GetClosestPoint", "b2Distance.cpp", 217, "false");
}

void b2Simplex::GetWitnessPoints()
{
  __assert_rtn("GetWitnessPoints", "b2Distance.cpp", 227, "false");
}

{
  __assert_rtn("GetWitnessPoints", "b2Distance.cpp", 246, "false");
}

void b2Simplex::GetMetric()
{
  __assert_rtn("GetMetric", "b2Distance.cpp", 256, "false");
}

{
  __assert_rtn("GetMetric", "b2Distance.cpp", 269, "false");
}

void b2DynamicTree::FreeNode()
{
  __assert_rtn("FreeNode", "b2DynamicTree.cpp", 99, "0 <= nodeId && nodeId < m_nodeCapacity");
}

{
  __assert_rtn("FreeNode", "b2DynamicTree.cpp", 100, "0 < m_nodeCount");
}

void b2DynamicTree::InsertLeaf()
{
  __assert_rtn("InsertLeaf", "b2DynamicTree.cpp", 312, "child2 != (-1)");
}

{
  __assert_rtn("InsertLeaf", "b2DynamicTree.cpp", 311, "child1 != (-1)");
}

void b2DynamicTree::DestroyProxy()
{
  __assert_rtn("DestroyProxy", "b2DynamicTree.cpp", 129, "0 <= proxyId && proxyId < m_nodeCapacity");
}

{
  __assert_rtn("DestroyProxy", "b2DynamicTree.cpp", 130, "m_nodes[proxyId].IsLeaf()");
}

void b2DynamicTree::MoveProxy()
{
  __assert_rtn("MoveProxy", "b2DynamicTree.cpp", 138, "0 <= proxyId && proxyId < m_nodeCapacity");
}

{
  __assert_rtn("MoveProxy", "b2DynamicTree.cpp", 140, "m_nodes[proxyId].IsLeaf()");
}

void b2DynamicTree::Balance()
{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 396, "0 <= iB && iB < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 488, "m_nodes[B->parent].child2 == iA");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 472, "0 <= iE && iE < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 471, "0 <= iD && iD < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 428, "m_nodes[C->parent].child2 == iA");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 412, "0 <= iG && iG < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 411, "0 <= iF && iF < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 397, "0 <= iC && iC < m_nodeCapacity");
}

{
  __assert_rtn("Balance", "b2DynamicTree.cpp", 386, "iA != (-1)");
}

void b2DynamicTree::ValidateStructure()
{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 595, "m_nodes[index].parent == (-1)");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 611, "0 <= child1 && child1 < m_nodeCapacity");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 614, "m_nodes[child1].parent == index");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 615, "m_nodes[child2].parent == index");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 612, "0 <= child2 && child2 < m_nodeCapacity");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 606, "child2 == (-1)");
}

{
  __assert_rtn("ValidateStructure", "b2DynamicTree.cpp", 607, "node->height == 0");
}

void b2DynamicTree::ValidateMetrics()
{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 641, "0 <= child1 && child1 < m_nodeCapacity");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 648, "node->height == height");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 653, "aabb.lowerBound == node->aabb.lowerBound");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 654, "aabb.upperBound == node->aabb.upperBound");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 642, "0 <= child2 && child2 < m_nodeCapacity");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 636, "child2 == (-1)");
}

{
  __assert_rtn("ValidateMetrics", "b2DynamicTree.cpp", 637, "node->height == 0");
}

void b2DynamicTree::Validate()
{
  __assert_rtn("Validate", "b2DynamicTree.cpp", 669, "0 <= freeIndex && freeIndex < m_nodeCapacity");
}

{
  __assert_rtn("Validate", "b2DynamicTree.cpp", 674, "GetHeight() == ComputeHeight()");
}

{
  __assert_rtn("Validate", "b2DynamicTree.cpp", 676, "m_nodeCount + freeCount == m_nodeCapacity");
}

void b2StackAllocator::Free()
{
  __assert_rtn("Free", "b2StackAllocator.cpp", 65, "p == entry->data");
}

{
  __assert_rtn("Free", "b2StackAllocator.cpp", 63, "m_entryCount > 0");
}

void b2Body::b2Body()
{
  __assert_rtn("b2Body", "b2Body.mm", 61, "b2IsValid(bd->linearDamping) && bd->linearDamping >= 0.0f");
}

{
  __assert_rtn("b2Body", "b2Body.mm", 60, "b2IsValid(bd->angularDamping) && bd->angularDamping >= 0.0f");
}

{
  __assert_rtn("b2Body", "b2Body.mm", 59, "b2IsValid(bd->angularVelocity)");
}

{
  __assert_rtn("b2Body", "b2Body.mm", 58, "b2IsValid(bd->angle)");
}

{
  __assert_rtn("b2Body", "b2Body.mm", 57, "bd->linearVelocity.IsValid()");
}

{
  __assert_rtn("b2Body", "b2Body.mm", 56, "bd->position.IsValid()");
}

void b2Body::DestroyFixture()
{
  __assert_rtn("DestroyFixture", "b2Body.mm", 265, "m_world->IsLocked() == false");
}

{
  __assert_rtn("DestroyFixture", "b2Body.mm", 271, "fixture->m_body == this");
}

{
  __assert_rtn("DestroyFixture", "b2Body.mm", 290, "found");
}

{
  __assert_rtn("DestroyFixture", "b2Body.mm", 274, "m_fixtureCount > 0");
}

void b2Body::SetMassData()
{
  __assert_rtn("SetMassData", "b2Body.mm", 397, "m_world->IsLocked() == false");
}

{
  __assert_rtn("SetMassData", "b2Body.mm", 423, "m_I > 0.0f");
}

void b2ContactManager::QueryCallback()
{
  __assert_rtn("GetCategoryBits", "b2DynamicTree.h", 173, "0 <= proxyId && proxyId < m_nodeCapacity");
}

{
  __assert_rtn("GetCollisionBits", "b2DynamicTree.h", 177, "0 <= proxyId && proxyId < m_nodeCapacity");
}

void b2ContactManager::FindNewContacts()
{
  __assert_rtn("GetFatAABB", "b2DynamicTree.h", 168, "0 <= proxyId && proxyId < m_nodeCapacity");
}

{
  __assert_rtn("GetFixtureProxy", "b2DynamicTree.h", 162, "0 <= proxyId && proxyId < m_nodeCapacity");
}

void b2Island::b2Island(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 48) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 24) = v6;

    operator delete(v6);
  }
}

void b2Island::SolveTOI()
{
  __assert_rtn("SolveTOI", "b2Island.mm", 404, "toiIndexA < bodyCount");
}

{
  __assert_rtn("SolveTOI", "b2Island.mm", 405, "toiIndexB < bodyCount");
}

void b2World::DestroyBody()
{
  __assert_rtn("DestroyBody", "b2World.mm", 210, "IsLocked() == false");
}

{
  __assert_rtn("DestroyBody", "b2World.mm", 209, "m_bodyCount > 0");
}

void b2World::DestroyJoint()
{
  __assert_rtn("DestroyJoint", "b2World.mm", 326, "IsLocked() == false");
}

{
  __assert_rtn("DestroyJoint", "b2World.mm", 396, "m_jointCount > 0");
}

void b2ChainAndCircleContact::b2ChainAndCircleContact()
{
  __assert_rtn("b2ChainAndCircleContact", "b2ChainAndCircleContact.cpp", 39, "m_fixtureA->GetType() == b2Shape::e_chain");
}

{
  __assert_rtn("b2ChainAndCircleContact", "b2ChainAndCircleContact.cpp", 40, "m_fixtureB->GetType() == b2Shape::e_circle");
}

void b2ChainAndPolygonContact::b2ChainAndPolygonContact()
{
  __assert_rtn("b2ChainAndPolygonContact", "b2ChainAndPolygonContact.cpp", 39, "m_fixtureA->GetType() == b2Shape::e_chain");
}

{
  __assert_rtn("b2ChainAndPolygonContact", "b2ChainAndPolygonContact.cpp", 40, "m_fixtureB->GetType() == b2Shape::e_polygon");
}

void b2CircleContact::b2CircleContact()
{
  __assert_rtn("b2CircleContact", "b2CircleContact.cpp", 40, "m_fixtureA->GetType() == b2Shape::e_circle");
}

{
  __assert_rtn("b2CircleContact", "b2CircleContact.cpp", 41, "m_fixtureB->GetType() == b2Shape::e_circle");
}

void b2Contact::AddType()
{
  __assert_rtn("AddType", "b2Contact.cpp", 64, "0 <= type2 && type2 < b2Shape::e_typeCount");
}

{
  __assert_rtn("AddType", "b2Contact.cpp", 63, "0 <= type1 && type1 < b2Shape::e_typeCount");
}

void b2Contact::Create()
{
  __assert_rtn("Create", "b2Contact.cpp", 88, "0 <= type2 && type2 < b2Shape::e_typeCount");
}

{
  __assert_rtn("Create", "b2Contact.cpp", 87, "0 <= type1 && type1 < b2Shape::e_typeCount");
}

void b2EdgeAndCircleContact::b2EdgeAndCircleContact()
{
  __assert_rtn("b2EdgeAndCircleContact", "b2EdgeAndCircleContact.cpp", 38, "m_fixtureA->GetType() == b2Shape::e_edge");
}

{
  __assert_rtn("b2EdgeAndCircleContact", "b2EdgeAndCircleContact.cpp", 39, "m_fixtureB->GetType() == b2Shape::e_circle");
}

void b2EdgeAndPolygonContact::b2EdgeAndPolygonContact()
{
  __assert_rtn("b2EdgeAndPolygonContact", "b2EdgeAndPolygonContact.cpp", 38, "m_fixtureA->GetType() == b2Shape::e_edge");
}

{
  __assert_rtn("b2EdgeAndPolygonContact", "b2EdgeAndPolygonContact.cpp", 39, "m_fixtureB->GetType() == b2Shape::e_polygon");
}

void b2PolygonAndCircleContact::b2PolygonAndCircleContact()
{
  __assert_rtn("b2PolygonAndCircleContact", "b2PolygonAndCircleContact.cpp", 38, "m_fixtureA->GetType() == b2Shape::e_polygon");
}

{
  __assert_rtn("b2PolygonAndCircleContact", "b2PolygonAndCircleContact.cpp", 39, "m_fixtureB->GetType() == b2Shape::e_circle");
}

void b2PolygonContact::b2PolygonContact()
{
  __assert_rtn("b2PolygonContact", "b2PolygonContact.cpp", 41, "m_fixtureA->GetType() == b2Shape::e_polygon");
}

{
  __assert_rtn("b2PolygonContact", "b2PolygonContact.cpp", 42, "m_fixtureB->GetType() == b2Shape::e_polygon");
}

void b2GearJoint::b2GearJoint()
{
  __assert_rtn("b2GearJoint", "b2GearJoint.cpp", 51, "m_typeB == e_revoluteJoint || m_typeB == e_prismaticJoint");
}

{
  __assert_rtn("b2GearJoint", "b2GearJoint.cpp", 50, "m_typeA == e_revoluteJoint || m_typeA == e_prismaticJoint");
}

void b2QuadtreeAndChainContact::b2QuadtreeAndChainContact()
{
  __assert_rtn("b2QuadtreeAndChainContact", "b2QuadtreeAndOtherContact.cpp", 25, "m_fixtureA->GetType() == b2Shape::e_quadtree");
}

{
  __assert_rtn("b2QuadtreeAndChainContact", "b2QuadtreeAndOtherContact.cpp", 26, "m_fixtureB->GetType() == b2Shape::e_chain");
}

void b2QuadtreeAndCircleContact::b2QuadtreeAndCircleContact()
{
  __assert_rtn("b2QuadtreeAndCircleContact", "b2QuadtreeAndOtherContact.cpp", 47, "m_fixtureA->GetType() == b2Shape::e_circle");
}

{
  __assert_rtn("b2QuadtreeAndCircleContact", "b2QuadtreeAndOtherContact.cpp", 48, "m_fixtureB->GetType() == b2Shape::e_quadtree");
}

void b2QuadtreeAndEdgeContact::b2QuadtreeAndEdgeContact()
{
  __assert_rtn("b2QuadtreeAndEdgeContact", "b2QuadtreeAndOtherContact.cpp", 116, "m_fixtureA->GetType() == b2Shape::e_quadtree");
}

{
  __assert_rtn("b2QuadtreeAndEdgeContact", "b2QuadtreeAndOtherContact.cpp", 117, "m_fixtureB->GetType() == b2Shape::e_edge");
}

void b2QuadtreeAndPolygonContact::b2QuadtreeAndPolygonContact()
{
  __assert_rtn("b2QuadtreeAndPolygonContact", "b2QuadtreeAndOtherContact.cpp", 139, "m_fixtureA->GetType() == b2Shape::e_quadtree");
}

{
  __assert_rtn("b2QuadtreeAndPolygonContact", "b2QuadtreeAndOtherContact.cpp", 140, "m_fixtureB->GetType() == b2Shape::e_polygon");
}

void b2QuadtreeAndQuadtreeContact::b2QuadtreeAndQuadtreeContact()
{
  __assert_rtn("b2QuadtreeAndQuadtreeContact", "b2QuadtreeAndOtherContact.cpp", 163, "m_fixtureA->GetType() == b2Shape::e_quadtree");
}

{
  __assert_rtn("b2QuadtreeAndQuadtreeContact", "b2QuadtreeAndOtherContact.cpp", 164, "m_fixtureB->GetType() == b2Shape::e_quadtree");
}

void b2MouseJoint::b2MouseJoint()
{
  __assert_rtn("b2MouseJoint", "b2MouseJoint.cpp", 37, "b2IsValid(def->dampingRatio) && def->dampingRatio >= 0.0f");
}

{
  __assert_rtn("b2MouseJoint", "b2MouseJoint.cpp", 36, "b2IsValid(def->frequencyHz) && def->frequencyHz >= 0.0f");
}

{
  __assert_rtn("b2MouseJoint", "b2MouseJoint.cpp", 35, "b2IsValid(def->maxForce) && def->maxForce >= 0.0f");
}

{
  __assert_rtn("b2MouseJoint", "b2MouseJoint.cpp", 34, "def->target.IsValid()");
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

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}