@interface SKMediaKit
+ (id)getFilesystem:(id)filesystem;
+ (id)getMediaKitFilesystemInfo:(id)info;
+ (id)getMediaKitFilesystemType:(id)type;
+ (id)newMediaRefForDisk:(id)disk options:(id)options error:(id *)error;
@end

@implementation SKMediaKit

+ (id)getMediaKitFilesystemType:(id)type
{
  v3 = [SKMediaKit getMediaKitFilesystemInfo:type];
  v4 = v3;
  if (v3)
  {
    fsType = [v3 fsType];
    if (fsType)
    {
      fsType2 = [v4 fsType];
    }

    else
    {
      fsType2 = 0;
    }
  }

  else
  {
    fsType2 = 0;
  }

  return fsType2;
}

+ (id)getMediaKitFilesystemInfo:(id)info
{
  v3 = *MEMORY[0x277CBECE8];
  [info UTF8String];
  v4 = MKMediaCreateWithPath();
  if (v4)
  {
    v5 = MKCFCreateFSInfo();
    CFRelease(v4);
    if (v5)
    {
      v4 = [[SKMediaKitFSInfo alloc] initWithFSInfo:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)newMediaRefForDisk:(id)disk options:(id)options error:(id *)error
{
  v7 = MEMORY[0x277CCACA8];
  optionsCopy = options;
  diskIdentifier = [disk diskIdentifier];
  v10 = [v7 stringWithFormat:@"/dev/r%@", diskIdentifier];

  v11 = *MEMORY[0x277CBECE8];
  [v10 UTF8String];
  v12 = MKMediaCreateWithPath();

  if (!v12)
  {
    v12 = [SKError nilWithPOSIXCode:0 error:error];
  }

  return v12;
}

+ (id)getFilesystem:(id)filesystem
{
  v22[14] = *MEMORY[0x277D85DE8];
  filesystem = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", filesystem];
  v4 = [SKMediaKit getMediaKitFilesystemInfo:filesystem];

  if (v4)
  {
    v21[0] = @"HFS Unknown variant";
    v21[1] = @"HFS";
    v22[0] = @"hfs";
    v22[1] = @"hfs";
    v21[2] = @"HFS+";
    v21[3] = @"HFS+ Embedded";
    v22[2] = @"hfs";
    v22[3] = @"hfs";
    v21[4] = @"HFS+ Extended";
    v21[5] = @"APFS";
    v22[4] = @"hfs";
    v22[5] = @"apfs";
    v21[6] = @"FAT";
    v21[7] = @"FAT12";
    v22[6] = @"msdos";
    v22[7] = @"msdos";
    v21[8] = @"FAT16";
    v21[9] = @"FAT32";
    v22[8] = @"msdos";
    v22[9] = @"msdos";
    v21[10] = @"NTFS";
    v21[11] = @"ExFAT";
    v22[10] = @"ntfs";
    v22[11] = @"exfat";
    v21[12] = @"UFS";
    v21[13] = @"ISO9660";
    v22[12] = @"ufs";
    v22[13] = @"cd9660";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:14];
    fsInfo = [v4 fsInfo];
    v7 = [fsInfo objectForKey:@"Filesystem"];
    v8 = [v5 objectForKey:v7];

    fsInfo2 = [v4 fsInfo];
    v10 = [fsInfo2 objectForKey:@"Attributes"];
    v11 = [v10 objectForKey:@"Case sensitive"];
    bOOLValue = [v11 BOOLValue];

    v13 = [SKFilesystem filesystemFor:v8 caseSensitive:bOOLValue];
    if (v13)
    {
      fsInfo3 = [v4 fsInfo];
      v15 = [fsInfo3 objectForKey:@"Attributes"];
      v16 = [v15 objectForKey:@"Journaled"];
      bOOLValue2 = [v16 BOOLValue];

      [v13 setIsJournaled:bOOLValue2];
      v18 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

@end