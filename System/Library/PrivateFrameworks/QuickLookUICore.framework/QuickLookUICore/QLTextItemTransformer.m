@interface QLTextItemTransformer
+ (id)allowedOutputClasses;
+ (id)attributedStringFromData:(id)a3 encoding:(unint64_t)a4 typeIdentifier:(id)a5 error:(id *)a6;
+ (id)wrapperFromData:(id)a3 encoding:(unint64_t)a4 typeIdentifier:(id)a5 error:(id *)a6;
- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5;
- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation QLTextItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = QLGuessEncodingForTextFileAtURL();
  v10 = CFStringConvertEncodingToNSStringEncoding(v9);
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];

  v12 = objc_opt_class();
  v13 = [v7 contentType];

  v14 = [v12 wrapperFromData:v11 encoding:v10 typeIdentifier:v13 error:a5];

  return v14;
}

- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 stringEncoding])
  {
    v9 = [v8 stringEncoding];
  }

  else
  {
    v10 = QLGuessEncodingForTextFileFromData();
    v9 = CFStringConvertEncodingToNSStringEncoding(v10);
  }

  v11 = v9;
  v12 = objc_opt_class();
  v13 = [v8 contentType];
  v14 = [v12 wrapperFromData:v7 encoding:v11 typeIdentifier:v13 error:a5];

  return v14;
}

+ (id)attributedStringFromData:(id)a3 encoding:(unint64_t)a4 typeIdentifier:(id)a5 error:(id *)a6
{
  v6 = [a1 wrapperFromData:a3 encoding:a4 typeIdentifier:a5 error:a6];
  v7 = [v6 string];

  return v7;
}

+ (id)wrapperFromData:(id)a3 encoding:(unint64_t)a4 typeIdentifier:(id)a5 error:(id *)a6
{
  v98 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v70 = v9;
  if (v9)
  {
    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277CE1E58];
  v69 = v10;
  if ([v10 conformsToType:*MEMORY[0x277CE1E58]])
  {
    v71 = *MEMORY[0x277D74128];
    v72 = *MEMORY[0x277D74090];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D74128], 0}];
    if (a4)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      [v12 setObject:v13 forKey:*MEMORY[0x277D74080]];
    }

    v87 = 0;
    v88 = 0;
    v64 = v12;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:v8 options:v12 documentAttributes:&v88 error:&v87];
    v73 = v88;
    v78 = v87;
    if (v8 && !v14)
    {
      v15 = v8;
      v86 = 0;
      v16 = [objc_alloc(MEMORY[0x277D43EE8]) initWithData:v15 error:&v86];
      v63 = v86;
      if (!v63)
      {
        v62 = v15;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v17 = [v16 fileWrapper];
        v18 = [v17 fileWrappers];

        obj = v18;
        v19 = [v18 countByEnumeratingWithState:&v82 objects:v97 count:16];
        if (v19)
        {
          v20 = v19;
          v61 = v8;
          v21 = *v83;
          v22 = *MEMORY[0x277CE1E18];
          v23 = 0x277CE1000uLL;
          v66 = *MEMORY[0x277CE1E18];
          v67 = *v83;
          while (2)
          {
            v24 = 0;
            v68 = v20;
            do
            {
              if (*v83 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v82 + 1) + 8 * v24);
              v26 = [v25 pathExtension];
              if (v26)
              {
                v27 = [*(v23 + 3256) typeWithFilenameExtension:v26 conformingToType:v22];
                if ([v27 conformsToType:v11])
                {
                  v28 = v11;
                  v75 = objc_alloc(MEMORY[0x277CCA898]);
                  v29 = v16;
                  v77 = [v16 fileWrapper];
                  v30 = [v77 fileWrappers];
                  v31 = [v30 objectForKeyedSubscript:v25];
                  v32 = [v31 serializedRepresentation];
                  v95 = v72;
                  v96 = v71;
                  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                  v81 = v78;
                  v76 = [v75 initWithData:v32 options:v33 documentAttributes:0 error:&v81];
                  v34 = v81;

                  v14 = v76;
                  if (v76)
                  {

                    v78 = v34;
                    v8 = v61;
                    v16 = v29;
                    goto LABEL_51;
                  }

                  v78 = v34;
                  v11 = v28;
                  v16 = v29;
                  v21 = v67;
                  v20 = v68;
                  v22 = v66;
                  v23 = 0x277CE1000;
                }

                else
                {
                }
              }

              ++v24;
            }

            while (v20 != v24);
            v20 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v14 = 0;
          v8 = v61;
        }

        else
        {
          v14 = 0;
        }

LABEL_51:

        v15 = v62;
      }

      v78 = v63;
    }

LABEL_53:

    if (v78)
    {
      v52 = MEMORY[0x277D43EF8];
      v53 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v53 = *v52;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v90 = v78;
        _os_log_impl(&dword_261653000, v53, OS_LOG_TYPE_ERROR, "Error while trying to read string %@ #AnyItemViewController", buf, 0xCu);
      }

      v54 = a6;
      if (a6)
      {
        v55 = v78;
LABEL_69:
        v56 = 0;
        *v54 = v55;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_60;
  }

  if ([v10 conformsToType:*MEMORY[0x277CE1E50]])
  {
    v35 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D74090], *MEMORY[0x277D74130], 0}];
    if (a4)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      [v35 setObject:v36 forKey:*MEMORY[0x277D74080]];
    }

    v79 = 0;
    v80 = 0;
    v64 = v35;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:v8 options:v35 documentAttributes:&v80 error:&v79];
    v73 = v80;
    v78 = v79;
    goto LABEL_53;
  }

  if (([v10 conformsToType:*MEMORY[0x277CE1E20]] & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E88]) & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E38]) & 1) != 0 || objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1EF0]))
  {
    if (a4)
    {
      v37 = a4;
    }

    else
    {
      v37 = 4;
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:v37];
    if ([v8 length] && !v38)
    {
      v37 = 1;
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:1];
    }

    if (v38 || [v10 conformsToType:*MEMORY[0x277CE1E38]] && (v38 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", v8, 1)) != 0)
    {
      v39 = [v10 conformsToType:*MEMORY[0x277CE1E70]];
      v40 = *MEMORY[0x277D740A8];
      if (v39)
      {
        v93[0] = *MEMORY[0x277D740A8];
        v41 = MEMORY[0x277D74300];
        [MEMORY[0x277D74300] systemFontSize];
        v42 = *MEMORY[0x277D74418];
        v43 = [v41 monospacedSystemFontOfSize:? weight:?];
        v93[1] = *MEMORY[0x277D74098];
        v44 = *MEMORY[0x277D74120];
        v94[0] = v43;
        v94[1] = v44;
        v45 = MEMORY[0x277CBEAC0];
        v46 = v94;
        v47 = v93;
      }

      else
      {
        v91[0] = *MEMORY[0x277D740A8];
        v50 = MEMORY[0x277D74300];
        [MEMORY[0x277D74300] systemFontSize];
        v43 = [v50 systemFontOfSize:?];
        v91[1] = *MEMORY[0x277D74098];
        v92[0] = v43;
        v92[1] = *MEMORY[0x277D74120];
        v45 = MEMORY[0x277CBEAC0];
        v46 = v92;
        v47 = v91;
      }

      v51 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:2];

      v73 = v51;
      v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38 attributes:v51];
    }

    else
    {
      v48 = MEMORY[0x277D43EF8];
      v49 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v49 = *v48;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v90 = v37;
        _os_log_impl(&dword_261653000, v49, OS_LOG_TYPE_ERROR, "Could not create plain content from data with encoding: %lu #AnyItemViewController", buf, 0xCu);
      }

      v14 = 0;
      v73 = 0;
    }

LABEL_60:
    if (v14)
    {
      v56 = objc_opt_new();
      [v56 setString:v14];
      [v56 setAttributes:v73];
      v78 = 0;
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  v73 = 0;
LABEL_63:
  v57 = MEMORY[0x277D43EF8];
  v58 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v58 = *v57;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v58, OS_LOG_TYPE_ERROR, "Could not create string content for text preview item. #AnyItemViewController", buf, 2u);
  }

  v54 = a6;
  if (a6)
  {
    v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.textItemTransformer" code:1 userInfo:0];
    v78 = 0;
    v14 = 0;
    goto LABEL_69;
  }

  v78 = 0;
  v14 = 0;
LABEL_71:
  v56 = 0;
LABEL_72:

  v59 = *MEMORY[0x277D85DE8];

  return v56;
}

@end