@interface ICLiveLinkQueueEventPlaybackModeChanged
- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedAutoPlayEnabled:(BOOL)a3;
- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedRepeatType:(int64_t)a3;
- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedShuffleType:(int64_t)a3;
- (id)description;
@end

@implementation ICLiveLinkQueueEventPlaybackModeChanged

- (id)description
{
  kind = self->_kind;
  v4 = MEMORY[0x1E696AEC0];
  if (kind > 1)
  {
    if (kind == 2)
    {
      v10 = (*(self->_repeatType + 2))();
      if (v10 >= 4)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/repeatType=%ld", v10];
      }

      else
      {
        v6 = off_1E7BF8628[v10];
      }

      [v4 stringWithFormat:@"<ICLiveLinkQueueEventPlaybackModeChanged: %p repeatType=%@>", self, v6];
      goto LABEL_20;
    }

    if (kind == 3)
    {
      v7 = (*(self->_autoPlayEnabled + 2))();
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      [v4 stringWithFormat:@"<ICLiveLinkQueueEventPlaybackModeChanged: %p autoPlayEnabled=%@>", self, v8];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!kind)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEventPlaybackModeChanged: %p unknown/invalid>", self, v12];
    goto LABEL_13;
  }

  if (kind != 1)
  {
LABEL_11:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEventPlaybackModeChanged: %p unknown/kind=%ld>", self, kind];
    v9 = LABEL_13:;
    goto LABEL_21;
  }

  v5 = (*(self->_shuffleType + 2))();
  if (v5 >= 4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/shuffleType=%ld", v5];
  }

  else
  {
    v6 = off_1E7BF8608[v5];
  }

  [v4 stringWithFormat:@"<ICLiveLinkQueueEventPlaybackModeChanged: %p shuffleType=%@>", self, v6];
  v9 = LABEL_20:;

LABEL_21:

  return v9;
}

- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedAutoPlayEnabled:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ICLiveLinkQueueEventPlaybackModeChanged;
  v4 = [(ICLiveLinkQueueEventPlaybackModeChanged *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__ICLiveLinkQueueEventPlaybackModeChanged_initWithUpdatedAutoPlayEnabled___block_invoke;
    v9[3] = &__block_descriptor_33_e5_B8__0l;
    v10 = a3;
    v6 = [v9 copy];
    autoPlayEnabled = v5->_autoPlayEnabled;
    v5->_autoPlayEnabled = v6;
  }

  return v5;
}

- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedRepeatType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = ICLiveLinkQueueEventPlaybackModeChanged;
  v4 = [(ICLiveLinkQueueEventPlaybackModeChanged *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 2;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__ICLiveLinkQueueEventPlaybackModeChanged_initWithUpdatedRepeatType___block_invoke;
    v9[3] = &__block_descriptor_40_e5_q8__0l;
    v9[4] = a3;
    v6 = [v9 copy];
    repeatType = v5->_repeatType;
    v5->_repeatType = v6;
  }

  return v5;
}

- (ICLiveLinkQueueEventPlaybackModeChanged)initWithUpdatedShuffleType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = ICLiveLinkQueueEventPlaybackModeChanged;
  v4 = [(ICLiveLinkQueueEventPlaybackModeChanged *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__ICLiveLinkQueueEventPlaybackModeChanged_initWithUpdatedShuffleType___block_invoke;
    v9[3] = &__block_descriptor_40_e5_q8__0l;
    v9[4] = a3;
    v6 = [v9 copy];
    shuffleType = v5->_shuffleType;
    v5->_shuffleType = v6;
  }

  return v5;
}

@end