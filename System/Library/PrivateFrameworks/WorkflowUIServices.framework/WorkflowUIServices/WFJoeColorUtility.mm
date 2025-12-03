@interface WFJoeColorUtility
+ (id)colorForImage:(id)image;
@end

@implementation WFJoeColorUtility

+ (id)colorForImage:(id)image
{
  components[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v67 = imageCopy;
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace([imageCopy CGImage], DeviceRGB);
    DataProvider = CGImageGetDataProvider(CopyWithColorSpace);
    v8 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v8);
    BitsPerPixel = CGImageGetBitsPerPixel(CopyWithColorSpace);
    BitsPerComponent = CGImageGetBitsPerComponent(CopyWithColorSpace);
    BytesPerRow = CGImageGetBytesPerRow(CopyWithColorSpace);
    Width = CGImageGetWidth(CopyWithColorSpace);
    Height = CGImageGetHeight(CopyWithColorSpace);
    v74 = Width;
    if (Width)
    {
      v15 = Height;
      v16 = 0;
      v71 = BitsPerPixel / BitsPerComponent;
      do
      {
        if (v15)
        {
          v17 = 0;
          v18 = v15;
          do
          {
            v19 = &BytePtr[v16 * v71 + v17 * BytesPerRow];
            LOBYTE(v14) = *v19;
            v20 = v14 / 255.0;
            components[0] = v20;
            LOBYTE(v20) = v19[1];
            v21 = *&v20 / 255.0;
            components[1] = v21;
            LOBYTE(v21) = v19[2];
            components[2] = *&v21 / 255.0;
            v22 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithCGColor:{CGColorCreate(DeviceRGB, components)}];
            if (([v22 wf_isVeryDark] & 1) == 0 && (objc_msgSend(v22, "wf_isVeryLight") & 1) == 0)
            {
              [v4 addObject:v22];
            }

            ++v17;
            --v18;
          }

          while (v18);
        }

        if ([v4 count] > 0x20)
        {
          break;
        }

        ++v16;
      }

      while (v16 != v74);
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v23 = v4;
    v24 = [v23 countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v89;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v89 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v88 + 1) + 8 * i);
          v29 = [v23 countForObject:v28];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29];
          [v75 setObject:v30 forKeyedSubscript:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v88 objects:v95 count:16];
      }

      while (v25);
    }

    v31 = [v75 keysSortedByValueUsingSelector:?];
    reverseObjectEnumerator = [v31 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = allObjects;
    v35 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    v66 = v23;
    if (v35)
    {
      v36 = v35;
      v37 = *v85;
      v68 = *v85;
      do
      {
        v38 = 0;
        v69 = v36;
        do
        {
          if (*v85 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v84 + 1) + 8 * v38);
          if ([v34 count])
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v40 = [v34 keysSortedByValueUsingSelector:sel_compare_];
            reverseObjectEnumerator2 = [v40 reverseObjectEnumerator];
            allObjects2 = [reverseObjectEnumerator2 allObjects];

            v43 = [allObjects2 countByEnumeratingWithState:&v80 objects:v93 count:16];
            if (v43)
            {
              v44 = v43;
              v73 = v38;
              v45 = *v81;
              do
              {
                for (j = 0; j != v44; ++j)
                {
                  if (*v81 != v45)
                  {
                    objc_enumerationMutation(allObjects2);
                  }

                  if ([*(*(&v80 + 1) + 8 * j) isCloseToColor:v39])
                  {
                    v47 = MEMORY[0x1E696AD98];
                    v48 = [v34 objectForKeyedSubscript:v39];
                    unsignedIntValue = [v48 unsignedIntValue];
                    v50 = [v75 objectForKeyedSubscript:v39];
                    v51 = [v47 numberWithUnsignedInt:{objc_msgSend(v50, "unsignedIntValue") + unsignedIntValue}];
                    [v34 setObject:v51 forKeyedSubscript:v39];
                  }

                  else
                  {
                    v48 = [v75 objectForKeyedSubscript:v39];
                    [v34 setObject:v48 forKeyedSubscript:v39];
                  }
                }

                v44 = [allObjects2 countByEnumeratingWithState:&v80 objects:v93 count:16];
              }

              while (v44);
              v37 = v68;
              v36 = v69;
              v38 = v73;
            }
          }

          else
          {
            allObjects2 = [v75 objectForKeyedSubscript:v39];
            [v34 setObject:allObjects2 forKeyedSubscript:v39];
          }

          ++v38;
        }

        while (v38 != v36);
        v36 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v36);
    }

    allKeys = [v34 allKeys];
    firstObject = [allKeys firstObject];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    allKeys2 = [v34 allKeys];
    v55 = [allKeys2 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v77;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v77 != v57)
          {
            objc_enumerationMutation(allKeys2);
          }

          v59 = *(*(&v76 + 1) + 8 * k);
          v60 = [v34 objectForKeyedSubscript:{firstObject, v66}];
          unsignedIntValue2 = [v60 unsignedIntValue];

          v62 = [v34 objectForKeyedSubscript:v59];
          unsignedIntValue3 = [v62 unsignedIntValue];

          if (unsignedIntValue2 <= unsignedIntValue3)
          {
            v64 = v59;

            firstObject = v64;
          }
        }

        v56 = [allKeys2 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v56);
    }

    imageCopy = v67;
  }

  else
  {
    firstObject = [MEMORY[0x1E69E09E0] colorWithSystemColor:14];
  }

  return firstObject;
}

@end