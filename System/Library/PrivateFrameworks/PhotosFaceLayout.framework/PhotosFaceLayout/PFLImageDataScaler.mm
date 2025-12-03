@interface PFLImageDataScaler
- (CGRect)inputCrop;
- (CGSize)inputSize;
- (CGSize)outputSize;
- (PFLImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(unsigned int)orientation type:(id)type outputSize:(CGSize)outputSize;
- (void)cropAndScaleWithCompletion:(id)completion;
@end

@implementation PFLImageDataScaler

- (PFLImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(unsigned int)orientation type:(id)type outputSize:(CGSize)outputSize
{
  height = outputSize.height;
  width = outputSize.width;
  v13 = crop.size.height;
  v14 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v17 = size.height;
  v18 = size.width;
  dataCopy = data;
  typeCopy = type;
  v33.receiver = self;
  v33.super_class = PFLImageDataScaler;
  v22 = [(PFLImageDataScaler *)&v33 init];
  v23 = v22;
  if (v22)
  {
    v22->_inputSize.width = v18;
    v22->_inputSize.height = v17;
    v22->_inputCrop.origin.x = x;
    v22->_inputCrop.origin.y = y;
    v22->_inputCrop.size.width = v14;
    v22->_inputCrop.size.height = v13;
    objc_storeStrong(&v22->_data, data);
    v23->_orientation = orientation;
    objc_storeStrong(&v23->_type, type);
    v23->_outputSize.width = width;
    v23->_outputSize.height = height;
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    identifier2 = [*MEMORY[0x277CE1D90] identifier];
    identifier3 = [(UTType *)v23->_type identifier];
    v27 = [identifier3 isEqualToString:identifier];

    if (v27)
    {
      v28 = 0x3FEB333333333333;
    }

    else
    {
      identifier4 = [(UTType *)v23->_type identifier];
      v30 = [identifier4 isEqualToString:identifier2];

      if (!v30)
      {
        v31 = pfl_layout_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [PFLImageDataScaler initWithSize:v31 crop:? data:? orientation:? type:? outputSize:?];
        }

        v23 = 0;
        goto LABEL_10;
      }

      v28 = 0x3FECCCCCCCCCCCCDLL;
    }

    *&v23->_compressionQuality = v28;
LABEL_10:
  }

  return v23;
}

- (void)cropAndScaleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke;
  v7[3] = &unk_27875BA10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    reduceRectToAspectRatioAndCenter(*(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 64) / *(v2 + 72));
    v5 = (v4 * v3);
    v6 = *(a1 + 32);
    v7 = v6[8] / v4;
    if (v7 < v6[9] / v3)
    {
      v7 = v6[9] / v3;
    }

    v8 = (v7 * (v6[7] * (v6[6] * v7)));
    v9 = pfl_layout_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = vcvtd_n_f64_s64(v5, 0x14uLL);
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = vcvtd_n_f64_s64(v8, 0x14uLL);
      _os_log_impl(&dword_22D2ED000, v9, OS_LOG_TYPE_DEFAULT, "cropThenScale ==> %.3f MP; scaleThenCrop ==> %.3f MP", &buf, 0x16u);
    }

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    if (v5 >= v8)
    {
      v46 = *(v11 + 32);
      v47 = *(v11 + 8);
      v48 = *(v11 + 48);
      v49 = *(v11 + 56);
      v50 = *(v11 + 80);
      v51 = *(v11 + 88);
      v52 = *(v11 + 104);
      v53 = *(v11 + 72);
      v95 = *(v11 + 64);
      v54 = *(v11 + 40);
      v55 = CGImageSourceCreateWithData(v46, 0);
      if (v55)
      {
        v56 = v55;
        v89 = v47;
        v59 = reduceRectToAspectRatioAndCenter(v50, v51, v12, v52, v95 / v53);
        v61 = v60;
        v62 = v57;
        v63 = v58;
        if (v95 / v57 >= v53 / v58)
        {
          v64 = v95 / v57;
        }

        else
        {
          v64 = v53 / v58;
        }

        v65 = v48 * v64;
        if (v48 * v64 < v49 * v64)
        {
          v65 = v49 * v64;
        }

        v66 = *MEMORY[0x277CD3568];
        v67 = MEMORY[0x277CBEC38];
        *&v102.a = MEMORY[0x277CBEC38];
        v68 = *MEMORY[0x277CD3660];
        v98 = v66;
        v99 = v68;
        v69 = [MEMORY[0x277CCABB0] numberWithDouble:{ceil(v65), v89}];
        v100 = *MEMORY[0x277CD3578];
        *&v102.b = v69;
        v102.c = v67;
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v98 count:3];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v56, 0, v70);
        if (ThumbnailAtIndex)
        {
          v72 = ThumbnailAtIndex;
          v93 = v54;
          CGAffineTransformMakeScale(&buf, v64, v64);
          v108.origin.x = v59;
          v108.origin.y = v61;
          v108.size.width = v62;
          v108.size.height = v63;
          v109 = CGRectApplyAffineTransform(v108, &buf);
          v109.origin.x = rint(v109.origin.x);
          v109.origin.y = rint(v109.origin.y);
          v109.size.width = rint(v95);
          v109.size.height = rint(v53);
          v73 = CGImageCreateWithImageInRect(v72, v109);
          if (v73)
          {
            v74 = v73;
            v92 = v10;
            v37 = [MEMORY[0x277CBEB28] data];
            v75 = [v93 identifier];
            v76 = CGImageDestinationCreateWithData(v37, v75, 1uLL, 0);

            if (v76)
            {
              if (v95 >= v53)
              {
                v77 = v95;
              }

              else
              {
                v77 = v53;
              }

              v103[0] = *MEMORY[0x277CD2D48];
              v78 = [MEMORY[0x277CCABB0] numberWithDouble:v90];
              *&buf.a = v78;
              v103[1] = *MEMORY[0x277CD2D40];
              v79 = [MEMORY[0x277CCABB0] numberWithDouble:v77];
              v103[2] = *MEMORY[0x277CD2D78];
              *&buf.b = v79;
              buf.c = v67;
              v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v103 count:3];

              CGImageDestinationAddImage(v76, v74, v80);
              CGImageDestinationFinalize(v76);
              CFRelease(v76);
            }

            else
            {

              v80 = pfl_layout_log();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v37 = 0;
            }

            v10 = v92;

            CFRelease(v74);
          }

          else
          {
            v85 = pfl_layout_log();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v37 = 0;
          }

          v54 = v93;
          CFRelease(v72);
        }

        else
        {
          v83 = pfl_layout_log();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_3();
          }

          v37 = 0;
        }

        CFRelease(v56);
      }

      else
      {
        v70 = pfl_layout_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v37 = 0;
      }
    }

    else
    {
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 8);
      v16 = *(v11 + 80);
      v17 = *(v11 + 88);
      v18 = *(v11 + 104);
      v19 = *(v11 + 64);
      v20 = *(v11 + 72);
      v21 = *(v11 + 40);
      v22 = CGImageSourceCreateWithData(v14, 0);
      if (v22)
      {
        v23 = v22;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
        if (ImageAtIndex)
        {
          v25 = ImageAtIndex;
          v26 = reduceRectToAspectRatioAndCenter(v16, v17, v12, v18, v19 / v20);
          v28 = v27;
          v30 = v29;
          v32 = v31;
          Width = CGImageGetWidth(v25);
          Height = CGImageGetHeight(v25);
          memset(&buf, 0, sizeof(buf));
          makePresentationTransform(v13, Width, Height, &v102);
          CGAffineTransformInvert(&buf, &v102);
          v102 = buf;
          v106.origin.x = v26;
          v106.origin.y = v28;
          v106.size.width = v30;
          v106.size.height = v32;
          v107 = CGRectApplyAffineTransform(v106, &v102);
          v35 = CGImageCreateWithImageInRect(v25, v107);
          if (v35)
          {
            v36 = v35;
            v91 = v10;
            v37 = [MEMORY[0x277CBEB28] data];
            v38 = [v21 identifier];
            v39 = CGImageDestinationCreateWithData(v37, v38, 1uLL, 0);

            if (v39)
            {
              if (v19 >= v20)
              {
                v40 = v19;
              }

              else
              {
                v40 = v20;
              }

              v98 = *MEMORY[0x277CD2D48];
              v94 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
              *&v102.a = v94;
              v99 = *MEMORY[0x277CD2D40];
              v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
              v42 = *MEMORY[0x277CD2D78];
              *&v102.b = v41;
              *&v102.c = MEMORY[0x277CBEC38];
              v43 = *MEMORY[0x277CD3410];
              v100 = v42;
              v101 = v43;
              v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:getImageOrientationFromSource(v23)];
              *&v102.d = v44;
              v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v98 count:4];

              CGImageDestinationAddImage(v39, v36, v45);
              CGImageDestinationFinalize(v39);
              CFRelease(v39);
            }

            else
            {

              v45 = pfl_layout_log();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v37 = 0;
            }

            v10 = v91;

            CFRelease(v36);
          }

          else
          {
            v84 = pfl_layout_log();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v37 = 0;
          }

          CFRelease(v25);
        }

        else
        {
          v82 = pfl_layout_log();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_7();
          }

          v37 = 0;
        }

        CFRelease(v23);
      }

      else
      {
        v81 = pfl_layout_log();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v37 = 0;
      }
    }

    v86 = *(a1 + 32);
    v87 = *(v86 + 16);
    *(v86 + 16) = v37;

    objc_autoreleasePoolPop(v10);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_1;
  block[3] = &unk_27875B9E8;
  v88 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v97 = v88;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)inputCrop
{
  x = self->_inputCrop.origin.x;
  y = self->_inputCrop.origin.y;
  width = self->_inputCrop.size.width;
  height = self->_inputCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithSize:(id *)a1 crop:(NSObject *)a2 data:orientation:type:outputSize:.cold.1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  v4 = 136315394;
  v5 = "[PFLImageDataScaler initWithSize:crop:data:orientation:type:outputSize:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D2ED000, a2, OS_LOG_TYPE_ERROR, "%s only supports JPEG and HEIC; not %@", &v4, 0x16u);
}

@end