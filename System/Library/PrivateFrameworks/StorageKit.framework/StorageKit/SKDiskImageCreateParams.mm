@interface SKDiskImageCreateParams
+ (id)getDescriptorWithEncryption:(int64_t)encryption;
+ (id)getDescriptorWithFormat:(int64_t)format;
+ (id)getDiskImageEncryptionDescriptors;
+ (id)getDiskImageFormatDescriptors;
- (SKDiskImageCreateParams)initWithCoder:(id)coder;
- (SKDiskImageCreateParams)initWithDisk:(id)disk format:(int64_t)format;
- (SKDiskImageCreateParams)initWithDiskImage:(id)image format:(int64_t)format shadowURLs:(id)ls;
- (SKDiskImageCreateParams)initWithFormat:(int64_t)format sourceImage:(id)image sourceFolder:(id)folder volumeName:(id)name numBlocks:(unint64_t)blocks fsFormat:(id)fsFormat shadowURLs:(id)ls;
- (SKDiskImageCreateParams)initWithNumBlocks:(unint64_t)blocks volumeName:(id)name format:(int64_t)format;
- (id)description;
- (id)diConvertParamsWithOutputURL:(id)l error:(id *)error;
- (id)diCreateParamsWithURL:(id)l error:(id *)error;
- (id)diCreatorFromFolderWithURL:(id)l error:(id *)error;
- (id)redactedDescription;
- (unint64_t)diReadPassphraseExtraFlags;
- (void)encodeWithCoder:(id)coder;
- (void)setPassphrase:(const char *)passphrase encryptionMethod:(int64_t)method;
@end

@implementation SKDiskImageCreateParams

+ (id)getDescriptorWithFormat:(int64_t)format
{
  if ((format - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_279D1F7D8[format - 1];
    v5 = objc_opt_new();
  }

  return v5;
}

+ (id)getDiskImageFormatDescriptors
{
  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 8; ++i)
  {
    v5 = [self getDescriptorWithFormat:i];
    if (v5)
    {
      [array addObject:v5];
    }
  }

  return array;
}

+ (id)getDescriptorWithEncryption:(int64_t)encryption
{
  if (encryption > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_279D1F810[encryption];
    v5 = objc_opt_new();
  }

  return v5;
}

+ (id)getDiskImageEncryptionDescriptors
{
  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 3; ++i)
  {
    v5 = [self getDescriptorWithEncryption:i];
    if (v5)
    {
      [array addObject:v5];
    }
  }

  return array;
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

- (SKDiskImageCreateParams)initWithFormat:(int64_t)format sourceImage:(id)image sourceFolder:(id)folder volumeName:(id)name numBlocks:(unint64_t)blocks fsFormat:(id)fsFormat shadowURLs:(id)ls
{
  imageCopy = image;
  folderCopy = folder;
  nameCopy = name;
  fsFormatCopy = fsFormat;
  lsCopy = ls;
  v24.receiver = self;
  v24.super_class = SKDiskImageCreateParams;
  v18 = [(SKDiskImageCreateParams *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceImage, image);
    objc_storeStrong(&v19->_sourceFolder, folder);
    v19->_format = format;
    v19->_numBlocks = blocks;
    objc_storeStrong(&v19->_volumeName, name);
    v19->_stdinPassPhrase = 0;
    v19->_encryption = 0;
    objc_storeStrong(&v19->_fsFormat, fsFormat);
    objc_storeStrong(&v19->_shadowURLs, ls);
  }

  return v19;
}

- (SKDiskImageCreateParams)initWithNumBlocks:(unint64_t)blocks volumeName:(id)name format:(int64_t)format
{
  nameCopy = name;
  v9 = [SKFilesystem filesystemFor:@"apfs"];
  v10 = [(SKDiskImageCreateParams *)self initWithNumBlocks:blocks volumeName:nameCopy format:format fsFormat:v9];

  return v10;
}

- (SKDiskImageCreateParams)initWithDisk:(id)disk format:(int64_t)format
{
  v6 = MEMORY[0x277CBEBC0];
  v7 = MEMORY[0x277CCACA8];
  diskIdentifier = [disk diskIdentifier];
  v9 = [v7 stringWithFormat:@"/dev/%@", diskIdentifier];
  v10 = [v6 fileURLWithPath:v9];
  v11 = [(SKDiskImageCreateParams *)self initWithFormat:format sourceImage:v10 sourceFolder:0 volumeName:0 numBlocks:0];

  return v11;
}

- (SKDiskImageCreateParams)initWithDiskImage:(id)image format:(int64_t)format shadowURLs:(id)ls
{
  lsCopy = ls;
  imageURL = [image imageURL];
  v10 = [(SKDiskImageCreateParams *)self initWithFormat:format sourceImage:imageURL sourceFolder:0 volumeName:0 numBlocks:0 fsFormat:0 shadowURLs:lsCopy];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceImage = [(SKDiskImageCreateParams *)self sourceImage];
  [coderCopy encodeObject:sourceImage forKey:@"sourceImage"];

  sourceFolder = [(SKDiskImageCreateParams *)self sourceFolder];
  [coderCopy encodeObject:sourceFolder forKey:@"sourceFolder"];

  [coderCopy encodeInt64:-[SKDiskImageCreateParams format](self forKey:{"format"), @"format"}];
  [coderCopy encodeInt64:-[SKDiskImageCreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  volumeName = [(SKDiskImageCreateParams *)self volumeName];
  [coderCopy encodeObject:volumeName forKey:@"volumeName"];

  [coderCopy encodeBool:-[SKDiskImageCreateParams stdinPassPhrase](self forKey:{"stdinPassPhrase"), @"stdinPassPhrase"}];
  [coderCopy encodeInt64:-[SKDiskImageCreateParams encryption](self forKey:{"encryption"), @"encryption"}];
  fsFormat = [(SKDiskImageCreateParams *)self fsFormat];
  [coderCopy encodeObject:fsFormat forKey:@"fsFormat"];

  shadowURLs = [(SKDiskImageCreateParams *)self shadowURLs];
  [coderCopy encodeObject:shadowURLs forKey:@"shadowURLs"];
}

- (SKDiskImageCreateParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SKDiskImageCreateParams;
  v5 = [(SKDiskImageCreateParams *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"sourceImage"];
    sourceImage = v5->_sourceImage;
    v5->_sourceImage = v6;

    v8 = [coderCopy decodeObjectForKey:@"sourceFolder"];
    sourceFolder = v5->_sourceFolder;
    v5->_sourceFolder = v8;

    v5->_format = [coderCopy decodeInt64ForKey:@"format"];
    v5->_numBlocks = [coderCopy decodeInt64ForKey:@"numBlocks"];
    v10 = [coderCopy decodeObjectForKey:@"volumeName"];
    volumeName = v5->_volumeName;
    v5->_volumeName = v10;

    v5->_stdinPassPhrase = [coderCopy decodeBoolForKey:@"stdinPassPhrase"];
    v5->_encryption = [coderCopy decodeInt64ForKey:@"encryption"];
    v12 = [coderCopy decodeObjectForKey:@"fsFormat"];
    fsFormat = v5->_fsFormat;
    v5->_fsFormat = v12;

    v14 = [coderCopy decodeObjectForKey:@"shadowURLs"];
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
    absoluteString = [(NSURL *)self->_sourceImage absoluteString];
  }

  else if (self->_sourceFolder)
  {
    absoluteString = @"<folder>";
  }

  else
  {
    absoluteString = 0;
  }

  v8 = [v3 stringWithFormat:@"<%@: { source: %@, format: %d, numBlocks: %lld }>", v5, absoluteString, self->_format, self->_numBlocks];
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

- (id)diCreateParamsWithURL:(id)l error:(id *)error
{
  lCopy = l;
  format = [(SKDiskImageCreateParams *)self format];
  switch(format)
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
      v15 = [SKError nilWithSKErrorCode:250 error:error];
      v9 = 0;
      goto LABEL_17;
  }

  v9 = [objc_alloc(*v8) initWithURL:lCopy numBlocks:-[SKDiskImageCreateParams numBlocks](self error:{"numBlocks"), error}];
  if (v9)
  {
    [v9 setReadPassphraseFlags:{objc_msgSend(v9, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
    encryption = [(SKDiskImageCreateParams *)self encryption];
    if (encryption == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = encryption == 1;
    }

    [v9 setEncryptionMethod:v11];
    temporaryPassphrase = [(SKDiskImageCreateParams *)self temporaryPassphrase];

    if (!temporaryPassphrase)
    {
      goto LABEL_14;
    }

    temporaryPassphrase2 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
    v14 = [v9 setPassphrase:objc_msgSend(temporaryPassphrase2 encryptionMethod:"buf") error:{objc_msgSend(v9, "encryptionMethod"), error}];

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

- (id)diConvertParamsWithOutputURL:(id)l error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  uRLByResolvingSymlinksInPath = [lCopy URLByResolvingSymlinksInPath];
  absoluteString = [uRLByResolvingSymlinksInPath absoluteString];
  sourceImage = [(SKDiskImageCreateParams *)self sourceImage];
  uRLByResolvingSymlinksInPath2 = [sourceImage URLByResolvingSymlinksInPath];
  absoluteString2 = [uRLByResolvingSymlinksInPath2 absoluteString];
  if (![absoluteString isEqualToString:absoluteString2])
  {

    goto LABEL_7;
  }

  shadowURLs = [(SKDiskImageCreateParams *)self shadowURLs];

  if (shadowURLs)
  {
LABEL_7:
    v18 = objc_alloc(MEMORY[0x277D055A0]);
    sourceImage2 = [(SKDiskImageCreateParams *)self sourceImage];
    shadowURLs2 = [(SKDiskImageCreateParams *)self shadowURLs];
    v17 = [v18 initWithInputURL:sourceImage2 outputURL:lCopy shadowURLs:shadowURLs2 error:error];

    goto LABEL_8;
  }

  v13 = SKGetOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sourceImage3 = [(SKDiskImageCreateParams *)self sourceImage];
    v30 = 136315394;
    v31 = "[SKDiskImageCreateParams diConvertParamsWithOutputURL:error:]";
    v32 = 2112;
    v33 = sourceImage3;
    _os_log_impl(&dword_26BBB8000, v13, OS_LOG_TYPE_DEFAULT, "%s: Creating image in place %@", &v30, 0x16u);
  }

  v15 = objc_alloc(MEMORY[0x277D055A0]);
  sourceImage2 = [(SKDiskImageCreateParams *)self sourceImage];
  v17 = [v15 initForInplaceWithURL:sourceImage2 error:error];
LABEL_8:

  if (!v17)
  {
    goto LABEL_17;
  }

  v20 = SKFormatToDIFormat([(SKDiskImageCreateParams *)self format]);
  if (!v20)
  {
    v26 = [SKError nilWithSKErrorCode:250 error:error];
    goto LABEL_19;
  }

  [v17 setOutputFormat:v20];
  [v17 setReadPassphraseFlags:{objc_msgSend(v17, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
  encryption = [(SKDiskImageCreateParams *)self encryption];
  if (encryption == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = encryption == 1;
  }

  [v17 setEncryptionMethod:v22];
  temporaryPassphrase = [(SKDiskImageCreateParams *)self temporaryPassphrase];

  if (temporaryPassphrase)
  {
    temporaryPassphrase2 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
    v25 = [v17 setPassphrase:objc_msgSend(temporaryPassphrase2 encryptionMethod:"buf") error:{objc_msgSend(v17, "encryptionMethod"), error}];

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

- (id)diCreatorFromFolderWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277D055D8];
  lCopy = l;
  v8 = [[v6 alloc] initWithURL:lCopy error:error];

  if (v8)
  {
    v9 = SKFormatToDIFormat([(SKDiskImageCreateParams *)self format]);
    if (v9)
    {
      v10 = v9;
      volumeName = [(SKDiskImageCreateParams *)self volumeName];
      [v8 setVolumeName:volumeName];

      [v8 setImageFormat:v10];
      [v8 setReadPassphraseFlags:{objc_msgSend(v8, "readPassphraseFlags") | -[SKDiskImageCreateParams diReadPassphraseExtraFlags](self, "diReadPassphraseExtraFlags")}];
      encryption = [(SKDiskImageCreateParams *)self encryption];
      if (encryption == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = encryption == 1;
      }

      [v8 setEncryptionMethod:v13];
      temporaryPassphrase = [(SKDiskImageCreateParams *)self temporaryPassphrase];

      if (temporaryPassphrase)
      {
        temporaryPassphrase2 = [(SKDiskImageCreateParams *)self temporaryPassphrase];
        [v8 setPassphrase:objc_msgSend(temporaryPassphrase2 encryptionMethod:{"buf"), objc_msgSend(v8, "encryptionMethod")}];

        [(SKDiskImageCreateParams *)self setTemporaryPassphrase:0];
      }

      v16 = v8;
    }

    else
    {
      v16 = [SKError nilWithSKErrorCode:250 error:error];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setPassphrase:(const char *)passphrase encryptionMethod:(int64_t)method
{
  v6 = [[SKTemporaryPassphrase alloc] initWithPassphrase:passphrase];
  [(SKDiskImageCreateParams *)self setTemporaryPassphrase:v6];

  [(SKDiskImageCreateParams *)self setEncryption:method];
}

@end