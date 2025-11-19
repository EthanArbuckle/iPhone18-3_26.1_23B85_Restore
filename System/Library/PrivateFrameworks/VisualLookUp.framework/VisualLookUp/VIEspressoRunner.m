@interface VIEspressoRunner
- (BOOL)setFeatures:(id)a3 error:(id *)a4;
- (BOOL)setFrame:(__CVBuffer *)a3 error:(id *)a4;
- (VIEspressoRunner)initWithMLNetURL:(id)a3 expectedInputSize:(CGSize)a4 imageInputName:(id)a5 featureNames:(id)a6 outputNames:(id)a7 preferredMetalDevice:(id)a8 usesCPUOnly:(BOOL)a9;
- (id)classificationErrorWithDescription:(id)a3;
- (id)processWithError:(id *)a3;
- (void)dealloc;
@end

@implementation VIEspressoRunner

- (id)classificationErrorWithDescription:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.argos.espresso.classification" code:-1 userInfo:v5];

  return v6;
}

- (VIEspressoRunner)initWithMLNetURL:(id)a3 expectedInputSize:(CGSize)a4 imageInputName:(id)a5 featureNames:(id)a6 outputNames:(id)a7 preferredMetalDevice:(id)a8 usesCPUOnly:(BOOL)a9
{
  v9 = a9;
  height = a4.height;
  width = a4.width;
  v83 = *MEMORY[0x1E69E9840];
  v66 = a3;
  v17 = a5;
  v65 = a6;
  v64 = a7;
  v18 = a8;
  v74.receiver = self;
  v74.super_class = VIEspressoRunner;
  v19 = [(VIEspressoRunner *)&v74 init];
  v20 = v19;
  if (v19)
  {
    v19->_expectedInputSize.width = width;
    v19->_expectedInputSize.height = height;
    objc_storeStrong(&v19->_imageInputName, a5);
    [(VIEspressoRunner *)v20 setIsImageRequired:v17 != 0];
    objc_storeStrong(&v20->_outputNames, a7);
    if (v18)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
      {
        v21 = +[_TtC12VisualLookUp8VILogger verboseLog];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v21, OS_LOG_TYPE_DEBUG, "VIEspressoRunner().init(): preferredMetalDevice", buf, 2u);
        }
      }

      espresso_device_id_for_metal_device();
    }

    v22 = +[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage];
    if (v9)
    {
      if (v22)
      {
        v23 = +[_TtC12VisualLookUp8VILogger verboseLog];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v23, OS_LOG_TYPE_DEBUG, "VIEspressoRunner().init(): only cpu", buf, 2u);
        }
      }
    }

    else
    {
      if (v22)
      {
        v25 = +[_TtC12VisualLookUp8VILogger verboseLog];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v25, OS_LOG_TYPE_DEBUG, "VIEspressoRunner().init(): trying ane", buf, 2u);
        }
      }

      context = espresso_create_context();
      v20->_context = context;
      if (context)
      {
        goto LABEL_25;
      }

      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
      {
        v27 = +[_TtC12VisualLookUp8VILogger verboseLog];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v27, OS_LOG_TYPE_DEBUG, "VIEspressoRunner().init(): trying mps", buf, 2u);
        }
      }

      v28 = espresso_create_context();
      v20->_context = v28;
      if (v28)
      {
        goto LABEL_25;
      }

      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
      {
        v48 = +[_TtC12VisualLookUp8VILogger verboseLog];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v48, OS_LOG_TYPE_DEBUG, "VIEspressoRunner().init(): trying cpu", buf, 2u);
        }
      }
    }

    v24 = espresso_create_context();
    v20->_context = v24;
    if (!v24)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v37 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *&buf[4] = -1;
          LOWORD(v81) = 2114;
          *(&v81 + 2) = @"context creation failed";
          _os_log_impl(&dword_1D9962000, v37, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
        }

        goto LABEL_44;
      }

      goto LABEL_70;
    }

LABEL_25:
    plan = espresso_create_plan();
    v20->_plan = plan;
    if (!plan)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v37 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *&buf[4] = -1;
          LOWORD(v81) = 2114;
          *(&v81 + 2) = @"plan creation failed";
          _os_log_impl(&dword_1D9962000, v37, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
        }

        goto LABEL_44;
      }

LABEL_70:
      v52 = 0;
      goto LABEL_81;
    }

    v30 = [v66 path];
    v31 = v30;
    [v30 UTF8String];
    v32 = espresso_plan_add_network() == 0;

    if (!v32)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v33 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = [v66 path];
          v35 = v34;
          [v34 UTF8String];
          v36 = espresso_plan_add_network();
          *buf = 67109378;
          *&buf[4] = v36;
          LOWORD(v81) = 2114;
          *(&v81 + 2) = @"espresso_plan_add_network";
          _os_log_impl(&dword_1D9962000, v33, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
        }
      }

      goto LABEL_70;
    }

    imageInputName = v20->_imageInputName;
    if (imageInputName)
    {
      [(NSString *)imageInputName UTF8String];
      if (espresso_network_declare_input())
      {
        if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v37 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [(NSString *)v20->_imageInputName UTF8String];
            v39 = espresso_network_declare_input();
            *buf = 67109378;
            *&buf[4] = v39;
            LOWORD(v81) = 2114;
            *(&v81 + 2) = @"espresso_network_declare_input";
            _os_log_impl(&dword_1D9962000, v37, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
          }

LABEL_44:

          goto LABEL_70;
        }

        goto LABEL_70;
      }
    }

    *buf = 0;
    *&v81 = buf;
    *(&v81 + 1) = 0x2020000000;
    v82 = 1;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __128__VIEspressoRunner_initWithMLNetURL_expectedInputSize_imageInputName_featureNames_outputNames_preferredMetalDevice_usesCPUOnly___block_invoke;
    v71[3] = &unk_1E858AC38;
    v40 = v20;
    v72 = v40;
    v73 = buf;
    [v65 enumerateObjectsUsingBlock:v71];
    if (*(v81 + 24))
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v41 = v64;
      v42 = [v41 countByEnumeratingWithState:&v67 objects:v79 count:16];
      if (v42)
      {
        v43 = *v68;
        while (2)
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v45 = *(*(&v67 + 1) + 8 * i);
            v46 = v45;
            [v45 UTF8String];
            if (espresso_network_declare_output())
            {
              if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
              {
                v49 = +[_TtC12VisualLookUp8VILogger log];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v50 = v45;
                  [v45 UTF8String];
                  v51 = espresso_network_declare_output();
                  *v75 = 67109378;
                  v76 = v51;
                  v77 = 2114;
                  v78 = @"espresso_network_declare_output";
                  _os_log_impl(&dword_1D9962000, v49, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", v75, 0x12u);
                }
              }

              goto LABEL_67;
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v67 objects:v79 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      if (!espresso_plan_build())
      {
        v53 = [MEMORY[0x1E695DF88] dataWithLength:{168 * -[NSObject count](v41, "count")}];
        v54 = v40[9];
        v40[9] = v53;

        v55 = [v40[9] mutableBytes];
        for (j = 0; ; ++j)
        {
          if ([(NSArray *)v20->_outputNames count]<= j)
          {

            _Block_object_dispose(buf, 8);
            goto LABEL_76;
          }

          v57 = [(NSArray *)v20->_outputNames objectAtIndexedSubscript:j];
          v58 = v57;
          [v57 UTF8String];
          if (espresso_network_bind_buffer())
          {
            break;
          }

          v55 += 168;
        }

        if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v61 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = v57;
            [v57 UTF8String];
            v63 = espresso_network_bind_buffer();
            *v75 = 67109378;
            v76 = v63;
            v77 = 2114;
            v78 = @"espresso_network_bind_buffer";
            _os_log_impl(&dword_1D9962000, v61, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", v75, 0x12u);
          }
        }

        goto LABEL_69;
      }

      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v41 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v47 = espresso_plan_build();
          *v75 = 67109378;
          v76 = v47;
          v77 = 2114;
          v78 = @"espresso_plan_build";
          _os_log_impl(&dword_1D9962000, v41, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", v75, 0x12u);
        }

LABEL_67:
      }
    }

LABEL_69:
    _Block_object_dispose(buf, 8);
    goto LABEL_70;
  }

LABEL_76:
  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
  {
    v59 = +[_TtC12VisualLookUp8VILogger verboseLog];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9962000, v59, OS_LOG_TYPE_DEBUG, "*** --- VIEspressoRunner.init()", buf, 2u);
    }
  }

  v52 = v20;
LABEL_81:

  return v52;
}

void __128__VIEspressoRunner_initWithMLNetURL_expectedInputSize_imageInputName_featureNames_outputNames_preferredMetalDevice_usesCPUOnly___block_invoke(uint64_t a1, id a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  [a2 UTF8String];
  v8 = espresso_network_declare_input();
  if (v8)
  {
    v9 = v8;
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v10 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11[0] = 67109378;
        v11[1] = v9;
        v12 = 2114;
        v13 = @"declare input";
        _os_log_impl(&dword_1D9962000, v10, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", v11, 0x12u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)dealloc
{
  if (espresso_plan_get_phase() == 1 && (espresso_plan_build_clean() || espresso_plan_destroy()) && +[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
  {
    v3 = +[_TtC12VisualLookUp8VILogger verboseLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9962000, v3, OS_LOG_TYPE_ERROR, "EspressoRunner.dealloc plan clean failed", buf, 2u);
    }
  }

  if (espresso_context_destroy() && +[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
  {
    v4 = +[_TtC12VisualLookUp8VILogger verboseLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9962000, v4, OS_LOG_TYPE_ERROR, "EspressoRunner.dealloc context destroy failed", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = VIEspressoRunner;
  [(VIEspressoRunner *)&v5 dealloc];
}

- (BOOL)setFrame:(__CVBuffer *)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_imageInputName)
  {
    return 1;
  }

  if (floor(self->_expectedInputSize.width) != CVPixelBufferGetWidth(a3) || floor(self->_expectedInputSize.height) != CVPixelBufferGetHeight(a3))
  {
    v7 = [(VIEspressoRunner *)self classificationErrorWithDescription:@"setFrame(): Image size mismatch"];
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalVerboseMessage])
    {
      v8 = +[_TtC12VisualLookUp8VILogger verboseLog];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        *v15 = "[VIEspressoRunner setFrame:error:]";
        *&v15[8] = 2112;
        *&v15[10] = v7;
        _os_log_impl(&dword_1D9962000, v8, OS_LOG_TYPE_ERROR, "%s failed with error: %@", &v14, 0x16u);
      }
    }

    if (a4)
    {
      v9 = v7;
      *a4 = v7;
    }

    return 0;
  }

  [(NSString *)self->_imageInputName UTF8String];
  if (!espresso_network_bind_cvpixelbuffer())
  {
    return 1;
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v11 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSString *)self->_imageInputName UTF8String];
      v14 = 67109378;
      *v15 = espresso_network_bind_cvpixelbuffer();
      *&v15[4] = 2114;
      *&v15[6] = @"espresso_network_bind_cvpixelbuffer";
      _os_log_impl(&dword_1D9962000, v11, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", &v14, 0x12u);
    }
  }

  if (!a4)
  {
    return 0;
  }

  v12 = [(VIEspressoRunner *)self classificationErrorWithDescription:@"espresso_network_bind_cvpixelbuffer"];
  v13 = v12;
  result = 0;
  *a4 = v12;
  return result;
}

- (BOOL)setFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__VIEspressoRunner_setFeatures_error___block_invoke;
  v9[3] = &unk_1E858AC60;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (a4 && (v17[3] & 1) == 0)
  {
    *a4 = v11[5];
    v7 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7 & 1;
}

void __38__VIEspressoRunner_setFeatures_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  [a2 UTF8String];
  v8 = espresso_network_bind_buffer();
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setFeatures(): bind feature failed. %d", v8];
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v10 = [*(a1 + 32) classificationErrorWithDescription:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }

  if ([v7 dataType] != 65568)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setFeatures(): unsupported data type. %d", v8];
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v14 = [*(a1 + 32) classificationErrorWithDescription:v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  memcpy(0, [v7 dataPointer], 4 * objc_msgSend(v7, "count"));
}

- (id)processWithError:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (espresso_plan_execute_sync())
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v5 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v34 = espresso_plan_execute_sync();
        v35 = 2114;
        v36 = @"espresso_plan_execute_sync";
        _os_log_impl(&dword_1D9962000, v5, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
      }
    }

    if (a3)
    {
      [(VIEspressoRunner *)self classificationErrorWithDescription:@"espresso_plan_execute_sync"];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v28 = a3;
    v7 = objc_opt_new();
    v31 = [(NSMutableData *)self->_outputBuffers mutableBytes];
    if ([(NSArray *)self->_outputNames count])
    {
      v8 = 0;
      v29 = v7;
      v30 = self;
      while (1)
      {
        v9 = &v31[168 * v8];
        rank = espresso_buffer_get_rank();
        if (rank >= 6)
        {
          break;
        }

        v11 = rank;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v9 + 14)];
        v32[0] = v12;
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v9 + 13)];
        v32[1] = v13;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v9 + 12)];
        v32[2] = v14;
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v9 + 11)];
        v32[3] = v15;
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v9 + 10)];
        v32[4] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];

        v18 = objc_alloc(MEMORY[0x1E695FED0]);
        v19 = [v17 subarrayWithRange:{5 - v11, v11}];
        v20 = [v18 initWithShape:v19 dataType:65568 error:0];

        if (*(v9 + 19))
        {
          v22 = 0;
          v23 = *v9;
          do
          {
            LODWORD(v21) = *(v23 + 4 * v22);
            v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
            [v20 setObject:v24 atIndexedSubscript:v22];

            ++v22;
          }

          while (*(v9 + 19) > v22);
        }

        self = v30;
        v25 = [(NSArray *)v30->_outputNames objectAtIndexedSubscript:v8];
        v7 = v29;
        [v29 setObject:v20 forKey:v25];

        if ([(NSArray *)v30->_outputNames count]<= ++v8)
        {
          goto LABEL_15;
        }
      }

      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v26 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v34 = 0;
          v35 = 2114;
          v36 = @"outputs up to only rank 5 are supported";
          _os_log_impl(&dword_1D9962000, v26, OS_LOG_TYPE_ERROR, "VIEspressoRunner: failed (status %d): %{public}@", buf, 0x12u);
        }
      }

      if (v28)
      {
        [(VIEspressoRunner *)self classificationErrorWithDescription:@"outputs up to only rank 5 are supported"];
        *v28 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
LABEL_15:
      v6 = v7;
    }
  }

  return v6;
}

@end