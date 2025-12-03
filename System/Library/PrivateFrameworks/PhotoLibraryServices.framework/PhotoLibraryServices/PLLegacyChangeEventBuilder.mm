@interface PLLegacyChangeEventBuilder
+ (id)createXPCDictionaryFromChangedObjectIDs:(id)ds redundantDeletes:(id)deletes uuidsForCloudDeletion:(id)deletion updatedAttributesByObjectID:(id)d updatedRelationshipsByObjectID:(id)iD updatedOrderKeys:(id)keys changeSource:(int)source syncChangeMarker:(BOOL)self0;
@end

@implementation PLLegacyChangeEventBuilder

+ (id)createXPCDictionaryFromChangedObjectIDs:(id)ds redundantDeletes:(id)deletes uuidsForCloudDeletion:(id)deletion updatedAttributesByObjectID:(id)d updatedRelationshipsByObjectID:(id)iD updatedOrderKeys:(id)keys changeSource:(int)source syncChangeMarker:(BOOL)self0
{
  v130[3] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  deletesCopy = deletes;
  deletionCopy = deletion;
  dCopy = d;
  iDCopy = iD;
  keysCopy = keys;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__18258;
  v121 = __Block_byref_object_dispose__18259;
  v122 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __215__PLLegacyChangeEventBuilder_createXPCDictionaryFromChangedObjectIDs_redundantDeletes_uuidsForCloudDeletion_updatedAttributesByObjectID_updatedRelationshipsByObjectID_updatedOrderKeys_changeSource_syncChangeMarker___block_invoke;
  aBlock[3] = &unk_1E756ED68;
  aBlock[4] = &v117;
  sourceCopy = source;
  v77 = _Block_copy(aBlock);
  v15 = *MEMORY[0x1E695D4C8];
  v130[0] = *MEMORY[0x1E695D320];
  v130[1] = v15;
  v71 = v15;
  v72 = *MEMORY[0x1E695D2F0];
  v130[2] = *MEMORY[0x1E695D2F0];
  xarray = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:3];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  allKeys = [deletionCopy allKeys];
  v17 = [allKeys countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (v17)
  {
    v18 = *v112;
    obj = allKeys;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v112 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v111 + 1) + 8 * i);
        v21 = [deletionCopy objectForKey:v20];
        if (v21)
        {
          v77[2]();
          v22 = xpc_array_create(0, 0);
          v23 = v118[5];
          v24 = v20;
          xpc_dictionary_set_value(v23, [v20 UTF8String], v22);
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v25 = v21;
          v26 = [v25 countByEnumeratingWithState:&v107 objects:v128 count:16];
          if (v26)
          {
            v27 = *v108;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v108 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v107 + 1) + 8 * j) UTF8String]);
              }

              v26 = [v25 countByEnumeratingWithState:&v107 objects:v128 count:16];
            }

            while (v26);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
    }

    while (v17);
  }

  else
  {

    if (!marker)
    {
      goto LABEL_20;
    }
  }

  v77[2]();
  xpc_dictionary_set_BOOL(v118[5], "syncChangeMarker", 1);
LABEL_20:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v69 = xarray;
  v75 = [v69 countByEnumeratingWithState:&v103 objects:v127 count:16];
  if (v75)
  {
    v70 = *v104;
    do
    {
      for (k = 0; k != v75; ++k)
      {
        if (*v104 != v70)
        {
          objc_enumerationMutation(v69);
        }

        v29 = *(*(&v103 + 1) + 8 * k);
        v82 = [dsCopy objectForKeyedSubscript:v29];
        if ([v29 isEqualToString:v72] && objc_msgSend(deletesCopy, "count"))
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v82 = v82;
          v30 = [v82 countByEnumeratingWithState:&v99 objects:v126 count:16];
          v31 = v29;
          if (v30)
          {
            v32 = 0;
            v33 = *v100;
            do
            {
              for (m = 0; m != v30; ++m)
              {
                if (*v100 != v33)
                {
                  objc_enumerationMutation(v82);
                }

                v35 = *(*(&v99 + 1) + 8 * m);
                if ([deletesCopy containsObject:v35])
                {
                  if (!v32)
                  {
                    v32 = [v82 mutableCopy];
                  }

                  [v32 removeObject:v35];
                }
              }

              v30 = [v82 countByEnumeratingWithState:&v99 objects:v126 count:16];
            }

            while (v30);

            if (v32)
            {
              v36 = v32;

              goto LABEL_41;
            }
          }

          else
          {
            v36 = v82;
LABEL_41:
            v82 = v36;
          }

          v29 = v31;
        }

        v37 = [v29 isEqualToString:v71];
        if (v37)
        {
          v38 = [keysCopy count] != 0;
        }

        else
        {
          v38 = 0;
        }

        v39 = v82;
        if (v82)
        {
          v40 = 0;
        }

        else
        {
          v40 = !v38;
        }

        if (!v40)
        {
          xarraya = xpc_array_create(0, 0);
          v76 = v29;
          if (v37)
          {
            value = xpc_array_create(0, 0);
            v80 = xpc_array_create(0, 0);
          }

          else
          {
            v80 = 0;
            value = 0;
          }

          obja = [keysCopy mutableCopy];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v41 = v82;
          v42 = [v41 countByEnumeratingWithState:&v95 objects:v125 count:16];
          if (v42)
          {
            v43 = *v96;
            do
            {
              for (n = 0; n != v42; ++n)
              {
                if (*v96 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v95 + 1) + 8 * n);
                if (!v37)
                {
                  unsignedLongLongValue2 = 0;
                  unsignedLongLongValue = 0;
                  if (!v45)
                  {
                    continue;
                  }

LABEL_64:
                  if (unsignedLongLongValue)
                  {
                    v51 = 1;
                  }

                  else
                  {
                    v51 = v37 ^ 1;
                  }

                  if ((v51 & 1) != 0 || unsignedLongLongValue2)
                  {
                    uRIRepresentation = [v45 URIRepresentation];
                    v53 = CFURLGetBytes(uRIRepresentation, buffer, 160);
                    if (v53 < 1)
                    {
                      v54 = PLChangeHandlingGetLog();
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Unable to get data from object URI.", buf, 2u);
                      }
                    }

                    else
                    {
                      xpc_array_set_data(xarraya, 0xFFFFFFFFFFFFFFFFLL, buffer, v53);
                      if (v37)
                      {
                        xpc_array_set_uint64(value, 0xFFFFFFFFFFFFFFFFLL, unsignedLongLongValue);
                        xpc_array_set_uint64(v80, 0xFFFFFFFFFFFFFFFFLL, unsignedLongLongValue2);
                      }
                    }
                  }

                  continue;
                }

                v46 = [dCopy objectForKey:*(*(&v95 + 1) + 8 * n)];
                unsignedLongLongValue = [v46 unsignedLongLongValue];

                v48 = [iDCopy objectForKey:v45];
                unsignedLongLongValue2 = [v48 unsignedLongLongValue];

                v50 = [obja objectForKey:v45];
                if (v50)
                {
                  [obja removeObjectForKey:v45];
                  unsignedLongLongValue2 |= [v50 unsignedLongLongValue];
                }

                if (v45)
                {
                  goto LABEL_64;
                }
              }

              v42 = [v41 countByEnumeratingWithState:&v95 objects:v125 count:16];
            }

            while (v42);
          }

          if (v37)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v55 = obja;
            v56 = [v55 countByEnumeratingWithState:&v90 objects:v123 count:16];
            if (v56)
            {
              v57 = *v91;
              do
              {
                for (ii = 0; ii != v56; ++ii)
                {
                  if (*v91 != v57)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v59 = *(*(&v90 + 1) + 8 * ii);
                  v60 = [v55 objectForKey:v59];
                  unsignedLongLongValue3 = [v60 unsignedLongLongValue];

                  uRIRepresentation2 = [v59 URIRepresentation];
                  v63 = CFURLGetBytes(uRIRepresentation2, buffer, 160);
                  if (v63 < 1)
                  {
                    v64 = PLChangeHandlingGetLog();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "Unable to get data from object URI.", buf, 2u);
                    }
                  }

                  else
                  {
                    xpc_array_set_data(xarraya, 0xFFFFFFFFFFFFFFFFLL, buffer, v63);
                    xpc_array_set_uint64(value, 0xFFFFFFFFFFFFFFFFLL, 0);
                    xpc_array_set_uint64(v80, 0xFFFFFFFFFFFFFFFFLL, unsignedLongLongValue3);
                  }
                }

                v56 = [v55 countByEnumeratingWithState:&v90 objects:v123 count:16];
              }

              while (v56);
            }

            if (xpc_array_get_count(value))
            {
              v77[2]();
              xpc_dictionary_set_value(v118[5], "PLUpdatedAttributesKey", value);
            }

            if (xpc_array_get_count(v80))
            {
              v77[2]();
              xpc_dictionary_set_value(v118[5], "PLUpdatedRelationshipsKey", v80);
            }
          }

          if (xpc_array_get_count(xarraya))
          {
            v77[2]();
            v65 = v118[5];
            v66 = v76;
            xpc_dictionary_set_value(v65, [v76 UTF8String], xarraya);
          }

          v39 = v82;
        }
      }

      v75 = [v69 countByEnumeratingWithState:&v103 objects:v127 count:16];
    }

    while (v75);
  }

  v67 = v118[5];
  _Block_object_dispose(&v117, 8);

  return v67;
}

void __215__PLLegacyChangeEventBuilder_createXPCDictionaryFromChangedObjectIDs_redundantDeletes_uuidsForCloudDeletion_updatedAttributesByObjectID_updatedRelationshipsByObjectID_updatedOrderKeys_changeSource_syncChangeMarker___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 40), "eventKind", 1uLL);
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = *(a1 + 40);

    xpc_dictionary_set_int64(v6, "changeSource", v7);
  }
}

@end