@interface GQPProcessor
+ (_xmlTextReader)createXmlReaderWithPath:(id)path indexFileName:(id)name cryptoKey:(id)key;
+ (_xmlTextReader)createXmlReaderWithZipArchive:(id)archive indexFileName:(id)name cryptoKey:(id)key indexEntry:(id *)entry zipInputStream:(id *)stream;
+ (void)initialize;
- (BOOL)go;
- (CGSize)thumbnailSize;
- (GQPProcessor)initWithPath:(id)path indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request cryptoKey:(id)key;
- (GQPProcessor)initWithZipArchive:(id)archive indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request;
- (GQPProcessor)initWithZipArchive:(id)archive indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request cryptoKey:(id)key;
- (__CFBundle)bundle;
- (void)dealloc;
@end

@implementation GQPProcessor

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2)
  {
    nullsub_2(v2);

    sub_41C34();
  }
}

- (GQPProcessor)initWithPath:(id)path indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request cryptoKey:(id)key
{
  v29.receiver = self;
  v29.super_class = GQPProcessor;
  v10 = [(GQPProcessor *)&v29 init];
  if (v10)
  {
    xmlSetGenericErrorFunc(0, nullsub_3);
    v10->mOutputPreviewRequest = request;
    *&v10->mWrongFormat = 0;
    v28 = 0;
    v10->mCryptoKey = key;
    v11 = +[NSFileManager defaultManager];
    if ([(NSFileManager *)v11 fileExistsAtPath:path isDirectory:&v28])
    {
      if (v28)
      {
        v12 = [path stringByAppendingPathComponent:name];
        v13 = [v12 stringByAppendingPathExtension:@"gz"];
        if ([(NSFileManager *)v11 fileExistsAtPath:v13]|| (v13 = v12, [(NSFileManager *)v11 fileExistsAtPath:v12]))
        {
          if (v13)
          {
            v14 = open([v13 fileSystemRepresentation], 0, 0);
            if (v14 != -1)
            {
              v15 = v14;
              fcntl(v14, 48, 1);
              v16 = xmlAllocParserInputBuffer(XML_CHAR_ENCODING_UTF8);
              if (v16)
              {
                v17 = v16;
                v18 = gzdopen(v15, "rb");
                if (v18)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = v15;
                }

                if (v18)
                {
                  v20 = sub_3B594;
                }

                else
                {
                  v20 = sub_3B574;
                }

                v21 = sub_3B5DC;
                v17->context = v19;
                v17->readcallback = v20;
                if (!v18)
                {
                  v21 = j__close;
                }

                v17->closecallback = v21;
                v10->mParserInputBuffer = v17;
                xmlReader = [objc_opt_class() createXmlReaderWithPath:path indexFileName:name cryptoKey:key];
LABEL_28:
                v10->mReader = xmlReader;
                if (xmlReader)
                {
LABEL_29:
                  operator new();
                }

                goto LABEL_30;
              }

              close(v15);
              xmlGetLastError();
            }

            v10->mParserInputBuffer = 0;
          }
        }
      }

      else
      {
        v23 = [[SFUZipArchive alloc] initWithPath:path collapseCommonRootDirectory:1];
        v10->mArchive = v23;
        if (v23)
        {
          v24 = [(SFUZipArchive *)v23 entryWithName:name];
          if (v24)
          {
            if (!key)
            {
              xmlReader = [v24 xmlReader];
              goto LABEL_28;
            }
          }

          else
          {
            v25 = -[SFUZipArchive entryWithName:](v10->mArchive, "entryWithName:", [name stringByAppendingPathExtension:@"gz"]);
            if (!key)
            {
              xmlReader = [v25 xmlReaderForGzippedData];
              goto LABEL_28;
            }
          }

          v26 = [[SFUZipArchive alloc] initWithPath:path collapseCommonRootDirectory:1];
          v10->mReader = xmlReaderForIO(sub_3AD24, sub_3AD98, +[SFUCryptoUtils newBufferedInputStreamForDecryptingZippedBundle:key:zipArchive:isDeflated:zipStream:](SFUCryptoUtils, "newBufferedInputStreamForDecryptingZippedBundle:key:zipArchive:isDeflated:zipStream:", [name stringByAppendingPathExtension:@"gz"], key, v26, 1, 0), 0, 0, 0);

          if (v10->mReader)
          {
            goto LABEL_29;
          }
        }
      }
    }

LABEL_30:

    return 0;
  }

  return v10;
}

- (GQPProcessor)initWithZipArchive:(id)archive indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request
{
  if ([archive isEncrypted])
  {

    return [(GQPProcessor *)self initWithZipArchive:archive indexFileName:name previewRequest:request cryptoKey:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GQPProcessor;
    v9 = [(GQPProcessor *)&v11 init];
    if (v9)
    {
      xmlSetGenericErrorFunc(0, nullsub_3);
      v9->mOutputPreviewRequest = request;
      *&v9->mWrongFormat = 0;
      if ([archive entryWithName:{objc_msgSend(name, "stringByAppendingPathExtension:", @"gz"}] || objc_msgSend(archive, "entryWithName:", name))
      {
        operator new();
      }

      return 0;
    }

    return v9;
  }
}

- (GQPProcessor)initWithZipArchive:(id)archive indexFileName:(id)name previewRequest:(__QLPreviewRequest *)request cryptoKey:(id)key
{
  v14.receiver = self;
  v14.super_class = GQPProcessor;
  v10 = [(GQPProcessor *)&v14 init];
  if (v10)
  {
    v10->mCryptoKey = key;
    v10->mOutputPreviewRequest = request;
    v10->mWrongFormat = 0;
    v13 = 0;
    v11 = [objc_opt_class() createXmlReaderWithZipArchive:archive indexFileName:name cryptoKey:v10->mCryptoKey indexEntry:&v13 zipInputStream:&v10->mInputStream];
    v10->mReader = v11;
    if (v11)
    {
      operator new();
    }

    return 0;
  }

  return v10;
}

+ (_xmlTextReader)createXmlReaderWithZipArchive:(id)archive indexFileName:(id)name cryptoKey:(id)key indexEntry:(id *)entry zipInputStream:(id *)stream
{
  xmlSetGenericErrorFunc(0, nullsub_3);
  if (entry)
  {
    *entry = 0;
  }

  if (stream)
  {
    *stream = 0;
  }

  v12 = [name stringByAppendingPathExtension:@"gz"];
  v13 = [archive entryWithName:v12];
  if (!v13)
  {
    result = [archive entryWithName:name];
    if (!result)
    {
      return result;
    }

    v14 = result;
    result = [(_xmlTextReader *)result xmlReader];
    if (!entry)
    {
      return result;
    }

    goto LABEL_16;
  }

  v14 = v13;
  if (!stream)
  {
    result = [(_xmlTextReader *)v13 xmlReaderForGzippedData];
    if (!entry)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!key)
  {
    result = [(_xmlTextReader *)v13 xmlReaderForGzippedDataWithInputStream:stream];
    if (!entry)
    {
      return result;
    }

    goto LABEL_16;
  }

  result = [SFUCryptoUtils newBufferedInputStreamForDecryptingZippedBundle:v12 key:key zipArchive:archive isDeflated:1 zipStream:0];
  v16 = result;
  if (result)
  {
    result = xmlReaderForIO(sub_3AD24, sub_3AD98, result, 0, 0, 0);
  }

  *stream = v16;
  if (entry)
  {
LABEL_16:
    *entry = v14;
  }

  return result;
}

+ (_xmlTextReader)createXmlReaderWithPath:(id)path indexFileName:(id)name cryptoKey:(id)key
{
  xmlSetGenericErrorFunc(0, nullsub_3);
  v17 = 0;
  v8 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v8 fileExistsAtPath:path isDirectory:&v17])
  {
    return 0;
  }

  if ((v17 & 1) == 0)
  {
    v13 = [[SFUZipArchive alloc] initWithPath:path collapseCommonRootDirectory:1];
    if ([v13 passphraseVerifier])
    {
      [v13 setCryptoKey:key];
    }

    if (v13)
    {
      v14 = [v13 entryWithName:name];
      if (!v14)
      {
        v14 = [v13 entryWithName:{objc_msgSend(name, "stringByAppendingPathExtension:", @"gz"}];
LABEL_15:
        xmlReaderForGzippedData = [v14 xmlReaderForGzippedData];
        goto LABEL_16;
      }

LABEL_12:
      xmlReaderForGzippedData = [v14 xmlReader];
LABEL_16:
      v12 = xmlReaderForGzippedData;

      return v12;
    }

    return 0;
  }

  v9 = [path stringByAppendingPathComponent:name];
  v10 = [v9 stringByAppendingPathExtension:@"gz"];
  v11 = [(NSFileManager *)v8 fileExistsAtPath:v10];
  if (!v11)
  {
    v10 = v9;
    if (![(NSFileManager *)v8 fileExistsAtPath:v9])
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  if (!key)
  {
    v14 = [[SFUFileDataRepresentation alloc] initWithPath:v10];
    v13 = v14;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  return xmlReaderForIO(sub_3AD24, sub_3AD98, [SFUCryptoUtils newBufferedInputStreamForDecryptingFile:v10 key:key isDeflated:v11 zipStream:0], 0, 0, 0);
}

- (void)dealloc
{
  xmlFreeTextReader(self->mReader);
  xmlFreeParserInputBuffer(self->mParserInputBuffer);

  mStateStack = self->mStateStack;
  if (mStateStack)
  {
    sub_3B620(mStateStack);
    operator delete();
  }

  mActionStack = self->mActionStack;
  if (mActionStack)
  {
    sub_3B7AC(mActionStack);
    operator delete();
  }

  v5.receiver = self;
  v5.super_class = GQPProcessor;
  [(GQPProcessor *)&v5 dealloc];
}

- (__CFBundle)bundle
{
  result = self->mBundle;
  if (!result)
  {
    result = CFBundleGetBundleWithIdentifier(@"com.apple.iwork.iWorkQuickLookGenerator");
    self->mBundle = result;
    if (!result)
    {
      result = CFBundleGetMainBundle();
      self->mBundle = result;
    }
  }

  return result;
}

- (BOOL)go
{
  [(GQPProcessor *)self pushInitialState];
  v3 = 1;
  while (1)
  {
    do
    {
      if (v3 != 1 || xmlTextReaderRead(self->mReader) == 1)
      {
        v4 = sub_3A55C(self->mReader, self, self->mStateStack, self->mActionStack, self->mDocumentState);
        if (v4 == 3)
        {
          return 0;
        }

        v3 = v4;
        if (v4 != 4)
        {
          continue;
        }
      }

      return 1;
    }

    while (!self->mOutputPreviewRequest && !self->mIsProgressive || pthread_mutex_lock(&stru_9D2C8));
    if (byte_A2780 == 1)
    {
      break;
    }

    pthread_mutex_unlock(&stru_9D2C8);
  }

  byte_A2780 = 0;
  pthread_mutex_unlock(&stru_9D2C8);
  return 0;
}

- (CGSize)thumbnailSize
{
  width = self->mThumbnailSize.width;
  height = self->mThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end