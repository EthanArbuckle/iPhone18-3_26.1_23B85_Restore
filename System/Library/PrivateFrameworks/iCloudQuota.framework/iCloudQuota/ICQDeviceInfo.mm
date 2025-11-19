@interface ICQDeviceInfo
@end

@implementation ICQDeviceInfo

void __49___ICQDeviceInfo_getInfoWithBundleId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5 || a3)
  {
    v15 = *(a1 + 32);
    v16 = a3;
    v7 = [_ICQDeviceInfo defaultDeviceInfoWithBundleId:v15];
  }

  else
  {
    v6 = 0;
    v7 = objc_alloc_init(_ICQDeviceInfo);
    [(_ICQDeviceInfo *)v7 setBundleId:*(a1 + 32)];
    v8 = +[_ICQDeviceInfo templateKeyForPhotos:video:](_ICQDeviceInfo, "templateKeyForPhotos:video:", [v5 photoCount], objc_msgSend(v5, "videoCount"));
    [(_ICQDeviceInfo *)v7 setKey:v8];

    v19[0] = @"%$PhotosCount";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "photoCount")}];
    v9 = [_ICQHelperFunctions getStringFromNumber:v18];
    v20[0] = v9;
    v19[1] = @"%$VideosCount";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "videoCount")}];
    v11 = [_ICQHelperFunctions getStringFromNumber:v10];
    v20[1] = v11;
    v19[2] = @"%$TotalPhotosVideosCount";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "videoCount") + objc_msgSend(v5, "photoCount")}];
    v13 = [_ICQHelperFunctions getStringFromNumber:v12];
    v20[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(_ICQDeviceInfo *)v7 setWordsToReplace:v14];
  }

  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __38___ICQDeviceInfo_getInfoWithBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "device Info = %@", &v13, 0xCu);
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "error = %@", &v13, 0xCu);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v12 = *MEMORY[0x277D85DE8];
}

@end