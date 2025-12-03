@interface SiriUIURLSessionImageDownload
- (SiriUIURLSessionImageDownload)initWithFitToSize:(CGSize)size progressHandler:(id)handler incremental:(BOOL)incremental client:(id)client fillColor:(id)color;
- (void)_updateImageFromURL:(id)l error:(id)error;
- (void)appendDownloadedData:(id)data fromURL:(id)l;
- (void)dealloc;
- (void)finishedFromURL:(id)l error:(id)error;
@end

@implementation SiriUIURLSessionImageDownload

- (SiriUIURLSessionImageDownload)initWithFitToSize:(CGSize)size progressHandler:(id)handler incremental:(BOOL)incremental client:(id)client fillColor:(id)color
{
  incrementalCopy = incremental;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  clientCopy = client;
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = SiriUIURLSessionImageDownload;
  v16 = [(SiriUIURLSessionImageDownload *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_fitToSize.width = width;
    v16->_fitToSize.height = height;
    v18 = [handlerCopy copy];
    progressHandler = v17->_progressHandler;
    v17->_progressHandler = v18;

    objc_storeStrong(&v17->_client, client);
    objc_storeStrong(&v17->_backgroundFillColor, color);
    v20 = objc_alloc_init(MEMORY[0x277CBEB28]);
    downloadedData = v17->_downloadedData;
    v17->_downloadedData = v20;

    v22 = dispatch_queue_create("SiriUIURLSessionImageDownload", 0);
    queue = v17->_queue;
    v17->_queue = v22;

    v24 = v17->_queue;
    v25 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v24, v25);

    if (incrementalCopy)
    {
      v17->_imageSource = CGImageSourceCreateIncremental(0);
    }
  }

  return v17;
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
    self->_imageSource = 0;
  }

  v4.receiver = self;
  v4.super_class = SiriUIURLSessionImageDownload;
  [(SiriUIURLSessionImageDownload *)&v4 dealloc];
}

- (void)_updateImageFromURL:(id)l error:(id)error
{
  v66 = *MEMORY[0x277D85DE8];
  lCopy = l;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_hasSentFinished)
  {
    finished = self->_finished;
    imageSource = self->_imageSource;
    if (self->_finished || imageSource)
    {
      v10 = [(NSMutableData *)self->_downloadedData length];
      if (v10 > self->_lastUpdatedLength || self->_finished)
      {
        self->_lastUpdatedLength = v10;
        v11 = self->_downloadedData;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v14 = v13;

        if (imageSource)
        {
          CGImageSourceUpdateData(imageSource, v11, finished);
          if ((CGImageSourceGetStatus(imageSource) + 1) > 1 || (ImageAtIndex = CGImageSourceCreateImageAtIndex(imageSource, 0, 0)) == 0)
          {
            v19 = self->_client;
            goto LABEL_30;
          }

          v16 = ImageAtIndex;
          Copy = CGImageCreateCopy(ImageAtIndex);
          v18 = [MEMORY[0x277D755B8] imageWithCGImage:Copy scale:0 orientation:v14];
          CFRelease(Copy);
          CFRelease(v16);
        }

        else
        {
          v18 = [MEMORY[0x277D755B8] imageWithData:v11 scale:v14];
        }

        width = self->_fitToSize.width;
        height = self->_fitToSize.height;
        v19 = self->_client;
        if (v18)
        {
          [v18 size];
          v24 = v22;
          v25 = v23;
          if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
          {
            v28 = v23;
            v29 = v22;
            if (!finished)
            {
LABEL_39:
              v68.width = v29;
              v68.height = v28;
              UIGraphicsBeginImageContextWithOptions(v68, 0, v14);
              if (self->_backgroundFillColor)
              {
                CurrentContext = UIGraphicsGetCurrentContext();
                CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_backgroundFillColor CGColor]);
                v43 = UIGraphicsGetCurrentContext();
                v71.origin.x = 0.0;
                v71.origin.y = 0.0;
                v71.size.width = v29;
                v71.size.height = v28;
                CGContextFillRect(v43, v71);
              }

              [v18 drawInRect:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v29, v28}];
              v38 = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
              v44 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
              {
                log = v44;
                v69.width = v24;
                v69.height = v25;
                v50 = NSStringFromCGSize(v69);
                v70.width = v29;
                v70.height = v28;
                v45 = NSStringFromCGSize(v70);
                *buf = 136316418;
                v57 = "[SiriUIURLSessionImageDownload _updateImageFromURL:error:]";
                v58 = 2112;
                v59 = v50;
                v60 = 2112;
                v61 = v45;
                v62 = 2112;
                v63 = v19;
                v64 = 2112;
                *v65 = lCopy;
                *&v65[8] = 1024;
                *&v65[10] = finished;
                _os_log_impl(&dword_26948D000, log, OS_LOG_TYPE_DEFAULT, "%s Loaded %@ (resized to %@) image for %@ from %@ (finished = %d)", buf, 0x3Au);
              }

LABEL_43:
              self->_newDataAvailableToRender = 0;
              v46 = MEMORY[0x26D63F900](self->_progressHandler);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__SiriUIURLSessionImageDownload__updateImageFromURL_error___block_invoke;
              block[3] = &unk_279C59E78;
              v53 = v38;
              v54 = v46;
              v55 = finished;
              v47 = v38;
              v48 = v46;
              dispatch_async(MEMORY[0x277D85CD0], block);
              self->_hasSentFinished = finished;

              goto LABEL_44;
            }
          }

          else
          {
            v27 = width != v22;
            if (height != v23)
            {
              v27 = 1;
            }

            if (v23 == 0.0)
            {
              v27 = 0;
            }

            if (v22 == 0.0)
            {
              v27 = 0;
            }

            if (!finished || v27)
            {
              v28 = v23;
              v29 = v22;
              if (v27)
              {
                v30 = width / (v22 / v23);
                v31 = height * (v22 / v25);
                if (v24 / v25 >= width / height)
                {
                  v31 = width;
                }

                else
                {
                  v30 = height;
                }

                v28 = round(v14 * v30) / v14;
                v29 = round(v14 * v31) / v14;
              }

              goto LABEL_39;
            }
          }

          v18 = v18;
          v39 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
            v67.width = v24;
            v67.height = v25;
            v41 = NSStringFromCGSize(v67);
            *buf = 136316162;
            v57 = "[SiriUIURLSessionImageDownload _updateImageFromURL:error:]";
            v58 = 2112;
            v59 = v41;
            v60 = 2112;
            v61 = v19;
            v62 = 2112;
            v63 = lCopy;
            v64 = 1024;
            *v65 = 1;
            _os_log_impl(&dword_26948D000, v40, OS_LOG_TYPE_DEFAULT, "%s Loaded %@ image for %@ from %@ (finished = %d)", buf, 0x30u);
          }

          v38 = v18;
          goto LABEL_43;
        }

LABEL_30:
        v32 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          v49 = v32;
          *buf = 136316418;
          v57 = "[SiriUIURLSessionImageDownload _updateImageFromURL:error:]";
          v58 = 2114;
          v59 = v19;
          v60 = 2114;
          v61 = lCopy;
          v62 = 2114;
          v63 = errorCopy;
          v64 = 1026;
          *v65 = finished;
          *&v65[4] = 2050;
          *&v65[6] = [(NSMutableData *)v11 length];
          _os_log_error_impl(&dword_26948D000, v49, OS_LOG_TYPE_ERROR, "%s Could not load image for %{public}@ from %{public}@: %{public}@ (finished = %{public}d, got %{public}ld bytes)", buf, 0x3Au);
        }

        v33 = MEMORY[0x277CBEB38];
        v34 = AFAnalyticsContextCreateWithError();
        v35 = [v33 dictionaryWithDictionary:v34];

        absoluteString = [lCopy absoluteString];
        if (absoluteString)
        {
          [v35 setObject:absoluteString forKeyedSubscript:@"URL"];
        }

        mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
        [mEMORY[0x277CEF158] logEventWithType:1425 context:v35];

        v18 = 0;
        v38 = 0;
        goto LABEL_43;
      }
    }
  }

LABEL_44:
}

uint64_t __59__SiriUIURLSessionImageDownload__updateImageFromURL_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 48));
  }

  return result;
}

- (void)appendDownloadedData:(id)data fromURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SiriUIURLSessionImageDownload_appendDownloadedData_fromURL___block_invoke;
  block[3] = &unk_279C59EC8;
  objc_copyWeak(&v15, &location);
  v12 = dataCopy;
  selfCopy = self;
  v14 = lCopy;
  v9 = lCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __62__SiriUIURLSessionImageDownload_appendDownloadedData_fromURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] appendData:*(a1 + 32)];
    *(v3 + 64) = 1;
    if (!v3[7])
    {
      if (v3[9])
      {
        v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3[6]);
        v5 = v3[7];
        v3[7] = v4;

        if (v3[7])
        {
          objc_initWeak(&location, *(a1 + 40));
          dispatch_source_set_timer(v3[7], 0, 0x1DCD6500uLL, 0x2FAF080uLL);
          v6 = v3[7];
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __62__SiriUIURLSessionImageDownload_appendDownloadedData_fromURL___block_invoke_2;
          handler[3] = &unk_279C59EA0;
          objc_copyWeak(&v9, &location);
          v8 = *(a1 + 48);
          dispatch_source_set_event_handler(v6, handler);
          dispatch_resume(v3[7]);

          objc_destroyWeak(&v9);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __62__SiriUIURLSessionImageDownload_appendDownloadedData_fromURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[64] == 1)
  {
    v3 = WeakRetained;
    [WeakRetained _updateImageFromURL:*(a1 + 32) error:0];
    WeakRetained = v3;
  }
}

- (void)finishedFromURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SiriUIURLSessionImageDownload_finishedFromURL_error___block_invoke;
  block[3] = &unk_279C59EC8;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = lCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = lCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __55__SiriUIURLSessionImageDownload_finishedFromURL_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[88] = 1;
    v6 = WeakRetained;
    [*(a1 + 32) _updateImageFromURL:*(a1 + 40) error:*(a1 + 48)];
    v3 = v6;
    WeakRetained = *(v6 + 7);
    if (WeakRetained)
    {
      dispatch_source_cancel(WeakRetained);
      v4 = *(v6 + 7);
      *(v6 + 7) = 0;

      v3 = v6;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

@end