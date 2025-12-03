@interface TSDMutableFrame
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAssetScale:(double)scale;
@end

@implementation TSDMutableFrame

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDFrame alloc];
  v7 = objc_msgSend_frameSpec(self, v5, v6);
  objc_msgSend_assetScale(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_archivableFrameName(self, v12, v13);
  v16 = objc_msgSend_initWithFrameSpec_assetScale_archivableFrameName_(v4, v15, v7, v14, v11);

  return v16;
}

- (void)setAssetScale:(double)scale
{
  v5 = objc_msgSend_frameSpec(self, a2, v3);
  objc_msgSend_i_minimumAssetScale(v5, v6, v7);
  TSUClamp();
  v9 = v8;

  if (self->super._assetScale != v9)
  {
    self->super._assetScale = v9;
    spec = self->super._spec;

    sub_2766B5EB0(spec, &self->super._leftWidth, &self->super._rightWidth, &self->super._topHeight, &self->super._bottomHeight, &self->super._adornmentSize.width, v9);
  }
}

@end