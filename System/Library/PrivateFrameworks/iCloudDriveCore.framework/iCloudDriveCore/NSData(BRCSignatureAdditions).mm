@interface NSData(BRCSignatureAdditions)
+ (id)brc_pendingPlaceholderForPackage:()BRCSignatureAdditions;
- (BOOL)brc_signatureIsPendingPlaceHolder;
- (id)brc_signature;
- (uint64_t)brc_signatureIsValid;
- (unsigned)brc_signatureIsPackage;
- (void)brc_signatureIsValid;
@end

@implementation NSData(BRCSignatureAdditions)

- (unsigned)brc_signatureIsPackage
{
  result = [self bytes];
  if (result)
  {
    return (*result == 27);
  }

  return result;
}

- (BOOL)brc_signatureIsPendingPlaceHolder
{
  if ([self length] != 2)
  {
    return 0;
  }

  bytes = [self bytes];
  if (bytes[1] != 63)
  {
    return 0;
  }

  v3 = *bytes;
  return v3 == 1 || v3 == 27;
}

+ (id)brc_pendingPlaceholderForPackage:()BRCSignatureAdditions
{
  if (brc_pendingPlaceholder_once != -1)
  {
    +[NSData(BRCSignatureAdditions) brc_pendingPlaceholderForPackage:];
  }

  v4 = &brc_pendingPlaceholder_pkgPlaceHolder;
  if (!a3)
  {
    v4 = &brc_pendingPlaceholder_filePlaceHolder;
  }

  v5 = *v4;

  return v5;
}

- (uint64_t)brc_signatureIsValid
{
  if ([self brc_signatureIsPendingPlaceHolder])
  {
    return 0;
  }

  if (([self brc_signatureIsPackage] & 1) == 0 && (objc_msgSend(MEMORY[0x277CBC6A8], "isValidSignature:", self) & 1) == 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      [(NSData(BRCSignatureAdditions) *)self brc_signatureIsValid];
    }

    return 0;
  }

  return 1;
}

- (id)brc_signature
{
  v2 = objc_alloc_init(MEMORY[0x277CBC6A8]);
  [v2 updateWithBytes:objc_msgSend(self length:{"bytes"), objc_msgSend(self, "length")}];
  dataByFinishingSignature = [v2 dataByFinishingSignature];

  return dataByFinishingSignature;
}

- (void)brc_signatureIsValid
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] invalid signature in %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end