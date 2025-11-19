@interface SKMediaKit
+ (id)getFilesystem:(id)a3;
+ (id)getMediaKitFilesystemInfo:(id)a3;
+ (id)getMediaKitFilesystemType:(id)a3;
+ (id)newMediaRefForDisk:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation SKMediaKit

+ (id)getMediaKitFilesystemType:(id)a3
{
  v3 = [SKMediaKit getMediaKitFilesystemInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fsType];
    if (v5)
    {
      v6 = [v4 fsType];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getMediaKitFilesystemInfo:(id)a3
{
  v3 = *MEMORY[0x277CBECE8];
  [a3 UTF8String];
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

+ (id)newMediaRefForDisk:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = [a3 diskIdentifier];
  v10 = [v7 stringWithFormat:@"/dev/r%@", v9];

  v11 = *MEMORY[0x277CBECE8];
  [v10 UTF8String];
  v12 = MKMediaCreateWithPath();

  if (!v12)
  {
    v12 = [SKError nilWithPOSIXCode:0 error:a5];
  }

  return v12;
}

+ (id)getFilesystem:(id)a3
{
  v22[14] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", a3];
  v4 = [SKMediaKit getMediaKitFilesystemInfo:v3];

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
    v6 = [v4 fsInfo];
    v7 = [v6 objectForKey:@"Filesystem"];
    v8 = [v5 objectForKey:v7];

    v9 = [v4 fsInfo];
    v10 = [v9 objectForKey:@"Attributes"];
    v11 = [v10 objectForKey:@"Case sensitive"];
    v12 = [v11 BOOLValue];

    v13 = [SKFilesystem filesystemFor:v8 caseSensitive:v12];
    if (v13)
    {
      v14 = [v4 fsInfo];
      v15 = [v14 objectForKey:@"Attributes"];
      v16 = [v15 objectForKey:@"Journaled"];
      v17 = [v16 BOOLValue];

      [v13 setIsJournaled:v17];
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