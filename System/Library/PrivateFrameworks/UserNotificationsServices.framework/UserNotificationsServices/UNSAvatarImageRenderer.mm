@interface UNSAvatarImageRenderer
+ (id)sharedInstanceForPointSize:(double)size;
- (id)_getAvatarImageGenerationQueueAndIncrementUsageCount;
- (id)_imageNamed:(id)named inBundleIdentifier:(id)identifier traitCollection:(id)collection;
- (id)_initWithPointSize:(double)size;
- (id)_queue_imageForContacts:(id)contacts compatibleWithTraitCollection:(id)collection circular:(BOOL)circular;
- (id)_silhouetteFallbackImageNameForContacts:(id)contacts;
- (id)_systemImageNamed:(id)named traitCollection:(id)collection;
- (void)_decrementAvatarImageGenerationQueueUsageCountAndInvalidateIfNeeded;
- (void)renderAvatarForCommunicationContext:(id)context bundleIdentifier:(id)identifier compatibleWithTraitCollection:(id)collection completion:(id)completion;
@end

@implementation UNSAvatarImageRenderer

+ (id)sharedInstanceForPointSize:(double)size
{
  if (sharedInstanceForPointSize__onceToken != -1)
  {
    +[UNSAvatarImageRenderer sharedInstanceForPointSize:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = sharedInstanceForPointSize____pointSizesToRenderers;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:size];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v8 = [[UNSAvatarImageRenderer alloc] _initWithPointSize:size];
    v9 = sharedInstanceForPointSize____pointSizesToRenderers;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:size];
    [v9 setObject:v8 forKey:v10];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

uint64_t __53__UNSAvatarImageRenderer_sharedInstanceForPointSize___block_invoke()
{
  sharedInstanceForPointSize____pointSizesToRenderers = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (void)renderAvatarForCommunicationContext:(id)context bundleIdentifier:(id)identifier compatibleWithTraitCollection:(id)collection completion:(id)completion
{
  contextCopy = context;
  identifierCopy = identifier;
  collectionCopy = collection;
  completionCopy = completion;
  _getAvatarImageGenerationQueueAndIncrementUsageCount = [(UNSAvatarImageRenderer *)self _getAvatarImageGenerationQueueAndIncrementUsageCount];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__UNSAvatarImageRenderer_renderAvatarForCommunicationContext_bundleIdentifier_compatibleWithTraitCollection_completion___block_invoke;
  block[3] = &unk_279E14398;
  v23 = collectionCopy;
  v24 = completionCopy;
  v20 = contextCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v15 = collectionCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v18 = contextCopy;
  dispatch_async(_getAvatarImageGenerationQueueAndIncrementUsageCount, block);
}

void __120__UNSAvatarImageRenderer_renderAvatarForCommunicationContext_bundleIdentifier_compatibleWithTraitCollection_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageName];
  if (v2)
  {
    v3 = [*(a1 + 32) isSystemImage];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 ^ 1;
  v5 = (v2 != 0) & (v3 ^ 1);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __120__UNSAvatarImageRenderer_renderAvatarForCommunicationContext_bundleIdentifier_compatibleWithTraitCollection_completion___block_invoke_3;
  v30 = &unk_279E14370;
  v35 = *(a1 + 64);
  v36 = &v47;
  v38 = 0;
  v31 = *(a1 + 40);
  v6 = *(a1 + 32);
  v39 = v3;
  v40 = (v2 != 0) & (v3 ^ 1);
  v32 = v6;
  v33 = 0;
  v7 = *(a1 + 48);
  v37 = &v41;
  v34 = v7;
  v8 = _Block_copy(&v27);
  if ((v4 & 1) == 0)
  {
    v9 = [*(a1 + 48) _systemImageNamed:v2 traitCollection:{*(a1 + 56), v27, v28, v29, v30, v31}];
    v10 = v48[5];
    v48[5] = v9;
  }

  if (v5)
  {
    v11 = [*(a1 + 48) _imageNamed:v2 inBundleIdentifier:*(a1 + 40) traitCollection:*(a1 + 56)];
    v12 = v48[5];
    v48[5] = v11;
  }

  if (v48[5])
  {
    v8[2](v8);
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = [getCNAvatarImageRendererClass() descriptorForRequiredKeys];
    v13 = [UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:v14 bundleIdentifier:v15 descriptorForRequiredKeys:v16];

    v17 = [*(a1 + 48) _queue_imageForContacts:v13 compatibleWithTraitCollection:*(a1 + 56) circular:{objc_msgSend(*(a1 + 32), "isBusinessCorrespondence") ^ 1}];
    v18 = v17;
    if (v17)
    {
      v19 = v48;
      v20 = v17;
      v21 = v19[5];
      v19[5] = v20;
    }

    else
    {
      v22 = *(a1 + 48);
      v23 = [*(a1 + 32) allContacts];
      v24 = [v22 _silhouetteFallbackImageNameForContacts:v23];
      v25 = v42[5];
      v42[5] = v24;

      v26 = [*(a1 + 48) _systemImageNamed:v42[5] traitCollection:*(a1 + 56)];
      v21 = v48[5];
      v48[5] = v26;
    }

    v8[2](v8);
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
}

uint64_t __120__UNSAvatarImageRenderer_renderAvatarForCommunicationContext_bundleIdentifier_compatibleWithTraitCollection_completion___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 72) + 8) + 40), *(a1 + 88));
  }

  v3 = *MEMORY[0x277CE2070];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = [v4 un_logDigest];
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (*(a1 + 89))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (*(a1 + 90))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"YES with count of '%lu'", objc_msgSend(*(a1 + 48), "count")];
    }

    else
    {
      v10 = @"NO";
    }

    v11 = *(*(*(a1 + 80) + 8) + 40);
    if (!v11)
    {
      v11 = @"NO";
    }

    *buf = 138544898;
    v16 = v14;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_270B08000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Context identifier:%{public}@ - Rendered avatar image: %{public}@. Tried System Image: %{public}@, Tried Bundle Image: %{public}@, Tried Ephemeral Contacts: %{public}@, Tried Silhouette Fallback of Name: %{public}@", buf, 0x48u);
    if (v9)
    {
    }
  }

  result = [*(a1 + 56) _decrementAvatarImageGenerationQueueUsageCountAndInvalidateIfNeeded];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithPointSize:(double)size
{
  v13.receiver = self;
  v13.super_class = UNSAvatarImageRenderer;
  v4 = [(UNSAvatarImageRenderer *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc(getCNAvatarImageRendererClass());
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getCNAvatarImageRendererSettingsClass_softClass;
    v18 = getCNAvatarImageRendererSettingsClass_softClass;
    if (!getCNAvatarImageRendererSettingsClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getCNAvatarImageRendererSettingsClass_block_invoke;
      v14[3] = &unk_279E143C0;
      v14[4] = &v15;
      __getCNAvatarImageRendererSettingsClass_block_invoke(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = [v6 offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:100];
    v9 = [v5 initWithSettings:v8];
    avatarRenderer = v4->_avatarRenderer;
    v4->_avatarRenderer = v9;

    v4->_avatarImageGenerationQueueUsageCount = 0;
    sizeCopy = 44.0;
    if (size > 0.0)
    {
      sizeCopy = size;
    }

    v4->_pointSize = sizeCopy;
  }

  return v4;
}

- (id)_getAvatarImageGenerationQueueAndIncrementUsageCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  avatarImageGenerationQueue = selfCopy->_avatarImageGenerationQueue;
  if (avatarImageGenerationQueue)
  {
    ++selfCopy->_avatarImageGenerationQueueUsageCount;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [bundleIdentifier stringByAppendingFormat:@".%@.avatarGeneration", v7];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    v10 = selfCopy->_avatarImageGenerationQueue;
    selfCopy->_avatarImageGenerationQueue = SerialWithQoS;

    selfCopy->_avatarImageGenerationQueueUsageCount = 1;
    avatarImageGenerationQueue = selfCopy->_avatarImageGenerationQueue;
  }

  v11 = avatarImageGenerationQueue;
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)_decrementAvatarImageGenerationQueueUsageCountAndInvalidateIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  avatarImageGenerationQueueUsageCount = obj->_avatarImageGenerationQueueUsageCount;
  if (avatarImageGenerationQueueUsageCount < 2)
  {
    avatarImageGenerationQueue = obj->_avatarImageGenerationQueue;
    obj->_avatarImageGenerationQueue = 0;
  }

  else
  {
    obj->_avatarImageGenerationQueueUsageCount = avatarImageGenerationQueueUsageCount - 1;
  }

  objc_sync_exit(obj);
}

- (id)_imageNamed:(id)named inBundleIdentifier:(id)identifier traitCollection:(id)collection
{
  namedCopy = named;
  identifierCopy = identifier;
  collectionCopy = collection;
  v10 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:identifierCopy];
  v11 = [v10 URL];
  v12 = [v11 copy];

  if (!v12 || ([MEMORY[0x277CCA8D8] bundleWithURL:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:compatibleWithTraitCollection:", namedCopy, v13, collectionCopy), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v16 = *MEMORY[0x277CE2070];
    if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
    {
      [UNSAvatarImageRenderer _imageNamed:v16 inBundleIdentifier:namedCopy traitCollection:identifierCopy];
    }

    v15 = 0;
  }

  return v15;
}

- (id)_systemImageNamed:(id)named traitCollection:(id)collection
{
  v5 = MEMORY[0x277D755D0];
  pointSize = self->_pointSize;
  collectionCopy = collection;
  namedCopy = named;
  v9 = [v5 configurationWithPointSize:pointSize];
  v10 = [v9 configurationWithTraitCollection:collectionCopy];

  v11 = [MEMORY[0x277D755B8] systemImageNamed:namedCopy withConfiguration:v10];

  return v11;
}

- (id)_queue_imageForContacts:(id)contacts compatibleWithTraitCollection:(id)collection circular:(BOOL)circular
{
  circularCopy = circular;
  contactsCopy = contacts;
  collectionCopy = collection;
  v10 = contactsCopy;
  if ([v10 count])
  {
    [collectionCopy displayScale];
    v12 = v11;
    if ([collectionCopy userInterfaceStyle] == 2)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v14 = getCNAvatarImageRenderingScopeClass_softClass;
    v23 = getCNAvatarImageRenderingScopeClass_softClass;
    if (!getCNAvatarImageRenderingScopeClass_softClass)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
      v19[3] = &unk_279E143C0;
      v19[4] = &v20;
      __getCNAvatarImageRenderingScopeClass_block_invoke(v19);
      v14 = v21[3];
    }

    v15 = v14;
    _Block_object_dispose(&v20, 8);
    v16 = [v14 scopeWithPointSize:0 scale:!circularCopy rightToLeft:v13 style:self->_pointSize backgroundStyle:{self->_pointSize, v12}];
    v17 = [(CNAvatarImageRenderer *)self->_avatarRenderer avatarImageForContacts:v10 scope:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_silhouetteFallbackImageNameForContacts:(id)contacts
{
  v3 = [contacts count];
  if (v3 > 2)
  {
    return @"person.3.fill";
  }

  else
  {
    return off_279E14418[v3];
  }
}

- (void)_imageNamed:(void *)a1 inBundleIdentifier:(void *)a2 traitCollection:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 un_logDigest];
  v8 = 138543874;
  v9 = v6;
  v10 = 2114;
  v11 = a3;
  v12 = 2112;
  v13 = @"<NULL>";
  _os_log_error_impl(&dword_270B08000, v5, OS_LOG_TYPE_ERROR, "Error loading image named '%{public}@' in bundle '%{public}@'. Error: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end