@interface PXSharedAlbumsAddParticipantsToSharedAlbum
@end

@implementation PXSharedAlbumsAddParticipantsToSharedAlbum

void ___PXSharedAlbumsAddParticipantsToSharedAlbum_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v28;
    *&v4 = 138412546;
    v26 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 suggestedTransport];
        v10 = [v9 addressKind];

        if (v10 == 1)
        {
          v11 = [v8 emailAddressString];
          if (v11)
          {
            v12 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(a1 + 40)];
            v13 = [v12 addParticipantWithEmailAddress:v11];
            v14 = *(a1 + 48);
            v15 = [v13 localIdentifier];
            [v14 addObject:v15];

LABEL_19:
            goto LABEL_20;
          }

          v12 = PLSharedAlbumsGetLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          v22 = *(a1 + 56);
          *buf = v26;
          v32 = v8;
          v33 = 2112;
          v34 = v22;
          v23 = v12;
          v24 = "Will not invite %@ to shared album %@: Empty email address.";
          goto LABEL_18;
        }

        v16 = [v8 suggestedTransport];
        v17 = [v16 addressKind];

        if (v17 == 2)
        {
          v11 = [v8 phoneNumberString];
          if (v11)
          {
            v12 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(a1 + 40)];
            v18 = [v12 addParticipantWithPhoneNumber:v11];
            v19 = *(a1 + 48);
            v20 = [v18 localIdentifier];
            [v19 addObject:v20];

            goto LABEL_19;
          }

          v12 = PLSharedAlbumsGetLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          v25 = *(a1 + 56);
          *buf = v26;
          v32 = v8;
          v33 = 2112;
          v34 = v25;
          v23 = v12;
          v24 = "Will not invite %@ to shared album %@: Empty phone number.";
LABEL_18:
          _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
          goto LABEL_19;
        }

        v11 = PLSharedAlbumsGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 56);
          *buf = v26;
          v32 = v8;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Will not invite %@ to shared album %@: Invalid participant type.", buf, 0x16u);
        }

LABEL_20:
      }

      v5 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  PXSharedAlbumsRecordRecentContactEventsForParticipants(*(a1 + 32));
}

@end