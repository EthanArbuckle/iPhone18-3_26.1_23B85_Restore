@interface VKVenueBuildingFeatureMarker
- ($F24F406B2B787EFB06265DBA3D28CBD5)nearestFramingPositionToLocation:(id)a3;
- (NSArray)floorOrdinals;
- (NSDictionary)floorNames;
- (NSDictionary)shortFloorNames;
- (unint64_t)buildingId;
@end

@implementation VKVenueBuildingFeatureMarker

- ($F24F406B2B787EFB06265DBA3D28CBD5)nearestFramingPositionToLocation:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v4 = *[(VKVenueBuildingFeatureMarker *)self venueBuildingFeatureMarker];
  v5 = tan(var0 * 0.00872664626 + 0.785398163);
  v6 = log(v5);
  v7 = *(v4 + 112);
  v8 = *(v4 + 120);
  v9 = (v8 - v7) >> 4;
  if (v9)
  {
    if (v9 == 1)
    {
      _Q1 = *v7;
LABEL_24:
      _D8 = 0x401921FB54442D18;
      v38 = 6.28318531 * _Q1.f64[0];
      __asm { FMLA            D0, D8, V1.D[1]; __x }

      v40 = exp(_D0);
      v41 = atan(v40);
      v42 = fmod(v38, 6.28318531);
      v11 = fmod(v42 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
      var0 = v41 * 114.591559 + -90.0;
      goto LABEL_25;
    }

    v12.f64[0] = var1;
    v12.f64[1] = v6;
    __asm { FMOV            V1.2D, #0.5 }

    _Q1 = vmlaq_f64(_Q1, xmmword_1B33B0700, v12);
    if (v8 == v7)
    {
      goto LABEL_24;
    }

    v18 = 0;
    v19 = *v7;
    v20 = 1;
    v21 = 1.79769313e308;
    while (2)
    {
      v22 = v18;
      while (1)
      {
        v18 = v22 + 1;
        v23 = v7[v22];
        v24 = v9 - 1 == v22 ? 0 : v22 + 1;
        v25 = v7[v24];
        v26 = vsubq_f64(v25, v23);
        v27 = vextq_s8(v26, v26, 8uLL);
        v28 = vsubq_f64(_Q1, v23);
        v29 = vmulq_f64(v28, v27);
        if (vmovn_s64(vcgtq_f64(v29, vdupq_laneq_s64(v29, 1))).u8[0])
        {
          break;
        }

        v22 = v18;
        if (v9 == v18)
        {
          if (v20)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      v30 = vextq_s8(v28, v26, 8uLL);
      v28.f64[1] = v26.f64[1];
      v31 = vmlaq_f64(vmulq_f64(v27, v30), v28, v26);
      v32 = vdivq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
      if (v32 >= 0.0)
      {
        if (v32 > 1.0)
        {
LABEL_18:
          v20 = 0;
          v33 = vsubq_f64(_Q1, v25);
          v34 = vaddvq_f64(vmulq_f64(v33, v33));
          v35 = vdup_n_s32(v34 < v21);
          v36.i64[0] = v35.u32[0];
          v36.i64[1] = v35.u32[1];
          v19 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), v25, v19);
          if (v34 < v21)
          {
            v21 = v34;
          }

          if (v18 != v9)
          {
            continue;
          }

LABEL_23:
          _Q1 = v19;
          goto LABEL_24;
        }

        v23 = vmlaq_n_f64(v23, v26, v32);
      }

      break;
    }

    v25 = v23;
    goto LABEL_18;
  }

  v11 = var1;
LABEL_25:
  v43 = var0;
  result.var1 = v11;
  result.var0 = v43;
  return result;
}

- (NSDictionary)floorNames
{
  v3 = *[(VKVenueBuildingFeatureMarker *)self venueBuildingFeatureMarker];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0xD37A6F4DE9BD37A7 * ((*(v3 + 40) - *(v3 + 32)) >> 3)];
  v5 = *(v3 + 32);
  for (i = *(v3 + 40); v5 != i; v5 += 184)
  {
    if (*(v5 + 72) == 1)
    {
      if (*(&self->super._markerType + 4) == 1 && (*(v5 + 136) & 1) != 0)
      {
        v7 = (v5 + 112);
      }

      else
      {
        v7 = (v5 + 48);
      }

      if (*(v7 + 23) >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *v7;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v10 = [MEMORY[0x1E696AD98] numberWithShort:*(v5 + 8)];
      [v4 setObject:v9 forKeyedSubscript:v10];
    }
  }

  return v4;
}

- (NSDictionary)shortFloorNames
{
  v3 = *[(VKVenueBuildingFeatureMarker *)self venueBuildingFeatureMarker];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0xD37A6F4DE9BD37A7 * ((*(v3 + 40) - *(v3 + 32)) >> 3)];
  v5 = *(v3 + 32);
  for (i = *(v3 + 40); v5 != i; v5 += 184)
  {
    if (*(v5 + 40) == 1)
    {
      if (*(&self->super._markerType + 4) == 1 && (*(v5 + 104) & 1) != 0)
      {
        v7 = (v5 + 80);
      }

      else
      {
        v7 = (v5 + 16);
      }

      if (*(v7 + 23) >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *v7;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v10 = [MEMORY[0x1E696AD98] numberWithShort:*(v5 + 8)];
      [v4 setObject:v9 forKeyedSubscript:v10];
    }
  }

  return v4;
}

- (NSArray)floorOrdinals
{
  v2 = *[(VKVenueBuildingFeatureMarker *)self venueBuildingFeatureMarker];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xD37A6F4DE9BD37A7 * ((*(v2 + 40) - *(v2 + 32)) >> 3)];
  v4 = *(v2 + 32);
  for (i = *(v2 + 40); v4 != i; v4 += 184)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithShort:*(v4 + 8)];
    [v3 addObject:v6];
  }

  return v3;
}

- (unint64_t)buildingId
{
  v2 = *(**[(VKVenueBuildingFeatureMarker *)self venueBuildingFeatureMarker]+ 48);

  return v2();
}

@end