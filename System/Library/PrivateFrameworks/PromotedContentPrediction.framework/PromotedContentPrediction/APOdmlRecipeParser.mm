@interface APOdmlRecipeParser
- (id)_attachmentURLWithName:(id)name fileName:(id)fileName;
- (id)formatRecipe:(id)recipe attachments:(id)attachments error:(id *)error;
@end

@implementation APOdmlRecipeParser

- (id)formatRecipe:(id)recipe attachments:(id)attachments error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  if (objc_msgSend_count(attachmentsCopy, v10, v11))
  {
    v14 = objc_msgSend_modelFileName(recipeCopy, v12, v13);
    v16 = objc_msgSend__attachmentURLWithName_fileName_(self, v15, attachmentsCopy, v14);

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v20 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412546;
        v26 = objc_opt_class();
        v27 = 2112;
        v28 = 0;
        v21 = v26;
        _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_ERROR, "[%@]: No network found at URL: %@", &v25, 0x16u);
      }

      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v22, @"APODMLDESPluginErrorDomain", 8009, 0);
      }
    }
  }

  else
  {
    v18 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "There are no attachments.", &v25, 2u);
    }

    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"APODMLDESPluginErrorDomain", 8011, 0);
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_attachmentURLWithName:(id)name fileName:(id)fileName
{
  nameCopy = name;
  fileNameCopy = fileName;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_260EF0E18;
  v15[3] = &unk_279AC6998;
  v7 = fileNameCopy;
  v16 = v7;
  v9 = objc_msgSend_indexOfObjectPassingTest_(nameCopy, v8, v15);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Network not found.", v14, 2u);
    }

    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(nameCopy, v10, v9);
  }

  return v12;
}

@end