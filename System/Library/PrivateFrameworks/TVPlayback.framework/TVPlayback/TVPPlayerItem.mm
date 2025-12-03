@interface TVPPlayerItem
- (TVPMediaItemLoader)mediaItemLoader;
- (TVPPlayerItem)initWithAsset:(id)asset;
- (void)dealloc;
- (void)selectMediaOption:(id)option inMediaSelectionGroup:(id)group;
- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(id)group;
- (void)setMuted:(BOOL)muted;
@end

@implementation TVPPlayerItem

- (TVPPlayerItem)initWithAsset:(id)asset
{
  v4.receiver = self;
  v4.super_class = TVPPlayerItem;
  result = [(TVPPlayerItem *)&v4 initWithAsset:asset];
  if (result)
  {
    result->_audioSelectionIsAutomatic = 1;
  }

  return result;
}

- (void)dealloc
{
  [(TVImageProxy *)self->_posterProxy cancel];
  v3.receiver = self;
  v3.super_class = TVPPlayerItem;
  [(TVPPlayerItem *)&v3 dealloc];
}

- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(id)group
{
  groupCopy = group;
  asset = [(TVPPlayerItem *)self asset];
  v6 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v7 = [groupCopy isEqual:v6];

  if ((v7 & 1) == 0)
  {
    [(TVPPlayerItem *)self muted];
    goto LABEL_5;
  }

  [(TVPPlayerItem *)self setAudioSelectionIsAutomatic:1];
  if (([(TVPPlayerItem *)self muted]& v7) != 1)
  {
LABEL_5:
    v8.receiver = self;
    v8.super_class = TVPPlayerItem;
    [(TVPPlayerItem *)&v8 selectMediaOptionAutomaticallyInMediaSelectionGroup:groupCopy];
    goto LABEL_6;
  }

  [(TVPPlayerItem *)self setSavedManualAudioSelection:0];
LABEL_6:
}

- (void)selectMediaOption:(id)option inMediaSelectionGroup:(id)group
{
  optionCopy = option;
  groupCopy = group;
  asset = [(TVPPlayerItem *)self asset];
  v9 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v10 = [groupCopy isEqual:v9];

  if ((v10 & 1) == 0)
  {
    [(TVPPlayerItem *)self muted];
    goto LABEL_5;
  }

  [(TVPPlayerItem *)self setAudioSelectionIsAutomatic:0];
  if (([(TVPPlayerItem *)self muted]& v10) != 1)
  {
LABEL_5:
    v11.receiver = self;
    v11.super_class = TVPPlayerItem;
    [(TVPPlayerItem *)&v11 selectMediaOption:optionCopy inMediaSelectionGroup:groupCopy];
    goto LABEL_6;
  }

  [(TVPPlayerItem *)self setSavedManualAudioSelection:optionCopy];
LABEL_6:
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    self->_muted = muted;
    asset = [(TVPPlayerItem *)self asset];
    v5 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

    if (self->_muted)
    {
      if (![(TVPPlayerItem *)self audioSelectionIsAutomatic])
      {
        currentMediaSelection = [(TVPPlayerItem *)self currentMediaSelection];
        v7 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v5];
        [(TVPPlayerItem *)self setSavedManualAudioSelection:v7];
      }

      v11.receiver = self;
      v11.super_class = TVPPlayerItem;
      [(TVPPlayerItem *)&v11 selectMediaOption:0 inMediaSelectionGroup:v5];
    }

    else
    {
      savedManualAudioSelection = [(TVPPlayerItem *)self savedManualAudioSelection];
      if (savedManualAudioSelection)
      {
        v10.receiver = self;
        v10.super_class = TVPPlayerItem;
        [(TVPPlayerItem *)&v10 selectMediaOption:savedManualAudioSelection inMediaSelectionGroup:v5];
      }

      else
      {
        v9.receiver = self;
        v9.super_class = TVPPlayerItem;
        [(TVPPlayerItem *)&v9 selectMediaOptionAutomaticallyInMediaSelectionGroup:v5];
      }

      [(TVPPlayerItem *)self setSavedManualAudioSelection:0];
    }
  }
}

- (TVPMediaItemLoader)mediaItemLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaItemLoader);

  return WeakRetained;
}

@end