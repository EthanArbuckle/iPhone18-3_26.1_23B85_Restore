@interface TSPDataCopyProviderConcrete
- (NSInputStream)inputStream;
- (NSURL)URL;
- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)l error:(id *)error;
- (TSUReadChannel)readChannel;
- (id)inputStreamForRange:(_NSRange)range;
- (void)cleanUp;
@end

@implementation TSPDataCopyProviderConcrete

- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)l error:(id *)error
{
  lCopy = l;
  v36.receiver = self;
  v36.super_class = TSPDataCopyProviderConcrete;
  v9 = [(TSPDataCopyProviderConcrete *)&v36 init];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
  v12 = v10;
  if (lCopy)
  {
    v35 = 0;
    v13 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v10, v11, 99, 1, lCopy, 1, &v35);
    v14 = v35;

    if (v13)
    {
LABEL_4:
      directory = v9->_directory;
      v9->_directory = v13;
      v16 = v13;

      goto LABEL_14;
    }
  }

  else
  {
    v34 = 0;
    v17 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v10, v11, 13, 1, 0, 1, &v34);
    v18 = v34;

    if (!v17)
    {
      goto LABEL_10;
    }

    v21 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v19, v20);
    v24 = objc_msgSend_UUIDString(v21, v22, v23);
    v13 = objc_msgSend_URLByAppendingPathComponent_(v17, v25, v24);

    if (v13)
    {
      v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v26, v27);
      v33 = v18;
      v30 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v28, v29, v13, 1, 0, &v33);
      v14 = v33;

      if (v30)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_10:
      v14 = v18;
    }
  }

  if (error)
  {
    v31 = v14;
    v9 = 0;
    *error = v14;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)cleanUp
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v7 = objc_msgSend_directory(self, v5, v6);
  objc_msgSend_removeItemAtURL_error_(v4, v8, v7, 0);

  objc_msgSend_setURLInternal_(self, v9, 0);
  objc_msgSend_setReadChannelInternal_(self, v10, 0);

  objc_msgSend_setInputStreamInternal_(self, v11, 0);
}

- (NSURL)URL
{
  v3 = objc_msgSend_URLInternal(self, a2, v2);
  if (!v3)
  {
    sub_276BD56A0();
  }

  return v3;
}

- (TSUReadChannel)readChannel
{
  v3 = objc_msgSend_readChannelInternal(self, a2, v2);
  if (!v3)
  {
    sub_276BD5754();
  }

  return v3;
}

- (NSInputStream)inputStream
{
  v3 = objc_msgSend_inputStreamInternal(self, a2, v2);
  if (!v3)
  {
    sub_276BD5808();
  }

  return v3;
}

- (id)inputStreamForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc(MEMORY[0x277D812F8]);
  v9 = objc_msgSend_readChannelInternal(self, v7, v8);
  Channel_length_closeChannelOnClose = objc_msgSend_initWithReadChannel_length_closeChannelOnClose_(v6, v10, v9, location + length, 0);

  if (location)
  {
    v12 = objc_alloc(MEMORY[0x277D81128]);
    v14 = objc_msgSend_initWithInputStream_initialOffset_(v12, v13, Channel_length_closeChannelOnClose, location);

    Channel_length_closeChannelOnClose = v14;
  }

  v15 = objc_alloc(MEMORY[0x277D81130]);
  v17 = objc_msgSend_initWithSFUInputStream_(v15, v16, Channel_length_closeChannelOnClose);
  if (!v17)
  {
    sub_276BD58BC();
  }

  v18 = v17;

  return v18;
}

@end