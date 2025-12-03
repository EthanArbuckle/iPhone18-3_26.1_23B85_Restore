@interface VIImageRegion
+ (id)regionForEntireImageWithDomains:(id)domains;
- (BOOL)isEqual:(id)equal;
- (CGRect)regionOfInterest;
- (VIImageRegion)initWithRegionOfInterest:(CGRect)interest domainInfo:(id)info;
- (VIImageRegion)initWithRegionOfInterest:(CGRect)interest domains:(id)domains;
- (unint64_t)hash;
@end

@implementation VIImageRegion

- (VIImageRegion)initWithRegionOfInterest:(CGRect)interest domainInfo:(id)info
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  infoCopy = info;
  v23.receiver = self;
  v23.super_class = VIImageRegion;
  v10 = [(VIImageRegion *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_regionOfInterest.origin.x = x;
    v10->_regionOfInterest.origin.y = y;
    v10->_regionOfInterest.size.width = width;
    v10->_regionOfInterest.size.height = height;
    v12 = x * 1000.0;
    v13 = llroundf(v12);
    v14 = y * 1000.0;
    v15 = llroundf(v14);
    v16 = width * 1000.0;
    v17 = height * 1000.0;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", (2654435761 * v13) ^ (2654435761 * v15) ^ (2654435761 * llroundf(v17)) ^ (2654435761 * llroundf(v16))];
    regionID = v11->_regionID;
    v11->_regionID = v18;

    v20 = [infoCopy copy];
    domainInfo = v11->_domainInfo;
    v11->_domainInfo = v20;
  }

  return v11;
}

- (VIImageRegion)initWithRegionOfInterest:(CGRect)interest domains:(id)domains
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v9 = VIImageDomainInfoFromKeys(domains);
  height = [(VIImageRegion *)self initWithRegionOfInterest:v9 domainInfo:x, y, width, height];

  return height;
}

+ (id)regionForEntireImageWithDomains:(id)domains
{
  v3 = VIImageDomainInfoFromKeys(domains);
  v4 = [VIImageRegion alloc];
  unk_1ECB50870 = [(VIImageRegion *)v4 initWithRegionOfInterest:v3 domainInfo:*&VIIdentityRect, unk_1ECB50860, *&qword_1ECB50868, unk_1ECB50870];

  return unk_1ECB50870;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    domainInfo = self->_domainInfo;
    domainInfo = [(VIImageRegion *)v6 domainInfo];
    if (VIObjectIsEqual(domainInfo, domainInfo))
    {
      [(VIImageRegion *)v6 regionOfInterest];
      v15.origin.x = v9;
      v15.origin.y = v10;
      v15.size.width = v11;
      v15.size.height = v12;
      v13 = CGRectEqualToRect(self->_regionOfInterest, v15);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_domainInfo hash];
  v6.i64[0] = *&self->_regionOfInterest.origin.x;
  v7.i64[0] = *&self->_regionOfInterest.origin.y;
  v9.i64[0] = *&self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  x = -*v6.i64;
  if (*v6.i64 >= 0.0)
  {
    x = self->_regionOfInterest.origin.x;
  }

  *v4.i64 = floor(x + 0.5);
  v11 = (x - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  v14 = vbslq_s8(v13, v5, v4);
  v15 = 2654435761u * *v14.i64;
  v16 = v15 + v11;
  if (v11 <= 0.0)
  {
    v16 = 2654435761u * *v14.i64;
  }

  v17 = v15 - fabs(v11);
  if (v11 >= 0.0)
  {
    v17 = v16;
  }

  if (*v7.i64 < 0.0)
  {
    *v7.i64 = -*v7.i64;
  }

  *v14.i64 = floor(*v7.i64 + 0.5);
  v18 = (*v7.i64 - *v14.i64) * 1.84467441e19;
  *v5.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v21 = vbslq_s8(v13, v5, v14);
  v19 = 2654435761u * *v21.i64;
  v20 = v19 + v18;
  *v21.i64 = fabs(v18);
  if (v18 <= 0.0)
  {
    v20 = v19;
  }

  v22 = v19 - *v21.i64;
  if (v18 >= 0.0)
  {
    v22 = v20;
  }

  if (*v9.i64 < 0.0)
  {
    *v9.i64 = -*v9.i64;
  }

  *v7.i64 = floor(*v9.i64 + 0.5);
  v23 = (*v9.i64 - *v7.i64) * 1.84467441e19;
  *v21.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.i64[0] = vbslq_s8(v13, v21, v7).i64[0];
  v24 = 2654435761u * *v7.i64;
  v25 = v24 + v23;
  if (v23 <= 0.0)
  {
    v25 = 2654435761u * *v7.i64;
  }

  v26 = v24 - fabs(v23);
  if (v23 >= 0.0)
  {
    v26 = v25;
  }

  if (height < 0.0)
  {
    height = -height;
  }

  *v6.i64 = floor(height + 0.5);
  v27 = (height - *v6.i64) * 1.84467441e19;
  *v9.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.i64[0] = vbslq_s8(v13, v9, v6).i64[0];
  v28 = 2654435761u * *v6.i64;
  v29 = v28 + v27;
  if (v27 <= 0.0)
  {
    v29 = 2654435761u * *v6.i64;
  }

  v30 = v28 - fabs(v27);
  if (v27 >= 0.0)
  {
    v30 = v29;
  }

  return v17 ^ v3 ^ v22 ^ v26 ^ v30;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end