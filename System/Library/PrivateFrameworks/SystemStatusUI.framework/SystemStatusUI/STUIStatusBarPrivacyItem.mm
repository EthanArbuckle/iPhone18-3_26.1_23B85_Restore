@interface STUIStatusBarPrivacyItem
- (STUIStatusBarImageView)cameraView;
- (STUIStatusBarImageView)locationView;
- (STUIStatusBarImageView)microphoneView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_cameraView;
- (void)_create_locationView;
- (void)_create_microphoneView;
@end

@implementation STUIStatusBarPrivacyItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v46[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = STUIStatusBarPrivacyItem;
  v8 = [(STUIStatusBarItem *)&v43 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v7 identifier];
    v10 = [objc_opt_class() externalCameraDisplayIdentifier];

    if (v9 == v10)
    {
      if ([v7 isEnabled])
      {
        v18 = [v6 data];
        v19 = [v18 externalPrivacyEntry];
        if ([v19 isEnabled])
        {
          v20 = [v6 data];
          v21 = [v20 externalPrivacyEntry];
          [v7 setEnabled:{objc_msgSend(v21, "camera")}];
        }

        else
        {
          [v7 setEnabled:0];
        }
      }

      else
      {
        [v7 setEnabled:0];
      }

      if ([v7 isEnabled])
      {
        v33 = MEMORY[0x277D755D0];
        v34 = [MEMORY[0x277D75348] labelColor];
        v46[0] = v34;
        v35 = [MEMORY[0x277D75348] systemGreenColor];
        v46[1] = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
        v30 = [v33 configurationWithPaletteColors:v36];

        v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"video.circle.fill" withConfiguration:v30];
        v32 = [(STUIStatusBarPrivacyItem *)self cameraView];
        goto LABEL_28;
      }
    }

    else
    {
      v11 = [v7 identifier];
      v12 = [objc_opt_class() externalMicrophoneDisplayIdentifier];

      v13 = [v7 isEnabled];
      if (v11 == v12)
      {
        if (v13)
        {
          v22 = [v6 data];
          v23 = [v22 externalPrivacyEntry];
          if ([v23 isEnabled])
          {
            v24 = [v6 data];
            v25 = [v24 externalPrivacyEntry];
            [v7 setEnabled:{objc_msgSend(v25, "microphone")}];
          }

          else
          {
            [v7 setEnabled:0];
          }
        }

        else
        {
          [v7 setEnabled:0];
        }

        if ([v7 isEnabled])
        {
          v37 = MEMORY[0x277D755D0];
          v38 = [MEMORY[0x277D75348] labelColor];
          v45[0] = v38;
          v39 = [MEMORY[0x277D75348] systemOrangeColor];
          v45[1] = v39;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
          v30 = [v37 configurationWithPaletteColors:v40];

          v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"microphone.circle.fill" withConfiguration:v30];
          v32 = [(STUIStatusBarPrivacyItem *)self microphoneView];
          goto LABEL_28;
        }
      }

      else
      {
        if (v13)
        {
          v14 = [v6 data];
          v15 = [v14 externalPrivacyEntry];
          if ([v15 isEnabled])
          {
            v16 = [v6 data];
            v17 = [v16 externalPrivacyEntry];
            [v7 setEnabled:{objc_msgSend(v17, "location")}];
          }

          else
          {
            [v7 setEnabled:0];
          }
        }

        else
        {
          [v7 setEnabled:0];
        }

        if ([v7 isEnabled])
        {
          v26 = MEMORY[0x277D755D0];
          v27 = [MEMORY[0x277D75348] labelColor];
          v44[0] = v27;
          v28 = [MEMORY[0x277D75348] systemBlueColor];
          v44[1] = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
          v30 = [v26 configurationWithPaletteColors:v29];

          v31 = [MEMORY[0x277D755B8] _systemImageNamed:@"location.circle.fill" withConfiguration:v30];
          v32 = [(STUIStatusBarPrivacyItem *)self locationView];
LABEL_28:
          v41 = v32;
          [v32 setImage:v31];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() externalCameraDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(STUIStatusBarPrivacyItem *)self cameraView];
  }

  else
  {
    v6 = [objc_opt_class() externalMicrophoneDisplayIdentifier];

    if (v6 == v4)
    {
      [(STUIStatusBarPrivacyItem *)self microphoneView];
    }

    else
    {
      [(STUIStatusBarPrivacyItem *)self locationView];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end