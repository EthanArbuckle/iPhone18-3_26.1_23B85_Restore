@interface _ICQDeviceInfo
+ (id)defaultDeviceInfoWithBundleId:(id)id;
+ (id)getInfoWithBundleId:(id)id;
+ (id)templateKeyForItemCount:(id)count;
+ (id)templateKeyForPhotos:(unint64_t)photos video:(unint64_t)video;
+ (id)wordsToReplaceForItemCount:(id)count;
+ (void)getInfoWithBundleId:(id)id completion:(id)completion;
@end

@implementation _ICQDeviceInfo

+ (id)templateKeyForPhotos:(unint64_t)photos video:(unint64_t)video
{
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = v6;
  v8 = @"xp";
  if (photos == 1)
  {
    v8 = @"1p";
  }

  if (photos)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"0p";
  }

  [v6 appendString:v9];
  v10 = @"xv";
  if (video == 1)
  {
    v10 = @"1v";
  }

  if (video)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"0v";
  }

  [v7 appendString:v11];

  return v7;
}

+ (id)templateKeyForItemCount:(id)count
{
  countCopy = count;
  v4 = countCopy;
  if (countCopy)
  {
    if ([countCopy intValue])
    {
      if ([v4 intValue] == 1)
      {
        v5 = @"1i";
      }

      else
      {
        v5 = @"xi";
      }
    }

    else
    {
      v5 = @"0i";
    }
  }

  else
  {
    v5 = @"default";
  }

  return v5;
}

+ (id)wordsToReplaceForItemCount:(id)count
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (count)
  {
    v7 = @"%$ItemCount";
    v3 = [_ICQHelperFunctions getStringFromNumber:?];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)getInfoWithBundleId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if ([idCopy isEqualToString:@"com.apple.mobileslideshow"])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49___ICQDeviceInfo_getInfoWithBundleId_completion___block_invoke;
    v8[3] = &unk_27A6529B8;
    v9 = idCopy;
    v10 = completionCopy;
    [_ICQPhotosInfo getInfoWithCompletion:v8];
  }

  else
  {
    v7 = [_ICQDeviceInfo defaultDeviceInfoWithBundleId:idCopy];
    (*(completionCopy + 2))(completionCopy, v7, 0);
  }
}

+ (id)defaultDeviceInfoWithBundleId:(id)id
{
  idCopy = id;
  v4 = objc_alloc_init(_ICQDeviceInfo);
  [(_ICQDeviceInfo *)v4 setBundleId:idCopy];

  [(_ICQDeviceInfo *)v4 setKey:@"default"];
  v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(_ICQDeviceInfo *)v4 setWordsToReplace:v5];

  return v4;
}

+ (id)getInfoWithBundleId:(id)id
{
  idCopy = id;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v4 = dispatch_semaphore_create(0);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38___ICQDeviceInfo_getInfoWithBundleId___block_invoke;
  v13 = &unk_27A6529E0;
  v15 = &v16;
  v5 = v4;
  v14 = v5;
  [_ICQDeviceInfo getInfoWithBundleId:idCopy completion:&v10];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = [_ICQDeviceInfo defaultDeviceInfoWithBundleId:idCopy, v10, v11, v12, v13];
  }

  else
  {
    v7 = v17[5];
  }

  v8 = v7;

  _Block_object_dispose(&v16, 8);

  return v8;
}

@end