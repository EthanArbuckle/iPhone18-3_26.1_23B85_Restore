@interface CRFormContourBasedDetector
- (CRFormContourBasedDetector)initWithConfiguration:(id)configuration;
- (id)detectFormFieldsInImage:(id)image;
@end

@implementation CRFormContourBasedDetector

- (CRFormContourBasedDetector)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CRFormContourBasedDetector;
  v6 = [(CRFormContourBasedDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (id)detectFormFieldsInImage:(id)image
{
  imageCopy = image;
  width = [imageCopy width];
  height = [imageCopy height];
  v6 = fmin([imageCopy width], objc_msgSend(imageCopy, "height"));
  if (v6 > 1224.0)
  {
    v7 = [imageCopy imageByScalingToWidth:(1224.0 / v6 * objc_msgSend(imageCopy height:{"width")), (1224.0 / v6 * objc_msgSend(imageCopy, "height"))}];

    imageCopy = v7;
  }

  v8 = [imageCopy imageByConvertingToColorSpace:0 forceDataCopy:1];
  v9 = v8;
  if (!v8)
  {
    v19 = CROSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_FAULT, "Form y8Image is nil!", buf, 2u);
    }

    goto LABEL_45;
  }

  v69 = v8;
  [v8 size];
  v11 = v10;
  v13 = v12;
  v14 = [imageCopy url];
  uRLByDeletingPathExtension = [v14 URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  v17 = lastPathComponent;
  if (lastPathComponent)
  {
    v18 = lastPathComponent;
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null%lu", objc_msgSend(imageCopy, "hash")];
  }

  v19 = v18;

  [v9 vImage];
  v92 = 0u;
  v93 = 0u;
  [v9 vImage];
  *&v90 = malloc_type_malloc(*(&v87 + 1) * v13, 0x100004077774924uLL);
  *(&v90 + 1) = v13;
  *&v91 = v11;
  *(&v91 + 1) = *(&v87 + 1);
  CRLogger = CRLogger::getCRLogger(v90);
  v9 = v69;
  if (*CRLogger == 1 && (CRLogger[8] & 0x10) != 0)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_contours_1_src.png", v19];
    *buf = v92;
    v87 = v93;
    writeBufferWithMetadata(buf, v21, 0);
  }

  if (v93 < 0x33 || *(&v92 + 1) < 0x33uLL)
  {
    free(v90);
LABEL_45:
    v58 = MEMORY[0x1E695E0F0];
    goto LABEL_49;
  }

  *buf = v92;
  v87 = v93;
  v67 = v19;
  v68 = imageCopy;
  adaptiveThresholdIntegralImage(buf, &v90, 50, 10);
  v23 = CRLogger::getCRLogger(v22);
  if (*v23 == 1 && (v23[8] & 0x10) != 0)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_contours_2_img.png", v19];
    *buf = v90;
    v87 = v91;
    writeBufferWithMetadata(buf, v24, 0);
  }

  v88 = 0x340200000;
  v89 = 1080033280;
  RectangleFinder::traceAllContoursWithoutFiltering(&v90, 0xFF, &v84);
  RectangleFinder::identifyRectangleContours(&v84, &v82);
  v26 = CRLogger::getCRLogger(v25);
  if (*v26 == 1 && (v26[8] & 0x10) != 0)
  {
    memset(v81, 0, sizeof(v81));
    std::vector<std::vector<PixelPosition>>::__init_with_size[abi:ne200100]<std::vector<PixelPosition>*,std::vector<PixelPosition>*>(v81, v84, v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3));
    *__p = v90;
    v80 = v91;
    ImageFromContour = createImageFromContour(v81, __p);
    __p[0] = v81;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_contours_3_lines.png", v19];
    writeCGImageWithMetadata(ImageFromContour, v28, 0);
    CGImageRelease(ImageFromContour);
    memset(v78, 0, sizeof(v78));
    std::vector<std::vector<PixelPosition>>::__init_with_size[abi:ne200100]<std::vector<PixelPosition>*,std::vector<PixelPosition>*>(v78, v82, v83, 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3));
    *__p = v90;
    v80 = v91;
    v29 = createImageFromContour(v78, __p);
    __p[0] = v78;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_contours_3_rects.png", v19];
    writeCGImageWithMetadata(v29, v30, 0);
    CGImageRelease(v29);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v32 = array;
  v70 = width;
  v33 = height;
  v34 = v84;
  if (v85 != v84)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v80 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(__p, *(v34 + v35), *(v34 + v35 + 8), (*(v34 + v35 + 8) - *(v34 + v35)) >> 3);
      array = __p[0];
      if ((__p[1] - __p[0]) >= 0x58)
      {
        *&v95.origin.x = *&boxForContour(__p[0], __p[1]);
        x = v95.origin.x;
        y = v95.origin.y;
        width = v95.size.width;
        height = v95.size.height;
        if (CGRectGetWidth(v95) > 20.0)
        {
          v96.origin.x = x;
          v96.origin.y = y;
          v96.size.width = width;
          v96.size.height = height;
          if (CGRectGetHeight(v96) < 6.0 && y > 30.0)
          {
            std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v75, __p);
            v42 = [[CRNormalizedQuad alloc] initWithNormalizedBoundingBox:x / v11 size:fmax(y + -30.0, 0.0) / v13, width / v11, 30.0 / v13, v70, v33];
            v43 = [[CRFormField alloc] initWithQuad:v42 type:1 source:2 value:0 contentType:0 maxCharacterCount:0x7FFFFFFFFFFFFFFFLL];
            [(CRFormField *)v43 setHasBoundedWidth:1];
            [(CRFormField *)v43 setHasBoundedHeight:0];
            [v32 addObject:v43];
          }
        }

        array = __p[0];
      }

      if (array)
      {
        __p[1] = array;
        operator delete(array);
      }

      ++v36;
      v34 = v84;
      v35 += 24;
    }

    while (v36 < 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3));
  }

  v44 = v82;
  if (v83 != v82)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v80 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(__p, *(v44 + v45), *(v44 + v45 + 8), (*(v44 + v45 + 8) - *(v44 + v45)) >> 3);
      v47 = boxForContour(__p[0], __p[1]).f64[0];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v75, __p);
      v54 = [[CRNormalizedQuad alloc] initWithNormalizedBoundingBox:v47 / v11 size:v49 / v13, v51 / v11, v53 / v13, v70, v33];
      v55 = [[CRFormField alloc] initWithQuad:v54 type:1 source:2 value:0 contentType:0 maxCharacterCount:0x7FFFFFFFFFFFFFFFLL];
      [(CRFormField *)v55 setHasBoundedWidth:1];
      [(CRFormField *)v55 setHasBoundedHeight:1];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __54__CRFormContourBasedDetector_detectFormFieldsInImage___block_invoke;
      v73[3] = &unk_1E7BC21A0;
      v56 = v54;
      v74 = v56;
      if ([v32 indexOfObjectPassingTest:v73] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v32 addObject:v55];
      }

      array = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v46;
      v44 = v82;
      v45 += 24;
    }

    while (v46 < 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3));
  }

  v57 = CRLogger::getCRLogger(array);
  v19 = v67;
  imageCopy = v68;
  v9 = v69;
  v58 = v32;
  if (*v57 == 1 && (v57[8] & 0x10) != 0)
  {
    memset(v72, 0, sizeof(v72));
    std::vector<std::vector<PixelPosition>>::__init_with_size[abi:ne200100]<std::vector<PixelPosition>*,std::vector<PixelPosition>*>(v72, v75, v76, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3));
    *__p = v90;
    v80 = v91;
    v71 = createImageFromContour(v72, __p);
    __p[0] = v72;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
    v59 = [v68 url];
    uRLByDeletingPathExtension2 = [v59 URLByDeletingPathExtension];
    lastPathComponent2 = [uRLByDeletingPathExtension2 lastPathComponent];
    v62 = lastPathComponent2;
    if (lastPathComponent2)
    {
      v63 = lastPathComponent2;
    }

    else
    {
      v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null%lu", objc_msgSend(v68, "hash")];
    }

    v64 = v63;

    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_contours_4_final.png", v64];
    writeCGImageWithMetadata(v71, v65, 0);
    CGImageRelease(v71);
  }

  free(v90);
  __p[0] = &v75;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v82;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v84;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_49:

  return v58;
}

uint64_t __54__CRFormContourBasedDetector_detectFormFieldsInImage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 boundingQuad];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

@end