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

  v5 = [a1 contents];
  if (v5 || ([a1 fileType], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v6 = [v4 contents];
    v7 = [a1 contents];
    v8 = WBSIsEqual();

    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = [v4 fileType];
    v10 = [a1 fileType];
    v11 = WBSIsEqual();

    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = [v4 image];
    v13 = [a1 image];
    v14 = WBSIsEqual();

    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v33 = [a1 image];

  if (v33)
  {
    goto LABEL_5;
  }

  v34 = [v4 fileWrapper];
  v35 = [a1 fileWrapper];
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
  [a1 bounds];
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
  [a1 lineLayoutPadding];
  if (v28 != v29)
  {
    goto LABEL_14;
  }

  v30 = [v4 allowsTextAttachmentView];
  if (v30 != [a1 allowsTextAttachmentView])
  {
    goto LABEL_14;
  }

  v31 = [v4 usesTextAttachmentView];
  v32 = v31 ^ [a1 usesTextAttachmentView] ^ 1;
LABEL_15:

  return v32;
}

@end