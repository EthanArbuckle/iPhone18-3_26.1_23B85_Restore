@interface PUCleanupToolFaceRectsView
- (NUMediaView)mediaView;
- (PUCleanupFaceRectsImageSizeDelegate)faceRectsImageSizeDelegate;
- (PUCleanupToolFaceRectsView)initWithMediaView:(id)view isHDR:(BOOL)r delegate:(id)delegate;
- (void)updateDetectedFaces:(id)faces imageOrientation:(int64_t)orientation;
@end

@implementation PUCleanupToolFaceRectsView

- (PUCleanupFaceRectsImageSizeDelegate)faceRectsImageSizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceRectsImageSizeDelegate);

  return WeakRetained;
}

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (void)updateDetectedFaces:(id)faces imageOrientation:(int64_t)orientation
{
  v150 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  layer = [(PUCleanupToolFaceRectsView *)self layer];
  [layer setSublayers:0];

  if ([facesCopy count])
  {
    [(PUCleanupToolFaceRectsView *)self setNeedsClearing:1];
    window = [(PUCleanupToolFaceRectsView *)self window];
    screen = [window screen];

    v111 = screen;
    [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:screen];
    v10 = v9;
    [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
    LODWORD(window) = v10 >= v11;
    isHDR = [(PUCleanupToolFaceRectsView *)self isHDR];
    v13 = 1.0;
    v137 = 0u;
    v138 = 0u;
    if ((isHDR & window) != 0)
    {
      v13 = 2.0;
    }

    v125 = v13;
    v139 = 0uLL;
    v140 = 0uLL;
    v112 = facesCopy;
    obj = facesCopy;
    v117 = [obj countByEnumeratingWithState:&v137 objects:v149 count:16];
    if (v117)
    {
      v14 = 0;
      v114 = *MEMORY[0x1E6979E78];
      v115 = *v138;
      v113 = *MEMORY[0x1E6979E98];
      selfCopy = self;
      do
      {
        v15 = 0;
        do
        {
          v135 = v14;
          if (*v138 != v115)
          {
            objc_enumerationMutation(obj);
          }

          v134 = v15;
          v16 = *(*(&v137 + 1) + 8 * v15);
          layer2 = [MEMORY[0x1E69794A0] layer];
          layer3 = [(PUCleanupToolFaceRectsView *)self layer];
          [layer3 insertSublayer:layer2 atIndex:0];

          v147[0] = @"position";
          null = [MEMORY[0x1E695DFB0] null];
          v148[0] = null;
          v147[1] = @"bounds";
          null2 = [MEMORY[0x1E695DFB0] null];
          v148[1] = null2;
          v147[2] = @"transform";
          null3 = [MEMORY[0x1E695DFB0] null];
          v148[2] = null3;
          v147[3] = @"frame";
          null4 = [MEMORY[0x1E695DFB0] null];
          v148[3] = null4;
          v147[4] = @"opacity";
          null5 = [MEMORY[0x1E695DFB0] null];
          v148[4] = null5;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:5];
          [layer2 setActions:v24];

          self = selfCopy;
          [layer2 setLineCap:v114];
          [layer2 setLineJoin:v113];
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          [layer2 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

          v26 = [MEMORY[0x1E69DC888] colorWithRed:v125 green:v125 blue:0.0 alpha:1.0];
          [layer2 setStrokeColor:{objc_msgSend(v26, "CGColor")}];
          [layer2 setLineWidth:1.5];
          WeakRetained = objc_loadWeakRetained(&selfCopy->_faceRectsImageSizeDelegate);
          [WeakRetained imageSize];
          v29 = v28;
          v31 = v30;

          [v16 boundingBox];
          [MEMORY[0x1E69BDE68] inflatedFaceRect:orientation imageOrientation:?];
          v120 = v33;
          v121 = v32;
          v118 = v35;
          v119 = v34;
          v122 = v31;
          v123 = v29;
          NURectDenormalize();
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v44 = objc_loadWeakRetained(&selfCopy->_mediaView);
          v129 = v39;
          v131 = v37;
          rect = v43;
          v127 = v41;
          [v44 convertViewRect:@"/masterSpace" fromSpace:{v37, v39, v41, v43}];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;

          v53 = objc_loadWeakRetained(&selfCopy->_mediaView);
          [v53 convertRectFromImage:{v46, v48, v50, v52}];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          v62 = objc_loadWeakRetained(&selfCopy->_mediaView);
          superview = [v62 superview];
          [superview convertRect:selfCopy toView:{v55, v57, v59, v61}];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v72 = [obj objectAtIndexedSubscript:0];

          if (v16 == v72)
          {
            v73 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [obj count];
              *buf = 136315394;
              v144 = "[PUCleanupToolFaceRectsView updateDetectedFaces:imageOrientation:]";
              v145 = 2048;
              v146 = v74;
              _os_log_impl(&dword_1B36F3000, v73, OS_LOG_TYPE_DEFAULT, "%s: PIXELLATION: detectedFaces.count: %lu", buf, 0x16u);
            }

            v75 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              [v16 boundingBox];
              v76 = NSStringFromCGRect(v151);
              *buf = 138412290;
              v144 = v76;
              _os_log_impl(&dword_1B36F3000, v75, OS_LOG_TYPE_DEFAULT, "PIXELLATION: faceObservation.boundingBox: %@", buf, 0xCu);
            }

            v77 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v152.origin.y = v120;
              v152.origin.x = v121;
              v152.size.height = v118;
              v152.size.width = v119;
              v78 = NSStringFromCGRect(v152);
              *buf = 138412290;
              v144 = v78;
              _os_log_impl(&dword_1B36F3000, v77, OS_LOG_TYPE_DEFAULT, "PIXELLATION: normalizedOriginalRect     : %@", buf, 0xCu);
            }

            v79 = PLPhotoEditGetLog();
            v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
            v82 = v127;
            v81 = v129;
            v83 = rect;
            if (v80)
            {
              v84 = v131;
              v85 = NSStringFromCGRect(*(&v81 - 1));
              *buf = 138412290;
              v144 = v85;
              _os_log_impl(&dword_1B36F3000, v79, OS_LOG_TYPE_DEFAULT, "PIXELLATION: denormalizedRect           : %@", buf, 0xCu);
            }

            v86 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v153.origin.x = v55;
              v153.origin.y = v57;
              v153.size.width = v59;
              v153.size.height = v61;
              v87 = NSStringFromCGRect(v153);
              *buf = 138412290;
              v144 = v87;
              _os_log_impl(&dword_1B36F3000, v86, OS_LOG_TYPE_DEFAULT, "PIXELLATION: mediaViewRect              : %@", buf, 0xCu);
            }

            v88 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              v154.origin.y = v67;
              v154.origin.x = v65;
              v154.size.width = v69;
              v154.size.height = v71;
              v89 = NSStringFromCGRect(v154);
              *buf = 138412290;
              v144 = v89;
              _os_log_impl(&dword_1B36F3000, v88, OS_LOG_TYPE_DEFAULT, "PIXELLATION: viewRect                   : %@", buf, 0xCu);
            }
          }

          v90 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v65, v67, v69, v71}];
          [layer2 setPath:{objc_msgSend(v90, "CGPath")}];
          globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
          v92 = v67;
          if ([globalSettings inpaintApplySafetyFilterOnFaceLandmarks])
          {
            landmarks = [v16 landmarks];

            if (!landmarks)
            {
              goto LABEL_27;
            }

            globalSettings = [v16 landmarks];
            v130 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:v125 alpha:1.0];
            [v16 boundingBox];
            MinX = CGRectGetMinX(v155);
            [v16 boundingBox];
            MaxX = CGRectGetMaxX(v156);
            [v16 boundingBox];
            MinY = CGRectGetMinY(v157);
            [v16 boundingBox];
            MaxY = CGRectGetMaxY(v158);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __67__PUCleanupToolFaceRectsView_updateDetectedFaces_imageOrientation___block_invoke;
            aBlock[3] = &unk_1E7B7D540;
            *&aBlock[5] = MinX;
            *&aBlock[6] = MaxX;
            *&aBlock[7] = MinY;
            *&aBlock[8] = MaxY;
            aBlock[9] = v123;
            aBlock[10] = v122;
            aBlock[4] = selfCopy;
            v128 = _Block_copy(aBlock);
            v98 = [[PUVFXFaceLandmarksLayer alloc] initWithFaceLandmarks:globalSettings denormalizePoint:v128];
            v141[0] = @"position";
            null6 = [MEMORY[0x1E695DFB0] null];
            v142[0] = null6;
            v141[1] = @"bounds";
            null7 = [MEMORY[0x1E695DFB0] null];
            v142[1] = null7;
            v141[2] = @"transform";
            [MEMORY[0x1E695DFB0] null];
            v101 = v132 = v26;
            v142[2] = v101;
            v141[3] = @"frame";
            null8 = [MEMORY[0x1E695DFB0] null];
            v142[3] = null8;
            v141[4] = @"opacity";
            null9 = [MEMORY[0x1E695DFB0] null];
            v142[4] = null9;
            v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:5];
            [(PUVFXFaceLandmarksLayer *)v98 setActions:v104];

            v26 = v132;
            self = selfCopy;
            v105 = v130;
            -[PUVFXFaceLandmarksLayer setStrokeColor:](v98, "setStrokeColor:", [v105 CGColor]);
            [(PUVFXFaceLandmarksLayer *)v98 setLineWidth:2.0];
            layer4 = [(PUCleanupToolFaceRectsView *)selfCopy layer];
            [layer4 addSublayer:v98];
          }

LABEL_27:
          v107 = objc_alloc_init(MEMORY[0x1E6979508]);
          v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v135];
          [v107 setString:v135];

          [v107 setForegroundColor:{objc_msgSend(v26, "CGColor")}];
          [v107 setFontSize:14.0];
          [v107 preferredFrameSize];
          [v107 setFrame:{v65 + 2.0, v92 + 1.0, v109, v110}];
          [layer2 addSublayer:v107];
          v14 = v135 + 1;

          v15 = v134 + 1;
        }

        while (v117 != v134 + 1);
        v117 = [obj countByEnumeratingWithState:&v137 objects:v149 count:16];
      }

      while (v117);
    }

    facesCopy = v112;
  }

  else
  {
    [(PUCleanupToolFaceRectsView *)self setNeedsClearing:0];
  }
}

double __67__PUCleanupToolFaceRectsView_updateDetectedFaces_imageOrientation___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = (a2 * *(a1 + 48) + (1.0 - a2) * *(a1 + 40)) * *(a1 + 72);
  v5 = (a3 * *(a1 + 64) + (1.0 - a3) * *(a1 + 56)) * *(a1 + 80);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  [WeakRetained convertPoint:@"/masterSpace" fromSpace:*(a1 + 32) toView:{v4, v5}];
  v8 = v7;

  return v8;
}

- (PUCleanupToolFaceRectsView)initWithMediaView:(id)view isHDR:(BOOL)r delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v11 = delegateCopy;
  if (viewCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupToolFaceRectsView.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCleanupToolFaceRectsView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PUCleanupToolFaceRectsView;
  v12 = [(PUCleanupToolFaceRectsView *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_mediaView, viewCopy);
    objc_storeWeak(&v13->_faceRectsImageSizeDelegate, v11);
    v13->_isHDR = r;
    v14 = *MEMORY[0x1E69792A0];
    layer = [(PUCleanupToolFaceRectsView *)v13 layer];
    [layer setPreferredDynamicRange:v14];

    layer2 = [(PUCleanupToolFaceRectsView *)v13 layer];
    [layer2 setGeometryFlipped:1];
  }

  return v13;
}

@end