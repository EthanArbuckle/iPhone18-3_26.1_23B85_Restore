@interface _PXLivePhotoTrimScrubberLoupeViewImageRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CGSize)imageSize;
- (void)setSourceTime:(id *)a3;
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

- (void)setSourceTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_sourceTime.epoch = a3->var3;
  *&self->_sourceTime.value = v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self asset];
    v7 = [v5 asset];
    if ([v6 isEqual:v7])
    {
      v8 = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self videoComposition];
      v9 = [v5 videoComposition];
      if ([v8 isEqual:v9] && (-[_PXLivePhotoTrimScrubberLoupeViewImageRequest sourceTime](self, "sourceTime"), objc_msgSend(v5, "sourceTime"), !CMTimeCompare(&time1, &v18)))
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
  v3 = [(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self asset];
  if (v3 && ([(_PXLivePhotoTrimScrubberLoupeViewImageRequest *)self sourceTime], (v8 & 1) != 0))
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