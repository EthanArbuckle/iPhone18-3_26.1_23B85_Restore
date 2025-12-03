@interface SCKPMessageCardSectionAttachmentView
- (CGSize)_translateImageSizeForMaxSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SCKPMessageCardSectionAttachmentView)initWithAttachment:(id)attachment;
- (SCKPMessageCardSectionAttachmentViewDelegate)delegate;
- (id)_thumbnailImageForVideoURL:(id)l;
- (id)_videoDurationStringForVideoURL:(id)l;
- (void)_handleTap:(id)tap;
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)_loadAttachment:(id)attachment;
- (void)_loadAttachmentFromFileURL:(id)l type:(int)type;
- (void)_loadLinkWith:(id)with metadata:(id)metadata;
- (void)layoutSubviews;
@end

@implementation SCKPMessageCardSectionAttachmentView

- (SCKPMessageCardSectionAttachmentView)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v9.receiver = self;
  v9.super_class = SCKPMessageCardSectionAttachmentView;
  v5 = [(SCKPMessageCardSectionAttachmentView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(SCKPMessageCardSectionAttachmentView *)v5 _loadAttachment:attachmentCopy];
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v6 action:sel__handleTap_];
    [(SCKPMessageCardSectionAttachmentView *)v6 addGestureRecognizer:v7];
  }

  return v6;
}

- (void)_loadAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v7 = [attachmentCopy url];
  if ([v7 isFileURL])
  {
    type = [attachmentCopy type];

    [(SCKPMessageCardSectionAttachmentView *)self _loadAttachmentFromFileURL:v7 type:type];
  }

  else
  {
    linkMetadata = [attachmentCopy linkMetadata];

    [(SCKPMessageCardSectionAttachmentView *)self _loadLinkWith:v7 metadata:linkMetadata];
  }
}

- (void)_loadAttachmentFromFileURL:(id)l type:(int)type
{
  lCopy = l;
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  imageContainer = self->_imageContainer;
  self->_imageContainer = v6;

  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  imageView = self->_imageView;
  self->_imageView = v8;

  [(UIView *)self->_imageContainer addSubview:self->_imageView];
  [(SCKPMessageCardSectionAttachmentView *)self addSubview:self->_imageContainer];
  v10 = MEMORY[0x277CE1CB8];
  pathExtension = [lCopy pathExtension];
  v12 = [v10 typeWithFilenameExtension:pathExtension];

  if ([v12 conformsToType:*MEMORY[0x277CE1DB0]])
  {
    v13 = MEMORY[0x277D755B8];
    path = [lCopy path];
    v15 = [v13 imageWithContentsOfFile:path];

    [(UIImageView *)self->_imageView setImage:v15];
    [(UIImageView *)self->_imageView setContentMode:1];
    if (type == 2)
    {
      v16 = [MEMORY[0x277CD9D60] livePhotoBadgeImageWithOptions:1];
      v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16];
      livePhotoBadge = self->_livePhotoBadge;
      self->_livePhotoBadge = v17;

      [(UIImageView *)self->_livePhotoBadge setUserInteractionEnabled:0];
      [(UIView *)self->_imageContainer addSubview:self->_livePhotoBadge];
    }
  }

  else if ([v12 conformsToType:*MEMORY[0x277CE1E00]])
  {
    v15 = [(SCKPMessageCardSectionAttachmentView *)self _thumbnailImageForVideoURL:lCopy];
    v19 = [SCKPGradientView alloc];
    v20 = [(SCKPGradientView *)v19 initWithGradientType:*MEMORY[0x277CDA690]];
    gradientView = self->_gradientView;
    self->_gradientView = v20;

    [(UIView *)self->_imageContainer addSubview:self->_gradientView];
    [(SCKPGradientView *)self->_gradientView setGradientEndOpacity:0.0];
    [(SCKPGradientView *)self->_gradientView setGradientStartOpacity:0.75];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    videoDurationLabel = self->_videoDurationLabel;
    self->_videoDurationLabel = v22;

    v24 = self->_videoDurationLabel;
    v25 = [(SCKPMessageCardSectionAttachmentView *)self _videoDurationStringForVideoURL:lCopy];
    [(UILabel *)v24 setText:v25];

    v26 = self->_videoDurationLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v26 setBackgroundColor:clearColor];

    v28 = self->_videoDurationLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v28 setTextColor:whiteColor];

    [(UILabel *)self->_videoDurationLabel setTextAlignment:2];
    [(UIView *)self->_imageContainer addSubview:self->_videoDurationLabel];
  }

  else
  {
    v15 = 0;
  }

  [(UIView *)self->_imageContainer _setContinuousCornerRadius:16.0];
  [(UIView *)self->_imageContainer setClipsSubviews:1];
  [(UIImageView *)self->_imageView setImage:v15];
  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
  [(UIView *)self->_imageContainer setUserInteractionEnabled:0];
}

- (void)_loadLinkWith:(id)with metadata:(id)metadata
{
  withCopy = with;
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    if (!withCopy)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v8 = objc_alloc_init(MEMORY[0x277CD46E0]);
    [v8 setTimeout:5.0];
    v10 = objc_alloc_init(MEMORY[0x277CD46D0]);
    v12 = objc_alloc_init(MEMORY[0x277CD46C8]);
    [v12 setURL:withCopy];
    [v10 _setMetadata:v12 isFinal:0];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke;
    v16 = &unk_279C600D0;
    objc_copyWeak(&v18, &location);
    v17 = withCopy;
    [v8 startFetchingMetadataForURL:v17 completionHandler:&v13];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

LABEL_9:
LABEL_11:
    [v10 setDelegate:{self, v13, v14, v15, v16}];
    [v10 _setDisableAutoPlay:1];
    [v10 _setDisablePlayback:1];
    [v10 _setDisablePlaybackControls:1];
    [v10 _setDisablePreviewGesture:1];
    [v10 setUserInteractionEnabled:0];
    [(SCKPMessageCardSectionAttachmentView *)self setLinkView:v10];
    [(SCKPMessageCardSectionAttachmentView *)self addSubview:v10];
    goto LABEL_12;
  }

  v20 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:metadataCopy error:&v20];
  v9 = v20;
  if (!v9)
  {
    [(SCKPMessageCardSectionAttachmentView *)self setFullMetadata:v8];
    v10 = [objc_alloc(MEMORY[0x277CD46D0]) initWithMetadata:v8];
    [v10 _setDisableAnimations:1];
    goto LABEL_9;
  }

  v10 = v9;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionAttachmentView _loadLinkWith:v11 metadata:v10];
  }

LABEL_12:
}

void __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke_2;
  v9[3] = &unk_279C600A8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (*(a1 + 40))
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke_2_cold_1((a1 + 40), v6);
      }

      v4 = objc_alloc_init(MEMORY[0x277CD46C8]);
      [v4 setURL:*(a1 + 48)];
    }

    v7 = *(WeakRetained + 54);
    *(WeakRetained + 54) = v4;
    v8 = v4;

    [*(WeakRetained + 55) _setMetadata:v8 isFinal:1];
  }
}

- (id)_thumbnailImageForVideoURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:lCopy options:0];
  v5 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:v4];
  [v5 setAppliesPreferredTrackTransform:1];
  CMTimeMake(&v12, 0, 1);
  v11 = 0;
  v6 = [v5 copyCGImageAtTime:&v12 actualTime:0 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [(SCKPMessageCardSectionAttachmentView *)v7 _thumbnailImageForVideoURL:lCopy, v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v6];
  }

  CGImageRelease(v6);

  return v9;
}

- (id)_videoDurationStringForVideoURL:(id)l
{
  v3 = MEMORY[0x277CE6650];
  lCopy = l;
  v5 = [[v3 alloc] initWithURL:lCopy options:0];

  [v5 duration];
  [v5 duration];
  v6 = [MEMORY[0x277D75740] timeStringForSeconds:v9 / v8 forceFullWidthComponents:0 isElapsed:1];

  return v6;
}

- (void)_handleTap:(id)tap
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SCKPMessageCardSectionAttachmentView _handleTap:]";
    _os_log_impl(&dword_26950D000, v4, OS_LOG_TYPE_DEFAULT, "%s #messages: Tap on attachment - punching out", &v7, 0xCu);
  }

  delegate = [(SCKPMessageCardSectionAttachmentView *)self delegate];
  [delegate userDidTapAttachmentView:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_linkView)
  {
    if (self->_fullMetadata)
    {
      width = 275.0;
      [(LPLinkView *)self->_linkView sizeThatFits:275.0, 200.0];
      v5 = fmin(v4, 200.0);
    }

    else
    {
      v5 = 200.0;
      width = 275.0;
    }
  }

  else if (self->_imageView)
  {
    width = fits.width;
    v5 = 200.0;
    [(SCKPMessageCardSectionAttachmentView *)self _translateImageSizeForMaxSize:fits.width, 200.0];
    if (v6 <= width)
    {
      width = v6;
    }
  }

  else
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SCKPMessageCardSectionAttachmentView sizeThatFits:v7];
    }

    width = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = width;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  [(SCKPMessageCardSectionAttachmentView *)self bounds];
  v4 = v3;
  [(SCKPMessageCardSectionAttachmentView *)self bounds];
  v6 = v5;
  linkView = self->_linkView;
  if (linkView)
  {
    [(LPLinkView *)linkView sizeThatFits:v4, v5];
    v10 = v9;
    v11 = v4 - v9;
    if (!self->_alignmentStyle)
    {
      v11 = 0.0;
    }

    [(LPLinkView *)self->_linkView setFrame:v11, v6 - v8, v10];
  }

  if (self->_imageView)
  {
    [(UIView *)self->_imageContainer setFrame:0.0, 0.0, v4, v6];
    [(SCKPMessageCardSectionAttachmentView *)self _translateImageSizeForMaxSize:v4, v6];
    if (v12 <= v4)
    {
      imageView = self->_imageView;
      v14 = 0.0;
      v13 = v4;
    }

    else
    {
      v13 = v12;
      v14 = -(v12 * 0.5 - v4 * 0.5);
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setFrame:v14, 0.0, v13, v6];
    [(UIImageView *)self->_livePhotoBadge setFrame:0.0, 0.0, 30.0, 30.0];
  }

  videoDurationLabel = self->_videoDurationLabel;
  if (videoDurationLabel)
  {
    [(UILabel *)videoDurationLabel sizeThatFits:v4, v6];
    v18 = v17;
    [(UILabel *)self->_videoDurationLabel setFrame:v4 - v19 + -10.0, v6 - v17 + -10.0, v19, v17];
    gradientView = self->_gradientView;
    [(UIView *)self->_imageContainer size];
    v22 = v21;
    [(UIView *)self->_imageContainer size];
    [(SCKPGradientView *)gradientView setFrame:0.0, 0.0, v22, v23];
    [(SCKPGradientView *)self->_gradientView setGradientHeight:v18 + 10.0 + 10.0];
    v24 = self->_gradientView;

    [(SCKPGradientView *)v24 setVisible:1 animated:0];
  }
}

- (CGSize)_translateImageSizeForMaxSize:(CGSize)size
{
  height = size.height;
  image = [(UIImageView *)self->_imageView image];
  [image size];
  v7 = v6;

  image2 = [(UIImageView *)self->_imageView image];
  [image2 size];
  v10 = v9;

  v11 = 0.0;
  if (v10 > 0.0 && v7 > 0.0)
  {
    v11 = v7 / v10;
  }

  v13 = height * v11;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  [complete _setPreferredSizeClass:3];
  [(SCKPMessageCardSectionAttachmentView *)self setNeedsLayout];

  [(SCKPMessageCardSectionAttachmentView *)self layoutIfNeeded];
}

- (SCKPMessageCardSectionAttachmentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadLinkWith:(void *)a1 metadata:(void *)a2 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 136315394;
  v7 = "[SCKPMessageCardSectionAttachmentView _loadLinkWith:metadata:]";
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_26950D000, v3, OS_LOG_TYPE_ERROR, "%s #messages: error converting metadata to LPLinkMetadata:%@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __63__SCKPMessageCardSectionAttachmentView__loadLinkWith_metadata___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[SCKPMessageCardSectionAttachmentView _loadLinkWith:metadata:]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_26950D000, a2, OS_LOG_TYPE_ERROR, "%s #messages Metadata fetch failed with error: %@ creating new metadata", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_thumbnailImageForVideoURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26950D000, log, OS_LOG_TYPE_ERROR, "error: %@ creating thumbnail from movie url: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sizeThatFits:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SCKPMessageCardSectionAttachmentView sizeThatFits:]";
  _os_log_error_impl(&dword_26950D000, log, OS_LOG_TYPE_ERROR, "%s Calling size that fits before setting a valid URL", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end