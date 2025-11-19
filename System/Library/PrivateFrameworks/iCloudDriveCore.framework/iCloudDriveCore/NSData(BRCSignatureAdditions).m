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
  result = [a1 bytes];
  if (result)
  {
    return (*result == 27);
  }

  return result;
}

- (BOOL)brc_signatureIsPendingPlaceHolder
{
  if ([a1 length] != 2)
  {
    return 0;
  }

  v2 = [a1 bytes];
  if (v2[1] != 63)
  {
    return 0;
  }

  v3 = *v2;
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
  if ([a1 brc_signatureIsPendingPlaceHolder])
  {
    return 0;
  }

  if (([a1 brc_signatureIsPackage] & 1) == 0 && (objc_msgSend(MEMORY[0x277CBC6A8], "isValidSignature:", a1) & 1) == 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      [(NSData(BRCSignatureAdditions) *)a1 brc_signatureIsValid];
    }

    return 0;
  }

  return 1;
}

- (id)brc_signature
{
  v2 = objc_alloc_init(MEMORY[0x277CBC6A8]);
  [v2 updateWithBytes:objc_msgSend(a1 length:{"bytes"), objc_msgSend(a1, "length")}];
  v3 = [v2 dataByFinishingSignature];

  return v3;
}

- (void)brc_signatureIsValid
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] invalid signature in %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end