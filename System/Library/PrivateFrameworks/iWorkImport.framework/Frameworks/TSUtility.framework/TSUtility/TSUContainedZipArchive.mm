@interface TSUContainedZipArchive
+ (id)zipArchiveFromEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (TSUContainedZipArchive)initWithEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5;
- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
@end

@implementation TSUContainedZipArchive

+ (id)zipArchiveFromEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_2770C7564;
  v34 = sub_2770C7574;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_2770C7564;
  v28 = sub_2770C7574;
  v29 = 0;
  v12 = [[a1 alloc] initWithEntry:v10 zipArchive:v11 options:a5];
  if (v12)
  {
    v13 = dispatch_semaphore_create(0);
    v14 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2770C757C;
    v20[3] = &unk_27A702CB8;
    v22 = &v30;
    v23 = &v24;
    v15 = v13;
    v21 = v15;
    [v12 readArchiveWithQueue:v14 completion:v20];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a6 && !v31[5])
  {
    v16 = v25[5];
    if (v16)
    {
      *a6 = v16;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *a6 = v17;
    }
  }

  v18 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (TSUContainedZipArchive)initWithEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v16.receiver = self;
    v16.super_class = TSUContainedZipArchive;
    v13 = [(TSUZipArchive *)&v16 initWithOptions:a5];
    p_isa = &v13->super.super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_zipArchive, a4);
      objc_storeStrong(p_isa + 6, a3);
    }

    self = p_isa;
    v12 = self;
  }

  return v12;
}

- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TSUContainedZipArchive;
  v4 = [(TSUZipArchive *)&v6 readChannelForEntry:a3 validateCRC:0];

  return v4;
}

- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TSUContainedZipArchive;
  v4 = [(TSUZipArchive *)&v6 streamReadChannelForEntry:a3 validateCRC:0];

  return v4;
}

@end