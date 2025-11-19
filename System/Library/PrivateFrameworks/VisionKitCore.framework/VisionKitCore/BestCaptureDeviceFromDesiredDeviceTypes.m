@interface BestCaptureDeviceFromDesiredDeviceTypes
@end

@implementation BestCaptureDeviceFromDesiredDeviceTypes

void ___BestCaptureDeviceFromDesiredDeviceTypes_block_invoke(uint64_t a1, void *a2)
{
  v41 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v4;
  v9 = v41;
  if (v6 >= v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v6 >= v7)
  {
    v6 = v7;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([v8 formatDescription]);
  v12 = Dimensions;
  v13 = HIDWORD(Dimensions);
  v14 = CMVideoFormatDescriptionGetDimensions([v9 formatDescription]);
  v15 = v12 - v10;
  if (v15 < 0.0)
  {
    v15 = -v15;
  }

  v16 = v15;
  v17 = v14.width - v10;
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  v18 = v17;
  v19 = v13 - v6;
  height = v14.height;
  if (v19 < 0.0)
  {
    v19 = -v19;
  }

  v21 = height - v6;
  v22 = -(height - v6);
  if (v21 < 0.0)
  {
    v21 = v22;
  }

  if (v16 < v18)
  {
    goto LABEL_16;
  }

  if (v16 > v18)
  {
    goto LABEL_18;
  }

  if (v19 < v21)
  {
    goto LABEL_16;
  }

  if (v19 > v21)
  {
    goto LABEL_18;
  }

  v23 = v9;
  MediaSubType = CMFormatDescriptionGetMediaSubType([v8 formatDescription]);
  v25 = [v23 formatDescription];

  v26 = CMFormatDescriptionGetMediaSubType(v25);
  if (MediaSubType == 875704422 && v26 != 875704422)
  {
    goto LABEL_16;
  }

  if (v26 != 875704422 && MediaSubType != 875704422)
  {
    if (MediaSubType != 1111970369 || v26 == 1111970369)
    {
      if (v26 != 1111970369 || MediaSubType == 1111970369)
      {
        goto LABEL_39;
      }

LABEL_18:

LABEL_19:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_20;
  }

  if (v26 == 875704422 && MediaSubType != 875704422)
  {
    goto LABEL_18;
  }

LABEL_39:
  v28 = v8;
  v29 = v23;
  v30 = [v28 isVideoBinned];
  if (v5)
  {
    if (!v30 || [v29 isVideoBinned])
    {
      if ([v29 isVideoBinned])
      {
        v31 = [v28 isVideoBinned] - 1;
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    v31 = 1;
  }

  else
  {
    if (!v30 || [v29 isVideoBinned])
    {
      if ([v29 isVideoBinned])
      {
        v31 = [v28 isVideoBinned] ^ 1;
LABEL_48:

        if (v31)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

LABEL_50:

LABEL_51:
      v32 = v29;
      v33 = _SlowestMaxFrameRateRange(v28);
      v34 = _SlowestMaxFrameRateRange(v32);

      [v33 maxFrameRate];
      v36 = v35;
      [v34 maxFrameRate];
      if (v36 <= v37)
      {
        [v33 maxFrameRate];
        v39 = v38;
        [v34 maxFrameRate];
        v31 = v39 < v40;
      }

      else
      {
        v31 = -1;
      }

      goto LABEL_57;
    }

    v31 = -1;
  }

  v34 = v29;
  v33 = v28;
LABEL_57:

LABEL_58:
  if (v31 == -1)
  {
    goto LABEL_19;
  }

LABEL_20:
}

@end