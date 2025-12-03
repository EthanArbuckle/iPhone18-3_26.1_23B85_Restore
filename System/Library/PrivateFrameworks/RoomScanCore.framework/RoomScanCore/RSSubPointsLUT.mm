@interface RSSubPointsLUT
- (BOOL)isEqual:(id)equal;
- (RSSubPointsLUT)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSSubPointsLUT

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      if (self->_begin != v6[1].i64[0])
      {
        goto LABEL_17;
      }

      if (self->_end != v6[1].i64[1])
      {
        goto LABEL_17;
      }

      if (self->_size != v6[2].i64[0])
      {
        goto LABEL_17;
      }

      if (self->_rawSize != v6[2].i64[1])
      {
        goto LABEL_17;
      }

      if (self->_camH != v6->f32[3])
      {
        goto LABEL_17;
      }

      if (self->_camW != v6->f32[2])
      {
        goto LABEL_17;
      }

      v8 = v6[8];
      v7 = v6[9];
      v9 = v6[7];
      v23 = v6[6];
      v24 = v9;
      v25 = v8;
      v26 = v7;
      if (vmaxvq_f32(vabdq_f32(*&self[1].super.isa, v23)) > 0.000001)
      {
        goto LABEL_17;
      }

      v10 = 0;
      while (v10 != 3)
      {
        v11 = v10 + 1;
        v12 = vmaxvq_f32(vabdq_f32(*(&self[1]._begin + v10), *(&v23 + v10 + 1)));
        ++v10;
        if (v12 > 0.000001)
        {
          if ((v11 - 1) <= 2)
          {
            goto LABEL_17;
          }

          break;
        }
      }

      v14 = v6[3];
      v13 = v6[4];
      v23.i32[2] = v6[3].i64[1];
      v15 = v6[5];
      v24.i32[2] = v13.i32[2];
      v23.i64[0] = v14.i64[0];
      v24.i64[0] = v13.i64[0];
      v25.i32[2] = v15.i32[2];
      v25.i64[0] = v15.i64[0];
      v16 = vabdq_f32(*self->_anon_30, v23);
      if (fmaxf(fmaxf(v16.f32[0], v16.f32[2]), v16.f32[1]) <= 0.000001)
      {
        v18 = &self->_anon_30[16];
        v19 = 1;
        while (v19 != 3)
        {
          v20 = v19;
          v21 = *v18;
          v18 += 16;
          v22 = vabdq_f32(v21, *(&v23 + v19++));
          if (fmaxf(fmaxf(v22.f32[0], v22.f32[2]), v22.f32[1]) > 0.000001)
          {
            if ((v20 - 1) <= 1)
            {
              goto LABEL_17;
            }

            break;
          }
        }

        LOBYTE(self) = 1;
      }

      else
      {
LABEL_17:
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_opt_new();
  *(result + 2) = self->_begin;
  *(result + 3) = self->_end;
  v5 = *&self[1].super.isa;
  v6 = *&self[1]._begin;
  v7 = *self[1]._anon_30;
  *(result + 8) = *&self[1]._size;
  *(result + 9) = v7;
  *(result + 6) = v5;
  *(result + 7) = v6;
  *(result + 4) = self->_size;
  *(result + 5) = self->_rawSize;
  v8 = *self->_anon_30;
  v9 = *&self->_anon_30[32];
  *(result + 4) = *&self->_anon_30[16];
  *(result + 5) = v9;
  *(result + 3) = v8;
  *(result + 3) = LODWORD(self->_camH);
  *(result + 2) = LODWORD(self->_camW);
  return result;
}

- (RSSubPointsLUT)init
{
  v3.receiver = self;
  v3.super_class = RSSubPointsLUT;
  result = [(RSSubPointsLUT *)&v3 init];
  if (result)
  {
    *&result->_begin = 0u;
    *&result->_size = 0u;
    *&result->_camW = 0x4390000043C00000;
    *result->_anon_30 = *"333C";
    *&result->_anon_30[16] = unk_2623A8620;
    *&result->_anon_30[32] = xmmword_2623A8630;
  }

  return result;
}

@end