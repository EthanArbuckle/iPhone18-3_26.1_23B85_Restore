@interface _PXLivePhotoTrimScrubberLoupeViewImageRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGSize)imageSize;
- (void)setSourceTime:(id *)time;
@end

@implementation _PXLivePhotoTrimScrubberLoupeViewImageRequest

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSourceTime:(id *)time
{
  v3 = *&time->var0;
  self->_sourceTime.epoch = time->var3;
  *&self->_sourceTime.value = v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    asset = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self asset];
    asset2 = [v5 asset];
    if ([asset isEqual:asset2])
    {
      videoComposition = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self videoComposition];
      videoComposition2 = [v5 videoComposition];
      if ([videoComposition isEqual:videoComposition2] && (-[_PXLivePhotoTrimScrubberLoupeViewImageRequest sourceTime](self, "sourceTime"), objc_msgSend(v5, "sourceTime"), !CMTimeCompare(&time1, &v18)))
      {
        [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self imageSize];
        v13 = v12;
        v15 = v14;
        [v5 imageSize];
        v10 = v15 == v17 && v13 == v16;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isValid
{
  asset = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self asset];
  if (asset && ([(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self sourceTime], (v8 & 1) != 0))
  {
    [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self imageSize];
    v4 = v6 != *(MEMORY[0x1E695F060] + 8) || v5 != *MEMORY[0x1E695F060];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end