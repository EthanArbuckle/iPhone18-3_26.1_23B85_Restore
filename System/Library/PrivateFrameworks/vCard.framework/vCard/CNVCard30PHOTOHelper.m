@interface CNVCard30PHOTOHelper
+ (id)log;
- (CNVCard30PHOTOHelper)init;
- (CNVCard30PHOTOHelper)initWithPerson:(id)a3 options:(id)a4 maximumDataLength:(unint64_t)a5;
- (id)bestEffortImage;
- (id)compressImage:(id)a3 allowableCompressions:(id)a4;
- (id)description;
- (id)image;
- (id)largeImage;
- (id)scaleImage:(id)a3 toFit:(CGSize)a4 allowableCompressionQuality:(id)a5;
- (id)scaleImage:(id)a3 toFitSizes:(id)a4 allowableCompressionQuality:(id)a5;
- (void)logBestEfforImageIfNonNil:(id)a3;
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
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNVCard30PHOTOHelper)initWithPerson:(id)a3 options:(id)a4 maximumDataLength:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = CNVCard30PHOTOHelper;
  v11 = [(CNVCard30PHOTOHelper *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_person, a3);
    objc_storeStrong(&v12->_options, a4);
    v12->_maxBytes = a5;
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNVCard30PHOTOHelper *)self person];
  v5 = [v3 appendName:@"person" object:v4];

  v6 = [(CNVCard30PHOTOHelper *)self options];
  v7 = [v3 appendName:@"options" object:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CNVCard30PHOTOHelper maxBytes](self, "maxBytes")}];
  v9 = [v3 appendName:@"maximumDataLength" object:v8];

  v10 = [v3 build];

  return v10;
}

- (id)bestEffortImage
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (![(CNVCard30PHOTOHelper *)self maxBytes])
  {
    v15 = 0;
    goto LABEL_14;
  }

  v3 = [(CNVCard30PHOTOHelper *)self options];
  [v3 maximumImageSize];
  v32.width = v4;
  v32.height = v5;
  v6 = NSEqualSizes(*MEMORY[0x277CCA870], v32);

  if (v6)
  {
    v7 = [(CNVCard30PHOTOHelper *)self options];
    v8 = [v7 prefersUncroppedPhotos];

    if (v8)
    {
      v9 = [(CNVCard30PHOTOHelper *)self largeImage];
      v10 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
      v29[0] = v10;
      v11 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
      v29[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v13 = [(CNVCard30PHOTOHelper *)self scaleImage:v9 toFitSizes:v12 allowableCompressionQuality:&unk_28865B6F8];

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

    v9 = [(CNVCard30PHOTOHelper *)self image];
    v22 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
    v28[0] = v22;
    v23 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
    v28[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v25 = [(CNVCard30PHOTOHelper *)self scaleImage:v9 toFitSizes:v24 allowableCompressionQuality:&unk_28865B710];

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
    v9 = [(CNVCard30PHOTOHelper *)self image];
    v16 = [(CNVCard30PHOTOHelper *)self options];
    [v16 maximumImageSize];
    [v9 setSize:?];

    v17 = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
    v30[0] = v17;
    v18 = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v20 = [(CNVCard30PHOTOHelper *)self scaleImage:v9 toFitSizes:v19 allowableCompressionQuality:&unk_28865B6E0];

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
  v4 = [(CNVCard30PHOTOHelper *)self person];
  v5 = [v4 largeImageData];
  v6 = [(CNVCard30PHOTOHelper *)self person];
  v7 = [v6 largeImageCropRects];
  v8 = [(CNVCardImage *)v3 initWithData:v5 cropRects:v7];

  return v8;
}

- (id)image
{
  v3 = [CNVCardMutableImage alloc];
  v4 = [(CNVCard30PHOTOHelper *)self person];
  v5 = [v4 imageData];
  v6 = [(CNVCard30PHOTOHelper *)self person];
  v7 = [v6 imageCropRects];
  v8 = [(CNVCardImage *)v3 initWithData:v5 cropRects:v7];

  return v8;
}

- (id)scaleImage:(id)a3 toFitSizes:(id)a4 allowableCompressionQuality:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNVCard30PHOTOHelper *)self options];
  v12 = [v11 compressPhotos];

  if ((v12 & 1) == 0)
  {
    v13 = v8;
    v14 = [v13 data];
    v15 = [v14 length];
    v16 = [(CNVCard30PHOTOHelper *)self maxBytes];

    if (v15 < v16)
    {
      goto LABEL_16;
    }
  }

  v13 = [(CNVCard30PHOTOHelper *)self compressImage:v8 allowableCompressions:v10];
  if (!v13)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v9;
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
          v22 = [(CNVCard30PHOTOHelper *)self scaleImage:v8 toFit:v10 allowableCompressionQuality:?];
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

- (id)scaleImage:(id)a3 toFit:(CGSize)a4 allowableCompressionQuality:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  [v9 size];
  if (v11 <= width && ([v9 size], v12 <= height))
  {
    v15 = 0;
  }

  else
  {
    [v9 setSize:{width, height}];
    v13 = [(CNVCard30PHOTOHelper *)self options];
    v14 = [v13 compressPhotos];

    if (v14)
    {
      v15 = [(CNVCard30PHOTOHelper *)self compressImage:v9 allowableCompressions:v10];
    }

    else
    {
      [v9 setCompressionQuality:&unk_28865B768];
      v16 = v9;
      v17 = [v16 data];
      v18 = [v17 length];
      v19 = [(CNVCard30PHOTOHelper *)self maxBytes];

      if (v18 >= v19)
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

- (id)compressImage:(id)a3 allowableCompressions:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CNVCard30PHOTOHelper *)self options];
  v9 = [v8 compressPhotos];

  if (v9)
  {
    if (([v6 isSourceLossless] & 1) != 0 || objc_msgSend(v6, "hasAlphaChannel"))
    {
      [v6 setCompressionQuality:&unk_28865B768];
      v10 = v6;
      v11 = [v10 data];
      v12 = [v11 length];
      v13 = [(CNVCard30PHOTOHelper *)self maxBytes];

      if (v12 < v13)
      {
        goto LABEL_19;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v24 = v7;
      v17 = *v26;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v6 setCompressionQuality:*(*(&v25 + 1) + 8 * v18)];
        v10 = v6;
        v19 = [v10 data];
        v20 = [v19 length];
        v21 = [(CNVCard30PHOTOHelper *)self maxBytes];

        if (v20 < v21)
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

      v7 = v24;
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

- (void)logBestEfforImageIfNonNil:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [v3 size];
      v6 = v5;
      [v3 size];
      v8 = v7;
      v9 = [v3 cropRects];
      v11 = 134218498;
      v12 = v6;
      v13 = 2048;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2771F5000, v4, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Best effort image with size (%.2f x %.2f) and cropRects %@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end