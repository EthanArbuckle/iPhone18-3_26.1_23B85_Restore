@interface SMMessagingUtilities
+ (BOOL)handlesInConversation1:(id)a3 canonicallyEqualsHandlesInConversation2:(id)a4;
+ (id)_canonicalHandleMapFromHandles:(id)a3;
+ (id)_canonicalizeHandles:(id)a3;
+ (id)conversationFromHandlesInConversation1:(id)a3 canonicallyIntersectedWithHandlesInConversation2:(id)a4;
+ (id)conversationFromHandlesInConversation1:(id)a3 canonicallyMappedToHandlesInConversation2:(id)a4;
+ (void)queryChatWithGroupID:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation SMMessagingUtilities

+ (void)queryChatWithGroupID:(id)a3 queue:(id)a4 handler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMCoreLibraryCore() && getIMSPIQueryChatWithGroupIDSymbolLoc())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v19 = "+[SMMessagingUtilities queryChatWithGroupID:queue:handler:]";
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%s, IMCoreIMSPIQueryChatWithGroupID available", buf, 0xCu);
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SMMessagingUtilities_queryChatWithGroupID_queue_handler___block_invoke;
    v16[3] = &unk_2788CC768;
    v17 = v9;
    v11 = v7;
    v12 = v8;
    v13 = v16;
    IMSPIQueryChatWithGroupIDSymbolLoc = getIMSPIQueryChatWithGroupIDSymbolLoc();
    if (!IMSPIQueryChatWithGroupIDSymbolLoc)
    {
      dlerror();
      abort_report_np();
    }

    IMSPIQueryChatWithGroupIDSymbolLoc(v11, 25, v12, v13);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v19 = "+[SMMessagingUtilities queryChatWithGroupID:queue:handler:]";
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, IMCoreIMSPIQueryChatWithGroupID not available", buf, 0xCu);
      }
    }

    (*(v9 + 2))(v9, 0);
  }
}

void __59__SMMessagingUtilities_queryChatWithGroupID_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v4)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 136315394;
        v12 = "+[SMMessagingUtilities queryChatWithGroupID:queue:handler:]_block_invoke";
        v13 = 2112;
        v14 = v3;
        v8 = "%s, found chat %@";
        v9 = v7;
        v10 = 22;
LABEL_8:
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, v8, &v11, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "+[SMMessagingUtilities queryChatWithGroupID:queue:handler:]_block_invoke";
      v8 = "%s, no chat found";
      v9 = v7;
      v10 = 12;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v5, v6);
}

+ (id)_canonicalizeHandles:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138413058;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [a1 canonicalIDSIDsForAddress:{v13, v19}];
        [v5 addObject:v14];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = objc_opt_class();
            v20 = NSStringFromClass(v16);
            *buf = v19;
            v26 = v20;
            v27 = 2080;
            v28 = "+[SMMessagingUtilities _canonicalizeHandles:]";
            v29 = 2112;
            v30 = v13;
            v31 = 2112;
            v32 = v14;
            _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %s, raw handle, %@, canonicalized handle, %@", buf, 0x2Au);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v9);
  }

  v17 = [v5 copy];

  return v17;
}

+ (id)_canonicalHandleMapFromHandles:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [a1 canonicalIDSIDsForAddress:v10];
        v12 = [v5 objectForKey:v11];
        v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
        [v5 setObject:v13 forKey:v11];

        if (v12)
        {
          v14 = [v12 arrayByAddingObject:v10];

          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            *buf = 138413058;
            v26 = v17;
            v27 = 2080;
            v28 = "+[SMMessagingUtilities _canonicalHandleMapFromHandles:]";
            v29 = 2112;
            v30 = v14;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@, %s, found multiple handles, %@, for the same canonical handle, %@", buf, 0x2Au);
          }
        }

        else
        {
          v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
          [v5 setObject:v14 forKey:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v7);
  }

  v18 = [v5 copy];

  return v18;
}

+ (BOOL)handlesInConversation1:(id)a3 canonicallyEqualsHandlesInConversation2:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [v6 receiverPrimaryHandles];
  v10 = [a1 _canonicalizeHandles:v9];
  v11 = [v8 initWithArray:v10];

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [v7 receiverPrimaryHandles];
  v14 = [a1 _canonicalizeHandles:v13];
  v15 = [v12 initWithArray:v14];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v6 receiverPrimaryHandles];
      v22 = [v7 receiverPrimaryHandles];
      v23 = 138413570;
      v24 = v20;
      v25 = 2080;
      v26 = "+[SMMessagingUtilities handlesInConversation1:canonicallyEqualsHandlesInConversation2:]";
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v15;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, %s, conversation 1 handles, %@, conversation 2 handles, %@, conversation 1 canonical handles, %@, conversation 2 canonical handles, %@", &v23, 0x3Eu);
    }
  }

  v17 = [v11 isEqualToSet:v15];

  return v17;
}

+ (id)conversationFromHandlesInConversation1:(id)a3 canonicallyMappedToHandlesInConversation2:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v45 = v6;
  v8 = [v6 receiverPrimaryHandles];
  v9 = [a1 _canonicalHandleMapFromHandles:v8];

  v44 = v7;
  v10 = [v7 receiverPrimaryHandles];
  v11 = [a1 _canonicalHandleMapFromHandles:v10];

  v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v47 = v9;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = [v9 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    v16 = 0x277D4A000uLL;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v19 = [v11 objectForKey:v18];
        v20 = v19;
        if (v19 && [v19 count])
        {
          v21 = objc_alloc(*(v16 + 2792));
          v22 = [v20 objectAtIndexedSubscript:0];
          v23 = [v21 initWithPrimaryHandle:v22 secondaryHandles:MEMORY[0x277CBEBF8]];
          [v46 addObject:v23];
        }

        else
        {
          v24 = [v47 objectForKey:v18];
          v22 = v24;
          if (v24 && [v24 count])
          {
            v25 = objc_alloc(*(v16 + 2792));
            v23 = [v47 objectForKey:v18];
            v26 = [v23 objectAtIndexedSubscript:0];
            v27 = [v25 initWithPrimaryHandle:v26 secondaryHandles:MEMORY[0x277CBEBF8]];
            [v46 addObject:v27];

            v16 = 0x277D4A000;
          }

          else
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              *buf = 138413058;
              v53 = v29;
              v54 = 2080;
              v55 = "+[SMMessagingUtilities conversationFromHandlesInConversation1:canonicallyMappedToHandlesInConversation2:]";
              v56 = 2112;
              v57 = v45;
              v58 = 2112;
              v59 = v18;
              _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %s, missing handle in conversation, %@, for key, %@", buf, 0x2Au);

              v16 = 0x277D4A000;
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v66 count:16];
    }

    while (v14);
  }

  v30 = objc_alloc(MEMORY[0x277D4AA98]);
  v31 = [v46 copy];
  v32 = [v45 identifier];
  v33 = [v45 displayName];
  v34 = [v30 initWithReceiverHandles:v31 identifier:v32 displayName:v33];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v45 receiverPrimaryHandles];
      v40 = [v47 allKeys];
      v41 = [v44 receiverPrimaryHandles];
      v42 = [v11 allKeys];
      v43 = [v34 receiverPrimaryHandles];
      *buf = 138413826;
      v53 = v38;
      v54 = 2080;
      v55 = "+[SMMessagingUtilities conversationFromHandlesInConversation1:canonicallyMappedToHandlesInConversation2:]";
      v56 = 2112;
      v57 = v39;
      v58 = 2112;
      v59 = v40;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v42;
      v64 = 2112;
      v65 = v43;
      _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@, %s, original handles in conversation, %@, canonical handles in conversation, %@, handles in reference conversation, %@, canonical handles in reference conversation, %@, final handles in conversation, %@", buf, 0x48u);
    }
  }

  return v34;
}

+ (id)conversationFromHandlesInConversation1:(id)a3 canonicallyIntersectedWithHandlesInConversation2:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = v6;
  v8 = [v6 receiverPrimaryHandles];
  v9 = [a1 _canonicalHandleMapFromHandles:v8];

  v39 = v7;
  v10 = [v7 receiverPrimaryHandles];
  v11 = [a1 _canonicalHandleMapFromHandles:v10];

  v12 = MEMORY[0x277CBEB58];
  v13 = [v9 allKeys];
  v14 = [v12 setWithArray:v13];

  v15 = MEMORY[0x277CBEB98];
  v38 = v11;
  v16 = [v11 allKeys];
  v17 = [v15 setWithArray:v16];

  v37 = v17;
  [v14 intersectSet:v17];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = v14;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    v40 = v18;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        v25 = [v9 objectForKey:v24];
        v26 = v25;
        if (v25 && [v25 count])
        {
          v27 = objc_alloc(MEMORY[0x277D4AAE8]);
          v28 = [v26 objectAtIndexedSubscript:0];
          v29 = [v27 initWithPrimaryHandle:v28 secondaryHandles:MEMORY[0x277CBEBF8]];
          [v18 addObject:v29];
        }

        else
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 138413058;
            v47 = v31;
            v48 = 2080;
            v49 = "+[SMMessagingUtilities conversationFromHandlesInConversation1:canonicallyIntersectedWithHandlesInConversation2:]";
            v50 = 2112;
            v51 = v41;
            v52 = 2112;
            v53 = v24;
            _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %s, missing handle in conversation, %@, for key, %@", buf, 0x2Au);

            v18 = v40;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v21);
  }

  v32 = objc_alloc(MEMORY[0x277D4AA98]);
  v33 = [v41 identifier];
  v34 = [v41 displayName];
  v35 = [v32 initWithReceiverHandles:v18 identifier:v33 displayName:v34];

  return v35;
}

@end