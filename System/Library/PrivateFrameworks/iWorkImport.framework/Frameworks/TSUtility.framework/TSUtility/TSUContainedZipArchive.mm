@interface TSUContainedZipArchive
+ (id)zipArchiveFromEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (TSUContainedZipArchive)initWithEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options;
- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c;
@end

@implementation TSUContainedZipArchive

+ (id)zipArchiveFromEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  entryCopy = entry;
  archiveCopy = archive;
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
  v12 = [[self alloc] initWithEntry:entryCopy zipArchive:archiveCopy options:options];
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

  if (error && !v31[5])
  {
    v16 = v25[5];
    if (v16)
    {
      *error = v16;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *error = v17;
    }
  }

  v18 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (TSUContainedZipArchive)initWithEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options
{
  entryCopy = entry;
  archiveCopy = archive;
  v11 = archiveCopy;
  selfCopy = 0;
  if (entryCopy && archiveCopy)
  {
    v16.receiver = self;
    v16.super_class = TSUContainedZipArchive;
    v13 = [(TSUZipArchive *)&v16 initWithOptions:options];
    p_isa = &v13->super.super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_zipArchive, archive);
      objc_storeStrong(p_isa + 6, entry);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  v6.receiver = self;
  v6.super_class = TSUContainedZipArchive;
  v4 = [(TSUZipArchive *)&v6 readChannelForEntry:entry validateCRC:0];

  return v4;
}

- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  v6.receiver = self;
  v6.super_class = TSUContainedZipArchive;
  v4 = [(TSUZipArchive *)&v6 streamReadChannelForEntry:entry validateCRC:0];

  return v4;
}

@end