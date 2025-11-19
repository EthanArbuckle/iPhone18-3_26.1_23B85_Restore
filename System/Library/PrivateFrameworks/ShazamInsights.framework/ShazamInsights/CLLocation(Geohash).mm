@interface CLLocation(Geohash)
- (double)sh_geoHashToCoordinates:()Geohash;
- (double)sh_roundCoordinateValuesToGeohashOfLength:()Geohash;
- (id)sh_geohashOfLength:()Geohash;
@end

@implementation CLLocation(Geohash)

- (double)sh_roundCoordinateValuesToGeohashOfLength:()Geohash
{
  v2 = [a1 sh_geohashOfLength:?];
  [a1 sh_geoHashToCoordinates:v2];
  v4 = v3;

  return v4;
}

- (id)sh_geohashOfLength:()Geohash
{
  v3 = a3;
  v5 = 0;
  v6 = 5 * a3;
  v7 = 1 << (5 * a3 - 1);
  v8 = 180.0;
  v9 = -180.0;
  v10 = 90.0;
  v11 = -90.0;
  do
  {
    v12 = v9 + (v8 - v9) * 0.5;
    [a1 coordinate];
    if (v13 >= v12)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v5 |= v14;
    if (v7 == 1)
    {
      break;
    }

    if (v13 < v12)
    {
      v8 = v9 + (v8 - v9) * 0.5;
    }

    else
    {
      v9 = v9 + (v8 - v9) * 0.5;
    }

    [a1 coordinate];
    if (v15 >= v11 + (v10 - v11) * 0.5)
    {
      v11 = v11 + (v10 - v11) * 0.5;
      v16 = v7 >> 1;
    }

    else
    {
      v10 = v11 + (v10 - v11) * 0.5;
      v16 = 0;
    }

    v5 |= v16;
    v17 = v7 > 3;
    v7 >>= 2;
  }

  while (v17);
  v18 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
  bzero(v18, v3 + 1);
  if (v3)
  {
    v19 = v6 - 5;
    v20 = v18;
    do
    {
      *v20++ = a0123456789bcde[(v5 >> v19) & 0x1F];
      v19 -= 5;
      --v3;
    }

    while (v3);
  }

  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v18 encoding:4];
  if (v18)
  {
    free(v18);
  }

  return v21;
}

- (double)sh_geoHashToCoordinates:()Geohash
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  v5 = 5 * strlen(v4);
  *&v6 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  v7 = strlen(v4);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = v5 - 5;
    while (1)
    {
      v11 = memchr("0123456789bcdefghjkmnpqrstuvwxyz", *v4, 0x21uLL);
      if (!v11)
      {
        break;
      }

      v9 |= (v11 - "0123456789bcdefghjkmnpqrstuvwxyz") << v10;
      ++v4;
      v10 -= 5;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    v18 = shcore_log_object();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *v4;
      v22 = 138412546;
      v23 = v3;
      v24 = 1024;
      v25 = v19;
      _os_log_impl(&dword_265F78000, v18, OS_LOG_TYPE_ERROR, "Invalid character in geohash %@: %c", &v22, 0x12u);
    }
  }

  else
  {
    v9 = 0;
LABEL_7:
    v12 = 1 << (v5 - 1);
    v13 = 180.0;
    v14 = -180.0;
    v15 = 90.0;
    v16 = -90.0;
    do
    {
      if ((v12 & v9) != 0)
      {
        v14 = v14 + (v13 - v14) * 0.5;
      }

      else
      {
        v13 = v14 + (v13 - v14) * 0.5;
      }

      if (v12 == 1)
      {
        break;
      }

      if ((v9 & (v12 >> 1)) != 0)
      {
        v16 = v16 + (v15 - v16) * 0.5;
      }

      else
      {
        v15 = v16 + (v15 - v16) * 0.5;
      }

      v17 = v12 > 3;
      v12 >>= 2;
    }

    while (v17);
    *&v6 = *&CLLocationCoordinate2DMake(v16 + (v16 - v15) * 0.5, v14 + (v14 - v13) * 0.5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

@end