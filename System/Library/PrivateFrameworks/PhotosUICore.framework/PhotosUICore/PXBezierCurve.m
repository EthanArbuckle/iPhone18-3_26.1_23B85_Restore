@interface PXBezierCurve
- ($1AB5FA073B851C12C2339EC22442E995)positionOnCurveAtFraction:(double)a3;
- (_OWORD)initWithStartingPoint:(__n128)a3 controlPoint1:(double)a4 controlPoint2:(float64_t)a5 endPoint:(__n128)a6;
@end

@implementation PXBezierCurve

- ($1AB5FA073B851C12C2339EC22442E995)positionOnCurveAtFraction:(double)a3
{
  v3 = *self->_ctrlP1;
  v4 = a3;
  v5 = vmlaq_n_f32(*self->_startP, vsubq_f32(v3, *self->_startP), v4);
  v6 = vmlaq_n_f32(v3, vsubq_f32(*self->_ctrlP2, v3), v4);
  v7 = vmlaq_n_f32(v5, vsubq_f32(v6, v5), v4);
  v8 = vmlaq_n_f32(v7, vsubq_f32(vmlaq_n_f32(v6, vsubq_f32(vmlaq_n_f32(v3, vsubq_f32(*self->_endP, v3), v4), v6), v4), v7), v4);
  v9 = v8.f32[0];
  v10 = v8.f32[1];
  v11 = v8.f32[2];
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (_OWORD)initWithStartingPoint:(__n128)a3 controlPoint1:(double)a4 controlPoint2:(float64_t)a5 endPoint:(__n128)a6
{
  v32.receiver = a1;
  v32.super_class = PXBezierCurve;
  result = objc_msgSendSuper2(&v32, sel_init);
  if (result)
  {
    v23.f64[0] = a2;
    *&v23.f64[1] = a3.n128_u64[0];
    *&v24 = vcvt_f32_f64(v23);
    *v23.f64 = a4;
    *(&v24 + 1) = __PAIR64__(a3.n128_u32[3], LODWORD(v23.f64[0]));
    v25.f64[0] = a5;
    *&v25.f64[1] = a6.n128_u64[0];
    *&v23.f64[0] = vcvt_f32_f64(v25);
    *v25.f64 = a7;
    *&v23.f64[1] = __PAIR64__(a6.n128_u32[3], LODWORD(v25.f64[0]));
    result[1] = v24;
    result[2] = v23;
    *&v22 = vcvt_f32_f64(a17);
    v26 = a18;
    *(&v22 + 2) = v26;
    *&v21 = vcvt_f32_f64(a19);
    v27 = a20;
    *(&v21 + 2) = v27;
    result[3] = v22;
    result[4] = v21;
  }

  return result;
}

@end