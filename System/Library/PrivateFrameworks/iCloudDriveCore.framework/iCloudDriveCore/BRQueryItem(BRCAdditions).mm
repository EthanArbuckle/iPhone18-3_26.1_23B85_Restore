@interface BRQueryItem(BRCAdditions)
- (id)asFileProviderItem;
@end

@implementation BRQueryItem(BRCAdditions)

- (id)asFileProviderItem
{
  if ([a1 isDead])
  {
    goto LABEL_6;
  }

  if ([a1 _isAppLibraryTrashFolder])
  {
    goto LABEL_6;
  }

  v2 = [a1 creationDate];
  [v2 timeIntervalSince1970];
  busy = BRCIsBusyDate(v3);

  if ((busy & 1) != 0 || ([a1 filename], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

@end