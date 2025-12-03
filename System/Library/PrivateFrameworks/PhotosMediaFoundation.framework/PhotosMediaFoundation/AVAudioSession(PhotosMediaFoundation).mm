@interface AVAudioSession(PhotosMediaFoundation)
- (uint64_t)photosAudioSessionCategory;
- (uint64_t)setPhotosAudioSessionCategory:()PhotosMediaFoundation error:;
@end

@implementation AVAudioSession(PhotosMediaFoundation)

- (uint64_t)photosAudioSessionCategory
{
  category = [self category];
  if ([category isEqualToString:*MEMORY[0x277CB8020]])
  {
    v2 = 1;
  }

  else if ([category isEqualToString:*MEMORY[0x277CB8030]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)setPhotosAudioSessionCategory:()PhotosMediaFoundation error:
{
  if (a3 == 1)
  {
    v6 = MEMORY[0x277CB8020];
  }

  else
  {
    if (a3 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = MEMORY[0x277CB8030];
  }

  v7 = *v6;
LABEL_7:
  v8 = [self setCategory:v7 error:a4];

  return v8;
}

@end