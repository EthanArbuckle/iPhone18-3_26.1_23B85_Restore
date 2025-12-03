@interface CIContext(PICoreImageUtilities)
- (id)pi_createColorCubeDataForFilters:()PICoreImageUtilities dimension:colorSpace:;
@end

@implementation CIContext(PICoreImageUtilities)

- (id)pi_createColorCubeDataForFilters:()PICoreImageUtilities dimension:colorSpace:
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4 * a4;
  v10 = [MEMORY[0x1E695DF88] dataWithLength:a4 * a4 * 4 * a4];
  v11 = v10;
  if (v10)
  {
    mutableBytes = [v10 mutableBytes];
    if (a4)
    {
      v13 = 0;
      v14 = (a4 - 1);
      do
      {
        v15 = 0;
        v16 = ((v13 / v14) * 255.0) + 0.5;
        if (v16 < 255.0)
        {
          v17 = ((v13 / v14) * 255.0) + 0.5;
        }

        else
        {
          v17 = 255.0;
        }

        v18 = v17;
        if (v16 < 0.0)
        {
          LOBYTE(v18) = 0;
        }

        do
        {
          v19 = 0;
          v20 = ((v15 / v14) * 255.0) + 0.5;
          if (v20 < 255.0)
          {
            v21 = ((v15 / v14) * 255.0) + 0.5;
          }

          else
          {
            v21 = 255.0;
          }

          v22 = v21;
          if (v20 < 0.0)
          {
            LOBYTE(v22) = 0;
          }

          do
          {
            v23 = ((v19 / v14) * 255.0) + 0.5;
            if (v23 < 255.0)
            {
              v24 = ((v19 / v14) * 255.0) + 0.5;
            }

            else
            {
              v24 = 255.0;
            }

            v25 = v24;
            if (v23 < 0.0)
            {
              LOBYTE(v25) = 0;
            }

            *mutableBytes = v25;
            mutableBytes[1] = v22;
            mutableBytes[2] = v18;
            mutableBytes[3] = -1;
            mutableBytes += 4;
            ++v19;
          }

          while (a4 != v19);
          ++v15;
        }

        while (v15 != a4);
        ++v13;
      }

      while (v13 != a4);
    }

    v46 = a4 * a4 * 4 * a4;
    selfCopy = self;
    v26 = a4;
    v27 = v9;
    v43 = 4 * a4;
    v42 = *MEMORY[0x1E695F910];
    v45 = a5;
    outputImage = [MEMORY[0x1E695F658] imageWithBitmapData:v11 bytesPerRow:4 * a4 size:a4 format:v9 colorSpace:?];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v47 = v8;
    v29 = v8;
    v30 = [v29 countByEnumeratingWithState:&v49 objects:v53 count:16];
    v48 = outputImage;
    if (v30)
    {
      v31 = v30;
      v32 = *v50;
      v33 = *MEMORY[0x1E695FAB0];
      do
      {
        v34 = 0;
        v35 = outputImage;
        do
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v49 + 1) + 8 * v34);
          v37 = [v36 valueForKey:v33];
          [v36 setValue:v35 forKey:v33];
          outputImage = [v36 outputImage];

          [v36 setValue:v37 forKey:v33];
          ++v34;
          v35 = outputImage;
        }

        while (v31 != v34);
        v31 = [v29 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v31);
    }

    v38 = [MEMORY[0x1E695DF88] dataWithLength:v46];
    v39 = v38;
    if (v38)
    {
      [selfCopy render:outputImage toBitmap:objc_msgSend(v38 rowBytes:"mutableBytes") bounds:v43 format:v42 colorSpace:{v45, 0.0, 0.0, v26, v27}];
      v40 = v39;
    }

    v8 = v47;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

@end