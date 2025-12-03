@interface BRQueryItem(BRCAdditions)
- (id)asFileProviderItem;
@end

@implementation BRQueryItem(BRCAdditions)

- (id)asFileProviderItem
{
  if ([self isDead])
  {
    goto LABEL_6;
  }

  if ([self _isAppLibraryTrashFolder])
  {
    goto LABEL_6;
  }

  creationDate = [self creationDate];
  [creationDate timeIntervalSince1970];
  busy = BRCIsBusyDate(v3);

  if ((busy & 1) != 0 || ([self filename], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
  {
LABEL_6:
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end