@interface UIFontPickerLoadRecentsMatchingConfigurationForSuite
@end

@implementation UIFontPickerLoadRecentsMatchingConfigurationForSuite

void ___UIFontPickerLoadRecentsMatchingConfigurationForSuite_block_invoke(id *a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v50 = a3;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [a1[4] _clientRecentFonts];
  v6 = off_1E70EB000;
  v51 = v5;
  v54 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v54)
  {
    v7 = *v69;
    v48 = *v69;
    do
    {
      v8 = 0;
      do
      {
        if (*v69 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [objc_alloc(v6[263]) initWithFontDescriptor:*(*(&v68 + 1) + 8 * v8)];
        v10 = [v9 familyName];
        if ((v5[2](v5, v10) & 1) == 0)
        {

          goto LABEL_27;
        }

        v11 = [v9 fontName];
        if (v11)
        {
          v12 = v11;
          v13 = [v9 fontName];
          v14 = v50[2](v50, v13);

          if (!v14)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v15 = a1[5];
        v16 = [v15 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v65;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v65 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v64 + 1) + 8 * i) fontDescriptor];
              v21 = [v9 fontDescriptor];
              v22 = [v20 isEqual:v21];

              if (v22)
              {

                v5 = v51;
                v6 = off_1E70EB000;
                goto LABEL_25;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v5 = v51;
        v6 = off_1E70EB000;
        v7 = v48;
        if ([v9 isFontFamilyAvailable] && objc_msgSend(v9, "matchesConfiguration:", a1[4]))
        {
          v23 = a1[5];
          if ([a1[4] includeFaces])
          {
            [v23 addObject:v9];
          }

          else
          {
            v24 = [v9 familyInfo];
            [v23 addObject:v24];

LABEL_25:
            v7 = v48;
          }
        }

        if ([a1[5] count] >= 7)
        {

          goto LABEL_33;
        }

LABEL_27:

        ++v8;
      }

      while (v8 != v54);
      v25 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      v54 = v25;
    }

    while (v25);
  }

LABEL_33:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v49 = a1[6];
  v55 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (!v55)
  {
    goto LABEL_67;
  }

  v53 = *v61;
  do
  {
    v26 = 0;
    do
    {
      if (*v61 != v53)
      {
        objc_enumerationMutation(v49);
      }

      v27 = [(__objc2_class *)v6[263] infoWithName:*(*(&v60 + 1) + 8 * v26)];
      v28 = [v27 familyName];
      if ((v5[2](v5, v28) & 1) == 0)
      {

        goto LABEL_61;
      }

      v29 = [v27 fontName];
      if (v29)
      {
        v30 = v29;
        v31 = [v27 fontName];
        v32 = v50[2](v50, v31);

        if (!v32)
        {
          goto LABEL_61;
        }
      }

      else
      {
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v33 = a1[5];
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v72 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        while (2)
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v56 + 1) + 8 * j);
            if ([a1[4] includeFaces])
            {
              v39 = [v38 fontName];
              v40 = [v27 fontName];
              v41 = [v39 isEqualToString:v40];

              if (v41)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v42 = [v38 familyName];
              v43 = [v27 familyName];
              v44 = [v42 isEqualToString:v43];

              if (v44)
              {
LABEL_59:

                v5 = v51;
                v6 = off_1E70EB000;
                goto LABEL_60;
              }
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v56 objects:v72 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v5 = v51;
      v6 = off_1E70EB000;
      if ([v27 isFontFamilyAvailable] && objc_msgSend(v27, "matchesConfiguration:", a1[4]))
      {
        v45 = a1[5];
        if ([a1[4] includeFaces])
        {
          [v45 addObject:v27];
        }

        else
        {
          v46 = [v27 familyInfo];
          [v45 addObject:v46];
        }
      }

LABEL_60:
      if ([a1[5] count] >= 7)
      {

        goto LABEL_67;
      }

LABEL_61:

      ++v26;
    }

    while (v26 != v55);
    v47 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
    v55 = v47;
  }

  while (v47);
LABEL_67:
}

@end