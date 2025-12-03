@interface CNVCard30PHOTOHelper
+ (id)log;
- (CNVCard30PHOTOHelper)init;
- (CNVCard30PHOTOHelper)initWithPerson:(id)person options:(id)options maximumDataLength:(unint64_t)length;
- (id)bestEffortImage;
- (id)compressImage:(id)image allowableCompressions:(id)compressions;
- (id)description;
- (id)image;
- (id)largeImage;
- (id)scaleImage:(id)image toFit:(CGSize)fit allowableCompressionQuality:(id)quality;
- (id)scaleImage:(id)image toFitSizes:(id)sizes allowableCompressionQuality:(id)quality;
- (void)logBestEfforImageIfNonNil:(id)nil;
@end

@implementation CNVCard30PHOTOHelper

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNVCard30PHOTOHelper log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __27__CNVCard30PHOTOHelper_log__block_invoke()
{
  log_cn_once_object_1 = os_log_create("com.apple.contacts.vcard", "vcardphotohelper");

  return MEMORY[0x2821F96F8]();
}

- (CNVCard30PHOTOHelper)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNVCard30PHOTOHelper)initWithPerson:(id)person options:(id)options maximumDataLength:(unint64_t)length
{
  personCopy = person;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = CNVCard30PHOTOHelper;
  v11 = [(CNVCard30PHOTOHelper *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_person, person);
    objc_storeStrong(&v12->_options, options);
    v12->_maxBytes = length;
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  person = [(CNVCard30PHOTOHelper *)self person];
  v5 = [v3 appendName:@"person" object:person];

  options = [(CNVCard30PHOTOHelper *)self options];
  v7 = [v3 appendName:@"options" object:options];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CNVCard30PHOTOHelper maxBytes](self, "maxBytes")}];
  v9 = [v3 appendName:@"maximumDataLength" object:v8];

  build = [v3 build];

  return build;
}

- (id)bestEffortImage
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (![(CNVCard30PHOTOHelper *)self maxBytes])
  {
    v15 = 0;
    goto LABEL_14;
  }

  options = [(CNVCard30PHOTOHelper *)self options];
  [options maximumImageSize];
  v32.width = v4;
  v32.height = v5;
  v6 = NSEqualSizes(*MEMORY[0x277CCA870], v32);

  if (v6)
  {
    options2 = [(CNVCard30PHOTOHelper *)self options];
    prefersUncroppedPhotos = [options2 prefersUncroppedPhotos];

    if (prefersUncroppedPhotos)
    {
      largeImage = [(CNVCard30PHOTOHelper *)self largeImage];
      v10 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
      v29[0] = v10;
      v11 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
      v29[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v13 = [(CNVCard30PHOTOHelper *)self scaleImage:largeImage toFitSizes:v12 allowableCompressionQuality:&unk_28865B6F8];

      [(CNVCard30PHOTOHelper *)self logBestEfforImageIfNonNil:v13];
      v14 = v13;
      if (v14)
      {
        v15 = v14;
LABEL_8:
        v21 = v15;
LABEL_12:

        v15 = v21;
        goto LABEL_13;
      }
    }

    largeImage = [(CNVCard30PHOTOHelper *)self image];
    v22 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
    v28[0] = v22;
    v23 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
    v28[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v25 = [(CNVCard30PHOTOHelper *)self scaleImage:largeImage toFitSizes:v24 allowableCompressionQuality:&unk_28865B710];

    [(CNVCard30PHOTOHelper *)self logBestEfforImageIfNonNil:v25];
    v15 = v25;

    if (!v15)
    {
      v21 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    largeImage = [(CNVCard30PHOTOHelper *)self image];
    options3 = [(CNVCard30PHOTOHelper *)self options];
    [options3 maximumImageSize];
    [largeImage setSize:?];

    v17 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
    v30[0] = v17;
    v18 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v20 = [(CNVCard30PHOTOHelper *)self scaleImage:largeImage toFitSizes:v19 allowableCompressionQuality:&unk_28865B6E0];

    [(CNVCard30PHOTOHelper *)self logBestEfforImageIfNonNil:v20];
    v15 = v20;
    if (v15)
    {
      goto LABEL_8;
    }
  }

LABEL_13:

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)largeImage
{
  v3 = [CNVCardMutableImage alloc];
  person = [(CNVCard30PHOTOHelper *)self person];
  largeImageData = [person largeImageData];
  person2 = [(CNVCard30PHOTOHelper *)self person];
  largeImageCropRects = [person2 largeImageCropRects];
  v8 = [(CNVCardImage *)v3 initWithData:largeImageData cropRects:largeImageCropRects];

  return v8;
}

- (id)image
{
  v3 = [CNVCardMutableImage alloc];
  person = [(CNVCard30PHOTOHelper *)self person];
  imageData = [person imageData];
  person2 = [(CNVCard30PHOTOHelper *)self person];
  imageCropRects = [person2 imageCropRects];
  v8 = [(CNVCardImage *)v3 initWithData:imageData cropRects:imageCropRects];

  return v8;
}

- (id)scaleImage:(id)image toFitSizes:(id)sizes allowableCompressionQuality:(id)quality
{
  v30 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  sizesCopy = sizes;
  qualityCopy = quality;
  options = [(CNVCard30PHOTOHelper *)self options];
  compressPhotos = [options compressPhotos];

  if ((compressPhotos & 1) == 0)
  {
    v13 = imageCopy;
    data = [v13 data];
    v15 = [data length];
    maxBytes = [(CNVCard30PHOTOHelper *)self maxBytes];

    if (v15 < maxBytes)
    {
      goto LABEL_16;
    }
  }

  v13 = [(CNVCard30PHOTOHelper *)self compressImage:imageCopy allowableCompressions:qualityCopy];
  if (!v13)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = sizesCopy;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v25 + 1) + 8 * i) sizeValue];
          v22 = [(CNVCard30PHOTOHelper *)self scaleImage:imageCopy toFit:qualityCopy allowableCompressionQuality:?];
          if (v22)
          {
            v13 = v22;
            goto LABEL_15;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)scaleImage:(id)image toFit:(CGSize)fit allowableCompressionQuality:(id)quality
{
  height = fit.height;
  width = fit.width;
  imageCopy = image;
  qualityCopy = quality;
  [imageCopy size];
  if (v11 <= width && ([imageCopy size], v12 <= height))
  {
    v15 = 0;
  }

  else
  {
    [imageCopy setSize:{width, height}];
    options = [(CNVCard30PHOTOHelper *)self options];
    compressPhotos = [options compressPhotos];

    if (compressPhotos)
    {
      v15 = [(CNVCard30PHOTOHelper *)self compressImage:imageCopy allowableCompressions:qualityCopy];
    }

    else
    {
      [imageCopy setCompressionQuality:&unk_28865B768];
      v16 = imageCopy;
      data = [v16 data];
      v18 = [data length];
      maxBytes = [(CNVCard30PHOTOHelper *)self maxBytes];

      if (v18 >= maxBytes)
      {
        v15 = 0;
      }

      else
      {
        v15 = v16;
      }
    }
  }

  return v15;
}

- (id)compressImage:(id)image allowableCompressions:(id)compressions
{
  v30 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  compressionsCopy = compressions;
  options = [(CNVCard30PHOTOHelper *)self options];
  compressPhotos = [options compressPhotos];

  if (compressPhotos)
  {
    if (([imageCopy isSourceLossless] & 1) != 0 || objc_msgSend(imageCopy, "hasAlphaChannel"))
    {
      [imageCopy setCompressionQuality:&unk_28865B768];
      v10 = imageCopy;
      data = [v10 data];
      v12 = [data length];
      maxBytes = [(CNVCard30PHOTOHelper *)self maxBytes];

      if (v12 < maxBytes)
      {
        goto LABEL_19;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = compressionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v24 = compressionsCopy;
      v17 = *v26;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [imageCopy setCompressionQuality:*(*(&v25 + 1) + 8 * v18)];
        v10 = imageCopy;
        data2 = [v10 data];
        v20 = [data2 length];
        maxBytes2 = [(CNVCard30PHOTOHelper *)self maxBytes];

        if (v20 < maxBytes2)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            goto LABEL_8;
          }

          v10 = 0;
          break;
        }
      }

      compressionsCopy = v24;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)logBestEfforImageIfNonNil:(id)nil
{
  v17 = *MEMORY[0x277D85DE8];
  nilCopy = nil;
  if (nilCopy)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [nilCopy size];
      v6 = v5;
      [nilCopy size];
      v8 = v7;
      cropRects = [nilCopy cropRects];
      v11 = 134218498;
      v12 = v6;
      v13 = 2048;
      v14 = v8;
      v15 = 2112;
      v16 = cropRects;
      _os_log_impl(&dword_2771F5000, v4, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Best effort image with size (%.2f x %.2f) and cropRects %@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end