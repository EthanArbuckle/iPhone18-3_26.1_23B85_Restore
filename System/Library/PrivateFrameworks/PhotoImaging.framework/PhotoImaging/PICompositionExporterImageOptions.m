@interface PICompositionExporterImageOptions
- (PICompositionExporterImageOptions)init;
- (id)imageExportFormatForURL:(id)a3 isHDR:(BOOL)a4;
@end

@implementation PICompositionExporterImageOptions

- (id)imageExportFormatForURL:(id)a3 isHDR:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  imageExportFormat = self->_imageExportFormat;
  if (imageExportFormat)
  {
    if (!v6)
    {
LABEL_25:
      v24 = imageExportFormat;
      goto LABEL_26;
    }

    v9 = MEMORY[0x1E6982C40];
    v10 = [v6 pathExtension];
    v11 = [v9 typeWithFilenameExtension:v10];
    v12 = [v11 identifier];

    v13 = [(NUImageExportFormat *)self->_imageExportFormat fileType];
    if ([v12 isEqualToString:v13])
    {
LABEL_24:

      imageExportFormat = self->_imageExportFormat;
      goto LABEL_25;
    }

    v14 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_524);
    }

    v15 = MEMORY[0x1E69B3D70];
    v16 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = self->_imageExportFormat;
      v19 = v16;
      v20 = [v17 stringWithFormat:@"Export URL UTI (%@) does not match expected export format (%@)", v12, v18];
      *buf = 138543362;
      v42 = v20;
      _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v21 = *v14;
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v15 = MEMORY[0x1E69B3D70];
      if (specific)
      {
        if (v21 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_524);
        }

        goto LABEL_17;
      }

      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_524);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_17:
      v26 = *v15;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v28 = MEMORY[0x1E696AF00];
        v40 = v27;
        v29 = v26;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v27;
        v43 = 2114;
        v44 = v31;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_23:
      v38 = v12;
      v39 = self->_imageExportFormat;
      _NUAssertContinueHandler();
      goto LABEL_24;
    }

    v32 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v34 = MEMORY[0x1E696AF00];
      v35 = v32;
      v36 = [v34 callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v37;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (v6)
  {
    v23 = [MEMORY[0x1E69B3AF0] defaultFormatForURL:v6];
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E69B3B00]);
  }

  v24 = v23;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PICompositionExporterImageOptions *)self JPEGCompressionQuality];
    if (v25 != 0.0)
    {
      [(PICompositionExporterImageOptions *)self JPEGCompressionQuality];
      [(NUImageExportFormat *)v24 setCompressionQuality:?];
    }
  }

LABEL_26:
  if ([(PICompositionExporterImageOptions *)self enableHDR:v38])
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NUImageExportFormat *)v24 setBitDepth:10];
      }
    }
  }

  return v24;
}

- (PICompositionExporterImageOptions)init
{
  v6.receiver = self;
  v6.super_class = PICompositionExporterImageOptions;
  v2 = [(PICompositionExporterOptions *)&v6 init];
  v2->_JPEGCompressionQuality = 0.0;
  v3 = [MEMORY[0x1E69B3B08] defaultAuxiliaryImageTypes];
  auxiliaryImageTypes = v2->_auxiliaryImageTypes;
  v2->_auxiliaryImageTypes = v3;

  return v2;
}

@end