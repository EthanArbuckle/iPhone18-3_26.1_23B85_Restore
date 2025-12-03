@interface SFMagicHead
- (SFMagicHead)initWithNode:(id)node slotNode:(id)slotNode containerRadius:(double)radius delegate:(id)delegate settings:(id)settings;
- (SFMagicHeadDelegate)delegate;
- (void)addObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object;
- (void)dealloc;
- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object;
- (void)resetTransferState;
- (void)setCellState:(int64_t)state animated:(BOOL)animated silent:(BOOL)silent;
- (void)setPosition:(int64_t)position withOffset:(double)offset;
- (void)setProgress:(id)progress;
- (void)setSize:(int64_t)size;
- (void)triggerKVOForKeyPaths:(id)paths ofObject:(id)object;
- (void)userDidCancel;
- (void)userDidSelect;
@end

@implementation SFMagicHead

- (SFMagicHead)initWithNode:(id)node slotNode:(id)slotNode containerRadius:(double)radius delegate:(id)delegate settings:(id)settings
{
  nodeCopy = node;
  nodeCopy2 = node;
  slotNodeCopy = slotNode;
  delegateCopy = delegate;
  settingsCopy = settings;
  if (nodeCopy2 | slotNodeCopy)
  {
    v56.receiver = self;
    v56.super_class = SFMagicHead;
    v17 = [(SFMagicHead *)&v56 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (v17)
    {
      obj = delegateCopy;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(SFMagicHead *)v17 setBackgroundColor:clearColor];

      v17->_isMagicHead = slotNodeCopy != 0;
      objc_storeStrong(&v17->_node, nodeCopy);
      objc_storeStrong(&v17->_slotNode, slotNode);
      nodeIdentifier = [(SFAirDropNode *)v17->_node nodeIdentifier];
      rootSettings = nodeIdentifier;
      if (nodeIdentifier)
      {
        v21 = 0;
        v22 = nodeIdentifier;
      }

      else
      {
        identifier = [slotNodeCopy identifier];
        nodeCopy = identifier;
        if (identifier)
        {
          v21 = 0;
          v22 = identifier;
        }

        else
        {
          v22 = objc_opt_new();
          v21 = 1;
        }
      }

      objc_storeStrong(&v17->_nodeIdentifier, v22);
      if (v21)
      {
      }

      if (!rootSettings)
      {
      }

      v17->_containerRadius = radius;
      objc_storeWeak(&v17->_delegate, obj);
      magicHeadSettings = settingsCopy;
      if (!settingsCopy)
      {
        rootSettings = [MEMORY[0x1E69CDEB8] rootSettings];
        magicHeadSettings = [rootSettings magicHeadSettings];
      }

      objc_storeStrong(&v17->_settings, magicHeadSettings);
      if (!settingsCopy)
      {
      }

      v17->_pointedAt = 1;
      if (v17->_isMagicHead)
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
        if (v27 >= 414.0)
        {
          currentDevice = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom = [currentDevice userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v28 = 62.0;
          }

          else
          {
            v28 = 66.0;
          }
        }

        else
        {
          v28 = 62.0;
        }
      }

      else
      {
        v28 = 128.0;
      }

      [(SFMagicHead *)v17 setBounds:0.0, 0.0, v28, v28];
      progressKeyPaths = v17->_progressKeyPaths;
      v17->_progressKeyPaths = &unk_1F37F3FD8;

      v32 = objc_alloc(MEMORY[0x1E69DD250]);
      [(SFMagicHead *)v17 bounds];
      v33 = [v32 initWithFrame:?];
      contentView = v17->_contentView;
      v17->_contentView = v33;

      [(UIView *)v17->_contentView setClipsToBounds:0];
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)v17->_contentView setBackgroundColor:clearColor2];

      [(SFMagicHead *)v17 addSubview:v17->_contentView];
      if (v17->_isMagicHead)
      {
        v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
        imageSlotView = v17->_imageSlotView;
        v17->_imageSlotView = v36;

        [(UIView *)v17->_contentView bounds];
        [(UIView *)v17->_imageSlotView setFrame:?];
        avatarImageSlotID = [(UIAirDropNode *)v17->_slotNode avatarImageSlotID];
        objc_initWeak(&location, v17);
        v39 = *MEMORY[0x1E69DDA98];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __71__SFMagicHead_initWithNode_slotNode_containerRadius_delegate_settings___block_invoke;
        v52[3] = &unk_1E7EE44C8;
        objc_copyWeak(&v53, &location);
        v54 = avatarImageSlotID;
        [v39 _performBlockAfterCATransactionCommits:v52];
        [(UIView *)v17->_contentView addSubview:v17->_imageSlotView];
        objc_destroyWeak(&v53);
        objc_destroyWeak(&location);
      }

      else
      {
        v40 = [SFMagicHeadShadowView alloc];
        [(UIView *)v17->_contentView bounds];
        v41 = [(SFMagicHeadShadowView *)v40 initWithFrame:?];
        shadowView = v17->_shadowView;
        v17->_shadowView = v41;

        [(SFMagicHeadShadowView *)v17->_shadowView setClipsToBounds:0];
        [(UIView *)v17->_contentView addSubview:v17->_shadowView];
        v43 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{-[SFAirDropNode displayIcon](v17->_node, "displayIcon")}];
        v44 = [[SFPersonImageView alloc] initWithImage:v43 isSquare:[(SFAirDropNode *)v17->_node isClassroom]];
        imageView = v17->_imageView;
        v17->_imageView = v44;

        [(SFMagicHeadSettings *)v17->_settings tapDarkeningAlpha];
        [(SFPersonImageView *)v17->_imageView setHighlightDarkeningAlpha:?];
        [(SFMagicHeadShadowView *)v17->_shadowView bounds];
        [(SFPersonImageView *)v17->_imageView setFrame:?];
        [(SFMagicHeadShadowView *)v17->_shadowView addSubview:v17->_imageView];
      }

      v46 = [SFCircleProgressView alloc];
      [(UIView *)v17->_contentView bounds];
      v58 = CGRectInset(v57, -9.0, -9.0);
      v47 = [(SFCircleProgressView *)v46 initWithFrame:v58.origin.x, v58.origin.y, v58.size.width, v58.size.height];
      circleProgressView = v17->_circleProgressView;
      v17->_circleProgressView = v47;

      [(SFCircleProgressView *)v17->_circleProgressView setProgressLineWidth:3.0];
      [(SFCircleProgressView *)v17->_circleProgressView setShowProgressTray:1];
      [(SFCircleProgressView *)v17->_circleProgressView setAlpha:0.0];
      clearColor3 = [MEMORY[0x1E69DC888] clearColor];
      [(SFCircleProgressView *)v17->_circleProgressView setBackgroundColor:clearColor3];

      [(UIView *)v17->_contentView addSubview:v17->_circleProgressView];
      [(SFMagicHead *)v17 setCellState:0 animated:0 silent:1];
      delegateCopy = obj;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __71__SFMagicHead_initWithNode_slotNode_containerRadius_delegate_settings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 40)];
    v4 = *MEMORY[0x1E6979DE0];
    v5 = [v10 imageSlotView];
    v6 = [v5 layer];
    [v6 setContentsGravity:v4];

    v7 = [v10 imageSlotView];
    v8 = [v7 layer];
    [v8 setContents:v3];

    v9 = [v10 imageSlotView];
    [v9 setAlpha:1.0];

    WeakRetained = v10;
  }
}

- (void)dealloc
{
  [(SFMagicHead *)self setProgress:0];
  v3.receiver = self;
  v3.super_class = SFMagicHead;
  [(SFMagicHead *)&v3 dealloc];
}

- (void)setSize:(int64_t)size
{
  self->_size = size;
  if ((size - 1) > 2)
  {
    v4 = 0.00000011920929;
  }

  else
  {
    v4 = dbl_1B9EDEB80[size - 1];
  }

  [(SFMagicHeadShadowView *)self->_shadowView setVisible:size != 1];
  CGAffineTransformMakeScale(&v7, v4, v4);
  contentView = self->_contentView;
  v6 = v7;
  [(UIView *)contentView setTransform:&v6];
}

- (void)setPosition:(int64_t)position withOffset:(double)offset
{
  self->_position = position;
  self->_degreeOffset = offset;
  v5 = 0.0;
  if (position != 1)
  {
    v5 = -self->_containerRadius;
  }

  offsetCopy = offset;
  v7 = offsetCopy * 0.0174532925;
  v8 = v7;
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeRotation(&v16, v7);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, 0.0, v5);
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeRotation(&v14, -v8);
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v9;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  t1 = v16;
  *&t2.a = *&v13.a;
  *&t2.c = v9;
  *&t2.tx = *&v13.tx;
  CGAffineTransformConcat(&v13, &t1, &t2);
  t2 = v15;
  v10 = v13;
  CGAffineTransformConcat(&t1, &t2, &v10);
  v13 = t1;
  t2 = v14;
  v10 = t1;
  CGAffineTransformConcat(&t1, &t2, &v10);
  v13 = t1;
  [(SFMagicHead *)self setTransform:&t1];
}

- (void)resetTransferState
{
  [(SFMagicHead *)self setCellState:0 animated:1 silent:1];
  delegate = [(SFMagicHead *)self delegate];
  [delegate magicHead:self requestingSubtitleTextChangeForState:self->_cellState];
}

- (void)userDidSelect
{
  [(SFMagicHead *)self resetTransferState];

  [(SFMagicHead *)self setCellState:2 animated:1 silent:0];
}

- (void)userDidCancel
{
  if ((self->_cellState | 2) != 6)
  {
    [(NSProgress *)self->_progress cancel];
    [(SFMagicHead *)self setCellState:0 animated:1 silent:1];
    delegate = [(SFMagicHead *)self delegate];
    [delegate magicHead:self requestingSubtitleTextChangeForState:self->_cellState];
  }
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  if (self->_progress != progressCopy)
  {
    v6 = progressCopy;
    [(SFMagicHead *)self removeObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:?];
    objc_storeStrong(&self->_progress, progress);
    [(SFMagicHead *)self addObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    [(SFMagicHead *)self triggerKVOForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    progressCopy = v6;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  mainThread = [MEMORY[0x1E696AF00] mainThread];

  if (mainThread)
  {
    if ([objectCopy isEqual:self->_progress])
    {
      [(SFMagicHead *)self handleKVOUpdateForProgress:self->_progress keyPath:pathCopy];
    }

    else
    {
      v14 = airdrop_ui_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFMagicHead observeValueForKeyPath:pathCopy ofObject:v14 change:? context:?];
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFMagicHead_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7EE43A0;
    block[4] = self;
    v16 = pathCopy;
    v17 = objectCopy;
    v18 = changeCopy;
    contextCopy = context;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)addObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [objectCopy addObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++) options:0 context:0];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)removeObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [objectCopy removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)triggerKVOForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [(SFMagicHead *)self observeValueForKeyPath:*(*(&v12 + 1) + 8 * v11++) ofObject:objectCopy change:0 context:0];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path
{
  pathCopy = path;
  stateBeingRestored = self->_stateBeingRestored;
  v17 = pathCopy;
  if ([pathCopy isEqualToString:@"userInfo.sendState"])
  {
    sf_transferState = [(NSProgress *)self->_progress sf_transferState];
    if (sf_transferState > 2)
    {
      if (sf_transferState > 4)
      {
        if (sf_transferState != 5)
        {
          if (sf_transferState != 6)
          {
            goto LABEL_23;
          }

          [(SFMagicHead *)self setCellState:4 animated:stateBeingRestored ^ 1 silent:stateBeingRestored];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained magicHeadDidFinishTransferForHead:self];
          goto LABEL_20;
        }

        v8 = stateBeingRestored ^ 1;
        selfCopy2 = self;
        v10 = 6;
LABEL_19:
        [(SFMagicHead *)selfCopy2 setCellState:v10 animated:v8 silent:stateBeingRestored];
        [(SFCircleProgressView *)self->_circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:0.0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained magicHeadDidTerminateTransferForHead:self];
LABEL_20:

        goto LABEL_23;
      }

      if (sf_transferState != 3)
      {
        v8 = stateBeingRestored ^ 1;
        selfCopy2 = self;
        v10 = 5;
        goto LABEL_19;
      }

      v14 = stateBeingRestored ^ 1;
      selfCopy5 = self;
      v16 = 3;
      goto LABEL_22;
    }

    if (sf_transferState)
    {
      if (sf_transferState == 1)
      {
        v14 = stateBeingRestored ^ 1;
        selfCopy5 = self;
        v16 = 1;
        goto LABEL_22;
      }

      if (sf_transferState != 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 magicHeadDidStartTransferForHead:self];
    }

    v14 = stateBeingRestored ^ 1;
    selfCopy5 = self;
    v16 = 2;
LABEL_22:
    [(SFMagicHead *)selfCopy5 setCellState:v16 animated:v14 silent:stateBeingRestored];
    goto LABEL_23;
  }

  if ([v17 isEqualToString:@"fractionCompleted"])
  {
    circleProgressView = self->_circleProgressView;
    [(NSProgress *)self->_progress fractionCompleted];
    [(SFCircleProgressView *)circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:?];
  }

LABEL_23:
}

- (void)setCellState:(int64_t)state animated:(BOOL)animated silent:(BOOL)silent
{
  v32 = *MEMORY[0x1E69E9840];
  cellState = self->_cellState;
  if (cellState != state)
  {
    animatedCopy = animated;
    v9 = state - 2;
    if (state >= 2 && cellState > state)
    {
      delegate = airdrop_ui_log();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_cellState;
        if (v11 > 6)
        {
          v12 = @"?";
        }

        else
        {
          v12 = off_1E7EE4510[v11];
        }

        if (v9 > 4)
        {
          v20 = @"?";
        }

        else
        {
          v20 = off_1E7EE44E8[v9];
        }

        displayName = [(SFAirDropNode *)self->_node displayName];
        *buf = 138412803;
        v27 = v12;
        v28 = 2112;
        v29 = v20;
        v30 = 2113;
        v31 = displayName;
        _os_log_impl(&dword_1B9E4B000, delegate, OS_LOG_TYPE_DEFAULT, "MagicHead: unsupported cell state transition %@ -> %@ for person %{private}@. Ignoring", buf, 0x20u);
      }

LABEL_38:

      return;
    }

    progress = self->_progress;
    if (!progress || ([(NSProgress *)progress sf_initiator]& 2) != 0)
    {
      v14 = 1;
LABEL_13:
      if (state > 3)
      {
        if (state == 4)
        {
          circleProgressView = self->_circleProgressView;
          if (animatedCopy)
          {
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __44__SFMagicHead_setCellState_animated_silent___block_invoke;
            v25[3] = &unk_1E7EE3720;
            v25[4] = self;
            [(SFCircleProgressView *)circleProgressView animateProgressCompletedWithCompletion:v25];
          }

          else
          {
            [(SFCircleProgressView *)circleProgressView setAlpha:0.0];
            [(SFCircleProgressView *)self->_circleProgressView setProgress:1.0];
          }

          goto LABEL_24;
        }

        if (state != 5 && state != 6)
        {
LABEL_24:
          v17 = airdrop_ui_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = self->_cellState;
            if (v18 > 6)
            {
              v19 = @"?";
            }

            else
            {
              v19 = off_1E7EE4510[v18];
            }

            if (state > 6)
            {
              v22 = @"?";
            }

            else
            {
              v22 = off_1E7EE4510[state];
            }

            displayName2 = [(SFAirDropNode *)self->_node displayName];
            *buf = 138412803;
            v27 = v19;
            v28 = 2112;
            v29 = v22;
            v30 = 2113;
            v31 = displayName2;
            _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "MagicHead: changing cell state %@ -> %@ for person %{private}@", buf, 0x20u);
          }

          self->_cellState = state;
          delegate = [(SFMagicHead *)self delegate];
          [delegate magicHead:self requestingSubtitleTextChangeForState:self->_cellState];
          goto LABEL_38;
        }
      }

      else if (state)
      {
        if (state != 1 && state != 3)
        {
          goto LABEL_24;
        }

        [(SFCircleProgressView *)self->_circleProgressView setProgress:animatedCopy animated:0 completion:0.0];
        if (!v14)
        {
          goto LABEL_24;
        }

        v15 = self->_circleProgressView;
        v16 = 1.0;
        goto LABEL_23;
      }

      [(SFCircleProgressView *)self->_circleProgressView setProgress:animatedCopy animated:0 completion:0.0];
      v15 = self->_circleProgressView;
      v16 = 0.0;
LABEL_23:
      [(SFCircleProgressView *)v15 setAlpha:v16];
      goto LABEL_24;
    }

    if ((state - 3) < 4 || !state)
    {
      [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
      v14 = 0;
      goto LABEL_13;
    }
  }
}

uint64_t __44__SFMagicHead_setCellState_animated_silent___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__SFMagicHead_setCellState_animated_silent___block_invoke_2;
  v2[3] = &unk_1E7EE3720;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.5];
}

- (SFMagicHeadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(NSObject *)a3 ofObject:change:context:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_ERROR, "%@: incorrect object for keypath %@", &v7, 0x16u);
}

@end