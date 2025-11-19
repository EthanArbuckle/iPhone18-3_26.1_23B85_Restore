@interface TVPPlayerItem
- (TVPMediaItemLoader)mediaItemLoader;
- (TVPPlayerItem)initWithAsset:(id)a3;
- (void)dealloc;
- (void)selectMediaOption:(id)a3 inMediaSelectionGroup:(id)a4;
- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(id)a3;
- (void)setMuted:(BOOL)a3;
@end

@implementation TVPPlayerItem

- (TVPPlayerItem)initWithAsset:(id)a3
{
  v4.receiver = self;
  v4.super_class = TVPPlayerItem;
  result = [(TVPPlayerItem *)&v4 initWithAsset:a3];
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

- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(id)a3
{
  v4 = a3;
  v5 = [(TVPPlayerItem *)self asset];
  v6 = [v5 tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v7 = [v4 isEqual:v6];

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
    [(TVPPlayerItem *)&v8 selectMediaOptionAutomaticallyInMediaSelectionGroup:v4];
    goto LABEL_6;
  }

  [(TVPPlayerItem *)self setSavedManualAudioSelection:0];
LABEL_6:
}

- (void)selectMediaOption:(id)a3 inMediaSelectionGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVPPlayerItem *)self asset];
  v9 = [v8 tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v10 = [v7 isEqual:v9];

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
    [(TVPPlayerItem *)&v11 selectMediaOption:v6 inMediaSelectionGroup:v7];
    goto LABEL_6;
  }

  [(TVPPlayerItem *)self setSavedManualAudioSelection:v6];
LABEL_6:
}

- (void)setMuted:(BOOL)a3
{
  if (self->_muted != a3)
  {
    self->_muted = a3;
    v4 = [(TVPPlayerItem *)self asset];
    v5 = [v4 tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

    if (self->_muted)
    {
      if (![(TVPPlayerItem *)self audioSelectionIsAutomatic])
      {
        v6 = [(TVPPlayerItem *)self currentMediaSelection];
        v7 = [v6 selectedMediaOptionInMediaSelectionGroup:v5];
        [(TVPPlayerItem *)self setSavedManualAudioSelection:v7];
      }

      v11.receiver = self;
      v11.super_class = TVPPlayerItem;
      [(TVPPlayerItem *)&v11 selectMediaOption:0 inMediaSelectionGroup:v5];
    }

    else
    {
      v8 = [(TVPPlayerItem *)self savedManualAudioSelection];
      if (v8)
      {
        v10.receiver = self;
        v10.super_class = TVPPlayerItem;
        [(TVPPlayerItem *)&v10 selectMediaOption:v8 inMediaSelectionGroup:v5];
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