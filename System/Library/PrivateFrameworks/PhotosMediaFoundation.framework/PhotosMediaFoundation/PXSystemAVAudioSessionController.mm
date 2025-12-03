@interface PXSystemAVAudioSessionController
+ (OS_dispatch_queue)audioSessionQueue;
+ (OS_os_log)log;
+ (PXSystemAVAudioSessionController)applicationAVAudioSessionController;
- (PXSystemAVAudioSessionController)init;
- (PXSystemAVAudioSessionController)initWithName:(id)name audioSession:(id)session;
- (id)description;
- (int64_t)currentCategory;
- (void)_audioSessionQueue_applyCategory:(int64_t)category completion:(id)completion;
- (void)_audioSessionQueue_applyExistingCategoryToAudioSessionIfNeeded;
- (void)applyCategory:(int64_t)category completion:(id)completion;
- (void)resourceReclamationEventDidOccur:(id)occur;
- (void)setCurrentCategory:(int64_t)category;
@end

@implementation PXSystemAVAudioSessionController

+ (PXSystemAVAudioSessionController)applicationAVAudioSessionController
{
  if (applicationAVAudioSessionController_onceToken != -1)
  {
    dispatch_once(&applicationAVAudioSessionController_onceToken, &__block_literal_global);
  }

  v3 = applicationAVAudioSessionController_controller;

  return v3;
}

void __71__PXSystemAVAudioSessionController_applicationAVAudioSessionController__block_invoke()
{
  v0 = [PXSystemAVAudioSessionController alloc];
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  v1 = [(PXSystemAVAudioSessionController *)v0 initWithName:@"Application Audio Session" audioSession:v3];
  v2 = applicationAVAudioSessionController_controller;
  applicationAVAudioSessionController_controller = v1;
}

+ (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, &__block_literal_global_6);
  }

  v3 = log_log;

  return v3;
}

uint64_t __39__PXSystemAVAudioSessionController_log__block_invoke()
{
  log_log = os_log_create("PhotosMediaFoundation", "PXSystemAVAudioSessionController");

  return MEMORY[0x2821F96F8]();
}

void __53__PXSystemAVAudioSessionController_audioSessionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, -15);

  v1 = dispatch_queue_create("PXSystemAVAudioSessionController", attr);
  v2 = audioSessionQueue_queue;
  audioSessionQueue_queue = v1;
}

+ (OS_dispatch_queue)audioSessionQueue
{
  if (audioSessionQueue_onceToken != -1)
  {
    dispatch_once(&audioSessionQueue_onceToken, &__block_literal_global_3);
  }

  v3 = audioSessionQueue_queue;

  return v3;
}

- (int64_t)currentCategory
{
  os_unfair_lock_lock(&self->_categoryLock);
  category = self->_category;
  os_unfair_lock_unlock(&self->_categoryLock);
  return category;
}

- (void)_audioSessionQueue_applyExistingCategoryToAudioSessionIfNeeded
{
  audioSessionQueue = [objc_opt_class() audioSessionQueue];
  dispatch_assert_queue_V2(audioSessionQueue);

  currentCategory = [(PXSystemAVAudioSessionController *)self currentCategory];
  if (currentCategory)
  {

    [(PXSystemAVAudioSessionController *)self _audioSessionQueue_applyCategory:currentCategory completion:0];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(PXSystemAVAudioSessionController *)self name];
  v7 = [v3 initWithFormat:@"<%@ %p: %@>", v5, self, name];

  return v7;
}

- (void)_audioSessionQueue_applyCategory:(int64_t)category completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  audioSessionQueue = [objc_opt_class() audioSessionQueue];
  dispatch_assert_queue_V2(audioSessionQueue);

  audioSession = [(PXSystemAVAudioSessionController *)self audioSession];
  photosAudioSessionCategory = [audioSession photosAudioSessionCategory];
  v10 = [objc_opt_class() log];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (photosAudioSessionCategory == category)
  {
    if (v11)
    {
      currentCategory = [(PXSystemAVAudioSessionController *)self currentCategory];
      if (currentCategory > 2)
      {
        v13 = @"??";
      }

      else
      {
        v13 = off_279A29008[currentCategory];
      }

      v16 = v13;
      *buf = 138412802;
      selfCopy2 = self;
      v43 = 2112;
      selfCopy4 = v16;
      v45 = 2112;
      v46 = audioSession;
      _os_log_impl(&dword_25E661000, v10, OS_LOG_TYPE_INFO, "%@ declining to apply existing category %@ to session %@.", buf, 0x20u);
    }

    v17 = 0;
    v18 = 0;
    goto LABEL_32;
  }

  if (v11)
  {
    currentCategory2 = [(PXSystemAVAudioSessionController *)self currentCategory];
    if (currentCategory2 > 2)
    {
      v15 = @"??";
    }

    else
    {
      v15 = off_279A29008[currentCategory2];
    }

    v19 = v15;
    *buf = 138412802;
    selfCopy2 = self;
    v43 = 2112;
    selfCopy4 = v19;
    v45 = 2112;
    v46 = audioSession;
    _os_log_impl(&dword_25E661000, v10, OS_LOG_TYPE_INFO, "%@ applying category %@ to session %@.", buf, 0x20u);
  }

  v20 = [objc_opt_class() log];
  signpostID = [(PXSystemAVAudioSessionController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = signpostID;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E661000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SetAudioSessionCategory", "", buf, 2u);
    }
  }

  v38 = 0;
  v23 = [audioSession setPhotosAudioSessionCategory:category error:&v38];
  v18 = v38;
  v24 = [objc_opt_class() log];
  signpostID2 = [(PXSystemAVAudioSessionController *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = signpostID2;
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E661000, v24, OS_SIGNPOST_INTERVAL_END, v26, "SetAudioSessionCategory", "", buf, 2u);
    }
  }

  if (v23)
  {
    v27 = [objc_opt_class() log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      if (category > 2)
      {
        v28 = @"??";
      }

      else
      {
        v28 = off_279A29008[category];
      }

      v34 = v28;
      *buf = 138412546;
      selfCopy2 = v34;
      v43 = 2112;
      selfCopy4 = self;
      _os_log_impl(&dword_25E661000, v27, OS_LOG_TYPE_INFO, "Successfully configured audio session category %@ for session controller %@", buf, 0x16u);
    }

    [(PXSystemAVAudioSessionController *)self setCurrentCategory:category];
    v17 = 0;
    if (completionCopy)
    {
LABEL_31:
      completionCopy[2](completionCopy, v23, v17);
    }
  }

  else
  {
    v39 = @"PXAVAudioSessionControllerErrorCategory";
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    v40 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    if (v18)
    {
      v31 = [v30 mutableCopy];
      [v31 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v32 = [v31 copy];

      v30 = v32;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PXAVAudioSessionControllerError" code:2 userInfo:v30];
    v33 = [objc_opt_class() log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      if (category > 2)
      {
        v36 = @"??";
      }

      else
      {
        v36 = off_279A29008[category];
      }

      v37 = v36;
      *buf = 138412802;
      selfCopy2 = v37;
      v43 = 2112;
      selfCopy4 = self;
      v45 = 2112;
      v46 = v17;
      _os_log_error_impl(&dword_25E661000, v33, OS_LOG_TYPE_ERROR, "Failed to configure audio session category %@ for session controller %@. Error: %@", buf, 0x20u);
    }

    if (completionCopy)
    {
      goto LABEL_31;
    }
  }

LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)resourceReclamationEventDidOccur:(id)occur
{
  occurCopy = occur;
  objc_initWeak(&location, self);
  audioSessionQueue = [objc_opt_class() audioSessionQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PXSystemAVAudioSessionController_resourceReclamationEventDidOccur___block_invoke;
  v6[3] = &unk_279A29100;
  objc_copyWeak(&v7, &location);
  dispatch_async(audioSessionQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __69__PXSystemAVAudioSessionController_resourceReclamationEventDidOccur___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioSessionQueue_applyExistingCategoryToAudioSessionIfNeeded];
}

- (void)applyCategory:(int64_t)category completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (category)
  {
    objc_initWeak(&location, self);
    audioSessionQueue = [objc_opt_class() audioSessionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PXSystemAVAudioSessionController_applyCategory_completion___block_invoke;
    block[3] = &unk_279A290D8;
    objc_copyWeak(v15, &location);
    v15[1] = category;
    v14 = completionCopy;
    dispatch_async(audioSessionQueue, block);

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v17 = @"PXAVAudioSessionControllerErrorCategory";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v18[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v8 errorWithDomain:@"PXAVAudioSessionControllerError" code:1 userInfo:v10];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __61__PXSystemAVAudioSessionController_applyCategory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _audioSessionQueue_applyCategory:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)setCurrentCategory:(int64_t)category
{
  os_unfair_lock_lock(&self->_categoryLock);
  self->_category = category;

  os_unfair_lock_unlock(&self->_categoryLock);
}

- (PXSystemAVAudioSessionController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSystemAVAudioSessionController.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXSystemAVAudioSessionController init]"}];

  abort();
}

- (PXSystemAVAudioSessionController)initWithName:(id)name audioSession:(id)session
{
  nameCopy = name;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = PXSystemAVAudioSessionController;
  v8 = [(PXSystemAVAudioSessionController *)&v15 init];
  if (v8)
  {
    v9 = [objc_opt_class() log];
    v8->_signpostID = os_signpost_id_generate(v9);

    v8->_category = [sessionCopy photosAudioSessionCategory];
    v8->_categoryLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_audioSession, session);
    v10 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v10;

    v12 = objc_alloc_init(PXSystemAVResourceReclamationController);
    reclamationController = v8->_reclamationController;
    v8->_reclamationController = v12;

    [(PXConcreteAVResourceReclamationController *)v8->_reclamationController registerObserver:v8];
  }

  return v8;
}

@end