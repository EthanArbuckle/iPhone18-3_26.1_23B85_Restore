@interface PKContactAvatarManager
- (PKContactAvatarManager)initWithContactResolver:(id)a3 paymentDataProvider:(id)a4;
- (id)cachedAvatarForAltDSID:(id)a3;
- (void)_avatarForAltDSID:(id)a3 dsid:(id)a4 handles:(id)a5 contact:(id)a6 completion:(id)a7;
- (void)avatarForFamilyMember:(id)a3 accountUser:(id)a4 invitation:(id)a5 completion:(id)a6;
- (void)avatarForFamilyMember:(id)a3 completion:(id)a4;
- (void)avatarForFamilyMember:(id)a3 peerPaymentAccount:(id)a4 invitation:(id)a5 completion:(id)a6;
@end

@implementation PKContactAvatarManager

- (PKContactAvatarManager)initWithContactResolver:(id)a3 paymentDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PKContactAvatarManager;
  v9 = [(PKContactAvatarManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentDataProvider, a4);
    objc_storeStrong(&v10->_contactResolver, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionaryAvatars = v10->_dictionaryAvatars;
    v10->_dictionaryAvatars = v11;

    v13 = objc_alloc(_MergedGlobals_620());
    v14 = [(objc_class *)off_1EE98A688() defaultSettings];
    v15 = [v13 initWithSettings:v14];
    renderer = v10->_renderer;
    v10->_renderer = v15;

    v17 = off_1EE98A690();
    v18 = [(objc_class *)v17 scopeWithPointSize:1 scale:0 rightToLeft:100.0 style:100.0, PKUIScreenScale()];
    scope = v10->_scope;
    v10->_scope = v18;
  }

  return v10;
}

- (id)cachedAvatarForAltDSID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lockAvatars);
  v5 = [(NSMutableDictionary *)self->_dictionaryAvatars objectForKey:v4];

  os_unfair_lock_unlock(&self->_lockAvatars);

  return v5;
}

- (void)avatarForFamilyMember:(id)a3 peerPaymentAccount:(id)a4 invitation:(id)a5 completion:(id)a6
{
  v19 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v19 altDSID];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 altDSID];
  }

  v14 = v13;

  v15 = [v19 dsid];
  v16 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v16 setContactType:0];
  if (v19)
  {
    v17 = [v19 firstName];
    [v16 setGivenName:v17];

    v18 = [v19 lastName];
    [v16 setFamilyName:v18];
  }

  [(PKContactAvatarManager *)self _avatarForAltDSID:v14 dsid:v15 handles:0 contact:v16 completion:v10];
}

- (void)avatarForFamilyMember:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 altDSID];
  v8 = [v12 dsid];
  v9 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v9 setContactType:0];
  if (v12)
  {
    v10 = [v12 firstName];
    [v9 setGivenName:v10];

    v11 = [v12 lastName];
    [v9 setFamilyName:v11];
  }

  [(PKContactAvatarManager *)self _avatarForAltDSID:v7 dsid:v8 handles:0 contact:v9 completion:v6];
}

- (void)avatarForFamilyMember:(id)a3 accountUser:(id)a4 invitation:(id)a5 completion:(id)a6
{
  v29 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 altDSID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v10 invitationDetails];
    v14 = [v15 accountUserAltDSID];
  }

  v16 = [v29 dsid];
  v17 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v17 setContactType:0];
  if (v29)
  {
    v18 = [v29 firstName];
    [v17 setGivenName:v18];

    v19 = [v29 lastName];
    [v17 setFamilyName:v19];
LABEL_8:

    goto LABEL_9;
  }

  if (v9)
  {
    v19 = [v9 nameComponents];
    v20 = [v19 givenName];
    [v17 setGivenName:v20];

    v21 = [v19 familyName];
    [v17 setFamilyName:v21];

    goto LABEL_8;
  }

LABEL_9:
  v22 = [v9 addressableHandles];
  v23 = [v22 mutableCopy];

  v24 = [v9 appleID];
  if (v24 && ([v23 containsObject:v24] & 1) == 0)
  {
    [v23 addObject:v24];
  }

  v25 = [v23 copy];
  v26 = [v17 copy];
  [v28 _avatarForAltDSID:v14 dsid:v16 handles:v25 contact:v26 completion:v11];
}

- (void)_avatarForAltDSID:(id)a3 dsid:(id)a4 handles:(id)a5 contact:(id)a6 completion:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v27 = a4;
  v24 = a5;
  v26 = a6;
  v29 = a7;
  os_unfair_lock_lock(&self->_lockAvatars);
  v28 = v12;
  v25 = [(NSMutableDictionary *)self->_dictionaryAvatars objectForKey:v12];
  os_unfair_lock_unlock(&self->_lockAvatars);
  v13 = v25;
  if (v25)
  {
    v29[2](v29, v25);
  }

  else
  {
    v14 = [(CNAvatarImageRenderer *)self->_renderer placeholderImageProvider];
    v23 = [v14 imageForSize:100.0 scale:{100.0, PKUIScreenScale()}];

    if (v23)
    {
      (v29[2])();
    }

    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = __Block_byref_object_copy__29;
    v50[4] = __Block_byref_object_dispose__29;
    v51 = 0;
    v15 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if (v27)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke;
      v47[3] = &unk_1E8012D58;
      v47[4] = self;
      v48 = v27;
      v49 = v50;
      [v15 addOperation:v47];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = v24;
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v17)
    {
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_3;
          v39[3] = &unk_1E801A740;
          v39[4] = self;
          v39[5] = v20;
          v42 = v50;
          v40 = v28;
          v41 = v29;
          [v15 addOperation:v39];
        }

        v17 = [v16 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v17);
    }

    if (v26)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_7;
      v34[3] = &unk_1E801A740;
      v34[4] = self;
      v35 = v26;
      v38 = v50;
      v36 = v28;
      v37 = v29;
      [v15 addOperation:v34];
    }

    v21 = [MEMORY[0x1E695DFB0] null];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_9;
    v30[3] = &unk_1E801A768;
    v33 = v50;
    v30[4] = self;
    v31 = v28;
    v32 = v29;
    v22 = [v15 evaluateWithInput:v21 completion:v30];

    _Block_object_dispose(v50, 8);
    v13 = 0;
  }
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 32);
  v19[0] = *(a1 + 40);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_2;
  v14[3] = &unk_1E801A6A0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v17 = v7;
  v18 = v11;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  [v8 photosForFamilyMembersWithDSIDs:v9 completion:v14];
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_2(void *a1, void *a2)
{
  v4 = [a2 objectForKey:a1[4]];
  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v4];
    if (v3)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), v3);
    }
  }

  else
  {
    v3 = 0;
  }

  (*(a1[6] + 16))();
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v8 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_4;
  v13[3] = &unk_1E801A718;
  v18 = *(a1 + 64);
  v16 = v7;
  v13[4] = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v17 = *(a1 + 56);
  v11 = v6;
  v12 = v7;
  [v10 contactForHandle:v9 withCompletion:v13];
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_5;
  block[3] = &unk_1E801A6F0;
  v4 = *(a1 + 72);
  v12 = v3;
  v16 = v4;
  v10 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v10;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_5(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v3 = *(*(a1 + 40) + 40);
    v21[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v5 = *(*(a1 + 40) + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_6;
    v13[3] = &unk_1E801A6C8;
    v6 = *(a1 + 80);
    v17 = v19;
    v18 = v6;
    v7 = *(a1 + 64);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = *(a1 + 40);
    v12 = v8;
    *&v9 = *(a1 + 56);
    *(&v9 + 1) = v7;
    v14 = v12;
    v15 = v9;
    v16 = *(a1 + 72);
    v10 = [v3 renderAvatarsForContacts:v4 scope:v5 imageHandler:v13];

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v11 = *(*(a1 + 64) + 16);

    v11();
  }
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_6(void *a1, void *a2)
{
  v4 = a2;
  v5 = *(a1[9] + 8);
  v6 = v4;
  if (*(v5 + 24))
  {
    os_unfair_lock_lock((a1[5] + 16));
    [*(a1[5] + 24) setObject:v6 forKey:a1[6]];
    os_unfair_lock_unlock((a1[5] + 16));
    (*(a1[8] + 16))();
  }

  else
  {
    if (v4)
    {
      objc_storeStrong((*(a1[10] + 8) + 40), a2);
      v5 = *(a1[9] + 8);
    }

    *(v5 + 24) = 1;
    (*(a1[7] + 16))();
  }
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v10 = *(*(a1 + 32) + 40);
  v28[0] = *(a1 + 40);
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v12 = *(*(a1 + 32) + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_8;
  v18[3] = &unk_1E801A6C8;
  v13 = *(a1 + 64);
  v24 = v26;
  v25 = v13;
  v14 = v9;
  v22 = v14;
  v15 = v8;
  v16 = *(a1 + 32);
  v19 = v15;
  v20 = v16;
  v21 = *(a1 + 48);
  v23 = *(a1 + 56);
  v17 = [v10 renderAvatarsForContacts:v11 scope:v12 imageHandler:v18];

  _Block_object_dispose(v26, 8);
}

void __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_8(void *a1, void *a2)
{
  v4 = a2;
  v5 = *(a1[9] + 8);
  v6 = v4;
  if (*(v5 + 24))
  {
    os_unfair_lock_lock((a1[5] + 16));
    [*(a1[5] + 24) setObject:v6 forKey:a1[6]];
    os_unfair_lock_unlock((a1[5] + 16));
    (*(a1[8] + 16))();
  }

  else
  {
    if (v4)
    {
      objc_storeStrong((*(a1[10] + 8) + 40), a2);
      v5 = *(a1[9] + 8);
    }

    *(v5 + 24) = 1;
    (*(a1[7] + 16))();
  }
}

uint64_t __76__PKContactAvatarManager__avatarForAltDSID_dsid_handles_contact_completion___block_invoke_9(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    os_unfair_lock_lock((*(result + 32) + 16));
    [*(v1[4] + 24) setObject:*(*(v1[7] + 8) + 40) forKey:v1[5]];
    os_unfair_lock_unlock((v1[4] + 16));
    v2 = *(v1[6] + 16);

    return v2();
  }

  return result;
}

@end