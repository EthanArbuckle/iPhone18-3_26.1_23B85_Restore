@interface SVXAudioFileDecoder
- (double)audioPlaybackDuration:(id)a3;
@end

@implementation SVXAudioFileDecoder

- (double)audioPlaybackDuration:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  outAudioFile = 0;
  v3 = 0.0;
  if (!AudioFileOpenWithCallbacks(a3, _audioFileReadData, 0, _audioFileGetDataSize, 0, 0, &outAudioFile))
  {
    outPropertyData = 0.0;
    ioDataSize = 8;
    if (AudioFileGetProperty(outAudioFile, 0x65647572u, &ioDataSize, &outPropertyData))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = outPropertyData;
    }
  }

  if (outAudioFile)
  {
    AudioFileClose(outAudioFile);
  }

  return v3;
}

@end