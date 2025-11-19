@interface RTCVideoEncoderH264
@end

@implementation RTCVideoEncoderH264

uint64_t __149__RTCVideoEncoderH264_frameWasEncoded_flags_sampleBuffer_codecSpecificInfo_width_height_renderTimeMs_timestamp_duration_rotation_isKeyFrameRequired___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

@end