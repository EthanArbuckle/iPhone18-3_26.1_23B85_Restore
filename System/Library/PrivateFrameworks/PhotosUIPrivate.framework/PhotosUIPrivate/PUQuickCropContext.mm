@interface PUQuickCropContext
- (CGImage)_croppedCGImageForTransition:(CGImage *)a3;
- (CGRect)_normalizedCropRectForTransition;
- (CGRect)cropRectRelativeToRenderedImage;
- (CGSize)aspectRatio;
- (CGSize)renderedImageSize;
- (CGSize)selectedAspectRatio;
- (PUQuickCropContext)initWithTileTransform:(id)a3 renderedImageSize:(CGSize)a4 boundingSize:(CGSize)a5 selectedAspectRatio:(CGSize)a6;
- (id)_croppedSnapshotViewForTransition:(id)a3;
- (id)applyCropToAssetTransitionInfo:(id)a3;
- (void)applyCropRectToCompositionController:(id)a3;
@end

@implementation PUQuickCropContext

- (CGSize)aspectRatio
{
  width = self->_aspectRatio.width;
  height = self->_aspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)renderedImageSize
{
  width = self->_renderedImageSize.width;
  height = self->_renderedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropRectRelativeToRenderedImage
{
  x = self->_cropRectRelativeToRenderedImage.origin.x;
  y = self->_cropRectRelativeToRenderedImage.origin.y;
  width = self->_cropRectRelativeToRenderedImage.size.width;
  height = self->_cropRectRelativeToRenderedImage.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)selectedAspectRatio
{
  width = self->_selectedAspectRatio.width;
  height = self->_selectedAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_croppedSnapshotViewForTransition:(id)a3
{
  v4 = a3;
  [(PUQuickCropContext *)self _normalizedCropRectForTransition];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 bounds];
  v17 = [v4 resizableSnapshotViewFromRect:1 afterScreenUpdates:v13 + v6 * v14 withCapInsets:{v15 + v8 * v16, v10 * v14, v12 * v16, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v17;
}

- (CGImage)_croppedCGImageForTransition:(CGImage *)a3
{
  [(PUQuickCropContext *)self _normalizedCropRectForTransition];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v14 = v5 * Width + 0.0;
  v15 = v7 * Height + 0.0;
  v16 = v11 * Height;
  ColorSpace = CGImageGetColorSpace(a3);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
  {
    v18 = [MEMORY[0x1E695F658] imageWithCGImage:a3];
    [v18 extent];
    v21 = v19 + v20 - (v15 + v16);
    v22 = [MEMORY[0x1E695F620] context];
    v23 = [v22 createCGImage:v18 fromRect:*MEMORY[0x1E695F8F8] format:ColorSpace colorSpace:1 deferred:{v14, v21, v9 * Width, v16}];

    return v23;
  }

  else
  {
    v25 = v14;
    v26 = v15;
    v28 = v16;

    v27 = v9 * Width;
    return CGImageCreateWithImageInRect(a3, *&v25);
  }
}

- (CGRect)_normalizedCropRectForTransition
{
  [(PUQuickCropContext *)self cropRectRelativeToRenderedImage];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUQuickCropContext *)self renderedImageSize];
  v12 = v11;
  [(PUQuickCropContext *)self renderedImageSize];
  v13 = v4 / v12;
  v15 = v6 / v14;
  v16 = v8 / v12;
  v17 = v10 / v14;
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v16;
  v25.size.height = v17;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v16;
  v26.size.height = v17;
  v19 = 1.0 - CGRectGetMaxY(v26);
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v17;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  Height = CGRectGetHeight(v28);
  v22 = MinX;
  v23 = v19;
  v24 = Width;
  result.size.height = Height;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)applyCropRectToCompositionController:(id)a3
{
  v4 = a3;
  [(PUQuickCropContext *)self cropRectRelativeToRenderedImage];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (!CGRectIsNull(v31))
  {
    v9 = [v4 orientationAdjustmentController];
    [v9 orientation];

    NUOrientationInverse();
    if (NUOrientationIsValid())
    {
      [(PUQuickCropContext *)self renderedImageSize];
      NUPixelSizeFromCGSize();
      NUOrientationTransformRect();
      x = v10;
      y = v11;
      width = v12;
      height = v13;
    }

    v14 = [v4 cropAdjustmentController];
    [v14 cropRect];
    v16 = v15;
    v18 = v17;

    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectOffset(v32, v16, v18);
    v19 = v33.origin.x;
    v20 = v33.origin.y;
    v21 = v33.size.width;
    v22 = v33.size.height;
    [(PUQuickCropContext *)self aspectRatio];
    v24 = v23;
    v26 = v25;
    v27 = [(PUQuickCropContext *)self lockAspectRatio];
    v28 = *MEMORY[0x1E69BDFC0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59__PUQuickCropContext_applyCropRectToCompositionController___block_invoke;
    v29[3] = &__block_descriptor_81_e36_v16__0__PICropAdjustmentController_8l;
    *&v29[4] = v19;
    *&v29[5] = v20;
    *&v29[6] = v21;
    *&v29[7] = v22;
    v30 = v27;
    v29[8] = v24;
    v29[9] = v26;
    [v4 modifyAdjustmentWithKey:v28 modificationBlock:v29];
  }
}

void __59__PUQuickCropContext_applyCropRectToCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setCropRect:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
  if (*(a1 + 80) == 1)
  {
    [v4 setConstraintWidth:*(a1 + 64)];
    v3 = *(a1 + 72);
  }

  else
  {
    [v4 setConstraintWidth:0];
    v3 = 0;
  }

  [v4 setConstraintHeight:v3];
  [v4 setIsAuto:0];
  [v4 setEnabled:1];
}

- (id)applyCropToAssetTransitionInfo:(id)a3
{
  v4 = a3;
  [(PUQuickCropContext *)self cropRectRelativeToRenderedImage];
  if (CGRectIsNull(v23))
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 image];
    v7 = v6;
    if (v6)
    {
      v8 = -[PUQuickCropContext _croppedCGImageForTransition:](self, "_croppedCGImageForTransition:", [v6 CGImage]);
      v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v8];
      CGImageRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 imageLayerModulator];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__PUQuickCropContext_applyCropToAssetTransitionInfo___block_invoke;
    v21[3] = &unk_1E7B7F3B8;
    v21[4] = self;
    [v10 performChanges:v21];
    v11 = [v4 snapshotView];
    v12 = v11;
    if (v11)
    {
      v11 = [(PUQuickCropContext *)self _croppedSnapshotViewForTransition:v11];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PUQuickCropContext_applyCropToAssetTransitionInfo___block_invoke_2;
    v17[3] = &unk_1E7B7F3E0;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v13 = v11;
    v14 = v10;
    v15 = v9;
    v5 = [v4 assetTransitionInfoWithModifications:v17];
  }

  return v5;
}

void __53__PUQuickCropContext_applyCropToAssetTransitionInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _croppedCGImageForTransition:{objc_msgSend(v3, "gainMapImage")}];
  [v3 setGainMapImage:v4];

  CGImageRelease(v4);
}

void __53__PUQuickCropContext_applyCropToAssetTransitionInfo___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setImage:v3];
  [v4 setImageLayerModulator:a1[5]];
  [v4 setSnapshotView:a1[6]];
}

- (PUQuickCropContext)initWithTileTransform:(id)a3 renderedImageSize:(CGSize)a4 boundingSize:(CGSize)a5 selectedAspectRatio:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5.height;
  v9 = a5.width;
  v10 = a4.height;
  v11 = a4.width;
  v77 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v74.receiver = self;
  v74.super_class = PUQuickCropContext;
  v14 = [(PUQuickCropContext *)&v74 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_41;
  }

  v14->_selectedAspectRatio.width = width;
  v14->_selectedAspectRatio.height = height;
  v16 = height != *(MEMORY[0x1E695F060] + 8) || width != *MEMORY[0x1E695F060];
  if (v16)
  {
    v17 = height;
  }

  else
  {
    v17 = v8;
  }

  if (!v16)
  {
    width = v9;
  }

  [v13 scale];
  v70 = v8;
  v19 = v9 / v8;
  v20 = v11 / v10;
  v21 = v10 / v18;
  if (v18 <= v19 / (v11 / v10))
  {
    v22 = v11;
  }

  else
  {
    v22 = v19 * (v10 / v18);
  }

  v23 = v11 / v18;
  v24 = v18 > v20 / v19;
  v25 = v11 / v18 / v19;
  if (!v24)
  {
    v25 = v10;
  }

  if (v20 >= v19)
  {
    v26 = v25;
  }

  else
  {
    v26 = v21;
  }

  if (v20 >= v19)
  {
    v27 = v23;
  }

  else
  {
    v27 = v22;
  }

  [v13 normalizedTranslation];
  v72 = v10;
  v73 = v11;
  v30 = v26;
  x = (v11 - v27) * (0.5 - v28);
  MinY = (v10 - v26) * (v29 + 0.5);
  if (width == 0.0 || v17 == 0.0)
  {
    v34 = width;
    v35 = v26;
    v36 = v27;
  }

  else
  {
    v33 = v9 == width;
    v34 = width;
    v35 = v26;
    v36 = v27;
    if (!v33 || v70 != v17)
    {
      v71 = v34 / v17;
      if (v34 / v17 > 0.0)
      {
        v85.origin.x = x;
        v85.origin.y = MinY;
        v85.size.width = v27;
        v85.size.height = v30;
        v51 = CGRectGetWidth(v85);
        v86.origin.x = x;
        v86.origin.y = MinY;
        v86.size.width = v36;
        v86.size.height = v35;
        v52 = v51 / CGRectGetHeight(v86);
        if (v19 <= 1.0)
        {
          v53 = v34 / v17;
          if (v52 >= v71)
          {
            goto LABEL_62;
          }

          v93.origin.x = x;
          v93.origin.y = MinY;
          v93.size.width = v36;
          v93.size.height = v35;
          v57 = v71 * CGRectGetHeight(v93);
          v94.origin.x = x;
          v94.origin.y = MinY;
          v94.size.width = v36;
          v94.size.height = v35;
          v58 = (v57 - CGRectGetWidth(v94)) * -0.5;
          v95.origin.x = x;
          v95.origin.y = MinY;
          v95.size.width = v36;
          v95.size.height = v35;
          v96 = CGRectInset(v95, v58, 0.0);
          x = v96.origin.x;
          y = v96.origin.y;
          v36 = v96.size.width;
          v35 = v96.size.height;
          if (CGRectGetWidth(v96) > v73)
          {
            v97.origin.x = x;
            v97.origin.y = y;
            v97.size.width = v36;
            v97.size.height = v35;
            MinY = CGRectGetMinY(v97);
            v98.origin.x = x;
            v98.origin.y = y;
            v98.size.width = v36;
            v98.size.height = v35;
            v35 = CGRectGetHeight(v98);
            v36 = v73;
            x = 0.0;
            goto LABEL_61;
          }

          v101.origin.x = x;
          v101.origin.y = y;
          v101.size.width = v36;
          v101.size.height = v35;
          if (CGRectGetMinX(v101) >= 0.0)
          {
            v105.origin.x = x;
            v105.origin.y = y;
            v105.size.width = v36;
            v105.size.height = v35;
            if (CGRectGetMaxX(v105) <= v73)
            {
              MinY = y;
              goto LABEL_61;
            }

            v106.origin.x = x;
            v106.origin.y = y;
            v106.size.width = v36;
            v106.size.height = v35;
            v61 = v73 - CGRectGetMaxX(v106);
          }

          else
          {
            v102.origin.x = x;
            v102.origin.y = y;
            v102.size.width = v36;
            v102.size.height = v35;
            v61 = -CGRectGetMinX(v102);
          }

          v60 = 0.0;
          v62 = x;
          v63 = y;
        }

        else
        {
          v53 = v34 / v17;
          if (v52 <= v71)
          {
            goto LABEL_62;
          }

          v87.origin.x = x;
          v87.origin.y = MinY;
          v87.size.width = v36;
          v87.size.height = v35;
          v54 = CGRectGetWidth(v87) / v71;
          v88.origin.x = x;
          v88.origin.y = MinY;
          v88.size.width = v36;
          v88.size.height = v35;
          v55 = (v54 - CGRectGetHeight(v88)) * -0.5;
          v89.origin.x = x;
          v89.origin.y = MinY;
          v89.size.width = v36;
          v89.size.height = v35;
          v90 = CGRectInset(v89, 0.0, v55);
          v56 = v90.origin.x;
          MinY = v90.origin.y;
          v36 = v90.size.width;
          v35 = v90.size.height;
          if (CGRectGetHeight(v90) > v72)
          {
            v91.origin.x = v56;
            v91.origin.y = MinY;
            v91.size.width = v36;
            v91.size.height = v35;
            x = CGRectGetMinX(v91);
            v92.origin.x = v56;
            v92.origin.y = MinY;
            v92.size.width = v36;
            v92.size.height = v35;
            v36 = CGRectGetWidth(v92);
            v35 = v72;
            MinY = 0.0;
LABEL_61:
            v53 = v34 / v17;
LABEL_62:
            v108.origin.x = x;
            v108.origin.y = MinY;
            v108.size.width = v36;
            v108.size.height = v35;
            v66 = CGRectGetWidth(v108);
            v109.origin.x = x;
            v109.origin.y = MinY;
            v109.size.width = v36;
            v109.size.height = v35;
            v67 = CGRectGetHeight(v109);
            if (vabdd_f64(v66 / v67, v53) > 0.00000999999975)
            {
              if (v66 / v67 >= v53)
              {
                v69 = (v66 - v53 * v67) * 0.5;
                v68 = 0.0;
              }

              else
              {
                v68 = (v67 - v66 / v53) * 0.5;
                v69 = 0.0;
              }

              v110.origin.x = x;
              v110.origin.y = MinY;
              v110.size.width = v36;
              v110.size.height = v35;
              v111 = CGRectInset(v110, v69, v68);
              x = v111.origin.x;
              MinY = v111.origin.y;
              v36 = v111.size.width;
              v35 = v111.size.height;
            }

            goto LABEL_28;
          }

          v99.origin.x = v56;
          v99.origin.y = MinY;
          v99.size.width = v36;
          v99.size.height = v35;
          if (CGRectGetMinY(v99) >= 0.0)
          {
            v103.origin.x = v56;
            v103.origin.y = MinY;
            v103.size.width = v36;
            v103.size.height = v35;
            if (CGRectGetMaxY(v103) <= v72)
            {
              x = v56;
              goto LABEL_61;
            }

            v104.origin.x = v56;
            v104.origin.y = MinY;
            v104.size.width = v36;
            v104.size.height = v35;
            v60 = v72 - CGRectGetMaxY(v104);
          }

          else
          {
            v100.origin.x = v56;
            v100.origin.y = MinY;
            v100.size.width = v36;
            v100.size.height = v35;
            v60 = -CGRectGetMinY(v100);
          }

          v61 = 0.0;
          v62 = v56;
          v63 = MinY;
        }

        v64 = v36;
        v65 = v35;
        v107 = CGRectOffset(*&v62, v61, v60);
        x = v107.origin.x;
        MinY = v107.origin.y;
        v36 = v107.size.width;
        v35 = v107.size.height;
        goto LABEL_61;
      }
    }
  }

LABEL_28:
  v78.origin.x = x;
  v78.origin.y = MinY;
  v78.size.width = v36;
  v78.size.height = v35;
  v79 = CGRectIntegral(v78);
  v37 = v79.origin.x;
  v38 = v79.origin.y;
  v39 = v79.size.width;
  v40 = v79.size.height;
  IsEmpty = CGRectIsEmpty(v79);
  v42 = MEMORY[0x1E695F050];
  if (IsEmpty)
  {
    v43 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v80.origin.x = v37;
      v80.origin.y = v38;
      v80.size.width = v39;
      v80.size.height = v40;
      v44 = NSStringFromCGRect(v80);
      *buf = 138412290;
      v76 = v44;
      _os_log_impl(&dword_1B36F3000, v43, OS_LOG_TYPE_ERROR, "Quick crop rect is empty %@", buf, 0xCu);
    }

    v37 = *v42;
    v38 = v42[1];
    v39 = v42[2];
    v40 = v42[3];
  }

  v81.origin.x = v37;
  v81.origin.y = v38;
  v81.size.width = v39;
  v81.size.height = v40;
  if (CGRectIsInfinite(v81))
  {
    v45 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v82.origin.x = v37;
      v82.origin.y = v38;
      v82.size.width = v39;
      v82.size.height = v40;
      v46 = NSStringFromCGRect(v82);
      *buf = 138412290;
      v76 = v46;
      _os_log_impl(&dword_1B36F3000, v45, OS_LOG_TYPE_ERROR, "Quick crop rect is infinite %@", buf, 0xCu);
    }

    v37 = *v42;
    v38 = v42[1];
    v39 = v42[2];
    v40 = v42[3];
  }

  v83.origin.x = v37;
  v83.origin.y = v38;
  v83.size.width = v39;
  v83.size.height = v40;
  if (CGRectIsNull(v83))
  {
    v47 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v84.origin.x = v37;
      v84.origin.y = v38;
      v84.size.width = v39;
      v84.size.height = v40;
      v48 = NSStringFromCGRect(v84);
      *buf = 138412290;
      v76 = v48;
      _os_log_impl(&dword_1B36F3000, v47, OS_LOG_TYPE_ERROR, "Quick crop rect is null %@", buf, 0xCu);
    }

    v37 = *v42;
    v38 = v42[1];
    v39 = v42[2];
    v40 = v42[3];
  }

  v15->_cropRectRelativeToRenderedImage.origin.x = v37;
  v15->_cropRectRelativeToRenderedImage.origin.y = v38;
  v15->_cropRectRelativeToRenderedImage.size.width = v39;
  v15->_cropRectRelativeToRenderedImage.size.height = v40;
  v15->_renderedImageSize.width = v73;
  v15->_renderedImageSize.height = v72;
  v15->_aspectRatio.width = v34;
  v15->_aspectRatio.height = v17;
  v15->_lockAspectRatio = v16;
  v49 = v15;
LABEL_41:

  return v15;
}

@end