@interface VKTransitLineMarker
+ (id)markerWithFeature:(void *)a3 transitLink:(const void *)a4;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)shieldColor;
- (VKTransitLineMarker)initWithFeature:(void *)a3 transitLink:(const void *)a4;
- (VKTransitLineMarker)initWithIdentifier:(id)a3;
@end

@implementation VKTransitLineMarker

- ($C28CD4A45FD07A4F97CC9D5F91F25271)shieldColor
{
  r = self->_shieldColor.r;
  g = self->_shieldColor.g;
  b = self->_shieldColor.b;
  a = self->_shieldColor.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- (VKTransitLineMarker)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKTransitLineMarker;
  v6 = [(VKTransitLineMarker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (VKTransitLineMarker)initWithFeature:(void *)a3 transitLink:(const void *)a4
{
  v36.receiver = self;
  v36.super_class = VKTransitLineMarker;
  v6 = [(VKTransitLineMarker *)&v36 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69A21C0]);
    v8 = *(a3 + 5);
    v9 = -180.0;
    if (a4)
    {
      Point = geo::codec::transitLinkFirstPoint(a4);
      v11 = -180.0;
      if (Point)
      {
        v12 = *(a4 + 1);
        if (v12)
        {
          v12 = std::__shared_weak_count::lock(v12);
          v13 = v12;
          if (v12)
          {
            v12 = *a4;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = geo::codec::VectorTile::key(v12);
        v15 = *(v14 + 10);
        v16 = *(v14 + 8);
        v38 = *v14;
        v39 = v16;
        v40 = v15;
        v37[0] = GEOTileKeyMake();
        v37[1] = v17;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        GEOMapRectForGEOTileKey();
        GEOCoordinate2DForMapPoint();
        v9 = v18;
      }
    }

    else
    {
      v11 = -180.0;
    }

    v19 = [v7 initWithMUID:v8 resultProviderID:0 coordinate:{v9, v11}];
    v20 = *(v6 + 1);
    *(v6 + 1) = v19;

    *(v6 + 9) = a4;
    if (geo::codec::featureGetNativeShieldCount(a3))
    {
      v37[0] = 0;
      v38 = 0;
      geo::codec::featureGetNativeShield(a3, 0, v37, v6 + 4, &v38);
      if (v37[0])
      {
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = [v21 initWithUTF8String:v37[0]];
        v23 = *(v6 + 2);
        *(v6 + 2) = v22;
      }

      if (v38)
      {
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = [v24 initWithUTF8String:v38];
        v26 = *(v6 + 3);
        *(v6 + 3) = v25;
      }
    }

    if (geo::codec::featureGetNativeLabelCount(a3))
    {
      v37[0] = 0;
      v38 = 0;
      geo::codec::featureGetNativeLabel(a3, 0, v37, &v38);
      if (v37[0])
      {
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v29 = [v28 initWithUTF8String:v37[0]];
        v30 = *(v6 + 7);
        *(v6 + 7) = v29;
      }

      if (v38)
      {
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = [v31 initWithUTF8String:v38];
        v33 = *(v6 + 8);
        *(v6 + 8) = v32;
      }
    }

    v27.i32[0] = *(a3 + 19);
    *(v6 + 40) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v27))), vdupq_n_s32(0x3B808081u));
    v34 = v6;
  }

  return v6;
}

+ (id)markerWithFeature:(void *)a3 transitLink:(const void *)a4
{
  v4 = [[VKTransitLineMarker alloc] initWithFeature:a3 transitLink:a4];

  return v4;
}

@end