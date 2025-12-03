@interface PFParallaxLayerStackArchiver
+ (BOOL)saveCompoundLayerStack:(id)stack toURL:(id)l options:(unint64_t)options error:(id *)error;
+ (id)loadCompoundLayerStackFromURL:(id)l options:(unint64_t)options error:(id *)error;
+ (void)initialize;
@end

@implementation PFParallaxLayerStackArchiver

+ (id)loadCompoundLayerStackFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  v231 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = [lCopy URLByAppendingPathComponent:@"Contents.json"];
  rect.origin.x = 0.0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:0 error:&rect];
  v9 = *&rect.origin.x;
  if (v8)
  {
    *texture = v9;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:texture];
    v11 = *texture;

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v10;
        v12 = 0;
        v9 = v11;
        v13 = v10;
        goto LABEL_9;
      }

      v21 = MEMORY[0x1E696ABC0];
      v229 = *MEMORY[0x1E696A278];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid JSON contents"];
      *buf = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v229 count:1];
      v12 = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v23];
      v24 = v12;
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v229 = *MEMORY[0x1E696A278];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to deserialize JSON data: %@", v11];
      *buf = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v229 count:1];
      v12 = [v17 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v19];
      v20 = v12;

      v10 = 0;
    }

    v13 = 0;
    v9 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load data: %@", v9];
    *texture = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:texture forKeys:buf count:1];
    v12 = [v14 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v15];
    v16 = v12;

    v13 = 0;
  }

LABEL_9:

  v25 = v12;
  if (!v13)
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v227 = *MEMORY[0x1E696A278];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read layer stack contents: %@", v25];
      v228 = v26;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
      [v34 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v28];
      *error = v35 = 0;
      goto LABEL_181;
    }

    v35 = 0;
    goto LABEL_183;
  }

  v26 = [v13 objectForKeyedSubscript:@"version"];
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v38 = MEMORY[0x1E696ABC0];
        v225 = *MEMORY[0x1E696A278];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid version info: %@", v26];
        v226 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
        v37 = [v38 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v29];
        goto LABEL_28;
      }

LABEL_29:
      v35 = 0;
      goto LABEL_182;
    }
  }

  unsignedIntegerValue = [v26 unsignedIntegerValue];
  if (unsignedIntegerValue >= 0xC)
  {
    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v223 = *MEMORY[0x1E696A278];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported layer stack version: %@", v26];
      v224 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
      v37 = [v36 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v29];
LABEL_28:
      v35 = 0;
      *error = v37;
      goto LABEL_180;
    }

    goto LABEL_29;
  }

  v28 = [v13 objectForKeyedSubscript:@"properties"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v39 = MEMORY[0x1E696ABC0];
      v221 = *MEMORY[0x1E696A278];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid properties dictionary: %@", v28];
      v222 = v29;
      v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
      [v39 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v164];
      *error = v35 = 0;

      goto LABEL_180;
    }

    v35 = 0;
    goto LABEL_181;
  }

  if (unsignedIntegerValue < 6)
  {
    v29 = [v28 objectForKeyedSubscript:@"layout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v162 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v29];
      if (v162)
      {
        v163 = 0;
        goto LABEL_49;
      }

      if (error)
      {
        v45 = MEMORY[0x1E696ABC0];
        v209 = *MEMORY[0x1E696A278];
        v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't decode portraitLayout: %@", v29];
        v210 = v163;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
        v42 = [v45 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v41];
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v43 = MEMORY[0x1E696ABC0];
    v211 = *MEMORY[0x1E696A278];
    v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid portraitLayout dictionary: %@", v29];
    v212 = v163;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
    v42 = [v43 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v41];
LABEL_45:
    *error = v42;

    v35 = 0;
    goto LABEL_179;
  }

  v29 = [v28 objectForKeyedSubscript:@"portraitLayout"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_46;
    }

    v40 = MEMORY[0x1E696ABC0];
    v219 = *MEMORY[0x1E696A278];
    v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid portraitLayout dictionary: %@", v29];
    v220 = v163;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v42 = [v40 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v41];
    goto LABEL_45;
  }

  v162 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v29];
  if (!v162)
  {
    if (error)
    {
      v44 = MEMORY[0x1E696ABC0];
      v217 = *MEMORY[0x1E696A278];
      v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't decode portraitLayout: %@", v29];
      v218 = v163;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
      v42 = [v44 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v41];
      goto LABEL_45;
    }

LABEL_46:
    v35 = 0;
    goto LABEL_180;
  }

  v30 = [v28 objectForKeyedSubscript:@"landscapeLayout"];
  if (v30)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v167 = MEMORY[0x1E696ABC0];
        v215 = *MEMORY[0x1E696A278];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid landscapeLayout dictionary: %@", v30];
        v216 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
        v33 = [v167 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v32];
        goto LABEL_62;
      }

LABEL_63:

      v35 = 0;
      v163 = v29;
      goto LABEL_178;
    }

    v163 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v30];
    if (!v163)
    {
      if (error)
      {
        v166 = MEMORY[0x1E696ABC0];
        v213 = *MEMORY[0x1E696A278];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't decode landscapeLayout: %@", v30];
        v214 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
        v33 = [v166 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v32];
LABEL_62:
        *error = v33;

        goto LABEL_63;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v163 = 0;
  }

LABEL_49:
  v161 = [v28 objectForKeyedSubscript:@"parallaxDisabled"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v47 = MEMORY[0x1E696ABC0];
      v207 = *MEMORY[0x1E696A278];
      v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parallax flag: %@", v161];
      v208 = v161;
      v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
      [v47 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v157];
      *error = v35 = 0;

      goto LABEL_176;
    }

    v35 = 0;
    goto LABEL_177;
  }

  bOOLValue = [v161 BOOLValue];
  v46 = -1.0;
  bOOLValue6 = bOOLValue ^ 1;
  if (unsignedIntegerValue < 2)
  {
    bOOLValue3 = 0;
    bOOLValue2 = bOOLValue ^ 1;
  }

  else
  {
    v161 = [v28 objectForKeyedSubscript:@"depthEnabled"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v48 = MEMORY[0x1E696ABC0];
        v205 = *MEMORY[0x1E696A278];
        v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid depth flag: %@", v161];
        v206 = v160;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
        *error = [v48 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v49];

        goto LABEL_154;
      }

      goto LABEL_189;
    }

    bOOLValue2 = [v161 BOOLValue];

    if (unsignedIntegerValue == 2)
    {
      goto LABEL_53;
    }

    v161 = [v28 objectForKeyedSubscript:@"clockAreaLuminance"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v115 = MEMORY[0x1E696ABC0];
        v203 = *MEMORY[0x1E696A278];
        v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid clockLuminanceValue: %@", v161];
        v204 = v160;
        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
        *error = [v115 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v116];

        goto LABEL_154;
      }

      goto LABEL_189;
    }

    [v161 doubleValue];
    v46 = v112;

    if (unsignedIntegerValue < 5)
    {
LABEL_53:
      bOOLValue3 = 0;
    }

    else
    {
      v161 = [v28 objectForKeyedSubscript:@"settlingEffectEnabled"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v130 = MEMORY[0x1E696ABC0];
          v201 = *MEMORY[0x1E696A278];
          v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid settlingEffect flag: %@", v161];
          v202 = v160;
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
          *error = [v130 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v131];

          goto LABEL_154;
        }

        goto LABEL_189;
      }

      bOOLValue3 = [v161 BOOLValue];
    }
  }

  v161 = [v28 objectForKeyedSubscript:@"spatialPhotoEnabled"];
  if (v161)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue4 = [v161 BOOLValue];
      goto LABEL_66;
    }

    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v199 = *MEMORY[0x1E696A278];
      v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid spatialPhotoFlag flag: %@", v161];
      v200 = v160;
      v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
      [v50 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v147];
      *error = v35 = 0;

      goto LABEL_175;
    }

LABEL_189:
    v35 = 0;
    goto LABEL_176;
  }

  bOOLValue4 = 0;
LABEL_66:
  v160 = [v28 objectForKeyedSubscript:@"userAdjustedVisibleFrame"];
  if (v160)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue5 = [v160 BOOLValue];
      goto LABEL_74;
    }

    if (error)
    {
      v111 = MEMORY[0x1E696ABC0];
      v197 = *MEMORY[0x1E696A278];
      v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid userAdjustedVisibleFrameFlag flag: %@", v160];
      v198 = v158;
      v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
      [v111 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v140];
      *error = v35 = 0;

      goto LABEL_174;
    }

LABEL_154:
    v35 = 0;
    goto LABEL_175;
  }

  bOOLValue5 = 0;
LABEL_74:
  if (unsignedIntegerValue >= 6 && v163)
  {
    v158 = [v28 objectForKeyedSubscript:@"depthEnabled-landscape"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v113 = MEMORY[0x1E696ABC0];
        v195 = *MEMORY[0x1E696A278];
        v148 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid depth flag: %@", v158];
        v196 = v148;
        v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
        *error = [v113 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v114];

        v35 = 0;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_174;
    }

    bOOLValue6 = [v158 BOOLValue];
  }

  v158 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v139 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = [v13 objectForKeyedSubscript:@"layers"];
  v146 = [(PFParallaxLayerStack *)obj countByEnumeratingWithState:&v171 objects:v194 count:16];
  if (!v146)
  {
    goto LABEL_139;
  }

  v144 = *v172;
  v134 = *MEMORY[0x1E696A278];
  do
  {
    v51 = 0;
    do
    {
      if (*v172 != v144)
      {
        v52 = v51;
        objc_enumerationMutation(obj);
        v51 = v52;
      }

      v151 = v51;
      v53 = *(*(&v171 + 1) + 8 * v51);
      v159 = [v53 objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v117 = MEMORY[0x1E696ABC0];
          v192 = v134;
          v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid layer identifier: %@", v159];
          v193 = v159;
          dicta = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
          *error = [v117 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:dicta];

          goto LABEL_171;
        }

LABEL_172:
        v35 = 0;
        goto LABEL_173;
      }

      if (LayerIDMatchesOptions(v159, options, 0))
      {
        v159 = [v53 objectForKeyedSubscript:@"filename"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dict = [v53 objectForKeyedSubscript:@"frame"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v150 = [v53 objectForKeyedSubscript:@"zPosition"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = *(MEMORY[0x1E695F050] + 16);
              rect.origin = *MEMORY[0x1E695F050];
              rect.size = v54;
              if (CGRectMakeWithDictionaryRepresentation(dict, &rect))
              {
                v156 = [lCopy URLByAppendingPathComponent:v159];
                pathExtension = [v156 pathExtension];
                v56 = [pathExtension isEqualToString:@"HEIC"];

                if (v56)
                {
                  *texture = 0;
                  v57 = s_log;
                  v58 = v57;
                  v59 = s_signpost;
                  if ((s_signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v59, "PFParallaxLayer.read", &unk_1B36B501D, buf, 2u);
                  }

                  v169 = v25;
                  v60 = ReadImageFromURL(texture, v156, (options >> 16) & 1, &v169);
                  v143 = v169;

                  v61 = s_log;
                  v62 = v61;
                  v63 = s_signpost;
                  if ((s_signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v62, OS_SIGNPOST_INTERVAL_END, v63, "PFParallaxLayer.read", &unk_1B36B501D, buf, 2u);
                  }

                  if (v60)
                  {
                    v64 = [PFParallaxImageLayer alloc];
                    v65 = *texture;
                    [v150 doubleValue];
                    v67 = [(PFParallaxImageLayer *)v64 initWithImage:v65 frame:v159 zPosition:rect.origin.x identifier:rect.origin.y, rect.size.width, rect.size.height, v66];
                    CVPixelBufferRelease(*texture);
                    goto LABEL_116;
                  }

                  if (error)
                  {
                    v83 = MEMORY[0x1E696ABC0];
                    v182 = v134;
                    v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't decode layer image: %@", v143];
                    v183 = v143;
                    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
                    *error = [v83 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v85];
                  }

                  v67 = 0;
LABEL_110:
                  v86 = 0;
                }

                else
                {
                  pathExtension2 = [v156 pathExtension];
                  v69 = [pathExtension2 isEqualToString:@"MOV"];

                  if (v69)
                  {
                    v70 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v156];
                    v71 = [PFParallaxVideoLayer alloc];
                    [v150 doubleValue];
                    v67 = [(PFParallaxVideoLayer *)v71 initWithVideoData:v70 frame:v159 zPosition:rect.origin.x identifier:rect.origin.y, rect.size.width, rect.size.height, v72];
                  }

                  else
                  {
                    pathExtension3 = [v156 pathExtension];
                    v74 = +[PFParallaxSpatialPhotoLayer fileExtension];
                    v75 = [pathExtension3 isEqualToString:v74];

                    if (v75)
                    {
                      v168 = 0;
                      v76 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v156 options:1 error:&v168];
                      v77 = v168;
                      v78 = v77;
                      if (!v76 || v77)
                      {
                        v79 = s_log;
                        if (os_log_type_enabled(s_log, OS_LOG_TYPE_ERROR))
                        {
                          *texture = 138412546;
                          *&texture[4] = v156;
                          v180 = 2112;
                          v181 = v78;
                          _os_log_error_impl(&dword_1B35C1000, v79, OS_LOG_TYPE_ERROR, "Error initializing mapped data for: %@ error:%@", texture, 0x16u);
                        }

                        v80 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v156];

                        v76 = v80;
                      }

                      v81 = [PFParallaxSpatialPhotoLayer alloc];
                      [v150 doubleValue];
                      v67 = [(PFParallaxSpatialPhotoLayer *)v81 initWithSceneData:v76 scene:0 frame:v159 zPosition:rect.origin.x identifier:rect.origin.y, rect.size.width, rect.size.height, v82];
                    }

                    else
                    {
                      pathExtension4 = [v156 pathExtension];
                      v88 = +[PFParallaxSpatialPhotoOcclusionLayer fileExtension];
                      v89 = [pathExtension4 isEqualToString:v88];

                      if (v89)
                      {
                        v90 = [PFParallaxSpatialPhotoOcclusionLayer alloc];
                        [v150 doubleValue];
                        v67 = [(PFParallaxSpatialPhotoOcclusionLayer *)v90 initWithFrame:v159 zPosition:rect.origin.x identifier:rect.origin.y, rect.size.width, rect.size.height, v91];
                      }

                      else
                      {
                        pathExtension5 = [v156 pathExtension];
                        v93 = +[PFParallaxDataLayer fileExtension];
                        v94 = [pathExtension5 isEqualToString:v93];

                        if (!v94)
                        {
                          if (error)
                          {
                            v105 = MEMORY[0x1E696ABC0];
                            v177 = v134;
                            v155 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid content file extension: %@", v159];
                            v178 = v155;
                            v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
                            *error = [v105 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v107];
                          }

                          v67 = 0;
                          v86 = 0;
                          v143 = v25;
                          goto LABEL_121;
                        }

                        v95 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v156];
                        v96 = [PFParallaxDataLayer alloc];
                        [v150 doubleValue];
                        v67 = [(PFParallaxDataLayer *)v96 initWithData:v95 frame:v159 zPosition:rect.origin.x identifier:rect.origin.y, rect.size.width, rect.size.height, v97];
                      }
                    }
                  }

                  v143 = v25;
LABEL_116:
                  if (unsignedIntegerValue < 6)
                  {
                    [v158 addObject:v67];
                  }

                  else
                  {
                    lastPathComponent = [v156 lastPathComponent];
                    v99 = [lastPathComponent hasPrefix:@"landscape-"];

                    if (v99)
                    {
                      goto LABEL_137;
                    }

                    lastPathComponent2 = [v156 lastPathComponent];
                    v101 = [lastPathComponent2 hasPrefix:@"portrait-"];

                    if (!v101)
                    {
                      if (error)
                      {
                        v102 = MEMORY[0x1E696ABC0];
                        v175 = v134;
                        v1552 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid content file prefix: %@", v159];
                        v176 = v1552;
                        v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
                        *error = [v102 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v104];
                      }

                      goto LABEL_110;
                    }

                    [v158 addObject:v67];
                    if (unsignedIntegerValue != 6)
                    {
                      if ([(PFParallaxLayer *)v67 isBackfill]|| unsignedIntegerValue >= 8 && ([(PFParallaxLayer *)v67 isSettlingEffect]|| ([(PFParallaxLayer *)v67 identifier], v108 = objc_claimAutoreleasedReturnValue(), v109 = PFParallaxLayerIDIsAnySpatialPhoto(v108), v108, v109)))
                      {
LABEL_137:
                        [v139 addObject:v67];
                      }
                    }
                  }

                  v86 = 1;
                }

LABEL_121:

                if (!v86)
                {
                  v35 = 0;
                  v25 = v143;
                  goto LABEL_173;
                }

                v25 = v143;
                goto LABEL_123;
              }

              if (error)
              {
                v126 = MEMORY[0x1E696ABC0];
                v184 = v134;
                dict = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid layer frame: %@", dict];
                v185 = dict;
                v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                *error = [v126 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v128];
              }
            }

            else if (error)
            {
              v123 = MEMORY[0x1E696ABC0];
              v186 = v134;
              v150 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid zPosition value: %@", v150];
              v187 = v150;
              v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
              *error = [v123 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v125];
            }
          }

          else if (error)
          {
            v120 = MEMORY[0x1E696ABC0];
            v188 = v134;
            dict2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid frame info: %@", dict];
            v189 = dict2;
            v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
            *error = [v120 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v122];
          }
        }

        else if (error)
        {
          v118 = MEMORY[0x1E696ABC0];
          v190 = v134;
          dictb = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid filename: %@", v159];
          v191 = dictb;
          v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
          *error = [v118 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v119];
        }

LABEL_171:

        goto LABEL_172;
      }

LABEL_123:

      v51 = v151 + 1;
    }

    while (v146 != v151 + 1);
    v110 = [(PFParallaxLayerStack *)obj countByEnumeratingWithState:&v171 objects:v194 count:16];
    v146 = v110;
  }

  while (v110);
LABEL_139:

  LOBYTE(v132) = bOOLValue5;
  obj = [[PFParallaxLayerStack alloc] initWithLayers:v158 layout:v162 depthEnabled:bOOLValue2 parallaxDisabled:bOOLValue clockAreaLuminance:bOOLValue3 settlingEffectEnabled:bOOLValue4 spatialPhotoEnabled:v46 userAdjustedVisibleFrame:v132];
  if (unsignedIntegerValue != 9)
  {
    [(PFParallaxLayerStack *)obj markMayContainBakedHeadroom];
  }

  if (v163)
  {
    LOBYTE(v133) = bOOLValue5;
    v159 = [[PFParallaxLayerStack alloc] initWithLayers:v139 layout:v163 depthEnabled:bOOLValue6 parallaxDisabled:bOOLValue clockAreaLuminance:bOOLValue3 settlingEffectEnabled:bOOLValue4 spatialPhotoEnabled:v46 userAdjustedVisibleFrame:v133];
    if (unsignedIntegerValue != 9)
    {
      [(PFParallaxLayerStack *)v159 markMayContainBakedHeadroom];
    }
  }

  else
  {
    v159 = 0;
  }

  v35 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:obj landscapeLayerStack:v159];
LABEL_173:

LABEL_174:
LABEL_175:

LABEL_176:
LABEL_177:

LABEL_178:
  v29 = v162;
LABEL_179:

LABEL_180:
LABEL_181:

LABEL_182:
LABEL_183:

  return v35;
}

+ (BOOL)saveCompoundLayerStack:(id)stack toURL:(id)l options:(unint64_t)options error:(id *)error
{
  v130[1] = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  lCopy = l;
  v84 = stackCopy;
  if (!stackCopy)
  {
    _PFAssertFailHandler();
LABEL_59:
    _PFAssertFailHandler();
  }

  if (!lCopy)
  {
    goto LABEL_59;
  }

  v88 = lCopy;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v110 = 0;
  v10 = [defaultManager createDirectoryAtURL:v88 withIntermediateDirectories:0 attributes:0 error:&v110];
  v11 = v110;
  if (v10)
  {
    portraitLayerStack = [v84 portraitLayerStack];
    layers = [portraitLayerStack layers];
    v105 = MEMORY[0x1E69E9820];
    v106 = 3221225472;
    v107 = __75__PFParallaxLayerStackArchiver_saveCompoundLayerStack_toURL_options_error___block_invoke;
    v108 = &__block_descriptor_40_e25_B16__0__PFParallaxLayer_8l;
    optionsCopy = options;
    v14 = PFFilter();

    landscapeLayerStack = [v84 landscapeLayerStack];
    layers2 = [landscapeLayerStack layers];
    v100 = MEMORY[0x1E69E9820];
    v101 = 3221225472;
    v102 = __75__PFParallaxLayerStackArchiver_saveCompoundLayerStack_toURL_options_error___block_invoke_2;
    v103 = &__block_descriptor_40_e25_B16__0__PFParallaxLayer_8l;
    optionsCopy2 = options;
    v82 = PFFilter();

    v85 = [v14 arrayByAddingObjectsFromArray:v82];
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v85, "count")}];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v14;
    v18 = [obj countByEnumeratingWithState:&v96 objects:v128 count:16];
    if (v18)
    {
      v19 = *v97;
      while (2)
      {
        v20 = 0;
        v21 = v11;
        do
        {
          if (*v97 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v96 + 1) + 8 * v20);
          v23 = [v22 makeUniqueFileNameWithFileNames:v17 orientation:1];
          v24 = [v88 URLByAppendingPathComponent:v23];
          v95 = v21;
          LOBYTE(v22) = [v22 saveToURL:v24 error:&v95];
          v11 = v95;

          if ((v22 & 1) == 0)
          {
            if (error)
            {
              v61 = MEMORY[0x1E696ABC0];
              v126 = *MEMORY[0x1E696A278];
              v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write layer contents: %@", v11];
              v127 = v79;
              v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
              *error = [v61 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v62];

              v59 = 0;
              v86 = obj;
            }

            else
            {
              v59 = 0;
              v86 = obj;
            }

            goto LABEL_54;
          }

          [v17 addObject:v23];

          ++v20;
          v21 = v11;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v96 objects:v128 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v86 = v82;
    v25 = [v86 countByEnumeratingWithState:&v91 objects:v125 count:16];
    if (v25)
    {
      v26 = *v92;
      while (2)
      {
        v27 = 0;
        v28 = v11;
        do
        {
          if (*v92 != v26)
          {
            objc_enumerationMutation(v86);
          }

          v29 = *(*(&v91 + 1) + 8 * v27);
          v23 = [v29 makeUniqueFileNameWithFileNames:v17 orientation:2];
          v24 = [v88 URLByAppendingPathComponent:v23];
          v90 = v28;
          LOBYTE(v29) = [v29 saveToURL:v24 error:&v90];
          v11 = v90;

          if ((v29 & 1) == 0)
          {
            if (error)
            {
              v63 = MEMORY[0x1E696ABC0];
              v123 = *MEMORY[0x1E696A278];
              v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write layer contents: %@", v11];
              v124 = v80;
              v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
              *error = [v63 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v64];

              v59 = 0;
            }

            else
            {
              v59 = 0;
            }

            goto LABEL_54;
          }

          [v17 addObject:v23];

          ++v27;
          v28 = v11;
        }

        while (v25 != v27);
        v25 = [v86 countByEnumeratingWithState:&v91 objects:v125 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v85, "count")}];
    if ([v85 count])
    {
      v30 = 0;
      do
      {
        v31 = [v85 objectAtIndexedSubscript:v30];
        v32 = [v17 objectAtIndexedSubscript:v30];
        v122[0] = v32;
        v121[0] = @"filename";
        v121[1] = @"frame";
        [v31 frame];
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v131);
        v122[1] = DictionaryRepresentation;
        v121[2] = @"zPosition";
        v34 = MEMORY[0x1E696AD98];
        [v31 zPosition];
        v35 = [v34 numberWithDouble:?];
        v122[2] = v35;
        v121[3] = @"identifier";
        identifier = [v31 identifier];
        v122[3] = identifier;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:4];
        [v86 addObject:v37];

        ++v30;
      }

      while (v30 < [v85 count]);
    }

    portraitLayerStack2 = [v84 portraitLayerStack];
    v23 = portraitLayerStack2;
    if (portraitLayerStack2)
    {
      layout = [portraitLayerStack2 layout];
      v40 = layout == 0;

      if (!v40)
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:7];
        layout2 = [v23 layout];
        dictionaryRepresentation = [layout2 dictionaryRepresentation];
        [v24 setObject:dictionaryRepresentation forKeyedSubscript:@"portraitLayout"];

        v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "depthEnabled")}];
        [v24 setObject:v43 forKeyedSubscript:@"depthEnabled"];

        v44 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "settlingEffectEnabled")}];
        [v24 setObject:v44 forKeyedSubscript:@"settlingEffectEnabled"];

        v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "spatialPhotoEnabled")}];
        [v24 setObject:v45 forKeyedSubscript:@"spatialPhotoEnabled"];

        v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "userAdjustedVisibleFrame")}];
        [v24 setObject:v46 forKeyedSubscript:@"userAdjustedVisibleFrame"];

        v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "parallaxDisabled")}];
        [v24 setObject:v47 forKeyedSubscript:@"parallaxDisabled"];

        v48 = MEMORY[0x1E696AD98];
        [v23 clockAreaLuminance];
        v49 = [v48 numberWithDouble:?];
        [v24 setObject:v49 forKeyedSubscript:@"clockAreaLuminance"];

        landscapeLayerStack2 = [v84 landscapeLayerStack];
        LOBYTE(v49) = landscapeLayerStack2 == 0;

        if ((v49 & 1) == 0)
        {
          landscapeLayerStack3 = [v84 landscapeLayerStack];
          layout3 = [landscapeLayerStack3 layout];
          dictionaryRepresentation2 = [layout3 dictionaryRepresentation];
          [v24 setObject:dictionaryRepresentation2 forKeyedSubscript:@"landscapeLayout"];

          v54 = MEMORY[0x1E696AD98];
          landscapeLayerStack4 = [v84 landscapeLayerStack];
          v56 = [v54 numberWithBool:{objc_msgSend(landscapeLayerStack4, "depthEnabled")}];
          [v24 setObject:v56 forKeyedSubscript:@"depthEnabled-landscape"];
        }

        v115[0] = @"version";
        v115[1] = @"layers";
        v116[0] = &unk_1F2AAB020;
        v116[1] = v86;
        v115[2] = @"properties";
        v116[2] = v24;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:3];
        v77 = [v88 URLByAppendingPathComponent:@"Contents.json"];
        v89 = v11;
        v57 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v78 options:1 error:&v89];
        v58 = v89;

        if (v57)
        {
          if ([v57 writeToURL:v77 atomically:1])
          {
            v59 = 1;
LABEL_52:

            v11 = v58;
LABEL_53:

LABEL_54:
            goto LABEL_55;
          }

          if (error)
          {
            v71 = MEMORY[0x1E696ABC0];
            v111 = *MEMORY[0x1E696A278];
            v72 = MEMORY[0x1E696AEC0];
            path = [v77 path];
            v74 = [v72 stringWithFormat:@"Failed to write layer stack contents to file: %@", path];
            v112 = v74;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            *error = [v71 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v75];
          }
        }

        else
        {
          if (error)
          {
            v68 = MEMORY[0x1E696ABC0];
            v113 = *MEMORY[0x1E696A278];
            v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to serialize layer stack contents: %@", v58];
            v114 = v69;
            v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            *error = [v68 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v70];
          }

          v57 = 0;
        }

        v59 = 0;
        goto LABEL_52;
      }

      if (error)
      {
        v67 = MEMORY[0x1E696ABC0];
        v117 = *MEMORY[0x1E696A278];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Portrait layer stack is missing a layout"];
        v118 = v24;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v66 = [v67 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v78];
        goto LABEL_43;
      }
    }

    else
    {
      if (error)
      {
        v65 = MEMORY[0x1E696ABC0];
        v119 = *MEMORY[0x1E696A278];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compound layer stack is missing a portrait layer stack"];
        v120 = v24;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v66 = [v65 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v78];
        v23 = 0;
LABEL_43:
        v59 = 0;
        *error = v66;
        goto LABEL_53;
      }

      v23 = 0;
    }

    v59 = 0;
LABEL_55:

    goto LABEL_56;
  }

  if (error)
  {
    v60 = MEMORY[0x1E696ABC0];
    v129 = *MEMORY[0x1E696A278];
    obj = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create layer stack directory: %@", v11];
    v130[0] = obj;
    v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:&v129 count:1];
    [v60 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v82];
    *error = v59 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v59 = 0;
LABEL_57:

  return v59;
}

uint64_t __75__PFParallaxLayerStackArchiver_saveCompoundLayerStack_toURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = LayerIDMatchesOptions(v3, *(a1 + 32), 1);

  return v4;
}

uint64_t __75__PFParallaxLayerStackArchiver_saveCompoundLayerStack_toURL_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = LayerIDMatchesOptions(v3, v2 & 0xFFFFFFFFFFFFFFBDLL, 1);

  return v4;
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PFParallaxLayerStackArchiver_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken[0] != -1)
  {
    dispatch_once(initialize_onceToken, block);
  }
}

os_signpost_id_t __42__PFParallaxLayerStackArchiver_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.photos.PhotosFormats", "layerStackArchiver");
  v3 = s_log;
  s_log = v2;

  result = os_signpost_id_make_with_pointer(s_log, *(a1 + 32));
  s_signpost = result;
  return result;
}

@end