@interface QLTextItemTransformer
+ (id)allowedOutputClasses;
+ (id)attributedStringFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error;
+ (id)wrapperFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLTextItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  contextCopy = context;
  lCopy = l;
  v9 = QLGuessEncodingForTextFileAtURL();
  v10 = CFStringConvertEncodingToNSStringEncoding(v9);
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];

  v12 = objc_opt_class();
  contentType = [contextCopy contentType];

  v14 = [v12 wrapperFromData:v11 encoding:v10 typeIdentifier:contentType error:error];

  return v14;
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  if ([contextCopy stringEncoding])
  {
    stringEncoding = [contextCopy stringEncoding];
  }

  else
  {
    v10 = QLGuessEncodingForTextFileFromData();
    stringEncoding = CFStringConvertEncodingToNSStringEncoding(v10);
  }

  v11 = stringEncoding;
  v12 = objc_opt_class();
  contentType = [contextCopy contentType];
  v14 = [v12 wrapperFromData:dataCopy encoding:v11 typeIdentifier:contentType error:error];

  return v14;
}

+ (id)attributedStringFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error
{
  v6 = [self wrapperFromData:data encoding:encoding typeIdentifier:identifier error:error];
  string = [v6 string];

  return string;
}

+ (id)wrapperFromData:(id)data encoding:(unint64_t)encoding typeIdentifier:(id)identifier error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v70 = identifierCopy;
  if (identifierCopy)
  {
    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:identifierCopy];
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
    if (encoding)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
      [v12 setObject:v13 forKey:*MEMORY[0x277D74080]];
    }

    v87 = 0;
    v88 = 0;
    v64 = v12;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:dataCopy options:v12 documentAttributes:&v88 error:&v87];
    v73 = v88;
    v78 = v87;
    if (dataCopy && !v14)
    {
      v15 = dataCopy;
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
        fileWrapper = [v16 fileWrapper];
        fileWrappers = [fileWrapper fileWrappers];

        obj = fileWrappers;
        v19 = [fileWrappers countByEnumeratingWithState:&v82 objects:v97 count:16];
        if (v19)
        {
          v20 = v19;
          v61 = dataCopy;
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
              pathExtension = [v25 pathExtension];
              if (pathExtension)
              {
                v27 = [*(v23 + 3256) typeWithFilenameExtension:pathExtension conformingToType:v22];
                if ([v27 conformsToType:v11])
                {
                  v28 = v11;
                  v75 = objc_alloc(MEMORY[0x277CCA898]);
                  v29 = v16;
                  fileWrapper2 = [v16 fileWrapper];
                  fileWrappers2 = [fileWrapper2 fileWrappers];
                  v31 = [fileWrappers2 objectForKeyedSubscript:v25];
                  serializedRepresentation = [v31 serializedRepresentation];
                  v95 = v72;
                  v96 = v71;
                  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                  v81 = v78;
                  v76 = [v75 initWithData:serializedRepresentation options:v33 documentAttributes:0 error:&v81];
                  v34 = v81;

                  v14 = v76;
                  if (v76)
                  {

                    v78 = v34;
                    dataCopy = v61;
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
          dataCopy = v61;
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

      errorCopy2 = error;
      if (error)
      {
        v55 = v78;
LABEL_69:
        v56 = 0;
        *errorCopy2 = v55;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_60;
  }

  if ([v10 conformsToType:*MEMORY[0x277CE1E50]])
  {
    v35 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D74090], *MEMORY[0x277D74130], 0}];
    if (encoding)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
      [v35 setObject:v36 forKey:*MEMORY[0x277D74080]];
    }

    v79 = 0;
    v80 = 0;
    v64 = v35;
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:dataCopy options:v35 documentAttributes:&v80 error:&v79];
    v73 = v80;
    v78 = v79;
    goto LABEL_53;
  }

  if (([v10 conformsToType:*MEMORY[0x277CE1E20]] & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E88]) & 1) != 0 || (objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1E38]) & 1) != 0 || objc_msgSend(v10, "conformsToType:", *MEMORY[0x277CE1EF0]))
  {
    if (encoding)
    {
      encodingCopy = encoding;
    }

    else
    {
      encodingCopy = 4;
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:encodingCopy];
    if ([dataCopy length] && !v38)
    {
      encodingCopy = 1;
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:1];
    }

    if (v38 || [v10 conformsToType:*MEMORY[0x277CE1E38]] && (v38 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", dataCopy, 1)) != 0)
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
        v90 = encodingCopy;
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

  errorCopy2 = error;
  if (error)
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