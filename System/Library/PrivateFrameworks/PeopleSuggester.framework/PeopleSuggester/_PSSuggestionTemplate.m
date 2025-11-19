@interface _PSSuggestionTemplate
- (_PSSuggestionTemplate)initWithBundleID:(id)a3 interactionRecipients:(id)a4 image:(id)a5 groupName:(id)a6 recipientContactIDs:(id)a7 recipientEmailAddresses:(id)a8 recipientPhoneNumbers:(id)a9 recipientDisplayNames:(id)a10 contactIdToHandleMapping:(id)a11 handleToDisplayNameMapping:(id)a12 reason:(id)a13 reasonType:(id)a14 modelScore:(id)a15;
- (_PSSuggestionTemplate)initWithBundleID:(id)a3 interactionRecipients:(id)a4 image:(id)a5 groupName:(id)a6 recipientContactIDs:(id)a7 recipientEmailAddresses:(id)a8 recipientPhoneNumbers:(id)a9 recipientDisplayNames:(id)a10 contactIdToHandleMapping:(id)a11 reason:(id)a12 reasonType:(id)a13;
- (id)description;
- (id)suggestionWithContactIDMapping:(id)a3 phoneMapping:(id)a4 emailMapping:(id)a5 contactStore:(id)a6 contactKeysToFetch:(id)a7;
@end

@implementation _PSSuggestionTemplate

- (_PSSuggestionTemplate)initWithBundleID:(id)a3 interactionRecipients:(id)a4 image:(id)a5 groupName:(id)a6 recipientContactIDs:(id)a7 recipientEmailAddresses:(id)a8 recipientPhoneNumbers:(id)a9 recipientDisplayNames:(id)a10 contactIdToHandleMapping:(id)a11 reason:(id)a12 reasonType:(id)a13
{
  v29 = MEMORY[0x1E696AD98];
  v30 = a13;
  v27 = a12;
  v26 = a11;
  v16 = a10;
  v17 = a9;
  v23 = a8;
  v18 = a7;
  v19 = a6;
  v25 = a5;
  v20 = a4;
  v21 = a3;
  v32 = [v29 numberWithDouble:-1.0];
  v34 = [(_PSSuggestionTemplate *)self initWithBundleID:v21 interactionRecipients:v20 image:v25 groupName:v19 recipientContactIDs:v18 recipientEmailAddresses:v23 recipientPhoneNumbers:v17 recipientDisplayNames:v16 contactIdToHandleMapping:v26 handleToDisplayNameMapping:0 reason:v27 reasonType:v30 modelScore:v32];

  return v34;
}

- (_PSSuggestionTemplate)initWithBundleID:(id)a3 interactionRecipients:(id)a4 image:(id)a5 groupName:(id)a6 recipientContactIDs:(id)a7 recipientEmailAddresses:(id)a8 recipientPhoneNumbers:(id)a9 recipientDisplayNames:(id)a10 contactIdToHandleMapping:(id)a11 handleToDisplayNameMapping:(id)a12 reason:(id)a13 reasonType:(id)a14 modelScore:(id)a15
{
  v41 = a3;
  v29 = a4;
  v40 = a4;
  v30 = a5;
  v39 = a5;
  v31 = a6;
  v38 = a6;
  v32 = a7;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v42.receiver = self;
  v42.super_class = _PSSuggestionTemplate;
  v25 = [(_PSSuggestionTemplate *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_bundleID, a3);
    objc_storeStrong(&v26->_interactionRecipients, v29);
    objc_storeStrong(&v26->_image, v30);
    objc_storeStrong(&v26->_groupName, v31);
    objc_storeStrong(&v26->_recipientContactIDs, v32);
    objc_storeStrong(&v26->_recipientEmailAddresses, a8);
    objc_storeStrong(&v26->_recipientPhoneNumbers, a9);
    objc_storeStrong(&v26->_recipientDisplayNames, a10);
    objc_storeStrong(&v26->_contactIdToHandleMapping, a11);
    objc_storeStrong(&v26->_handleToDisplayNameMapping, a12);
    objc_storeStrong(&v26->_reason, a13);
    objc_storeStrong(&v26->_reasonType, a14);
    objc_storeStrong(&v26->_modelScore, a15);
  }

  return v26;
}

- (id)suggestionWithContactIDMapping:(id)a3 phoneMapping:(id)a4 emailMapping:(id)a5 contactStore:(id)a6 contactKeysToFetch:(id)a7
{
  v150 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v116 = a4;
  v115 = a5;
  v11 = [(_PSSuggestionTemplate *)self bundleID];
  v12 = [v11 length];

  if (!v12)
  {
    v122 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
    {
      [_PSSuggestionTemplate suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:];
    }

    v85 = 0;
    goto LABEL_82;
  }

  v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = +[_PSConstants mobileMessagesBundleId];
  v16 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v17 = [v14 initWithObjects:{v15, v16, 0}];

  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = +[_PSConstants mobileMailBundleId];
  v20 = +[_PSConstants shareSheetTargetBundleIdMail];
  v21 = [v18 initWithObjects:{v19, v20, 0}];

  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = +[_PSConstants sharePlayBundleId];
  v24 = v13;
  v25 = +[_PSConstants collaborationSuggestionBundleId];
  v111 = [v22 initWithObjects:{v23, v25, 0}];

  v113 = v17;
  v110 = v21;
  v112 = [v17 setByAddingObjectsFromSet:v21];
  v114 = v10;
  v121 = v13;
  if ([v10 count])
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v26 = [(_PSSuggestionTemplate *)self recipientContactIDs];
    v27 = [v26 countByEnumeratingWithState:&v139 objects:v149 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v140;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v140 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v139 + 1) + 8 * i);
          if (([v24 containsObject:v31] & 1) == 0)
          {
            v32 = [v10 objectForKeyedSubscript:v31];
            [v24 addObject:v31];
            if (v32)
            {
              v33 = [(_PSSuggestionTemplate *)self contactIdToHandleMapping];
              v34 = [v33 objectForKeyedSubscript:v31];

              if (!v34)
              {
                v35 = [(_PSSuggestionTemplate *)self contactIdToHandleMapping];
                v36 = [v32 identifier];
                v34 = [v35 objectForKeyedSubscript:v36];
              }

              v37 = [_PSRecipient alloc];
              v38 = [v32 identifier];
              v39 = [(_PSRecipient *)v37 initWithIdentifier:v38 handle:v34 displayName:0 contact:v32];

              [v122 addObject:v39];
              v24 = v121;
              [v121 addObject:v31];
              if (v34)
              {
                [v121 addObject:v34];
              }

              v10 = v114;
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v139 objects:v149 count:16];
      }

      while (v28);
    }
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = [(_PSSuggestionTemplate *)self recipientEmailAddresses];
  v40 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v136;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v136 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v135 + 1) + 8 * j);
        if (([v24 containsObject:v44] & 1) == 0)
        {
          v45 = [v115 objectForKeyedSubscript:v44];
          v46 = [v45 identifier];
          if (v46)
          {
            if (([v24 containsObject:v46] & 1) == 0)
            {
              v47 = [_PSRecipient alloc];
              v48 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
              v49 = [v48 objectForKeyedSubscript:v44];
              v50 = [(_PSRecipient *)v47 initWithIdentifier:v46 handle:v44 displayName:v49 contact:v45];

              v24 = v121;
              [v122 addObject:v50];
              v51 = v121;
              v52 = v46;
              goto LABEL_29;
            }
          }

          else
          {
            v53 = [_PSRecipient alloc];
            v54 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
            v55 = [v54 objectForKeyedSubscript:v44];
            v50 = [(_PSRecipient *)v53 initWithIdentifier:&stru_1F2D6CE98 handle:v44 displayName:v55 contact:0];

            v24 = v121;
            v51 = v122;
            v52 = v50;
LABEL_29:
            [v51 addObject:v52];
          }

          [v24 addObject:v44];

          continue;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
    }

    while (v41);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obja = [(_PSSuggestionTemplate *)self recipientPhoneNumbers];
  v56 = [obja countByEnumeratingWithState:&v131 objects:v147 count:16];
  if (!v56)
  {
    goto LABEL_47;
  }

  v57 = v56;
  v58 = *v132;
  do
  {
    for (k = 0; k != v57; ++k)
    {
      if (*v132 != v58)
      {
        objc_enumerationMutation(obja);
      }

      v60 = *(*(&v131 + 1) + 8 * k);
      if (([v24 containsObject:v60] & 1) == 0)
      {
        v61 = [v116 objectForKeyedSubscript:v60];
        v62 = [v61 identifier];
        if (v62)
        {
          if (([v24 containsObject:v62] & 1) == 0)
          {
            v63 = [_PSRecipient alloc];
            v64 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
            v65 = [v64 objectForKeyedSubscript:v60];
            v66 = [(_PSRecipient *)v63 initWithIdentifier:v62 handle:v60 displayName:v65 contact:v61];

            v24 = v121;
            [v122 addObject:v66];
            v67 = v121;
            v68 = v62;
            goto LABEL_43;
          }
        }

        else
        {
          v69 = [_PSRecipient alloc];
          v70 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
          v71 = [v70 objectForKeyedSubscript:v60];
          v66 = [(_PSRecipient *)v69 initWithIdentifier:&stru_1F2D6CE98 handle:v60 displayName:v71 contact:0];

          v24 = v121;
          v67 = v122;
          v68 = v66;
LABEL_43:
          [v67 addObject:v68];
        }

        [v24 addObject:v60];

        continue;
      }
    }

    v57 = [obja countByEnumeratingWithState:&v131 objects:v147 count:16];
  }

  while (v57);
LABEL_47:

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v117 = [(_PSSuggestionTemplate *)self recipientDisplayNames];
  v72 = [v117 countByEnumeratingWithState:&v127 objects:v146 count:16];
  if (v72)
  {
    v73 = v72;
    objb = *v128;
    do
    {
      for (m = 0; m != v73; ++m)
      {
        if (*v128 != objb)
        {
          objc_enumerationMutation(v117);
        }

        v75 = *(*(&v127 + 1) + 8 * m);
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v76 = [(NSDictionary *)self->_handleToDisplayNameMapping allKeys];
        v77 = [v76 countByEnumeratingWithState:&v123 objects:v145 count:16];
        if (v77)
        {
          v78 = *v124;
          while (2)
          {
            for (n = 0; n != v77; n = n + 1)
            {
              if (*v124 != v78)
              {
                objc_enumerationMutation(v76);
              }

              v80 = *(*(&v123 + 1) + 8 * n);
              v81 = [(NSDictionary *)self->_handleToDisplayNameMapping objectForKeyedSubscript:v80];
              if ([v81 isEqualToString:v75])
              {
                v77 = v80;

                goto LABEL_62;
              }
            }

            v77 = [v76 countByEnumeratingWithState:&v123 objects:v145 count:16];
            if (v77)
            {
              continue;
            }

            break;
          }

LABEL_62:
          v24 = v121;
        }

        v82 = [[_PSRecipient alloc] initWithIdentifier:&stru_1F2D6CE98 handle:v77 displayName:v75 contact:0];
        [v122 addObject:v82];
      }

      v73 = [v117 countByEnumeratingWithState:&v127 objects:v146 count:16];
    }

    while (v73);
  }

  v83 = [(_PSSuggestionTemplate *)self bundleID];
  if ([v113 containsObject:v83])
  {

    v10 = v114;
    v84 = v111;
    goto LABEL_71;
  }

  v86 = [(_PSSuggestionTemplate *)self bundleID];
  v87 = [v110 containsObject:v86];

  v10 = v114;
  v84 = v111;
  if (v87)
  {
LABEL_71:
    v88 = [(_PSSuggestionTemplate *)self interactionRecipients];
  }

  else
  {
    v105 = [(_PSSuggestionTemplate *)self bundleID];
    v106 = [v111 containsObject:v105];

    if (v106)
    {
      v107 = MEMORY[0x1E696AEC0];
      v108 = [(_PSSuggestionTemplate *)self interactionRecipients];
      v109 = [(_PSSuggestionTemplate *)self bundleID];
      v88 = [v107 stringWithFormat:@"%@_%@", v108, v109];
    }

    else
    {
      v88 = 0;
    }
  }

  v89 = [(_PSSuggestionTemplate *)self bundleID];
  v90 = [v112 containsObject:v89];

  if (v90)
  {
    v91 = 0;
  }

  else
  {
    v91 = [(_PSSuggestionTemplate *)self interactionRecipients];
  }

  v92 = [(_PSSuggestionTemplate *)self groupName];
  if (v92)
  {

    goto LABEL_78;
  }

  if ([v122 count])
  {
LABEL_78:
    v93 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      v94 = [(_PSSuggestionTemplate *)self description];
      *buf = 138412290;
      v144 = v94;
      _os_log_impl(&dword_1B5ED1000, v93, OS_LOG_TYPE_INFO, "templateToSuggestion: %@", buf, 0xCu);
    }

    v95 = [_PSSuggestion alloc];
    v96 = [(_PSSuggestionTemplate *)self bundleID];
    v97 = [(_PSSuggestionTemplate *)self groupName];
    v98 = [v122 copy];
    v99 = [(_PSSuggestionTemplate *)self image];
    v100 = [(_PSSuggestionTemplate *)self reason];
    v101 = [(_PSSuggestionTemplate *)self reasonType];
    v102 = [(_PSSuggestionTemplate *)self modelScore];
    v85 = [(_PSSuggestion *)v95 initWithBundleID:v96 conversationIdentifier:v88 groupName:v97 recipients:v98 derivedIntentIdentifier:v91 image:v99 reason:v100 reasonType:v101 score:v102];

    v10 = v114;
    v24 = v121;
    v84 = v111;
  }

  else
  {
    v96 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggestionTemplate suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:];
    }

    v85 = 0;
  }

LABEL_82:
  v103 = *MEMORY[0x1E69E9840];

  return v85;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PSSuggestionTemplate *)self groupName];
  v6 = [(_PSSuggestionTemplate *)self bundleID];
  v7 = [(_PSSuggestionTemplate *)self reason];
  v8 = [(_PSSuggestionTemplate *)self reasonType];
  v9 = [(_PSSuggestionTemplate *)self image];
  v10 = [(_PSSuggestionTemplate *)self modelScore];
  v11 = [v3 stringWithFormat:@"<%@ %p> groupName: %@, bundleID: %@, reason: %@, reasonType: %@, image: %@ modelScore: %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "No groupName and recipients in _PSSuggestion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_FAULT, "Empty or nil bundleID on _PSSuggestion %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end