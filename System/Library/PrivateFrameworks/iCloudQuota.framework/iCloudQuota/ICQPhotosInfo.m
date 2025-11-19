@interface ICQPhotosInfo
@end

@implementation ICQPhotosInfo

void __38___ICQPhotosInfo__photosShutdownQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.quota.photos.shutdown", v2);
  v1 = _photosShutdownQueue_photosShutdownQueue;
  _photosShutdownQueue_photosShutdownQueue = v0;
}

void __40___ICQPhotosInfo_getInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Photos transfer progress %@", &v11, 0xCu);
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Photos transfer error %@", &v11, 0xCu);
  }

  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = objc_alloc_init(_ICQPhotosInfo);
    -[_ICQPhotosInfo setPhotoCount:](v9, "setPhotoCount:", [v5 notUploadedPhotosCount]);
    -[_ICQPhotosInfo setVideoCount:](v9, "setVideoCount:", [v5 notUploadedVideosCount]);
    (*(*(a1 + 32) + 16))();
  }

  [*(a1 + 40) _shutDownPhotoLibrary];

  v10 = *MEMORY[0x277D85DE8];
}

void __39___ICQPhotosInfo__shutDownPhotoLibrary__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9948] unsafeShutdownLibraryWithPhotoLibraryURL:*(a1 + 32)];
  v1 = _ICQGetLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_275572000, v1, OS_LOG_TYPE_DEFAULT, "Photos library shutdown completed!", v2, 2u);
  }
}

@end