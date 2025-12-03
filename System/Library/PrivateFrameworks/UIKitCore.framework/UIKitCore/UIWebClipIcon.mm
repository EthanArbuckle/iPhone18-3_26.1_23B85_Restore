@interface UIWebClipIcon
- (CGSize)bestSize;
- (int64_t)compare:(id)compare preferringDeviceIconSizes:(BOOL)sizes;
@end

@implementation UIWebClipIcon

- (int64_t)compare:(id)compare preferringDeviceIconSizes:(BOOL)sizes
{
  sizesCopy = sizes;
  compareCopy = compare;
  if (-[UIWebClipIcon isSiteWide](self, "isSiteWide") && ![compareCopy isSiteWide])
  {
    goto LABEL_14;
  }

  if (!-[UIWebClipIcon isSiteWide](self, "isSiteWide") && ([compareCopy isSiteWide] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (!sizesCopy)
  {
    [(UIWebClipIcon *)self bestSize];
    v16 = v15;
    [compareCopy bestSize];
    if (v16 > v17)
    {
      goto LABEL_15;
    }

    [(UIWebClipIcon *)self bestSize];
    v19 = v18;
    [compareCopy bestSize];
    if (v19 >= v20)
    {
LABEL_10:
      if (!-[UIWebClipIcon isPrecomposed](self, "isPrecomposed") || [compareCopy isPrecomposed])
      {
        if (-[UIWebClipIcon isPrecomposed](self, "isPrecomposed") || ([compareCopy isPrecomposed] & 1) == 0)
        {
          v14 = 0;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_15:
      v14 = 1;
      goto LABEL_17;
    }

LABEL_14:
    v14 = -1;
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E6963698];
  [(UIWebClipIcon *)self bestSize];
  v9 = v8;
  v11 = v10;
  [compareCopy bestSize];
  v14 = [v7 _compareApplicationIconCanvasSize:v9 withSize:{v11, v12, v13}];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_17:

  return v14;
}

- (CGSize)bestSize
{
  width = self->_bestSize.width;
  height = self->_bestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end