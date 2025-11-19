@interface _ICQDeviceInfo
+ (id)defaultDeviceInfoWithBundleId:(id)a3;
+ (id)getInfoWithBundleId:(id)a3;
+ (id)templateKeyForItemCount:(id)a3;
+ (id)templateKeyForPhotos:(unint64_t)a3 video:(unint64_t)a4;
+ (id)wordsToReplaceForItemCount:(id)a3;
+ (void)getInfoWithBundleId:(id)a3 completion:(id)a4;
@end

@implementation _ICQDeviceInfo

+ (id)templateKeyForPhotos:(unint64_t)a3 video:(unint64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = v6;
  v8 = @"xp";
  if (a3 == 1)
  {
    v8 = @"1p";
  }

  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"0p";
  }

  [v6 appendString:v9];
  v10 = @"xv";
  if (a4 == 1)
  {
    v10 = @"1v";
  }

  if (a4)
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

+ (id)templateKeyForItemCount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 intValue])
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

+ (id)wordsToReplaceForItemCount:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
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

+ (void)getInfoWithBundleId:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49___ICQDeviceInfo_getInfoWithBundleId_completion___block_invoke;
    v8[3] = &unk_27A6529B8;
    v9 = v5;
    v10 = v6;
    [_ICQPhotosInfo getInfoWithCompletion:v8];
  }

  else
  {
    v7 = [_ICQDeviceInfo defaultDeviceInfoWithBundleId:v5];
    (*(v6 + 2))(v6, v7, 0);
  }
}

+ (id)defaultDeviceInfoWithBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_ICQDeviceInfo);
  [(_ICQDeviceInfo *)v4 setBundleId:v3];

  [(_ICQDeviceInfo *)v4 setKey:@"default"];
  v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(_ICQDeviceInfo *)v4 setWordsToReplace:v5];

  return v4;
}

+ (id)getInfoWithBundleId:(id)a3
{
  v3 = a3;
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
  [_ICQDeviceInfo getInfoWithBundleId:v3 completion:&v10];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = [_ICQDeviceInfo defaultDeviceInfoWithBundleId:v3, v10, v11, v12, v13];
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