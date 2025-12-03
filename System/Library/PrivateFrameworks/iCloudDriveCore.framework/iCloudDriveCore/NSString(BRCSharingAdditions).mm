@interface NSString(BRCSharingAdditions)
- (id)brc_fixDocumentExtensionIfNeededForShareURL:()BRCSharingAdditions;
@end

@implementation NSString(BRCSharingAdditions)

- (id)brc_fixDocumentExtensionIfNeededForShareURL:()BRCSharingAdditions
{
  brc_iWorkPathExtensions = [a3 brc_iWorkPathExtensions];
  if ([brc_iWorkPathExtensions count] && (objc_msgSend(self, "br_pathExtension"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(brc_iWorkPathExtensions, "containsObject:", v5), v5, (v6 & 1) == 0))
  {
    firstObject = [brc_iWorkPathExtensions firstObject];
    selfCopy = [self stringByAppendingPathExtension:firstObject];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end