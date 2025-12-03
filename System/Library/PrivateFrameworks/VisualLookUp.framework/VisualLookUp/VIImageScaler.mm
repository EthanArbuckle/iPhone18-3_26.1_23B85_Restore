@interface VIImageScaler
- (VIImageScaler)init;
- (__CVBuffer)createCroppedImageWithSource:(const __CVBuffer *)source regionOfInterest:(CGRect)interest;
- (__CVBuffer)createImageWithSource:(const __CVBuffer *)source format:(unsigned int)format;
- (__CVBuffer)createScaledImageWithSource:(const __CVBuffer *)source size:(CGSize)size;
- (int)cropScaleImageFromSource:(const __CVBuffer *)source destination:(const __CVBuffer *)destination normalizedBoundingBox:(CGRect)box bottomLeftBoxOrigin:(BOOL)origin;
- (int)setFillColorBGRA:(VIImageScaler *)self;
- (int)setScalingMode:(unint64_t)mode;
- (int)setVTTransferSessionProperties:(id)properties;
- (int)unsetFillColor;
- (void)dealloc;
@end

@implementation VIImageScaler

- (VIImageScaler)init
{
  v11.receiver = self;
  v11.super_class = VIImageScaler;
  v2 = [(VIImageScaler *)&v11 init];
  v3 = v2;
  if (v2)
  {
    if (VTPixelTransferSessionCreate(0, &v2->_transferSession))
    {
      transferSession = v3->_transferSession;
      if (transferSession)
      {
        CFRelease(transferSession);
      }

      v3->_transferSession = 0;
    }

    v3->useFill = 0;
    *&v3->fillColor[3] = vdup_n_s32(0xFF000000);
    v3->scaleMode = 3;
    v3->needFill = 0;
    v3->entireImage.origin.x = 0.0;
    v3->entireImage.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v3->entireImage.size = _Q0;
  }

  return v3;
}

- (int)setScalingMode:(unint64_t)mode
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (mode > 2)
  {
    if (mode == 3)
    {
      v14 = *MEMORY[0x1E6983E30];
      v15 = *MEMORY[0x1E69840F0];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v5 = 0;
      goto LABEL_16;
    }

    if (mode != 4)
    {
      goto LABEL_8;
    }

    v18 = *MEMORY[0x1E6983E30];
    v19 = *MEMORY[0x1E69840F0];
    v7 = MEMORY[0x1E695DF20];
    v5 = 1;
    v8 = &v19;
    v9 = &v18;
LABEL_14:
    v6 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    goto LABEL_16;
  }

  if (mode == 1)
  {
    v16 = *MEMORY[0x1E6983E30];
    v17 = *MEMORY[0x1E69840F8];
    v7 = MEMORY[0x1E695DF20];
    v5 = 1;
    v8 = &v17;
    v9 = &v16;
    goto LABEL_14;
  }

  if (mode == 2)
  {
    v20 = *MEMORY[0x1E6983E30];
    v21[0] = *MEMORY[0x1E69840E8];
    v5 = 1;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
LABEL_16:
    v11 = [(VIImageScaler *)self setVTTransferSessionProperties:v6];

    self->needFill = v5;
    self->scaleMode = mode;
    return v11;
  }

LABEL_8:
  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v10 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = mode;
      _os_log_impl(&dword_1D9962000, v10, OS_LOG_TYPE_ERROR, "VIImageScaler.setScalingMode unsupported scaling mode: %d", v13, 8u);
    }
  }

  return -1;
}

- (int)setVTTransferSessionProperties:(id)properties
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  propertiesCopy = properties;
  v5 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(propertiesCopy);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      transferSession = self->_transferSession;
      v11 = [propertiesCopy objectForKeyedSubscript:{v9, v14}];
      v12 = VTSessionSetProperty(transferSession, v9, v11);

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (int)setFillColorBGRA:(VIImageScaler *)self
{
  v3.i32[0] = *&self->defaultBlackOpaqueColor[3];
  v5 = vmovl_u8(v3).u64[0];
  v4.i32[0] = v2;
  v6 = vceq_s16(v5, (*&vzip1_s8(v4, v5) & 0xFF00FF00FF00FFLL));
  if ((vminv_u8(vuzp1_s8(v6, v6)) & 0x80) != 0)
  {
    self->useFill = 0;
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    self->useFill = 1;
    *&self->fillColor[3] = v2;
    v7 = MEMORY[0x1E695E4C0];
  }

  return VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E58], *v7);
}

- (int)unsetFillColor
{
  self->useFill = 0;
  *&self->fillColor[3] = *&self->defaultBlackOpaqueColor[3];
  return VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E58], *MEMORY[0x1E695E4D0]);
}

- (void)dealloc
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v4 = self->_transferSession;
    if (v4)
    {
      CFRelease(v4);
    }

    self->_transferSession = 0;
  }

  v5.receiver = self;
  v5.super_class = VIImageScaler;
  [(VIImageScaler *)&v5 dealloc];
}

- (__CVBuffer)createScaledImageWithSource:(const __CVBuffer *)source size:(CGSize)size
{
  v15 = *MEMORY[0x1E69E9840];
  width = size.width;
  height = size.height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(source);
  v9 = VICreateCVPixelBufferWithFormat(width, height, PixelFormatType);
  if (v9)
  {
    v10 = [(VIImageScaler *)self scaleImageFromSource:source destination:v9];
    if (v10)
    {
      v11 = v10;
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v12 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14[0] = 67109120;
          v14[1] = v11;
          _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "-scaleImageFromSource:destination: failed with error %d", v14, 8u);
        }
      }

      CVPixelBufferRelease(v9);
      return 0;
    }
  }

  return v9;
}

- (__CVBuffer)createCroppedImageWithSource:(const __CVBuffer *)source regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v29 = *MEMORY[0x1E69E9840];
  v10 = VIPixelBufferSize(source);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = VNImageRectForNormalizedRect(v30, v10, v11);
  v12 = v31.origin.x;
  v13 = v31.origin.y;
  v14 = v31.size.width;
  v15 = v31.size.height;
  IsPlanar = CVPixelBufferIsPlanar(source);
  v17 = _CGRectIntegralEven;
  if (!IsPlanar)
  {
    v17 = MEMORY[0x1E695F048];
  }

  v17(v12, v13, v14, v15);
  v19 = v18;
  v21 = v20;
  PixelFormatType = CVPixelBufferGetPixelFormatType(source);
  v23 = VICreateCVPixelBufferWithFormat(v19, v21, PixelFormatType);
  if (v23)
  {
    height = [(VIImageScaler *)self cropScaleImageFromSource:source destination:v23 normalizedBoundingBox:1 bottomLeftBoxOrigin:x, y, width, height];
    if (height)
    {
      v25 = height;
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v26 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28[0] = 67109120;
          v28[1] = v25;
          _os_log_impl(&dword_1D9962000, v26, OS_LOG_TYPE_ERROR, "-cropScaleImageFromSource:destination:normalizedBoundingBox:bottomLeftBoxOrigin: failed with error %d", v28, 8u);
        }
      }

      CVPixelBufferRelease(v23);
      return 0;
    }
  }

  return v23;
}

- (__CVBuffer)createImageWithSource:(const __CVBuffer *)source format:(unsigned int)format
{
  v15 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(source);
  Height = CVPixelBufferGetHeight(source);
  v9 = VICreateCVPixelBufferWithFormat(Width, Height, format);
  v10 = [(VIImageScaler *)self scaleImageFromSource:source destination:v9];
  if (v10)
  {
    v11 = v10;
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v12 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 67109120;
        v14[1] = v11;
        _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "-scaleImageFromSource:destination: failed with error %d", v14, 8u);
      }
    }

    CVPixelBufferRelease(v9);
    return 0;
  }

  return v9;
}

- (int)cropScaleImageFromSource:(const __CVBuffer *)source destination:(const __CVBuffer *)destination normalizedBoundingBox:(CGRect)box bottomLeftBoxOrigin:(BOOL)origin
{
  originCopy = origin;
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v65 = *MEMORY[0x1E69E9840];
  v14 = VIPixelBufferSize(source);
  v16 = v15;
  v17 = VIPixelBufferSize(destination);
  v19 = v18;
  if (CVPixelBufferIsPlanar(source) && ((v14 | v16) & 1) != 0 && +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v20 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_1D9962000, v20, OS_LOG_TYPE_ERROR, "VIScaler: planar odd source image is not supported", &v53, 2u);
    }
  }

  if (CVPixelBufferIsPlanar(destination) && ((v17 | v19) & 1) != 0 && +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v21 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_1D9962000, v21, OS_LOG_TYPE_ERROR, "VIScaler: planar odd destination image is not supported", &v53, 2u);
    }
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
  {
    v22 = +[_TtC12VisualLookUp8VILogger verboseLog];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(source);
      v24 = CVPixelBufferGetPixelFormatType(destination);
      v53 = 134219264;
      v54 = v14;
      v55 = 2048;
      v56 = v16;
      v57 = 1024;
      v58 = PixelFormatType;
      v59 = 2048;
      v60 = v17;
      v61 = 2048;
      v62 = v19;
      v63 = 1024;
      v64 = v24;
      _os_log_impl(&dword_1D9962000, v22, OS_LOG_TYPE_DEBUG, "VIScaler (w, h, pixtype): from (%zu, %zu, %d) to (%zu ,%zu, %d)", &v53, 0x36u);
    }
  }

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  if (CGRectEqualToRect(v66, self->entireImage))
  {
    if (self->scaleMode != 4)
    {
      DictionaryRepresentation = 0;
LABEL_29:
      v33 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    if (originCopy)
    {
      x = VIFlipOriginNormalizedRect(x, y, width, height);
      y = v26;
      width = v27;
      height = v28;
    }

    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v68 = VNImageRectForNormalizedRect(v67, v14, v16);
    v69.origin.x = VIRectIntegral(source, 1, v68.origin.x, v68.origin.y, v68.size.width, v68.size.height);
    v29 = v69.size.width;
    v30 = v69.size.height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v69);
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
    {
      v31 = +[_TtC12VisualLookUp8VILogger verboseLog];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v53 = 138543362;
        v54 = DictionaryRepresentation;
        _os_log_impl(&dword_1D9962000, v31, OS_LOG_TYPE_DEBUG, "VIScaler: sourceRectDict %{public}@", &v53, 0xCu);
      }
    }

    if (self->scaleMode != 4)
    {
      goto LABEL_29;
    }

    if (DictionaryRepresentation)
    {
      v32 = v29 / v30;
      goto LABEL_31;
    }
  }

  DictionaryRepresentation = 0;
  v32 = v14 / v16;
LABEL_31:
  v34 = v17;
  v35 = v19;
  if ((v17 / v19) >= v32)
  {
    v34 = v32 * v35;
  }

  else
  {
    v35 = v34 / v32;
  }

  v70.origin.x = VIRectIntegral(destination, 1, 0.0, 0.0, v34, v35);
  v33 = CGRectCreateDictionaryRepresentation(v70);
  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
  {
    v36 = +[_TtC12VisualLookUp8VILogger verboseLog];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v53 = 138543362;
      v54 = v33;
      _os_log_impl(&dword_1D9962000, v36, OS_LOG_TYPE_DEBUG, "VIScaler: destRectDict %{public}@", &v53, 0xCu);
    }
  }

LABEL_38:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->useFill && selfCopy->needFill)
  {
    v38 = _VTModifyPixelBufferWithColor(destination, *&selfCopy->fillColor[3]);
    if (v38 && +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v39 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v53 = 67109120;
        LODWORD(v54) = 0;
        _os_log_impl(&dword_1D9962000, v39, OS_LOG_TYPE_ERROR, "Fill color failed (%d)", &v53, 8u);
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = *MEMORY[0x1E6983E40];
  v41 = VTSessionSetProperty(selfCopy->_transferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation) | v38;
  if (v38 != v41)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v42 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&dword_1D9962000, v42, OS_LOG_TYPE_ERROR, "Failed to set source crop rect property.", &v53, 2u);
      }
    }

    v38 = v41;
  }

  v43 = *MEMORY[0x1E6983DD0];
  v44 = VTSessionSetProperty(selfCopy->_transferSession, *MEMORY[0x1E6983DD0], v33) | v41;
  if (v38 != v44)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v45 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&dword_1D9962000, v45, OS_LOG_TYPE_ERROR, "Failed to set destination rect property.", &v53, 2u);
      }
    }

    v38 = v44;
  }

  CVPixelBufferRetain(source);
  CVPixelBufferRetain(destination);
  v46 = VTPixelTransferSessionTransferImage(selfCopy->_transferSession, source, destination);
  CVPixelBufferRelease(source);
  CVPixelBufferRelease(destination);
  if (v38 != (v46 | v44))
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v47 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v53 = 67109120;
        LODWORD(v54) = v38;
        _os_log_impl(&dword_1D9962000, v47, OS_LOG_TYPE_ERROR, "Transfer failed (%d)", &v53, 8u);
      }
    }

    v38 = v46 | v44;
  }

  v48 = VTSessionSetProperty(selfCopy->_transferSession, v40, 0) | v46 | v44;
  if (v38 != v48)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v49 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&dword_1D9962000, v49, OS_LOG_TYPE_ERROR, "Failed to unset source crop property.", &v53, 2u);
      }
    }

    v38 = v48;
  }

  v50 = VTSessionSetProperty(selfCopy->_transferSession, v43, 0) | v48;
  if (v38 != v50)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v51 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&dword_1D9962000, v51, OS_LOG_TYPE_ERROR, "Failed to unset destination rect property.", &v53, 2u);
      }
    }

    v38 = v50;
  }

  objc_sync_exit(selfCopy);

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v38;
}

@end