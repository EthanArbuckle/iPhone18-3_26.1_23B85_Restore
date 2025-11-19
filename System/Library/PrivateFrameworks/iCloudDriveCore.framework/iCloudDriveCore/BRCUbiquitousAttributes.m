@interface BRCUbiquitousAttributes
+ (id)brc_attributesValues:(id)a3 localItem:(id)a4;
+ (void)brc_getterForAttribute:(id)a3;
@end

@implementation BRCUbiquitousAttributes

+ (void)brc_getterForAttribute:(id)a3
{
  v3 = brc_getterForAttribute__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[BRCUbiquitousAttributes brc_getterForAttribute:];
  }

  v5 = [brc_getterForAttribute__ubiquitousAttributeToFunction objectForKeyedSubscript:v4];

  v6 = [v5 pointerValue];
  return v6;
}

void __50__BRCUbiquitousAttributes_brc_getterForAttribute___block_invoke()
{
  v26[22] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277CBE958];
  v24 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemHasUnresolvedConflicts];
  v26[0] = v24;
  v25[1] = *MEMORY[0x277CBE960];
  v23 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloading];
  v26[1] = v23;
  v25[2] = *MEMORY[0x277CBEBE0];
  v22 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloadRequested];
  v26[2] = v22;
  v25[3] = *MEMORY[0x277CBE928];
  v21 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloadRequested];
  v26[3] = v21;
  v25[4] = *MEMORY[0x277CBE990];
  v20 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemUploadingError];
  v26[4] = v20;
  v25[5] = *MEMORY[0x277CBE930];
  v19 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemDownloadingError];
  v26[5] = v19;
  v25[6] = *MEMORY[0x277CBE970];
  v18 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsShared];
  v26[6] = v18;
  v25[7] = *MEMORY[0x277CBE9D8];
  v17 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemRole];
  v26[7] = v17;
  v25[8] = *MEMORY[0x277CBE9A0];
  v16 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemRole];
  v26[8] = v16;
  v25[9] = *MEMORY[0x277CBE9B8];
  v15 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOwnerName];
  v26[9] = v15;
  v25[10] = *MEMORY[0x277CBE9B0];
  v14 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOwnerNameComponents];
  v26[10] = v14;
  v25[11] = *MEMORY[0x277CBE9A8];
  v13 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorNameComponents];
  v26[11] = v13;
  v25[12] = *MEMORY[0x277CBE9C0];
  v0 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOldPermissions];
  v26[12] = v0;
  v25[13] = *MEMORY[0x277CBE998];
  v1 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemCurrentUserPermissions];
  v26[13] = v1;
  v25[14] = *MEMORY[0x277CBE988];
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsUploading];
  v26[14] = v2;
  v25[15] = *MEMORY[0x277CFAD38];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorDeviceName];
  v26[15] = v3;
  v25[16] = *MEMORY[0x277CFAD40];
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorName];
  v26[16] = v4;
  v25[17] = *MEMORY[0x277CFAD30];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsConflicted];
  v26[17] = v5;
  v25[18] = *MEMORY[0x277CFAD28];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIdentifier];
  v26[18] = v6;
  v25[19] = *MEMORY[0x277CFAD18];
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousDocumentRecordID];
  v26[19] = v7;
  v25[20] = *MEMORY[0x277CFACD0];
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousEditedSinceShared];
  v26[20] = v8;
  v25[21] = *MEMORY[0x277CFAD20];
  v9 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousIsTopLevelSharedItem];
  v26[21] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:22];
  v11 = brc_getterForAttribute__ubiquitousAttributeToFunction;
  brc_getterForAttribute__ubiquitousAttributeToFunction = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)brc_attributesValues:(id)a3 localItem:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[BRCUbiquitousAttributes brc_attributesValues:localItem:];
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    *&v12 = 138412546;
    v28 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [a1 brc_getterForAttribute:{v16, v28}];
        if (v17)
        {
          v18 = v17;
          v19 = [v7 db];
          v20 = v18(v7, v19);

          if (v20)
          {
            [v29 setObject:v20 forKeyedSubscript:v16];
          }

          else
          {
            v22 = brc_bread_crumbs();
            v23 = brc_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = v28;
              v35 = v16;
              v36 = 2112;
              v37 = v22;
              _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] No value for attribute: %@%@", buf, 0x16u);
            }
          }
        }

        else
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = v28;
            v35 = v16;
            v36 = 2112;
            v37 = v20;
            _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] unsupported attribute: %@%@", buf, 0x16u);
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    +[BRCUbiquitousAttributes brc_attributesValues:localItem:];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (void)brc_attributesValues:localItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] localItem: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)brc_attributesValues:localItem:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] returning %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end