@interface UIWebClipIcon
- (CGSize)bestSize;
- (int64_t)compare:(id)a3 preferringDeviceIconSizes:(BOOL)a4;
@end

@implementation UIWebClipIcon

- (int64_t)compare:(id)a3 preferringDeviceIconSizes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (-[UIWebClipIcon isSiteWide](self, "isSiteWide") && ![v6 isSiteWide])
  {
    goto LABEL_14;
  }

  if (!-[UIWebClipIcon isSiteWide](self, "isSiteWide") && ([v6 isSiteWide] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    [(UIWebClipIcon *)self bestSize];
    v16 = v15;
    [v6 bestSize];
    if (v16 > v17)
    {
      goto LABEL_15;
    }

    [(UIWebClipIcon *)self bestSize];
    v19 = v18;
    [v6 bestSize];
    if (v19 >= v20)
    {
LABEL_10:
      if (!-[UIWebClipIcon isPrecomposed](self, "isPrecomposed") || [v6 isPrecomposed])
      {
        if (-[UIWebClipIcon isPrecomposed](self, "isPrecomposed") || ([v6 isPrecomposed] & 1) == 0)
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
  [v6 bestSize];
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