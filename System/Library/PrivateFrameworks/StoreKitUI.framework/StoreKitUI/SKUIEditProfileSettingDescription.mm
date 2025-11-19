@interface SKUIEditProfileSettingDescription
- (BOOL)_validateHandle:(id)a3;
- (BOOL)_validateName:(id)a3;
- (BOOL)commitEdits:(id)a3;
- (NSString)handle;
- (NSString)name;
- (SKUIEditProfileSettingDescription)initWithViewElement:(id)a3 parent:(id)a4;
- (UIImage)photo;
- (void)_authenticateOnCompletion:(id)a3;
- (void)_displayFooter:(id)a3;
- (void)_displayRules:(BOOL)a3;
- (void)_displaySuggestedHandles:(id)a3;
- (void)_enterEditMode;
- (void)_fetchAccountInfo;
- (void)_fetchProfilePhoto;
- (void)_fetchSuggestedHandles;
- (void)_finalizeCommitWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_hideFooter;
- (void)_leaveEditMode;
- (void)_reloadData;
- (void)_updateAccountInfo;
- (void)_updateValidity;
- (void)_uploadProfileImage:(id)a3;
- (void)chooseNewProfilePhoto;
- (void)dealloc;
- (void)discardEdits;
- (void)profileImagePicker:(id)a3 didPickProfileImage:(id)a4 withCropRect:(id)a5;
- (void)setHandle:(id)a3;
- (void)setName:(id)a3;
- (void)setPhoto:(id)a3 withCropRect:(CGRect)a4;
- (void)suggestedHandlesSettingsHeaderFooterDescription:(id)a3 didSelectSuggestedHandle:(id)a4;
@end

@implementation SKUIEditProfileSettingDescription

- (SKUIEditProfileSettingDescription)initWithViewElement:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditProfileSettingDescription initWithViewElement:parent:];
  }

  v14.receiver = self;
  v14.super_class = SKUIEditProfileSettingDescription;
  v8 = [(SKUISettingDescription *)&v14 initWithViewElement:v6 parent:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v9;

    [(NSOperationQueue *)v8->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_operationQueue setQualityOfService:25];
    v11 = objc_alloc_init(SKUISettingValueStore);
    valueStore = v8->_valueStore;
    v8->_valueStore = v11;

    [(SKUIEditProfileSettingDescription *)v8 _reloadData];
  }

  return v8;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SKUIEditProfileSettingDescription;
  [(SKUIEditProfileSettingDescription *)&v3 dealloc];
}

- (void)chooseNewProfilePhoto
{
  v3 = [SKUIProfileImagePicker alloc];
  v4 = [(SKUISettingDescription *)self parent];
  v5 = [v4 clientContext];
  v6 = [(SKUIProfileImagePicker *)v3 initWithClientContext:v5];

  [(SKUIProfileImagePicker *)v6 setDelegate:self];
  [(SKUISettingDescription *)self _presentViewController:v6 animated:1 completion:0];
}

- (NSString)handle
{
  v2 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)name
{
  v2 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v3 = [v2 copy];

  return v3;
}

- (UIImage)photo
{
  v2 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"photo"];
  v3 = [v2 copy];

  v4 = [[SKUIStyledImageDataConsumer alloc] initWithSize:10 treatment:56.0, 56.0];
  v5 = [(SKUIStyledImageDataConsumer *)v4 imageForImage:v3];

  return v5;
}

- (void)setHandle:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  [(SKUISettingValueStore *)self->_valueStore setModifiedValue:v7 forKey:@"handle"];
  [(SKUIEditProfileSettingDescription *)self _updateValidity];
}

- (void)setName:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  [(SKUISettingValueStore *)self->_valueStore setModifiedValue:v7 forKey:@"name"];
  [(SKUIEditProfileSettingDescription *)self _updateValidity];
}

- (void)setPhoto:(id)a3 withCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3;
  v12.width = width;
  v12.height = height;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 1.0);
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, -1.0, -1.0);
  [v7 drawAtPoint:{vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x))}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(SKUISettingValueStore *)self->_valueStore setModifiedValue:v8 forKey:@"photo"];
}

- (void)profileImagePicker:(id)a3 didPickProfileImage:(id)a4 withCropRect:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(SKUISettingDescription *)self _dismissViewController:a3 animated:1 completion:0];
  [v8 CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SKUIEditProfileSettingDescription *)self setPhoto:v9 withCropRect:v11, v13, v15, v17];

  [(SKUISettingDescription *)self _reloadSetting];
}

- (BOOL)commitEdits:(id)a3
{
  v4 = [a3 copy];
  commitBlock = self->_commitBlock;
  self->_commitBlock = v4;

  v6 = [(SKUISettingValueStore *)self->_valueStore hasChanges];
  if (v6)
  {
    v7 = [(SKUISettingValueStore *)self->_valueStore modifiedKeys];
    if ([v7 containsObject:@"photo"])
    {
      v8 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"photo"];
      [(SKUIEditProfileSettingDescription *)self _uploadProfileImage:v8];
    }

    else
    {
      [(SKUIEditProfileSettingDescription *)self _updateAccountInfo];
    }
  }

  else
  {
    [(SKUIEditProfileSettingDescription *)self _finalizeCommitWithSuccess:1 error:0];
  }

  return v6;
}

- (void)discardEdits
{
  [(SKUISettingValueStore *)self->_valueStore discardChanges];

  [(SKUIEditProfileSettingDescription *)self _leaveEditMode];
}

- (void)suggestedHandlesSettingsHeaderFooterDescription:(id)a3 didSelectSuggestedHandle:(id)a4
{
  valueStore = self->_valueStore;
  v6 = [a4 copy];
  [(SKUISettingValueStore *)valueStore setModifiedValue:v6 forKey:@"handle"];

  [(SKUISettingDescription *)self _reloadSetting];
}

- (void)_authenticateOnCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D69A20] defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:v5];
    [v6 setPromptStyle:1];
    [v6 setShouldCreateNewSession:1];
  }

  else
  {
    v6 = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SKUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2781FE8F8;
  v10 = v3;
  v8 = v3;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __63__SKUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SKUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2781F98F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __63__SKUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_displayFooter:(id)a3
{
  v4 = a3;
  v8 = [(SKUISettingDescription *)self parent];
  [v8 setFooterDescription:v4];

  v5 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:2];
  v6 = [v8 index];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:v6];
  [(SKUISettingsDescriptionUpdate *)v5 setIndexSet:v7];

  [v8 dispatchUpdate:v5];
}

- (void)_displayRules:(BOOL)a3
{
  v3 = a3;
  v5 = [SKUIHandleRulesSettingsHeaderFooterDescription alloc];
  v6 = [(SKUISettingDescription *)self parent];
  v7 = [v6 clientContext];
  v8 = [(SKUIHandleRulesSettingsHeaderFooterDescription *)v5 initWithClientContext:v7];

  [(SKUIHandleRulesSettingsHeaderFooterDescription *)v8 setShowInvalid:v3];
  [(SKUIEditProfileSettingDescription *)self _displayFooter:v8];
}

- (void)_displaySuggestedHandles:(id)a3
{
  self->_suggestedHandlesDisplayed = 1;
  v4 = a3;
  v5 = [SKUISuggestedHandlesSettingsHeaderFooterDescription alloc];
  v6 = [(SKUISettingDescription *)self parent];
  v7 = [v6 clientContext];
  v8 = [(SKUISuggestedHandlesSettingsHeaderFooterDescription *)v5 initWithSuggestedHandles:v4 clientContext:v7 delegate:self];

  [(SKUIEditProfileSettingDescription *)self _displayFooter:v8];
}

- (void)_enterEditMode
{
  self->_editing = 1;
  [(SKUIEditProfileSettingDescription *)self _displayRules:0];
  [(SKUIEditProfileSettingDescription *)self _updateValidity];

  [(SKUISettingDescription *)self _reloadSetting];
}

- (void)_fetchAccountInfo
{
  v3 = +[SKUIMediaSocialProfileCoordinator sharedCoordinator];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SKUIEditProfileSettingDescription__fetchAccountInfo__block_invoke;
  v4[3] = &unk_2781FBE30;
  objc_copyWeak(&v5, &location);
  [v3 getProfileWithOptions:0 profileBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__SKUIEditProfileSettingDescription__fetchAccountInfo__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__SKUIEditProfileSettingDescription__fetchAccountInfo__block_invoke_2;
    v6[3] = &unk_2781FB310;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

void __54__SKUIEditProfileSettingDescription__fetchAccountInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained _valueStore];
    v4 = [*(a1 + 32) handle];
    v5 = [v4 copy];
    [v3 setOriginalValue:v5 forKey:@"handle"];

    v6 = [*(a1 + 32) name];
    v7 = [v6 copy];
    [v3 setOriginalValue:v7 forKey:@"name"];

    WeakRetained = v8;
  }
}

- (void)_fetchProfilePhoto
{
  v3 = [(SKUISettingDescription *)self parent];
  v4 = [v3 clientContext];

  v5 = [[SKUIMediaSocialLoadProfilePhotoOperation alloc] initWithClientContext:v4];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __55__SKUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke;
  v9 = &unk_2781FBE58;
  objc_copyWeak(&v10, &location);
  [(SKUIMediaSocialLoadProfilePhotoOperation *)v5 setOutputBlock:&v6];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__SKUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _valueStore];
    v9 = v8;
    if ((a3 & 1) != 0 || ([v8 originalValueForKey:@"photo"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v11 = [v5 copy];
      [v9 setOriginalValue:v11 forKey:@"photo"];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__SKUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke_2;
      block[3] = &unk_2781F80F0;
      block[4] = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_fetchSuggestedHandles
{
  v3 = [(SKUISettingDescription *)self parent];
  v4 = [v3 clientContext];

  v5 = [[SKUIMediaSocialSuggestedHandlesOperation alloc] initWithClientContext:v4];
  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v8 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  v9 = [v6 initWithObjects:{v7, v8, 0}];

  [(SKUIMediaSocialSuggestedHandlesOperation *)v5 setWords:v9];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SKUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke;
  v10[3] = &unk_2781F9D28;
  objc_copyWeak(&v11, &location);
  [(SKUIMediaSocialSuggestedHandlesOperation *)v5 setOutputBlock:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__SKUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SKUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __59__SKUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = WeakRetained;
  [WeakRetained _displaySuggestedHandles:v3];
}

- (void)_finalizeCommitWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v11 = a4;
  [(SKUISettingValueStore *)self->_valueStore clearValueForKey:@"photoUpload"];
  commitBlock = self->_commitBlock;
  if (commitBlock)
  {
    commitBlock[2](commitBlock, v4);
    v7 = self->_commitBlock;
    self->_commitBlock = 0;
  }

  if (v4)
  {
    [(SKUIEditProfileSettingDescription *)self _leaveEditMode];
    [(SKUIEditProfileSettingDescription *)self _reloadData];
  }

  else
  {
    v8 = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    v9 = [v11 domain];
    if ([v9 isEqualToString:@"SKUIErrorDomain"])
    {
      v10 = [v11 code];

      v8 = v11;
      if (v10 != 5)
      {
        goto LABEL_11;
      }

      [(SKUIEditProfileSettingDescription *)self _fetchSuggestedHandles];
    }

    else
    {
    }
  }

  v8 = v11;
LABEL_11:
}

- (void)_hideFooter
{
  self->_suggestedHandlesDisplayed = 0;
  v5 = [(SKUISettingDescription *)self parent];
  [v5 setFooterDescription:0];
  v2 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:2];
  v3 = [v5 index];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:v3];
  [(SKUISettingsDescriptionUpdate *)v2 setIndexSet:v4];

  [v5 dispatchUpdate:v2];
}

- (void)_leaveEditMode
{
  self->_editing = 0;
  [(SKUIEditProfileSettingDescription *)self _hideFooter];

  [(SKUISettingDescription *)self _reloadSetting];
}

- (void)_reloadData
{
  [(SKUIEditProfileSettingDescription *)self _fetchAccountInfo];

  [(SKUIEditProfileSettingDescription *)self _fetchProfilePhoto];
}

- (void)_updateAccountInfo
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [SKUIMediaSocialUpdateProfileOperation alloc];
  val = self;
  v4 = [(SKUISettingDescription *)self parent];
  v5 = [v4 clientContext];
  v23 = [(SKUIMediaSocialUpdateProfileOperation *)v3 initWithClientContext:v5];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(SKUISettingValueStore *)self->_valueStore modifiedKeys];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [(__CFString *)v10 isEqualToString:@"handle"];
        v12 = SKUIMediaSocialUpdateProfileFieldHandle;
        if (v11 & 1) != 0 || (v13 = [(__CFString *)v10 isEqualToString:@"name"], v12 = SKUIMediaSocialUpdateProfileFieldName, (v13) || (v14 = [(__CFString *)v10 isEqualToString:@"photoUpload"], v12 = &SKUIMediaSocialUpdateProfileFieldProfileImage, v14))
        {
          v15 = *v12;

          if (!v15)
          {
            goto LABEL_16;
          }

          v16 = [(SKUISettingValueStore *)val->_valueStore resolvedValueForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
            v16 = v17;
            if ([v17 isEqualToString:&stru_2827FFAC8])
            {
              v16 = [MEMORY[0x277CBEB68] null];
            }
          }

          [(SKUIMediaSocialUpdateProfileOperation *)v23 setValue:v16 forProfileField:v15];
        }

        else
        {
          v15 = v10;
        }

LABEL_16:
        ++v9;
      }

      while (v7 != v9);
      v18 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v19 = [MEMORY[0x277D69A20] defaultStore];
  v20 = [v19 activeAccount];

  v21 = [v20 uniqueIdentifier];
  [(SKUIMediaSocialUpdateProfileOperation *)v23 setIdentifier:v21];

  [(SKUIMediaSocialUpdateProfileOperation *)v23 setEntityType:@"user"];
  objc_initWeak(&location, val);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke;
  v24[3] = &unk_2781FA340;
  objc_copyWeak(&v25, &location);
  [(SKUIMediaSocialUpdateProfileOperation *)v23 setOutputBlock:v24];
  [(NSOperationQueue *)val->_operationQueue addOperation:v23];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2)
  {
    v8 = [v5 domain];
    if ([v8 isEqualToString:@"SKUIErrorDomain"])
    {
      v9 = [v5 code];

      if (v9 == 5)
      {
        [WeakRetained _fetchSuggestedHandles];
        [WeakRetained _finalizeCommitWithSuccess:0 error:0];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [v5 domain];
    if ([v10 isEqualToString:@"SKUIErrorDomain"])
    {
      v11 = [v5 code];

      if (v11 == 3)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke_3;
        v13[3] = &unk_2781FF710;
        objc_copyWeak(&v14, (a1 + 32));
        v13[4] = WeakRetained;
        [WeakRetained _authenticateOnCompletion:v13];
        objc_destroyWeak(&v14);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke_4;
    v12[3] = &unk_2781F80F0;
    v12[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v12);
    goto LABEL_12;
  }

  v7 = +[SKUIMediaSocialProfileCoordinator sharedCoordinator];
  [v7 reset];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke_2;
  block[3] = &unk_2781F80F0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_12:
}

void __55__SKUIEditProfileSettingDescription__updateAccountInfo__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateAccountInfo];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _finalizeCommitWithSuccess:0 error:0];
  }
}

- (void)_uploadProfileImage:(id)a3
{
  v4 = a3;
  v5 = [SKUIMediaSocialSaveProfilePhotoOperation alloc];
  v6 = [(SKUISettingDescription *)self parent];
  v7 = [v6 clientContext];
  v8 = [(SKUIMediaSocialSaveProfilePhotoOperation *)v5 initWithClientContext:v7];

  [(SKUIMediaSocialSaveProfilePhotoOperation *)v8 setPhoto:v4];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SKUIEditProfileSettingDescription__uploadProfileImage___block_invoke;
  v10[3] = &unk_278200C08;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [(SKUIMediaSocialSaveProfilePhotoOperation *)v8 setOutputBlock:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__SKUIEditProfileSettingDescription__uploadProfileImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:@"SKUIErrorDomain"])
    {
      v11 = [v6 code];

      if (v11 == 3)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __57__SKUIEditProfileSettingDescription__uploadProfileImage___block_invoke_2;
        v12[3] = &unk_2781FE8D0;
        objc_copyWeak(&v15, (a1 + 40));
        v13 = *(a1 + 32);
        v14 = WeakRetained;
        [WeakRetained _authenticateOnCompletion:v12];

        objc_destroyWeak(&v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = +[SKUIMediaSocialProfileCoordinator sharedCoordinator];
    [v8 reset];
    v9 = [WeakRetained _valueStore];
    [v9 setModifiedValue:v5 forKey:@"photoUpload"];
    [WeakRetained _updateAccountInfo];
  }
}

void __57__SKUIEditProfileSettingDescription__uploadProfileImage___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _uploadProfileImage:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 _finalizeCommitWithSuccess:0 error:0];
  }
}

- (void)_updateValidity
{
  v4 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v3 = [(SKUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  [(SKUISettingDescription *)self _setEditsValid:[(SKUIEditProfileSettingDescription *)self _validateName:v4]& [(SKUIEditProfileSettingDescription *)self _validateHandle:v3]];
}

- (BOOL)_validateHandle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isEqualToString:&stru_2827FFAC8] & 1) != 0 || objc_msgSend(v5, "length") > 0x20)
  {
    v11 = 0;
  }

  else
  {
    if (!self->_handleValidation)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[A-Za-z0-9_]+" options:0 error:0];
      handleValidation = self->_handleValidation;
      self->_handleValidation = v6;
    }

    v8 = [v5 length];
    if ([(NSRegularExpression *)self->_handleValidation rangeOfFirstMatchInString:v5 options:0 range:0, v8])
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == v9;
    }

    v11 = v10;
  }

  self->_handleValid = v11;

  return v11;
}

- (BOOL)_validateName:(id)a3
{
  if (a3)
  {
    return [a3 isEqualToString:&stru_2827FFAC8] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)initWithViewElement:parent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditProfileSettingDescription initWithViewElement:parent:]";
}

@end