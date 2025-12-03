@interface SIRawImageInfo
- (SIRawImageInfo)init;
- (SIRawImageInfo)initWithInfo:(id)info;
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

- (SIRawImageInfo)initWithInfo:(id)info
{
  infoCopy = info;
  v5 = [(SIRawImageInfo *)self init];
  v6 = v5;
  if (v5)
  {
    width = [(SIRawImageInfo *)v5 width];
    width2 = [infoCopy width];
    v9 = *width2;
    *(width + 16) = *(width2 + 16);
    *width = v9;
    height = [(SIRawImageInfo *)v6 height];
    height2 = [infoCopy height];
    v12 = *height2;
    *(height + 16) = *(height2 + 16);
    *height = v12;
    bytesPerRow = [(SIRawImageInfo *)v6 bytesPerRow];
    bytesPerRow2 = [infoCopy bytesPerRow];
    v15 = *bytesPerRow2;
    *(bytesPerRow + 16) = *(bytesPerRow2 + 16);
    *bytesPerRow = v15;
    bytesPerPixel = [(SIRawImageInfo *)v6 bytesPerPixel];
    bytesPerPixel2 = [infoCopy bytesPerPixel];
    v18 = *bytesPerPixel2;
    *(bytesPerPixel + 16) = *(bytesPerPixel2 + 16);
    *bytesPerPixel = v18;
    v19 = [(SIRawImageInfo *)v6 size];
    v20 = [infoCopy size];
    v21 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v21;
    -[SIRawImageInfo setPlanes:](v6, "setPlanes:", [infoCopy planes]);
    -[SIRawImageInfo setChannels:](v6, "setChannels:", [infoCopy channels]);
    -[SIRawImageInfo setPixelFormat:](v6, "setPixelFormat:", [infoCopy pixelFormat]);
    v22 = v6;
  }

  return v6;
}

@end