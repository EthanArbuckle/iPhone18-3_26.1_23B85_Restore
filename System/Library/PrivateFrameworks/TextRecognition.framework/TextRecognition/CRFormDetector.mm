@interface CRFormDetector
+ (BOOL)validateHorizontalTiles:(const void *)a3 document:(id)a4;
+ (id)_detectorResultsFromSortedResults:(const void *)a3 imageSize:(CGSize)a4 originalImageSize:(CGSize)a5;
+ (id)_multiArrayFromPixelBuffer:(__CVBuffer *)a3;
+ (void)_saveDebugImage:(id)a3 byOverlayingResults:(const void *)a4;
- (CRFormDetector)initWithConfiguration:(id)a3 error:(id *)a4;
- (__n128)detectFormFieldsInImage:(char *)a3 document:(uint64_t)a4 outputCandidateResults:(uint64_t)a5;
- (__n128)detectFormFieldsInImage:(unint64_t)a3 document:(__n128 *)a4 outputCandidateResults:(__n128)result;
- (double)detectFormFieldsInImage:(uint64_t)a3 document:(char)a4 outputCandidateResults:(__n128)a5;
- (double)detectFormFieldsInImage:(unint64_t)a3 document:(__n128 *)a4 outputCandidateResults:(uint64_t)a5;
- (id)detectFormFieldsInImage:(id)a3 document:(id)a4 outputCandidateResults:(id *)a5;
- (void)_denormalizeResults:(void *)a3 imageSize:(CGSize *)a4 translation:(CGVector *)a5;
@end

@implementation CRFormDetector

- (CRFormDetector)initWithConfiguration:(id)a3 error:(id *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CRFormDetector;
  v8 = [(CRFormDetector *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v10 = [[CRFormDetectorModel alloc] initWithConfiguration:v7 error:a4];
    model = v9->_model;
    v9->_model = v10;
  }

  return v9;
}

+ (id)_multiArrayFromPixelBuffer:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == 32)
  {
    v6 = 1;
    v7 = 2;
    v5 = 3;
    goto LABEL_5;
  }

  if (PixelFormatType == 1111970369)
  {
    v5 = 0;
    v6 = 2;
    v7 = 1;
LABEL_5:
    CVPixelBufferLockBaseAddress(a3, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    v9 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:&unk_1F2BF8800 dataType:65568 error:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CRFormDetector__multiArrayFromPixelBuffer___block_invoke;
    v11[3] = &__block_descriptor_64_e24_v32__0_v8q16__NSArray_24l;
    v11[4] = BaseAddress;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v5;
    [v9 getMutableBytesWithHandler:v11];
    CVPixelBufferUnlockBaseAddress(a3, 0);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

void *__45__CRFormDetector__multiArrayFromPixelBuffer___block_invoke(void *result, uint64_t a2, double a3, float a4)
{
  v4 = 0;
  v5 = result[4];
  v6 = v5 + result[7];
  v7 = v5 + result[6];
  v8 = v5 + result[5];
  do
  {
    LOBYTE(a4) = *(v8 + v4);
    *&v9 = LODWORD(a4) / 255.0;
    v10 = (a2 + v4);
    *v10 = *&v9;
    LOBYTE(v9) = *(v7 + v4);
    *&v11 = v9 / 255.0;
    v10[409600] = *&v11;
    LOBYTE(v11) = *(v6 + v4);
    a4 = v11 / 255.0;
    v10[819200] = a4;
    v4 += 4;
  }

  while (v4 != 1638400);
  return result;
}

+ (id)_detectorResultsFromSortedResults:(const void *)a3 imageSize:(CGSize)a4 originalImageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 4)];
  v11 = *a3;
  v12 = *(a3 + 1);
  if (*a3 != v12)
  {
    do
    {
      v13 = [[CRNormalizedQuad alloc] initWithNormalizedBoundingBox:*(v11 + 8) / v8 size:*(v11 + 16) / v7, *(v11 + 24) / v8, *(v11 + 32) / v7, width, height];
      v14 = *(v11 + 40) - 1;
      if (v14 < 7)
      {
        v15 = [[CRFormField alloc] initWithQuad:v13 type:qword_1B42AF1B8[v14] source:1 value:0 contentType:0 maxCharacterCount:0x7FFFFFFFFFFFFFFFLL];
        [(CRFormField *)v15 setHasBoundedHeight:(*(v11 + 40) < 8uLL) & (0xC4u >> *(v11 + 40))];
        [(CRFormField *)v15 setHasBoundedWidth:(*(v11 + 40) < 8uLL) & (0xDCu >> *(v11 + 40))];
        [v10 addObject:v15];
      }

      v11 += 48;
    }

    while (v11 != v12);
  }

  return v10;
}

+ (void)_saveDebugImage:(id)a3 byOverlayingResults:(const void *)a4
{
  v5 = a3;
  __src = 0;
  v31 = 0;
  v32 = 0;
  v6 = *a4;
  v7 = *(a4 + 1);
  if (*a4 != v7)
  {
    do
    {
      v8 = *(v6 + 8);
      v9 = [v5 height];
      v11 = *(v6 + 24);
      v10 = *(v6 + 32);
      v12 = v9 - (*(v6 + 16) + v10);
      v13 = v31;
      if (v31 >= v32)
      {
        v15 = __src;
        v16 = v31 - __src;
        v17 = (v31 - __src) >> 5;
        v18 = v17 + 1;
        if ((v17 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v19 = v32 - __src;
        if ((v32 - __src) >> 4 > v18)
        {
          v18 = v19 >> 4;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFE0)
        {
          v18 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v18);
        }

        v20 = 32 * v17;
        *v20 = v8;
        *(v20 + 8) = v12;
        *(v20 + 16) = v11;
        *(v20 + 24) = v10;
        v14 = 32 * v17 + 32;
        memcpy(0, v15, v16);
        v21 = __src;
        __src = 0;
        v31 = v14;
        v32 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v31 = v8;
        *(v13 + 1) = v12;
        v14 = (v13 + 32);
        *(v13 + 2) = v11;
        *(v13 + 3) = v10;
      }

      v31 = v14;
      v6 += 48;
    }

    while (v6 != v7);
  }

  v22 = [v5 imageByOverlayingRects:? count:?];
  v23 = [v5 url];
  v24 = [v23 URLByDeletingPathExtension];
  v25 = [v24 lastPathComponent];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null%lu", objc_msgSend(v5, "hash")];
  }

  v28 = v27;

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_detection.png", v28];
  [v22 writeToFile:v29];
}

- (void)_denormalizeResults:(void *)a3 imageSize:(CGSize *)a4 translation:(CGVector *)a5
{
  v8 = [(CRFormDetector *)self configuration];
  v9 = [v8 resizeInputImage];

  v10 = *a4;
  if (v9)
  {
    v11 = vdivq_f64(vdupq_n_s64(0x4084000000000000uLL), v10);
  }

  else
  {
    width = v10.width;
    if (v10.width <= v10.height)
    {
      width = v10.height;
    }

    v11 = vdupq_lane_s64(COERCE__INT64(640.0 / width), 0);
  }

  v13 = *a3;
  v14 = *(a3 + 1);
  if (*a3 != v14)
  {
    v15 = *a5;
    do
    {
      *(v13 + 24) = vdivq_f64(*(v13 + 24), v11);
      *(v13 + 8) = vaddq_f64(v15, vdivq_f64(*(v13 + 8), v11));
      v13 += 48;
    }

    while (v13 != v14);
  }
}

+ (BOOL)validateHorizontalTiles:(const void *)a3 document:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a4;
  obj = CGRectGetMaxX(*(*(a3 + 1) - 32));
  MaxY = CGRectGetMaxY(*(*(a3 + 1) - 32));
  std::vector<CGRect>::vector[abi:ne200100](&__p, (*(a3 + 1) - *a3) >> 5);
  v7 = *a3;
  if (*(a3 + 1) != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v7 + v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v85.origin.x = *v10;
      v85.origin.y = v12;
      v85.size.width = v13;
      v85.size.height = v14;
      MinX = CGRectGetMinX(v85);
      v86.origin.x = v11;
      v86.origin.y = v12;
      v86.size.width = v13;
      v86.size.height = v14;
      MinY = CGRectGetMinY(v86);
      v87.origin.x = v11;
      v87.origin.y = v12;
      v87.size.width = v13;
      v87.size.height = v14;
      Width = CGRectGetWidth(v87);
      v88.origin.x = v11;
      v88.origin.y = v12;
      v88.size.width = v13;
      v88.size.height = v14;
      Height = CGRectGetHeight(v88);
      v19 = (__p + v8);
      *v19 = MinX / obj;
      v19[1] = MinY / MaxY;
      v19[2] = Width / obj;
      v19[3] = Height / MaxY;
      ++v9;
      v7 = *a3;
      v8 += 32;
    }

    while (v9 < (*(a3 + 1) - *a3) >> 5);
  }

  v64 = [v5 contentsWithTypes:8];
  [v5 contentsWithTypes:64];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  obja = v76 = 0u;
  v20 = [obja countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v20)
  {
    v21 = *v76;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v76 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v75 + 1) + 8 * i);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v24 = [v23 colQuads];
        v25 = v5;
        v26 = [v24 countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v26)
        {
          v27 = *v72;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v72 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v71 + 1) + 8 * j) boundingBox];
              v33 = __p;
              if (v80 == __p)
              {
                goto LABEL_35;
              }

              v34 = v29;
              v35 = v30;
              v36 = v31;
              v37 = v32;
              v38 = 0;
              v39 = 1;
              do
              {
                v89.origin.x = v34;
                v89.origin.y = v35;
                v89.size.width = v36;
                v89.size.height = v37;
                v40 = CGRectContainsRect(*&v33[v38], v89);
                v33 = __p;
                v41 = v39++ >= (v80 - __p) >> 5;
                v38 += 32;
              }

              while (!v41 && !v40);
              if (!v40)
              {
LABEL_35:

                v5 = v25;
                v62 = 0;
                v42 = obja;
                goto LABEL_36;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v71 objects:v82 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v5 = v25;
      }

      v20 = [obja countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v20);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v42 = v64;
  v43 = [v42 countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v43)
  {
    v44 = 0;
    v45 = *v68;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v68 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v67 + 1) + 8 * k) boundingQuad];
        [v47 boundingBox];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = __p;
        if (v80 == __p)
        {
          v61 = 1;
        }

        else
        {
          v57 = 0;
          v58 = 1;
          do
          {
            v90.origin.x = v49;
            v90.origin.y = v51;
            v90.size.width = v53;
            v90.size.height = v55;
            v59 = CGRectContainsRect(*&v56[v57], v90);
            v56 = __p;
            v60 = v58++ >= (v80 - __p) >> 5;
            v57 += 32;
          }

          while (!v60 && !v59);
          v61 = !v59;
        }

        v44 += v61;
      }

      v43 = [v42 countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v43);
    v62 = v44 < 2;
  }

  else
  {
    v62 = 1;
  }

LABEL_36:

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  return v62;
}

- (id)detectFormFieldsInImage:(id)a3 document:(id)a4 outputCandidateResults:(id *)a5
{
  v227 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v195 = a4;
  v223 = vdupq_n_s64(0x4084000000000000uLL);
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = fmax([v6 width], objc_msgSend(v6, "height"));
  v10 = v6;
  __src = 0;
  v221 = 0;
  v222 = 0;
  v194 = v10;
  if (v9 >= 1280.0)
  {
    v11 = [(CRFormDetector *)self configuration];
    v12 = [v11 tileInputImage];

    if (v12)
    {
      v13 = fmin(v7, v8);
      v14 = [v10 imageByScalingToWidth:(640.0 / v13 * objc_msgSend(v10 height:{"width")), (640.0 / v13 * objc_msgSend(v10, "height"))}];

      if (v13 == [v10 height])
      {
        v15 = fmax([v14 width] * 0.6, objc_msgSend(v14, "height"));
        v16 = [v14 height];
        v143 = __src;
        v144 = v221 - __src;
        v145 = (v221 - __src) >> 5;
        v146 = v145 + 1;
        if ((v145 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v147 = v222 - __src;
        if ((v222 - __src) >> 4 > v146)
        {
          v146 = v147 >> 4;
        }

        if (v147 >= 0x7FFFFFFFFFFFFFE0)
        {
          v146 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v146)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v146);
        }

        v153 = (v221 - __src) >> 5;
        v154 = 32 * v145;
        *v154 = 0;
        *(v154 + 8) = 0;
        *(v154 + 16) = v15;
        *(v154 + 24) = v16;
        v155 = 32 * v145 + 32;
        v156 = (32 * v145 - 32 * v153);
        memcpy((v154 - 32 * v153), v143, v144);
        v157 = __src;
        __src = v156;
        v221 = v155;
        v222 = 0;
        if (v157)
        {
          operator delete(v157);
        }

        v221 = v155;
        v158 = [v14 width] - v15;
        v159 = [v14 height];
        v160 = v155;
        if (v155 >= v222)
        {
          v162 = __src;
          v163 = v221 - __src;
          v164 = (v221 - __src) >> 5;
          v165 = v164 + 1;
          if ((v164 + 1) >> 59)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v166 = v222 - __src;
          if ((v222 - __src) >> 4 > v165)
          {
            v165 = v166 >> 4;
          }

          if (v166 >= 0x7FFFFFFFFFFFFFE0)
          {
            v165 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v165)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v165);
          }

          v167 = (v221 - __src) >> 5;
          v168 = 32 * v164;
          *v168 = v158;
          *(v168 + 8) = 0;
          *(v168 + 16) = v15;
          *(v168 + 24) = v159;
          v161 = 32 * v164 + 32;
          v169 = (32 * v164 - 32 * v167);
          memcpy((v168 - 32 * v167), v162, v163);
          v170 = __src;
          __src = v169;
          v221 = v161;
          v222 = 0;
          if (v170)
          {
            operator delete(v170);
          }
        }

        else
        {
          *v221 = v158;
          *(v155 + 8) = 0;
          v161 = v155 + 32;
          *(v160 + 16) = v15;
          *(v160 + 24) = v159;
        }

        v221 = v161;
        if ([objc_opt_class() validateHorizontalTiles:&__src document:v195])
        {
          v25 = v221;
          goto LABEL_15;
        }

        v221 = __src;
        v171 = [v14 width];
        v141 = [v14 height];
        v172 = v221;
        if (v221 < v222)
        {
          *v221 = 0.0;
          v172[1] = 0.0;
          v25 = v172 + 4;
          v172[2] = v171;
          v172[3] = v141;
LABEL_205:
          v221 = v25;
          goto LABEL_15;
        }

        v173 = __src;
        v174 = v221 - __src;
        v175 = (v221 - __src) >> 5;
        v176 = v175 + 1;
        if ((v175 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v177 = v222 - __src;
        if ((v222 - __src) >> 4 > v176)
        {
          v176 = v177 >> 4;
        }

        if (v177 >= 0x7FFFFFFFFFFFFFE0)
        {
          v176 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v176)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v176);
        }

        v188 = (v221 - __src) >> 5;
        v189 = 32 * v175;
        *v189 = 0;
        *(v189 + 8) = 0;
      }

      else
      {
        v141 = fmax([v14 height] * 0.6, objc_msgSend(v14, "width"));
        v142 = [v14 width];
        v148 = __src;
        v149 = v221 - __src;
        v150 = (v221 - __src) >> 5;
        v151 = v150 + 1;
        if ((v150 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v152 = v222 - __src;
        if ((v222 - __src) >> 4 > v151)
        {
          v151 = v152 >> 4;
        }

        if (v152 >= 0x7FFFFFFFFFFFFFE0)
        {
          v151 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v151)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v151);
        }

        v178 = (v221 - __src) >> 5;
        v179 = 32 * v150;
        *v179 = 0;
        *(v179 + 8) = 0;
        *(v179 + 16) = v142;
        *(v179 + 24) = v141;
        v180 = 32 * v150 + 32;
        v181 = (32 * v150 - 32 * v178);
        memcpy((v179 - 32 * v178), v148, v149);
        v182 = __src;
        __src = v181;
        v221 = v180;
        v222 = 0;
        if (v182)
        {
          operator delete(v182);
        }

        v221 = v180;
        v183 = [v14 height] - v141;
        v171 = [v14 width];
        v184 = v180;
        if (v180 < v222)
        {
          *v221 = 0.0;
          *(v180 + 8) = v183;
          *(v180 + 16) = v171;
          v25 = (v180 + 32);
          *(v184 + 24) = v141;
          goto LABEL_205;
        }

        v173 = __src;
        v174 = v221 - __src;
        v185 = (v221 - __src) >> 5;
        v186 = v185 + 1;
        if ((v185 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v187 = v222 - __src;
        if ((v222 - __src) >> 4 > v186)
        {
          v186 = v187 >> 4;
        }

        if (v187 >= 0x7FFFFFFFFFFFFFE0)
        {
          v186 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v186)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v186);
        }

        v188 = (v221 - __src) >> 5;
        v189 = 32 * v185;
        *v189 = 0;
        *(v189 + 8) = v183;
      }

      *(v189 + 16) = v171;
      *(v189 + 24) = v141;
      v25 = (v189 + 32);
      v190 = (v189 - 32 * v188);
      memcpy(v190, v173, v174);
      v191 = __src;
      __src = v190;
      v221 = v25;
      v222 = 0;
      if (v191)
      {
        operator delete(v191);
      }

      goto LABEL_205;
    }
  }

  v17 = [v10 width];
  v18 = [v10 height];
  v19 = __src;
  v20 = v221 - __src;
  v21 = (v221 - __src) >> 5;
  v22 = v21 + 1;
  if ((v21 + 1) >> 59)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v23 = v222 - __src;
  if ((v222 - __src) >> 4 > v22)
  {
    v22 = v23 >> 4;
  }

  if (v23 >= 0x7FFFFFFFFFFFFFE0)
  {
    v22 = 0x7FFFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v22);
  }

  v24 = 32 * v21;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = v17;
  *(v24 + 24) = v18;
  v25 = (32 * v21 + 32);
  memcpy(0, v19, v20);
  v26 = __src;
  __src = 0;
  v221 = v25;
  v222 = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v221 = (32 * v21 + 32);
  v14 = v10;
LABEL_15:
  __dst[0] = 0;
  __dst[1] = 0;
  v219 = 0;
  v216[0] = 0;
  v216[1] = 0;
  v217 = 0;
  v193 = v14;
  if (v25 != __src)
  {
    if (((v25 - __src) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v203 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v27 = __src;
  if (v221 == __src)
  {
LABEL_30:
    v196 = objc_alloc_init(MEMORY[0x1E695FF08]);
    v44 = [(CRFormDetector *)self model];
    v215 = 0;
    v199 = [v44 predictionsFromInputs:v203 options:v196 error:&v215];
    v31 = v215;

    if (v31)
    {
      v45 = CROSLogForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        v46 = [v31 description];
        v47 = v46;
        v48 = [v46 UTF8String];
        *buf = 136315138;
        *&buf[4] = v48;
        _os_log_impl(&dword_1B40D2000, v45, OS_LOG_TYPE_FAULT, "Form detection inference error: %s", buf, 0xCu);
      }
    }

    else
    {
      v49 = [v199 count];
      if (v49 == (v221 - __src) >> 5)
      {
        if (v221 != __src)
        {
          v198 = 0;
          v50 = 0;
          while (1)
          {
            v197 = [v199 objectAtIndexedSubscript:v50];
            v202 = [v197 boundingBoxes];
            v200 = [v197 classLogits];
            v201 = [v197 anchors];
            v51 = [v202 shape];
            v52 = [v51 objectAtIndexedSubscript:1];
            v53 = [v52 unsignedIntegerValue];

            v54 = v201;
            v55 = [v201 dataPointer];
            v56 = v202;
            v57 = [v202 dataPointer];
            v58 = v200;
            v59 = [v200 dataPointer];
            __p[0] = 0;
            __p[1] = 0;
            v214 = 0;
            v211[0] = 0;
            v211[1] = 0;
            v212 = 0;
            if (v53)
            {
              v61 = 0;
              v62 = 1;
              while (1)
              {
                v63 = 0;
                v65 = *v55;
                v64 = v55[1];
                v66 = v55[2];
                v67 = v55[3];
                v208 = *v57;
                v209 = *v55 + v66;
                v207 = v57[1];
                v68 = v57[2] / 5.0;
                v69 = (v57[3] / 5.0) <= 4.1352 ? v57[3] / 5.0 : 4.1352;
                v70 = *v59 + -0.592243;
                v71 = v70;
                for (i = 1; i != 9; ++i)
                {
                  if (v59[i] > v71)
                  {
                    v63 = i;
                    v71 = v59[i];
                  }
                }

                if (v68 > 4.1352)
                {
                  v68 = 4.1352;
                }

                v206 = expf(v68);
                v73 = v66 - v65;
                v205 = expf(v69);
                *&v210 = v63;
                v74 = exp(v70 - v71);
                v75 = 0;
                v76 = 0.0;
                do
                {
                  if (v63 != v75)
                  {
                    if (v75)
                    {
                      v76 = v76 + expf(v59[v75] - v71);
                    }

                    else
                    {
                      v76 = v74 + v76;
                    }
                  }

                  ++v75;
                }

                while (v75 != 9);
                v77 = v64 + v67;
                v78 = v64;
                v79 = (v209 * 0.5) + ((v208 / 10.0) * v73);
                v80 = v73 * v206;
                v81 = (v77 * 0.5) + ((v207 / 10.0) * (v67 - v78));
                v82 = (v67 - v78) * v205;
                v83 = log1p(v76) + v71;
                v84 = v71 - v83;
                v224 = v71 - v83;
                v85 = v80 * 0.5;
                v86 = v82 * 0.5;
                if (v63)
                {
                  v87 = (v79 - v85);
                  v88 = (v81 - v86);
                  v89 = v80;
                  *buf = v87;
                  *&buf[8] = v88;
                  v90 = v82;
                  *&buf[16] = v80;
                  v226 = v90;
                  v91 = v63 == 8;
                  v92 = v84 > 2.709313;
                  v93 = v91 && v92;
                  v117 = !v91 || !v92;
                  v94 = 8;
                  if (v117)
                  {
                    v94 = v63;
                  }
                }

                else
                {
                  v93 = 0;
                  v87 = (v79 - v85);
                  v88 = (v81 - v86);
                  v89 = v80;
                  v90 = v82;
                  v94 = 2;
                }

                *&v210 = v94;
                *buf = v87;
                *&buf[8] = v88;
                *&buf[16] = v89;
                v226 = v90;
                if (v93)
                {
                  break;
                }

                v55 += 4;
                v57 += 4;
                v59 += 9;
                v62 = ++v61 < v53;
                if (v61 == v53)
                {
                  goto LABEL_60;
                }
              }

              v103 = CROSLogForCategory(6);
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
              {
                v105 = *(__p[1] - 3);
                v104 = *(__p[1] - 2);
                *buf = 134218240;
                *&buf[4] = v105;
                *&buf[12] = 2048;
                *&buf[14] = v104;
                _os_log_impl(&dword_1B40D2000, v103, OS_LOG_TYPE_DEBUG, "Gating form detection result with rejection box found with size %.2f x %.2f", buf, 0x16u);
              }

              v14 = v193;
              v10 = v194;
              v198 = MEMORY[0x1E695E0F0];
            }

            else
            {
LABEL_60:
              v95 = __p[0];
              v96 = __p[1];
              v97 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 4);
              if (__p[1] - __p[0] < 6145)
              {
                v100 = 0;
                v14 = v193;
                v10 = v194;
LABEL_66:
              }

              else
              {
                v98 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 4);
                v14 = v193;
                v10 = v194;
                while (1)
                {
                  v99 = operator new(48 * v98, MEMORY[0x1E69E5398]);
                  if (v99)
                  {
                    break;
                  }

                  v100 = v98 >> 1;
                  v101 = v98 > 1;
                  v98 >>= 1;
                  if (!v101)
                  {
                    goto LABEL_66;
                  }
                }

                v106 = v99;
                operator delete(v106);
              }

              v107 = v211[0];
              v108 = v211[1];
              v109 = 0xAAAAAAAAAAAAAAABLL * ((v211[1] - v211[0]) >> 4);
              if (v211[1] - v211[0] < 6145)
              {
                v112 = 0;
LABEL_77:
              }

              else
              {
                v110 = 0xAAAAAAAAAAAAAAABLL * ((v211[1] - v211[0]) >> 4);
                while (1)
                {
                  v111 = operator new(48 * v110, MEMORY[0x1E69E5398]);
                  if (v111)
                  {
                    break;
                  }

                  v112 = v110 >> 1;
                  v101 = v110 > 1;
                  v110 >>= 1;
                  if (!v101)
                  {
                    goto LABEL_77;
                  }
                }

                v113 = v111;
                operator delete(v113);
              }

              if (__p[0] == __p[1])
              {
                v116 = 0;
              }

              else
              {
                v114 = 0;
                v115 = (__p[0] + 48);
                do
                {
                  v116 = v114 + 1;
                  if (*(v115 - 12) < -11.902)
                  {
                    break;
                  }

                  if (v114 > 0x2BA)
                  {
                    break;
                  }

                  ++v114;
                  v117 = v115 == __p[1];
                  v115 += 12;
                }

                while (!v117);
              }

              v117 = v116 >= 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 4) || __p[0] + 48 * v116 == __p[1];
              if (!v117)
              {
                __p[1] = __p[0] + 48 * v116;
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v211[1] - v211[0]) >> 4) >= 0x2BD && v211[0] + 33600 != v211[1])
              {
                v211[1] = v211[0] + 33600;
              }

              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              *__p = *buf;
              v214 = *&buf[16];
              if (v211[0])
              {
                v211[1] = v211[0];
                operator delete(v211[0]);
              }

              *v211 = *buf;
              v212 = *&buf[16];
              *buf = *(16 * v50);
              v210 = 0uLL;
              v210 = *(__src + 2 * v50);
              [(CRFormDetector *)self _denormalizeResults:__p imageSize:buf translation:&v210];
              CRLogger = CRLogger::getCRLogger([(CRFormDetector *)self _denormalizeResults:v211 imageSize:buf translation:&v210]);
              if (*CRLogger == 1 && (CRLogger[8] & 0x10) != 0)
              {
                v120 = [v10 url];
                [v14 setUrl:v120];

                [objc_opt_class() _saveDebugImage:v14 byOverlayingResults:__p];
              }

              v62 = 0;
            }

            if (v211[0])
            {
              v211[1] = v211[0];
              operator delete(v211[0]);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v62)
            {
              goto LABEL_140;
            }

            if (++v50 >= ((v221 - __src) >> 5))
            {
              if ((v221 - __src) >= 0x21)
              {
                v122 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((__dst[1] - __dst[0]) >> 4));
                if (__dst[1] == __dst[0])
                {
                  v123 = 0;
                }

                else
                {
                  v123 = v122;
                }

                v125 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v216[1] - v216[0]) >> 4));
                if (v216[1] == v216[0])
                {
                  v126 = 0;
                }

                else
                {
                  v126 = v125;
                }
              }

              break;
            }
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v216[1] - v216[0]) >> 4) >= 0x12D && v216[0] + 14400 != v216[1])
        {
          v216[1] = v216[0] + 14400;
        }

        if (__dst[0])
        {
          __dst[1] = __dst[0];
          operator delete(__dst[0]);
        }

        *__dst = *buf;
        v219 = *&buf[16];
        v127 = v216[0];
        if (v216[0])
        {
          v216[1] = v216[0];
          operator delete(v216[0]);
        }

        *v216 = *buf;
        v217 = *&buf[16];
        v128 = CRLogger::getCRLogger(v127);
        if (*v128 == 1 && (v128[8] & 0x10) != 0)
        {
          v129 = [v10 url];
          [v14 setUrl:v129];

          [objc_opt_class() _saveDebugImage:v14 byOverlayingResults:__dst];
        }

        v130 = [v10 width];
        v131 = [v10 height];
        v132 = [v14 width];
        v133 = [v14 height];
        v134 = v130;
        v135 = [objc_opt_class() _detectorResultsFromSortedResults:__dst imageSize:v132 originalImageSize:{v133, v130, v131}];
        if (a5)
        {
          *a5 = [objc_opt_class() _detectorResultsFromSortedResults:v216 imageSize:v132 originalImageSize:{v133, v134, v131}];
        }

        v45 = v135;
        v198 = v45;
LABEL_139:

LABEL_140:
        goto LABEL_141;
      }

      v45 = CROSLogForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        v138 = __src;
        v137 = v221;
        v139 = [v199 count];
        *buf = 134218240;
        *&buf[4] = (v137 - v138) >> 5;
        *&buf[12] = 2048;
        *&buf[14] = v139;
        _os_log_impl(&dword_1B40D2000, v45, OS_LOG_TYPE_FAULT, "Form detection inference error, expected %ld outputs, got %ld.", buf, 0x16u);
      }
    }

    v198 = 0;
    goto LABEL_139;
  }

  v28 = 0;
  v29 = 0;
  v30 = 8;
  while (1)
  {
    v31 = [v14 imageByCroppingRectangle:{*&v27[v28], *&v27[v28 + 8], *&v27[v28 + 16], *&v27[v28 + 24]}];
    v32 = [v31 width];
    v33 = [v31 height];
    *(v30 - 8) = v32;
    *v30 = v33;
    v34 = [(CRFormDetector *)self configuration];
    v35 = [v34 resizeInputImage];

    if (v35)
    {
      v36 = [v31 width];
      v37 = [v31 height];
      v38 = v37 >= v36 ? v36 : v37;
    }

    else
    {
      v39 = [v31 width];
      v40 = [v31 height];
      v38 = v39 <= v40 ? v40 : v39;
    }

    v41 = [v31 pixelBufferWithScale:640.0 / v38 paddedToSize:{640.0, 640.0}];
    if (!v41)
    {
      break;
    }

    v42 = [objc_opt_class() _multiArrayFromPixelBuffer:v41];
    CVPixelBufferRelease(v41);
    if (!v42)
    {

      v198 = 0;
      operator delete(0);
      goto LABEL_142;
    }

    v43 = [[CRFormDetectorModelInput alloc] initWithMLMultiArray:v42];
    [v203 addObject:v43];

    ++v29;
    v27 = __src;
    v30 += 16;
    v28 += 32;
    if (v29 >= (v221 - __src) >> 5)
    {
      goto LABEL_30;
    }
  }

  v136 = CROSLogForCategory(0);
  v196 = v136;
  if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v136, OS_LOG_TYPE_FAULT, "Error while creating buffer for form detection.", buf, 2u);
  }

  v198 = 0;
LABEL_141:

LABEL_142:
  if (v216[0])
  {
    v216[1] = v216[0];
    operator delete(v216[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (__src)
  {
    v221 = __src;
    operator delete(__src);
  }

  return v198;
}

- (double)detectFormFieldsInImage:(unint64_t)a3 document:(__n128 *)a4 outputCandidateResults:(uint64_t)a5
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = a2 - 3;
      a6.n128_u32[0] = a2[-3].n128_u32[0];
      if (a6.n128_f32[0] > *a1)
      {
        a6 = *a1;
        v9 = *(a1 + 16);
        v10 = *(a1 + 32);
        v12 = a2[-2];
        v11 = a2[-1];
        *a1 = *v8;
        *(a1 + 16) = v12;
        *(a1 + 32) = v11;
        a2[-2] = v9;
        a2[-1] = v10;
        *v8 = a6;
      }
    }

    else if (a3 > 128)
    {
      v23 = a4;
      v24 = a3 >> 1;
      v25 = (a1 + 48 * (a3 >> 1));
      v26 = a3 >> 1;
      if (a3 <= a5)
      {
        v29 = &v23[3 * v24];
        v30 = &v23[3 * a3];
        v31 = v29;
        while (v31 != v30)
        {
          if (v31->n128_f32[0] <= v23->n128_f32[0])
          {
            a6 = *v23;
            v33 = v23[2];
            *(v7 + 16) = v23[1];
            *(v7 + 32) = v33;
            *v7 = a6;
            v23 += 3;
          }

          else
          {
            a6 = *v31;
            v32 = v31[2];
            *(v7 + 16) = v31[1];
            *(v7 + 32) = v32;
            *v7 = a6;
            v31 += 3;
          }

          v7 += 48;
          if (v23 == v29)
          {
            while (v31 != v30)
            {
              a6 = *v31;
              v35 = v31[2];
              *(v7 + 16) = v31[1];
              *(v7 + 32) = v35;
              *v7 = a6;
              v7 += 48;
              v31 += 3;
            }

            return a6.n128_f64[0];
          }
        }

        while (v23 != v29)
        {
          a6 = *v23;
          v34 = v23[2];
          *(v7 + 16) = v23[1];
          *(v7 + 32) = v34;
          *v7 = a6;
          v7 += 48;
          v23 += 3;
        }
      }

      else
      {
      }
    }

    else if (a1 != a2)
    {
      v14 = (a1 + 48);
      if ((a1 + 48) != a2)
      {
        v15 = 0;
        v16 = a1;
        do
        {
          v17 = v14;
          a6.n128_u32[0] = *v14;
          if (*v14 > *v16)
          {
            v37 = *(v16 + 52);
            *v38 = *(v16 + 68);
            *&v38[12] = *(v16 + 80);
            v18 = v15;
            while (1)
            {
              v19 = (a1 + v18);
              v20 = *(a1 + v18 + 16);
              *(v19 + 3) = *(a1 + v18);
              *(v19 + 4) = v20;
              *(v19 + 5) = *(a1 + v18 + 32);
              if (!v18)
              {
                break;
              }

              v18 -= 48;
              if (a6.n128_f32[0] <= *(v19 - 12))
              {
                v21 = a1 + v18 + 48;
                goto LABEL_16;
              }
            }

            v21 = a1;
LABEL_16:
            *v21 = a6.n128_u32[0];
            *(v21 + 4) = v37;
            *(v21 + 20) = *v38;
            a6.n128_u64[0] = *&v38[12];
            *(v21 + 32) = *&v38[12];
          }

          v14 = &v17[3];
          v15 += 48;
          v16 = v17;
        }

        while (&v17[3] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

- (__n128)detectFormFieldsInImage:(unint64_t)a3 document:(__n128 *)a4 outputCandidateResults:(__n128)result
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v10 = a2 - 3;
      if (a2[-3].n128_f32[0] <= a1->n128_f32[0])
      {
        v27 = *a1;
        v28 = a1[2];
        a4[1] = a1[1];
        a4[2] = v28;
        *a4 = v27;
        result = *v10;
        v13 = a2[-2];
        v14 = a2[-1];
      }

      else
      {
        v11 = *v10;
        v12 = a2[-1];
        a4[1] = a2[-2];
        a4[2] = v12;
        *a4 = v11;
        result = *a1;
        v13 = a1[1];
        v14 = a1[2];
      }

      a4[4] = v13;
      a4[5] = v14;
      a4[3] = result;
    }

    else if (a3 == 1)
    {
      result = *a1;
      v9 = a1[2];
      a4[1] = a1[1];
      a4[2] = v9;
      *a4 = result;
    }

    else if (a3 > 8)
    {
      v29 = &a1[3 * (a3 >> 1)];
      v30 = &v8[3 * (a3 >> 1)];
      while (v30 != a2)
      {
        if (v30->n128_f32[0] <= v8->n128_f32[0])
        {
          result = *v8;
          v32 = v8[2];
          v5[1] = v8[1];
          v5[2] = v32;
          *v5 = result;
          v8 += 3;
        }

        else
        {
          result = *v30;
          v31 = v30[2];
          v5[1] = v30[1];
          v5[2] = v31;
          *v5 = result;
          v30 += 3;
        }

        v5 += 3;
        if (v8 == v29)
        {
          while (v30 != a2)
          {
            result = *v30;
            v34 = v30[2];
            v5[1] = v30[1];
            v5[2] = v34;
            *v5 = result;
            v5 += 3;
            v30 += 3;
          }

          return result;
        }
      }

      while (v8 != v29)
      {
        result = *v8;
        v33 = v8[2];
        v5[1] = v8[1];
        v5[2] = v33;
        *v5 = result;
        v5 += 3;
        v8 += 3;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v15 = a1[2];
      a4[1] = a1[1];
      a4[2] = v15;
      *a4 = result;
      v16 = a1 + 3;
      if (&a1[3] != a2)
      {
        v17 = 0;
        v18 = a4;
        v19 = a4;
        do
        {
          v20 = v19->n128_f32[0];
          v19 += 3;
          if (v16->n128_f32[0] <= v20)
          {
            result = *v16;
            v26 = v16[2];
            v19[1] = v16[1];
            v19[2] = v26;
            *v19 = result;
          }

          else
          {
            v21 = v18[1];
            *v19 = *v18;
            v19[1] = v21;
            v19[2] = v18[2];
            v22 = a4;
            if (v18 != a4)
            {
              v23 = v17;
              while (1)
              {
                v22 = (a4 + v23);
                if (v16->n128_f32[0] <= *(a4[-3].n128_f32 + v23))
                {
                  break;
                }

                v24 = *(a4 + v23 - 32);
                *v22 = *(a4 + v23 - 48);
                v22[1] = v24;
                v22[2] = *(a4 + v23 - 16);
                v23 -= 48;
                if (!v23)
                {
                  v22 = a4;
                  break;
                }
              }
            }

            result = *v16;
            v25 = v16[2];
            v22[1] = v16[1];
            v22[2] = v25;
            *v22 = result;
          }

          v16 += 3;
          v17 += 48;
          v18 = v19;
        }

        while (v16 != a2);
      }
    }
  }

  return result;
}

- (__n128)detectFormFieldsInImage:(char *)a3 document:(uint64_t)a4 outputCandidateResults:(uint64_t)a5
{
  if (a5)
  {
    v10 = a5;
    while (a4 > a7 && v10 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = 0;
      result.n128_u32[0] = *a2;
      v14 = -a4;
      while (result.n128_f32[0] <= *&a1[v13])
      {
        v13 += 48;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v64 = a3;
      __src = a6;
      v62 = &a1[v13];
      v63 = a7;
      if (-v14 >= v10)
      {
        if (v14 == -1)
        {
          v54 = &a1[v13];
          v67 = *&a1[v13 + 16];
          v68 = *&a1[v13 + 32];
          v66 = *&a1[v13];
          v55 = *a2;
          v56 = *(a2 + 2);
          *(v54 + 1) = *(a2 + 1);
          *(v54 + 2) = v56;
          *v54 = v55;
          *a2 = v66;
          *(a2 + 1) = v67;
          result = v68;
          *(a2 + 2) = v68;
          return result;
        }

        v24 = -v14 / 2;
        v17 = a2;
        if (a2 != a3)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
          v17 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = &v17[48 * (v25 >> 1)];
            v29 = *v27;
            v28 = (v27 + 12);
            v25 += ~(v25 >> 1);
            if (v29 > *&a1[48 * v24 + v13])
            {
              v17 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - a2) >> 4);
        v18 = &a1[48 * v24 + v13];
      }

      else
      {
        v16 = v10 / 2;
        v17 = &a2[48 * (v10 / 2)];
        v18 = a2;
        if (a2 - a1 != v13)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v13) >> 4);
          v18 = &a1[v13];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[48 * (v19 >> 1)];
            v23 = *v21;
            v22 = (v21 + 12);
            v19 += ~(v19 >> 1);
            if (*v17 > v23)
            {
              v19 = v20;
            }

            else
            {
              v18 = v22;
            }
          }

          while (v19);
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a1 - v13) >> 4);
      }

      a4 = -v14 - v24;
      v30 = v10 - v16;
      v31 = v16;
      v33 = v31;
      v34 = v32;
      if (v24 + v33 >= v10 - (v24 + v33) - v14)
      {
        v37 = v33;
        v17 = v18;
        a7 = v63;
        v30 = v37;
        a4 = v24;
        a6 = __src;
        a3 = v34;
        a1 = v62;
      }

      else
      {
        v35 = v18;
        v36 = v24;
        a6 = __src;
        a7 = v63;
        a1 = v34;
        a3 = v64;
      }

      v10 = v30;
      a2 = v17;
      if (!v30)
      {
        return result;
      }
    }

    if (a4 <= v10)
    {
      if (a2 != a1)
      {
        v47 = -a6;
        v48 = a6;
        v49 = a1;
        do
        {
          v50 = *v49;
          v51 = *(v49 + 2);
          v48[1] = *(v49 + 1);
          v48[2] = v51;
          *v48 = v50;
          v48 += 3;
          v49 += 48;
          v47 -= 48;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          if (*a2 <= a6->n128_f32[0])
          {
            result = *a6;
            v53 = a6[2];
            *(a1 + 1) = a6[1];
            *(a1 + 2) = v53;
            *a1 = result;
            a6 += 3;
          }

          else
          {
            result = *a2;
            v52 = *(a2 + 2);
            *(a1 + 1) = *(a2 + 1);
            *(a1 + 2) = v52;
            *a1 = result;
            a2 += 48;
          }

          a1 += 48;
          if (v48 == a6)
          {
            return result;
          }
        }

        memmove(a1, a6, -(a6 + v47));
      }
    }

    else if (a2 != a3)
    {
      v38 = 0;
      do
      {
        v39 = &a6[v38 / 0x10];
        result = *&a2[v38];
        v40 = *&a2[v38 + 32];
        v39[1] = *&a2[v38 + 16];
        v39[2] = v40;
        *v39 = result;
        v38 += 48;
      }

      while (&a2[v38] != a3);
      v41 = &a6[v38 / 0x10];
      while (a2 != a1)
      {
        v42 = v41[-3].n128_f32[0];
        v43 = *(a2 - 12);
        v44 = v42 <= v43;
        if (v42 <= v43)
        {
          v45 = &v41[-3];
        }

        else
        {
          v45 = a2 - 48;
        }

        result = *v45;
        v46 = *(v45 + 2);
        *(a3 - 2) = *(v45 + 1);
        *(a3 - 1) = v46;
        *(a3 - 3) = result;
        a3 -= 48;
        if (v44)
        {
          v41 -= 3;
        }

        else
        {
          a2 -= 48;
        }

        if (v41 == a6)
        {
          return result;
        }
      }

      if (v41 != a6)
      {
        v57 = -48;
        do
        {
          result = v41[-3];
          v58 = v41[-2];
          v59 = v41[-1];
          v60 = v41 - 3;
          v61 = &a3[v57];
          *(v61 + 1) = v58;
          *(v61 + 2) = v59;
          *v61 = result;
          v57 -= 48;
          v41 = v60;
        }

        while (v60 != a6);
      }
    }
  }

  return result;
}

- (double)detectFormFieldsInImage:(uint64_t)a3 document:(char)a4 outputCandidateResults:(__n128)a5
{
LABEL_1:
  v9 = (a2 - 48);
  v10 = (a2 - 96);
  v11 = (a2 - 144);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v14 == 2)
      {
        v122 = *(a2 - 48);
        v121 = (a2 - 48);
        a5.n128_f32[0] = v122;
        if (v122 <= *v12)
        {
          return a5.n128_f64[0];
        }

LABEL_106:
        v259 = *(v12 + 16);
        v290 = *(v12 + 32);
        v226 = *v12;
        v126 = *v121;
        v127 = v121[2];
        *(v12 + 16) = v121[1];
        *(v12 + 32) = v127;
        *v12 = v126;
        a5 = v226;
        v128 = v259;
        v129 = v290;
LABEL_107:
        v121[1] = v128;
        v121[2] = v129;
        *v121 = a5;
        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v123 = (v12 + 48);
      v130 = *(v12 + 48);
      v131 = (v12 + 96);
      v132 = *(v12 + 96);
      if (v130 <= *v12)
      {
        if (v132 > v130)
        {
          v178 = *(v12 + 64);
          a5 = *(v12 + 80);
          v179 = *v123;
          v180 = *(v12 + 112);
          *v123 = *v131;
          *(v12 + 64) = v180;
          *(v12 + 80) = *(v12 + 128);
          *v131 = v179;
          *(v12 + 112) = v178;
          *(v12 + 128) = a5;
          if (*(v12 + 48) > *v12)
          {
            v265 = *(v12 + 16);
            v293 = *(v12 + 32);
            v231 = *v12;
            v181 = *(v12 + 64);
            *v12 = *v123;
            *(v12 + 16) = v181;
            *(v12 + 32) = *(v12 + 80);
            *v123 = v231;
            *(v12 + 64) = v265;
            a5.n128_u32[1] = v293.n128_u32[1];
            *(v12 + 80) = v293;
          }
        }
      }

      else
      {
        if (v132 > v130)
        {
          v260 = *(v12 + 16);
          v291 = *(v12 + 32);
          v227 = *v12;
          v133 = *(v12 + 112);
          *v12 = *v131;
          *(v12 + 16) = v133;
          *(v12 + 32) = *(v12 + 128);
          *v131 = v227;
          *(v12 + 112) = v260;
          a5 = v291;
          goto LABEL_177;
        }

        v268 = *(v12 + 16);
        v295 = *(v12 + 32);
        v234 = *v12;
        v189 = *(v12 + 64);
        *v12 = *v123;
        *(v12 + 16) = v189;
        *(v12 + 32) = *(v12 + 80);
        *v123 = v234;
        *(v12 + 64) = v268;
        *(v12 + 80) = v295;
        if (v132 > *(v12 + 48))
        {
          v190 = *(v12 + 64);
          a5 = *(v12 + 80);
          v191 = *v123;
          v192 = *(v12 + 112);
          *v123 = *v131;
          *(v12 + 64) = v192;
          *(v12 + 80) = *(v12 + 128);
          *v131 = v191;
          *(v12 + 112) = v190;
LABEL_177:
          *(v12 + 128) = a5;
        }
      }

      a5.n128_u32[0] = *v9;
      if (*v9 <= v131->n128_f32[0])
      {
        return a5.n128_f64[0];
      }

      a5 = *v131;
      v269 = *(v12 + 112);
      v193 = *(v12 + 128);
      v194 = *v9;
      v195 = *(a2 - 16);
      *(v12 + 112) = *(a2 - 32);
      *(v12 + 128) = v195;
      *v131 = v194;
      *(a2 - 32) = v269;
      *(a2 - 16) = v193;
      *v9 = a5;
      a5.n128_u32[0] = v131->n128_u32[0];
      if (v131->n128_f32[0] <= v123->n128_f32[0])
      {
        return a5.n128_f64[0];
      }

      v196 = *(v12 + 64);
      a5 = *(v12 + 80);
      v197 = *v123;
      v198 = *(v12 + 112);
      *v123 = *v131;
      *(v12 + 64) = v198;
      *(v12 + 80) = *(v12 + 128);
      *v131 = v197;
      *(v12 + 112) = v196;
      *(v12 + 128) = a5;
LABEL_181:
      a5.n128_u32[0] = *(v12 + 48);
      if (a5.n128_f32[0] > *v12)
      {
        v270 = *(v12 + 16);
        v296 = *(v12 + 32);
        v235 = *v12;
        v199 = v123[1];
        *v12 = *v123;
        *(v12 + 16) = v199;
        *(v12 + 32) = v123[2];
        *v123 = v235;
        v123[1] = v270;
        a5.n128_u64[0] = v296.n128_u64[0];
        v123[2] = v296;
      }

      return a5.n128_f64[0];
    }

    if (v14 == 5)
    {

      return a5.n128_f64[0];
    }

LABEL_9:
    if (v13 <= 1151)
    {
      v134 = (v12 + 48);
      v136 = v12 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v12;
          do
          {
            v139 = v134;
            a5.n128_u32[0] = *(v138 + 48);
            if (a5.n128_f32[0] > *v138)
            {
              v228 = *(v138 + 52);
              *v261 = *(v138 + 68);
              *&v261[12] = *(v138 + 80);
              v140 = v137;
              while (1)
              {
                v141 = (v12 + v140);
                v142 = *(v12 + v140 + 16);
                *(v141 + 3) = *(v12 + v140);
                *(v141 + 4) = v142;
                *(v141 + 5) = *(v12 + v140 + 32);
                if (!v140)
                {
                  break;
                }

                v140 -= 48;
                if (a5.n128_f32[0] <= *(v141 - 12))
                {
                  v143 = v12 + v140 + 48;
                  goto LABEL_126;
                }
              }

              v143 = v12;
LABEL_126:
              *v143 = a5.n128_u32[0];
              a5.n128_u64[0] = v228;
              *(v143 + 32) = *&v261[12];
              *(v143 + 20) = *v261;
              *(v143 + 4) = v228;
            }

            v134 = v139 + 3;
            v137 += 48;
            v138 = v139;
          }

          while (v139 + 3 != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v182 = v134;
          a5.n128_u32[0] = *(a1 + 48);
          if (a5.n128_f32[0] > *a1)
          {
            v232 = *(a1 + 52);
            *v266 = *(a1 + 68);
            *&v266[12] = *(a1 + 80);
            v183 = v134;
            do
            {
              v184 = *(v183 - 2);
              *v183 = *(v183 - 3);
              v183[1] = v184;
              v183[2] = *(v183 - 1);
              v185 = *(v183 - 24);
              v183 -= 3;
            }

            while (a5.n128_f32[0] > v185);
            *v183 = a5.n128_u32[0];
            a5.n128_u64[0] = v232;
            v183[2] = *&v266[12];
            *(v183 + 20) = *v266;
            *(v183 + 4) = v232;
          }

          v134 += 3;
          a1 = v182;
        }

        while (v182 + 48 != a2);
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v144 = (v14 - 2) >> 1;
        v145 = v144;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = v12 + 48 * v147;
            if (2 * v146 + 2 < v14 && *v148 > *(v148 + 48))
            {
              v148 += 48;
              v147 = 2 * v146 + 2;
            }

            v149 = v12 + 48 * v146;
            v150 = *v149;
            if (*v148 <= *v149)
            {
              *&v262[12] = *(v149 + 32);
              v229 = *(v149 + 4);
              *v262 = *(v149 + 20);
              do
              {
                v151 = v149;
                v149 = v148;
                v152 = *v148;
                v153 = *(v148 + 32);
                v151[1] = *(v148 + 16);
                v151[2] = v153;
                *v151 = v152;
                if (v144 < v147)
                {
                  break;
                }

                v154 = 2 * v147;
                v147 = (2 * v147) | 1;
                v148 = v12 + 48 * v147;
                v155 = v154 + 2;
                if (v155 < v14 && *v148 > *(v148 + 48))
                {
                  v148 += 48;
                  v147 = v155;
                }
              }

              while (*v148 <= v150);
              *v149 = v150;
              *(v149 + 32) = *&v262[12];
              *(v149 + 20) = *v262;
              *(v149 + 4) = v229;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        v156 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        do
        {
          v157 = 0;
          v263 = *(v12 + 16);
          v292 = *(v12 + 32);
          v230 = *v12;
          v158 = v12;
          do
          {
            v159 = v158;
            v160 = &v158[3 * v157];
            v158 = v160 + 3;
            v161 = 2 * v157;
            v157 = (2 * v157) | 1;
            v162 = v161 + 2;
            if (v162 < v156)
            {
              v164 = *(v160 + 24);
              v163 = v160 + 6;
              if (*(v163 - 12) > v164)
              {
                v158 = v163;
                v157 = v162;
              }
            }

            v165 = *v158;
            v166 = *(v158 + 2);
            v159[1] = *(v158 + 1);
            v159[2] = v166;
            *v159 = v165;
          }

          while (v157 <= ((v156 - 2) >> 1));
          a2 -= 48;
          if (v158 == a2)
          {
            a5.n128_u64[0] = v230.n128_u64[0];
            v158[1] = v263;
            v158[2] = v292;
            *v158 = v230;
          }

          else
          {
            a5 = *a2;
            v167 = *(a2 + 32);
            v158[1] = *(a2 + 16);
            v158[2] = v167;
            *v158 = a5;
            a5.n128_u64[0] = v230.n128_u64[0];
            *(a2 + 16) = v263;
            *(a2 + 32) = v292;
            *a2 = v230;
            v168 = v158 - v12 + 48;
            if (v168 >= 49)
            {
              v169 = (-2 - 0x5555555555555555 * (v168 >> 4)) >> 1;
              v170 = (v12 + 48 * v169);
              a5.n128_u32[0] = *v158;
              if (*v170 > *v158)
              {
                *&v206[12] = v158[2];
                v203 = *(v158 + 4);
                *v206 = *(v158 + 20);
                do
                {
                  v171 = v158;
                  v158 = v170;
                  v172 = *v170;
                  v173 = v170[2];
                  v171[1] = v170[1];
                  v171[2] = v173;
                  *v171 = v172;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = (v12 + 48 * v169);
                }

                while (*v170 > a5.n128_f32[0]);
                *v158 = a5.n128_u32[0];
                a5.n128_u64[0] = v203;
                v158[2] = *&v206[12];
                *(v158 + 20) = *v206;
                *(v158 + 4) = v203;
              }
            }
          }
        }

        while (v156-- > 2);
      }

      return a5.n128_f64[0];
    }

    v15 = v14 >> 1;
    v16 = v12 + 48 * (v14 >> 1);
    v17 = *v9;
    if (v13 >= 0x1801)
    {
      v18 = *v16;
      if (*v16 <= *v12)
      {
        if (v17 > v18)
        {
          v238 = *(v16 + 16);
          v273 = *(v16 + 32);
          v209 = *v16;
          v24 = *v9;
          v25 = *(a2 - 16);
          *(v16 + 16) = *(a2 - 32);
          *(v16 + 32) = v25;
          *v16 = v24;
          *(a2 - 32) = v238;
          *(a2 - 16) = v273;
          *v9 = v209;
          if (*v16 > *v12)
          {
            v239 = *(v12 + 16);
            v274 = *(v12 + 32);
            v210 = *v12;
            v26 = *v16;
            v27 = *(v16 + 32);
            *(v12 + 16) = *(v16 + 16);
            *(v12 + 32) = v27;
            *v12 = v26;
            *(v16 + 16) = v239;
            *(v16 + 32) = v274;
            *v16 = v210;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v236 = *(v12 + 16);
          v271 = *(v12 + 32);
          v207 = *v12;
          v19 = *v9;
          v20 = *(a2 - 16);
          *(v12 + 16) = *(a2 - 32);
          *(v12 + 32) = v20;
          *v12 = v19;
          goto LABEL_26;
        }

        v242 = *(v12 + 16);
        v277 = *(v12 + 32);
        v213 = *v12;
        v32 = *v16;
        v33 = *(v16 + 32);
        *(v12 + 16) = *(v16 + 16);
        *(v12 + 32) = v33;
        *v12 = v32;
        *(v16 + 16) = v242;
        *(v16 + 32) = v277;
        *v16 = v213;
        if (*v9 > *v16)
        {
          v236 = *(v16 + 16);
          v271 = *(v16 + 32);
          v207 = *v16;
          v34 = *v9;
          v35 = *(a2 - 16);
          *(v16 + 16) = *(a2 - 32);
          *(v16 + 32) = v35;
          *v16 = v34;
LABEL_26:
          *(a2 - 32) = v236;
          *(a2 - 16) = v271;
          *v9 = v207;
        }
      }

      v36 = (v12 + 48);
      v37 = v12 + 48 * v15;
      v39 = *(v37 - 48);
      v38 = (v37 - 48);
      v40 = v39;
      v41 = *v10;
      if (v39 <= *(v12 + 48))
      {
        if (v41 > v40)
        {
          v243 = v38[1];
          v278 = v38[2];
          v214 = *v38;
          v47 = *v10;
          v48 = *(a2 - 64);
          v38[1] = *(a2 - 80);
          v38[2] = v48;
          *v38 = v47;
          *(a2 - 80) = v243;
          *(a2 - 64) = v278;
          *v10 = v214;
          if (v38->n128_f32[0] > *v36)
          {
            v49 = *v36;
            v244 = *(v12 + 64);
            v50 = *(v12 + 80);
            v51 = *v38;
            v52 = v38[2];
            *(v12 + 64) = v38[1];
            *(v12 + 80) = v52;
            *v36 = v51;
            v38[1] = v244;
            v38[2] = v50;
            *v38 = v49;
          }
        }
      }

      else
      {
        if (v41 > v40)
        {
          v42 = *v36;
          v43 = *(v12 + 64);
          v44 = *(v12 + 80);
          v45 = *v10;
          v46 = *(a2 - 64);
          *(v12 + 64) = *(a2 - 80);
          *(v12 + 80) = v46;
          *v36 = v45;
          goto LABEL_38;
        }

        v57 = *v36;
        v246 = *(v12 + 64);
        v58 = *(v12 + 80);
        v59 = *v38;
        v60 = v38[2];
        *(v12 + 64) = v38[1];
        *(v12 + 80) = v60;
        *v36 = v59;
        v38[1] = v246;
        v38[2] = v58;
        *v38 = v57;
        if (*v10 > v38->n128_f32[0])
        {
          v247 = v38[1];
          v280 = v38[2];
          v216 = *v38;
          v61 = *v10;
          v62 = *(a2 - 64);
          v38[1] = *(a2 - 80);
          v38[2] = v62;
          *v38 = v61;
          v42 = v216;
          v43 = v247;
          v44 = v280;
LABEL_38:
          *(a2 - 80) = v43;
          *(a2 - 64) = v44;
          *v10 = v42;
        }
      }

      v63 = (v12 + 96);
      v64 = v12 + 48 * v15;
      v66 = *(v64 + 48);
      v65 = (v64 + 48);
      v67 = v66;
      v68 = *v11;
      if (v66 <= *(v12 + 96))
      {
        if (v68 > v67)
        {
          v248 = v65[1];
          v281 = v65[2];
          v217 = *v65;
          v74 = *v11;
          v75 = *(a2 - 112);
          v65[1] = *(a2 - 128);
          v65[2] = v75;
          *v65 = v74;
          *(a2 - 128) = v248;
          *(a2 - 112) = v281;
          *v11 = v217;
          if (v65->n128_f32[0] > *v63)
          {
            v76 = *v63;
            v249 = *(v12 + 112);
            v77 = *(v12 + 128);
            v78 = *v65;
            v79 = v65[2];
            *(v12 + 112) = v65[1];
            *(v12 + 128) = v79;
            *v63 = v78;
            v65[1] = v249;
            v65[2] = v77;
            *v65 = v76;
          }
        }
      }

      else
      {
        if (v68 > v67)
        {
          v69 = *v63;
          v70 = *(v12 + 112);
          v71 = *(v12 + 128);
          v72 = *v11;
          v73 = *(a2 - 112);
          *(v12 + 112) = *(a2 - 128);
          *(v12 + 128) = v73;
          *v63 = v72;
          goto LABEL_47;
        }

        v80 = *v63;
        v250 = *(v12 + 112);
        v81 = *(v12 + 128);
        v82 = *v65;
        v83 = v65[2];
        *(v12 + 112) = v65[1];
        *(v12 + 128) = v83;
        *v63 = v82;
        v65[1] = v250;
        v65[2] = v81;
        *v65 = v80;
        if (*v11 > v65->n128_f32[0])
        {
          v251 = v65[1];
          v282 = v65[2];
          v218 = *v65;
          v84 = *v11;
          v85 = *(a2 - 112);
          v65[1] = *(a2 - 128);
          v65[2] = v85;
          *v65 = v84;
          v69 = v218;
          v70 = v251;
          v71 = v282;
LABEL_47:
          *(a2 - 128) = v70;
          *(a2 - 112) = v71;
          *v11 = v69;
        }
      }

      v86 = *v16;
      v87 = v65->n128_f32[0];
      if (*v16 <= v38->n128_f32[0])
      {
        if (v87 > v86)
        {
          v253 = *(v16 + 16);
          v284 = *(v16 + 32);
          v220 = *v16;
          v89 = v65[1];
          *v16 = *v65;
          *(v16 + 16) = v89;
          *(v16 + 32) = v65[2];
          v65[1] = v253;
          v65[2] = v284;
          *v65 = v220;
          if (*v16 > v38->n128_f32[0])
          {
            v254 = v38[1];
            v285 = v38[2];
            v221 = *v38;
            v90 = *(v16 + 16);
            *v38 = *v16;
            v38[1] = v90;
            v38[2] = *(v16 + 32);
            *(v16 + 16) = v254;
            *(v16 + 32) = v285;
            *v16 = v221;
          }
        }
      }

      else
      {
        if (v87 > v86)
        {
          v252 = v38[1];
          v283 = v38[2];
          v219 = *v38;
          v88 = v65[1];
          *v38 = *v65;
          v38[1] = v88;
          v38[2] = v65[2];
          goto LABEL_56;
        }

        v255 = v38[1];
        v286 = v38[2];
        v222 = *v38;
        v91 = *(v16 + 16);
        *v38 = *v16;
        v38[1] = v91;
        v38[2] = *(v16 + 32);
        *(v16 + 16) = v255;
        *(v16 + 32) = v286;
        *v16 = v222;
        if (v65->n128_f32[0] > *v16)
        {
          v252 = *(v16 + 16);
          v283 = *(v16 + 32);
          v219 = *v16;
          v92 = v65[1];
          *v16 = *v65;
          *(v16 + 16) = v92;
          *(v16 + 32) = v65[2];
LABEL_56:
          v65[1] = v252;
          v65[2] = v283;
          *v65 = v219;
        }
      }

      v256 = *(v12 + 16);
      v287 = *(v12 + 32);
      v223 = *v12;
      v93 = *v16;
      v94 = *(v16 + 32);
      *(v12 + 16) = *(v16 + 16);
      *(v12 + 32) = v94;
      *v12 = v93;
      *(v16 + 16) = v256;
      *(v16 + 32) = v287;
      *v16 = v223;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 <= *v16)
    {
      if (v17 > v21)
      {
        v240 = *(v12 + 16);
        v275 = *(v12 + 32);
        v211 = *v12;
        v28 = *v9;
        v29 = *(a2 - 16);
        *(v12 + 16) = *(a2 - 32);
        *(v12 + 32) = v29;
        *v12 = v28;
        *(a2 - 32) = v240;
        *(a2 - 16) = v275;
        *v9 = v211;
        if (*v12 > *v16)
        {
          v241 = *(v16 + 16);
          v276 = *(v16 + 32);
          v212 = *v16;
          v30 = *v12;
          v31 = *(v12 + 32);
          *(v16 + 16) = *(v12 + 16);
          *(v16 + 32) = v31;
          *v16 = v30;
          *(v12 + 16) = v241;
          *(v12 + 32) = v276;
          *v12 = v212;
        }
      }

      goto LABEL_58;
    }

    if (v17 <= v21)
    {
      v245 = *(v16 + 16);
      v279 = *(v16 + 32);
      v215 = *v16;
      v53 = *v12;
      v54 = *(v12 + 32);
      *(v16 + 16) = *(v12 + 16);
      *(v16 + 32) = v54;
      *v16 = v53;
      *(v12 + 16) = v245;
      *(v12 + 32) = v279;
      *v12 = v215;
      if (*v9 <= *v12)
      {
        goto LABEL_58;
      }

      v237 = *(v12 + 16);
      v272 = *(v12 + 32);
      v208 = *v12;
      v55 = *v9;
      v56 = *(a2 - 16);
      *(v12 + 16) = *(a2 - 32);
      *(v12 + 32) = v56;
      *v12 = v55;
    }

    else
    {
      v237 = *(v16 + 16);
      v272 = *(v16 + 32);
      v208 = *v16;
      v22 = *v9;
      v23 = *(a2 - 16);
      *(v16 + 16) = *(a2 - 32);
      *(v16 + 32) = v23;
      *v16 = v22;
    }

    *(a2 - 32) = v237;
    *(a2 - 16) = v272;
    *v9 = v208;
LABEL_58:
    --a3;
    v95 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 48) > v95)
    {
      v96 = 0;
      *&v204[12] = *(v12 + 32);
      v201 = *(v12 + 4);
      *v204 = *(v12 + 20);
      do
      {
        v97 = *(v12 + v96 + 48);
        v96 += 48;
      }

      while (v97 > v95);
      v98 = v12 + v96;
      v99 = a2;
      if (v96 == 48)
      {
        v99 = a2;
        do
        {
          if (v98 >= v99)
          {
            break;
          }

          v101 = *(v99 - 12);
          v99 -= 12;
        }

        while (v101 <= v95);
      }

      else
      {
        do
        {
          v100 = *(v99 - 12);
          v99 -= 12;
        }

        while (v100 <= v95);
      }

      v12 += v96;
      if (v98 < v99)
      {
        v102 = v99;
        do
        {
          v257 = *(v12 + 16);
          v288 = *(v12 + 32);
          v224 = *v12;
          v103 = *v102;
          v104 = *(v102 + 2);
          *(v12 + 16) = *(v102 + 1);
          *(v12 + 32) = v104;
          *v12 = v103;
          *(v102 + 1) = v257;
          *(v102 + 2) = v288;
          *v102 = v224;
          do
          {
            v105 = *(v12 + 48);
            v12 += 48;
          }

          while (v105 > v95);
          do
          {
            v106 = *(v102 - 12);
            v102 -= 12;
          }

          while (v106 <= v95);
        }

        while (v12 < v102);
      }

      if (v12 - 48 != a1)
      {
        v107 = *(v12 - 48);
        v108 = *(v12 - 16);
        *(a1 + 16) = *(v12 - 32);
        *(a1 + 32) = v108;
        *a1 = v107;
      }

      *(v12 - 48) = v95;
      *(v12 - 16) = *&v204[12];
      *(v12 - 28) = *v204;
      *(v12 - 44) = v201;
      if (v98 < v99)
      {
        goto LABEL_79;
      }

      {
        a2 = v12 - 48;
        if (!v109)
        {
          goto LABEL_1;
        }

        return a5.n128_f64[0];
      }

      if (!v109)
      {
LABEL_79:
        a4 = 0;
      }
    }

    else
    {
      *&v205[12] = *(v12 + 32);
      v202 = *(v12 + 4);
      *v205 = *(v12 + 20);
      if (v95 <= *v9)
      {
        v112 = v12 + 48;
        do
        {
          v12 = v112;
          if (v112 >= a2)
          {
            break;
          }

          v112 += 48;
        }

        while (v95 <= *v12);
      }

      else
      {
        do
        {
          v111 = *(v12 + 48);
          v12 += 48;
        }

        while (v95 <= v111);
      }

      v113 = a2;
      if (v12 < a2)
      {
        v113 = a2;
        do
        {
          v114 = *(v113 - 12);
          v113 -= 12;
        }

        while (v95 > v114);
      }

      while (v12 < v113)
      {
        v258 = *(v12 + 16);
        v289 = *(v12 + 32);
        v225 = *v12;
        v115 = *v113;
        v116 = *(v113 + 2);
        *(v12 + 16) = *(v113 + 1);
        *(v12 + 32) = v116;
        *v12 = v115;
        *(v113 + 1) = v258;
        *(v113 + 2) = v289;
        *v113 = v225;
        do
        {
          v117 = *(v12 + 48);
          v12 += 48;
        }

        while (v95 <= v117);
        do
        {
          v118 = *(v113 - 12);
          v113 -= 12;
        }

        while (v95 > v118);
      }

      if (v12 - 48 != a1)
      {
        v119 = *(v12 - 48);
        v120 = *(v12 - 16);
        *(a1 + 16) = *(v12 - 32);
        *(a1 + 32) = v120;
        *a1 = v119;
      }

      a4 = 0;
      *(v12 - 48) = v95;
      a5 = v202;
      *(v12 - 16) = *&v205[12];
      *(v12 - 28) = *v205;
      *(v12 - 44) = v202;
    }
  }

  v123 = (v12 + 48);
  a5.n128_u32[0] = *(v12 + 48);
  v124 = *(a2 - 48);
  v121 = (a2 - 48);
  v125 = v124;
  if (a5.n128_f32[0] <= *v12)
  {
    if (v125 <= a5.n128_f32[0])
    {
      return a5.n128_f64[0];
    }

    a5 = *v123;
    v264 = *(v12 + 64);
    v175 = *(v12 + 80);
    v176 = *v121;
    v177 = v121[2];
    *(v12 + 64) = v121[1];
    *(v12 + 80) = v177;
    *v123 = v176;
    v121[1] = v264;
    v121[2] = v175;
    *v121 = a5;
    goto LABEL_181;
  }

  if (v125 > a5.n128_f32[0])
  {
    goto LABEL_106;
  }

  v267 = *(v12 + 16);
  v294 = *(v12 + 32);
  v233 = *v12;
  v186 = *(v12 + 64);
  *v12 = *v123;
  *(v12 + 16) = v186;
  *(v12 + 32) = *(v12 + 80);
  *v123 = v233;
  *(v12 + 64) = v267;
  a5.n128_u32[1] = v294.n128_u32[1];
  *(v12 + 80) = v294;
  a5.n128_u32[0] = v121->n128_u32[0];
  if (v121->n128_f32[0] > *(v12 + 48))
  {
    a5 = *v123;
    v128 = *(v12 + 64);
    v129 = *(v12 + 80);
    v187 = *v121;
    v188 = v121[2];
    *(v12 + 64) = v121[1];
    *(v12 + 80) = v188;
    *v123 = v187;
    goto LABEL_107;
  }

  return a5.n128_f64[0];
}

@end