@interface PUPhotoSceneHUD
- (PUPhotoSceneHUD)initWithPhoto:(id)photo;
- (void)update;
@end

@implementation PUPhotoSceneHUD

- (void)update
{
  v86 = *MEMORY[0x1E69E9840];
  hudView = [(PUPhotoSceneHUD *)self hudView];
  mdataURL = [(PUPhotoSceneHUD *)self mdataURL];

  if (!mdataURL)
  {
    v22 = @"Could not find MDATA file.";
LABEL_16:
    v7 = objc_alloc_init(MEMORY[0x1E69C35E0]);
    [v7 setTitle:v22];
    [hudView addVisualization:v7];
    goto LABEL_39;
  }

  v5 = MEMORY[0x1E695DEF0];
  mdataURL2 = [(PUPhotoSceneHUD *)self mdataURL];
  v7 = [v5 dataWithContentsOfURL:mdataURL2 options:2 error:0];

  if (!v7)
  {
    v22 = @"Could not read MDATA file.";
    goto LABEL_16;
  }

  v82 = 0;
  v8 = [MEMORY[0x1E69C0688] deserializedMetadataFromData:v7 error:&v82];
  v9 = v82;
  v10 = v9;
  if (!v8)
  {

    v22 = @"Could not deserialize MDATA.";
    goto LABEL_16;
  }

  semanticDevelopmentGatingObservations = [v8 semanticDevelopmentGatingObservations];
  v68 = v10;
  v69 = v7;
  v66 = semanticDevelopmentGatingObservations;
  v67 = v8;
  if ([semanticDevelopmentGatingObservations count])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v12 = semanticDevelopmentGatingObservations;
    v13 = [v12 countByEnumeratingWithState:&v78 objects:v85 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v79;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v79 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v78 + 1) + 8 * i);
          v18 = objc_alloc_init(MEMORY[0x1E69C35C8]);
          identifier = [v17 identifier];
          [v18 setTitle:identifier];

          v20 = MEMORY[0x1E696AD98];
          [v17 confidence];
          v21 = [v20 numberWithFloat:?];
          [v18 setValue:v21];

          [hudView addVisualization:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v78 objects:v85 count:16];
      }

      while (v14);
      v7 = v69;
      semanticDevelopmentGatingObservations = v66;
      v8 = v67;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69C35E0]);
    [v12 setTitle:@"No scene detected"];
    [hudView addVisualization:v12];
  }

  foodAndDrinkObservations = [v8 foodAndDrinkObservations];
  if ([foodAndDrinkObservations count])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v24 = foodAndDrinkObservations;
    v25 = [v24 countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v25)
    {
      v26 = v25;
      v64 = foodAndDrinkObservations;
      v27 = *v75;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v75 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v74 + 1) + 8 * j);
          v30 = objc_alloc_init(MEMORY[0x1E69C35C8]);
          labels = [v29 labels];
          firstObject = [labels firstObject];
          identifier2 = [firstObject identifier];
          [v30 setTitle:identifier2];

          v34 = MEMORY[0x1E696AEC0];
          [v29 boundingBox];
          v36 = v35;
          [v29 boundingBox];
          v38 = v37;
          [v29 boundingBox];
          v40 = v39;
          [v29 boundingBox];
          v42 = v41;
          [v29 confidence];
          v44 = [v34 stringWithFormat:@"(%.3f, %.3f, %.3f, %.3f) %.3f", v36, v38, v40, v42, v43];
          [v30 setValue:v44];

          [hudView addVisualization:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v26);
      v10 = v68;
      v7 = v69;
      semanticDevelopmentGatingObservations = v66;
      v8 = v67;
      foodAndDrinkObservations = v64;
    }
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E69C35E0]);
    [v24 setTitle:@"No food/drink detected"];
    [hudView addVisualization:v24];
  }

  faceObservations = [v8 faceObservations];
  if ([faceObservations count])
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v46 = faceObservations;
    v47 = [v46 countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v47)
    {
      v48 = v47;
      v65 = foodAndDrinkObservations;
      v49 = *v71;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v71 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v70 + 1) + 8 * k);
          v52 = objc_alloc_init(MEMORY[0x1E69C35C8]);
          [v52 setTitle:@"Face"];
          v53 = MEMORY[0x1E696AEC0];
          [v51 boundingBox];
          v55 = v54;
          [v51 boundingBox];
          v57 = v56;
          [v51 boundingBox];
          v59 = v58;
          [v51 boundingBox];
          v61 = v60;
          [v51 confidence];
          v63 = [v53 stringWithFormat:@"(%.3f, %.3f, %.3f, %.3f) %.3f", v55, v57, v59, v61, v62];
          [v52 setValue:v63];

          [hudView addVisualization:v52];
        }

        v48 = [v46 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v48);
      v10 = v68;
      v7 = v69;
      semanticDevelopmentGatingObservations = v66;
      v8 = v67;
      foodAndDrinkObservations = v65;
    }
  }

  else
  {
    v46 = objc_alloc_init(MEMORY[0x1E69C35E0]);
    [v46 setTitle:@"No faces detected"];
    [hudView addVisualization:v46];
  }

LABEL_39:
}

- (PUPhotoSceneHUD)initWithPhoto:(id)photo
{
  v34 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  v32.receiver = self;
  v32.super_class = PUPhotoSceneHUD;
  v5 = [(PUPhotoSceneHUD *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = objc_alloc_init(MEMORY[0x1E69C35D8]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v6 layer];
  [layer setBorderWidth:1.0];

  redColor = [MEMORY[0x1E69DC888] redColor];
  cGColor = [redColor CGColor];
  layer2 = [v6 layer];
  [layer2 setBorderColor:cGColor];

  [(PUPhotoSceneHUD *)v5 addSubview:v6];
  objc_storeStrong(&v5->_hudView, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v6;
    v26 = photoCopy;
    v27 = v5;
    v11 = photoCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v11;
    fileURLsForDiagnosticFiles = [v11 fileURLsForDiagnosticFiles];
    v14 = [fileURLsForDiagnosticFiles countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(fileURLsForDiagnosticFiles);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          path = [v18 path];
          if ([defaultManager fileExistsAtPath:path])
          {
            path2 = [v18 path];
            lowercaseString = [path2 lowercaseString];
            v22 = [lowercaseString hasSuffix:@"mdata"];

            if (v22)
            {
              objc_storeStrong(&v27->_mdataURL, v18);
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        v15 = [fileURLsForDiagnosticFiles countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

LABEL_13:

    photoCopy = v26;
    v5 = v27;
    v6 = v25;
  }

  return v5;
}

@end