@interface SKDiskImageCreateParams
+ (id)getDescriptorWithEncryption:(int64_t)a3;
+ (id)getDescriptorWithFormat:(int64_t)a3;
+ (id)getDiskImageEncryptionDescriptors;
+ (id)getDiskImageFormatDescriptors;
- (SKDiskImageCreateParams)initWithCoder:(id)a3;
- (SKDiskImageCreateParams)initWithDisk:(id)a3 format:(int64_t)a4;
- (SKDiskImageCreateParams)initWithDiskImage:(id)a3 format:(int64_t)a4 shadowURLs:(id)a5;
- (SKDiskImageCreateParams)initWithFormat:(int64_t)a3 sourceImage:(id)a4 sourceFolder:(id)a5 volumeName:(id)a6 numBlocks:(unint64_t)a7 fsFormat:(id)a8 shadowURLs:(id)a9;
- (SKDiskImageCreateParams)initWithNumBlocks:(unint64_t)a3 volumeName:(id)a4 format:(int64_t)a5;
- (id)description;
- (id)diConvertParamsWithOutputURL:(id)a3 error:(id *)a4;
- (id)diCreateParamsWithURL:(id)a3 error:(id *)a4;
- (id)diCreatorFromFolderWithURL:(id)a3 error:(id *)a4;
- (id)redactedDescription;
- (unint64_t)diReadPassphraseExtraFlags;
- (void)encodeWithCoder:(id)a3;
- (void)setPassphrase:(const char *)a3 encryptionMethod:(int64_t)a4;
@end

@implementation SKDiskImageCreateParams

+ (id)getDescriptorWithFormat:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_279D1F7D8[a3 - 1];
    v5 = objc_opt_new();
  }

  return v5;
}

+ (id)getDiskImageFormatDescriptors
{
  v3 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 8; ++i)
  {
    v5 = [a1 getDescriptorWithFormat:i];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  return v3;
}

+ (id)getDescriptorWithEncryption:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_279D1F810[a3];
    v5 = objc_opt_new();
  }

  return v5;
}

+ (id)getDiskImageEncryptionDescriptors
{
  v3 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 3; ++i)
  {
    v5 = [a1 getDescriptorWithEncryption:i];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  return v3;
}

- (unint64_t)diReadPassphraseExtraFlags
{
  if ([(SKDiskImageCreateParams *)self stdinPassPhrase])
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

- (SKDiskImageCreateParams)initWithFormat:(int64_t)a3 sourceImage:(id)a4 sourceFolder:(id)a5 volumeName:(id)a6 numBlocks:(unint64_t)a7 fsFormat:(id)a8 shadowURLs:(id)a9
{
  v23 = a4;
  v22 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = SKDiskImageCreateParams;
  v18 = [(SKDiskImageCreateParams *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceImage, a4);
    objc_storeStrong(&v19->_sourceFolder, a5);
    v19->_format = a3;
    v19->_numBlocks = a7;
    objc_storeStrong(&v19->_volumeName, a6);
    v19->_stdinPassPhrase = 0;
    v19->_encryption = 0;
    objc_storeStrong(&v19->_fsFormat, a8);
    objc_storeStrong(&v19->_shadowURLs, a9);
  }

  return v19;
}

- (SKDiskImageCreateParams)initWithNumBlocks:(unint64_t)a3 volumeName:(id)a4 format:(int64_t)a5
{
  v8 = a4;
  v9 = [SKFilesystem filesystemFor:@"apfs"];
  v10 = [(SKDiskImageCreateParams *)self initWithNumBlocks:a3 volumeName:v8 format:a5 fsFormat:v9];

  return v10;
}

- (SKDiskImageCreateParams)initWithDisk:(id)a3 format:(int64_t)a4
{
  v6 = MEMORY[0x277CBEBC0];
  v7 = MEMORY[0x277CCACA8];
  v8 = [a3 diskIdentifier];
  v9 = [v7 stringWithFormat:@"/dev/%@", v8];
  v10 = [v6 fileURLWithPath:v9];
  v11 = [(SKDiskImageCreateParams *)self initWithFormat:a4 sourceImage:v10 sourceFolder:0 volumeName:0 numBlocks:0];

  return v11;
}

- (SKDiskImageCreateParams)initWithDiskImage:(id)a3 format:(int64_t)a4 shadowURLs:(id)a5
{
  v8 = a5;
  v9 = [a3 imageURL];
  v10 = [(SKDiskImageCreateParams *)self initWithFormat:a4 sourceImage:v9 sourceFolder:0 volumeName:0 numBlocks:0 fsFormat:0 shadowURLs:v8];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKDiskImageCreateParams *)self sourceImage];
  [v4 encodeObject:v5 forKey:@"sourceImage"];

  v6 = [(SKDiskImageCreateParams *)self sourceFolder];
  [v4 encodeObject:v6 forKey:@"sourceFolder"];

  [v4 encodeInt64:-[SKDiskImageCreateParams format](self forKey:{"format"), @"format"}];
  [v4 encodeInt64:-[SKDiskImageCreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  v7 = [(SKDiskImageCreateParams *)self volumeName];
  [v4 encodeObject:v7 forKey:@"volumeName"];

  [v4 encodeBool:-[SKDiskImageCreateParams stdinPassPhrase](self forKey:{"stdinPassPhrase"), @"stdinPassPhrase"}];
  [v4 encodeInt64:-[SKDiskImageCreateParams encryption](self forKey:{"encryption"), @"encryption"}];
  v8 = [(SKDiskImageCreateParams *)self fsFormat];
  [v4 encodeObject:v8 forKey:@"fsFormat"];

  v9 = [(SKDiskImageCreateParams *)self shadowURLs];
  [v4 encodeObject:v9 forKey:@"shadowURLs"];
}

- (SKDiskImageCreateParams)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKDiskImageCreateParams;
  v5 = [(SKDiskImageCreateParams *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"sourceImage"];
    sourceImage = v5->_sourceImage;
    v5->_sourceImage = v6;

    v8 = [v4 decodeObjectForKey:@"sourceFolder"];
    sourceFolder = v5->_sourceFolder;
    v5->_sourceFolder = v8;

    v5->_format = [v4 decodeInt64ForKey:@"format"];
    v5->_numBlocks = [v4 decodeInt64ForKey:@"numBlocks"];
    v10 = [v4 decodeObjectForKey:@"volumeName"];
    volumeName = v5->_volumeName;
    v5->_volumeName = v10;

    v5->_stdinPassPhrase = [v4 decodeBoolForKey:@"stdinPassPhrase"];
    v5->_encryption = [v4 decodeInt64ForKey:@"encryption"];
    v12 = [v4 decodeObjectForKey:@"fsFormat"];
    fsFormat = v5->_fsFormat;
    v5->_fsFormat = v12;

    v14 = [v4 decodeObjectForKey:@"shadowURLs"];
    shadowURLs = v5->_shadowURLs;
    v5->_shadowURLs = v14;
  }

  return v5;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    v7 = [(NSURL *)self->_sourceImage absoluteString];
  }

  else if (self->_sourceFolder)
  {
    v7 = @"<folder>";
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 stringWithFormat:@"<%@: { source: %@, format: %d, numBlocks: %lld }>", v5, v7, self->_format, self->_numBlocks];
  if (sourceImage)
  {
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  sourceImage = self->_sourceImage;
  if (!sourceImage)
  {
    sourceImage = self->_sourceFolder;
  }

  v8 = [v3 stringWithFormat:@"<%@: { source: %@, format: %d, numBlocks: %lld, volumeName: %@ }>", v5, sourceImage, self->_format, self->_numBlocks, self->_volumeName];

  return v8;
}

- (id)diCreateParamsWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SKDiskImageCreateParams *)self format];
  switch(v7)
  {
    case 1:
      v8 = 0x277D055B0;
      break;
    case 6:
      v8 = 0x277D055B8;
      break;
    case 7:
      v8 = 0x277D055A8;
      break;
    default:
      v15 = [SKError nilWithSKErrorCode:250 error:a4];
      v9 = 0;
      goto LABEL_17;
  }

  v9 = [objc_alloc(*v8) initWithURL:v6 numBlocks:-[SKDiskImageCreateParams numBlocks](self error:{"numBlocks"), a4}];
  if (v9)
  {
    [v9 setReadPassphraseFlags:{objc_msgSend(v9, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
    v10 = [(SKDiskImageCreateParams *)self encryption];
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 1;
    }

    [v9 setEncryptionMethod:v11];
    v12 = [(SKDiskImageCreateParams *)self temporaryPassphrase];

    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
    v14 = [v9 setPassphrase:objc_msgSend(v13 encryptionMethod:"buf") error:{objc_msgSend(v9, "encryptionMethod"), a4}];

    if (v14)
    {
      [(SKDiskImageCreateParams *)self setTemporaryPassphrase:0];
LABEL_14:
      v15 = v9;
      v9 = v15;
      goto LABEL_17;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)diConvertParamsWithOutputURL:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 URLByResolvingSymlinksInPath];
  v8 = [v7 absoluteString];
  v9 = [(SKDiskImageCreateParams *)self sourceImage];
  v10 = [v9 URLByResolvingSymlinksInPath];
  v11 = [v10 absoluteString];
  if (![v8 isEqualToString:v11])
  {

    goto LABEL_7;
  }

  v12 = [(SKDiskImageCreateParams *)self shadowURLs];

  if (v12)
  {
LABEL_7:
    v18 = objc_alloc(MEMORY[0x277D055A0]);
    v16 = [(SKDiskImageCreateParams *)self sourceImage];
    v19 = [(SKDiskImageCreateParams *)self shadowURLs];
    v17 = [v18 initWithInputURL:v16 outputURL:v6 shadowURLs:v19 error:a4];

    goto LABEL_8;
  }

  v13 = SKGetOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SKDiskImageCreateParams *)self sourceImage];
    v30 = 136315394;
    v31 = "[SKDiskImageCreateParams diConvertParamsWithOutputURL:error:]";
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_26BBB8000, v13, OS_LOG_TYPE_DEFAULT, "%s: Creating image in place %@", &v30, 0x16u);
  }

  v15 = objc_alloc(MEMORY[0x277D055A0]);
  v16 = [(SKDiskImageCreateParams *)self sourceImage];
  v17 = [v15 initForInplaceWithURL:v16 error:a4];
LABEL_8:

  if (!v17)
  {
    goto LABEL_17;
  }

  v20 = SKFormatToDIFormat([(SKDiskImageCreateParams *)self format]);
  if (!v20)
  {
    v26 = [SKError nilWithSKErrorCode:250 error:a4];
    goto LABEL_19;
  }

  [v17 setOutputFormat:v20];
  [v17 setReadPassphraseFlags:{objc_msgSend(v17, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
  v21 = [(SKDiskImageCreateParams *)self encryption];
  if (v21 == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21 == 1;
  }

  [v17 setEncryptionMethod:v22];
  v23 = [(SKDiskImageCreateParams *)self temporaryPassphrase];

  if (v23)
  {
    v24 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
    v25 = [v17 setPassphrase:objc_msgSend(v24 encryptionMethod:"buf") error:{objc_msgSend(v17, "encryptionMethod"), a4}];

    if (v25)
    {
      [(SKDiskImageCreateParams *)self setTemporaryPassphrase:0];
      goto LABEL_16;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_20;
  }

LABEL_16:
  v26 = v17;
LABEL_19:
  v27 = v26;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)diCreatorFromFolderWithURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D055D8];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:v7 error:a4];

  if (v8)
  {
    v9 = SKFormatToDIFormat([(SKDiskImageCreateParams *)self format]);
    if (v9)
    {
      v10 = v9;
      v11 = [(SKDiskImageCreateParams *)self volumeName];
      [v8 setVolumeName:v11];

      [v8 setImageFormat:v10];
      [v8 setReadPassphraseFlags:{objc_msgSend(v8, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
      v12 = [(SKDiskImageCreateParams *)self encryption];
      if (v12 == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12 == 1;
      }

      [v8 setEncryptionMethod:v13];
      v14 = [(SKDiskImageCreateParams *)self temporaryPassphrase];

      if (v14)
      {
        v15 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
        [v8 setPassphrase:objc_msgSend(v15 encryptionMethod:{"buf"), objc_msgSend(v8, "encryptionMethod")}];

        [(SKDiskImageCreateParams *)self setTemporaryPassphrase:0];
      }

      v16 = v8;
    }

    else
    {
      v16 = [SKError nilWithSKErrorCode:250 error:a4];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setPassphrase:(const char *)a3 encryptionMethod:(int64_t)a4
{
  v6 = [[SKTemporaryPassphrase alloc] initWithPassphrase:a3];
  [(SKDiskImageCreateParams *)self setTemporaryPassphrase:v6];

  [(SKDiskImageCreateParams *)self setEncryption:a4];
}

@end