@interface STUIStatusBarPrivacyItem
- (STUIStatusBarImageView)cameraView;
- (STUIStatusBarImageView)locationView;
- (STUIStatusBarImageView)microphoneView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_cameraView;
- (void)_create_locationView;
- (void)_create_microphoneView;
@end

@implementation STUIStatusBarPrivacyItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v46[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  itemCopy = item;
  v43.receiver = self;
  v43.super_class = STUIStatusBarPrivacyItem;
  v8 = [(STUIStatusBarItem *)&v43 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    identifier = [itemCopy identifier];
    externalCameraDisplayIdentifier = [objc_opt_class() externalCameraDisplayIdentifier];

    if (identifier == externalCameraDisplayIdentifier)
    {
      if ([itemCopy isEnabled])
      {
        data = [updateCopy data];
        externalPrivacyEntry = [data externalPrivacyEntry];
        if ([externalPrivacyEntry isEnabled])
        {
          data2 = [updateCopy data];
          externalPrivacyEntry2 = [data2 externalPrivacyEntry];
          [itemCopy setEnabled:{objc_msgSend(externalPrivacyEntry2, "camera")}];
        }

        else
        {
          [itemCopy setEnabled:0];
        }
      }

      else
      {
        [itemCopy setEnabled:0];
      }

      if ([itemCopy isEnabled])
      {
        v33 = MEMORY[0x277D755D0];
        labelColor = [MEMORY[0x277D75348] labelColor];
        v46[0] = labelColor;
        systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
        v46[1] = systemGreenColor;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
        v30 = [v33 configurationWithPaletteColors:v36];

        v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"video.circle.fill" withConfiguration:v30];
        cameraView = [(STUIStatusBarPrivacyItem *)self cameraView];
        goto LABEL_28;
      }
    }

    else
    {
      identifier2 = [itemCopy identifier];
      externalMicrophoneDisplayIdentifier = [objc_opt_class() externalMicrophoneDisplayIdentifier];

      isEnabled = [itemCopy isEnabled];
      if (identifier2 == externalMicrophoneDisplayIdentifier)
      {
        if (isEnabled)
        {
          data3 = [updateCopy data];
          externalPrivacyEntry3 = [data3 externalPrivacyEntry];
          if ([externalPrivacyEntry3 isEnabled])
          {
            data4 = [updateCopy data];
            externalPrivacyEntry4 = [data4 externalPrivacyEntry];
            [itemCopy setEnabled:{objc_msgSend(externalPrivacyEntry4, "microphone")}];
          }

          else
          {
            [itemCopy setEnabled:0];
          }
        }

        else
        {
          [itemCopy setEnabled:0];
        }

        if ([itemCopy isEnabled])
        {
          v37 = MEMORY[0x277D755D0];
          labelColor2 = [MEMORY[0x277D75348] labelColor];
          v45[0] = labelColor2;
          systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
          v45[1] = systemOrangeColor;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
          v30 = [v37 configurationWithPaletteColors:v40];

          v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"microphone.circle.fill" withConfiguration:v30];
          cameraView = [(STUIStatusBarPrivacyItem *)self microphoneView];
          goto LABEL_28;
        }
      }

      else
      {
        if (isEnabled)
        {
          data5 = [updateCopy data];
          externalPrivacyEntry5 = [data5 externalPrivacyEntry];
          if ([externalPrivacyEntry5 isEnabled])
          {
            data6 = [updateCopy data];
            externalPrivacyEntry6 = [data6 externalPrivacyEntry];
            [itemCopy setEnabled:{objc_msgSend(externalPrivacyEntry6, "location")}];
          }

          else
          {
            [itemCopy setEnabled:0];
          }
        }

        else
        {
          [itemCopy setEnabled:0];
        }

        if ([itemCopy isEnabled])
        {
          v26 = MEMORY[0x277D755D0];
          labelColor3 = [MEMORY[0x277D75348] labelColor];
          v44[0] = labelColor3;
          systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
          v44[1] = systemBlueColor;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
          v30 = [v26 configurationWithPaletteColors:v29];

          v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"location.circle.fill" withConfiguration:v30];
          cameraView = [(STUIStatusBarPrivacyItem *)self locationView];
LABEL_28:
          v41 = cameraView;
          [cameraView setImage:v31];
        }
      }
    }
  }

  return v8;
}

- (STUIStatusBarImageView)cameraView
{
  cameraView = self->_cameraView;
  if (!cameraView)
  {
    [(STUIStatusBarPrivacyItem *)self _create_cameraView];
    cameraView = self->_cameraView;
  }

  return cameraView;
}

- (void)_create_cameraView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  cameraView = self->_cameraView;
  self->_cameraView = v4;

  MEMORY[0x2821F96F8](v4, cameraView);
}

- (STUIStatusBarImageView)microphoneView
{
  microphoneView = self->_microphoneView;
  if (!microphoneView)
  {
    [(STUIStatusBarPrivacyItem *)self _create_microphoneView];
    microphoneView = self->_microphoneView;
  }

  return microphoneView;
}

- (void)_create_microphoneView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  microphoneView = self->_microphoneView;
  self->_microphoneView = v4;

  MEMORY[0x2821F96F8](v4, microphoneView);
}

- (STUIStatusBarImageView)locationView
{
  locationView = self->_locationView;
  if (!locationView)
  {
    [(STUIStatusBarPrivacyItem *)self _create_locationView];
    locationView = self->_locationView;
  }

  return locationView;
}

- (void)_create_locationView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  locationView = self->_locationView;
  self->_locationView = v4;

  MEMORY[0x2821F96F8](v4, locationView);
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  externalCameraDisplayIdentifier = [objc_opt_class() externalCameraDisplayIdentifier];

  if (externalCameraDisplayIdentifier == identifierCopy)
  {
    cameraView = [(STUIStatusBarPrivacyItem *)self cameraView];
  }

  else
  {
    externalMicrophoneDisplayIdentifier = [objc_opt_class() externalMicrophoneDisplayIdentifier];

    if (externalMicrophoneDisplayIdentifier == identifierCopy)
    {
      [(STUIStatusBarPrivacyItem *)self microphoneView];
    }

    else
    {
      [(STUIStatusBarPrivacyItem *)self locationView];
    }
    cameraView = ;
  }

  v8 = cameraView;

  return v8;
}

@end