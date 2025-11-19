@interface SIRawImageInfo
- (SIRawImageInfo)init;
- (SIRawImageInfo)initWithInfo:(id)a3;
@end

@implementation SIRawImageInfo

- (SIRawImageInfo)init
{
  v6.receiver = self;
  v6.super_class = SIRawImageInfo;
  v2 = [(SIRawImageInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 15) = 0;
    *(v2 + 104) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    [v2 setPlanes:0];
    [(SIRawImageInfo *)v3 setChannels:0];
    [(SIRawImageInfo *)v3 setPixelFormat:0];
    v4 = v3;
  }

  return v3;
}

- (SIRawImageInfo)initWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(SIRawImageInfo *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SIRawImageInfo *)v5 width];
    v8 = [v4 width];
    v9 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v9;
    v10 = [(SIRawImageInfo *)v6 height];
    v11 = [v4 height];
    v12 = *v11;
    *(v10 + 16) = *(v11 + 16);
    *v10 = v12;
    v13 = [(SIRawImageInfo *)v6 bytesPerRow];
    v14 = [v4 bytesPerRow];
    v15 = *v14;
    *(v13 + 16) = *(v14 + 16);
    *v13 = v15;
    v16 = [(SIRawImageInfo *)v6 bytesPerPixel];
    v17 = [v4 bytesPerPixel];
    v18 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *v16 = v18;
    v19 = [(SIRawImageInfo *)v6 size];
    v20 = [v4 size];
    v21 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v21;
    -[SIRawImageInfo setPlanes:](v6, "setPlanes:", [v4 planes]);
    -[SIRawImageInfo setChannels:](v6, "setChannels:", [v4 channels]);
    -[SIRawImageInfo setPixelFormat:](v6, "setPixelFormat:", [v4 pixelFormat]);
    v22 = v6;
  }

  return v6;
}

@end