@interface PFParallaxAssetResource
+ (BOOL)saveImage:(CGImage *)a3 toURL:(id)a4 error:(id *)a5;
+ (CGImage)newImageWithContentsOfURL:(id)a3 error:(id *)a4;
- (BOOL)loadContentsFromDictionary:(id)a3 proxyPath:(id *)a4 imagePath:(id *)a5 adjustmentPath:(id *)a6 error:(id *)a7;
- (BOOL)loadFromArchiveURL:(id)a3 error:(id *)a4;
- (BOOL)saveToArchiveURL:(id)a3 error:(id *)a4;
- (PFParallaxAssetResource)init;
- (id)contentsDictionary;
- (void)dealloc;
@end

@implementation PFParallaxAssetResource

- (BOOL)loadContentsFromDictionary:(id)a3 proxyPath:(id *)a4 imagePath:(id *)a5 adjustmentPath:(id *)a6 error:(id *)a7
{
  v107[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (!v17)
  {
    _PFAssertFailHandler();
    goto LABEL_100;
  }

  v7 = v17;
  v18 = [v17 objectForKeyedSubscript:@"version"];
  v8 = v18;
  if (v18)
  {
    if ([v18 isEqual:&unk_1F2AAAF30])
    {
      v9 = [v7 objectForKeyedSubscript:@"type"];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v9;
          if ([v19 isEqualToString:@"Adjusted"])
          {
            v20 = &unk_1F2AAAF48;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"AdjustedProxy"])
          {
            v20 = &unk_1F2AAAF60;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"Original"])
          {
            v20 = &unk_1F2AAAF78;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"OriginalProxy"])
          {
            v20 = &unk_1F2AAAF90;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"EditingInput"])
          {
            v20 = &unk_1F2AAAFA8;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"LegacyMigration"])
          {
            v20 = &unk_1F2AAAFC0;
            goto LABEL_33;
          }

          if ([v19 isEqualToString:@"LivePhotoOriginal"])
          {
            v20 = &unk_1F2AAAFD8;
LABEL_33:

            -[PFParallaxAssetResource setType:](self, "setType:", [v20 integerValue]);
            v10 = [v7 objectForKeyedSubscript:@"proxyImage"];
            if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if (a4)
              {
                v30 = v10;
                *a4 = v10;
              }

              a4 = [v7 objectForKeyedSubscript:@"imageFile"];
              if (!a4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (a5)
                {
                  v31 = a4;
                  *a5 = a4;
                }

                if (a4)
                {
                  v32 = [v7 objectForKeyedSubscript:@"fileType"];
                  if (!v32)
                  {
                    if (a7)
                    {
                      v46 = MEMORY[0x1E696ABC0];
                      v92 = *MEMORY[0x1E696A278];
                      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing file type"];
                      v93 = v34;
                      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
                      v36 = [v46 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v35];
                      a5 = 0;
                      goto LABEL_59;
                    }

                    a5 = 0;
                    goto LABEL_79;
                  }

                  a5 = v32;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (a7)
                    {
                      v33 = MEMORY[0x1E696ABC0];
                      v90 = *MEMORY[0x1E696A278];
                      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid file type: '%@'", a5];
                      v91 = v34;
                      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                      v36 = [v33 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v35];
LABEL_59:
                      v25 = 0;
                      *a7 = v36;
LABEL_66:

                      goto LABEL_82;
                    }

LABEL_79:
                    v25 = 0;
                    goto LABEL_83;
                  }
                }

                else
                {
                  a5 = 0;
                }

                [(PFParallaxAssetResource *)self setFileType:a5];
                v39 = [v7 objectForKeyedSubscript:@"orientation"];
                if (!v39)
                {
                  if (a7)
                  {
                    v47 = MEMORY[0x1E696ABC0];
                    v88 = *MEMORY[0x1E696A278];
                    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing orientation value"];
                    v89 = v35;
                    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                    *a7 = [v47 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v48];

                    v34 = 0;
LABEL_65:
                    v25 = 0;
                    goto LABEL_66;
                  }

                  v34 = 0;
                  goto LABEL_81;
                }

                v34 = v39;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (a7)
                  {
                    v41 = MEMORY[0x1E696ABC0];
                    v86 = *MEMORY[0x1E696A278];
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid orientation value: '%@'", v34];
                    v42 = v73 = v34;
                    v87 = v42;
                    v43 = MEMORY[0x1E695DF20];
                    v44 = &v87;
                    v45 = &v86;
                    goto LABEL_64;
                  }

LABEL_81:
                  v25 = 0;
                  goto LABEL_82;
                }

                v40 = [v34 intValue];
                if ((v40 - 9) <= 0xFFFFFFF7)
                {
                  if (a7)
                  {
                    v41 = MEMORY[0x1E696ABC0];
                    v84 = *MEMORY[0x1E696A278];
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid orientation value: '%@'", v34];
                    v42 = v73 = v34;
                    v85 = v42;
                    v43 = MEMORY[0x1E695DF20];
                    v44 = &v85;
                    v45 = &v84;
LABEL_64:
                    v49 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
                    *a7 = [v41 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v49];

                    v35 = v42;
                    v34 = v73;
                    goto LABEL_65;
                  }

                  goto LABEL_81;
                }

                v72 = v34;
                [(PFParallaxAssetResource *)self setOrientation:v40];
                v11 = [v7 objectForKeyedSubscript:@"adjustmentData"];
                if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (a6)
                  {
                    v50 = v11;
                    *a6 = v11;
                  }

                  v70 = v11;
                  if (v11)
                  {
                    v51 = [v7 objectForKeyedSubscript:@"adjustmentFormat"];
                    if (v51)
                    {
                      objc_opt_class();
                      v34 = v72;
                      if (objc_opt_isKindOfClass())
                      {
                        v68 = v51;
                        [(PFParallaxAssetResource *)self setAdjustmentFormat:v51];
                        v52 = [v7 objectForKeyedSubscript:@"adjustmentVersion"];
                        if (v52)
                        {
                          v53 = v52;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(PFParallaxAssetResource *)self setAdjustmentVersion:v53];

                            v25 = 1;
LABEL_110:
                            v35 = v70;
                            goto LABEL_66;
                          }

                          if (!a7)
                          {
                            goto LABEL_108;
                          }

                          v65 = MEMORY[0x1E696ABC0];
                          v74 = *MEMORY[0x1E696A278];
                          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid adjustment version: '%@'", v53];
                          v75 = v67;
                          v61 = MEMORY[0x1E695DF20];
                          v62 = &v75;
                          v63 = &v74;
                        }

                        else
                        {
                          v53 = 0;
                          if (!a7)
                          {
LABEL_108:

                            goto LABEL_109;
                          }

                          v65 = MEMORY[0x1E696ABC0];
                          v76 = *MEMORY[0x1E696A278];
                          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing adjustment version"];
                          v77 = v67;
                          v61 = MEMORY[0x1E695DF20];
                          v62 = &v77;
                          v63 = &v76;
                        }

                        v64 = [v61 dictionaryWithObjects:v62 forKeys:v63 count:1];
                        *a7 = [v65 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v64];

                        goto LABEL_108;
                      }

                      if (a7)
                      {
                        v66 = MEMORY[0x1E696ABC0];
                        v78 = *MEMORY[0x1E696A278];
                        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid adjustment format: '%@'", v51];
                        v79 = v69;
                        v57 = MEMORY[0x1E695DF20];
                        v58 = &v79;
                        v59 = &v78;
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      v34 = v72;
                      if (a7)
                      {
                        v66 = MEMORY[0x1E696ABC0];
                        v80 = *MEMORY[0x1E696A278];
                        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing adjustment format"];
                        v81 = v69;
                        v57 = MEMORY[0x1E695DF20];
                        v58 = &v81;
                        v59 = &v80;
LABEL_97:
                        v60 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
                        *a7 = [v66 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v60];
                      }
                    }

LABEL_109:
                    v25 = 0;
                    goto LABEL_110;
                  }

                  v35 = 0;
                  v25 = 1;
LABEL_101:
                  v34 = v72;
                  goto LABEL_66;
                }

                if (a7)
                {
                  v71 = MEMORY[0x1E696ABC0];
                  v82 = *MEMORY[0x1E696A278];
                  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid adjustment data path: '%@'", v11];
                  v83 = v55;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
                  *a7 = [v71 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v56];

                  v35 = v11;
                  v25 = 0;
                  goto LABEL_101;
                }

LABEL_100:
                v25 = 0;
                v35 = v11;
                goto LABEL_101;
              }

              if (a7)
              {
                v38 = MEMORY[0x1E696ABC0];
                v94 = *MEMORY[0x1E696A278];
                a5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid image path: '%@'", a4];
                v95 = a5;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                [v38 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v34];
                *a7 = v25 = 0;
LABEL_82:

                goto LABEL_83;
              }

              v25 = 0;
LABEL_84:

              goto LABEL_85;
            }

            if (a7)
            {
              v37 = MEMORY[0x1E696ABC0];
              v96 = *MEMORY[0x1E696A278];
              a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid proxy image path: '%@'", v10];
              v97 = a4;
              a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
              [v37 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:a5];
              *a7 = v25 = 0;
LABEL_83:

              goto LABEL_84;
            }

            v25 = 0;
            v9 = v19;
LABEL_85:

            goto LABEL_86;
          }

          if (!a7)
          {
            v25 = 0;
            v9 = v19;
            goto LABEL_86;
          }

          v26 = MEMORY[0x1E696ABC0];
          v98 = *MEMORY[0x1E696A278];
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid type: '%@'", v19];
          v99 = v10;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v99;
          v29 = &v98;
LABEL_18:
          a4 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
          [v26 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:a4];
          *a7 = v25 = 0;
          goto LABEL_84;
        }

        if (a7)
        {
          v26 = MEMORY[0x1E696ABC0];
          v100 = *MEMORY[0x1E696A278];
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid type: '%@'", v9];
          v101 = v10;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v101;
          v29 = &v100;
          goto LABEL_18;
        }
      }

      else
      {
        if (a7)
        {
          v26 = MEMORY[0x1E696ABC0];
          v102 = *MEMORY[0x1E696A278];
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing type info"];
          v103 = v10;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v103;
          v29 = &v102;
          goto LABEL_18;
        }

        v9 = 0;
      }

      v25 = 0;
LABEL_86:

      goto LABEL_87;
    }

    if (a7)
    {
      v21 = MEMORY[0x1E696ABC0];
      v104 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported version: '%@'", v8];
      v105 = v9;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v105;
      v24 = &v104;
      goto LABEL_12;
    }
  }

  else if (a7)
  {
    v21 = MEMORY[0x1E696ABC0];
    v106 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing version info"];
    v107[0] = v9;
    v22 = MEMORY[0x1E695DF20];
    v23 = v107;
    v24 = &v106;
LABEL_12:
    v10 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    [v21 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v10];
    *a7 = v25 = 0;
    goto LABEL_85;
  }

  v25 = 0;
LABEL_87:

  return v25;
}

- (id)contentsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:&unk_1F2AAAF30 forKeyedSubscript:@"version"];
  v4 = [(PFParallaxAssetResource *)self type];
  if (v4 > 6)
  {
    v5 = @"???";
  }

  else
  {
    v5 = off_1E7B64608[v4];
  }

  v6 = v5;
  [v3 setObject:v6 forKeyedSubscript:@"type"];

  if ([(PFParallaxAssetResource *)self proxyImage])
  {
    [v3 setObject:@"proxy.heic" forKeyedSubscript:@"proxyImage"];
  }

  v7 = [(PFParallaxAssetResource *)self imageFileURL];

  if (v7)
  {
    v8 = [(PFParallaxAssetResource *)self imageFileURL];
    v9 = [v8 pathExtension];

    v10 = [(PFParallaxAssetResource *)self type];
    if (v10 > 6)
    {
      v11 = @"???";
    }

    else
    {
      v11 = off_1E7B64608[v10];
    }

    v12 = v11;
    v13 = [(__CFString *)v12 stringByAppendingPathExtension:v9];

    [v3 setObject:v13 forKeyedSubscript:@"imageFile"];
  }

  v14 = [(PFParallaxAssetResource *)self fileType];
  [v3 setObject:v14 forKeyedSubscript:@"fileType"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFParallaxAssetResource orientation](self, "orientation")}];
  [v3 setObject:v15 forKeyedSubscript:@"orientation"];

  v16 = [(PFParallaxAssetResource *)self adjustmentFormat];
  [v3 setObject:v16 forKeyedSubscript:@"adjustmentFormat"];

  v17 = [(PFParallaxAssetResource *)self adjustmentVersion];
  [v3 setObject:v17 forKeyedSubscript:@"adjustmentVersion"];

  v18 = [(PFParallaxAssetResource *)self adjustmentData];

  if (v18)
  {
    [v3 setObject:@"adjustment.data" forKeyedSubscript:@"adjustmentData"];
  }

  return v3;
}

- (BOOL)loadFromArchiveURL:(id)a3 error:(id *)a4
{
  v104[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    _PFAssertFailHandler();
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v10 = [v8 URLByAppendingPathComponent:@"contents.plist"];
  v84 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:1 error:&v84];
  v12 = v84;
  if (v11)
  {
    v76 = v9;
    v83 = 0;
    v13 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v83];
    v14 = v83;

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = v10;
        v81 = 0;
        v82 = 0;
        v79 = v14;
        v80 = 0;
        v15 = [(PFParallaxAssetResource *)self loadContentsFromDictionary:v13 proxyPath:&v82 imagePath:&v81 adjustmentPath:&v80 error:&v79];
        v16 = v82;
        v75 = v81;
        v74 = v80;
        v69 = v79;

        if (v15)
        {
          v68 = v16;
          if (v16)
          {
            [v8 URLByAppendingPathComponent:v16];
            v66 = v78 = v69;
            v17 = [objc_opt_class() newImageWithContentsOfURL:v66 error:&v78];
            v12 = v78;

            if (v17)
            {
              [(PFParallaxAssetResource *)self setProxyImage:v17];
              CFRelease(v17);

              goto LABEL_9;
            }

            if (a4)
            {
              v34 = MEMORY[0x1E696ABC0];
              v95 = *MEMORY[0x1E696A278];
              v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load proxy image from file: '%@', error: %@", v66, v12];
              v96 = v35;
              v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              *a4 = [v34 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v36];
            }

            v23 = 0;
          }

          else
          {
            if ([(PFParallaxAssetResource *)self type]!= 3 && [(PFParallaxAssetResource *)self type]!= 1)
            {
              v12 = v69;
LABEL_9:
              if (v75)
              {
                v70 = [v8 URLByAppendingPathComponent:?];
                v18 = [v70 path];
                v67 = [v76 isReadableFileAtPath:v18];

                v10 = v72;
                if ((v67 & 1) == 0)
                {
                  if (a4)
                  {
                    v39 = MEMORY[0x1E696ABC0];
                    v91 = *MEMORY[0x1E696A278];
                    v40 = MEMORY[0x1E696AEC0];
                    v41 = [v70 path];
                    v42 = [v40 stringWithFormat:@"Cannot read image file '%@'", v41];
                    v92 = v42;
                    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                    *a4 = [v39 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v43];
                  }

                  goto LABEL_68;
                }

                [(PFParallaxAssetResource *)self setImageFileURL:v70];
              }

              else
              {
                v10 = v72;
                if ([(PFParallaxAssetResource *)self type]== 2 || ![(PFParallaxAssetResource *)self type])
                {
                  if (a4)
                  {
                    v44 = MEMORY[0x1E696ABC0];
                    v89 = *MEMORY[0x1E696A278];
                    v45 = MEMORY[0x1E696AEC0];
                    v46 = [(PFParallaxAssetResource *)self type];
                    if (v46 > 6)
                    {
                      v47 = @"???";
                    }

                    else
                    {
                      v47 = off_1E7B64608[v46];
                    }

                    v60 = v47;
                    v61 = [v45 stringWithFormat:@"Expected image file for type '%@'", v60];
                    v90 = v61;
                    v62 = MEMORY[0x1E695DF20];
                    v63 = &v90;
                    v64 = &v89;
                    goto LABEL_67;
                  }

LABEL_68:
                  v23 = 0;
                  v21 = v68;
                  goto LABEL_48;
                }
              }

              if (v74)
              {
                v37 = [v8 URLByAppendingPathComponent:?];
                v77 = v12;
                v38 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v37 options:1 error:&v77];
                v73 = v77;

                if (!v38)
                {
                  v55 = v37;
                  v21 = v68;
                  if (a4)
                  {
                    v71 = MEMORY[0x1E696ABC0];
                    v87 = *MEMORY[0x1E696A278];
                    v56 = MEMORY[0x1E696AEC0];
                    v57 = [v55 path];
                    v58 = [v56 stringWithFormat:@"Failed to read adjustment data from file: %@, error: %@", v57, v73];
                    v88 = v58;
                    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                    *a4 = [v71 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v59];
                  }

                  v23 = 0;
                  v12 = v73;
                  goto LABEL_48;
                }

                [(PFParallaxAssetResource *)self setAdjustmentData:v38];

                v12 = v73;
                goto LABEL_59;
              }

              if ([(PFParallaxAssetResource *)self type]!= 4)
              {
LABEL_59:
                v21 = v68;
                objc_storeStrong(&self->_archiveURL, a3);
                v23 = 1;
                goto LABEL_48;
              }

              if (a4)
              {
                v44 = MEMORY[0x1E696ABC0];
                v85 = *MEMORY[0x1E696A278];
                v52 = MEMORY[0x1E696AEC0];
                v53 = [(PFParallaxAssetResource *)self type];
                if (v53 > 6)
                {
                  v54 = @"???";
                }

                else
                {
                  v54 = off_1E7B64608[v53];
                }

                v60 = v54;
                v61 = [v52 stringWithFormat:@"Expected adjustment data for type '%@'", v60];
                v86 = v61;
                v62 = MEMORY[0x1E695DF20];
                v63 = &v86;
                v64 = &v85;
LABEL_67:
                v65 = [v62 dictionaryWithObjects:v63 forKeys:v64 count:1];
                *a4 = [v44 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v65];

                goto LABEL_68;
              }

              goto LABEL_68;
            }

            if (a4)
            {
              v30 = MEMORY[0x1E696ABC0];
              v93 = *MEMORY[0x1E696A278];
              v31 = MEMORY[0x1E696AEC0];
              v32 = [(PFParallaxAssetResource *)self type];
              v21 = 0;
              v10 = v72;
              if (v32 > 6)
              {
                v33 = @"???";
              }

              else
              {
                v33 = off_1E7B64608[v32];
              }

              v49 = v33;
              v50 = [v31 stringWithFormat:@"Expected proxy image for type '%@'", v49];
              v94 = v50;
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
              *a4 = [v30 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v51];

              v23 = 0;
              v12 = v69;
              goto LABEL_48;
            }

            v23 = 0;
            v12 = v69;
          }

          v21 = v16;
        }

        else
        {
          v21 = v16;
          if (a4)
          {
            v27 = MEMORY[0x1E696ABC0];
            v97 = *MEMORY[0x1E696A278];
            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load contents dictionary: %@, error: %@", v13, v69];
            v98 = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            *a4 = [v27 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v29];
          }

          v23 = 0;
          v12 = v69;
        }

        v10 = v72;
LABEL_48:

        v22 = v75;
        goto LABEL_49;
      }

      if (a4)
      {
        v26 = MEMORY[0x1E696ABC0];
        v99 = *MEMORY[0x1E696A278];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected contents dictionary but got '%@'", v13];
        v100 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v25 = [v26 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v22];
        goto LABEL_18;
      }
    }

    else
    {
      if (a4)
      {
        v24 = MEMORY[0x1E696ABC0];
        v101 = *MEMORY[0x1E696A278];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to deserialize contents plist from data: %@, error: %@", v11, v14];
        v102 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v25 = [v24 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v22];
        v13 = 0;
LABEL_18:
        v23 = 0;
        *a4 = v25;
        v12 = v14;
        goto LABEL_49;
      }

      v13 = 0;
    }

    v23 = 0;
LABEL_50:

    v12 = v14;
    v9 = v76;
    goto LABEL_51;
  }

  if (a4)
  {
    v76 = v9;
    v19 = MEMORY[0x1E696ABC0];
    v103 = *MEMORY[0x1E696A278];
    v20 = MEMORY[0x1E696AEC0];
    v13 = [v10 path];
    v21 = [v20 stringWithFormat:@"Failed to read contents plist data from file: %@, error: %@", v13, v12];
    v104[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
    [v19 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v22];
    *a4 = v23 = 0;
LABEL_49:

    v14 = v12;
    goto LABEL_50;
  }

  v23 = 0;
LABEL_51:

  return v23;
}

- (BOOL)saveToArchiveURL:(id)a3 error:(id *)a4
{
  v72[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    _PFAssertFailHandler();
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v60 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:0 attributes:0 error:&v60];
  v10 = v60;
  if (v9)
  {
    v11 = [(PFParallaxAssetResource *)self contentsDictionary];
    v59 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:&v59];
    v13 = v59;

    if (!v12)
    {
      if (!a4)
      {
        v12 = 0;
        v21 = 0;
        v10 = v13;
LABEL_38:

        goto LABEL_39;
      }

      v22 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A278];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to serialize contents plist: %@, error: %@", v11, v13];
      v70 = v14;
      archiveURL = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      [v22 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:archiveURL];
      *a4 = v21 = 0;
      goto LABEL_36;
    }

    v14 = [v7 URLByAppendingPathComponent:@"contents.plist"];
    v58 = v13;
    v15 = [v12 writeToURL:v14 options:2 error:&v58];
    v10 = v58;

    if (v15)
    {
      v54 = v14;
      if ([(PFParallaxAssetResource *)self proxyImage])
      {
        v16 = [v11 objectForKeyedSubscript:@"proxyImage"];
        v17 = [v7 URLByAppendingPathComponent:v16];

        v57 = v10;
        v18 = [objc_opt_class() saveImage:-[PFParallaxAssetResource proxyImage](self toURL:"proxyImage") error:{v17, &v57}];
        v13 = v57;

        if ((v18 & 1) == 0)
        {
          if (a4)
          {
            v53 = MEMORY[0x1E696ABC0];
            v65 = *MEMORY[0x1E696A278];
            v37 = MEMORY[0x1E696AEC0];
            v38 = [v17 path];
            v39 = [v37 stringWithFormat:@"Failed to write proxy image file: %@, error: %@", v38, v13];
            v66 = v39;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            v41 = v53;
LABEL_31:
            *a4 = [v41 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v40];

            archiveURL = v17;
            v21 = 0;
LABEL_35:
            v14 = v54;
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        v14 = v54;
      }

      else
      {
        v13 = v10;
      }

      v26 = [(PFParallaxAssetResource *)self imageFileURL];

      if (v26)
      {
        v27 = [v11 objectForKeyedSubscript:@"imageFile"];
        v17 = [v7 URLByAppendingPathComponent:v27];

        v28 = [(PFParallaxAssetResource *)self imageFileURL];
        v56 = v13;
        v29 = [v8 copyItemAtURL:v28 toURL:v17 error:&v56];
        v51 = v56;

        if ((v29 & 1) == 0)
        {
          if (a4)
          {
            v42 = MEMORY[0x1E696ABC0];
            v63 = *MEMORY[0x1E696A278];
            v43 = MEMORY[0x1E696AEC0];
            v44 = [(PFParallaxAssetResource *)self imageFileURL];
            v45 = [v43 stringWithFormat:@"Failed to copy image file from %@ to %@, error: %@", v44, v17, v51];
            v64 = v45;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v47 = v42;
            archiveURL = v17;
            *a4 = [v47 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v46];

            v21 = 0;
            v13 = v51;
            v14 = v54;
            goto LABEL_36;
          }

          v21 = 0;
          v13 = v51;
          goto LABEL_34;
        }

        v13 = v51;
        v14 = v54;
      }

      v30 = [(PFParallaxAssetResource *)self adjustmentData];

      if (!v30)
      {
LABEL_23:
        v36 = v7;
        archiveURL = self->_archiveURL;
        self->_archiveURL = v36;
        v21 = 1;
        goto LABEL_36;
      }

      v31 = [v11 objectForKeyedSubscript:@"adjustmentData"];
      v32 = [v7 URLByAppendingPathComponent:v31];

      v33 = [(PFParallaxAssetResource *)self adjustmentData];
      v55 = v13;
      v52 = v32;
      LOBYTE(v32) = [v33 writeToURL:v32 options:2 error:&v55];
      v34 = v55;
      v35 = v13;
      v13 = v34;

      if (v32)
      {

        goto LABEL_23;
      }

      v17 = v52;
      if (a4)
      {
        v50 = MEMORY[0x1E696ABC0];
        v61 = *MEMORY[0x1E696A278];
        v48 = MEMORY[0x1E696AEC0];
        v38 = [v52 path];
        v39 = [v48 stringWithFormat:@"Failed to write adjustment data file: %@, error: %@", v38, v13];
        v62 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v41 = v50;
        goto LABEL_31;
      }

LABEL_32:
      v21 = 0;
LABEL_34:
      archiveURL = v17;
      goto LABEL_35;
    }

    if (a4)
    {
      v24 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A278];
      archiveURL = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to archive contents plist: %@, error: %@", v12, v10];
      v68 = archiveURL;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      *a4 = [v24 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v25];

      v21 = 0;
      v13 = v10;
LABEL_36:

      v10 = v13;
      goto LABEL_37;
    }

    v21 = 0;
LABEL_37:

    goto LABEL_38;
  }

  if (a4)
  {
    v19 = MEMORY[0x1E696ABC0];
    v71 = *MEMORY[0x1E696A278];
    v20 = MEMORY[0x1E696AEC0];
    v11 = [v7 path];
    v12 = [v20 stringWithFormat:@"Failed to create archive directory: %@, error: %@", v11, v10];
    v72[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    [v19 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v14];
    *a4 = v21 = 0;
    goto LABEL_37;
  }

  v21 = 0;
LABEL_39:

  return v21;
}

- (void)dealloc
{
  CGImageRelease(self->_proxyImage);
  v3.receiver = self;
  v3.super_class = PFParallaxAssetResource;
  [(PFParallaxAssetResource *)&v3 dealloc];
}

- (PFParallaxAssetResource)init
{
  v3.receiver = self;
  v3.super_class = PFParallaxAssetResource;
  result = [(PFParallaxAssetResource *)&v3 init];
  result->_orientation = 1;
  return result;
}

+ (CGImage)newImageWithContentsOfURL:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    _PFAssertFailHandler();
  }

  v6 = v5;
  v7 = CGImageSourceCreateWithURL(v5, 0);
  if (!v7)
  {
    if (!a4)
    {
LABEL_9:
      ImageAtIndex = 0;
      goto LABEL_10;
    }

    v10 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to create image source"];
    v20[0] = v11;
    v12 = MEMORY[0x1E695DF20];
    v13 = v20;
    v14 = &v19;
LABEL_8:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v15];

    goto LABEL_9;
  }

  v8 = v7;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
  CFRelease(v8);
  if (a4 && !ImageAtIndex)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to load image", *MEMORY[0x1E696A278]];
    v18 = v11;
    v12 = MEMORY[0x1E695DF20];
    v13 = &v18;
    v14 = &v17;
    goto LABEL_8;
  }

LABEL_10:

  return ImageAtIndex;
}

+ (BOOL)saveImage:(CGImage *)a3 toURL:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a3)
  {
    _PFAssertFailHandler();
LABEL_13:
    _PFAssertFailHandler();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = [*MEMORY[0x1E6982E00] identifier];
  v10 = CGImageDestinationCreateWithURL(v8, v9, 1uLL, 0);
  if (!v10)
  {
    if (!a5)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to create image destination"];
    v23[0] = v14;
    v15 = MEMORY[0x1E695DF20];
    v16 = v23;
    v17 = &v22;
LABEL_9:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *a5 = [v13 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v18];

    goto LABEL_10;
  }

  v11 = v10;
  CGImageDestinationAddImage(v10, a3, 0);
  v12 = CGImageDestinationFinalize(v11);
  CFRelease(v11);
  if (a5 && !v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to finalize image destination", *MEMORY[0x1E696A278]];
    v21 = v14;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v21;
    v17 = &v20;
    goto LABEL_9;
  }

LABEL_11:

  return v12;
}

@end