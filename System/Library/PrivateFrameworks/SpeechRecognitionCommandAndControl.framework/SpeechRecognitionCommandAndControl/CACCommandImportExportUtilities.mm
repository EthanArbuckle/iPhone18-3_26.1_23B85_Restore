@interface CACCommandImportExportUtilities
+ (BOOL)isSupportedCommandType:(id)a3;
+ (id)defaultExportURL;
+ (id)exportToURL:(id)a3;
+ (id)importFromURL:(id)a3;
@end

@implementation CACCommandImportExportUtilities

+ (BOOL)isSupportedCommandType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [&unk_287BEFFF0 containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)defaultExportURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.defaultExportedFileName"];
  v5 = [v3 stringWithFormat:@"~/%@", v4];
  v6 = [v5 stringByExpandingTildeInPath];
  v7 = [v6 stringByAppendingPathExtension:kCACCommandsFileExtensionVCCommands];
  v8 = [v2 fileURLWithPath:v7 isDirectory:0];

  return v8;
}

+ (id)importFromURL:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:kCACCommandsFileExtensionVCCommands];
  v82 = 0;
  v5 = *MEMORY[0x277CBE7B8];
  v81 = 0;
  v6 = [v3 getResourceValue:&v82 forKey:v5 error:&v81];
  v7 = v82;
  v8 = v81;
  if (!v6 || ![v7 conformsToType:v4])
  {
    v15 = [CACImportExportResult alloc];
    v16 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.cannotReadFile"];
    v17 = [(CACImportExportResult *)v15 initWithError:v8 title:v16 message:0];

    v9 = 0;
    if (!v8)
    {
LABEL_8:
      v14 = v17;
      goto LABEL_9;
    }

LABEL_6:
    v18 = [[CACImportExportResult alloc] initWithError:v8 title:0 message:0];
    goto LABEL_36;
  }

  v80 = v8;
  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v3 error:&v80];
  v10 = v80;

  if (v9 | v10)
  {
    v17 = 0;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v11 = [CACImportExportResult alloc];
  v12 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.cannotReadFile"];
  v13 = [(CACImportExportResult *)v11 initWithError:0 title:v12 message:0];

  v14 = v13;
  v9 = 0;
LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v17 = [v9 objectForKey:kCACCommandsFileExportCommandsKey];
  }

  else
  {
    v17 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(CACImportExportResult *)v17 count])
  {
    v60 = v14;
    v61 = v9;
    v62 = v7;
    v63 = v4;
    v64 = v3;
    v67 = [MEMORY[0x277CBEB38] dictionary];
    v66 = [MEMORY[0x277CBEB38] dictionary];
    v65 = +[CACPreferences sharedPreferences];
    v19 = [v65 allCustomCommandProperties];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = [(CACImportExportResult *)v17 allKeys];
    v20 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    v21 = 0x279CEA000uLL;
    v68 = v19;
    if (v20)
    {
      v22 = v20;
      v23 = *v77;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v77 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v76 + 1) + 8 * i);
          v26 = [(CACImportExportResult *)v17 objectForKey:v25];
          v27 = v21;
          v28 = *(v21 + 1104);
          v29 = [v26 objectForKey:@"CustomType"];
          LODWORD(v28) = [v28 isSupportedCommandType:v29];

          if (v28)
          {
            v30 = [v19 objectForKey:v25];
            v31 = v30;
            if (v30)
            {
              v32 = v17;
              v33 = [v30 objectForKey:@"CustomModifyDate"];
              v34 = [v26 objectForKey:@"CustomModifyDate"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 compare:v34] == -1)
                {
                  [v66 setObject:v26 forKey:v25];
                }
              }

              v17 = v32;
              v19 = v68;
            }

            else
            {
              [v67 setObject:v26 forKey:v25];
            }
          }

          v21 = v27;
        }

        v22 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
      }

      while (v22);
    }

    v35 = [v19 count];
    v36 = v67;
    v37 = [v67 count] + v35;
    if (v37 <= [*(v21 + 1104) maximumNumberOfAllowedEntries])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__CACCommandImportExportUtilities_importFromURL___block_invoke;
      block[3] = &unk_279CEB4C0;
      v44 = v65;
      v74 = v44;
      v45 = v67;
      v75 = v45;
      v46 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], block);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __49__CACCommandImportExportUtilities_importFromURL___block_invoke_2;
      v70[3] = &unk_279CEB4C0;
      v71 = v44;
      v42 = v66;
      v47 = v66;
      v72 = v47;
      dispatch_async(v46, v70);

      v48 = [v45 count];
      v49 = [v47 count] + v48;
      v50 = [CACImportExportResult alloc];
      v51 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importCompleteAlertTitle"];
      v18 = [(CACImportExportResult *)v50 initWithError:0 title:v51 message:0];

      v7 = v62;
      if (v49)
      {
        v52 = MEMORY[0x277CCACA8];
        v53 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importCompleteAlertDescription"];
        v54 = [v52 stringWithValidatedFormat:v53 validFormatSpecifiers:@"%ld" error:0, v49];
        [(CACImportExportResult *)v18 setMessage:v54];
      }

      else
      {
        v53 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importCompleteAlertDescriptionNoEntries"];
        [(CACImportExportResult *)v18 setMessage:v53];
      }

      v4 = v63;
      v3 = v64;
      v9 = v61;

      v58 = v74;
    }

    else
    {
      v38 = [v19 count];
      v7 = v62;
      if (v38 >= [*(v21 + 1104) maximumNumberOfAllowedEntries])
      {
        v40 = 0;
      }

      else
      {
        v39 = [*(v21 + 1104) maximumNumberOfAllowedEntries];
        v40 = v39 - [v19 count];
      }

      v4 = v63;
      v3 = v64;
      v55 = [CACImportExportResult alloc];
      v56 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importOverflowFailAlertTitle"];
      v18 = [(CACImportExportResult *)v55 initWithError:0 title:v56 message:0];

      if (v40)
      {
        v57 = MEMORY[0x277CCACA8];
        v58 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importOverflowFailAlertDescription"];
        v59 = [v57 stringWithValidatedFormat:v58 validFormatSpecifiers:@"%ld" error:0, v40];
        [(CACImportExportResult *)v18 setMessage:v59];
      }

      else
      {
        v58 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importOverflowFailNoNewAlertDescription"];
        [(CACImportExportResult *)v18 setMessage:v58];
      }

      v9 = v61;
      v42 = v66;
    }
  }

  else
  {
    v41 = [CACImportExportResult alloc];
    v36 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.importCompleteAlertDescriptionNoEntries"];
    v18 = [(CACImportExportResult *)v41 initWithError:0 title:v36 message:0];
    v42 = v14;
  }

  v8 = 0;
LABEL_36:

  return v18;
}

+ (id)exportToURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[CACPreferences sharedPreferences];
    v5 = [v4 allCustomCommandProperties];

    if ([v5 count])
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = MEMORY[0x277CCABB0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v8 = [v7 numberWithDouble:?];
      [v6 setObject:v8 forKey:kCACCommandsFileExportDateKey];

      v9 = objc_alloc(MEMORY[0x277CBEAC0]);
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
      v11 = [v9 initWithContentsOfURL:v10 error:0];

      if (v11)
      {
        [v6 setObject:v11 forKey:kCACCommandsFileExportSystemKey];
      }

      [v6 setObject:v5 forKey:kCACCommandsFileExportCommandsKey];
      v17 = 0;
      [v6 writeToURL:v3 error:&v17];
      v12 = v17;
      if (v12)
      {
        v13 = [[CACImportExportResult alloc] initWithError:v12 title:0 message:0];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [CACImportExportResult alloc];
    v15 = [CACLocaleUtilities localizedUIStringForKey:@"CommandImportExport.failedToCreateURL"];
    v13 = [(CACImportExportResult *)v14 initWithError:0 title:v15 message:0];
  }

  return v13;
}

@end