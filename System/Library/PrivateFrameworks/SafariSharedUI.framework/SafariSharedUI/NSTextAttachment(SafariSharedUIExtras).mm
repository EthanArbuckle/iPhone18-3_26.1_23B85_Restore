@interface NSTextAttachment(SafariSharedUIExtras)
- (uint64_t)safari_isEqualToAttachment:()SafariSharedUIExtras;
@end

@implementation NSTextAttachment(SafariSharedUIExtras)

- (uint64_t)safari_isEqualToAttachment:()SafariSharedUIExtras
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_14;
  }

  contents = [self contents];
  if (contents || ([self fileType], (contents = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    contents2 = [v4 contents];
    contents3 = [self contents];
    v8 = WBSIsEqual();

    if (!v8)
    {
      goto LABEL_14;
    }

    fileType = [v4 fileType];
    fileType2 = [self fileType];
    v11 = WBSIsEqual();

    if (!v11)
    {
      goto LABEL_14;
    }

    image = [v4 image];
    image2 = [self image];
    v14 = WBSIsEqual();

    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  image3 = [self image];

  if (image3)
  {
    goto LABEL_5;
  }

  fileWrapper = [v4 fileWrapper];
  fileWrapper2 = [self fileWrapper];
  v36 = WBSIsEqual();

  if ((v36 & 1) == 0)
  {
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

LABEL_8:
  [v4 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [self bounds];
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size.width = v25;
  v39.size.height = v26;
  v38.origin.x = v16;
  v38.origin.y = v18;
  v38.size.width = v20;
  v38.size.height = v22;
  if (!CGRectEqualToRect(v38, v39))
  {
    goto LABEL_14;
  }

  [v4 lineLayoutPadding];
  v28 = v27;
  [self lineLayoutPadding];
  if (v28 != v29)
  {
    goto LABEL_14;
  }

  allowsTextAttachmentView = [v4 allowsTextAttachmentView];
  if (allowsTextAttachmentView != [self allowsTextAttachmentView])
  {
    goto LABEL_14;
  }

  usesTextAttachmentView = [v4 usesTextAttachmentView];
  v32 = usesTextAttachmentView ^ [self usesTextAttachmentView] ^ 1;
LABEL_15:

  return v32;
}

@end