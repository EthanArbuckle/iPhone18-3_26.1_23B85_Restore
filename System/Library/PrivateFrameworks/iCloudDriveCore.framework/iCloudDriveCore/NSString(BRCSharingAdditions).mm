@interface NSString(BRCSharingAdditions)
- (id)brc_fixDocumentExtensionIfNeededForShareURL:()BRCSharingAdditions;
@end

@implementation NSString(BRCSharingAdditions)

- (id)brc_fixDocumentExtensionIfNeededForShareURL:()BRCSharingAdditions
{
  v4 = [a3 brc_iWorkPathExtensions];
  if ([v4 count] && (objc_msgSend(a1, "br_pathExtension"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, (v6 & 1) == 0))
  {
    v8 = [v4 firstObject];
    v7 = [a1 stringByAppendingPathExtension:v8];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

@end